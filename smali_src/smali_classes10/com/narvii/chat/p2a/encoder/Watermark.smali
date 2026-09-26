.class public Lcom/narvii/chat/p2a/encoder/Watermark;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final fs_Image:Ljava/lang/String; = "precision mediump float;varying vec2 v_texCoord;uniform sampler2D s_texture;void main() {  gl_FragColor = texture2D( s_texture, v_texCoord );}"

.field private static final vs_Image:Ljava/lang/String; = "uniform mat4 uMVPMatrix;attribute vec4 vPosition;attribute vec2 a_texCoord;varying vec2 v_texCoord;void main() {  gl_Position = uMVPMatrix * vPosition;  v_texCoord = a_texCoord;}"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private drawListBuffer:Ljava/nio/ShortBuffer;

.field private fragmentShader:I

.field private height:I

.field private mtx:[F

.field private sp_Image:I

.field private surfaceHeight:I

.field private surfaceWidth:I

.field private textureId:I

.field private uvBuffer:Ljava/nio/FloatBuffer;

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private vertexShader:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->textureId:I

    .line 7
    .line 8
    iput v0, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->sp_Image:I

    .line 9
    .line 10
    const/16 v0, 0x10

    .line 11
    .line 12
    new-array v0, v0, [F

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->mtx:[F

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->bitmap:Landroid/graphics/Bitmap;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 20
    move-result v0

    .line 21
    .line 22
    iput v0, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->width:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 26
    move-result p1

    .line 27
    .line 28
    iput p1, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->height:I

    .line 29
    return-void
.end method

.method private static loadShader(ILjava/lang/String;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 11
    return p0
.end method


# virtual methods
.method public destory()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->textureId:I

    .line 3
    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    .line 7
    filled-new-array {v0}, [I

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 14
    .line 15
    iget v0, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->sp_Image:I

    .line 16
    .line 17
    iget v1, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->fragmentShader:I

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glDetachShader(II)V

    .line 21
    .line 22
    iget v0, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->sp_Image:I

    .line 23
    .line 24
    iget v1, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->vertexShader:I

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glDetachShader(II)V

    .line 28
    .line 29
    iget v0, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->fragmentShader:I

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 33
    .line 34
    iget v0, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->vertexShader:I

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 38
    .line 39
    iget v0, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->sp_Image:I

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 43
    :cond_0
    const/4 v0, -0x2

    .line 44
    .line 45
    iput v0, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->textureId:I

    .line 46
    return-void
.end method

.method public draw()V
    .locals 13

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->textureId:I

    .line 3
    .line 4
    if-gez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    const/16 v0, 0xbe2

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 18
    .line 19
    const/16 v3, 0x303

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 23
    .line 24
    :cond_1
    iget v3, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->textureId:I

    .line 25
    .line 26
    const/16 v4, 0xde1

    .line 27
    .line 28
    .line 29
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 30
    .line 31
    iget v3, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->sp_Image:I

    .line 32
    .line 33
    .line 34
    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 35
    .line 36
    iget v3, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->sp_Image:I

    .line 37
    .line 38
    const-string v5, "vPosition"

    .line 39
    .line 40
    .line 41
    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 42
    move-result v3

    .line 43
    .line 44
    .line 45
    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 46
    const/4 v7, 0x3

    .line 47
    .line 48
    const/16 v8, 0x1406

    .line 49
    const/4 v9, 0x0

    .line 50
    const/4 v10, 0x0

    .line 51
    .line 52
    iget-object v11, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 53
    move v6, v3

    .line 54
    .line 55
    .line 56
    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 57
    .line 58
    iget v5, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->sp_Image:I

    .line 59
    .line 60
    const-string v6, "a_texCoord"

    .line 61
    .line 62
    .line 63
    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 64
    move-result v5

    .line 65
    .line 66
    .line 67
    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 68
    const/4 v8, 0x2

    .line 69
    .line 70
    const/16 v9, 0x1406

    .line 71
    const/4 v11, 0x0

    .line 72
    .line 73
    iget-object v12, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->uvBuffer:Ljava/nio/FloatBuffer;

    .line 74
    move v7, v5

    .line 75
    .line 76
    .line 77
    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 78
    .line 79
    iget v6, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->sp_Image:I

    .line 80
    .line 81
    const-string v7, "uMVPMatrix"

    .line 82
    .line 83
    .line 84
    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 85
    move-result v6

    .line 86
    .line 87
    iget-object v7, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->mtx:[F

    .line 88
    const/4 v8, 0x0

    .line 89
    .line 90
    .line 91
    invoke-static {v6, v2, v8, v7, v8}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 92
    .line 93
    iget v2, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->sp_Image:I

    .line 94
    .line 95
    const-string v6, "s_texture"

    .line 96
    .line 97
    .line 98
    invoke-static {v2, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 99
    move-result v2

    .line 100
    .line 101
    .line 102
    invoke-static {v2, v8}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 103
    .line 104
    const/16 v2, 0x1403

    .line 105
    .line 106
    iget-object v6, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->drawListBuffer:Ljava/nio/ShortBuffer;

    .line 107
    const/4 v7, 0x4

    .line 108
    const/4 v9, 0x6

    .line 109
    .line 110
    .line 111
    invoke-static {v7, v9, v2, v6}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v3}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 115
    .line 116
    .line 117
    invoke-static {v5}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 118
    .line 119
    .line 120
    invoke-static {v4, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 121
    .line 122
    .line 123
    invoke-static {v8}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 124
    .line 125
    if-nez v1, :cond_2

    .line 126
    .line 127
    .line 128
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 129
    :cond_2
    return-void
.end method

.method public isReady()Z
    .locals 1

    iget v0, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->textureId:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prepare(II)Z
    .locals 19

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v1, p1

    .line 5
    .line 6
    move/from16 v2, p2

    .line 7
    .line 8
    iget v3, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->textureId:I

    .line 9
    const/4 v4, -0x1

    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    .line 14
    if-ne v3, v4, :cond_0

    .line 15
    .line 16
    iget-object v3, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->bitmap:Landroid/graphics/Bitmap;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 20
    move-result v3

    .line 21
    .line 22
    iget-object v4, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->bitmap:Landroid/graphics/Bitmap;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 26
    move-result v4

    .line 27
    .line 28
    const/16 v8, 0xc

    .line 29
    .line 30
    new-array v9, v8, [F

    .line 31
    .line 32
    aput v7, v9, v6

    .line 33
    int-to-float v4, v4

    .line 34
    .line 35
    aput v4, v9, v5

    .line 36
    const/4 v10, 0x2

    .line 37
    .line 38
    aput v7, v9, v10

    .line 39
    const/4 v10, 0x3

    .line 40
    .line 41
    aput v7, v9, v10

    .line 42
    const/4 v10, 0x4

    .line 43
    .line 44
    aput v7, v9, v10

    .line 45
    const/4 v10, 0x5

    .line 46
    .line 47
    aput v7, v9, v10

    .line 48
    int-to-float v3, v3

    .line 49
    const/4 v10, 0x6

    .line 50
    .line 51
    aput v3, v9, v10

    .line 52
    const/4 v11, 0x7

    .line 53
    .line 54
    aput v7, v9, v11

    .line 55
    .line 56
    const/16 v11, 0x8

    .line 57
    .line 58
    aput v7, v9, v11

    .line 59
    .line 60
    const/16 v12, 0x9

    .line 61
    .line 62
    aput v3, v9, v12

    .line 63
    .line 64
    const/16 v3, 0xa

    .line 65
    .line 66
    aput v4, v9, v3

    .line 67
    .line 68
    const/16 v3, 0xb

    .line 69
    .line 70
    aput v7, v9, v3

    .line 71
    .line 72
    new-array v3, v10, [S

    .line 73
    .line 74
    .line 75
    fill-array-data v3, :array_0

    .line 76
    .line 77
    const/16 v4, 0x30

    .line 78
    .line 79
    .line 80
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 81
    move-result-object v4

    .line 82
    .line 83
    .line 84
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 85
    move-result-object v10

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 92
    move-result-object v4

    .line 93
    .line 94
    iput-object v4, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v9}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 98
    .line 99
    iget-object v4, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 103
    .line 104
    .line 105
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 106
    move-result-object v4

    .line 107
    .line 108
    .line 109
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 110
    move-result-object v8

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    .line 117
    move-result-object v4

    .line 118
    .line 119
    iput-object v4, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->drawListBuffer:Ljava/nio/ShortBuffer;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v3}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 123
    .line 124
    iget-object v3, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->drawListBuffer:Ljava/nio/ShortBuffer;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v6}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 128
    .line 129
    new-array v3, v11, [F

    .line 130
    .line 131
    .line 132
    fill-array-data v3, :array_1

    .line 133
    .line 134
    const/16 v4, 0x20

    .line 135
    .line 136
    .line 137
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 138
    move-result-object v4

    .line 139
    .line 140
    .line 141
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 142
    move-result-object v8

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 149
    move-result-object v4

    .line 150
    .line 151
    iput-object v4, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->uvBuffer:Ljava/nio/FloatBuffer;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 155
    .line 156
    iget-object v3, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->uvBuffer:Ljava/nio/FloatBuffer;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 160
    .line 161
    new-array v3, v5, [I

    .line 162
    .line 163
    .line 164
    invoke-static {v5, v3, v6}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 165
    .line 166
    aget v4, v3, v6

    .line 167
    .line 168
    const/16 v8, 0xde1

    .line 169
    .line 170
    .line 171
    invoke-static {v8, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 172
    .line 173
    const/16 v4, 0x2801

    .line 174
    .line 175
    const/16 v9, 0x2601

    .line 176
    .line 177
    .line 178
    invoke-static {v8, v4, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 179
    .line 180
    const/16 v4, 0x2800

    .line 181
    .line 182
    .line 183
    invoke-static {v8, v4, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 184
    .line 185
    iget-object v4, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->bitmap:Landroid/graphics/Bitmap;

    .line 186
    .line 187
    .line 188
    invoke-static {v8, v6, v4, v6}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 189
    .line 190
    aget v3, v3, v6

    .line 191
    .line 192
    iput v3, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->textureId:I

    .line 193
    .line 194
    iget v3, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->sp_Image:I

    .line 195
    .line 196
    if-gez v3, :cond_0

    .line 197
    .line 198
    .line 199
    const v3, 0x8b31

    .line 200
    .line 201
    const-string v4, "uniform mat4 uMVPMatrix;attribute vec4 vPosition;attribute vec2 a_texCoord;varying vec2 v_texCoord;void main() {  gl_Position = uMVPMatrix * vPosition;  v_texCoord = a_texCoord;}"

    .line 202
    .line 203
    .line 204
    invoke-static {v3, v4}, Lcom/narvii/chat/p2a/encoder/Watermark;->loadShader(ILjava/lang/String;)I

    .line 205
    move-result v3

    .line 206
    .line 207
    iput v3, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->vertexShader:I

    .line 208
    .line 209
    .line 210
    const v3, 0x8b30

    .line 211
    .line 212
    const-string v4, "precision mediump float;varying vec2 v_texCoord;uniform sampler2D s_texture;void main() {  gl_FragColor = texture2D( s_texture, v_texCoord );}"

    .line 213
    .line 214
    .line 215
    invoke-static {v3, v4}, Lcom/narvii/chat/p2a/encoder/Watermark;->loadShader(ILjava/lang/String;)I

    .line 216
    move-result v3

    .line 217
    .line 218
    iput v3, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->fragmentShader:I

    .line 219
    .line 220
    .line 221
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    .line 222
    move-result v3

    .line 223
    .line 224
    iput v3, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->sp_Image:I

    .line 225
    .line 226
    iget v4, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->vertexShader:I

    .line 227
    .line 228
    .line 229
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 230
    .line 231
    iget v3, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->sp_Image:I

    .line 232
    .line 233
    iget v4, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->fragmentShader:I

    .line 234
    .line 235
    .line 236
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 237
    .line 238
    iget v3, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->sp_Image:I

    .line 239
    .line 240
    .line 241
    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 242
    .line 243
    iget v3, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->sp_Image:I

    .line 244
    .line 245
    .line 246
    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 247
    .line 248
    :cond_0
    iget v3, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->surfaceWidth:I

    .line 249
    .line 250
    if-ne v1, v3, :cond_1

    .line 251
    .line 252
    iget v3, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->surfaceHeight:I

    .line 253
    .line 254
    if-eq v2, v3, :cond_2

    .line 255
    .line 256
    :cond_1
    iput v1, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->surfaceWidth:I

    .line 257
    .line 258
    iput v2, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->surfaceHeight:I

    .line 259
    .line 260
    const/16 v3, 0x10

    .line 261
    .line 262
    new-array v4, v3, [F

    .line 263
    .line 264
    new-array v3, v3, [F

    .line 265
    .line 266
    .line 267
    invoke-static {v4, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 268
    .line 269
    .line 270
    invoke-static {v3, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 271
    .line 272
    iget-object v8, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->mtx:[F

    .line 273
    .line 274
    .line 275
    invoke-static {v8, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 276
    const/4 v9, 0x0

    .line 277
    const/4 v10, 0x0

    .line 278
    int-to-float v11, v1

    .line 279
    const/4 v12, 0x0

    .line 280
    int-to-float v13, v2

    .line 281
    const/4 v14, 0x0

    .line 282
    .line 283
    const/high16 v15, 0x42480000    # 50.0f

    .line 284
    move-object v8, v4

    .line 285
    .line 286
    .line 287
    invoke-static/range {v8 .. v15}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 288
    const/4 v11, 0x0

    .line 289
    .line 290
    const/high16 v12, 0x3f800000    # 1.0f

    .line 291
    const/4 v13, 0x0

    .line 292
    const/4 v15, 0x0

    .line 293
    .line 294
    const/16 v16, 0x0

    .line 295
    .line 296
    const/high16 v17, 0x3f800000    # 1.0f

    .line 297
    .line 298
    const/16 v18, 0x0

    .line 299
    move-object v8, v3

    .line 300
    .line 301
    .line 302
    invoke-static/range {v8 .. v18}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 303
    .line 304
    iget-object v8, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->mtx:[F

    .line 305
    const/4 v11, 0x0

    .line 306
    const/4 v13, 0x0

    .line 307
    move-object v10, v4

    .line 308
    move-object v12, v3

    .line 309
    .line 310
    .line 311
    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 312
    .line 313
    iget-object v1, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->mtx:[F

    .line 314
    .line 315
    iget v3, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->height:I

    .line 316
    sub-int/2addr v2, v3

    .line 317
    .line 318
    add-int/lit8 v2, v2, -0x12

    .line 319
    int-to-float v2, v2

    .line 320
    .line 321
    const/high16 v3, 0x41900000    # 18.0f

    .line 322
    .line 323
    .line 324
    invoke-static {v1, v6, v3, v2, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 325
    .line 326
    :cond_2
    iget v1, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->textureId:I

    .line 327
    .line 328
    if-ltz v1, :cond_3

    .line 329
    goto :goto_0

    .line 330
    :cond_3
    move v5, v6

    .line 331
    :goto_0
    return v5

    .line 332
    nop

    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
    .end array-data

    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    :array_1
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
.end method
