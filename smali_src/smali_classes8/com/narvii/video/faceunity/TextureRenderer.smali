.class public Lcom/narvii/video/faceunity/TextureRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const-string v0, "attribute vec4 position;\nattribute vec2 inputTextureCoordinate;\nuniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nvarying vec2 textureCoordinate;\nvoid main()\n{\ngl_Position = uMVPMatrix * position;\nvec4 tex4 = vec4(inputTextureCoordinate.xy, 1.0, 1.0);\ntextureCoordinate = (uSTMatrix * tex4).xy;\n}"

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mVertexShader:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 textureCoordinate;\nuniform samplerExternalOES s_texture;\nvoid main() {\ngl_FragColor = texture2D(s_texture, textureCoordinate);\n}"

    .line 10
    .line 11
    iput-object v1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mFragmentShaderOes:Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "precision mediump float;\nvarying vec2 textureCoordinate;\nuniform sampler2D s_texture;\nvoid main() {\ngl_FragColor = texture2D(s_texture, textureCoordinate);\n}"

    .line 14
    .line 15
    iput-object v2, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mFragmentShaderRgba:Ljava/lang/String;

    .line 16
    .line 17
    const/16 v3, 0x8

    .line 18
    .line 19
    new-array v4, v3, [F

    .line 20
    .line 21
    .line 22
    fill-array-data v4, :array_0

    .line 23
    .line 24
    iput-object v4, p0, Lcom/narvii/video/faceunity/TextureRenderer;->textureVertices:[F

    .line 25
    const/4 v4, 0x6

    .line 26
    .line 27
    new-array v4, v4, [S

    .line 28
    .line 29
    .line 30
    fill-array-data v4, :array_1

    .line 31
    .line 32
    iput-object v4, p0, Lcom/narvii/video/faceunity/TextureRenderer;->drawOrder:[S

    .line 33
    .line 34
    iput v3, p0, Lcom/narvii/video/faceunity/TextureRenderer;->vertexStride:I

    .line 35
    .line 36
    const/16 v3, 0x10

    .line 37
    .line 38
    new-array v4, v3, [F

    .line 39
    .line 40
    iput-object v4, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mMVPMatrix:[F

    .line 41
    .line 42
    new-array v3, v3, [F

    .line 43
    .line 44
    iput-object v3, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mSTMatrix:[F

    .line 45
    .line 46
    iput-boolean p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mOesTexture:Z

    .line 47
    .line 48
    sget-object p1, Lcom/narvii/video/faceunity/TextureRenderer;->squareVertices:[F

    .line 49
    array-length p1, p1

    .line 50
    .line 51
    mul-int/lit8 p1, p1, 0x4

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    iput-object p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 69
    .line 70
    sget-object v3, Lcom/narvii/video/faceunity/TextureRenderer;->squareVertices:[F

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 74
    .line 75
    iget-object p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 76
    const/4 v3, 0x0

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 80
    .line 81
    iget-object p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->drawOrder:[S

    .line 82
    array-length p1, p1

    .line 83
    .line 84
    mul-int/lit8 p1, p1, 0x2

    .line 85
    .line 86
    .line 87
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    .line 91
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 92
    move-result-object v4

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    iput-object p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->drawListBuffer:Ljava/nio/ShortBuffer;

    .line 102
    .line 103
    iget-object v4, p0, Lcom/narvii/video/faceunity/TextureRenderer;->drawOrder:[S

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v4}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 107
    .line 108
    iget-object p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->drawListBuffer:Ljava/nio/ShortBuffer;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 112
    .line 113
    iget-object p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->textureVertices:[F

    .line 114
    array-length p1, p1

    .line 115
    .line 116
    mul-int/lit8 p1, p1, 0x4

    .line 117
    .line 118
    .line 119
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    .line 123
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 124
    move-result-object v4

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 131
    move-result-object p1

    .line 132
    .line 133
    iput-object p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->textureVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 134
    .line 135
    iget-object v4, p0, Lcom/narvii/video/faceunity/TextureRenderer;->textureVertices:[F

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 139
    .line 140
    iget-object p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->textureVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 144
    .line 145
    .line 146
    const p1, 0x8b31

    .line 147
    .line 148
    .line 149
    invoke-direct {p0, p1, v0}, Lcom/narvii/video/faceunity/TextureRenderer;->loadShader(ILjava/lang/String;)I

    .line 150
    move-result p1

    .line 151
    .line 152
    iget-boolean v0, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mOesTexture:Z

    .line 153
    .line 154
    .line 155
    const v4, 0x8b30

    .line 156
    .line 157
    if-eqz v0, :cond_0

    .line 158
    .line 159
    .line 160
    invoke-direct {p0, v4, v1}, Lcom/narvii/video/faceunity/TextureRenderer;->loadShader(ILjava/lang/String;)I

    .line 161
    move-result v0

    .line 162
    goto :goto_0

    .line 163
    .line 164
    .line 165
    :cond_0
    invoke-direct {p0, v4, v2}, Lcom/narvii/video/faceunity/TextureRenderer;->loadShader(ILjava/lang/String;)I

    .line 166
    move-result v0

    .line 167
    .line 168
    .line 169
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    .line 170
    move-result v1

    .line 171
    .line 172
    iput v1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mProgram:I

    .line 173
    .line 174
    .line 175
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 176
    .line 177
    .line 178
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 179
    .line 180
    .line 181
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 182
    .line 183
    .line 184
    const-string/jumbo p1, "uMVPMatrix"

    .line 185
    .line 186
    .line 187
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 188
    move-result p1

    .line 189
    .line 190
    iput p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->muMVPMatrixHandle:I

    .line 191
    .line 192
    .line 193
    const-string/jumbo p1, "uSTMatrix"

    .line 194
    .line 195
    .line 196
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 197
    move-result p1

    .line 198
    .line 199
    iput p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->muSTMatrixHandle:I

    .line 200
    .line 201
    iget-object p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mMVPMatrix:[F

    .line 202
    .line 203
    .line 204
    invoke-static {p1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 205
    .line 206
    iget-object p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mSTMatrix:[F

    .line 207
    .line 208
    .line 209
    invoke-static {p1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 210
    return-void

    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
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

    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
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

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 11
    return p1
.end method

.method private printMatrix([F)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x4

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    mul-int/lit8 v2, v0, 0x4

    .line 12
    .line 13
    aget v3, p1, v2

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v3, " "

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    add-int/lit8 v4, v2, 0x1

    .line 24
    .line 25
    aget v4, p1, v4

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    add-int/lit8 v4, v2, 0x2

    .line 34
    .line 35
    aget v4, p1, v4

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x3

    .line 44
    .line 45
    aget v2, p1, v2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    const-string v2, "TextureRenderer"

    .line 55
    .line 56
    .line 57
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(I)V
    .locals 8

    iget v0, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mProgram:I

    .line 1
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-boolean v0, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mOesTexture:Z

    if-eqz v0, :cond_0

    const v0, 0x8d65

    .line 3
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xde1

    .line 4
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :goto_0
    iget p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mProgram:I

    const-string v0, "position"

    .line 5
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    .line 6
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/narvii/video/faceunity/TextureRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    move v1, p1

    .line 7
    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mProgram:I

    const-string v1, "inputTextureCoordinate"

    .line 8
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 9
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x8

    iget-object v7, p0, Lcom/narvii/video/faceunity/TextureRenderer;->textureVerticesBuffer:Ljava/nio/FloatBuffer;

    move v2, v0

    .line 10
    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->muMVPMatrixHandle:I

    iget-object v2, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mMVPMatrix:[F

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 11
    invoke-static {v1, v3, v4, v2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->muSTMatrixHandle:I

    iget-object v2, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mSTMatrix:[F

    .line 12
    invoke-static {v1, v3, v4, v2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->drawOrder:[S

    .line 13
    array-length v1, v1

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/narvii/video/faceunity/TextureRenderer;->drawListBuffer:Ljava/nio/ShortBuffer;

    const/4 v5, 0x4

    invoke-static {v5, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 14
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 15
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 16
    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public draw(I[F)V
    .locals 3

    const/4 v0, 0x0

    .line 17
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mSTMatrix:[F

    .line 18
    aget v2, p2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/video/faceunity/TextureRenderer;->draw(I)V

    return-void
.end method

.method public rotate(I)V
    .locals 4

    .line 1
    int-to-double v0, p1

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const-wide v2, 0x4066800000000000L    # 180.0

    .line 7
    div-double/2addr v0, v2

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    .line 13
    mul-double/2addr v0, v2

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mMVPMatrix:[F

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 19
    move-result-wide v2

    .line 20
    double-to-float v2, v2

    .line 21
    const/4 v3, 0x0

    .line 22
    .line 23
    aput v2, p1, v3

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mMVPMatrix:[F

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 29
    move-result-wide v2

    .line 30
    double-to-float v2, v2

    .line 31
    neg-float v2, v2

    .line 32
    const/4 v3, 0x1

    .line 33
    .line 34
    aput v2, p1, v3

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mMVPMatrix:[F

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 40
    move-result-wide v2

    .line 41
    double-to-float v2, v2

    .line 42
    const/4 v3, 0x4

    .line 43
    .line 44
    aput v2, p1, v3

    .line 45
    .line 46
    iget-object p1, p0, Lcom/narvii/video/faceunity/TextureRenderer;->mMVPMatrix:[F

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 50
    move-result-wide v0

    .line 51
    double-to-float v0, v0

    .line 52
    const/4 v1, 0x5

    .line 53
    .line 54
    aput v0, p1, v1

    .line 55
    return-void
.end method
