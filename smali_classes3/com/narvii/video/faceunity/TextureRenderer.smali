.class public Lcom/narvii/video/faceunity/TextureRenderer;
.super Ljava/lang/Object;
.source "TextureRenderer.java"


# static fields
.field static final COORDS_PER_VERTEX:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "TextureRenderer"

.field static squareVertices:[F


# instance fields
.field private drawListBuffer:Ljava/nio/ShortBuffer;

.field private drawOrder:[S

.field private final mFragmentShaderOes:Ljava/lang/String;

.field private final mFragmentShaderRgba:Ljava/lang/String;

.field private mMVPMatrix:[F

.field private mOesTexture:Z

.field private final mProgram:I

.field private mSTMatrix:[F

.field private final mVertexShader:Ljava/lang/String;

.field private muMVPMatrixHandle:I

.field private muSTMatrixHandle:I

.field textureVertices:[F

.field private textureVerticesBuffer:Ljava/nio/FloatBuffer;

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private final vertexStride:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 54
    fill-array-data v0, :array_0

    sput-object v0, Lcom/narvii/video/faceunity/TextureRenderer;->squareVertices:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 5

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "attribute vec4 position;\nattribute vec2 inputTextureCoordinate;\nuniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nvarying vec2 textureCoordinate;\nvoid main()\n{\ngl_Position = uMVPMatrix * position;\nvec4 tex4 = vec4(inputTextureCoordinate.xy, 1.0, 1.0);\ntextureCoordinate = (uSTMatrix * tex4).xy;\n}"

    .line 16
    iput-object v0, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mVertexShader:Ljava/lang/String;

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 textureCoordinate;\nuniform samplerExternalOES s_texture;\nvoid main() {\ngl_FragColor = texture2D(s_texture, textureCoordinate);\n}"

    .line 29
    iput-object v1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mFragmentShaderOes:Ljava/lang/String;

    const-string v2, "precision mediump float;\nvarying vec2 textureCoordinate;\nuniform sampler2D s_texture;\nvoid main() {\ngl_FragColor = texture2D(s_texture, textureCoordinate);\n}"

    .line 38
    iput-object v2, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mFragmentShaderRgba:Ljava/lang/String;

    const/4 v3, 0x1

    .line 50
    iput-boolean v3, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mOesTexture:Z

    const/16 v3, 0x8

    new-array v4, v3, [F

    .line 56
    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/narvii/video/faceunity/TextureRenderer;->textureVertices:[F

    const/4 v4, 0x6

    new-array v4, v4, [S

    .line 58
    fill-array-data v4, :array_1

    iput-object v4, p0, Lcom/narvii/video/faceunity/TextureRenderer;->drawOrder:[S

    .line 60
    iput v3, p0, Lcom/narvii/video/faceunity/TextureRenderer;->vertexStride:I

    const/16 v3, 0x10

    new-array v4, v3, [F

    .line 65
    iput-object v4, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mMVPMatrix:[F

    new-array v3, v3, [F

    .line 66
    iput-object v3, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mSTMatrix:[F

    .line 69
    iput-boolean p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mOesTexture:Z

    .line 71
    sget-object p1, Lcom/narvii/video/faceunity/TextureRenderer;->squareVertices:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 72
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 73
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 74
    iget-object p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    sget-object v3, Lcom/narvii/video/faceunity/TextureRenderer;->squareVertices:[F

    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 75
    iget-object p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 77
    iget-object p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->drawOrder:[S

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 78
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 79
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->drawListBuffer:Ljava/nio/ShortBuffer;

    .line 80
    iget-object p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->drawListBuffer:Ljava/nio/ShortBuffer;

    iget-object v4, p0, Lcom/narvii/video/faceunity/TextureRenderer;->drawOrder:[S

    invoke-virtual {p1, v4}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 81
    iget-object p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->drawListBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 83
    iget-object p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->textureVertices:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 84
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 85
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->textureVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 86
    iget-object p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->textureVerticesBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/narvii/video/faceunity/TextureRenderer;->textureVertices:[F

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 87
    iget-object p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->textureVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const p1, 0x8b31

    .line 89
    invoke-direct {p0, p1, v0}, Lcom/narvii/video/faceunity/TextureRenderer;->loadShader(ILjava/lang/String;)I

    move-result p1

    .line 91
    iget-boolean v0, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mOesTexture:Z

    const v4, 0x8b30

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0, v4, v1}, Lcom/narvii/video/faceunity/TextureRenderer;->loadShader(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 94
    :cond_0
    invoke-direct {p0, v4, v2}, Lcom/narvii/video/faceunity/TextureRenderer;->loadShader(ILjava/lang/String;)I

    move-result v0

    .line 97
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    iput v1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mProgram:I

    .line 98
    iget v1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mProgram:I

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 99
    iget p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mProgram:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 100
    iget p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mProgram:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 102
    iget p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mProgram:I

    const-string v0, "uMVPMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->muMVPMatrixHandle:I

    .line 103
    iget p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mProgram:I

    const-string v0, "uSTMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->muSTMatrixHandle:I

    .line 105
    iget-object p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mMVPMatrix:[F

    invoke-static {p1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 106
    iget-object p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mSTMatrix:[F

    invoke-static {p1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
    .end array-data
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 0

    .line 166
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    .line 168
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 169
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    return p1
.end method

.method private printMatrix([F)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v3, v2, 0x0

    aget v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x1

    aget v4, p1, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x2

    aget v4, p1, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x3

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextureRenderer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(I)V
    .locals 8

    .line 118
    iget v0, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    .line 120
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 121
    iget-boolean v0, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mOesTexture:Z

    if-eqz v0, :cond_0

    const v0, 0x8d65

    .line 122
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xde1

    .line 124
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 126
    :goto_0
    iget p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mProgram:I

    const-string v0, "position"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    .line 127
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    .line 128
    iget-object v6, p0, Lcom/narvii/video/faceunity/TextureRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    move v1, p1

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 130
    iget v0, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mProgram:I

    const-string v1, "inputTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 131
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x8

    .line 132
    iget-object v7, p0, Lcom/narvii/video/faceunity/TextureRenderer;->textureVerticesBuffer:Ljava/nio/FloatBuffer;

    move v2, v0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 134
    iget v1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->muMVPMatrixHandle:I

    iget-object v2, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mMVPMatrix:[F

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 135
    iget v1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->muSTMatrixHandle:I

    iget-object v2, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mSTMatrix:[F

    invoke-static {v1, v3, v4, v2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v1, 0x4

    .line 137
    iget-object v2, p0, Lcom/narvii/video/faceunity/TextureRenderer;->drawOrder:[S

    array-length v2, v2

    const/16 v3, 0x1403

    iget-object v5, p0, Lcom/narvii/video/faceunity/TextureRenderer;->drawListBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v1, v2, v3, v5}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 140
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 141
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 143
    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public draw(I[F)V
    .locals 3

    const/4 v0, 0x0

    .line 157
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mSTMatrix:[F

    aget v2, p2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/video/faceunity/TextureRenderer;->draw(I)V

    return-void
.end method

.method public rotate(I)V
    .locals 4

    int-to-double v0, p1

    const-wide v2, 0x4066800000000000L    # 180.0

    .line 110
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    .line 111
    iget-object p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mMVPMatrix:[F

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x0

    aput v2, p1, v3

    .line 112
    iget-object p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mMVPMatrix:[F

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    neg-float v2, v2

    const/4 v3, 0x1

    aput v2, p1, v3

    .line 113
    iget-object p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mMVPMatrix:[F

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x4

    aput v2, p1, v3

    .line 114
    iget-object p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mMVPMatrix:[F

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x5

    aput v0, p1, v1

    return-void
.end method
