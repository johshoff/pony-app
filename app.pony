use "lib:EGL" if linux
use "lib:X11" if linux
use "path:./"
use "lib:app" if linux
use "lib:GLESv2" if linux
use "files"

type  GLvoid      is      None
type  GLchar      is      I8
type  GLenum      is      U32
type  GLboolean   is      U8
type  GLbitfield  is      U32
type  GLshort     is      I8
type  GLint       is      I32
type  GLsizei     is      I32
type  GLushort    is      U8
type  GLuint      is      U32
type  GLbyte      is      I8
type  GLubyte     is      U8
type  GLfloat     is      F32
type  GLclampf    is      F32
type  GLfixed     is      I32
type  GLintptr    is      I64
type  GLsizeiptr  is      I64

primitive EGLOpenGLESAPI           fun apply(): U16 => 0x30A0
primitive EGLNativeVisualID        fun apply(): U16 => 0x302E

primitive EGLRenderableType        fun apply(): U16 => 0x3040
primitive EGLOpenGLES2Bit          fun apply(): U16 => 0x04
primitive EGLSurfaceType           fun apply(): U16 => 0x3033
primitive EGLWindowBit             fun apply(): U16 => 0x04
primitive EGLBlueSize              fun apply(): U16 => 0x3022
primitive EGLGreenSize             fun apply(): U16 => 0x3023
primitive EGLRedSize               fun apply(): U16 => 0x3024
primitive EGLDepthSize             fun apply(): U16 => 0x3025
primitive EGLConfigCaveat          fun apply(): U16 => 0x3027
primitive EGLNONE                  fun apply(): U16 => 0x3028

primitive _XDisplayHandle
primitive _EGLDisplayHandle
primitive _EGLConfigHandle
primitive _EGLContextHandle
primitive _EGLSurfaceHandle
struct EGLEvent
  var code: U8 = 0
  var x: F32 = 0
  var y: F32 = 0

primitive GLUtil
  fun createProgram(vertexSrc: String, fragmentSrc: String) =>
    Lines()
    @glCreateProgram[U8]()

primitive Assets
  fun driod() =>
    "/usr/share/fonts/truetype/droid/DroidSans.ttf"
  fun monospace() =>
    "/usr/share/fonts/truetype/droid/DroidSansMono.ttf"

  fun asset(name: String, ambientAuth: AmbientAuth): File ? =>
    """
    Provides access to application-bundled assets.

    On Android, assets are accessed via android.content.res.AssetManager.
    These files are stored in the assets/ directory of the app. Any raw asset
    can be accessed by its direct relative name. For example assets/img.png
    can be opened with Open("img.png").

    On iOS an asset is a resource stored in the application bundle.
    Resources can be loaded using the same relative paths.

    For consistency when debugging on a desktop, assets are read from a
    directory named assets under the current working directory.
    """
    let caps = recover val FileCaps.>set(FileRead).>set(FileStat) end
    if Platform.windows() or Platform.linux() or Platform.osx() then
      OpenFile(FilePath(ambientAuth, Path.join(Path.cwd(), Path.join("assets", name)), caps)?) as File
    else
      error
    end

class App
  """
  On Ubuntu 14.04 'Trusty', you may have to install these libraries:
  sudo apt-get install libegl1-mesa-dev libgles2-mesa-dev libx11-dev
  """
  let _env: Env
  var _title: String
  var _width: U32
  var _height: U32

  var _is_visible: Bool = false
  var _is_running: Bool = false

  new create(env: Env, title: String, width: U32, height: U32) =>
    _env = env
    _title = title
    _width = width
    _height = height

  fun ref start() =>
    _env.out.print("Starting App")
    let x_dpy = @XOpenDisplay[Pointer[_XDisplayHandle]](U32(0))
    if x_dpy.is_null() then
      _env.out.print("XOpenDisplay failed")
    end
    let e_dpy = @eglGetDisplay[Pointer[_EGLDisplayHandle]](x_dpy)
    if e_dpy.is_null() then
      _env.out.print("eglGetDisplay failed")
    end
    if @eglInitialize[U32](e_dpy, Pointer[U32], Pointer[U32]) == 0 then
      _env.out.print("eglInitialize failed")
    end
    if @eglBindAPI[U32](EGLOpenGLESAPI()) == 0 then
      _env.out.print("eglBindAPI failed")
    end
    let attribs: Array[U16] = [
      EGLRenderableType(); EGLOpenGLES2Bit()
      EGLSurfaceType(); EGLWindowBit()
      EGLBlueSize(); 8
      EGLGreenSize(); 8
      EGLRedSize(); 8
      EGLDepthSize(); 16
      EGLConfigCaveat(); EGLNONE()
      EGLNONE()
    ]
    // var config = Pointer[_EGLConfigHandle]
    // var num_configs: U32 = 0
    // if @eglChooseConfig[U32](e_dpy, attribs, config, U32(1), &num_configs) == 0 then
    //   _env.out.print("eglChooseConfig failed")
    // end
    // if @eglGetConfigAttrib[U32](e_dpy, config, EGLNativeVisualID(), Pointer[U32]) == 0 then
    //   _env.out.print("eglGetConfigAttrib failed")
    // end
    let e_ctx = Pointer[_EGLContextHandle]
    let e_surf = Pointer[_EGLSurfaceHandle]
    let e_glEvent = @createWindow[EGLEvent](x_dpy, e_dpy, _title.cstring(), U32(_width), U32(_height))
    var c = e_glEvent.code
    var x = e_glEvent.x
    var y = e_glEvent.y
    _is_running = true
    _resize(y, x)

    let vertexShader = """
    #version 100
    uniform vec2 offset;

    attribute vec4 position;
    void main() {
      // offset comes in with x/y values between 0 and 1.
      // position bounds are -1 to 1.
      vec4 offset4 = vec4(2.0*offset.x-1.0, 1.0-2.0*offset.y, 0, 0);
      gl_Position = position + offset4;
    }"""

    let fragmentShader = """
    #version 100
    precision mediump float;
    uniform vec4 color;
    void main() {
      gl_FragColor = color;
    }"""
    let program = @glCreateProgram[U32]()
    let vshader = @glCreateShader[U32](VertexShader())
    if vshader == 0 then
      _env.out.print("glutil: could not create vshader")
    end
    @glShaderSource[None](vshader, vertexShader)
    @glCompileShader[None](vshader)

    let fshader = @glCreateShader[U32](VertexShader())
    if fshader == 0 then
      _env.out.print("glutil: could not create fshader")
    end
    @glShaderSource[None](fshader, fragmentShader)
    @glCompileShader[None](fshader)

    @glAttachShader[None](program, vshader)
    @glAttachShader[None](program, fshader)
    @glLinkProgram[None](program)

    // Flag shaders for deletion when program is unlinked.
    // @glDeleteShader[None](vShader)
    // @glDeleteShader[None](fShader)

    //   if glctx.GetProgrami(program, gl.LINK_STATUS) == 0 {
    //   defer glctx.DeleteProgram(program)
    //   return gl.Program{}, fmt.Errorf("glutil: %s", glctx.GetProgramInfoLog(program))
    // }


    // if @glGetShaderiv[U32](shader, CompileStatus()) == 0 then
      // None
      // glDeleteShader(shader)
      // "shader compile: %s", glctx.GetShaderInfoLog(shader)
    // end
    while _is_running do
      while @XPending[U32](x_dpy) > 0 do
        @glClearColor[None](F32(1.0) , F32(1.0) , F32(1.0) , F32(1.0))
        @glClear[None](ColorBufferBit())
        // @glMatrixMode(GL_PROJECTION)
        //Initialize Modelview Matrix glMatrixMode( GL_MODELVIEW ); glLoadIdentity();
        // var xev: Pointer[_EGLConfigHandle]
        // @XNextEvent[None](x_dpy, xev)
        let e_glEvent' = @processEvents[EGLEvent](x_dpy, e_dpy)
        c = e_glEvent'.code
        x = e_glEvent'.x
        y = e_glEvent'.y
        match c
        | 1 => _resize(y, x)
        | 2 => _processInput(c, x, y)
        | 3 => _processInput(c, x, y)
        | 4 => _processInput(c, x, y)
        | 255 => _exit(); break
        end
      end
    end

  fun _processInput(c: U8, x: F32, y: F32) =>
    _env.out.print(x.string())

  fun _resize(w: F32, h: F32) =>
    _env.out.print(w.string())
    _env.out.print(h.string())

  fun _pause() =>
    None

  fun _resume() =>
    None

  fun ref _exit() =>
    _env.out.print("Exiting")
    _is_running = false
