.class Lcom/narvii/pre_editing/frame/STextureRender;
.super Ljava/lang/Object;
.source "STextureRender.java"


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
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [F

    .line 24
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mTriangleVerticesData:[F

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 54
    iput-object v1, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mMVPMatrix:[F

    new-array v0, v0, [F

    .line 55
    iput-object v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mSTMatrix:[F

    const/16 v0, -0x3039

    .line 58
    iput v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mTextureID:I

    .line 65
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mTriangleVerticesData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 67
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 68
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mTriangleVerticesData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 70
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mSTMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    nop

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

    if-ltz p0, :cond_0

    return-void

    .line 229
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to locate \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' in program"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const v0, 0x8b31

    .line 190
    invoke-direct {p0, v0, p1}, Lcom/narvii/pre_editing/frame/STextureRender;->loadShader(ILjava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const v1, 0x8b30

    .line 194
    invoke-direct {p0, v1, p2}, Lcom/narvii/pre_editing/frame/STextureRender;->loadShader(ILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    return v0

    .line 199
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    const-string v2, "STextureRender"

    if-nez v1, :cond_2

    const-string v3, "Could not create program"

    .line 201
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_2
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string p1, "glAttachShader"

    .line 204
    invoke-virtual {p0, p1}, Lcom/narvii/pre_editing/frame/STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 205
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 206
    invoke-virtual {p0, p1}, Lcom/narvii/pre_editing/frame/STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 207
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p1, 0x1

    new-array p2, p1, [I

    const v3, 0x8b82

    .line 209
    invoke-static {v1, v3, p2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 210
    aget p2, p2, v0

    if-eq p2, p1, :cond_3

    const-string p1, "Could not link program: "

    .line 211
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 3

    .line 174
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glCreateShader type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/narvii/pre_editing/frame/STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 176
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 177
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    const/4 v1, 0x0

    const v2, 0x8b81

    .line 179
    invoke-static {v0, v2, p2, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 180
    aget p2, p2, v1

    if-nez p2, :cond_0

    .line 181
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not compile shader "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "STextureRender"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 v0, 0x0

    :cond_0
    return v0
.end method


# virtual methods
.method public changeFragmentShader(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 166
    :cond_0
    iget v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    .line 167
    invoke-direct {p0, v0, p1}, Lcom/narvii/pre_editing/frame/STextureRender;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mProgram:I

    .line 168
    iget p1, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mProgram:I

    if-eqz p1, :cond_1

    return-void

    .line 169
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "failed creating program"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkGlError(Ljava/lang/String;)V
    .locals 4

    .line 221
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 222
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": glError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "STextureRender"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public drawFrame(Landroid/graphics/SurfaceTexture;Z)V
    .locals 9

    const-string v0, "onDrawFrame start"

    .line 81
    invoke-virtual {p0, v0}, Lcom/narvii/pre_editing/frame/STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mSTMatrix:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    const/4 p1, 0x5

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    .line 84
    iget-object p2, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mSTMatrix:[F

    aget v1, p2, p1

    neg-float v1, v1

    aput v1, p2, p1

    const/16 v1, 0xd

    .line 85
    aget v2, p2, v1

    sub-float v2, v0, v2

    aput v2, p2, v1

    :cond_0
    const/4 p2, 0x0

    .line 89
    invoke-static {p2, v0, p2, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p2, 0x4000

    .line 90
    invoke-static {p2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 92
    iget p2, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mProgram:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string p2, "glUseProgram"

    .line 93
    invoke-virtual {p0, p2}, Lcom/narvii/pre_editing/frame/STextureRender;->checkGlError(Ljava/lang/String;)V

    const p2, 0x84c0

    .line 95
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 96
    iget p2, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mTextureID:I

    const v0, 0x8d65

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 98
    iget-object p2, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    iget v2, p0, Lcom/narvii/pre_editing/frame/STextureRender;->maPositionHandle:I

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x14

    iget-object v7, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string p2, "glVertexAttribPointer maPosition"

    .line 101
    invoke-virtual {p0, p2}, Lcom/narvii/pre_editing/frame/STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 102
    iget p2, p0, Lcom/narvii/pre_editing/frame/STextureRender;->maPositionHandle:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string p2, "glEnableVertexAttribArray maPositionHandle"

    .line 103
    invoke-virtual {p0, p2}, Lcom/narvii/pre_editing/frame/STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 105
    iget-object p2, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 106
    iget v3, p0, Lcom/narvii/pre_editing/frame/STextureRender;->maTextureHandle:I

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x14

    iget-object v8, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string p2, "glVertexAttribPointer maTextureHandle"

    .line 108
    invoke-virtual {p0, p2}, Lcom/narvii/pre_editing/frame/STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 109
    iget p2, p0, Lcom/narvii/pre_editing/frame/STextureRender;->maTextureHandle:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string p2, "glEnableVertexAttribArray maTextureHandle"

    .line 110
    invoke-virtual {p0, p2}, Lcom/narvii/pre_editing/frame/STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 112
    iget-object p2, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mMVPMatrix:[F

    invoke-static {p2, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 113
    iget p2, p0, Lcom/narvii/pre_editing/frame/STextureRender;->muMVPMatrixHandle:I

    iget-object v2, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mMVPMatrix:[F

    const/4 v3, 0x1

    invoke-static {p2, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 114
    iget p2, p0, Lcom/narvii/pre_editing/frame/STextureRender;->muSTMatrixHandle:I

    iget-object v2, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mSTMatrix:[F

    invoke-static {p2, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 p2, 0x4

    .line 116
    invoke-static {p1, v1, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string p1, "glDrawArrays"

    .line 117
    invoke-virtual {p0, p1}, Lcom/narvii/pre_editing/frame/STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 119
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public getTextureId()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mTextureID:I

    return v0
.end method

.method public surfaceCreated()V
    .locals 3

    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 126
    invoke-direct {p0, v0, v1}, Lcom/narvii/pre_editing/frame/STextureRender;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mProgram:I

    .line 127
    iget v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mProgram:I

    if-eqz v0, :cond_0

    const-string v1, "aPosition"

    .line 131
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->maPositionHandle:I

    .line 132
    iget v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->maPositionHandle:I

    invoke-static {v0, v1}, Lcom/narvii/pre_editing/frame/STextureRender;->checkLocation(ILjava/lang/String;)V

    .line 133
    iget v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mProgram:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->maTextureHandle:I

    .line 134
    iget v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->maTextureHandle:I

    invoke-static {v0, v1}, Lcom/narvii/pre_editing/frame/STextureRender;->checkLocation(ILjava/lang/String;)V

    .line 136
    iget v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mProgram:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->muMVPMatrixHandle:I

    .line 137
    iget v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->muMVPMatrixHandle:I

    invoke-static {v0, v1}, Lcom/narvii/pre_editing/frame/STextureRender;->checkLocation(ILjava/lang/String;)V

    .line 138
    iget v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mProgram:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->muSTMatrixHandle:I

    .line 139
    iget v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->muSTMatrixHandle:I

    invoke-static {v0, v1}, Lcom/narvii/pre_editing/frame/STextureRender;->checkLocation(ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 142
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 144
    aget v0, v1, v2

    iput v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mTextureID:I

    .line 145
    iget v0, p0, Lcom/narvii/pre_editing/frame/STextureRender;->mTextureID:I

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v0, "glBindTexture mTextureID"

    .line 146
    invoke-virtual {p0, v0}, Lcom/narvii/pre_editing/frame/STextureRender;->checkGlError(Ljava/lang/String;)V

    const/16 v0, 0x2801

    const/high16 v2, 0x46180000    # 9728.0f

    .line 148
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    const v2, 0x46180400    # 9729.0f

    .line 150
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v2, 0x812f

    .line 152
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 154
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v0, "glTexParameter"

    .line 156
    invoke-virtual {p0, v0}, Lcom/narvii/pre_editing/frame/STextureRender;->checkGlError(Ljava/lang/String;)V

    return-void

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
