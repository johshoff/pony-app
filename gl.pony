/*
Partially generated from the Khronos OpenGL API specification in XML
format, which is covered by the license:

  Copyright (c) 2013-2014 The Khronos Group Inc.

  Permission is hereby granted, free of charge, to any person obtaining a
  copy of this software and/or associated documentation files (the
  "Materials"), to deal in the Materials without restriction, including
  without limitation the rights to use, copy, modify, merge, publish,
  distribute, sublicense, and/or sell copies of the Materials, and to
  permit persons to whom the Materials are furnished to do so, subject to
  the following conditions:

  The above copyright notice and this permission notice shall be included
  in all copies or substantial portions of the Materials.

  THE MATERIALS ARE PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
  MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
  CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
  TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
  MATERIALS OR THE USE OR OTHER DEALINGS IN THE MATERIALS.

*/
use "lib:GLESv2" if linux
use "lib:OpenGL" if osx
use "lib:OpenGLES" if osx // or ios arm

primitive Points                                      fun apply(): U16 => 0x0000
primitive Lines                                       fun apply(): U16 => 0x0001
primitive LineLoop                                    fun apply(): U16 => 0x0002
primitive LineStrip                                   fun apply(): U16 => 0x0003
primitive Triangles                                   fun apply(): U16 => 0x0004
primitive TriangleStrip                               fun apply(): U16 => 0x0005
primitive TriangleFan                                 fun apply(): U16 => 0x0006
primitive SrcColor                                    fun apply(): U16 => 0x0300
primitive OneMinusSrcColor                            fun apply(): U16 => 0x0301
primitive SrcAlpha                                    fun apply(): U16 => 0x0302
primitive OneMinusSrcAlpha                            fun apply(): U16 => 0x0303
primitive DstAlpha                                    fun apply(): U16 => 0x0304
primitive OneMinusDstAlpha                            fun apply(): U16 => 0x0305
primitive DstColor                                    fun apply(): U16 => 0x0306
primitive OneMinusDstColor                            fun apply(): U16 => 0x0307
primitive SrcAlphaSaturate                            fun apply(): U16 => 0x0308
primitive FuncAdd                                     fun apply(): U16 => 0x8006
primitive BlendEquation                               fun apply(): U16 => 0x8009
primitive BlendEquationRgb                            fun apply(): U16 => 0x8009
primitive BlendEquationAlpha                          fun apply(): U16 => 0x883d
primitive FuncSubtract                                fun apply(): U16 => 0x800a
primitive FuncReverseSubtract                         fun apply(): U16 => 0x800b
primitive BlendDstRgb                                 fun apply(): U16 => 0x80c8
primitive BlendSrcRgb                                 fun apply(): U16 => 0x80c9
primitive BlendDstAlpha                               fun apply(): U16 => 0x80ca
primitive BlendSrcAlpha                               fun apply(): U16 => 0x80cb
primitive ConstantColor                               fun apply(): U16 => 0x8001
primitive OneMinusConstantColor                       fun apply(): U16 => 0x8002
primitive ConstantAlpha                               fun apply(): U16 => 0x8003
primitive OneMinusConstantAlpha                       fun apply(): U16 => 0x8004
primitive BlendColor                                  fun apply(): U16 => 0x8005
primitive ArrayBuffer                                 fun apply(): U16 => 0x8892
primitive ElementArrayBuffer                          fun apply(): U16 => 0x8893
primitive ArrayBufferBinding                          fun apply(): U16 => 0x8894
primitive ElementArrayBufferBinding                   fun apply(): U16 => 0x8895
primitive StreamDraw                                  fun apply(): U16 => 0x88e0
primitive StaticDraw                                  fun apply(): U16 => 0x88e4
primitive DynamicDraw                                 fun apply(): U16 => 0x88e8
primitive BufferSize                                  fun apply(): U16 => 0x8764
primitive BufferUsage                                 fun apply(): U16 => 0x8765
primitive CurrentVertexAttrib                         fun apply(): U16 => 0x8626
primitive Front                                       fun apply(): U16 => 0x0404
primitive Back                                        fun apply(): U16 => 0x0405
primitive FrontAndBack                                fun apply(): U16 => 0x0408
primitive Texture2d                                   fun apply(): U16 => 0x0de1
primitive CullFace                                    fun apply(): U16 => 0x0b44
primitive Blend                                       fun apply(): U16 => 0x0be2
primitive Dither                                      fun apply(): U16 => 0x0bd0
primitive StencilTest                                 fun apply(): U16 => 0x0b90
primitive DepthTest                                   fun apply(): U16 => 0x0b71
primitive ScissorTest                                 fun apply(): U16 => 0x0c11
primitive PolygonOffsetFill                           fun apply(): U16 => 0x8037
primitive SampleAlphaToCoverage                       fun apply(): U16 => 0x809e
primitive SampleCoverage                              fun apply(): U16 => 0x80a0
primitive InvalidEnum                                 fun apply(): U16 => 0x0500
primitive InvalidValue                                fun apply(): U16 => 0x0501
primitive InvalidOperation                            fun apply(): U16 => 0x0502
primitive OutOfMemory                                 fun apply(): U16 => 0x0505
primitive Cw                                          fun apply(): U16 => 0x0900
primitive Ccw                                         fun apply(): U16 => 0x0901
primitive LineWidth                                   fun apply(): U16 => 0x0b21
primitive AliasedPointSizeRange                       fun apply(): U16 => 0x846d
primitive AliasedLineWidthRange                       fun apply(): U16 => 0x846e
primitive CullFaceMode                                fun apply(): U16 => 0x0b45
primitive FrontFace                                   fun apply(): U16 => 0x0b46
primitive DepthRange                                  fun apply(): U16 => 0x0b70
primitive DepthWritemask                              fun apply(): U16 => 0x0b72
primitive DepthClearValue                             fun apply(): U16 => 0x0b73
primitive DepthFunc                                   fun apply(): U16 => 0x0b74
primitive StencilClearValue                           fun apply(): U16 => 0x0b91
primitive StencilFunc                                 fun apply(): U16 => 0x0b92
primitive StencilFail                                 fun apply(): U16 => 0x0b94
primitive StencilPassDepthFail                        fun apply(): U16 => 0x0b95
primitive StencilPassDepthPass                        fun apply(): U16 => 0x0b96
primitive StencilRef                                  fun apply(): U16 => 0x0b97
primitive StencilValueMask                            fun apply(): U16 => 0x0b93
primitive StencilWritemask                            fun apply(): U16 => 0x0b98
primitive StencilBackFunc                             fun apply(): U16 => 0x8800
primitive StencilBackFail                             fun apply(): U16 => 0x8801
primitive StencilBackPassDepthFail                    fun apply(): U16 => 0x8802
primitive StencilBackPassDepthPass                    fun apply(): U16 => 0x8803
primitive StencilBackRef                              fun apply(): U16 => 0x8ca3
primitive StencilBackValueMask                        fun apply(): U16 => 0x8ca4
primitive StencilBackWritemask                        fun apply(): U16 => 0x8ca5
primitive Viewport                                    fun apply(): U16 => 0x0ba2
primitive ScissorBox                                  fun apply(): U16 => 0x0c10
primitive ColorClearValue                             fun apply(): U16 => 0x0c22
primitive ColorWritemask                              fun apply(): U16 => 0x0c23
primitive UnpackAlignment                             fun apply(): U16 => 0x0cf5
primitive PackAlignment                               fun apply(): U16 => 0x0d05
primitive MaxTextureSize                              fun apply(): U16 => 0x0d33
primitive MaxViewportDims                             fun apply(): U16 => 0x0d3a
primitive SubpixelBits                                fun apply(): U16 => 0x0d50
primitive RedBits                                     fun apply(): U16 => 0x0d52
primitive GreenBits                                   fun apply(): U16 => 0x0d53
primitive BlueBits                                    fun apply(): U16 => 0x0d54
primitive AlphaBits                                   fun apply(): U16 => 0x0d55
primitive DepthBits                                   fun apply(): U16 => 0x0d56
primitive StencilBits                                 fun apply(): U16 => 0x0d57
primitive PolygonOffsetUnits                          fun apply(): U16 => 0x2a00
primitive PolygonOffsetFactor                         fun apply(): U16 => 0x8038
primitive TextureBinding2d                            fun apply(): U16 => 0x8069
primitive SampleBuffers                               fun apply(): U16 => 0x80a8
primitive Samples                                     fun apply(): U16 => 0x80a9
primitive SampleCoverageValue                         fun apply(): U16 => 0x80aa
primitive SampleCoverageInvert                        fun apply(): U16 => 0x80ab
primitive NumCompressedTextureFormats                 fun apply(): U16 => 0x86a2
primitive CompressedTextureFormats                    fun apply(): U16 => 0x86a3
primitive DontCare                                    fun apply(): U16 => 0x1100
primitive Fastest                                     fun apply(): U16 => 0x1101
primitive Nicest                                      fun apply(): U16 => 0x1102
primitive GenerateMipmapHint                          fun apply(): U16 => 0x8192
primitive Byte                                        fun apply(): U16 => 0x1400
primitive UnsignedByte                                fun apply(): U16 => 0x1401
primitive Short                                       fun apply(): U16 => 0x1402
primitive UnsignedShort                               fun apply(): U16 => 0x1403
// primitive Int                                         fun apply(): U16 => 0x1404
primitive UnsignedInt                                 fun apply(): U16 => 0x1405
// primitive Float                                       fun apply(): U16 => 0x1406
primitive Fixed                                       fun apply(): U16 => 0x140c
primitive DepthComponent                              fun apply(): U16 => 0x1902
primitive Alpha                                       fun apply(): U16 => 0x1906
primitive Rgb                                         fun apply(): U16 => 0x1907
primitive Rgba                                        fun apply(): U16 => 0x1908
primitive Luminance                                   fun apply(): U16 => 0x1909
primitive LuminanceAlpha                              fun apply(): U16 => 0x190a
primitive UnsignedShort4444                           fun apply(): U16 => 0x8033
primitive UnsignedShort5551                           fun apply(): U16 => 0x8034
primitive UnsignedShort565                            fun apply(): U16 => 0x8363
primitive MaxVertexAttribs                            fun apply(): U16 => 0x8869
primitive MaxVertexUniformVectors                     fun apply(): U16 => 0x8dfb
primitive MaxVaryingVectors                           fun apply(): U16 => 0x8dfc
primitive MaxCombinedTextureImageUnits                fun apply(): U16 => 0x8b4d
primitive MaxVertexTextureImageUnits                  fun apply(): U16 => 0x8b4c
primitive MaxTextureImageUnits                        fun apply(): U16 => 0x8872
primitive MaxFragmentUniformVectors                   fun apply(): U16 => 0x8dfd
primitive ShaderType                                  fun apply(): U16 => 0x8b4f
primitive DeleteStatus                                fun apply(): U16 => 0x8b80
primitive LinkStatus                                  fun apply(): U16 => 0x8b82
primitive ValidateStatus                              fun apply(): U16 => 0x8b83
primitive AttachedShaders                             fun apply(): U16 => 0x8b85
primitive ActiveUniforms                              fun apply(): U16 => 0x8b86
primitive ActiveUniformMaxLength                      fun apply(): U16 => 0x8b87
primitive ActiveAttributes                            fun apply(): U16 => 0x8b89
primitive ActiveAttributeMaxLength                    fun apply(): U16 => 0x8b8a
primitive ShadingLanguageVersion                      fun apply(): U16 => 0x8b8c
primitive CurrentProgram                              fun apply(): U16 => 0x8b8d
primitive Never                                       fun apply(): U16 => 0x0200
// primitive Less                                        fun apply(): U16 => 0x0201
// primitive Equal                                       fun apply(): U16 => 0x0202
primitive Lequal                                      fun apply(): U16 => 0x0203
// primitive Greater                                     fun apply(): U16 => 0x0204
primitive Notequal                                    fun apply(): U16 => 0x0205
primitive Gequal                                      fun apply(): U16 => 0x0206
primitive Always                                      fun apply(): U16 => 0x0207
primitive Keep                                        fun apply(): U16 => 0x1e00
primitive Replace                                     fun apply(): U16 => 0x1e01
primitive Incr                                        fun apply(): U16 => 0x1e02
primitive Decr                                        fun apply(): U16 => 0x1e03
primitive Invert                                      fun apply(): U16 => 0x150a
primitive IncrWrap                                    fun apply(): U16 => 0x8507
primitive DecrWrap                                    fun apply(): U16 => 0x8508
primitive Vendor                                      fun apply(): U16 => 0x1f00
primitive Renderer                                    fun apply(): U16 => 0x1f01
primitive Version                                     fun apply(): U16 => 0x1f02
primitive Extensions                                  fun apply(): U16 => 0x1f03
primitive Nearest                                     fun apply(): U16 => 0x2600
primitive Linear                                      fun apply(): U16 => 0x2601
primitive NearestMipmapNearest                        fun apply(): U16 => 0x2700
primitive LinearMipmapNearest                         fun apply(): U16 => 0x2701
primitive NearestMipmapLinear                         fun apply(): U16 => 0x2702
primitive LinearMipmapLinear                          fun apply(): U16 => 0x2703
primitive TextureMagFilter                            fun apply(): U16 => 0x2800
primitive TextureMinFilter                            fun apply(): U16 => 0x2801
primitive TextureWrapS                                fun apply(): U16 => 0x2802
primitive TextureWrapT                                fun apply(): U16 => 0x2803
primitive Texture                                     fun apply(): U16 => 0x1702
primitive TextureCubeMap                              fun apply(): U16 => 0x8513
primitive TextureBindingCubeMap                       fun apply(): U16 => 0x8514
primitive TextureCubeMapPositiveX                     fun apply(): U16 => 0x8515
primitive TextureCubeMapNegativeX                     fun apply(): U16 => 0x8516
primitive TextureCubeMapPositiveY                     fun apply(): U16 => 0x8517
primitive TextureCubeMapNegativeY                     fun apply(): U16 => 0x8518
primitive TextureCubeMapPositiveZ                     fun apply(): U16 => 0x8519
primitive TextureCubeMapNegativeZ                     fun apply(): U16 => 0x851a
primitive MaxCubeMapTextureSize                       fun apply(): U16 => 0x851c
primitive Texture0                                    fun apply(): U16 => 0x84c0
primitive Texture1                                    fun apply(): U16 => 0x84c1
primitive Texture2                                    fun apply(): U16 => 0x84c2
primitive Texture3                                    fun apply(): U16 => 0x84c3
primitive Texture4                                    fun apply(): U16 => 0x84c4
primitive Texture5                                    fun apply(): U16 => 0x84c5
primitive Texture6                                    fun apply(): U16 => 0x84c6
primitive Texture7                                    fun apply(): U16 => 0x84c7
primitive Texture8                                    fun apply(): U16 => 0x84c8
primitive Texture9                                    fun apply(): U16 => 0x84c9
primitive Texture10                                   fun apply(): U16 => 0x84ca
primitive Texture11                                   fun apply(): U16 => 0x84cb
primitive Texture12                                   fun apply(): U16 => 0x84cc
primitive Texture13                                   fun apply(): U16 => 0x84cd
primitive Texture14                                   fun apply(): U16 => 0x84ce
primitive Texture15                                   fun apply(): U16 => 0x84cf
primitive Texture16                                   fun apply(): U16 => 0x84d0
primitive Texture17                                   fun apply(): U16 => 0x84d1
primitive Texture18                                   fun apply(): U16 => 0x84d2
primitive Texture19                                   fun apply(): U16 => 0x84d3
primitive Texture20                                   fun apply(): U16 => 0x84d4
primitive Texture21                                   fun apply(): U16 => 0x84d5
primitive Texture22                                   fun apply(): U16 => 0x84d6
primitive Texture23                                   fun apply(): U16 => 0x84d7
primitive Texture24                                   fun apply(): U16 => 0x84d8
primitive Texture25                                   fun apply(): U16 => 0x84d9
primitive Texture26                                   fun apply(): U16 => 0x84da
primitive Texture27                                   fun apply(): U16 => 0x84db
primitive Texture28                                   fun apply(): U16 => 0x84dc
primitive Texture29                                   fun apply(): U16 => 0x84dd
primitive Texture30                                   fun apply(): U16 => 0x84de
primitive Texture31                                   fun apply(): U16 => 0x84df
primitive ActiveTexture                               fun apply(): U16 => 0x84e0
primitive Repeat                                      fun apply(): U16 => 0x2901
primitive ClampToEdge                                 fun apply(): U16 => 0x812f
primitive MirroredRepeat                              fun apply(): U16 => 0x8370
primitive VertexAttribArrayEnabled                    fun apply(): U16 => 0x8622
primitive VertexAttribArraySize                       fun apply(): U16 => 0x8623
primitive VertexAttribArrayStride                     fun apply(): U16 => 0x8624
primitive VertexAttribArrayType                       fun apply(): U16 => 0x8625
primitive VertexAttribArrayNormalized                 fun apply(): U16 => 0x886a
primitive VertexAttribArrayPointer                    fun apply(): U16 => 0x8645
primitive VertexAttribArrayBufferBinding              fun apply(): U16 => 0x889f
primitive ImplementationColorReadType                 fun apply(): U16 => 0x8b9a
primitive ImplementationColorReadFormat               fun apply(): U16 => 0x8b9b
primitive CompileStatus                               fun apply(): U16 => 0x8b81
primitive InfoLogLength                               fun apply(): U16 => 0x8b84
primitive ShaderSourceLength                          fun apply(): U16 => 0x8b88
primitive ShaderCompiler                              fun apply(): U16 => 0x8dfa
primitive ShaderBinaryFormats                         fun apply(): U16 => 0x8df8
primitive NumShaderBinaryFormats                      fun apply(): U16 => 0x8df9
primitive LowFloat                                    fun apply(): U16 => 0x8df0
primitive MediumFloat                                 fun apply(): U16 => 0x8df1
primitive HighFloat                                   fun apply(): U16 => 0x8df2
primitive LowInt                                      fun apply(): U16 => 0x8df3
primitive MediumInt                                   fun apply(): U16 => 0x8df4
primitive HighInt                                     fun apply(): U16 => 0x8df5
primitive Framebuffer                                 fun apply(): U16 => 0x8d40
primitive Renderbuffer                                fun apply(): U16 => 0x8d41
primitive Rgba4                                       fun apply(): U16 => 0x8056
primitive Rgb5A1                                      fun apply(): U16 => 0x8057
primitive Rgb565                                      fun apply(): U16 => 0x8d62
primitive DepthComponent16                            fun apply(): U16 => 0x81a5
primitive StencilIndex8                               fun apply(): U16 => 0x8d48
primitive RenderbufferWidth                           fun apply(): U16 => 0x8d42
primitive RenderbufferHeight                          fun apply(): U16 => 0x8d43
primitive RenderbufferInternalFormat                  fun apply(): U16 => 0x8d44
primitive RenderbufferRedSize                         fun apply(): U16 => 0x8d50
primitive RenderbufferGreenSize                       fun apply(): U16 => 0x8d51
primitive RenderbufferBlueSize                        fun apply(): U16 => 0x8d52
primitive RenderbufferAlphaSize                       fun apply(): U16 => 0x8d53
primitive RenderbufferDepthSize                       fun apply(): U16 => 0x8d54
primitive RenderbufferStencilSize                     fun apply(): U16 => 0x8d55
primitive FramebufferAttachmentObjectType             fun apply(): U16 => 0x8cd0
primitive FramebufferAttachmentObjectName             fun apply(): U16 => 0x8cd1
primitive FramebufferAttachmentTextureLevel           fun apply(): U16 => 0x8cd2
primitive FramebufferAttachmentTextureCubeMapFace     fun apply(): U16 => 0x8cd3
primitive ColorAttachment0                            fun apply(): U16 => 0x8ce0
primitive DepthAttachment                             fun apply(): U16 => 0x8d00
primitive StencilAttachment                           fun apply(): U16 => 0x8d20
primitive FramebufferComplete                         fun apply(): U16 => 0x8cd5
primitive FramebufferIncompleteAttachment             fun apply(): U16 => 0x8cd6
primitive FramebufferIncompleteMissingAttachment      fun apply(): U16 => 0x8cd7
primitive FramebufferIncompleteDimensions             fun apply(): U16 => 0x8cd9
primitive FramebufferUnsupported                      fun apply(): U16 => 0x8cdd
primitive FramebufferBinding                          fun apply(): U16 => 0x8ca6
primitive RenderbufferBinding                         fun apply(): U16 => 0x8ca7
primitive MaxRenderbufferSize                         fun apply(): U16 => 0x84e8
primitive InvalidFramebufferOperation                 fun apply(): U16 => 0x0506


primitive DepthBufferBit   fun apply(): U16 => 0x00000100
primitive StencilBufferBit fun apply(): U16 => 0x00000400
primitive ColorBufferBit   fun apply(): U16 => 0x00004000


primitive FloatVec2   fun apply(): U16 => 0x8b50
primitive FloatVec3   fun apply(): U16 => 0x8b51
primitive FloatVec4   fun apply(): U16 => 0x8b52
primitive IntVec2     fun apply(): U16 => 0x8b53
primitive IntVec3     fun apply(): U16 => 0x8b54
primitive IntVec4     fun apply(): U16 => 0x8b55
// primitive Bool        fun apply(): U16 => 0x8b56
primitive BoolVec2    fun apply(): U16 => 0x8b57
primitive BoolVec3    fun apply(): U16 => 0x8b58
primitive BoolVec4    fun apply(): U16 => 0x8b59
primitive FloatMat2   fun apply(): U16 => 0x8b5a
primitive FloatMat3   fun apply(): U16 => 0x8b5b
primitive FloatMat4   fun apply(): U16 => 0x8b5c
primitive Sampler2d   fun apply(): U16 => 0x8b5e
primitive SamplerCube fun apply(): U16 => 0x8b60


primitive FragmentShader fun apply(): U16 => 0x8b30
primitive VertexShader   fun apply(): U16 => 0x8b31


primitive False    fun apply(): U16 => 0
primitive True     fun apply(): U16 => 1
primitive Zero     fun apply(): U16 => 0
primitive One      fun apply(): U16 => 1
primitive NoError  fun apply(): U16 => 0
// primitive None     fun apply(): U16 => 0


/*
#cgo darwin,amd64  CFLAGS: -Dos_osx
#cgo darwin,arm    CFLAGS: -Dos_ios
#cgo darwin,arm64  CFLAGS: -Dos_ios
#cgo linux         CFLAGS: -Dos_linux

#include <stdint.h>
#include "work.h"

uintptr_t process(struct fnargs* cargs, char* parg0, char* parg1, char* parg2, int count) {
  uintptr_t ret;

  ret = processFn(&cargs[0], parg0);
  if (count > 1) {
    ret = processFn(&cargs[1], parg1);
  }
  if (count > 2) {
    ret = processFn(&cargs[2], parg2);
  }

  return ret;
}
*/


// uintptr_t processFn(struct fnargs* args, char* parg) {
//   uintptr_t ret = 0;
//   switch (args->fn) {
//   case glfnUNDEFINED:
//     abort(); // bad glfn
//     break;
//   case glfnActiveTexture:
//     glActiveTexture((GLenum)args->a0);
//     break;
//   case glfnAttachShader:
//     glAttachShader((GLint)args->a0, (GLint)args->a1);
//     break;
//   case glfnBindAttribLocation:
//     glBindAttribLocation((GLint)args->a0, (GLint)args->a1, (GLchar*)args->a2);
//     free((void*)args->a2);
//     break;
//   case glfnBindBuffer:
//     glBindBuffer((GLenum)args->a0, (GLuint)args->a1);
//     break;
//   case glfnBindFramebuffer:
//     glBindFramebuffer((GLenum)args->a0, (GLint)args->a1);
//     break;
//   case glfnBindRenderbuffer:
//     glBindRenderbuffer((GLenum)args->a0, (GLint)args->a1);
//     break;
//   case glfnBindTexture:
//     glBindTexture((GLenum)args->a0, (GLint)args->a1);
//     break;
//   case glfnBlendColor:
//     glBlendColor(*(GLfloat*)&args->a0, *(GLfloat*)&args->a1, *(GLfloat*)&args->a2, *(GLfloat*)&args->a3);
//     break;
//   case glfnBlendEquation:
//     glBlendEquation((GLenum)args->a0);
//     break;
//   case glfnBlendEquationSeparate:
//     glBlendEquationSeparate((GLenum)args->a0, (GLenum)args->a1);
//     break;
//   case glfnBlendFunc:
//     glBlendFunc((GLenum)args->a0, (GLenum)args->a1);
//     break;
//   case glfnBlendFuncSeparate:
//     glBlendFuncSeparate((GLenum)args->a0, (GLenum)args->a1, (GLenum)args->a2, (GLenum)args->a3);
//     break;
//   case glfnBufferData:
//     glBufferData((GLenum)args->a0, (GLsizeiptr)args->a1, (GLvoid*)parg, (GLenum)args->a2);
//     break;
//   case glfnBufferSubData:
//     glBufferSubData((GLenum)args->a0, (GLint)args->a1, (GLsizeiptr)args->a2, (GLvoid*)parg);
//     break;
//   case glfnCheckFramebufferStatus:
//     ret = glCheckFramebufferStatus((GLenum)args->a0);
//     break;
//   case glfnClear:
//     glClear((GLenum)args->a0);
//     break;
//   case glfnClearColor:
//     glClearColor(*(GLfloat*)&args->a0, *(GLfloat*)&args->a1, *(GLfloat*)&args->a2, *(GLfloat*)&args->a3);
//     break;
//   case glfnClearDepthf:
//     glClearDepthf(*(GLfloat*)&args->a0);
//     break;
//   case glfnClearStencil:
//     glClearStencil((GLint)args->a0);
//     break;
//   case glfnColorMask:
//     glColorMask((GLboolean)args->a0, (GLboolean)args->a1, (GLboolean)args->a2, (GLboolean)args->a3);
//     break;
//   case glfnCompileShader:
//     glCompileShader((GLint)args->a0);
//     break;
//   case glfnCompressedTexImage2D:
//     glCompressedTexImage2D((GLenum)args->a0, (GLint)args->a1, (GLenum)args->a2, (GLint)args->a3, (GLint)args->a4, (GLint)args->a5, (GLsizeiptr)args->a6, (GLvoid*)parg);
//     break;
//   case glfnCompressedTexSubImage2D:
//     glCompressedTexSubImage2D((GLenum)args->a0, (GLint)args->a1, (GLint)args->a2, (GLint)args->a3, (GLint)args->a4, (GLint)args->a5, (GLenum)args->a6, (GLsizeiptr)args->a7, (GLvoid*)parg);
//     break;
//   case glfnCopyTexImage2D:
//     glCopyTexImage2D((GLenum)args->a0, (GLint)args->a1, (GLenum)args->a2, (GLint)args->a3, (GLint)args->a4, (GLint)args->a5, (GLint)args->a6, (GLint)args->a7);
//     break;
//   case glfnCopyTexSubImage2D:
//     glCopyTexSubImage2D((GLenum)args->a0, (GLint)args->a1, (GLint)args->a2, (GLint)args->a3, (GLint)args->a4, (GLint)args->a5, (GLint)args->a6, (GLint)args->a7);
//     break;
//   case glfnCreateProgram:
//     ret = glCreateProgram();
//     break;
//   case glfnCreateShader:
//     ret = glCreateShader((GLenum)args->a0);
//     break;
//   case glfnCullFace:
//     glCullFace((GLenum)args->a0);
//     break;
//   case glfnDeleteBuffer:
//     glDeleteBuffers(1, (const GLuint*)(&args->a0));
//     break;
//   case glfnDeleteFramebuffer:
//     glDeleteFramebuffers(1, (const GLuint*)(&args->a0));
//     break;
//   case glfnDeleteProgram:
//     glDeleteProgram((GLint)args->a0);
//     break;
//   case glfnDeleteRenderbuffer:
//     glDeleteRenderbuffers(1, (const GLuint*)(&args->a0));
//     break;
//   case glfnDeleteShader:
//     glDeleteShader((GLint)args->a0);
//     break;
//   case glfnDeleteTexture:
//     glDeleteTextures(1, (const GLuint*)(&args->a0));
//     break;
//   case glfnDepthFunc:
//     glDepthFunc((GLenum)args->a0);
//     break;
//   case glfnDepthMask:
//     glDepthMask((GLboolean)args->a0);
//     break;
//   case glfnDepthRangef:
//     glDepthRangef(*(GLfloat*)&args->a0, *(GLfloat*)&args->a1);
//     break;
//   case glfnDetachShader:
//     glDetachShader((GLint)args->a0, (GLint)args->a1);
//     break;
//   case glfnDisable:
//     glDisable((GLenum)args->a0);
//     break;
//   case glfnDisableVertexAttribArray:
//     glDisableVertexAttribArray((GLint)args->a0);
//     break;
//   case glfnDrawArrays:
//     glDrawArrays((GLenum)args->a0, (GLint)args->a1, (GLint)args->a2);
//     break;
//   case glfnDrawElements:
//     glDrawElements((GLenum)args->a0, (GLint)args->a1, (GLenum)args->a2, (void*)args->a3);
//     break;
//   case glfnEnable:
//     glEnable((GLenum)args->a0);
//     break;
//   case glfnEnableVertexAttribArray:
//     glEnableVertexAttribArray((GLint)args->a0);
//     break;
//   case glfnFinish:
//     glFinish();
//     break;
//   case glfnFlush:
//     glFlush();
//     break;
//   case glfnFramebufferRenderbuffer:
//     glFramebufferRenderbuffer((GLenum)args->a0, (GLenum)args->a1, (GLenum)args->a2, (GLint)args->a3);
//     break;
//   case glfnFramebufferTexture2D:
//     glFramebufferTexture2D((GLenum)args->a0, (GLenum)args->a1, (GLenum)args->a2, (GLint)args->a3, (GLint)args->a4);
//     break;
//   case glfnFrontFace:
//     glFrontFace((GLenum)args->a0);
//     break;
//   case glfnGenBuffer:
//     glGenBuffers(1, (GLuint*)&ret);
//     break;
//   case glfnGenFramebuffer:
//     glGenFramebuffers(1, (GLuint*)&ret);
//     break;
//   case glfnGenRenderbuffer:
//     glGenRenderbuffers(1, (GLuint*)&ret);
//     break;
//   case glfnGenTexture:
//     glGenTextures(1, (GLuint*)&ret);
//     break;
//   case glfnGenerateMipmap:
//     glGenerateMipmap((GLenum)args->a0);
//     break;
//   case glfnGetActiveAttrib:
//     glGetActiveAttrib(
//       (GLuint)args->a0,
//       (GLuint)args->a1,
//       (GLsizei)args->a2,
//       NULL,
//       (GLint*)args->a4,
//       (GLenum*)args->a5,
//       (GLchar*)args->a6);
//     break;
//   case glfnGetActiveUniform:
//     glGetActiveUniform(
//       (GLuint)args->a0,
//       (GLuint)args->a1,
//       (GLsizei)args->a2,
//       NULL,
//       (GLint*)args->a4,
//       (GLenum*)args->a5,
//       (GLchar*)args->a6);
//     break;
//   case glfnGetAttachedShaders:
//     glGetAttachedShaders((GLuint)args->a0, (GLsizei)args->a1, (GLsizei*)args->a2, (GLuint*)args->a3);
//     break;
//   case glfnGetAttribLocation:
//     ret = glGetAttribLocation((GLint)args->a0, (GLchar*)args->a1);
//     free((void*)args->a1);
//     break;
//   case glfnGetBooleanv:
//     glGetBooleanv((GLenum)args->a0, (GLboolean*)args->a1);
//     break;
//   case glfnGetBufferParameteri:
//     glGetBufferParameteriv((GLenum)args->a0, (GLenum)args->a1, (GLint*)&ret);
//     break;
//   case glfnGetFloatv:
//     glGetFloatv((GLenum)args->a0, (GLfloat*)parg);
//     break;
//   case glfnGetIntegerv:
//     glGetIntegerv((GLenum)args->a0, (GLint*)parg);
//     break;
//   case glfnGetError:
//     ret = glGetError();
//     break;
//   case glfnGetFramebufferAttachmentParameteriv:
//     glGetFramebufferAttachmentParameteriv((GLenum)args->a0, (GLenum)args->a1, (GLenum)args->a2, (GLint*)&ret);
//     break;
//   case glfnGetProgramiv:
//     glGetProgramiv((GLint)args->a0, (GLenum)args->a1, (GLint*)&ret);
//     break;
//   case glfnGetProgramInfoLog:
//     glGetProgramInfoLog((GLuint)args->a0, (GLsizei)args->a1, (GLsizei*)args->a2, (GLchar*)args->a3);
//     break;
//   case glfnGetRenderbufferParameteriv:
//     glGetRenderbufferParameteriv((GLenum)args->a0, (GLenum)args->a1, (GLint*)&ret);
//     break;
//   case glfnGetShaderiv:
//     glGetShaderiv((GLint)args->a0, (GLenum)args->a1, (GLint*)&ret);
//     break;
//   case glfnGetShaderInfoLog:
//     glGetShaderInfoLog((GLuint)args->a0, (GLsizei)args->a1, (GLsizei*)args->a2, (GLchar*)args->a3);
//     break;
//   case glfnGetShaderPrecisionFormat:
//     glGetShaderPrecisionFormat((GLenum)args->a0, (GLenum)args->a1, (GLint*)args->a2, (GLint*)args->a3);
//     break;
//   case glfnGetShaderSource:
//     glGetShaderSource((GLuint)args->a0, (GLsizei)args->a1, (GLsizei*)args->a2, (GLchar*)args->a3);
//     break;
//   case glfnGetString:
//     ret = (uintptr_t)glGetString((GLenum)args->a0);
//     break;
//   case glfnGetTexParameterfv:
//     glGetTexParameterfv((GLenum)args->a0, (GLenum)args->a1, (GLfloat*)parg);
//     break;
//   case glfnGetTexParameteriv:
//     glGetTexParameteriv((GLenum)args->a0, (GLenum)args->a1, (GLint*)parg);
//     break;
//   case glfnGetUniformfv:
//     glGetUniformfv((GLuint)args->a0, (GLint)args->a1, (GLfloat*)parg);
//     break;
//   case glfnGetUniformiv:
//     glGetUniformiv((GLuint)args->a0, (GLint)args->a1, (GLint*)parg);
//     break;
//   case glfnGetUniformLocation:
//     ret = glGetUniformLocation((GLint)args->a0, (GLchar*)parg);
//     free((void*)args->a1);
//     break;
//   case glfnGetVertexAttribfv:
//     glGetVertexAttribfv((GLuint)args->a0, (GLenum)args->a1, (GLfloat*)parg);
//     break;
//   case glfnGetVertexAttribiv:
//     glGetVertexAttribiv((GLuint)args->a0, (GLenum)args->a1, (GLint*)parg);
//     break;
//   case glfnHint:
//     glHint((GLenum)args->a0, (GLenum)args->a1);
//     break;
//   case glfnIsBuffer:
//     ret = glIsBuffer((GLint)args->a0);
//     break;
//   case glfnIsEnabled:
//     ret = glIsEnabled((GLenum)args->a0);
//     break;
//   case glfnIsFramebuffer:
//     ret = glIsFramebuffer((GLint)args->a0);
//     break;
//   case glfnIsProgram:
//     ret = glIsProgram((GLint)args->a0);
//     break;
//   case glfnIsRenderbuffer:
//     ret = glIsRenderbuffer((GLint)args->a0);
//     break;
//   case glfnIsShader:
//     ret = glIsShader((GLint)args->a0);
//     break;
//   case glfnIsTexture:
//     ret = glIsTexture((GLint)args->a0);
//     break;
//   case glfnLineWidth:
//     glLineWidth(*(GLfloat*)&args->a0);
//     break;
//   case glfnLinkProgram:
//     glLinkProgram((GLint)args->a0);
//     break;
//   case glfnPixelStorei:
//     glPixelStorei((GLenum)args->a0, (GLint)args->a1);
//     break;
//   case glfnPolygonOffset:
//     glPolygonOffset(*(GLfloat*)&args->a0, *(GLfloat*)&args->a1);
//     break;
//   case glfnReadPixels:
//     glReadPixels((GLint)args->a0, (GLint)args->a1, (GLsizei)args->a2, (GLsizei)args->a3, (GLenum)args->a4, (GLenum)args->a5, (void*)parg);
//     break;
//   case glfnReleaseShaderCompiler:
//     glReleaseShaderCompiler();
//     break;
//   case glfnRenderbufferStorage:
//     glRenderbufferStorage((GLenum)args->a0, (GLenum)args->a1, (GLint)args->a2, (GLint)args->a3);
//     break;
//   case glfnSampleCoverage:
//     glSampleCoverage(*(GLfloat*)&args->a0, (GLboolean)args->a1);
//     break;
//   case glfnScissor:
//     glScissor((GLint)args->a0, (GLint)args->a1, (GLint)args->a2, (GLint)args->a3);
//     break;
//   case glfnShaderSource:
// #if defined(os_ios) || defined(os_osx)
//     glShaderSource((GLuint)args->a0, (GLsizei)args->a1, (const GLchar *const *)args->a2, NULL);
// #else
//     glShaderSource((GLuint)args->a0, (GLsizei)args->a1, (const GLchar **)args->a2, NULL);
// #endif
//     free(*(void**)args->a2);
//     free((void*)args->a2);
//     break;
//   case glfnStencilFunc:
//     glStencilFunc((GLenum)args->a0, (GLint)args->a1, (GLuint)args->a2);
//     break;
//   case glfnStencilFuncSeparate:
//     glStencilFuncSeparate((GLenum)args->a0, (GLenum)args->a1, (GLint)args->a2, (GLuint)args->a3);
//     break;
//   case glfnStencilMask:
//     glStencilMask((GLuint)args->a0);
//     break;
//   case glfnStencilMaskSeparate:
//     glStencilMaskSeparate((GLenum)args->a0, (GLuint)args->a1);
//     break;
//   case glfnStencilOp:
//     glStencilOp((GLenum)args->a0, (GLenum)args->a1, (GLenum)args->a2);
//     break;
//   case glfnStencilOpSeparate:
//     glStencilOpSeparate((GLenum)args->a0, (GLenum)args->a1, (GLenum)args->a2, (GLenum)args->a3);
//     break;
//   case glfnTexImage2D:
//     glTexImage2D(
//       (GLenum)args->a0,
//       (GLint)args->a1,
//       (GLint)args->a2,
//       (GLsizei)args->a3,
//       (GLsizei)args->a4,
//       0, // border
//       (GLenum)args->a5,
//       (GLenum)args->a6,
//       (const GLvoid*)parg);
//     break;
//   case glfnTexSubImage2D:
//     glTexSubImage2D(
//       (GLenum)args->a0,
//       (GLint)args->a1,
//       (GLint)args->a2,
//       (GLint)args->a3,
//       (GLsizei)args->a4,
//       (GLsizei)args->a5,
//       (GLenum)args->a6,
//       (GLenum)args->a7,
//       (const GLvoid*)parg);
//     break;
//   case glfnTexParameterf:
//     glTexParameterf((GLenum)args->a0, (GLenum)args->a1, *(GLfloat*)&args->a2);
//     break;
//   case glfnTexParameterfv:
//     glTexParameterfv((GLenum)args->a0, (GLenum)args->a1, (GLfloat*)parg);
//     break;
//   case glfnTexParameteri:
//     glTexParameteri((GLenum)args->a0, (GLenum)args->a1, (GLint)args->a2);
//     break;
//   case glfnTexParameteriv:
//     glTexParameteriv((GLenum)args->a0, (GLenum)args->a1, (GLint*)parg);
//     break;
//   case glfnUniform1f:
//     glUniform1f((GLint)args->a0, *(GLfloat*)&args->a1);
//     break;
//   case glfnUniform1fv:
//     glUniform1fv((GLint)args->a0, (GLsizeiptr)args->a1, (GLvoid*)parg);
//     break;
//   case glfnUniform1i:
//     glUniform1i((GLint)args->a0, (GLint)args->a1);
//     break;
//   case glfnUniform1iv:
//     glUniform1iv((GLint)args->a0, (GLsizeiptr)args->a1, (GLvoid*)parg);
//     break;
//   case glfnUniform2f:
//     glUniform2f((GLint)args->a0, *(GLfloat*)&args->a1, *(GLfloat*)&args->a2);
//     break;
//   case glfnUniform2fv:
//     glUniform2fv((GLint)args->a0, (GLsizeiptr)args->a1, (GLvoid*)parg);
//     break;
//   case glfnUniform2i:
//     glUniform2i((GLint)args->a0, (GLint)args->a1, (GLint)args->a2);
//     break;
//   case glfnUniform2iv:
//     glUniform2iv((GLint)args->a0, (GLsizeiptr)args->a1, (GLvoid*)parg);
//     break;
//   case glfnUniform3f:
//     glUniform3f((GLint)args->a0, *(GLfloat*)&args->a1, *(GLfloat*)&args->a2, *(GLfloat*)&args->a3);
//     break;
//   case glfnUniform3fv:
//     glUniform3fv((GLint)args->a0, (GLsizeiptr)args->a1, (GLvoid*)parg);
//     break;
//   case glfnUniform3i:
//     glUniform3i((GLint)args->a0, (GLint)args->a1, (GLint)args->a2, (GLint)args->a3);
//     break;
//   case glfnUniform3iv:
//     glUniform3iv((GLint)args->a0, (GLsizeiptr)args->a1, (GLvoid*)parg);
//     break;
//   case glfnUniform4f:
//     glUniform4f((GLint)args->a0, *(GLfloat*)&args->a1, *(GLfloat*)&args->a2, *(GLfloat*)&args->a3, *(GLfloat*)&args->a4);
//     break;
//   case glfnUniform4fv:
//     glUniform4fv((GLint)args->a0, (GLsizeiptr)args->a1, (GLvoid*)parg);
//     break;
//   case glfnUniform4i:
//     glUniform4i((GLint)args->a0, (GLint)args->a1, (GLint)args->a2, (GLint)args->a3, (GLint)args->a4);
//     break;
//   case glfnUniform4iv:
//     glUniform4iv((GLint)args->a0, (GLsizeiptr)args->a1, (GLvoid*)parg);
//     break;
//   case glfnUniformMatrix2fv:
//     glUniformMatrix2fv((GLint)args->a0, (GLsizeiptr)args->a1, 0, (GLvoid*)parg);
//     break;
//   case glfnUniformMatrix3fv:
//     glUniformMatrix3fv((GLint)args->a0, (GLsizeiptr)args->a1, 0, (GLvoid*)parg);
//     break;
//   case glfnUniformMatrix4fv:
//     glUniformMatrix4fv((GLint)args->a0, (GLsizeiptr)args->a1, 0, (GLvoid*)parg);
//     break;
//   case glfnUseProgram:
//     glUseProgram((GLint)args->a0);
//     break;
//   case glfnValidateProgram:
//     glValidateProgram((GLint)args->a0);
//     break;
//   case glfnVertexAttrib1f:
//     glVertexAttrib1f((GLint)args->a0, *(GLfloat*)&args->a1);
//     break;
//   case glfnVertexAttrib1fv:
//     glVertexAttrib1fv((GLint)args->a0, (GLfloat*)parg);
//     break;
//   case glfnVertexAttrib2f:
//     glVertexAttrib2f((GLint)args->a0, *(GLfloat*)&args->a1, *(GLfloat*)&args->a2);
//     break;
//   case glfnVertexAttrib2fv:
//     glVertexAttrib2fv((GLint)args->a0, (GLfloat*)parg);
//     break;
//   case glfnVertexAttrib3f:
//     glVertexAttrib3f((GLint)args->a0, *(GLfloat*)&args->a1, *(GLfloat*)&args->a2, *(GLfloat*)&args->a3);
//     break;
//   case glfnVertexAttrib3fv:
//     glVertexAttrib3fv((GLint)args->a0, (GLfloat*)parg);
//     break;
//   case glfnVertexAttrib4f:
//     glVertexAttrib4f((GLint)args->a0, *(GLfloat*)&args->a1, *(GLfloat*)&args->a2, *(GLfloat*)&args->a3, *(GLfloat*)&args->a4);
//     break;
//   case glfnVertexAttrib4fv:
//     glVertexAttrib4fv((GLint)args->a0, (GLfloat*)parg);
//     break;
//   case glfnVertexAttribPointer:
//     glVertexAttribPointer((GLuint)args->a0, (GLint)args->a1, (GLenum)args->a2, (GLboolean)args->a3, (GLsizei)args->a4, (const GLvoid*)args->a5);
//     break;
//   case glfnViewport:
//     glViewport((GLint)args->a0, (GLint)args->a1, (GLint)args->a2, (GLint)args->a3);
//     break;
//   }
//   return ret;
// }

// '''
// OpenGL
// ======

// This module is a Python wrapper for OpenGL commands.

// .. warning::

//     Not every OpenGL command has been wrapped and because we are using the C
//     binding for higher performance, and you should rather stick to the Kivy
//     Graphics API. By using OpenGL commands directly, you might change
//     the OpenGL context and introduce inconsistency between the Kivy state and
//     the OpenGL state.

// }

// # Available only with ES2
// IF USE_OPENGL_ES2:
//     GL_FIXED = c_opengl.GL_FIXED
//     GL_MAX_VERTEX_UNIFORM_VECTORS = c_opengl.GL_MAX_VERTEX_UNIFORM_VECTORS
//     GL_MAX_VARYING_VECTORS = c_opengl.GL_MAX_VARYING_VECTORS
//     GL_MAX_FRAGMENT_UNIFORM_VECTORS = c_opengl.GL_MAX_FRAGMENT_UNIFORM_VECTORS
//     GL_IMPLEMENTATION_COLOR_READ_TYPE = c_opengl.GL_IMPLEMENTATION_COLOR_READ_TYPE
//     GL_IMPLEMENTATION_COLOR_READ_FORMAT = c_opengl.GL_IMPLEMENTATION_COLOR_READ_FORMAT
//     GL_SHADER_COMPILER = c_opengl.GL_SHADER_COMPILER
//     GL_NUM_SHADER_BINARY_FORMATS = c_opengl.GL_NUM_SHADER_BINARY_FORMATS
//     GL_LOW_FLOAT = c_opengl.GL_LOW_FLOAT
//     GL_MEDIUM_FLOAT = c_opengl.GL_MEDIUM_FLOAT
//     GL_HIGH_FLOAT = c_opengl.GL_HIGH_FLOAT
//     GL_LOW_INT = c_opengl.GL_LOW_INT
//     GL_MEDIUM_INT = c_opengl.GL_MEDIUM_INT
//     GL_HIGH_INT = c_opengl.GL_HIGH_INT
//     # update sizes
//     _GL_GET_SIZE[GL_MAX_VERTEX_UNIFORM_VECTORS] = 1
//     _GL_GET_SIZE[GL_MAX_VARYING_VECTORS] = 1
//     _GL_GET_SIZE[GL_MAX_FRAGMENT_UNIFORM_VECTORS] = 1
//     _GL_GET_SIZE[GL_IMPLEMENTATION_COLOR_READ_FORMAT] = 1
//     _GL_GET_SIZE[GL_IMPLEMENTATION_COLOR_READ_TYPE] = 1
//     _GL_GET_SIZE[GL_SHADER_COMPILER] = 1
//     _GL_GET_SIZE[GL_NUM_SHADER_BINARY_FORMATS] = 1
//     _GL_GET_SIZE[GL_SHADER_BINARY_FORMATS] = GL_NUM_SHADER_BINARY_FORMATS


// def glActiveTexture(GLenum texture):
//     '''See: `glActiveTexture() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glActiveTexture.xml>`_
//     '''
//     c_opengl.glActiveTexture(texture)

// def glAttachShader(GLuint program, GLuint shader):
//     '''See: `glAttachShader() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glAttachShader.xml>`_
//     '''
//     c_opengl.glAttachShader(program, shader)

// def glBindAttribLocation(GLuint program, GLuint index, bytes name):
//     '''See: `glBindAttribLocation() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glBindAttribLocation.xml>`_
//     '''
//     c_opengl.glBindAttribLocation(program, index, <char *>name)

// def glBindBuffer(GLenum target, GLuint buffer):
//     '''See: `glBindBuffer() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glBindBuffer.xml>`_
//     '''
//     c_opengl.glBindBuffer(target, buffer)

// def glBindFramebuffer(GLenum target, GLuint framebuffer):
//     '''See: `glBindFramebuffer() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glBindFramebuffer.xml>`_
//     '''
//     c_opengl.glBindFramebuffer(target, framebuffer)

// def glBindRenderbuffer(GLenum target, GLuint renderbuffer):
//     '''See: `glBindRenderbuffer() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glBindRenderbuffer.xml>`_
//     '''
//     c_opengl.glBindRenderbuffer(target, renderbuffer)

// def glBindTexture(GLenum target, GLuint texture):
//     '''See: `glBindTexture() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glBindTexture.xml>`_
//     '''
//     c_opengl.glBindTexture(target, texture)

// def glBlendColor(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha):
//     '''See: `glBlendColor() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glBlendColor.xml>`_
//     '''
//     c_opengl.glBlendColor(red, green, blue, alpha)

// def glBlendEquation(GLenum mode):
//     '''See: `glBlendEquation() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glBlendEquation.xml>`_
//     '''
//     c_opengl.glBlendEquation(mode)

// def glBlendEquationSeparate(GLenum modeRGB, GLenum modeAlpha):
//     '''See: `glBlendEquationSeparate() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glBlendEquationSeparate.xml>`_
//     '''
//     c_opengl.glBlendEquationSeparate(modeRGB, modeAlpha)

// def glBlendFunc(GLenum sfactor, GLenum dfactor):
//     '''See: `glBlendFunc() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glBlendFunc.xml>`_
//     '''
//     c_opengl.glBlendFunc(sfactor, dfactor)

// def glBlendFuncSeparate(GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha):
//     '''See: `glBlendFuncSeparate() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glBlendFuncSeparate.xml>`_
//     '''
//     c_opengl.glBlendFuncSeparate(srcRGB, dstRGB, srcAlpha, dstAlpha)

// def glBufferData(GLenum target, GLsizeiptr size, bytes data, GLenum usage):
//     '''See: `glBufferData() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glBufferData.xml>`_
//     '''
//     c_opengl.glBufferData(target, size, <char *>data, usage)

// def glBufferSubData(GLenum target, GLintptr offset, GLsizeiptr size, bytes data):
//     '''See: `glBufferSubData() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glBufferSubData.xml>`_
//     '''
//     c_opengl.glBufferSubData(target, offset, size, <char *>data)

// def glCheckFramebufferStatus(GLenum target):
//     '''See: `glCheckFramebufferStatus() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glCheckFramebufferStatus.xml>`_
//     '''
//     cdef GLenum result
//     result = c_opengl.CheckFramebufferStatus(target)
//     return result

// def glClear(GLbitfield mask):
//     '''See: `glClear() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glClear.xml>`_
//     '''
//     c_opengl.glClear(mask)

// def glClearColor(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha):
//     '''See: `glClearColor() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glClearColor.xml>`_
//     '''
//     c_opengl.glClearColor(red, green, blue, alpha)

// # We don't use this syumbol yet, but if we activate it, android platform crash
// # >_<
// #def glClearDepthf(GLclampf depth):
// #    '''See: `glClearDepthf() on Kronos website
// #    <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glClearDepthf.xml>`_
// #    '''
// #    c_opengl.glClearDepthf(depth)

// def glClearStencil(GLint s):
//     '''See: `glClearStencil() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glClearStencil.xml>`_
//     '''
//     c_opengl.glClearStencil(s)

// def glColorMask(GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha):
//     '''See: `glColorMask() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glColorMask.xml>`_
//     '''
//     c_opengl.glColorMask(red, green, blue, alpha)

// def glCompileShader(GLuint shader):
//     '''See: `glCompileShader() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glCompileShader.xml>`_
//     '''
//     c_opengl.glCompileShader(shader)

// def glCompressedTexImage2D(GLenum target, GLint level, GLenum internalformat,
//                            GLsizei width, GLsizei height, GLint border, GLsizei
//                            imageSize,  bytes data):
//     '''See: `glCompressedTexImage2D() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glCompressedTexImage2D.xml>`_
//     '''
//     c_opengl.glCompressedTexImage2D(target, level, internalformat, width,
//                                     height, border, imageSize, <char *>data)

// def glCompressedTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint
//                               yoffset, GLsizei width, GLsizei height, GLenum
//                               format, GLsizei imageSize,  bytes data):
//     '''See: `glCompressedTexSubImage2D() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glCompressedTexSubImage2D.xml>`_
//     '''
//     c_opengl.glCompressedTexSubImage2D(target, level, xoffset, yoffset, width,
//                                        height, format, imageSize, <char *>data)

// def glCopyTexImage2D(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border):
//     '''See: `glCopyTexImage2D() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glCopyTexImage2D.xml>`_
//     '''
//     c_opengl.glCopyTexImage2D(target, level, internalformat, x, y, width, height, border)

// def glCopyTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height):
//     '''See: `glCopyTexSubImage2D() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glCopyTexSubImage2D.xml>`_
//     '''
//     c_opengl.glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height)

// def glCreateProgram():
//     '''See: `glCreateProgram() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glCreateProgram.xml>`_
//     '''
//     cdef GLuint id
//     id = c_opengl.glCreateProgram()
//     return id

// def glCreateShader(GLenum type):
//     '''See: `glCreateShader() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glCreateShader.xml>`_
//     '''
//     cdef GLuint id
//     id = c_opengl.glCreateShader(type)
//     return id

// def glCullFace(GLenum mode):
//     '''See: `glCullFace() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glCullFace.xml>`_
//     '''
//     c_opengl.glCullFace(mode)

// def glDeleteBuffers(GLsizei n, bytes buffers):
//     '''See: `glDeleteBuffers() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glDeleteBuffers.xml>`_
//     '''
//     c_opengl.glDeleteBuffers(n, <GLuint *><char *>buffers)

// def glDeleteFramebuffers(GLsizei n, bytes framebuffers):
//     '''See: `glDeleteFramebuffers() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glDeleteFramebuffers.xml>`_
//     '''
//     c_opengl.glDeleteFramebuffers(n, <GLuint *><char *>framebuffers)

// def glDeleteProgram(GLuint program):
//     '''See: `glDeleteProgram() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glDeleteProgram.xml>`_
//     '''
//     c_opengl.glDeleteProgram(program)

// def glDeleteRenderbuffers(GLsizei n, bytes renderbuffers):
//     '''See: `glDeleteRenderbuffers() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glDeleteRenderbuffers.xml>`_
//     '''
//     c_opengl.glDeleteRenderbuffers(n, <GLuint *><char *>renderbuffers)

// def glDeleteShader(GLuint shader):
//     '''See: `glDeleteShader() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glDeleteShader.xml>`_
//     '''
//     c_opengl.glDeleteShader(shader)

// def glDeleteTextures(GLsizei n, bytes textures):
//     '''See: `glDeleteTextures() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glDeleteTextures.xml>`_
//     '''
//     c_opengl.glDeleteTextures(n, <GLuint *><char *>textures)

// def glDepthFunc(GLenum func):
//     '''See: `glDepthFunc() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glDepthFunc.xml>`_
//     '''
//     c_opengl.glDepthFunc(func)

// def glDepthMask(GLboolean flag):
//     '''See: `glDepthMask() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glDepthMask.xml>`_
//     '''
//     c_opengl.glDepthMask(flag)

// #def glDepthRangef(GLclampf zNear, GLclampf zFar):
// #    '''See: `glDepthRangef() on Kronos website
// #    <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glDepthRangef.xml>`_
// #    '''
// #    c_opengl.glDepthRangef(zNear, zFar)

// def glDetachShader(GLuint program, GLuint shader):
//     '''See: `glDetachShader() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glDetachShader.xml>`_
//     '''
//     c_opengl.glDetachShader(program, shader)

// def glDisable(GLenum cap):
//     '''See: `glDisable() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glDisable.xml>`_
//     '''
//     c_opengl.glDisable(cap)

// def glDisableVertexAttribArray(GLuint index):
//     '''See: `glDisableVertexAttribArray() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glDisableVertexAttribArray.xml>`_
//     '''
//     c_opengl.glDisableVertexAttribArray(index)

// def glDrawArrays(GLenum mode, GLint first, GLsizei count):
//     '''See: `glDrawArrays() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glDrawArrays.xml>`_
//     '''
//     c_opengl.glDrawArrays(mode, first, count)

// def glDrawElements(GLenum mode, GLsizei count, GLenum type, indices):
//     '''See: `glDrawElements() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glDrawElements.xml>`_
//     '''
//     cdef void *ptr = NULL
//     if isinstance(indices, bytes):
//         ptr = <void *>(<char *>(<bytes>indices))
//     elif isinstance(indices, (long, int)):
//         ptr = <void *>(<long>indices)
//     else:
//         raise TypeError("Argument 'indices' has incorrect type (expected bytes or int).")
//     c_opengl.glDrawElements(mode, count, type, ptr)

// def glEnable(GLenum cap):
//     '''See: `glEnable() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glEnable.xml>`_
//     '''
//     c_opengl.glEnable(cap)

// def glEnableVertexAttribArray(GLuint index):
//     '''See: `glEnableVertexAttribArray() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glEnableVertexAttribArray.xml>`_
//     '''
//     c_opengl.glEnableVertexAttribArray(index)

// def glFinish():
//     '''See: `glFinish() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glFinish.xml>`_
//     '''
//     c_opengl.glFinish()

// def glFlush():
//     '''See: `glFlush() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glFlush.xml>`_
//     '''
//     c_opengl.glFlush()

// def glFramebufferRenderbuffer(GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer):
//     '''See: `glFramebufferRenderbuffer() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glFramebufferRenderbuffer.xml>`_
//     '''
//     c_opengl.glFramebufferRenderbuffer(target, attachment, renderbuffertarget, renderbuffer)

// def glFramebufferTexture2D(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level):
//     '''See: `glFramebufferTexture2D() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glFramebufferTexture2D.xml>`_
//     '''
//     c_opengl.glFramebufferTexture2D(target, attachment, textarget, texture, level)

// def glFrontFace(GLenum mode):
//     '''See: `glFrontFace() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glFrontFace.xml>`_
//     '''
//     c_opengl.glFrontFace(mode)

// def glGenBuffers(GLsizei n):
//     '''See: `glGenBuffers() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glGenBuffers.xml>`_

//     Unlike the C specification, the value will be the result of call.
//     '''
//     cdef GLuint *d = _genBegin(n)
//     c_opengl.glGenBuffers(n, d)
//     return _genEnd(n, d)

// def glGenerateMipmap(GLenum target):
//     '''See: `glGenerateMipmap() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glGenerateMipmap.xml>`_
//     '''
//     c_opengl.glGenerateMipmap(target)

// def glGenFramebuffers(GLsizei n):
//     '''See: `glGenFramebuffers() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glGenFramebuffers.xml>`_

//     Unlike the C specification, the value will be the result of call.
//     '''
//     cdef GLuint *d = _genBegin(n)
//     c_opengl.glGenFramebuffers(n, d)
//     return _genEnd(n, d)

// def glGenRenderbuffers(GLsizei n):
//     '''See: `glGenRenderbuffers() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glGenRenderbuffers.xml>`_

//     Unlike the C specification, the value will be the result of call.
//     '''
//     cdef GLuint *d = _genBegin(n)
//     c_opengl.glGenRenderbuffers(n, d)
//     return _genEnd(n, d)

// def glGenTextures(GLsizei n):
//     '''See: `glGenTextures() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glGenTextures.xml>`_

//     Unlike the C specification, the value will be the result of call.
//     '''
//     cdef GLuint *d = _genBegin(n)
//     c_opengl.glGenTextures(n, d)
//     return _genEnd(n, d)

// def glGetActiveAttrib(GLuint program, GLuint index):
//     '''See: `glGetActiveAttrib() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glGetActiveAttrib.xml>`_

//     Unlike the C specification, the value will be the result of call.
//     '''
//     cdef GLint size = 0
//     cdef GLenum gl_type = 0
//     cdef GLchar *name
//     cdef bytes p_name
//     name = <GLchar *>malloc(sizeof(GLchar) * 255)
//     if name == NULL:
//         raise MemoryError('glGetActiveAttrib()')
//     c_opengl.glGetActiveAttrib(program, index, 255, NULL, &size, &gl_type, name)
//     p_name = <char *>name
//     free(name)
//     return p_name, size, gl_type

// def glGetActiveUniform(GLuint program, GLuint index):
//     '''See: `glGetActiveUniform() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glGetActiveUniform.xml>`_

//     Unlike the C specification, the value will be the result of call.
//     '''
//     cdef GLint size = 0
//     cdef GLenum gl_type = 0
//     cdef GLchar *name
//     cdef bytes p_name
//     name = <GLchar *>malloc(sizeof(GLchar) * 255)
//     if name == NULL:
//         raise MemoryError('glGetActiveUniform()')
//     c_opengl.glGetActiveUniform(program, index, 255, NULL, &size, &gl_type, name)
//     p_name = <char *>name
//     free(name)
//     return p_name, size, gl_type

// def glGetAttachedShaders(GLuint program, GLsizei maxcount):
//     '''See: `glGetAttachedShaders() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glGetAttachedShaders.xml>`_

//     Unlike the C specification, the value will be the result of call.
//     '''
//     cdef GLsizei count = 1024
//     cdef GLuint *shaders = _genBegin(count)
//     c_opengl.glGetAttachedShaders(program, count, &count, shaders)
//     return _genEnd(count, shaders)

// def glGetAttribLocation(GLuint program,  bytes name):
//     '''See: `glGetAttribLocation() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glGetAttribLocation.xml>`_

//     Unlike the C specification, the value will be the result of call.
//     '''
//     return c_opengl.glGetAttribLocation(program, <char *>name)

// def glGetBooleanv(GLenum pname):
//     '''See: `glGetBooleanv() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glGetBooleanv.xml>`_

//     Unlike the C specification, the value will be the result of call.
//     '''
//     cdef GLboolean *params = <GLboolean *>malloc(_GL_GET_SIZE[pname] * sizeof(GLboolean))
//     if params == NULL:
//         raise MemoryError('glGetBooleanv()')
//     c_opengl.glGetBooleanv(pname, params)
//     cdef out = [params[i] for i in xrange(_GL_GET_SIZE[pname])]
//     free(params)
//     return out

// def glGetBufferParameteriv(GLenum target, GLenum pname):
//     '''See: `glGetBufferParameteriv() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glGetBufferParameteriv.xml>`_

//     Unlike the C specification, the value will be the result of call.
//     '''
//     cdef GLint *params = <GLint *>malloc(_GL_GET_SIZE[pname] * sizeof(GLint))
//     if params == NULL:
//         raise MemoryError('glGetBufferParameteriv()')
//     c_opengl.glGetBufferParameteriv(target, pname, params)
//     cdef out = [params[i] for i in xrange(_GL_GET_SIZE[pname])]
//     free(params)
//     return out

// def glGetError():
//     '''See: `glGetError() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glGetError.xml>`_

//     Unlike the C specification, the value will be the result of call.
//     '''
//     return c_opengl.glGetError()

// def glGetFloatv(GLenum pname):
//     '''See: `glGetFloatv() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glGetFloatv.xml>`_

//     Unlike the C specification, the value will be the result of call.
//     '''
//     cdef GLfloat *params = <GLfloat *>malloc(_GL_GET_SIZE[pname] * sizeof(GLfloat))
//     if params == NULL:
//         raise MemoryError('glGetFloatv()')
//     c_opengl.glGetFloatv(pname, params)
//     cdef out = [params[i] for i in xrange(_GL_GET_SIZE[pname])]
//     free(params)
//     return out

// def glGetFramebufferAttachmentParameteriv(GLenum target, GLenum attachment, GLenum pname):
//     '''See: `glGetFramebufferAttachmentParameteriv() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glGetFramebufferAttachmentParameteriv.xml>`_

//     Unlike the C specification, the value will be the result of call.
//     '''
//     cdef GLint *params = <GLint *>malloc(_GL_GET_SIZE[pname] * sizeof(GLint))
//     if params == NULL:
//         raise MemoryError('glGetFramebufferAttachmentParameteriv()')
//     c_opengl.glGetFramebufferAttachmentParameteriv(target, attachment, pname, params)
//     cdef out = [params[i] for i in xrange(_GL_GET_SIZE[pname])]
//     free(params)
//     return out

// def glGetIntegerv(GLenum pname):
//     '''See: `glGetIntegerv() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glGetIntegerv.xml>`_

//     Unlike the C specification, the value(s) will be the result of the call
//     '''
//     cdef GLint *params = <GLint *>malloc(_GL_GET_SIZE[pname] * sizeof(GLint))
//     if params == NULL:
//         raise MemoryError('glGetIntegerv()')
//     c_opengl.glGetIntegerv(pname, params)
//     cdef out = [params[i] for i in xrange(_GL_GET_SIZE[pname])]
//     free(params)
//     return out

// def glGetProgramiv(GLuint program, GLenum pname):
//     '''See: `glGetProgramiv() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glGetProgramiv.xml>`_

//     Unlike the C specification, the value(s) will be the result of the call
//     '''
//     cdef GLint params = 0
//     c_opengl.glGetProgramiv(program, pname, &params)
//     return params

// def glGetProgramInfoLog(GLuint program, GLsizei bufsize):
//     '''See: `glGetProgramInfoLog() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glGetProgramInfoLog.xml>`_

//     Unlike the C specification, the source code will be returned as a string.
//     '''
//     cdef GLint size = 0
//     cdef GLchar *infolog
//     cdef bytes p_infolog
//     infolog = <GLchar *>malloc(sizeof(GLchar) * 2048)
//     if infolog == NULL:
//         raise MemoryError('glGetProgramInfoLog()')
//     c_opengl.glGetProgramInfoLog(program, 2048, &size, infolog)
//     p_infolog = <char *>infolog
//     free(infolog)
//     return p_infolog

// def glGetRenderbufferParameteriv(GLenum target, GLenum pname):
//     '''See: `glGetRenderbufferParameteriv() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glGetRenderbufferParameteriv.xml>`_

//     Unlike the C specification, the value will be the result of call.
//     '''
//     cdef GLint params = 0
//     c_opengl.glGetRenderbufferParameteriv(target, pname, &params)
//     return params

// def glGetShaderiv(GLuint shader, GLenum pname):
//     '''See: `glGetShaderiv() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glGetShaderiv.xml>`_

//     Unlike the C specification, the value will be the result of call.
//     '''
//     cdef GLint params = 0
//     c_opengl.glGetShaderiv(shader, pname, &params)
//     return params

// def glGetShaderInfoLog(GLuint shader, GLsizei bufsize):
//     '''See: `glGetShaderInfoLog() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glGetShaderInfoLog.xml>`_

//     Unlike the C specification, the source code will be returned as a string.
//     '''
//     cdef GLint size = 0
//     cdef GLchar *infolog
//     cdef bytes p_infolog
//     infolog = <GLchar *>malloc(sizeof(GLchar) * 2048)
//     if infolog == NULL:
//         raise MemoryError('glGetShaderInfoLog()')
//     c_opengl.glGetShaderInfoLog(shader, 2048, &size, infolog)
//     p_infolog = <char *>infolog
//     free(infolog)
//     return p_infolog

// def glGetShaderPrecisionFormat(GLenum shadertype, GLenum precisiontype): #, GLint* range, GLint* precision):
//     '''See: `glGetShaderPrecisionFormat() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glGetShaderPrecisionFormat.xml>`_

//     .. warning:: Not implemented yet.
//     '''
//     raise NotImplemented()
//     #c_opengl.glGetShaderPrecisionFormat(shadertype, precisiontype, range, precision)

// def glGetShaderSource(GLuint shader):
//     '''See: `glGetShaderSource() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glGetShaderSource.xml>`_

//     Unlike the C specification, the source code will be returned as a string.
//     '''
//     cdef GLint size = 0
//     cdef GLchar *source
//     cdef bytes p_source
//     source = <GLchar *>malloc(sizeof(GLchar) * 65535)
//     if source == NULL:
//         raise MemoryError('glGetShaderInfoLog()')
//     c_opengl.glGetShaderSource(shader, 65535, &size, source)
//     p_source = <char *>source
//     free(source)
//     return p_source

// def glGetString(GLenum name):
//     '''See: `glGetString() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glGetString.xml>`_

//     Unlike the C specification, the value will be returned as a string.
//     '''
//     cdef bytes p_string
//     p_string = <char *>c_opengl.glGetString(name)
//     return p_string

// def glGetTexParameterfv(GLenum target, GLenum pname):
//     '''See: `glGetTexParameterfv() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glGetTexParameterfv.xml>`_
//     '''
//     cdef GLfloat params = 0
//     c_opengl.glGetTexParameterfv(target, pname, &params)
//     return params

// def glGetTexParameteriv(GLenum target, GLenum pname):
//     '''See: `glGetTexParameteriv() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glGetTexParameteriv.xml>`_
//     '''
//     cdef GLint params = 0
//     c_opengl.glGetTexParameteriv(target, pname, &params)
//     return params

// def glGetUniformfv(GLuint program, GLint location):
//     '''See: `glGetUniformfv() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glGetUniformfv.xml>`_
//     '''
//     cdef GLfloat params = 0
//     c_opengl.glGetUniformfv(program, location, &params)
//     return params

// def glGetUniformiv(GLuint program, GLint location):
//     '''See: `glGetUniformiv() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glGetUniformiv.xml>`_
//     '''
//     cdef GLint params = 0
//     c_opengl.glGetUniformiv(program, location, &params)
//     return params

// def glGetUniformLocation(GLuint program, bytes name):
//     '''See: `glGetUniformLocation() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glGetUniformLocation.xml>`_
//     '''
//     return c_opengl.glGetUniformLocation(program, <char *>name)

// def glGetVertexAttribfv(GLuint index, GLenum pname):
//     '''See: `glGetVertexAttribfv() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glGetVertexAttribfv.xml>`_
//     '''
//     cdef GLfloat params = 0
//     c_opengl.glGetVertexAttribfv(index, pname, &params)
//     return params

// def glGetVertexAttribiv(GLuint index, GLenum pname):
//     '''See: `glGetVertexAttribiv() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glGetVertexAttribiv.xml>`_
//     '''
//     cdef GLint params = 0
//     c_opengl.glGetVertexAttribiv(index, pname, &params)
//     return params

// def glGetVertexAttribPointerv(GLuint index, GLenum pname):#, GLvoid** pointer):
//     '''See: `glGetVertexAttribPointerv() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glGetVertexAttribPointerv.xml>`_

//     .. warning:: Not implemented yet.
//     '''
//     raise NotImplemented()
//     #c_opengl.glGetVertexAttribPointerv(index, pname, pointer)

// def glHint(GLenum target, GLenum mode):
//     '''See: `glHint() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glHint.xml>`_
//     '''
//     c_opengl.glHint(target, mode)

// def glIsBuffer(GLuint buffer):
//     '''See: `glIsBuffer() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glIsBuffer.xml>`_
//     '''
//     return c_opengl.glIsBuffer(buffer)

// def glIsEnabled(GLenum cap):
//     '''See: `glIsEnabled() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glIsEnabled.xml>`_
//     '''
//     return c_opengl.glIsEnabled(cap)

// def glIsFramebuffer(GLuint framebuffer):
//     '''See: `glIsFramebuffer() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glIsFramebuffer.xml>`_
//     '''
//     return c_opengl.glIsFramebuffer(framebuffer)

// def glIsProgram(GLuint program):
//     '''See: `glIsProgram() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glIsProgram.xml>`_
//     '''
//     return c_opengl.glIsProgram(program)

// def glIsRenderbuffer(GLuint renderbuffer):
//     '''See: `glIsRenderbuffer() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glIsRenderbuffer.xml>`_
//     '''
//     return c_opengl.glIsRenderbuffer(renderbuffer)

// def glIsShader(GLuint shader):
//     '''See: `glIsShader() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glIsShader.xml>`_
//     '''
//     return c_opengl.glIsShader(shader)

// def glIsTexture(GLuint texture):
//     '''See: `glIsTexture() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glIsTexture.xml>`_
//     '''
//     return c_opengl.glIsTexture(texture)

// def glLineWidth(GLfloat width):
//     '''See: `glLineWidth() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glLineWidth.xml>`_
//     '''
//     c_opengl.glLineWidth(width)

// def glLinkProgram(GLuint program):
//     '''See: `glLinkProgram() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glLinkProgram.xml>`_
//     '''
//     c_opengl.glLinkProgram(program)

// def glPixelStorei(GLenum pname, GLint param):
//     '''See: `glPixelStorei() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glPixelStorei.xml>`_
//     '''
//     c_opengl.glPixelStorei(pname, param)

// def glPolygonOffset(GLfloat factor, GLfloat units):
//     '''See: `glPolygonOffset() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glPolygonOffset.xml>`_
//     '''
//     c_opengl.glPolygonOffset(factor, units)

// def glReadPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format,
//                  GLenum type): #, GLvoid* pixels):
//     '''See: `glReadPixels() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glReadPixels.xml>`_

//     We support only GL_RGB/GL_RGBA as a format and GL_UNSIGNED_BYTE as a
//     type.
//     '''
//     assert(format in (GL_RGB, GL_RGBA))
//     assert(type == GL_UNSIGNED_BYTE)

//     cdef object py_pixels = None
//     cdef long size
//     cdef char *data

//     size = width * height * sizeof(GLubyte)
//     if format == GL_RGB:
//         size *= 3
//     else:
//         size *= 4
//     data = <char *>malloc(size)
//     if data == NULL:
//         raise MemoryError('glReadPixels()')

//     c_opengl.glPixelStorei(GL_PACK_ALIGNMENT, 1)
//     c_opengl.glReadPixels(x, y, width, height, format, type, data)
//     try:
//         py_pixels = data[:size]
//     finally:
//         free(data)

//     return py_pixels

// # XXX This one is commented out because a) it's not necessary and
// #             b) it's breaking on OSX for some reason
// def glReleaseShaderCompiler():
//     '''See: `glReleaseShaderCompiler() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glReleaseShaderCompiler.xml>`_

//     .. warning:: Not implemented yet.
//     '''
//     raise NotImplemented()
// #    c_opengl.glReleaseShaderCompiler()

// def glRenderbufferStorage(GLenum target, GLenum internalformat, GLsizei width, GLsizei height):
//     '''See: `glRenderbufferStorage() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glRenderbufferStorage.xml>`_
//     '''
//     c_opengl.glRenderbufferStorage(target, internalformat, width, height)

// def glSampleCoverage(GLclampf value, GLboolean invert):
//     '''See: `glSampleCoverage() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glSampleCoverage.xml>`_
//     '''
//     c_opengl.glSampleCoverage(value, invert)

// def glScissor(GLint x, GLint y, GLsizei width, GLsizei height):
//     '''See: `glScissor() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glScissor.xml>`_
//     '''
//     c_opengl.glScissor(x, y, width, height)

// def glShaderBinary():#GLsizei n,  GLuint* shaders, GLenum binaryformat,  bytes GLvoid* binary, GLsizei length):
//     '''See: `glShaderBinary() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glShaderBinary.xml>`_

//     .. warning:: Not implemented yet.
//     '''
//     #c_opengl.glShaderBinary(n, shaders, binaryformat, binary, length)
//     raise NotImplemented()

// def glShaderSource(GLuint shader, bytes source):
//     '''See: `glShaderSource() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glShaderSource.xml>`_
//     '''
//     cdef const_char_ptr c_source = <const_char_ptr>source
//     c_opengl.glShaderSource(shader, 1, &c_source, NULL)

// def glStencilFunc(GLenum func, GLint ref, GLuint mask):
//     '''See: `glStencilFunc() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glStencilFunc.xml>`_
//     '''
//     c_opengl.glStencilFunc(func, ref, mask)

// def glStencilFuncSeparate(GLenum face, GLenum func, GLint ref, GLuint mask):
//     '''See: `glStencilFuncSeparate() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glStencilFuncSeparate.xml>`_
//     '''
//     c_opengl.glStencilFuncSeparate(face, func, ref, mask)

// def glStencilMask(GLuint mask):
//     '''See: `glStencilMask() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glStencilMask.xml>`_
//     '''
//     c_opengl.glStencilMask(mask)

// def glStencilMaskSeparate(GLenum face, GLuint mask):
//     '''See: `glStencilMaskSeparate() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glStencilMaskSeparate.xml>`_
//     '''
//     c_opengl.glStencilMaskSeparate(face, mask)

// def glStencilOp(GLenum fail, GLenum zfail, GLenum zpass):
//     '''See: `glStencilOp() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glStencilOp.xml>`_
//     '''
//     c_opengl.glStencilOp(fail, zfail, zpass)

// def glStencilOpSeparate(GLenum face, GLenum fail, GLenum zfail, GLenum zpass):
//     '''See: `glStencilOpSeparate() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glStencilOpSeparate.xml>`_
//     '''
//     c_opengl.glStencilOpSeparate(face, fail, zfail, zpass)

// def glTexImage2D(GLenum target, GLint level, GLint internalformat, GLsizei
//                  width, GLsizei height, GLint border, GLenum format, GLenum
//                  type,  bytes pixels):
//     '''See: `glTexImage2D() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glTexImage2D.xml>`_
//     '''
//     c_opengl.glTexImage2D(target, level, internalformat, width, height, border,
//                           format, type, <GLvoid *><char *>pixels)

// def glTexParameterf(GLenum target, GLenum pname, GLfloat param):
//     '''See: `glTexParameterf() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glTexParameterf.xml>`_
//     '''
//     c_opengl.glTexParameterf(target, pname, param)

// def glTexParameterfv(GLenum target, GLenum pname):#,  GLfloat* params):
//     '''See: `glTexParameterfv() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glTexParameterfv.xml>`_

//     .. warning:: Not implemented yet.
//     '''
//     #c_opengl.glTexParameterfv(target, pname, params)
//     raise NotImplemented()

// def glTexParameteri(GLenum target, GLenum pname, GLint param):
//     '''See: `glTexParameteri() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glTexParameteri.xml>`_
//     '''
//     c_opengl.glTexParameteri(target, pname, param)

// def glTexParameteriv(GLenum target, GLenum pname):#,  GLint* params):
//     '''See: `glTexParameteriv() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glTexParameteriv.xml>`_

//     .. warning:: Not implemented yet.
//     '''
//     #c_opengl.glTexParameteriv(target, pname, params)
//     raise NotImplemented()

// def glTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset,
//                     GLsizei width, GLsizei height, GLenum format, GLenum type,
//                     bytes pixels):
//     '''See: `glTexSubImage2D() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glTexSubImage2D.xml>`_
//     '''
//     c_opengl.glTexSubImage2D(target, level, xoffset, yoffset, width, height,
//                              format, type, <GLvoid *><char *>pixels)

// def glUniform1f(GLint location, GLfloat x):
//     '''See: `glUniform1f() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glUniform1f.xml>`_
//     '''
//     c_opengl.glUniform1f(location, x)

// def glUniform1fv(GLint location, GLsizei count):#,  GLfloat* v):
//     '''See: `glUniform1fv() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glUniform1fv.xml>`_

//     .. warning:: Not implemented yet.
//     '''
//     #c_opengl.glUniform1fv(location, count, v)
//     raise NotImplemented()

// def glUniform1i(GLint location, GLint x):
//     '''See: `glUniform1i() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glUniform1i.xml>`_
//     '''
//     c_opengl.glUniform1i(location, x)

// def glUniform1iv(GLint location, GLsizei count):#,  GLint* v):
//     '''See: `glUniform1iv() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glUniform1iv.xml>`_

//     .. warning:: Not implemented yet.
//     '''
//     #c_opengl.glUniform1iv(location, count, v)
//     raise NotImplemented()

// def glUniform2f(GLint location, GLfloat x, GLfloat y):
//     '''See: `glUniform2f() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glUniform2f.xml>`_
//     '''
//     c_opengl.glUniform2f(location, x, y)

// def glUniform2fv(GLint location, GLsizei count):#,  GLfloat* v):
//     '''See: `glUniform2fv() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glUniform2fv.xml>`_

//     .. warning:: Not implemented yet.
//     '''
//     #c_opengl.glUniform2fv(location, count, v)
//     raise NotImplemented()

// def glUniform2i(GLint location, GLint x, GLint y):
//     '''See: `glUniform2i() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glUniform2i.xml>`_
//     '''
//     c_opengl.glUniform2i(location, x, y)

// def glUniform2iv(GLint location, GLsizei count):#,  GLint* v):
//     '''See: `glUniform2iv() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glUniform2iv.xml>`_

//     .. warning:: Not implemented yet.
//     '''
//     #c_opengl.glUniform2iv(location, count, v)
//     raise NotImplemented()

// def glUniform3f(GLint location, GLfloat x, GLfloat y, GLfloat z):
//     '''See: `glUniform3f() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glUniform3f.xml>`_
//     '''
//     c_opengl.glUniform3f(location, x, y, z)

// def glUniform3fv(GLint location, GLsizei count):#,  GLfloat* v):
//     '''See: `glUniform3fv() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glUniform3fv.xml>`_

//     .. warning:: Not implemented yet.
//     '''
//     #c_opengl.glUniform3fv(location, count, v)
//     raise NotImplemented()

// def glUniform3i(GLint location, GLint x, GLint y, GLint z):
//     '''See: `glUniform3i() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glUniform3i.xml>`_
//     '''
//     c_opengl.glUniform3i(location, x, y, z)

// def glUniform3iv(GLint location, GLsizei count):#,  GLint* v):
//     '''See: `glUniform3iv() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glUniform3iv.xml>`_

//     .. warning:: Not implemented yet.
//     '''
//     #c_opengl.glUniform3iv(location, count, v)
//     raise NotImplemented()

// def glUniform4f(GLint location, GLfloat x, GLfloat y, GLfloat z, GLfloat w):
//     '''See: `glUniform4f() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glUniform4f.xml>`_

//     .. warning:: Not implemented yet.
//     '''
//     c_opengl.glUniform4f(location, x, y, z, w)

// def glUniform4fv(GLint location, GLsizei count):#,  GLfloat* v):
//     '''See: `glUniform4fv() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glUniform4fv.xml>`_

//     .. warning:: Not implemented yet.
//     '''
//     #c_opengl.glUniform4fv(location, count, v)
//     raise NotImplemented()

// def glUniform4i(GLint location, GLint x, GLint y, GLint z, GLint w):
//     '''See: `glUniform4i() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glUniform4i.xml>`_
//     '''
//     c_opengl.glUniform4i(location, x, y, z, w)

// def glUniform4iv(GLint location, GLsizei count):#,  GLint* v):
//     '''See: `glUniform4iv() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glUniform4iv.xml>`_

//     .. warning:: Not implemented yet.
//     '''
//     #c_opengl.glUniform4iv(location, count, v)
//     raise NotImplemented()

// def glUniformMatrix2fv(GLint location, GLsizei count):#, GLboolean transpose, bytes values):
//     '''See: `glUniformMatrix2fv() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glUniformMatrix2fv.xml>`_

//     .. warning:: Not implemented yet.
//     '''
//     #c_opengl.glUniformMatrix2fv(location, count, transpose, <GLfloat*>ptr_value)
//     raise NotImplemented()

// def glUniformMatrix3fv(GLint location, GLsizei count):#, GLboolean transpose,  bytes values):
//     '''See: `glUniformMatrix3fv() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glUniformMatrix3fv.xml>`_

//     .. warning:: Not implemented yet.
//     '''
//     # c_opengl.glUniformMatrix3fv(location, count, transpose, <GLfloat*>ptr_value)
//     raise NotImplemented()

// def glUniformMatrix4fv(GLint location, GLsizei count, GLboolean transpose,  bytes value):
//     '''See: `glUniformMatrix4fv() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glUniformMatrix4fv.xml>`_
//     '''
//     c_opengl.glUniformMatrix4fv(location, count, transpose, <GLfloat*>(<char *>value))

// def glUseProgram(GLuint program):
//     '''See: `glUseProgram() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glUseProgram.xml>`_
//     '''
//     c_opengl.glUseProgram(program)

// def glValidateProgram(GLuint program):
//     '''See: `glValidateProgram() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glValidateProgram.xml>`_
//     '''
//     c_opengl.glValidateProgram(program)

// def glVertexAttrib1f(GLuint indx, GLfloat x):
//     '''See: `glVertexAttrib1f() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glVertexAttrib1f.xml>`_
//     '''
//     c_opengl.glVertexAttrib1f(indx, x)

// def glVertexAttrib1fv(GLuint indx, list values):
//     '''See: `glVertexAttrib1fv() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glVertexAttrib1fv.xml>`_

//     .. warning:: Not implemented yet.
//     '''
//     #c_opengl.glVertexAttrib1fv(indx, values)
//     raise NotImplemented()

// def glVertexAttrib2f(GLuint indx, GLfloat x, GLfloat y):
//     '''See: `glVertexAttrib2f() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glVertexAttrib2f.xml>`_
//     '''
//     c_opengl.glVertexAttrib2f(indx, x, y)

// def glVertexAttrib2fv(GLuint indx, list values):
//     '''See: `glVertexAttrib2fv() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glVertexAttrib2fv.xml>`_

//     .. warning:: Not implemented yet.
//     '''
//     #c_opengl.glVertexAttrib2fv(indx, values)
//     raise NotImplemented()

// def glVertexAttrib3f(GLuint indx, GLfloat x, GLfloat y, GLfloat z):
//     '''See: `glVertexAttrib3f() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glVertexAttrib3f.xml>`_
//     '''
//     c_opengl.glVertexAttrib3f(indx, x, y, z)

// def glVertexAttrib3fv(GLuint indx, list values):
//     '''See: `glVertexAttrib3fv() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glVertexAttrib3fv.xml>`_

//     .. warning:: Not implemented yet.
//     '''
//     #c_opengl.glVertexAttrib3fv(indx, values)
//     raise NotImplemented()

// def glVertexAttrib4f(GLuint indx, GLfloat x, GLfloat y, GLfloat z, GLfloat w):
//     '''See: `glVertexAttrib4f() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glVertexAttrib4f.xml>`_
//     '''
//     c_opengl.glVertexAttrib4f(indx, x, y, z, w)

// def glVertexAttrib4fv(GLuint indx, list values):
//     '''See: `glVertexAttrib4fv() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glVertexAttrib4fv.xml>`_

//     .. warning:: Not implemented yet.
//     '''
//     #c_opengl.glVertexAttrib4fv(indx, values)
//     raise NotImplemented()

// def glVertexAttribPointer(GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, data):
//     '''See: `glVertexAttribPointer() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glVertexAttribPointer.xml>`_

//     '''
//     cdef void *ptr = NULL
//     if isinstance(data, bytes):
//         ptr = <void *>(<char *>(<bytes>data))
//     elif isinstance(data, (long, int)):
//         ptr = <void *>(<long>data)
//     else:
//         raise TypeError("Argument 'data' has incorrect type (expected bytes or int).")
//     c_opengl.glVertexAttribPointer(index, size, type, normalized, stride, ptr)

// def glViewport(GLint x, GLint y, GLsizei width, GLsizei height):
//     '''See: `glViewport() on Kronos website
//     <http://www.khronos.org/opengles/sdk/docs/man/xhtml/glViewport.xml>`_
//     '''
//     c_opengl.glViewport(x, y, width, height)

// IF USE_GLEW:
//     cdef extern from "gl_redirect.h":
//         int glewInit()
//         int GLEW_OK
//         char *glewGetErrorString(int)
//         void glew_dynamic_binding()
//     def gl_init_symbols():
//         cdef int result
//         cdef bytes error
//         result = glewInit()
//         if result != GLEW_OK:
//             error = glewGetErrorString(result)
//             Logger.error('GL: GLEW initialization error {}'.format(error))
//         else:
//             Logger.info('GL: GLEW initialization succeeded')
//         glew_dynamic_binding()

// ELSE:
//     def gl_init_symbols():
//         pass
