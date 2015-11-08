use "lib:EGL" if linux
use "lib:X11" if linux
use "path:./"
use "lib:x11" if linux
use "lib:GLESv2" if linux
use "./gl"

primitive EGLOpenGLESAPI fun apply(): U16 => 0x30A0
primitive EGLNativeVisualID fun apply(): U16 => 0x302E
primitive _XDisplayHandle
primitive _EGLDisplayHandle
primitive _EGLConfigHandle
type EGLEvent is (U8, F32, F32)
type XEvent is (U8)

primitive GLUtil
  fun createProgram(vertexSrc: String, fragmentSrc: String) =>
    Lines()
    @glCreateProgram[U8]()

trait TWidget
  fun ref add_widget(w: TWidget)
  fun ref remove_widget(w: TWidget) ?

class Widget is TWidget

  let _children: Array[TWidget] = Array[TWidget]

  new create() =>
    """
    """

  fun ref add_widget(w: TWidget) =>
    _children.push(w)

  fun ref remove_widget(w: TWidget) ? =>
    _children.remove(_children.find(w), 1)

primitive App
  """
  Simple on-screen app debugging for X11. Not an officially supported
  development target for apps, as screens with mice are very different
  than screens with touch panels.

  On Ubuntu 14.04 'Trusty', you may have to install these libraries:
  sudo apt-get install libegl1-mesa-dev libgles2-mesa-dev libx11-dev
  """
  fun start(env: Env, scene: Scene ref) =>
    """
    On Android, these correspond to onCreate.
    """
    env.out.print("Starting App")
    let b: Array[U32] = [4, 5, 6]
    let e: EGLEvent = (4, 0, 0)
    // @setEvent[None](e)
    // // env.out.print(@glCreateProgram[U8]().string())
    let x_dpy = @XOpenDisplay[Pointer[_XDisplayHandle]](U32(0))
    if x_dpy.is_null() then
      env.out.print("XOpenDisplay failed")
    end
    let e_dpy = @eglGetDisplay[Pointer[_EGLDisplayHandle]](x_dpy)
    if e_dpy.is_null() then
      env.out.print("eglGetDisplay failed")
    end
    if @eglInitialize[U32](e_dpy, Pointer[U32], Pointer[U32]) == 0 then
      env.out.print("eglInitialize failed")
    end
    if @eglBindAPI[U32](EGLOpenGLESAPI()) == 0 then
      env.out.print("eglBindAPI failed")
    end
    // let a = Array[U16](8)
    // a.push(0x3040)
    // a.push(0x4)
    // a.push(0x3033)
    // a.push(0x4)
    // a.push(0x3022)
    // a.push(0x8)
    // a.push(0x3023)
    // a.push(0x8)
    // a.push(0x3024)
    // a.push(0x8)
    // a.push(0x3025)
    // a.push(0x10)
    // a.push(0x3027)
    // a.push(0x3028)
    // a.push(0x3028)
    // let config = Pointer[_EGLConfigHandle]
    // if @eglChooseConfig[U32](e_dpy, a, config, U32(1), Pointer[U32]) == 0 then
    //   env.out.print("eglChooseConfig failed")
    // end
    // if @eglGetConfigAttrib[U32](e_dpy, config, EGLNativeVisualID(), Pointer[U32]) == 0 then
    //   env.out.print("eglGetConfigAttrib failed")
    // end
    // GLUtil.createProgram()
    var running = true
    (var c, var x, var y) = @createWindow[EGLEvent](x_dpy, e_dpy, "Demo".cstring(), U32(800), U32(480))
    // _resize(env, y, x)
    // env.out.print(b.string())
    while running do
      while @XPending[U32](x_dpy) > 0 do
        // @XNextEvent[None](x_dpy, Pointer[_EGLConfigHandle])
        (c, x, y) = @processEvents[EGLEvent](x_dpy)
        match c
        | 1 => _resize(env, y, x)
        | 2 => _processInput(env, c, x, y)
        | 3 => _processInput(env, c, x, y)
        | 4 => _processInput(env, c, x, y)
        | 255 => _exit(env); break
        end
      end
    end

  fun _resize(env: Env, w: F32, h: F32) =>
    env.out.print(w.string())
    env.out.print(h.string())

  fun _pause(env: Env) =>
    """
    StageVisible means that the app window is visible.
     - A positive cross means that the app window has become visible.
     - A negative cross means that the app window has become invisible.
    On Android, these correspond to onStart and onStop.
    On Desktop, an app window can become invisible if e.g. it is minimized,
    unmapped, or not on a visible workspace.
    """

  fun _resume(env: Env) =>
    """
    This means that the app window has the focus.
    On Desktop, this could be unminimize or visble
    On Android, this correspond to onResume and onFreeze.
    """

  fun _exit(env: Env) =>
    """
    On Android, these correspond to onDestroy.
    """
    env.out.print("Exiting")

  fun _processInput(env: Env, c: U8, x: F32, y: F32) =>
    env.out.print(x.string())

// type contextGL struct {
//   dpy  C.EGLDisplay
//   ctx  C.EGLContext
//   surf C.EGLSurface
// }

// func createContext() (*contextGL, error) {
//   runtime.LockOSThread()
//   c := &contextGL{}
//   C.createContext(&c.dpy, &c.ctx, &c.surf)
//   return c, nil
// }

// func (c *contextGL) destroy() {
//   C.destroyContext(c.dpy, c.ctx, c.surf)
//   runtime.UnlockOSThread()
// }
