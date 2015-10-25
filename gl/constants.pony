// Copyright 2014 pyros0928.  All rights reserved.
// Use of this source code is governed by a MIT
// license that can be found in the LICENSE file.

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
primitive Int                                         fun apply(): U16 => 0x1404
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
