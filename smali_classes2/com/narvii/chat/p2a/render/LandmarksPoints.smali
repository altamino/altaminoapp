.class public Lcom/narvii/chat/p2a/render/LandmarksPoints;
.super Ljava/lang/Object;
.source "LandmarksPoints.java"


# static fields
.field static final COORDS_PER_VERTEX:I = 0x2

.field private static TAG:Ljava/lang/String;

.field static flipMtx:[F

.field static originMtx:[F


# instance fields
.field bb:Ljava/nio/ByteBuffer;

.field color:[F

.field private final fragmentShaderCode:Ljava/lang/String;

.field private mColorHandle:I

.field private mMVPMatrixHandle:I

.field private mPointSize:F

.field private mPointSizeHandle:I

.field private mPositionHandle:I

.field private final mProgram:I

.field public pointsCoords:[F

.field private final vertexBuffer:Ljava/nio/FloatBuffer;

.field private final vertexCount:I

.field private final vertexShaderCode:Ljava/lang/String;

.field private final vertexStride:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    sget-object v0, Lcom/narvii/video/gles/GlUtil;->IDENTITY_MATRIX:[F

    sput-object v0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->originMtx:[F

    .line 75
    sget-object v0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->originMtx:[F

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    sput-object v0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->flipMtx:[F

    const-string v0, "LandmarksPoints"

    .line 160
    sput-object v0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "uniform mat4 uMVPMatrix;attribute vec4 vPosition;uniform float uPointSize;void main() {  gl_Position = uMVPMatrix * vPosition;  gl_PointSize = uPointSize;}"

    .line 32
    iput-object v0, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->vertexShaderCode:Ljava/lang/String;

    const-string v1, "precision mediump float;uniform vec4 vColor;void main() {  gl_FragColor = vColor;}"

    .line 46
    iput-object v1, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->fragmentShaderCode:Ljava/lang/String;

    const/high16 v2, 0x40c00000    # 6.0f

    .line 60
    iput v2, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mPointSize:F

    const/16 v2, 0x96

    new-array v2, v2, [F

    .line 65
    iput-object v2, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->pointsCoords:[F

    .line 66
    iget-object v2, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->pointsCoords:[F

    array-length v3, v2

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->vertexCount:I

    const/16 v3, 0x8

    .line 67
    iput v3, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->vertexStride:I

    const/4 v3, 0x4

    new-array v4, v3, [F

    .line 69
    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->color:[F

    .line 85
    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->bb:Ljava/nio/ByteBuffer;

    .line 89
    iget-object v2, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->bb:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 92
    iget-object v2, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 94
    iget-object v2, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->vertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->pointsCoords:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 96
    iget-object v2, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const v2, 0x8b31

    .line 99
    invoke-static {v2, v0}, Lcom/narvii/video/gles/GlUtil;->loadShader(ILjava/lang/String;)I

    move-result v0

    const v2, 0x8b30

    .line 101
    invoke-static {v2, v1}, Lcom/narvii/video/gles/GlUtil;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 104
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    iput v2, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mProgram:I

    .line 105
    iget v2, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mProgram:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 106
    iget v0, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mProgram:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 107
    iget v0, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    return-void

    :array_0
    .array-data 4
        0x3f230000    # 0.63671875f
        0x3f450000    # 0.76953125f
        0x3e640000    # 0.22265625f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public draw()V
    .locals 7

    .line 119
    iget v0, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 122
    iget v0, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mProgram:I

    const-string/jumbo v1, "vPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mPositionHandle:I

    .line 125
    iget v0, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 128
    iget v1, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mPositionHandle:I

    iget-object v6, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 134
    iget v0, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mProgram:I

    const-string/jumbo v1, "vColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mColorHandle:I

    .line 137
    iget v0, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mColorHandle:I

    iget-object v1, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->color:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 140
    iget v0, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mProgram:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mMVPMatrixHandle:I

    const-string v0, "glGetUniformLocation"

    .line 141
    invoke-static {v0}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 143
    iget v1, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mProgram:I

    const-string/jumbo v4, "uPointSize"

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mPointSizeHandle:I

    .line 144
    invoke-static {v0}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 147
    iget v0, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mMVPMatrixHandle:I

    sget-object v1, Lcom/narvii/chat/p2a/render/LandmarksPoints;->originMtx:[F

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string v0, "glUniformMatrix4fv"

    .line 148
    invoke-static {v0}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 150
    iget v0, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mPointSizeHandle:I

    iget v1, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mPointSize:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v0, "glUniform1f"

    .line 151
    invoke-static {v0}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 154
    iget v0, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->vertexCount:I

    invoke-static {v3, v3, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 157
    iget v0, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method public refresh([FIIFFZI)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x96

    if-ge v1, v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->pointsCoords:[F

    aget v3, p1, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 165
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_5

    const/16 v2, 0x10e

    const/4 v3, 0x0

    if-ne p7, v2, :cond_2

    .line 168
    iget-object v2, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->pointsCoords:[F

    aget v3, v2, v1

    int-to-float v4, p2

    div-float/2addr v3, v4

    if-nez p6, :cond_1

    int-to-float v4, p3

    add-int/lit8 v5, v1, 0x1

    .line 169
    aget v2, v2, v5

    sub-float/2addr v4, v2

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v1, 0x1

    aget v4, v2, v4

    :goto_2
    int-to-float v2, p3

    div-float v2, v4, v2

    goto :goto_4

    :cond_2
    const/16 v2, 0x5a

    if-ne p7, v2, :cond_4

    int-to-float v2, p2

    .line 171
    iget-object v3, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->pointsCoords:[F

    aget v4, v3, v1

    sub-float v4, v2, v4

    div-float v2, v4, v2

    if-eqz p6, :cond_3

    int-to-float v4, p3

    add-int/lit8 v5, v1, 0x1

    .line 172
    aget v3, v3, v5

    sub-float/2addr v4, v3

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v1, 0x1

    aget v4, v3, v4

    :goto_3
    int-to-float v3, p3

    div-float v3, v4, v3

    move v6, v3

    move v3, v2

    move v2, v6

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    sub-float/2addr v3, p4

    div-float/2addr v3, p5

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v3, v5

    mul-float v2, v2, v4

    sub-float/2addr v2, v5

    .line 180
    iget-object v4, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->pointsCoords:[F

    neg-float v2, v2

    mul-float v2, v2, v5

    aput v2, v4, v1

    add-int/lit8 v2, v1, 0x1

    mul-float v3, v3, v5

    .line 181
    aput v3, v4, v2

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 184
    :cond_5
    iget-object p1, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->vertexBuffer:Ljava/nio/FloatBuffer;

    iget-object p2, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->pointsCoords:[F

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 186
    iget-object p1, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public setPointSize(F)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mPointSize:F

    return-void
.end method
