.class public final Lcom/google/android/exoplayer2/util/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AC3:I = 0x0

.field public static final AC4:I = 0x1

.field public static final ADTS:I = 0x2

.field public static final AMR:I = 0x3

.field public static final AVI:I = 0x10

.field private static final EXTENSION_AAC:Ljava/lang/String; = ".aac"

.field private static final EXTENSION_AC3:Ljava/lang/String; = ".ac3"

.field private static final EXTENSION_AC4:Ljava/lang/String; = ".ac4"

.field private static final EXTENSION_ADTS:Ljava/lang/String; = ".adts"

.field private static final EXTENSION_AMR:Ljava/lang/String; = ".amr"

.field private static final EXTENSION_AVI:Ljava/lang/String; = ".avi"

.field private static final EXTENSION_EC3:Ljava/lang/String; = ".ec3"

.field private static final EXTENSION_FLAC:Ljava/lang/String; = ".flac"

.field private static final EXTENSION_FLV:Ljava/lang/String; = ".flv"

.field private static final EXTENSION_JPEG:Ljava/lang/String; = ".jpeg"

.field private static final EXTENSION_JPG:Ljava/lang/String; = ".jpg"

.field private static final EXTENSION_M2P:Ljava/lang/String; = ".m2p"

.field private static final EXTENSION_MID:Ljava/lang/String; = ".mid"

.field private static final EXTENSION_MIDI:Ljava/lang/String; = ".midi"

.field private static final EXTENSION_MP3:Ljava/lang/String; = ".mp3"

.field private static final EXTENSION_MP4:Ljava/lang/String; = ".mp4"

.field private static final EXTENSION_MPEG:Ljava/lang/String; = ".mpeg"

.field private static final EXTENSION_MPG:Ljava/lang/String; = ".mpg"

.field private static final EXTENSION_OPUS:Ljava/lang/String; = ".opus"

.field private static final EXTENSION_PREFIX_CMF:Ljava/lang/String; = ".cmf"

.field private static final EXTENSION_PREFIX_M4:Ljava/lang/String; = ".m4"

.field private static final EXTENSION_PREFIX_MK:Ljava/lang/String; = ".mk"

.field private static final EXTENSION_PREFIX_MP4:Ljava/lang/String; = ".mp4"

.field private static final EXTENSION_PREFIX_OG:Ljava/lang/String; = ".og"

.field private static final EXTENSION_PREFIX_TS:Ljava/lang/String; = ".ts"

.field private static final EXTENSION_PS:Ljava/lang/String; = ".ps"

.field private static final EXTENSION_SMF:Ljava/lang/String; = ".smf"

.field private static final EXTENSION_TS:Ljava/lang/String; = ".ts"

.field private static final EXTENSION_VTT:Ljava/lang/String; = ".vtt"

.field private static final EXTENSION_WAV:Ljava/lang/String; = ".wav"

.field private static final EXTENSION_WAVE:Ljava/lang/String; = ".wave"

.field private static final EXTENSION_WEBM:Ljava/lang/String; = ".webm"

.field private static final EXTENSION_WEBVTT:Ljava/lang/String; = ".webvtt"

.field public static final FLAC:I = 0x4

.field public static final FLV:I = 0x5

.field static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final JPEG:I = 0xe

.field public static final MATROSKA:I = 0x6

.field public static final MIDI:I = 0xf

.field public static final MP3:I = 0x7

.field public static final MP4:I = 0x8

.field public static final OGG:I = 0x9

.field public static final PS:I = 0xa

.field public static final TS:I = 0xb

.field public static final UNKNOWN:I = -0x1

.field public static final WAV:I = 0xc

.field public static final WEBVTT:I = 0xd


# direct methods
.method public static a(Ljava/lang/String;)I
    .locals 19
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/x;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 15
    move-result v2

    .line 16
    .line 17
    const/16 v3, 0x10

    .line 18
    .line 19
    const/16 v4, 0xf

    .line 20
    .line 21
    const/16 v5, 0xe

    .line 22
    .line 23
    const/16 v6, 0xd

    .line 24
    .line 25
    const/16 v7, 0xc

    .line 26
    .line 27
    const/16 v8, 0xb

    .line 28
    .line 29
    const/16 v9, 0xa

    .line 30
    .line 31
    const/16 v10, 0x9

    .line 32
    .line 33
    const/16 v11, 0x8

    .line 34
    const/4 v12, 0x7

    .line 35
    const/4 v13, 0x6

    .line 36
    const/4 v14, 0x5

    .line 37
    const/4 v15, 0x4

    .line 38
    .line 39
    const/16 v16, 0x3

    .line 40
    .line 41
    const/16 v17, 0x1

    .line 42
    .line 43
    const/16 v18, 0x0

    .line 44
    .line 45
    .line 46
    sparse-switch v2, :sswitch_data_0

    .line 47
    :goto_0
    move v1, v0

    .line 48
    .line 49
    goto/16 :goto_1

    .line 50
    .line 51
    :sswitch_0
    const-string v2, "video/x-matroska"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v1

    .line 56
    .line 57
    if-nez v1, :cond_1

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_1
    const/16 v1, 0x19

    .line 61
    .line 62
    goto/16 :goto_1

    .line 63
    .line 64
    :sswitch_1
    const-string v2, "audio/webm"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v1

    .line 69
    .line 70
    if-nez v1, :cond_2

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_2
    const/16 v1, 0x18

    .line 74
    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :sswitch_2
    const-string v2, "audio/mpeg"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result v1

    .line 82
    .line 83
    if-nez v1, :cond_3

    .line 84
    goto :goto_0

    .line 85
    .line 86
    :cond_3
    const/16 v1, 0x17

    .line 87
    .line 88
    goto/16 :goto_1

    .line 89
    .line 90
    :sswitch_3
    const-string v2, "audio/midi"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result v1

    .line 95
    .line 96
    if-nez v1, :cond_4

    .line 97
    goto :goto_0

    .line 98
    .line 99
    :cond_4
    const/16 v1, 0x16

    .line 100
    .line 101
    goto/16 :goto_1

    .line 102
    .line 103
    :sswitch_4
    const-string v2, "audio/flac"

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    move-result v1

    .line 108
    .line 109
    if-nez v1, :cond_5

    .line 110
    goto :goto_0

    .line 111
    .line 112
    :cond_5
    const/16 v1, 0x15

    .line 113
    .line 114
    goto/16 :goto_1

    .line 115
    .line 116
    :sswitch_5
    const-string v2, "audio/eac3"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result v1

    .line 121
    .line 122
    if-nez v1, :cond_6

    .line 123
    goto :goto_0

    .line 124
    .line 125
    :cond_6
    const/16 v1, 0x14

    .line 126
    .line 127
    goto/16 :goto_1

    .line 128
    .line 129
    :sswitch_6
    const-string v2, "audio/3gpp"

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    move-result v1

    .line 134
    .line 135
    if-nez v1, :cond_7

    .line 136
    goto :goto_0

    .line 137
    .line 138
    :cond_7
    const/16 v1, 0x13

    .line 139
    .line 140
    goto/16 :goto_1

    .line 141
    .line 142
    :sswitch_7
    const-string v2, "video/mp4"

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    move-result v1

    .line 147
    .line 148
    if-nez v1, :cond_8

    .line 149
    goto :goto_0

    .line 150
    .line 151
    :cond_8
    const/16 v1, 0x12

    .line 152
    .line 153
    goto/16 :goto_1

    .line 154
    .line 155
    :sswitch_8
    const-string v2, "audio/wav"

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    move-result v1

    .line 160
    .line 161
    if-nez v1, :cond_9

    .line 162
    goto :goto_0

    .line 163
    .line 164
    :cond_9
    const/16 v1, 0x11

    .line 165
    .line 166
    goto/16 :goto_1

    .line 167
    .line 168
    :sswitch_9
    const-string v2, "audio/ogg"

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    move-result v1

    .line 173
    .line 174
    if-nez v1, :cond_a

    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    :cond_a
    move v1, v3

    .line 178
    .line 179
    goto/16 :goto_1

    .line 180
    .line 181
    :sswitch_a
    const-string v2, "audio/mp4"

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    move-result v1

    .line 186
    .line 187
    if-nez v1, :cond_b

    .line 188
    .line 189
    goto/16 :goto_0

    .line 190
    :cond_b
    move v1, v4

    .line 191
    .line 192
    goto/16 :goto_1

    .line 193
    .line 194
    :sswitch_b
    const-string v2, "audio/amr"

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    move-result v1

    .line 199
    .line 200
    if-nez v1, :cond_c

    .line 201
    .line 202
    goto/16 :goto_0

    .line 203
    :cond_c
    move v1, v5

    .line 204
    .line 205
    goto/16 :goto_1

    .line 206
    .line 207
    :sswitch_c
    const-string v2, "audio/ac4"

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    move-result v1

    .line 212
    .line 213
    if-nez v1, :cond_d

    .line 214
    .line 215
    goto/16 :goto_0

    .line 216
    :cond_d
    move v1, v6

    .line 217
    .line 218
    goto/16 :goto_1

    .line 219
    .line 220
    :sswitch_d
    const-string v2, "audio/ac3"

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    move-result v1

    .line 225
    .line 226
    if-nez v1, :cond_e

    .line 227
    .line 228
    goto/16 :goto_0

    .line 229
    :cond_e
    move v1, v7

    .line 230
    .line 231
    goto/16 :goto_1

    .line 232
    .line 233
    :sswitch_e
    const-string v2, "video/x-flv"

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    move-result v1

    .line 238
    .line 239
    if-nez v1, :cond_f

    .line 240
    .line 241
    goto/16 :goto_0

    .line 242
    :cond_f
    move v1, v8

    .line 243
    .line 244
    goto/16 :goto_1

    .line 245
    .line 246
    :sswitch_f
    const-string v2, "application/webm"

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    move-result v1

    .line 251
    .line 252
    if-nez v1, :cond_10

    .line 253
    .line 254
    goto/16 :goto_0

    .line 255
    :cond_10
    move v1, v9

    .line 256
    .line 257
    goto/16 :goto_1

    .line 258
    .line 259
    :sswitch_10
    const-string v2, "audio/x-matroska"

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    move-result v1

    .line 264
    .line 265
    if-nez v1, :cond_11

    .line 266
    .line 267
    goto/16 :goto_0

    .line 268
    :cond_11
    move v1, v10

    .line 269
    .line 270
    goto/16 :goto_1

    .line 271
    .line 272
    :sswitch_11
    const-string v2, "text/vtt"

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    move-result v1

    .line 277
    .line 278
    if-nez v1, :cond_12

    .line 279
    .line 280
    goto/16 :goto_0

    .line 281
    :cond_12
    move v1, v11

    .line 282
    .line 283
    goto/16 :goto_1

    .line 284
    .line 285
    :sswitch_12
    const-string v2, "video/x-msvideo"

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    move-result v1

    .line 290
    .line 291
    if-nez v1, :cond_13

    .line 292
    .line 293
    goto/16 :goto_0

    .line 294
    :cond_13
    move v1, v12

    .line 295
    goto :goto_1

    .line 296
    .line 297
    :sswitch_13
    const-string v2, "application/mp4"

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    move-result v1

    .line 302
    .line 303
    if-nez v1, :cond_14

    .line 304
    .line 305
    goto/16 :goto_0

    .line 306
    :cond_14
    move v1, v13

    .line 307
    goto :goto_1

    .line 308
    .line 309
    :sswitch_14
    const-string v2, "image/jpeg"

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 313
    move-result v1

    .line 314
    .line 315
    if-nez v1, :cond_15

    .line 316
    .line 317
    goto/16 :goto_0

    .line 318
    :cond_15
    move v1, v14

    .line 319
    goto :goto_1

    .line 320
    .line 321
    :sswitch_15
    const-string v2, "audio/amr-wb"

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    move-result v1

    .line 326
    .line 327
    if-nez v1, :cond_16

    .line 328
    .line 329
    goto/16 :goto_0

    .line 330
    :cond_16
    move v1, v15

    .line 331
    goto :goto_1

    .line 332
    .line 333
    :sswitch_16
    const-string v2, "video/webm"

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    move-result v1

    .line 338
    .line 339
    if-nez v1, :cond_17

    .line 340
    .line 341
    goto/16 :goto_0

    .line 342
    .line 343
    :cond_17
    move/from16 v1, v16

    .line 344
    goto :goto_1

    .line 345
    .line 346
    :sswitch_17
    const-string v2, "video/mp2t"

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 350
    move-result v1

    .line 351
    .line 352
    if-nez v1, :cond_18

    .line 353
    .line 354
    goto/16 :goto_0

    .line 355
    :cond_18
    const/4 v1, 0x2

    .line 356
    goto :goto_1

    .line 357
    .line 358
    :sswitch_18
    const-string v2, "video/mp2p"

    .line 359
    .line 360
    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 362
    move-result v1

    .line 363
    .line 364
    if-nez v1, :cond_19

    .line 365
    .line 366
    goto/16 :goto_0

    .line 367
    .line 368
    :cond_19
    move/from16 v1, v17

    .line 369
    goto :goto_1

    .line 370
    .line 371
    :sswitch_19
    const-string v2, "audio/eac3-joc"

    .line 372
    .line 373
    .line 374
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 375
    move-result v1

    .line 376
    .line 377
    if-nez v1, :cond_1a

    .line 378
    .line 379
    goto/16 :goto_0

    .line 380
    .line 381
    :cond_1a
    move/from16 v1, v18

    .line 382
    .line 383
    .line 384
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 385
    return v0

    .line 386
    :pswitch_0
    return v12

    .line 387
    :pswitch_1
    return v4

    .line 388
    :pswitch_2
    return v15

    .line 389
    :pswitch_3
    return v7

    .line 390
    :pswitch_4
    return v10

    .line 391
    :pswitch_5
    return v17

    .line 392
    :pswitch_6
    return v14

    .line 393
    :pswitch_7
    return v6

    .line 394
    :pswitch_8
    return v3

    .line 395
    :pswitch_9
    return v11

    .line 396
    :pswitch_a
    return v5

    .line 397
    :pswitch_b
    return v16

    .line 398
    :pswitch_c
    return v13

    .line 399
    :pswitch_d
    return v8

    .line 400
    :pswitch_e
    return v9

    .line 401
    :pswitch_f
    return v18

    .line 402
    nop

    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_19
        -0x6315f78b -> :sswitch_18
        -0x6315f787 -> :sswitch_17
        -0x63118f53 -> :sswitch_16
        -0x5fc6f775 -> :sswitch_15
        -0x58a7d764 -> :sswitch_14
        -0x4a681e4e -> :sswitch_13
        -0x405dba54 -> :sswitch_12
        -0x3be2f26c -> :sswitch_11
        -0x17118226 -> :sswitch_10
        -0x2974308 -> :sswitch_f
        0xd45707 -> :sswitch_e
        0xb269698 -> :sswitch_d
        0xb269699 -> :sswitch_c
        0xb26980d -> :sswitch_b
        0xb26c538 -> :sswitch_a
        0xb26cbd6 -> :sswitch_9
        0xb26e933 -> :sswitch_8
        0x4f62635d -> :sswitch_7
        0x59976a2d -> :sswitch_6
        0x59ae0c65 -> :sswitch_5
        0x59aeaa01 -> :sswitch_4
        0x59b1cdba -> :sswitch_3
        0x59b1e81e -> :sswitch_2
        0x59b64a32 -> :sswitch_1
        0x79909c15 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_c
        :pswitch_c
        :pswitch_6
        :pswitch_f
        :pswitch_5
        :pswitch_b
        :pswitch_9
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_b
        :pswitch_f
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method public static b(Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "Content-Type"

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Ljava/util/List;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    .line 20
    .line 21
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 23
    .line 24
    check-cast p0, Ljava/lang/String;

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 27
    .line 28
    .line 29
    :goto_1
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/l;->a(Ljava/lang/String;)I

    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public static c(Landroid/net/Uri;)I
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    return v0

    .line 9
    .line 10
    :cond_0
    const-string v1, ".ac3"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-nez v1, :cond_1c

    .line 17
    .line 18
    const-string v1, ".ec3"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    goto/16 :goto_a

    .line 27
    .line 28
    :cond_1
    const-string v1, ".ac4"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 32
    move-result v1

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    .line 38
    :cond_2
    const-string v1, ".adts"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 42
    move-result v1

    .line 43
    .line 44
    if-nez v1, :cond_1b

    .line 45
    .line 46
    const-string v1, ".aac"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 50
    move-result v1

    .line 51
    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    goto/16 :goto_9

    .line 55
    .line 56
    :cond_3
    const-string v1, ".amr"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 60
    move-result v1

    .line 61
    .line 62
    if-eqz v1, :cond_4

    .line 63
    const/4 p0, 0x3

    .line 64
    return p0

    .line 65
    .line 66
    :cond_4
    const-string v1, ".flac"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 70
    move-result v1

    .line 71
    const/4 v2, 0x4

    .line 72
    .line 73
    if-eqz v1, :cond_5

    .line 74
    return v2

    .line 75
    .line 76
    :cond_5
    const-string v1, ".flv"

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 80
    move-result v1

    .line 81
    const/4 v3, 0x5

    .line 82
    .line 83
    if-eqz v1, :cond_6

    .line 84
    return v3

    .line 85
    .line 86
    :cond_6
    const-string v1, ".mid"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 90
    move-result v1

    .line 91
    .line 92
    if-nez v1, :cond_1a

    .line 93
    .line 94
    const-string v1, ".midi"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 98
    move-result v1

    .line 99
    .line 100
    if-nez v1, :cond_1a

    .line 101
    .line 102
    const-string v1, ".smf"

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 106
    move-result v1

    .line 107
    .line 108
    if-eqz v1, :cond_7

    .line 109
    .line 110
    goto/16 :goto_8

    .line 111
    .line 112
    .line 113
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 114
    move-result v1

    .line 115
    sub-int/2addr v1, v2

    .line 116
    .line 117
    const-string v4, ".mk"

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 121
    move-result v1

    .line 122
    .line 123
    if-nez v1, :cond_19

    .line 124
    .line 125
    const-string v1, ".webm"

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 129
    move-result v1

    .line 130
    .line 131
    if-eqz v1, :cond_8

    .line 132
    .line 133
    goto/16 :goto_7

    .line 134
    .line 135
    :cond_8
    const-string v1, ".mp3"

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 139
    move-result v1

    .line 140
    .line 141
    if-eqz v1, :cond_9

    .line 142
    const/4 p0, 0x7

    .line 143
    return p0

    .line 144
    .line 145
    :cond_9
    const-string v1, ".mp4"

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 149
    move-result v4

    .line 150
    .line 151
    if-nez v4, :cond_18

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 155
    move-result v4

    .line 156
    sub-int/2addr v4, v2

    .line 157
    .line 158
    const-string v5, ".m4"

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 162
    move-result v4

    .line 163
    .line 164
    if-nez v4, :cond_18

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 168
    move-result v4

    .line 169
    sub-int/2addr v4, v3

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 173
    move-result v1

    .line 174
    .line 175
    if-nez v1, :cond_18

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 179
    move-result v1

    .line 180
    sub-int/2addr v1, v3

    .line 181
    .line 182
    const-string v3, ".cmf"

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 186
    move-result v1

    .line 187
    .line 188
    if-eqz v1, :cond_a

    .line 189
    .line 190
    goto/16 :goto_6

    .line 191
    .line 192
    .line 193
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 194
    move-result v1

    .line 195
    sub-int/2addr v1, v2

    .line 196
    .line 197
    const-string v3, ".og"

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 201
    move-result v1

    .line 202
    .line 203
    if-nez v1, :cond_17

    .line 204
    .line 205
    const-string v1, ".opus"

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 209
    move-result v1

    .line 210
    .line 211
    if-eqz v1, :cond_b

    .line 212
    .line 213
    goto/16 :goto_5

    .line 214
    .line 215
    :cond_b
    const-string v1, ".ps"

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 219
    move-result v1

    .line 220
    .line 221
    if-nez v1, :cond_16

    .line 222
    .line 223
    const-string v1, ".mpeg"

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 227
    move-result v1

    .line 228
    .line 229
    if-nez v1, :cond_16

    .line 230
    .line 231
    const-string v1, ".mpg"

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 235
    move-result v1

    .line 236
    .line 237
    if-nez v1, :cond_16

    .line 238
    .line 239
    const-string v1, ".m2p"

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 243
    move-result v1

    .line 244
    .line 245
    if-eqz v1, :cond_c

    .line 246
    goto :goto_4

    .line 247
    .line 248
    :cond_c
    const-string v1, ".ts"

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 252
    move-result v3

    .line 253
    .line 254
    if-nez v3, :cond_15

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 258
    move-result v3

    .line 259
    sub-int/2addr v3, v2

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 263
    move-result v1

    .line 264
    .line 265
    if-eqz v1, :cond_d

    .line 266
    goto :goto_3

    .line 267
    .line 268
    :cond_d
    const-string v1, ".wav"

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 272
    move-result v1

    .line 273
    .line 274
    if-nez v1, :cond_14

    .line 275
    .line 276
    const-string v1, ".wave"

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 280
    move-result v1

    .line 281
    .line 282
    if-eqz v1, :cond_e

    .line 283
    goto :goto_2

    .line 284
    .line 285
    :cond_e
    const-string v1, ".vtt"

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 289
    move-result v1

    .line 290
    .line 291
    if-nez v1, :cond_13

    .line 292
    .line 293
    const-string v1, ".webvtt"

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 297
    move-result v1

    .line 298
    .line 299
    if-eqz v1, :cond_f

    .line 300
    goto :goto_1

    .line 301
    .line 302
    :cond_f
    const-string v1, ".jpg"

    .line 303
    .line 304
    .line 305
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 306
    move-result v1

    .line 307
    .line 308
    if-nez v1, :cond_12

    .line 309
    .line 310
    const-string v1, ".jpeg"

    .line 311
    .line 312
    .line 313
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 314
    move-result v1

    .line 315
    .line 316
    if-eqz v1, :cond_10

    .line 317
    goto :goto_0

    .line 318
    .line 319
    :cond_10
    const-string v1, ".avi"

    .line 320
    .line 321
    .line 322
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 323
    move-result p0

    .line 324
    .line 325
    if-eqz p0, :cond_11

    .line 326
    .line 327
    const/16 p0, 0x10

    .line 328
    return p0

    .line 329
    :cond_11
    return v0

    .line 330
    .line 331
    :cond_12
    :goto_0
    const/16 p0, 0xe

    .line 332
    return p0

    .line 333
    .line 334
    :cond_13
    :goto_1
    const/16 p0, 0xd

    .line 335
    return p0

    .line 336
    .line 337
    :cond_14
    :goto_2
    const/16 p0, 0xc

    .line 338
    return p0

    .line 339
    .line 340
    :cond_15
    :goto_3
    const/16 p0, 0xb

    .line 341
    return p0

    .line 342
    .line 343
    :cond_16
    :goto_4
    const/16 p0, 0xa

    .line 344
    return p0

    .line 345
    .line 346
    :cond_17
    :goto_5
    const/16 p0, 0x9

    .line 347
    return p0

    .line 348
    .line 349
    :cond_18
    :goto_6
    const/16 p0, 0x8

    .line 350
    return p0

    .line 351
    :cond_19
    :goto_7
    const/4 p0, 0x6

    .line 352
    return p0

    .line 353
    .line 354
    :cond_1a
    :goto_8
    const/16 p0, 0xf

    .line 355
    return p0

    .line 356
    :cond_1b
    :goto_9
    const/4 p0, 0x2

    .line 357
    return p0

    .line 358
    :cond_1c
    :goto_a
    const/4 p0, 0x0

    .line 359
    return p0
.end method
