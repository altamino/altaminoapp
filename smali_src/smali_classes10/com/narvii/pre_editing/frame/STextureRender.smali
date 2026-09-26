.class Lcom/narvii/pre_editing/frame/STextureRender;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final TAG:Ljava/lang/String; = "STextureRender"

.field private static final TRIANGLE_VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I = 0x14

.field private static final TRIANGLE_VERTICES_DATA_UV_OFFSET:I = 0x3

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"


# instance fields
.field private mMVPMatrix:[F

.field private mProgram:I

.field private mSTMatrix:[F

.field private mTextureID:I

.field private mTriangleVertices:Ljava/nio/FloatBuffer;

.field private final mTriangleVerticesData:[F

.field private maPositionHandle:I

.field private maTextureHandle:I

.field private muMVPMatrixHandle:I

.field private muSTMatrixHandle:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0x14

    .line 6
    .line 7
    new-array v0, v0, [F

    .line 8
    .line 9
    .line 10
    fill-array-data v0, :array_0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mTriangleVerticesData:[F

    .line 13
    .line 14
    const/16 v1, 0x10

    .line 15
    .line 16
    new-array v2, v1, [F

    .line 17
    .line 18
    iput-object v2, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mMVPMatrix:[F

    .line 19
    .line 20
    new-array v1, v1, [F

    .line 21
    .line 22
    iput-object v1, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mSTMatrix:[F

    .line 23
    .line 24
    const/16 v1, -0x3039

    .line 25
    .line 26
    iput v1, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mTextureID:I

    .line 27
    array-length v1, v0

    .line 28
    .line 29
    mul-int/lit8 v1, v1, 0x4

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    iput-object v1, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 51
    move-result-object v0

    .line 52
    const/4 v1, 0x0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mSTMatrix:[F

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 61
    return-void

    .line 62
    nop

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static checkLocation(ILjava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    if-ltz p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    const-string v1, "Unable to locate \'"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string p1, "\' in program"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p0
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 1
    .line 2
    .line 3
    const v0, 0x8b31

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0, p1}, Lcom/narvii/pre_editing/frame/STextureRender;->loadShader(ILjava/lang/String;)I

    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    return v0

    .line 12
    .line 13
    .line 14
    :cond_0
    const v1, 0x8b30

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v1, p2}, Lcom/narvii/pre_editing/frame/STextureRender;->loadShader(ILjava/lang/String;)I

    .line 18
    move-result p2

    .line 19
    .line 20
    if-nez p2, :cond_1

    .line 21
    return v0

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    .line 25
    move-result v1

    .line 26
    .line 27
    const-string v2, "STextureRender"

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    const-string v3, "Could not create program"

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_2
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 38
    .line 39
    const-string p1, "glAttachShader"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/narvii/pre_editing/frame/STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/narvii/pre_editing/frame/STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 52
    const/4 p1, 0x1

    .line 53
    .line 54
    new-array p2, p1, [I

    .line 55
    .line 56
    .line 57
    const v3, 0x8b82

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v3, p2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 61
    .line 62
    aget p2, p2, v0

    .line 63
    .line 64
    if-eq p2, p1, :cond_3

    .line 65
    .line 66
    const-string p1, "Could not link program: "

    .line 67
    .line 68
    .line 69
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 80
    goto :goto_0

    .line 81
    :cond_3
    move v0, v1

    .line 82
    :goto_0
    return v0
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "glCreateShader type="

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/narvii/pre_editing/frame/STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 31
    const/4 p2, 0x1

    .line 32
    .line 33
    new-array p2, p2, [I

    .line 34
    .line 35
    .line 36
    const v1, 0x8b81

    .line 37
    const/4 v2, 0x0

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1, p2, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 41
    .line 42
    aget p2, p2, v2

    .line 43
    .line 44
    if-nez p2, :cond_0

    .line 45
    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    const-string v1, "Could not compile shader "

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string p1, ":"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    const-string p2, "STextureRender"

    .line 69
    .line 70
    .line 71
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    const-string v1, " "

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    .line 95
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 99
    move v0, v2

    .line 100
    :cond_0
    return v0
.end method


# virtual methods
.method public changeFragmentShader(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 5
    .line 6
    :cond_0
    iget v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mProgram:I

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 10
    .line 11
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0, p1}, Lcom/narvii/pre_editing/frame/STextureRender;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    move-result p1

    .line 16
    .line 17
    iput p1, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mProgram:I

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    return-void

    .line 21
    .line 22
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 23
    .line 24
    const-string v0, "failed creating program"

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p1
.end method

.method public checkGlError(Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, ": glError "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    const-string v3, "STextureRender"

    .line 30
    .line 31
    .line 32
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    new-instance v1, Ljava/lang/RuntimeException;

    .line 35
    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 56
    throw v1
.end method

.method public drawFrame(Landroid/graphics/SurfaceTexture;Z)V
    .locals 9

    .line 1
    .line 2
    const-string v0, "onDrawFrame start"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/pre_editing/frame/STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mSTMatrix:[F

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 11
    .line 12
    const/high16 p1, 0x3f800000    # 1.0f

    .line 13
    const/4 v0, 0x5

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mSTMatrix:[F

    .line 18
    .line 19
    aget v1, p2, v0

    .line 20
    neg-float v1, v1

    .line 21
    .line 22
    aput v1, p2, v0

    .line 23
    .line 24
    const/16 v1, 0xd

    .line 25
    .line 26
    aget v2, p2, v1

    .line 27
    .line 28
    sub-float v2, p1, v2

    .line 29
    .line 30
    aput v2, p2, v1

    .line 31
    :cond_0
    const/4 p2, 0x0

    .line 32
    .line 33
    .line 34
    invoke-static {p2, p1, p2, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 35
    .line 36
    const/16 p1, 0x4000

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 40
    .line 41
    iget p1, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mProgram:I

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 45
    .line 46
    const-string p1, "glUseProgram"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/narvii/pre_editing/frame/STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const p1, 0x84c0

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 56
    .line 57
    iget p1, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mTextureID:I

    .line 58
    .line 59
    .line 60
    const p2, 0x8d65

    .line 61
    .line 62
    .line 63
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 64
    .line 65
    iget-object p1, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 66
    const/4 v1, 0x0

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 70
    .line 71
    iget v2, p0, Lcom/narvii/pre_editing/frame/STextureRender;->maPositionHandle:I

    .line 72
    const/4 v3, 0x3

    .line 73
    .line 74
    const/16 v4, 0x1406

    .line 75
    const/4 v5, 0x0

    .line 76
    .line 77
    const/16 v6, 0x14

    .line 78
    .line 79
    iget-object v7, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 80
    .line 81
    .line 82
    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 83
    .line 84
    const-string p1, "glVertexAttribPointer maPosition"

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1}, Lcom/narvii/pre_editing/frame/STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 88
    .line 89
    iget p1, p0, Lcom/narvii/pre_editing/frame/STextureRender;->maPositionHandle:I

    .line 90
    .line 91
    .line 92
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 93
    .line 94
    const-string p1, "glEnableVertexAttribArray maPositionHandle"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p1}, Lcom/narvii/pre_editing/frame/STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 98
    .line 99
    iget-object p1, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 100
    const/4 v2, 0x3

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 104
    .line 105
    iget v3, p0, Lcom/narvii/pre_editing/frame/STextureRender;->maTextureHandle:I

    .line 106
    const/4 v4, 0x2

    .line 107
    .line 108
    const/16 v5, 0x1406

    .line 109
    const/4 v6, 0x0

    .line 110
    .line 111
    const/16 v7, 0x14

    .line 112
    .line 113
    iget-object v8, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 114
    .line 115
    .line 116
    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 117
    .line 118
    const-string p1, "glVertexAttribPointer maTextureHandle"

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, p1}, Lcom/narvii/pre_editing/frame/STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 122
    .line 123
    iget p1, p0, Lcom/narvii/pre_editing/frame/STextureRender;->maTextureHandle:I

    .line 124
    .line 125
    .line 126
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 127
    .line 128
    const-string p1, "glEnableVertexAttribArray maTextureHandle"

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, p1}, Lcom/narvii/pre_editing/frame/STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 132
    .line 133
    iget-object p1, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mMVPMatrix:[F

    .line 134
    .line 135
    .line 136
    invoke-static {p1, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 137
    .line 138
    iget p1, p0, Lcom/narvii/pre_editing/frame/STextureRender;->muMVPMatrixHandle:I

    .line 139
    .line 140
    iget-object v2, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mMVPMatrix:[F

    .line 141
    const/4 v3, 0x1

    .line 142
    .line 143
    .line 144
    invoke-static {p1, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 145
    .line 146
    iget p1, p0, Lcom/narvii/pre_editing/frame/STextureRender;->muSTMatrixHandle:I

    .line 147
    .line 148
    iget-object v2, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mSTMatrix:[F

    .line 149
    .line 150
    .line 151
    invoke-static {p1, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 152
    const/4 p1, 0x4

    .line 153
    .line 154
    .line 155
    invoke-static {v0, v1, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 156
    .line 157
    const-string p1, "glDrawArrays"

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, p1}, Lcom/narvii/pre_editing/frame/STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-static {p2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 164
    return-void
.end method

.method public getTextureId()I
    .locals 1

    iget v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mTextureID:I

    return v0
.end method

.method public surfaceCreated()V
    .locals 3

    .line 1
    .line 2
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    .line 3
    .line 4
    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0, v1}, Lcom/narvii/pre_editing/frame/STextureRender;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    move-result v0

    .line 9
    .line 10
    iput v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mProgram:I

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v1, "aPosition"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 18
    move-result v0

    .line 19
    .line 20
    iput v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->maPositionHandle:I

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/narvii/pre_editing/frame/STextureRender;->checkLocation(ILjava/lang/String;)V

    .line 24
    .line 25
    iget v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mProgram:I

    .line 26
    .line 27
    const-string v1, "aTextureCoord"

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 31
    move-result v0

    .line 32
    .line 33
    iput v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->maTextureHandle:I

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/narvii/pre_editing/frame/STextureRender;->checkLocation(ILjava/lang/String;)V

    .line 37
    .line 38
    iget v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mProgram:I

    .line 39
    .line 40
    const-string v1, "uMVPMatrix"

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 44
    move-result v0

    .line 45
    .line 46
    iput v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->muMVPMatrixHandle:I

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1}, Lcom/narvii/pre_editing/frame/STextureRender;->checkLocation(ILjava/lang/String;)V

    .line 50
    .line 51
    iget v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mProgram:I

    .line 52
    .line 53
    const-string v1, "uSTMatrix"

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 57
    move-result v0

    .line 58
    .line 59
    iput v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->muSTMatrixHandle:I

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1}, Lcom/narvii/pre_editing/frame/STextureRender;->checkLocation(ILjava/lang/String;)V

    .line 63
    const/4 v0, 0x1

    .line 64
    .line 65
    new-array v1, v0, [I

    .line 66
    const/4 v2, 0x0

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 70
    .line 71
    aget v0, v1, v2

    .line 72
    .line 73
    iput v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mTextureID:I

    .line 74
    .line 75
    .line 76
    const v1, 0x8d65

    .line 77
    .line 78
    .line 79
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 80
    .line 81
    const-string v0, "glBindTexture mTextureID"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Lcom/narvii/pre_editing/frame/STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 85
    .line 86
    const/16 v0, 0x2801

    .line 87
    .line 88
    const/high16 v2, 0x46180000    # 9728.0f

    .line 89
    .line 90
    .line 91
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 92
    .line 93
    const/16 v0, 0x2800

    .line 94
    .line 95
    .line 96
    const v2, 0x46180400    # 9729.0f

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 100
    .line 101
    const/16 v0, 0x2802

    .line 102
    .line 103
    .line 104
    const v2, 0x812f

    .line 105
    .line 106
    .line 107
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 108
    .line 109
    const/16 v0, 0x2803

    .line 110
    .line 111
    .line 112
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 113
    .line 114
    const-string v0, "glTexParameter"

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v0}, Lcom/narvii/pre_editing/frame/STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 118
    return-void

    .line 119
    .line 120
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 121
    .line 122
    const-string v1, "failed creating program"

    .line 123
    .line 124
    .line 125
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 126
    throw v0
.end method
