.class public Lcom/narvii/chat/p2a/render/LandmarksPoints;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/video/gles/GlUtil;->IDENTITY_MATRIX:[F

    .line 3
    .line 4
    sput-object v0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->originMtx:[F

    .line 5
    array-length v1, v0

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sput-object v0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->flipMtx:[F

    .line 12
    .line 13
    const-string v0, "LandmarksPoints"

    .line 14
    .line 15
    sput-object v0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->TAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const-string v0, "uniform mat4 uMVPMatrix;attribute vec4 vPosition;uniform float uPointSize;void main() {  gl_Position = uMVPMatrix * vPosition;  gl_PointSize = uPointSize;}"

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->vertexShaderCode:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "precision mediump float;uniform vec4 vColor;void main() {  gl_FragColor = vColor;}"

    .line 10
    .line 11
    iput-object v1, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->fragmentShaderCode:Ljava/lang/String;

    .line 12
    .line 13
    const/high16 v2, 0x40c00000    # 6.0f

    .line 14
    .line 15
    iput v2, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mPointSize:F

    .line 16
    .line 17
    const/16 v2, 0x96

    .line 18
    .line 19
    new-array v2, v2, [F

    .line 20
    .line 21
    iput-object v2, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->pointsCoords:[F

    .line 22
    array-length v3, v2

    .line 23
    .line 24
    div-int/lit8 v3, v3, 0x2

    .line 25
    .line 26
    iput v3, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->vertexCount:I

    .line 27
    .line 28
    const/16 v3, 0x8

    .line 29
    .line 30
    iput v3, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->vertexStride:I

    .line 31
    const/4 v3, 0x4

    .line 32
    .line 33
    new-array v4, v3, [F

    .line 34
    .line 35
    .line 36
    fill-array-data v4, :array_0

    .line 37
    .line 38
    iput-object v4, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->color:[F

    .line 39
    array-length v2, v2

    .line 40
    mul-int/2addr v2, v3

    .line 41
    .line 42
    .line 43
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    iput-object v2, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->bb:Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    .line 49
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->bb:Ljava/nio/ByteBuffer;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    iput-object v2, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 62
    .line 63
    iget-object v3, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->pointsCoords:[F

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 67
    const/4 v3, 0x0

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 71
    .line 72
    .line 73
    const v2, 0x8b31

    .line 74
    .line 75
    .line 76
    invoke-static {v2, v0}, Lcom/narvii/video/gles/GlUtil;->loadShader(ILjava/lang/String;)I

    .line 77
    move-result v0

    .line 78
    .line 79
    .line 80
    const v2, 0x8b30

    .line 81
    .line 82
    .line 83
    invoke-static {v2, v1}, Lcom/narvii/video/gles/GlUtil;->loadShader(ILjava/lang/String;)I

    .line 84
    move-result v1

    .line 85
    .line 86
    .line 87
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    .line 88
    move-result v2

    .line 89
    .line 90
    iput v2, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mProgram:I

    .line 91
    .line 92
    .line 93
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 94
    .line 95
    .line 96
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 97
    .line 98
    .line 99
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 100
    return-void

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
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

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mProgram:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 6
    .line 7
    iget v0, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mProgram:I

    .line 8
    .line 9
    const-string v1, "vPosition"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 13
    move-result v0

    .line 14
    .line 15
    iput v0, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mPositionHandle:I

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 19
    .line 20
    iget v1, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mPositionHandle:I

    .line 21
    const/4 v2, 0x2

    .line 22
    .line 23
    const/16 v3, 0x1406

    .line 24
    const/4 v4, 0x0

    .line 25
    .line 26
    const/16 v5, 0x8

    .line 27
    .line 28
    iget-object v6, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 29
    .line 30
    .line 31
    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 32
    .line 33
    iget v0, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mProgram:I

    .line 34
    .line 35
    const-string v1, "vColor"

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 39
    move-result v0

    .line 40
    .line 41
    iput v0, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mColorHandle:I

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->color:[F

    .line 44
    const/4 v2, 0x1

    .line 45
    const/4 v3, 0x0

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 49
    .line 50
    iget v0, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mProgram:I

    .line 51
    .line 52
    const-string v1, "uMVPMatrix"

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 56
    move-result v0

    .line 57
    .line 58
    iput v0, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mMVPMatrixHandle:I

    .line 59
    .line 60
    const-string v0, "glGetUniformLocation"

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 64
    .line 65
    iget v1, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mProgram:I

    .line 66
    .line 67
    const-string v4, "uPointSize"

    .line 68
    .line 69
    .line 70
    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 71
    move-result v1

    .line 72
    .line 73
    iput v1, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mPointSizeHandle:I

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 77
    .line 78
    iget v0, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mMVPMatrixHandle:I

    .line 79
    .line 80
    sget-object v1, Lcom/narvii/chat/p2a/render/LandmarksPoints;->originMtx:[F

    .line 81
    .line 82
    .line 83
    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 84
    .line 85
    const-string v0, "glUniformMatrix4fv"

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 89
    .line 90
    iget v0, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mPointSizeHandle:I

    .line 91
    .line 92
    iget v1, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mPointSize:F

    .line 93
    .line 94
    .line 95
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 96
    .line 97
    const-string v0, "glUniform1f"

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 101
    .line 102
    iget v0, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->vertexCount:I

    .line 103
    .line 104
    .line 105
    invoke-static {v3, v3, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 106
    .line 107
    iget v0, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mPositionHandle:I

    .line 108
    .line 109
    .line 110
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 111
    return-void
.end method

.method public refresh([FIIFFZI)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    :goto_0
    const/16 v2, 0x96

    .line 5
    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->pointsCoords:[F

    .line 9
    .line 10
    aget v3, p1, v1

    .line 11
    .line 12
    aput v3, v2, v1

    .line 13
    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v1, v0

    .line 17
    :goto_1
    array-length v2, p1

    .line 18
    .line 19
    if-ge v1, v2, :cond_5

    .line 20
    .line 21
    const/16 v2, 0x10e

    .line 22
    .line 23
    if-ne p7, v2, :cond_2

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->pointsCoords:[F

    .line 26
    .line 27
    aget v3, v2, v1

    .line 28
    int-to-float v4, p2

    .line 29
    div-float/2addr v3, v4

    .line 30
    .line 31
    if-nez p6, :cond_1

    .line 32
    int-to-float v4, p3

    .line 33
    .line 34
    add-int/lit8 v5, v1, 0x1

    .line 35
    .line 36
    aget v2, v2, v5

    .line 37
    sub-float/2addr v4, v2

    .line 38
    goto :goto_2

    .line 39
    .line 40
    :cond_1
    add-int/lit8 v4, v1, 0x1

    .line 41
    .line 42
    aget v4, v2, v4

    .line 43
    :goto_2
    int-to-float v2, p3

    .line 44
    div-float/2addr v4, v2

    .line 45
    goto :goto_4

    .line 46
    .line 47
    :cond_2
    const/16 v2, 0x5a

    .line 48
    .line 49
    if-ne p7, v2, :cond_4

    .line 50
    int-to-float v2, p2

    .line 51
    .line 52
    iget-object v3, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->pointsCoords:[F

    .line 53
    .line 54
    aget v4, v3, v1

    .line 55
    .line 56
    sub-float v4, v2, v4

    .line 57
    .line 58
    div-float v2, v4, v2

    .line 59
    .line 60
    if-eqz p6, :cond_3

    .line 61
    int-to-float v4, p3

    .line 62
    .line 63
    add-int/lit8 v5, v1, 0x1

    .line 64
    .line 65
    aget v3, v3, v5

    .line 66
    sub-float/2addr v4, v3

    .line 67
    goto :goto_3

    .line 68
    .line 69
    :cond_3
    add-int/lit8 v4, v1, 0x1

    .line 70
    .line 71
    aget v4, v3, v4

    .line 72
    :goto_3
    int-to-float v3, p3

    .line 73
    div-float/2addr v4, v3

    .line 74
    move v3, v2

    .line 75
    goto :goto_4

    .line 76
    :cond_4
    const/4 v3, 0x0

    .line 77
    move v4, v3

    .line 78
    :goto_4
    sub-float/2addr v3, p4

    .line 79
    div-float/2addr v3, p5

    .line 80
    .line 81
    const/high16 v2, 0x40000000    # 2.0f

    .line 82
    mul-float/2addr v3, v2

    .line 83
    .line 84
    const/high16 v5, 0x3f800000    # 1.0f

    .line 85
    sub-float/2addr v3, v5

    .line 86
    mul-float/2addr v4, v2

    .line 87
    sub-float/2addr v4, v5

    .line 88
    .line 89
    iget-object v2, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->pointsCoords:[F

    .line 90
    neg-float v4, v4

    .line 91
    mul-float/2addr v4, v5

    .line 92
    .line 93
    aput v4, v2, v1

    .line 94
    .line 95
    add-int/lit8 v4, v1, 0x1

    .line 96
    mul-float/2addr v3, v5

    .line 97
    .line 98
    aput v3, v2, v4

    .line 99
    .line 100
    add-int/lit8 v1, v1, 0x2

    .line 101
    goto :goto_1

    .line 102
    .line 103
    :cond_5
    iget-object p1, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 104
    .line 105
    iget-object p2, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->pointsCoords:[F

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 109
    .line 110
    iget-object p1, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 114
    return-void
.end method

.method public setPointSize(F)V
    .locals 0

    iput p1, p0, Lcom/narvii/chat/p2a/render/LandmarksPoints;->mPointSize:F

    return-void
.end method
