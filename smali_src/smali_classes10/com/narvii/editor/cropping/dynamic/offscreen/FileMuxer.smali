.class public final Lcom/narvii/editor/cropping/dynamic/offscreen/FileMuxer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/narvii/editor/cropping/dynamic/offscreen/FileMuxer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "FileMuxer"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/editor/cropping/dynamic/offscreen/FileMuxer;

    invoke-direct {v0}, Lcom/narvii/editor/cropping/dynamic/offscreen/FileMuxer;-><init>()V

    sput-object v0, Lcom/narvii/editor/cropping/dynamic/offscreen/FileMuxer;->INSTANCE:Lcom/narvii/editor/cropping/dynamic/offscreen/FileMuxer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final muxeVideoAndAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    move-object/from16 v2, p3

    .line 7
    .line 8
    const-string v3, "audioPath"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v3, "videoPath"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    const-string v3, "destPath"

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    new-instance v3, Landroid/media/MediaMuxer;

    .line 24
    const/4 v4, 0x0

    .line 25
    .line 26
    .line 27
    invoke-direct {v3, v2, v4}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    .line 28
    .line 29
    const/high16 v2, 0x100000

    .line 30
    .line 31
    .line 32
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    new-instance v5, Landroid/media/MediaExtractor;

    .line 36
    .line 37
    .line 38
    invoke-direct {v5}, Landroid/media/MediaExtractor;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getTrackCount()I

    .line 45
    move-result v6

    .line 46
    move v7, v4

    .line 47
    :goto_0
    const/4 v8, 0x0

    .line 48
    const/4 v9, 0x2

    .line 49
    .line 50
    const-string v10, "mime"

    .line 51
    const/4 v11, 0x1

    .line 52
    .line 53
    const-string v12, "getTrackFormat(...)"

    .line 54
    const/4 v13, -0x1

    .line 55
    .line 56
    if-ge v7, v6, :cond_1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v7}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    .line 60
    move-result-object v14

    .line 61
    .line 62
    .line 63
    invoke-static {v14, v12}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v14, v10}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object v14

    .line 68
    .line 69
    if-eqz v14, :cond_0

    .line 70
    .line 71
    const-string v15, "audio"

    .line 72
    .line 73
    .line 74
    invoke-static {v14, v15, v4, v9, v8}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 75
    move-result v14

    .line 76
    .line 77
    if-ne v14, v11, :cond_0

    .line 78
    goto :goto_1

    .line 79
    .line 80
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    move v7, v13

    .line 83
    .line 84
    :goto_1
    const-string v6, "FileMuxer"

    .line 85
    .line 86
    if-ne v7, v13, :cond_2

    .line 87
    .line 88
    new-instance v14, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    const-string v15, "no audio track : "

    .line 94
    .line 95
    .line 96
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    .line 106
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    goto :goto_2

    .line 108
    .line 109
    .line 110
    :cond_2
    invoke-virtual {v5, v7}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v12}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5, v7}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    .line 121
    move-result v7

    .line 122
    .line 123
    :goto_2
    new-instance v0, Landroid/media/MediaExtractor;

    .line 124
    .line 125
    .line 126
    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    .line 133
    move-result v14

    .line 134
    move v15, v4

    .line 135
    .line 136
    :goto_3
    if-ge v15, v14, :cond_4

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v15}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    .line 140
    move-result-object v13

    .line 141
    .line 142
    .line 143
    invoke-static {v13, v12}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v13, v10}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    move-result-object v13

    .line 148
    .line 149
    move-object/from16 v16, v10

    .line 150
    .line 151
    if-eqz v13, :cond_3

    .line 152
    .line 153
    const-string v10, "video/"

    .line 154
    .line 155
    .line 156
    invoke-static {v13, v10, v4, v9, v8}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 157
    move-result v10

    .line 158
    .line 159
    if-ne v10, v11, :cond_3

    .line 160
    const/4 v8, -0x1

    .line 161
    goto :goto_4

    .line 162
    .line 163
    :cond_3
    add-int/lit8 v15, v15, 0x1

    .line 164
    .line 165
    move-object/from16 v10, v16

    .line 166
    const/4 v13, -0x1

    .line 167
    goto :goto_3

    .line 168
    :cond_4
    const/4 v8, -0x1

    .line 169
    const/4 v15, -0x1

    .line 170
    .line 171
    :goto_4
    if-ne v15, v8, :cond_5

    .line 172
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    const-string v2, "no video track: "

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    move-result-object v0

    .line 189
    .line 190
    .line 191
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void

    .line 193
    .line 194
    .line 195
    :cond_5
    invoke-virtual {v0, v15}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v15}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    .line 199
    move-result-object v6

    .line 200
    .line 201
    .line 202
    invoke-static {v6, v12}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3, v6}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    .line 206
    move-result v6

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3}, Landroid/media/MediaMuxer;->start()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 213
    .line 214
    new-instance v8, Landroid/media/MediaCodec$BufferInfo;

    .line 215
    .line 216
    .line 217
    invoke-direct {v8}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 218
    .line 219
    const-wide/16 v9, 0x0

    .line 220
    .line 221
    iput-wide v9, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v2, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    .line 225
    move-result v11

    .line 226
    .line 227
    :goto_5
    if-lez v11, :cond_6

    .line 228
    .line 229
    iput v11, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    .line 233
    move-result v11

    .line 234
    .line 235
    iput v11, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 236
    .line 237
    iput v4, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    .line 241
    move-result-wide v11

    .line 242
    .line 243
    iput-wide v11, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3, v6, v2, v8}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v2, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    .line 253
    move-result v11

    .line 254
    goto :goto_5

    .line 255
    .line 256
    .line 257
    :cond_6
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 258
    .line 259
    new-instance v6, Landroid/media/MediaCodec$BufferInfo;

    .line 260
    .line 261
    .line 262
    invoke-direct {v6}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 263
    .line 264
    iput-wide v9, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 265
    .line 266
    .line 267
    invoke-virtual {v5, v2, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    .line 268
    move-result v8

    .line 269
    .line 270
    :goto_6
    if-lez v8, :cond_7

    .line 271
    .line 272
    iput v8, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 273
    .line 274
    .line 275
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleFlags()I

    .line 276
    move-result v8

    .line 277
    .line 278
    iput v8, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 279
    .line 280
    iput v4, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 281
    .line 282
    .line 283
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    .line 284
    move-result-wide v8

    .line 285
    .line 286
    iput-wide v8, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 287
    .line 288
    .line 289
    invoke-virtual {v3, v7, v2, v6}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->advance()Z

    .line 293
    .line 294
    .line 295
    invoke-virtual {v5, v2, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    .line 296
    move-result v8

    .line 297
    goto :goto_6

    .line 298
    .line 299
    .line 300
    :cond_7
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->release()V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v3}, Landroid/media/MediaMuxer;->stop()V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v3}, Landroid/media/MediaMuxer;->release()V

    .line 310
    .line 311
    new-instance v0, Ljava/io/File;

    .line 312
    .line 313
    .line 314
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 318
    move-result v1

    .line 319
    .line 320
    if-eqz v1, :cond_8

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 324
    :cond_8
    return-void
.end method
