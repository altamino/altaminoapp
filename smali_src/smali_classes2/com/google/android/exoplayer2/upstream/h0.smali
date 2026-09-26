.class public final Lcom/google/android/exoplayer2/upstream/h0;
.super Lcom/google/android/exoplayer2/upstream/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/h0$a;
    }
.end annotation


# static fields
.field public static final RAW_RESOURCE_SCHEME:Ljava/lang/String; = "rawresource"


# instance fields
.field private assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private bytesRemaining:J

.field private inputStream:Ljava/io/InputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private opened:Z

.field private final packageName:Ljava/lang/String;

.field private final resources:Landroid/content/res/Resources;

.field private uri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/f;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/h0;->resources:Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/h0;->packageName:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static buildRawResourceUri(I)Landroid/net/Uri;
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
    const-string v1, "rawresource:///"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method


# virtual methods
.method public c(Lcom/google/android/exoplayer2/upstream/o;)J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/h0$a;
        }
    .end annotation

    .line 1
    move-object v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/android/exoplayer2/upstream/o;->uri:Landroid/net/Uri;

    .line 6
    .line 7
    iput-object v2, v1, Lcom/google/android/exoplayer2/upstream/h0;->uri:Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 11
    move-result-object v3

    .line 12
    .line 13
    const-string v4, "rawresource"

    .line 14
    .line 15
    .line 16
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 17
    move-result v3

    .line 18
    .line 19
    const/16 v4, 0x3ec

    .line 20
    .line 21
    const/16 v5, 0x7d5

    .line 22
    const/4 v6, 0x1

    .line 23
    const/4 v7, 0x0

    .line 24
    .line 25
    if-nez v3, :cond_5

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    const-string v8, "android.resource"

    .line 32
    .line 33
    .line 34
    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 35
    move-result v3

    .line 36
    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    .line 44
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 45
    move-result v3

    .line 46
    .line 47
    if-ne v3, v6, :cond_0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    .line 54
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object v3

    .line 56
    .line 57
    check-cast v3, Ljava/lang/String;

    .line 58
    .line 59
    const-string v9, "\\d+"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 63
    move-result v3

    .line 64
    .line 65
    if-eqz v3, :cond_0

    .line 66
    goto :goto_1

    .line 67
    .line 68
    .line 69
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    .line 73
    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 74
    move-result v3

    .line 75
    .line 76
    if-eqz v3, :cond_4

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 80
    move-result-object v3

    .line 81
    .line 82
    .line 83
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    move-result-object v3

    .line 85
    .line 86
    check-cast v3, Ljava/lang/String;

    .line 87
    .line 88
    const-string v4, "/"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 92
    move-result v4

    .line 93
    .line 94
    if-eqz v4, :cond_1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 98
    move-result-object v3

    .line 99
    .line 100
    .line 101
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 102
    move-result-object v4

    .line 103
    .line 104
    new-instance v8, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    move-result v9

    .line 112
    .line 113
    if-eqz v9, :cond_2

    .line 114
    .line 115
    const-string v4, ""

    .line 116
    goto :goto_0

    .line 117
    .line 118
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v4, ":"

    .line 127
    .line 128
    .line 129
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object v4

    .line 134
    .line 135
    .line 136
    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object v3

    .line 144
    .line 145
    iget-object v4, v1, Lcom/google/android/exoplayer2/upstream/h0;->resources:Landroid/content/res/Resources;

    .line 146
    .line 147
    const-string v8, "raw"

    .line 148
    .line 149
    iget-object v9, v1, Lcom/google/android/exoplayer2/upstream/h0;->packageName:Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v3, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    move-result v3

    .line 154
    .line 155
    if-eqz v3, :cond_3

    .line 156
    goto :goto_2

    .line 157
    .line 158
    :cond_3
    new-instance v0, Lcom/google/android/exoplayer2/upstream/h0$a;

    .line 159
    .line 160
    const-string v2, "Resource not found."

    .line 161
    .line 162
    .line 163
    invoke-direct {v0, v2, v7, v5}, Lcom/google/android/exoplayer2/upstream/h0$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 164
    throw v0

    .line 165
    .line 166
    :cond_4
    new-instance v0, Lcom/google/android/exoplayer2/upstream/h0$a;

    .line 167
    .line 168
    const-string v2, "URI must either use scheme rawresource or android.resource"

    .line 169
    .line 170
    .line 171
    invoke-direct {v0, v2, v7, v4}, Lcom/google/android/exoplayer2/upstream/h0$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 172
    throw v0

    .line 173
    .line 174
    .line 175
    :cond_5
    :goto_1
    :try_start_0
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 176
    move-result-object v3

    .line 177
    .line 178
    .line 179
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    move-result-object v3

    .line 181
    .line 182
    check-cast v3, Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 186
    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    .line 187
    .line 188
    .line 189
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/upstream/f;->f(Lcom/google/android/exoplayer2/upstream/o;)V

    .line 190
    .line 191
    :try_start_1
    iget-object v4, v1, Lcom/google/android/exoplayer2/upstream/h0;->resources:Landroid/content/res/Resources;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    .line 195
    move-result-object v3
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 196
    .line 197
    iput-object v3, v1, Lcom/google/android/exoplayer2/upstream/h0;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 198
    .line 199
    const/16 v4, 0x7d0

    .line 200
    .line 201
    if-eqz v3, :cond_10

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 205
    move-result-wide v8

    .line 206
    .line 207
    new-instance v2, Ljava/io/FileInputStream;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 211
    move-result-object v5

    .line 212
    .line 213
    .line 214
    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 215
    .line 216
    iput-object v2, v1, Lcom/google/android/exoplayer2/upstream/h0;->inputStream:Ljava/io/InputStream;

    .line 217
    .line 218
    const-wide/16 v10, -0x1

    .line 219
    .line 220
    cmp-long v5, v8, v10

    .line 221
    .line 222
    const/16 v12, 0x7d8

    .line 223
    .line 224
    if-eqz v5, :cond_7

    .line 225
    .line 226
    :try_start_2
    iget-wide v13, v0, Lcom/google/android/exoplayer2/upstream/o;->position:J

    .line 227
    .line 228
    cmp-long v13, v13, v8

    .line 229
    .line 230
    if-gtz v13, :cond_6

    .line 231
    goto :goto_3

    .line 232
    .line 233
    :cond_6
    new-instance v0, Lcom/google/android/exoplayer2/upstream/h0$a;

    .line 234
    .line 235
    .line 236
    invoke-direct {v0, v7, v7, v12}, Lcom/google/android/exoplayer2/upstream/h0$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 237
    throw v0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .line 240
    goto/16 :goto_7

    .line 241
    :catch_1
    move-exception v0

    .line 242
    .line 243
    goto/16 :goto_8

    .line 244
    .line 245
    .line 246
    :cond_7
    :goto_3
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 247
    move-result-wide v13

    .line 248
    .line 249
    iget-wide v6, v0, Lcom/google/android/exoplayer2/upstream/o;->position:J

    .line 250
    add-long/2addr v6, v13

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2, v6, v7}, Ljava/io/FileInputStream;->skip(J)J

    .line 254
    move-result-wide v6

    .line 255
    sub-long/2addr v6, v13

    .line 256
    .line 257
    iget-wide v13, v0, Lcom/google/android/exoplayer2/upstream/o;->position:J

    .line 258
    .line 259
    cmp-long v13, v6, v13

    .line 260
    .line 261
    if-nez v13, :cond_f

    .line 262
    .line 263
    const-wide/16 v13, 0x0

    .line 264
    .line 265
    if-nez v5, :cond_a

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 269
    move-result-object v2

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    .line 273
    move-result-wide v5

    .line 274
    .line 275
    cmp-long v5, v5, v13

    .line 276
    .line 277
    if-nez v5, :cond_8

    .line 278
    .line 279
    iput-wide v10, v1, Lcom/google/android/exoplayer2/upstream/h0;->bytesRemaining:J

    .line 280
    goto :goto_4

    .line 281
    .line 282
    .line 283
    :cond_8
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    .line 284
    move-result-wide v5

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    .line 288
    move-result-wide v7

    .line 289
    sub-long/2addr v5, v7

    .line 290
    .line 291
    iput-wide v5, v1, Lcom/google/android/exoplayer2/upstream/h0;->bytesRemaining:J

    .line 292
    .line 293
    cmp-long v2, v5, v13

    .line 294
    .line 295
    if-ltz v2, :cond_9

    .line 296
    goto :goto_4

    .line 297
    .line 298
    :cond_9
    new-instance v0, Lcom/google/android/exoplayer2/upstream/h0$a;

    .line 299
    const/4 v2, 0x0

    .line 300
    .line 301
    .line 302
    invoke-direct {v0, v2, v2, v12}, Lcom/google/android/exoplayer2/upstream/h0$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 303
    throw v0

    .line 304
    :cond_a
    sub-long/2addr v8, v6

    .line 305
    .line 306
    iput-wide v8, v1, Lcom/google/android/exoplayer2/upstream/h0;->bytesRemaining:J
    :try_end_2
    .catch Lcom/google/android/exoplayer2/upstream/h0$a; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 307
    .line 308
    cmp-long v2, v8, v13

    .line 309
    .line 310
    if-ltz v2, :cond_e

    .line 311
    .line 312
    :goto_4
    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/o;->length:J

    .line 313
    .line 314
    cmp-long v4, v2, v10

    .line 315
    .line 316
    if-eqz v4, :cond_c

    .line 317
    .line 318
    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/h0;->bytesRemaining:J

    .line 319
    .line 320
    cmp-long v6, v4, v10

    .line 321
    .line 322
    if-nez v6, :cond_b

    .line 323
    goto :goto_5

    .line 324
    .line 325
    .line 326
    :cond_b
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 327
    move-result-wide v2

    .line 328
    .line 329
    :goto_5
    iput-wide v2, v1, Lcom/google/android/exoplayer2/upstream/h0;->bytesRemaining:J

    .line 330
    :cond_c
    const/4 v2, 0x1

    .line 331
    .line 332
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/upstream/h0;->opened:Z

    .line 333
    .line 334
    .line 335
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/upstream/f;->g(Lcom/google/android/exoplayer2/upstream/o;)V

    .line 336
    .line 337
    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/o;->length:J

    .line 338
    .line 339
    cmp-long v0, v2, v10

    .line 340
    .line 341
    if-eqz v0, :cond_d

    .line 342
    goto :goto_6

    .line 343
    .line 344
    :cond_d
    iget-wide v2, v1, Lcom/google/android/exoplayer2/upstream/h0;->bytesRemaining:J

    .line 345
    :goto_6
    return-wide v2

    .line 346
    .line 347
    :cond_e
    :try_start_3
    new-instance v0, Lcom/google/android/exoplayer2/upstream/l;

    .line 348
    .line 349
    .line 350
    invoke-direct {v0, v12}, Lcom/google/android/exoplayer2/upstream/l;-><init>(I)V

    .line 351
    throw v0

    .line 352
    .line 353
    :cond_f
    new-instance v0, Lcom/google/android/exoplayer2/upstream/h0$a;

    .line 354
    const/4 v2, 0x0

    .line 355
    .line 356
    .line 357
    invoke-direct {v0, v2, v2, v12}, Lcom/google/android/exoplayer2/upstream/h0$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 358
    throw v0
    :try_end_3
    .catch Lcom/google/android/exoplayer2/upstream/h0$a; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 359
    .line 360
    :goto_7
    new-instance v2, Lcom/google/android/exoplayer2/upstream/h0$a;

    .line 361
    const/4 v3, 0x0

    .line 362
    .line 363
    .line 364
    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/exoplayer2/upstream/h0$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 365
    throw v2

    .line 366
    :goto_8
    throw v0

    .line 367
    .line 368
    :cond_10
    new-instance v0, Lcom/google/android/exoplayer2/upstream/h0$a;

    .line 369
    .line 370
    new-instance v5, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    .line 375
    const-string v6, "Resource is compressed: "

    .line 376
    .line 377
    .line 378
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    move-result-object v2

    .line 386
    const/4 v3, 0x0

    .line 387
    .line 388
    .line 389
    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/h0$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 390
    throw v0

    .line 391
    :catch_2
    move-exception v0

    .line 392
    move-object v3, v7

    .line 393
    .line 394
    new-instance v2, Lcom/google/android/exoplayer2/upstream/h0$a;

    .line 395
    .line 396
    .line 397
    invoke-direct {v2, v3, v0, v5}, Lcom/google/android/exoplayer2/upstream/h0$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 398
    throw v2

    .line 399
    :catch_3
    move-object v3, v7

    .line 400
    .line 401
    new-instance v0, Lcom/google/android/exoplayer2/upstream/h0$a;

    .line 402
    .line 403
    const-string v2, "Resource identifier must be an integer."

    .line 404
    .line 405
    .line 406
    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/h0$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 407
    throw v0
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/h0$a;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/h0;->uri:Landroid/net/Uri;

    .line 4
    .line 5
    const/16 v1, 0x7d0

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/h0;->inputStream:Ljava/io/InputStream;

    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v3

    .line 16
    goto :goto_5

    .line 17
    :catch_0
    move-exception v3

    .line 18
    goto :goto_4

    .line 19
    .line 20
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/h0;->inputStream:Ljava/io/InputStream;

    .line 21
    .line 22
    :try_start_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/h0;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    goto :goto_1

    .line 29
    :catchall_1
    move-exception v1

    .line 30
    goto :goto_3

    .line 31
    :catch_1
    move-exception v3

    .line 32
    goto :goto_2

    .line 33
    .line 34
    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/h0;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 35
    .line 36
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/h0;->opened:Z

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/h0;->opened:Z

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/f;->e()V

    .line 44
    :cond_2
    return-void

    .line 45
    .line 46
    :goto_2
    :try_start_2
    new-instance v4, Lcom/google/android/exoplayer2/upstream/h0$a;

    .line 47
    .line 48
    .line 49
    invoke-direct {v4, v0, v3, v1}, Lcom/google/android/exoplayer2/upstream/h0$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 50
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    .line 52
    :goto_3
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/h0;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 53
    .line 54
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/h0;->opened:Z

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/h0;->opened:Z

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/f;->e()V

    .line 62
    :cond_3
    throw v1

    .line 63
    .line 64
    :goto_4
    :try_start_3
    new-instance v4, Lcom/google/android/exoplayer2/upstream/h0$a;

    .line 65
    .line 66
    .line 67
    invoke-direct {v4, v0, v3, v1}, Lcom/google/android/exoplayer2/upstream/h0$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 68
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    .line 70
    :goto_5
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/h0;->inputStream:Ljava/io/InputStream;

    .line 71
    .line 72
    :try_start_4
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/h0;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 73
    .line 74
    if-eqz v4, :cond_4

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 78
    goto :goto_6

    .line 79
    :catchall_2
    move-exception v1

    .line 80
    goto :goto_8

    .line 81
    :catch_2
    move-exception v3

    .line 82
    goto :goto_7

    .line 83
    .line 84
    :cond_4
    :goto_6
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/h0;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 85
    .line 86
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/h0;->opened:Z

    .line 87
    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/h0;->opened:Z

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/f;->e()V

    .line 94
    :cond_5
    throw v3

    .line 95
    .line 96
    :goto_7
    :try_start_5
    new-instance v4, Lcom/google/android/exoplayer2/upstream/h0$a;

    .line 97
    .line 98
    .line 99
    invoke-direct {v4, v0, v3, v1}, Lcom/google/android/exoplayer2/upstream/h0$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 100
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 101
    .line 102
    :goto_8
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/h0;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 103
    .line 104
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/h0;->opened:Z

    .line 105
    .line 106
    if-eqz v0, :cond_6

    .line 107
    .line 108
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/h0;->opened:Z

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/f;->e()V

    .line 112
    :cond_6
    throw v1
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/h0;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public read([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/h0$a;
        }
    .end annotation

    .line 1
    .line 2
    if-nez p3, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    .line 6
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/h0;->bytesRemaining:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v2, v0, v2

    .line 11
    const/4 v3, -0x1

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    return v3

    .line 15
    .line 16
    :cond_1
    const-wide/16 v4, -0x1

    .line 17
    .line 18
    cmp-long v2, v0, v4

    .line 19
    .line 20
    const/16 v6, 0x7d0

    .line 21
    .line 22
    if-nez v2, :cond_2

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    int-to-long v7, p3

    .line 25
    .line 26
    .line 27
    :try_start_0
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 28
    move-result-wide v0

    .line 29
    long-to-int p3, v0

    .line 30
    .line 31
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/h0;->inputStream:Ljava/io/InputStream;

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    check-cast v0, Ljava/io/InputStream;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 41
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    if-ne p1, v3, :cond_4

    .line 44
    .line 45
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/h0;->bytesRemaining:J

    .line 46
    .line 47
    cmp-long p1, p1, v4

    .line 48
    .line 49
    if-nez p1, :cond_3

    .line 50
    return v3

    .line 51
    .line 52
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/upstream/h0$a;

    .line 53
    .line 54
    new-instance p2, Ljava/io/EOFException;

    .line 55
    .line 56
    .line 57
    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    .line 58
    .line 59
    const-string p3, "End of stream reached having not read sufficient data."

    .line 60
    .line 61
    .line 62
    invoke-direct {p1, p3, p2, v6}, Lcom/google/android/exoplayer2/upstream/h0$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 63
    throw p1

    .line 64
    .line 65
    :cond_4
    iget-wide p2, p0, Lcom/google/android/exoplayer2/upstream/h0;->bytesRemaining:J

    .line 66
    .line 67
    cmp-long v0, p2, v4

    .line 68
    .line 69
    if-eqz v0, :cond_5

    .line 70
    int-to-long v0, p1

    .line 71
    sub-long/2addr p2, v0

    .line 72
    .line 73
    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/h0;->bytesRemaining:J

    .line 74
    .line 75
    .line 76
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/f;->d(I)V

    .line 77
    return p1

    .line 78
    :catch_0
    move-exception p1

    .line 79
    .line 80
    new-instance p2, Lcom/google/android/exoplayer2/upstream/h0$a;

    .line 81
    const/4 p3, 0x0

    .line 82
    .line 83
    .line 84
    invoke-direct {p2, p3, p1, v6}, Lcom/google/android/exoplayer2/upstream/h0$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 85
    throw p2
.end method
