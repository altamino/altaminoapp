.class public Lcom/narvii/chat/p2a/encoder/Watermark;
.super Ljava/lang/Object;
.source "Watermark.java"


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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->textureId:I

    .line 29
    iput v0, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->sp_Image:I

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 33
    iput-object v0, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->mtx:[F

    .line 36
    iput-object p1, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->bitmap:Landroid/graphics/Bitmap;

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->width:I

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->height:I

    return-void
.end method

.method private static loadShader(ILjava/lang/String;)I
    .locals 0

    .line 253
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    .line 256
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 257
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    return p0
.end method


# virtual methods
.method public destory()V
    .locals 4

    .line 142
    iget v0, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->textureId:I

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 144
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 145
    iget v0, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->sp_Image:I

    iget v1, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->fragmentShader:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glDetachShader(II)V

    .line 146
    iget v0, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->sp_Image:I

    iget v1, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->vertexShader:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glDetachShader(II)V

    .line 147
    iget v0, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->fragmentShader:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 148
    iget v0, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->vertexShader:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 149
    iget v0, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->sp_Image:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :cond_0
    const/4 v0, -0x2

    .line 151
    iput v0, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->textureId:I

    return-void
.end method

.method public draw()V
    .locals 13

    .line 155
    iget v0, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->textureId:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xbe2

    .line 159
    invoke-static {v0}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 161
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v3, 0x303

    .line 162
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 165
    :cond_1
    iget v3, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->textureId:I

    const/16 v4, 0xde1

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 168
    iget v3, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->sp_Image:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 171
    iget v3, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->sp_Image:I

    const-string/jumbo v5, "vPosition"

    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    .line 174
    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v7, 0x3

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 177
    iget-object v11, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->vertexBuffer:Ljava/nio/FloatBuffer;

    move v6, v3

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 182
    iget v5, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->sp_Image:I

    const-string v6, "a_texCoord"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v5

    .line 185
    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v11, 0x0

    .line 188
    iget-object v12, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->uvBuffer:Ljava/nio/FloatBuffer;

    move v7, v5

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 193
    iget v6, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->sp_Image:I

    const-string/jumbo v7, "uMVPMatrix"

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    .line 196
    iget-object v7, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->mtx:[F

    const/4 v8, 0x0

    invoke-static {v6, v2, v8, v7, v8}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 199
    iget v2, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->sp_Image:I

    const-string v6, "s_texture"

    invoke-static {v2, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    .line 202
    invoke-static {v2, v8}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 v2, 0x4

    const/4 v6, 0x6

    const/16 v7, 0x1403

    .line 205
    iget-object v9, p0, Lcom/narvii/chat/p2a/encoder/Watermark;->drawListBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v2, v6, v7, v9}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 208
    invoke-static {v3}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 209
    invoke-static {v5}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 211
    invoke-static {v4, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 214
    invoke-static {v8}, Landroid/opengl/GLES20;->glUseProgram(I)V

    if-nez v1, :cond_2

    .line 217
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    :cond_2
    return-void
.end method

.method public isReady()Z
    .locals 1

    .line 42
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
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 46
    iget v3, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->textureId:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-ne v3, v7, :cond_0

    .line 47
    iget-object v3, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 48
    iget-object v7, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/16 v8, 0xc

    new-array v8, v8, [F

    aput v6, v8, v5

    int-to-float v7, v7

    aput v7, v8, v4

    const/4 v9, 0x2

    aput v6, v8, v9

    const/4 v10, 0x3

    aput v6, v8, v10

    const/4 v10, 0x4

    aput v6, v8, v10

    const/4 v11, 0x5

    aput v6, v8, v11

    int-to-float v3, v3

    const/4 v11, 0x6

    aput v3, v8, v11

    const/4 v12, 0x7

    aput v6, v8, v12

    const/16 v12, 0x8

    aput v6, v8, v12

    const/16 v13, 0x9

    aput v3, v8, v13

    const/16 v3, 0xa

    aput v7, v8, v3

    const/16 v3, 0xb

    aput v6, v8, v3

    new-array v3, v11, [S

    .line 57
    fill-array-data v3, :array_0

    .line 60
    array-length v7, v8

    mul-int/lit8 v7, v7, 0x4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 61
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 62
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    iput-object v7, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 63
    iget-object v7, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 64
    iget-object v7, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 67
    array-length v7, v3

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 68
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 69
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v7

    iput-object v7, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->drawListBuffer:Ljava/nio/ShortBuffer;

    .line 70
    iget-object v7, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->drawListBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v7, v3}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 71
    iget-object v3, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->drawListBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    new-array v3, v12, [F

    .line 74
    fill-array-data v3, :array_1

    .line 82
    array-length v7, v3

    mul-int/lit8 v7, v7, 0x4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 83
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 84
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    iput-object v7, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->uvBuffer:Ljava/nio/FloatBuffer;

    .line 85
    iget-object v7, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->uvBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 86
    iget-object v3, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->uvBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    new-array v3, v4, [I

    .line 90
    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 93
    aget v7, v3, v5

    const/16 v8, 0xde1

    invoke-static {v8, v7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v7, 0x2801

    const/16 v9, 0x2601

    .line 95
    invoke-static {v8, v7, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v7, 0x2800

    .line 96
    invoke-static {v8, v7, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 99
    iget-object v7, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v8, v5, v7, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 100
    aget v3, v3, v5

    iput v3, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->textureId:I

    .line 102
    iget v3, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->sp_Image:I

    if-gez v3, :cond_0

    const v3, 0x8b31

    const-string/jumbo v7, "uniform mat4 uMVPMatrix;attribute vec4 vPosition;attribute vec2 a_texCoord;varying vec2 v_texCoord;void main() {  gl_Position = uMVPMatrix * vPosition;  v_texCoord = a_texCoord;}"

    .line 104
    invoke-static {v3, v7}, Lcom/narvii/chat/p2a/encoder/Watermark;->loadShader(ILjava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->vertexShader:I

    const v3, 0x8b30

    const-string v7, "precision mediump float;varying vec2 v_texCoord;uniform sampler2D s_texture;void main() {  gl_FragColor = texture2D( s_texture, v_texCoord );}"

    .line 105
    invoke-static {v3, v7}, Lcom/narvii/chat/p2a/encoder/Watermark;->loadShader(ILjava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->fragmentShader:I

    .line 107
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    iput v3, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->sp_Image:I

    .line 108
    iget v3, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->sp_Image:I

    iget v7, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->vertexShader:I

    invoke-static {v3, v7}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 109
    iget v3, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->sp_Image:I

    iget v7, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->fragmentShader:I

    invoke-static {v3, v7}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 110
    iget v3, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->sp_Image:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 111
    iget v3, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->sp_Image:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 115
    :cond_0
    iget v3, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->surfaceWidth:I

    if-ne v1, v3, :cond_1

    iget v3, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->surfaceHeight:I

    if-eq v2, v3, :cond_2

    .line 116
    :cond_1
    iput v1, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->surfaceWidth:I

    .line 117
    iput v2, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->surfaceHeight:I

    const/16 v3, 0x10

    new-array v15, v3, [F

    new-array v3, v3, [F

    .line 121
    invoke-static {v15, v6}, Ljava/util/Arrays;->fill([FF)V

    .line 122
    invoke-static {v3, v6}, Ljava/util/Arrays;->fill([FF)V

    .line 123
    iget-object v7, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->mtx:[F

    invoke-static {v7, v6}, Ljava/util/Arrays;->fill([FF)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    int-to-float v10, v1

    const/4 v11, 0x0

    int-to-float v12, v2

    const/4 v13, 0x0

    const/high16 v14, 0x42480000    # 50.0f

    move-object v7, v15

    .line 126
    invoke-static/range {v7 .. v14}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    const/16 v26, 0x0

    move-object/from16 v16, v3

    .line 129
    invoke-static/range {v16 .. v26}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 132
    iget-object v7, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->mtx:[F

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v9, v15

    move-object v11, v3

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 135
    iget-object v1, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->mtx:[F

    const/high16 v3, 0x41900000    # 18.0f

    iget v7, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->height:I

    sub-int/2addr v2, v7

    add-int/lit8 v2, v2, -0x12

    int-to-float v2, v2

    invoke-static {v1, v5, v3, v2, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 138
    :cond_2
    iget v1, v0, Lcom/narvii/chat/p2a/encoder/Watermark;->textureId:I

    if-ltz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    return v4

    nop

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
    .end array-data

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
