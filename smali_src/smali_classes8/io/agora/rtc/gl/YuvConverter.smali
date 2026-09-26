.class public Lio/agora/rtc/gl/YuvConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEVICE_RECTANGLE:Ljava/nio/FloatBuffer;

.field private static final OES_FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES tex;\nuniform vec2 xUnit;\nuniform vec4 coeffs;\n\nvoid main() {\n  gl_FragColor.r = coeffs.a + dot(coeffs.rgb,\n      texture2D(tex, interp_tc - 1.5 * xUnit).rgb);\n  gl_FragColor.g = coeffs.a + dot(coeffs.rgb,\n      texture2D(tex, interp_tc - 0.5 * xUnit).rgb);\n  gl_FragColor.b = coeffs.a + dot(coeffs.rgb,\n      texture2D(tex, interp_tc + 0.5 * xUnit).rgb);\n  gl_FragColor.a = coeffs.a + dot(coeffs.rgb,\n      texture2D(tex, interp_tc + 1.5 * xUnit).rgb);\n}\n"

.field private static final RGB_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D tex;\nuniform vec2 xUnit;\nuniform vec4 coeffs;\n\nvoid main() {\n  gl_FragColor.r = coeffs.a + dot(coeffs.rgb,\n      texture2D(tex, interp_tc - 1.5 * xUnit).rgb);\n  gl_FragColor.g = coeffs.a + dot(coeffs.rgb,\n      texture2D(tex, interp_tc - 0.5 * xUnit).rgb);\n  gl_FragColor.b = coeffs.a + dot(coeffs.rgb,\n      texture2D(tex, interp_tc + 0.5 * xUnit).rgb);\n  gl_FragColor.a = coeffs.a + dot(coeffs.rgb,\n      texture2D(tex, interp_tc + 1.5 * xUnit).rgb);\n}\n"

.field private static final TEXTURE_RECTANGLE:Ljava/nio/FloatBuffer;

.field private static final VERTEX_SHADER:Ljava/lang/String; = "varying vec2 interp_tc;\nattribute vec4 in_pos;\nattribute vec4 in_tc;\n\nuniform mat4 texMatrix;\n\nvoid main() {\n    gl_Position = in_pos;\n    interp_tc = (texMatrix * in_tc).xy;\n}\n"


# instance fields
.field private coeffsLoc:I

.field private released:Z

.field private shader:Lio/agora/rtc/gl/GlShader;

.field private shaderTextureType:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

.field private texMatrixLoc:I

.field private final textureFrameBuffer:Lio/agora/rtc/gl/GlTextureFrameBuffer;

.field private final threadChecker:Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;

.field private xUnitLoc:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    .line 4
    new-array v1, v0, [F

    .line 5
    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lio/agora/rtc/gl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    sput-object v1, Lio/agora/rtc/gl/YuvConverter;->DEVICE_RECTANGLE:Ljava/nio/FloatBuffer;

    .line 14
    .line 15
    new-array v0, v0, [F

    .line 16
    .line 17
    .line 18
    fill-array-data v0, :array_1

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lio/agora/rtc/gl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    sput-object v0, Lio/agora/rtc/gl/YuvConverter;->TEXTURE_RECTANGLE:Ljava/nio/FloatBuffer;

    .line 25
    return-void

    .line 26
    nop

    .line 27
    .line 28
    .line 29
    .line 30
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lio/agora/rtc/gl/YuvConverter;->threadChecker:Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    iput-boolean v1, p0, Lio/agora/rtc/gl/YuvConverter;->released:Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 17
    .line 18
    new-instance v0, Lio/agora/rtc/gl/GlTextureFrameBuffer;

    .line 19
    .line 20
    const/16 v1, 0x1908

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Lio/agora/rtc/gl/GlTextureFrameBuffer;-><init>(I)V

    .line 24
    .line 25
    iput-object v0, p0, Lio/agora/rtc/gl/YuvConverter;->textureFrameBuffer:Lio/agora/rtc/gl/GlTextureFrameBuffer;

    .line 26
    return-void
.end method

.method private convert(Ljava/nio/ByteBuffer;IIII[FLio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "width",
            "height",
            "stride",
            "srcTextureId",
            "transformMatrix",
            "textureType"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p7

    iget-object v5, v0, Lio/agora/rtc/gl/YuvConverter;->threadChecker:Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;

    .line 22
    invoke-virtual {v5}, Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    iget-boolean v5, v0, Lio/agora/rtc/gl/YuvConverter;->released:Z

    if-nez v5, :cond_4

    iget-object v5, v0, Lio/agora/rtc/gl/YuvConverter;->shaderTextureType:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    if-eq v4, v5, :cond_0

    .line 23
    invoke-direct {v0, v4}, Lio/agora/rtc/gl/YuvConverter;->initShader(Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;)V

    :cond_0
    iget-object v5, v0, Lio/agora/rtc/gl/YuvConverter;->shader:Lio/agora/rtc/gl/GlShader;

    .line 24
    invoke-virtual {v5}, Lio/agora/rtc/gl/GlShader;->useProgram()V

    .line 25
    rem-int/lit8 v5, v3, 0x8

    if-nez v5, :cond_3

    if-lt v3, v1, :cond_2

    add-int/lit8 v5, v1, 0x3

    const/4 v6, 0x4

    .line 26
    div-int/2addr v5, v6

    add-int/lit8 v7, v1, 0x7

    .line 27
    div-int/lit8 v7, v7, 0x8

    add-int/lit8 v8, v2, 0x1

    .line 28
    div-int/lit8 v8, v8, 0x2

    add-int v12, v2, v8

    mul-int v9, v3, v12

    .line 29
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->capacity()I

    move-result v10

    if-lt v10, v9, :cond_1

    .line 30
    invoke-static {}, Lio/agora/rtc/gl/RendererCommon;->verticalFlipMatrix()[F

    move-result-object v9

    move-object/from16 v10, p6

    invoke-static {v10, v9}, Lio/agora/rtc/gl/RendererCommon;->multiplyMatrices([F[F)[F

    move-result-object v9

    .line 31
    div-int/lit8 v11, v3, 0x4

    iget-object v10, v0, Lio/agora/rtc/gl/YuvConverter;->textureFrameBuffer:Lio/agora/rtc/gl/GlTextureFrameBuffer;

    .line 32
    invoke-virtual {v10, v11, v12}, Lio/agora/rtc/gl/GlTextureFrameBuffer;->setSize(II)V

    iget-object v10, v0, Lio/agora/rtc/gl/YuvConverter;->textureFrameBuffer:Lio/agora/rtc/gl/GlTextureFrameBuffer;

    .line 33
    invoke-virtual {v10}, Lio/agora/rtc/gl/GlTextureFrameBuffer;->getFrameBufferId()I

    move-result v10

    const v15, 0x8d40

    invoke-static {v15, v10}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const-string v10, "glBindFramebuffer"

    .line 34
    invoke-static {v10}, Lio/agora/rtc/gl/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    const v10, 0x84c0

    .line 35
    invoke-static {v10}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 36
    invoke-virtual/range {p7 .. p7}, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;->getGlTarget()I

    move-result v10

    move/from16 v13, p5

    invoke-static {v10, v13}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v10, v0, Lio/agora/rtc/gl/YuvConverter;->texMatrixLoc:I

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 37
    invoke-static {v10, v13, v14, v9, v14}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 38
    invoke-static {v14, v14, v5, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget v5, v0, Lio/agora/rtc/gl/YuvConverter;->xUnitLoc:I

    .line 39
    aget v10, v9, v14

    int-to-float v1, v1

    div-float/2addr v10, v1

    aget v16, v9, v13

    div-float v15, v16, v1

    invoke-static {v5, v10, v15}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v5, v0, Lio/agora/rtc/gl/YuvConverter;->coeffsLoc:I

    const v10, 0x3de978d5    # 0.114f

    const/4 v15, 0x0

    const v13, 0x3e991687    # 0.299f

    const v6, 0x3f1645a2    # 0.587f

    .line 40
    invoke-static {v5, v13, v6, v10, v15}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v5, 0x5

    const/4 v6, 0x4

    .line 41
    invoke-static {v5, v14, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 42
    invoke-static {v14, v2, v7, v8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget v6, v0, Lio/agora/rtc/gl/YuvConverter;->xUnitLoc:I

    .line 43
    aget v10, v9, v14

    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v10, v13

    div-float/2addr v10, v1

    const/4 v15, 0x1

    aget v9, v9, v15

    mul-float/2addr v9, v13

    div-float/2addr v9, v1

    invoke-static {v6, v10, v9}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v1, v0, Lio/agora/rtc/gl/YuvConverter;->coeffsLoc:I

    const v6, -0x41d2f1aa    # -0.169f

    const v9, -0x4156872b    # -0.331f

    const v10, 0x3eff7cee    # 0.499f

    const/high16 v13, 0x3f000000    # 0.5f

    .line 44
    invoke-static {v1, v6, v9, v10, v13}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v1, 0x4

    .line 45
    invoke-static {v5, v14, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 46
    div-int/lit8 v3, v3, 0x8

    invoke-static {v3, v2, v7, v8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget v2, v0, Lio/agora/rtc/gl/YuvConverter;->coeffsLoc:I

    const v3, -0x4129fbe7    # -0.418f

    const v6, -0x42597f63    # -0.0813f

    .line 47
    invoke-static {v2, v10, v3, v6, v13}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 48
    invoke-static {v5, v14, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v13, 0x1908

    const/16 v1, 0x1401

    move v2, v14

    move v14, v1

    const v1, 0x8d40

    move-object/from16 v15, p1

    .line 49
    invoke-static/range {v9 .. v15}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    const-string v3, "YuvConverter.convert"

    .line 50
    invoke-static {v3}, Lio/agora/rtc/gl/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 51
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/16 v1, 0xde1

    .line 52
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 53
    invoke-virtual/range {p7 .. p7}, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;->getGlTarget()I

    move-result v1

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void

    .line 54
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "YuvConverter.convert called with too small buffer"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid stride, must >= width"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid stride, must be a multiple of 8"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "YuvConverter.convert called on released object"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private initShader(Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textureType"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/YuvConverter;->shader:Lio/agora/rtc/gl/GlShader;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lio/agora/rtc/gl/GlShader;->release()V

    .line 8
    .line 9
    :cond_0
    sget-object v0, Lio/agora/rtc/gl/YuvConverter$1;->$SwitchMap$io$agora$rtc$gl$VideoFrame$TextureBuffer$Type:[I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    move-result v1

    .line 14
    .line 15
    aget v0, v0, v1

    .line 16
    const/4 v1, 0x1

    .line 17
    const/4 v2, 0x2

    .line 18
    .line 19
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    if-ne v0, v2, :cond_1

    .line 22
    .line 23
    .line 24
    const-string/jumbo v0, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D tex;\nuniform vec2 xUnit;\nuniform vec4 coeffs;\n\nvoid main() {\n  gl_FragColor.r = coeffs.a + dot(coeffs.rgb,\n      texture2D(tex, interp_tc - 1.5 * xUnit).rgb);\n  gl_FragColor.g = coeffs.a + dot(coeffs.rgb,\n      texture2D(tex, interp_tc - 0.5 * xUnit).rgb);\n  gl_FragColor.b = coeffs.a + dot(coeffs.rgb,\n      texture2D(tex, interp_tc + 0.5 * xUnit).rgb);\n  gl_FragColor.a = coeffs.a + dot(coeffs.rgb,\n      texture2D(tex, interp_tc + 1.5 * xUnit).rgb);\n}\n"

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string v0, "Unsupported texture type."

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p1

    .line 34
    .line 35
    :cond_2
    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES tex;\nuniform vec2 xUnit;\nuniform vec4 coeffs;\n\nvoid main() {\n  gl_FragColor.r = coeffs.a + dot(coeffs.rgb,\n      texture2D(tex, interp_tc - 1.5 * xUnit).rgb);\n  gl_FragColor.g = coeffs.a + dot(coeffs.rgb,\n      texture2D(tex, interp_tc - 0.5 * xUnit).rgb);\n  gl_FragColor.b = coeffs.a + dot(coeffs.rgb,\n      texture2D(tex, interp_tc + 0.5 * xUnit).rgb);\n  gl_FragColor.a = coeffs.a + dot(coeffs.rgb,\n      texture2D(tex, interp_tc + 1.5 * xUnit).rgb);\n}\n"

    .line 36
    .line 37
    :goto_0
    iput-object p1, p0, Lio/agora/rtc/gl/YuvConverter;->shaderTextureType:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    .line 38
    .line 39
    new-instance p1, Lio/agora/rtc/gl/GlShader;

    .line 40
    .line 41
    .line 42
    const-string/jumbo v1, "varying vec2 interp_tc;\nattribute vec4 in_pos;\nattribute vec4 in_tc;\n\nuniform mat4 texMatrix;\n\nvoid main() {\n    gl_Position = in_pos;\n    interp_tc = (texMatrix * in_tc).xy;\n}\n"

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, v1, v0}, Lio/agora/rtc/gl/GlShader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    iput-object p1, p0, Lio/agora/rtc/gl/YuvConverter;->shader:Lio/agora/rtc/gl/GlShader;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lio/agora/rtc/gl/GlShader;->useProgram()V

    .line 51
    .line 52
    iget-object p1, p0, Lio/agora/rtc/gl/YuvConverter;->shader:Lio/agora/rtc/gl/GlShader;

    .line 53
    .line 54
    .line 55
    const-string/jumbo v0, "texMatrix"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    .line 59
    move-result p1

    .line 60
    .line 61
    iput p1, p0, Lio/agora/rtc/gl/YuvConverter;->texMatrixLoc:I

    .line 62
    .line 63
    iget-object p1, p0, Lio/agora/rtc/gl/YuvConverter;->shader:Lio/agora/rtc/gl/GlShader;

    .line 64
    .line 65
    .line 66
    const-string/jumbo v0, "xUnit"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    .line 70
    move-result p1

    .line 71
    .line 72
    iput p1, p0, Lio/agora/rtc/gl/YuvConverter;->xUnitLoc:I

    .line 73
    .line 74
    iget-object p1, p0, Lio/agora/rtc/gl/YuvConverter;->shader:Lio/agora/rtc/gl/GlShader;

    .line 75
    .line 76
    const-string v0, "coeffs"

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    .line 80
    move-result p1

    .line 81
    .line 82
    iput p1, p0, Lio/agora/rtc/gl/YuvConverter;->coeffsLoc:I

    .line 83
    .line 84
    iget-object p1, p0, Lio/agora/rtc/gl/YuvConverter;->shader:Lio/agora/rtc/gl/GlShader;

    .line 85
    .line 86
    .line 87
    const-string/jumbo v0, "tex"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    .line 91
    move-result p1

    .line 92
    const/4 v0, 0x0

    .line 93
    .line 94
    .line 95
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 96
    .line 97
    const-string p1, "Initialize fragment shader uniform values."

    .line 98
    .line 99
    .line 100
    invoke-static {p1}, Lio/agora/rtc/gl/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 101
    .line 102
    iget-object p1, p0, Lio/agora/rtc/gl/YuvConverter;->shader:Lio/agora/rtc/gl/GlShader;

    .line 103
    .line 104
    const-string v0, "in_pos"

    .line 105
    .line 106
    sget-object v1, Lio/agora/rtc/gl/YuvConverter;->DEVICE_RECTANGLE:Ljava/nio/FloatBuffer;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0, v2, v1}, Lio/agora/rtc/gl/GlShader;->setVertexAttribArray(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 110
    .line 111
    iget-object p1, p0, Lio/agora/rtc/gl/YuvConverter;->shader:Lio/agora/rtc/gl/GlShader;

    .line 112
    .line 113
    const-string v0, "in_tc"

    .line 114
    .line 115
    sget-object v1, Lio/agora/rtc/gl/YuvConverter;->TEXTURE_RECTANGLE:Ljava/nio/FloatBuffer;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0, v2, v1}, Lio/agora/rtc/gl/GlShader;->setVertexAttribArray(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 119
    return-void
.end method


# virtual methods
.method public convert(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;)Lio/agora/rtc/gl/VideoFrame$I420Buffer;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textureBuffer"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$Buffer;->getWidth()I

    move-result v8

    .line 2
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$Buffer;->getHeight()I

    move-result v9

    add-int/lit8 v0, v8, 0x7

    .line 3
    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v10, v0, 0x8

    add-int/lit8 v0, v9, 0x1

    .line 4
    div-int/lit8 v11, v0, 0x2

    add-int v0, v9, v11

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v10

    .line 5
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 6
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$TextureBuffer;->getTextureId()I

    move-result v5

    .line 7
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$TextureBuffer;->getTransformMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0}, Lio/agora/rtc/gl/RendererCommon;->convertMatrixFromAndroidGraphicsMatrix(Landroid/graphics/Matrix;)[F

    move-result-object v6

    .line 8
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$TextureBuffer;->getType()Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    move-result-object v7

    move-object v0, p0

    move-object v1, v12

    move v2, v8

    move v3, v9

    move v4, v10

    .line 9
    invoke-direct/range {v0 .. v7}, Lio/agora/rtc/gl/YuvConverter;->convert(Ljava/nio/ByteBuffer;IIII[FLio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;)V

    mul-int p1, v10, v9

    .line 10
    div-int/lit8 v0, v10, 0x2

    add-int/2addr v0, p1

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v12, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    invoke-virtual {v12, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 13
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 14
    invoke-virtual {v12, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    mul-int/2addr v11, v10

    add-int/2addr p1, v11

    .line 15
    invoke-virtual {v12, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 16
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 17
    invoke-virtual {v12, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v0, v11

    .line 18
    invoke-virtual {v12, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 19
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 p1, 0x0

    move v0, v8

    move v1, v9

    move v3, v10

    move v5, v10

    move v7, v10

    move-object v8, p1

    .line 20
    invoke-static/range {v0 .. v8}, Lio/agora/rtc/gl/JavaI420Buffer;->wrap(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)Lio/agora/rtc/gl/JavaI420Buffer;

    move-result-object p1

    return-object p1
.end method

.method convert(Ljava/nio/ByteBuffer;IIII[F)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "width",
            "height",
            "stride",
            "srcTextureId",
            "transformMatrix"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 21
    sget-object v7, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;->OES:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lio/agora/rtc/gl/YuvConverter;->convert(Ljava/nio/ByteBuffer;IIII[FLio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/YuvConverter;->threadChecker:Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Lio/agora/rtc/gl/YuvConverter;->released:Z

    .line 9
    .line 10
    iget-object v0, p0, Lio/agora/rtc/gl/YuvConverter;->shader:Lio/agora/rtc/gl/GlShader;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lio/agora/rtc/gl/GlShader;->release()V

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/gl/YuvConverter;->textureFrameBuffer:Lio/agora/rtc/gl/GlTextureFrameBuffer;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lio/agora/rtc/gl/GlTextureFrameBuffer;->release()V

    .line 21
    return-void
.end method
