.class public Lcom/narvii/video/gles/Texture2dProgram;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/gles/Texture2dProgram$ProgramType;
    }
.end annotation


# static fields
.field private static final FRAGMENT_SHADER_2D:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final FRAGMENT_SHADER_EXT:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final FRAGMENT_SHADER_EXT_BW:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    vec4 tc = texture2D(sTexture, vTextureCoord);\n    float color = tc.r * 0.3 + tc.g * 0.59 + tc.b * 0.11;\n    gl_FragColor = vec4(color, color, color, 1.0);\n}\n"

.field private static final FRAGMENT_SHADER_EXT_FILT:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\n#define KERNEL_SIZE 9\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform float uKernel[KERNEL_SIZE];\nuniform vec2 uTexOffset[KERNEL_SIZE];\nuniform float uColorAdjust;\nvoid main() {\n    int i = 0;\n    vec4 sum = vec4(0.0);\n    if (vTextureCoord.x < vTextureCoord.y - 0.005) {\n        for (i = 0; i < KERNEL_SIZE; i++) {\n            vec4 texc = texture2D(sTexture, vTextureCoord + uTexOffset[i]);\n            sum += texc * uKernel[i];\n        }\n    sum += uColorAdjust;\n    } else if (vTextureCoord.x > vTextureCoord.y + 0.005) {\n        sum = texture2D(sTexture, vTextureCoord);\n    } else {\n        sum.r = 1.0;\n    }\n    gl_FragColor = sum;\n}\n"

.field public static final KERNEL_SIZE:I = 0x9

.field private static final TAG:Ljava/lang/String; = "Grafika"

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"


# instance fields
.field private mColorAdjust:F

.field private mKernel:[F

.field private mProgramHandle:I

.field private mProgramType:Lcom/narvii/video/gles/Texture2dProgram$ProgramType;

.field private mTexOffset:[F

.field private mTextureTarget:I

.field private maPositionLoc:I

.field private maTextureCoordLoc:I

.field private muColorAdjustLoc:I

.field private muKernelLoc:I

.field private muMVPMatrixLoc:I

.field private muTexMatrixLoc:I

.field private muTexOffsetLoc:I


# direct methods
.method public constructor <init>(Lcom/narvii/video/gles/Texture2dProgram$ProgramType;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0x9

    .line 6
    .line 7
    new-array v1, v0, [F

    .line 8
    .line 9
    iput-object v1, p0, Lcom/narvii/video/gles/Texture2dProgram;->mKernel:[F

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/video/gles/Texture2dProgram;->mProgramType:Lcom/narvii/video/gles/Texture2dProgram$ProgramType;

    .line 12
    .line 13
    sget-object v1, Lcom/narvii/video/gles/Texture2dProgram$1;->$SwitchMap$com$narvii$video$gles$Texture2dProgram$ProgramType:[I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 17
    move-result v2

    .line 18
    .line 19
    aget v1, v1, v2

    .line 20
    const/4 v2, 0x1

    .line 21
    .line 22
    .line 23
    const-string/jumbo v3, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    .line 24
    .line 25
    if-eq v1, v2, :cond_3

    .line 26
    const/4 v2, 0x2

    .line 27
    .line 28
    .line 29
    const v4, 0x8d65

    .line 30
    .line 31
    if-eq v1, v2, :cond_2

    .line 32
    const/4 v2, 0x3

    .line 33
    .line 34
    if-eq v1, v2, :cond_1

    .line 35
    const/4 v2, 0x4

    .line 36
    .line 37
    if-ne v1, v2, :cond_0

    .line 38
    .line 39
    iput v4, p0, Lcom/narvii/video/gles/Texture2dProgram;->mTextureTarget:I

    .line 40
    .line 41
    const-string v1, "#extension GL_OES_EGL_image_external : require\n#define KERNEL_SIZE 9\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform float uKernel[KERNEL_SIZE];\nuniform vec2 uTexOffset[KERNEL_SIZE];\nuniform float uColorAdjust;\nvoid main() {\n    int i = 0;\n    vec4 sum = vec4(0.0);\n    if (vTextureCoord.x < vTextureCoord.y - 0.005) {\n        for (i = 0; i < KERNEL_SIZE; i++) {\n            vec4 texc = texture2D(sTexture, vTextureCoord + uTexOffset[i]);\n            sum += texc * uKernel[i];\n        }\n    sum += uColorAdjust;\n    } else if (vTextureCoord.x > vTextureCoord.y + 0.005) {\n        sum = texture2D(sTexture, vTextureCoord);\n    } else {\n        sum.r = 1.0;\n    }\n    gl_FragColor = sum;\n}\n"

    .line 42
    .line 43
    .line 44
    invoke-static {v3, v1}, Lcom/narvii/video/gles/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    move-result v1

    .line 46
    .line 47
    iput v1, p0, Lcom/narvii/video/gles/Texture2dProgram;->mProgramHandle:I

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    const-string v2, "Unhandled type "

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 71
    throw v0

    .line 72
    .line 73
    :cond_1
    iput v4, p0, Lcom/narvii/video/gles/Texture2dProgram;->mTextureTarget:I

    .line 74
    .line 75
    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    vec4 tc = texture2D(sTexture, vTextureCoord);\n    float color = tc.r * 0.3 + tc.g * 0.59 + tc.b * 0.11;\n    gl_FragColor = vec4(color, color, color, 1.0);\n}\n"

    .line 76
    .line 77
    .line 78
    invoke-static {v3, v1}, Lcom/narvii/video/gles/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    move-result v1

    .line 80
    .line 81
    iput v1, p0, Lcom/narvii/video/gles/Texture2dProgram;->mProgramHandle:I

    .line 82
    goto :goto_0

    .line 83
    .line 84
    :cond_2
    iput v4, p0, Lcom/narvii/video/gles/Texture2dProgram;->mTextureTarget:I

    .line 85
    .line 86
    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 87
    .line 88
    .line 89
    invoke-static {v3, v1}, Lcom/narvii/video/gles/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    move-result v1

    .line 91
    .line 92
    iput v1, p0, Lcom/narvii/video/gles/Texture2dProgram;->mProgramHandle:I

    .line 93
    goto :goto_0

    .line 94
    .line 95
    :cond_3
    const/16 v1, 0xde1

    .line 96
    .line 97
    iput v1, p0, Lcom/narvii/video/gles/Texture2dProgram;->mTextureTarget:I

    .line 98
    .line 99
    const-string v1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 100
    .line 101
    .line 102
    invoke-static {v3, v1}, Lcom/narvii/video/gles/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    move-result v1

    .line 104
    .line 105
    iput v1, p0, Lcom/narvii/video/gles/Texture2dProgram;->mProgramHandle:I

    .line 106
    .line 107
    :goto_0
    iget v1, p0, Lcom/narvii/video/gles/Texture2dProgram;->mProgramHandle:I

    .line 108
    .line 109
    if-eqz v1, :cond_5

    .line 110
    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    const-string v2, "Created program "

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    iget v2, p0, Lcom/narvii/video/gles/Texture2dProgram;->mProgramHandle:I

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v2, " ("

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string p1, ")"

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object p1

    .line 142
    .line 143
    const-string v1, "Grafika"

    .line 144
    .line 145
    .line 146
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    iget p1, p0, Lcom/narvii/video/gles/Texture2dProgram;->mProgramHandle:I

    .line 149
    .line 150
    const-string v1, "aPosition"

    .line 151
    .line 152
    .line 153
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 154
    move-result p1

    .line 155
    .line 156
    iput p1, p0, Lcom/narvii/video/gles/Texture2dProgram;->maPositionLoc:I

    .line 157
    .line 158
    .line 159
    invoke-static {p1, v1}, Lcom/narvii/video/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 160
    .line 161
    iget p1, p0, Lcom/narvii/video/gles/Texture2dProgram;->mProgramHandle:I

    .line 162
    .line 163
    const-string v1, "aTextureCoord"

    .line 164
    .line 165
    .line 166
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 167
    move-result p1

    .line 168
    .line 169
    iput p1, p0, Lcom/narvii/video/gles/Texture2dProgram;->maTextureCoordLoc:I

    .line 170
    .line 171
    .line 172
    invoke-static {p1, v1}, Lcom/narvii/video/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 173
    .line 174
    iget p1, p0, Lcom/narvii/video/gles/Texture2dProgram;->mProgramHandle:I

    .line 175
    .line 176
    .line 177
    const-string/jumbo v1, "uMVPMatrix"

    .line 178
    .line 179
    .line 180
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 181
    move-result p1

    .line 182
    .line 183
    iput p1, p0, Lcom/narvii/video/gles/Texture2dProgram;->muMVPMatrixLoc:I

    .line 184
    .line 185
    .line 186
    invoke-static {p1, v1}, Lcom/narvii/video/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 187
    .line 188
    iget p1, p0, Lcom/narvii/video/gles/Texture2dProgram;->mProgramHandle:I

    .line 189
    .line 190
    .line 191
    const-string/jumbo v1, "uTexMatrix"

    .line 192
    .line 193
    .line 194
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 195
    move-result p1

    .line 196
    .line 197
    iput p1, p0, Lcom/narvii/video/gles/Texture2dProgram;->muTexMatrixLoc:I

    .line 198
    .line 199
    .line 200
    invoke-static {p1, v1}, Lcom/narvii/video/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 201
    .line 202
    iget p1, p0, Lcom/narvii/video/gles/Texture2dProgram;->mProgramHandle:I

    .line 203
    .line 204
    .line 205
    const-string/jumbo v1, "uKernel"

    .line 206
    .line 207
    .line 208
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 209
    move-result p1

    .line 210
    .line 211
    iput p1, p0, Lcom/narvii/video/gles/Texture2dProgram;->muKernelLoc:I

    .line 212
    .line 213
    if-gez p1, :cond_4

    .line 214
    const/4 p1, -0x1

    .line 215
    .line 216
    iput p1, p0, Lcom/narvii/video/gles/Texture2dProgram;->muKernelLoc:I

    .line 217
    .line 218
    iput p1, p0, Lcom/narvii/video/gles/Texture2dProgram;->muTexOffsetLoc:I

    .line 219
    .line 220
    iput p1, p0, Lcom/narvii/video/gles/Texture2dProgram;->muColorAdjustLoc:I

    .line 221
    goto :goto_1

    .line 222
    .line 223
    :cond_4
    iget p1, p0, Lcom/narvii/video/gles/Texture2dProgram;->mProgramHandle:I

    .line 224
    .line 225
    .line 226
    const-string/jumbo v1, "uTexOffset"

    .line 227
    .line 228
    .line 229
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 230
    move-result p1

    .line 231
    .line 232
    iput p1, p0, Lcom/narvii/video/gles/Texture2dProgram;->muTexOffsetLoc:I

    .line 233
    .line 234
    .line 235
    invoke-static {p1, v1}, Lcom/narvii/video/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 236
    .line 237
    iget p1, p0, Lcom/narvii/video/gles/Texture2dProgram;->mProgramHandle:I

    .line 238
    .line 239
    .line 240
    const-string/jumbo v1, "uColorAdjust"

    .line 241
    .line 242
    .line 243
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 244
    move-result p1

    .line 245
    .line 246
    iput p1, p0, Lcom/narvii/video/gles/Texture2dProgram;->muColorAdjustLoc:I

    .line 247
    .line 248
    .line 249
    invoke-static {p1, v1}, Lcom/narvii/video/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 250
    .line 251
    new-array p1, v0, [F

    .line 252
    .line 253
    .line 254
    fill-array-data p1, :array_0

    .line 255
    const/4 v0, 0x0

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0, p1, v0}, Lcom/narvii/video/gles/Texture2dProgram;->setKernel([FF)V

    .line 259
    .line 260
    const/16 p1, 0x100

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0, p1, p1}, Lcom/narvii/video/gles/Texture2dProgram;->setTexSize(II)V

    .line 264
    :goto_1
    return-void

    .line 265
    .line 266
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    .line 267
    .line 268
    const-string v0, "Unable to create program"

    .line 269
    .line 270
    .line 271
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 272
    throw p1

    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public createTextureObject()I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 8
    .line 9
    const-string v0, "glGenTextures"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 13
    .line 14
    aget v0, v1, v2

    .line 15
    .line 16
    iget v1, p0, Lcom/narvii/video/gles/Texture2dProgram;->mTextureTarget:I

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    const-string v2, "glBindTexture "

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 40
    .line 41
    const/16 v1, 0x2801

    .line 42
    .line 43
    const/high16 v2, 0x46180000    # 9728.0f

    .line 44
    .line 45
    .line 46
    const v3, 0x8d65

    .line 47
    .line 48
    .line 49
    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 50
    .line 51
    const/16 v1, 0x2800

    .line 52
    .line 53
    .line 54
    const v2, 0x46180400    # 9729.0f

    .line 55
    .line 56
    .line 57
    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 58
    .line 59
    const/16 v1, 0x2802

    .line 60
    .line 61
    .line 62
    const v2, 0x812f

    .line 63
    .line 64
    .line 65
    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 66
    .line 67
    const/16 v1, 0x2803

    .line 68
    .line 69
    .line 70
    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 71
    .line 72
    const-string v1, "glTexParameter"

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 76
    return v0
.end method

.method public draw([FLjava/nio/FloatBuffer;IIII[FLjava/nio/FloatBuffer;II)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    const-string v1, "draw start"

    .line 4
    .line 5
    .line 6
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 7
    .line 8
    iget v1, v0, Lcom/narvii/video/gles/Texture2dProgram;->mProgramHandle:I

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 12
    .line 13
    const-string v1, "glUseProgram"

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const v1, 0x84c0

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 23
    .line 24
    iget v1, v0, Lcom/narvii/video/gles/Texture2dProgram;->mTextureTarget:I

    .line 25
    .line 26
    move/from16 v2, p9

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 30
    .line 31
    iget v1, v0, Lcom/narvii/video/gles/Texture2dProgram;->muMVPMatrixLoc:I

    .line 32
    const/4 v2, 0x1

    .line 33
    const/4 v3, 0x0

    .line 34
    move-object v4, p1

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v2, v3, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 38
    .line 39
    const-string v1, "glUniformMatrix4fv"

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 43
    .line 44
    iget v4, v0, Lcom/narvii/video/gles/Texture2dProgram;->muTexMatrixLoc:I

    .line 45
    .line 46
    move-object/from16 v5, p7

    .line 47
    .line 48
    .line 49
    invoke-static {v4, v2, v3, v5, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 50
    .line 51
    .line 52
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 53
    .line 54
    iget v1, v0, Lcom/narvii/video/gles/Texture2dProgram;->maPositionLoc:I

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 58
    .line 59
    const-string v1, "glEnableVertexAttribArray"

    .line 60
    .line 61
    .line 62
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 63
    .line 64
    iget v4, v0, Lcom/narvii/video/gles/Texture2dProgram;->maPositionLoc:I

    .line 65
    .line 66
    const/16 v6, 0x1406

    .line 67
    const/4 v7, 0x0

    .line 68
    .line 69
    move/from16 v5, p5

    .line 70
    .line 71
    move/from16 v8, p6

    .line 72
    move-object v9, p2

    .line 73
    .line 74
    .line 75
    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 76
    .line 77
    const-string v2, "glVertexAttribPointer"

    .line 78
    .line 79
    .line 80
    invoke-static {v2}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 81
    .line 82
    iget v4, v0, Lcom/narvii/video/gles/Texture2dProgram;->maTextureCoordLoc:I

    .line 83
    .line 84
    .line 85
    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 86
    .line 87
    .line 88
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 89
    .line 90
    iget v5, v0, Lcom/narvii/video/gles/Texture2dProgram;->maTextureCoordLoc:I

    .line 91
    const/4 v6, 0x2

    .line 92
    .line 93
    const/16 v7, 0x1406

    .line 94
    const/4 v8, 0x0

    .line 95
    .line 96
    move/from16 v9, p10

    .line 97
    .line 98
    move-object/from16 v10, p8

    .line 99
    .line 100
    .line 101
    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v2}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 105
    .line 106
    iget v1, v0, Lcom/narvii/video/gles/Texture2dProgram;->muKernelLoc:I

    .line 107
    .line 108
    if-ltz v1, :cond_0

    .line 109
    .line 110
    iget-object v2, v0, Lcom/narvii/video/gles/Texture2dProgram;->mKernel:[F

    .line 111
    .line 112
    const/16 v4, 0x9

    .line 113
    .line 114
    .line 115
    invoke-static {v1, v4, v2, v3}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    .line 116
    .line 117
    iget v1, v0, Lcom/narvii/video/gles/Texture2dProgram;->muTexOffsetLoc:I

    .line 118
    .line 119
    iget-object v2, v0, Lcom/narvii/video/gles/Texture2dProgram;->mTexOffset:[F

    .line 120
    .line 121
    .line 122
    invoke-static {v1, v4, v2, v3}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    .line 123
    .line 124
    iget v1, v0, Lcom/narvii/video/gles/Texture2dProgram;->muColorAdjustLoc:I

    .line 125
    .line 126
    iget v2, v0, Lcom/narvii/video/gles/Texture2dProgram;->mColorAdjust:F

    .line 127
    .line 128
    .line 129
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 130
    :cond_0
    const/4 v1, 0x5

    .line 131
    move v2, p3

    .line 132
    move v4, p4

    .line 133
    .line 134
    .line 135
    invoke-static {v1, p3, p4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 136
    .line 137
    const-string v1, "glDrawArrays"

    .line 138
    .line 139
    .line 140
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 141
    .line 142
    iget v1, v0, Lcom/narvii/video/gles/Texture2dProgram;->maPositionLoc:I

    .line 143
    .line 144
    .line 145
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 146
    .line 147
    iget v1, v0, Lcom/narvii/video/gles/Texture2dProgram;->maTextureCoordLoc:I

    .line 148
    .line 149
    .line 150
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 151
    .line 152
    iget v1, v0, Lcom/narvii/video/gles/Texture2dProgram;->mTextureTarget:I

    .line 153
    .line 154
    .line 155
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 156
    .line 157
    .line 158
    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 159
    return-void
.end method

.method public getProgramType()Lcom/narvii/video/gles/Texture2dProgram$ProgramType;
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/gles/Texture2dProgram;->mProgramType:Lcom/narvii/video/gles/Texture2dProgram$ProgramType;

    return-object v0
.end method

.method public release()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "deleting program "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v1, p0, Lcom/narvii/video/gles/Texture2dProgram;->mProgramHandle:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    const-string v1, "Grafika"

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    iget v0, p0, Lcom/narvii/video/gles/Texture2dProgram;->mProgramHandle:I

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 30
    const/4 v0, -0x1

    .line 31
    .line 32
    iput v0, p0, Lcom/narvii/video/gles/Texture2dProgram;->mProgramHandle:I

    .line 33
    return-void
.end method

.method public setKernel([FF)V
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/gles/Texture2dProgram;->mKernel:[F

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    .line 13
    iput p2, p0, Lcom/narvii/video/gles/Texture2dProgram;->mColorAdjust:F

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    const-string v2, "Kernel size is "

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    array-length p1, p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string p1, " vs. "

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p2
.end method

.method public setTexSize(II)V
    .locals 5

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float p1, v0, p1

    int-to-float p2, p2

    div-float/2addr v0, p2

    const/16 p2, 0x12

    new-array p2, p2, [F

    neg-float v1, p1

    const/4 v2, 0x0

    aput v1, p2, v2

    neg-float v2, v0

    const/4 v3, 0x1

    aput v2, p2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v4, p2, v3

    const/4 v3, 0x3

    aput v2, p2, v3

    const/4 v3, 0x4

    aput p1, p2, v3

    const/4 v3, 0x5

    aput v2, p2, v3

    const/4 v2, 0x6

    aput v1, p2, v2

    const/4 v2, 0x7

    aput v4, p2, v2

    const/16 v2, 0x8

    aput v4, p2, v2

    const/16 v2, 0x9

    aput v4, p2, v2

    const/16 v2, 0xa

    aput p1, p2, v2

    const/16 v2, 0xb

    aput v4, p2, v2

    const/16 v2, 0xc

    aput v1, p2, v2

    const/16 v1, 0xd

    aput v0, p2, v1

    const/16 v1, 0xe

    aput v4, p2, v1

    const/16 v1, 0xf

    aput v0, p2, v1

    const/16 v1, 0x10

    aput p1, p2, v1

    const/16 p1, 0x11

    aput v0, p2, p1

    iput-object p2, p0, Lcom/narvii/video/gles/Texture2dProgram;->mTexOffset:[F

    return-void
.end method
