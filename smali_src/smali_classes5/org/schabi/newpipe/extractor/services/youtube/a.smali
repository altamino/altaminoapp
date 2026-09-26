.class public Lorg/schabi/newpipe/extractor/services/youtube/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/services/youtube/a$a;
    }
.end annotation


# static fields
.field public static final APPROX_DURATION_MS_UNKNOWN:J = -0x1L

.field public static final AUDIO_CHANNELS_NOT_APPLICABLE_OR_UNKNOWN:I = -0x1

.field public static final AVERAGE_BITRATE_UNKNOWN:I = -0x1

.field public static final CONTENT_LENGTH_UNKNOWN:J = -0x1L

.field public static final FPS_NOT_APPLICABLE_OR_UNKNOWN:I = -0x1

.field private static final ITAG_LIST:[Lorg/schabi/newpipe/extractor/services/youtube/a;

.field public static final SAMPLE_RATE_UNKNOWN:I = -0x1

.field public static final TARGET_DURATION_SEC_UNKNOWN:I = -0x1


# instance fields
.field private approxDurationMs:J

.field private audioChannels:I

.field private audioLocale:Ljava/util/Locale;

.field private audioTrackId:Ljava/lang/String;

.field private audioTrackName:Ljava/lang/String;

.field private audioTrackType:Loa/c;

.field public avgBitrate:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private bitrate:I

.field private codec:Ljava/lang/String;

.field private contentLength:J

.field public fps:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private height:I

.field public final id:I

.field private indexEnd:I

.field private indexStart:I

.field private initEnd:I

.field private initStart:I

.field public final itagType:Lorg/schabi/newpipe/extractor/services/youtube/a$a;

.field private final mediaFormat:Lx9/m;

.field private quality:Ljava/lang/String;

.field public resolutionString:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private sampleRate:I

.field private targetDurationSec:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 1
    .line 2
    const/16 v0, 0x39

    .line 3
    .line 4
    new-array v0, v0, [Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 5
    .line 6
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 7
    .line 8
    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/a$a;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/a$a;

    .line 9
    .line 10
    sget-object v3, Lx9/m;->v3GPP:Lx9/m;

    .line 11
    .line 12
    const/16 v4, 0x11

    .line 13
    .line 14
    const-string v5, "144p"

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v4, v2, v3, v5}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 18
    const/4 v6, 0x0

    .line 19
    .line 20
    aput-object v1, v0, v6

    .line 21
    .line 22
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 23
    .line 24
    const/16 v6, 0x24

    .line 25
    .line 26
    const-string v7, "240p"

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v6, v2, v3, v7}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 30
    const/4 v3, 0x1

    .line 31
    .line 32
    aput-object v1, v0, v3

    .line 33
    .line 34
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 35
    .line 36
    sget-object v3, Lx9/m;->MPEG_4:Lx9/m;

    .line 37
    .line 38
    const/16 v8, 0x12

    .line 39
    .line 40
    const-string v14, "360p"

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v8, v2, v3, v14}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 44
    const/4 v9, 0x2

    .line 45
    .line 46
    aput-object v1, v0, v9

    .line 47
    .line 48
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 49
    .line 50
    const/16 v9, 0x22

    .line 51
    .line 52
    .line 53
    invoke-direct {v1, v9, v2, v3, v14}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 54
    const/4 v10, 0x3

    .line 55
    .line 56
    aput-object v1, v0, v10

    .line 57
    .line 58
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 59
    .line 60
    const/16 v15, 0x23

    .line 61
    .line 62
    const-string v13, "480p"

    .line 63
    .line 64
    .line 65
    invoke-direct {v1, v15, v2, v3, v13}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 66
    const/4 v10, 0x4

    .line 67
    .line 68
    aput-object v1, v0, v10

    .line 69
    .line 70
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 71
    .line 72
    const/16 v10, 0x3b

    .line 73
    .line 74
    .line 75
    invoke-direct {v1, v10, v2, v3, v13}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 76
    const/4 v10, 0x5

    .line 77
    .line 78
    aput-object v1, v0, v10

    .line 79
    .line 80
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 81
    .line 82
    const/16 v10, 0x4e

    .line 83
    .line 84
    .line 85
    invoke-direct {v1, v10, v2, v3, v13}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 86
    const/4 v10, 0x6

    .line 87
    .line 88
    aput-object v1, v0, v10

    .line 89
    .line 90
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 91
    .line 92
    const/16 v10, 0x16

    .line 93
    .line 94
    const-string v12, "720p"

    .line 95
    .line 96
    .line 97
    invoke-direct {v1, v10, v2, v3, v12}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 98
    const/4 v11, 0x7

    .line 99
    .line 100
    aput-object v1, v0, v11

    .line 101
    .line 102
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 103
    .line 104
    const/16 v11, 0x25

    .line 105
    .line 106
    const-string v6, "1080p"

    .line 107
    .line 108
    .line 109
    invoke-direct {v1, v11, v2, v3, v6}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 110
    .line 111
    const/16 v16, 0x8

    .line 112
    .line 113
    aput-object v1, v0, v16

    .line 114
    .line 115
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 116
    .line 117
    const/16 v9, 0x26

    .line 118
    .line 119
    .line 120
    invoke-direct {v1, v9, v2, v3, v6}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 121
    .line 122
    const/16 v17, 0x9

    .line 123
    .line 124
    aput-object v1, v0, v17

    .line 125
    .line 126
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 127
    .line 128
    sget-object v9, Lx9/m;->WEBM:Lx9/m;

    .line 129
    .line 130
    const/16 v10, 0x2b

    .line 131
    .line 132
    .line 133
    invoke-direct {v1, v10, v2, v9, v14}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 134
    .line 135
    const/16 v19, 0xa

    .line 136
    .line 137
    aput-object v1, v0, v19

    .line 138
    .line 139
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 140
    .line 141
    const/16 v15, 0x2c

    .line 142
    .line 143
    .line 144
    invoke-direct {v1, v15, v2, v9, v13}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 145
    .line 146
    const/16 v20, 0xb

    .line 147
    .line 148
    aput-object v1, v0, v20

    .line 149
    .line 150
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 151
    .line 152
    const/16 v15, 0x2d

    .line 153
    .line 154
    .line 155
    invoke-direct {v1, v15, v2, v9, v12}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 156
    .line 157
    const/16 v21, 0xc

    .line 158
    .line 159
    aput-object v1, v0, v21

    .line 160
    .line 161
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 162
    .line 163
    const/16 v15, 0x2e

    .line 164
    .line 165
    .line 166
    invoke-direct {v1, v15, v2, v9, v6}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 167
    .line 168
    const/16 v2, 0xd

    .line 169
    .line 170
    aput-object v1, v0, v2

    .line 171
    .line 172
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 173
    .line 174
    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/a$a;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/a$a;

    .line 175
    .line 176
    sget-object v10, Lx9/m;->WEBMA:Lx9/m;

    .line 177
    .line 178
    const/16 v11, 0xab

    .line 179
    .line 180
    const/16 v15, 0x80

    .line 181
    .line 182
    .line 183
    invoke-direct {v1, v11, v2, v10, v15}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;I)V

    .line 184
    .line 185
    const/16 v11, 0xe

    .line 186
    .line 187
    aput-object v1, v0, v11

    .line 188
    .line 189
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 190
    .line 191
    const/16 v11, 0xac

    .line 192
    .line 193
    const/16 v8, 0x100

    .line 194
    .line 195
    .line 196
    invoke-direct {v1, v11, v2, v10, v8}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;I)V

    .line 197
    .line 198
    const/16 v10, 0xf

    .line 199
    .line 200
    aput-object v1, v0, v10

    .line 201
    .line 202
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 203
    .line 204
    sget-object v10, Lx9/m;->M4A:Lx9/m;

    .line 205
    .line 206
    const/16 v11, 0x257

    .line 207
    .line 208
    const/16 v8, 0x20

    .line 209
    .line 210
    .line 211
    invoke-direct {v1, v11, v2, v10, v8}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;I)V

    .line 212
    .line 213
    const/16 v11, 0x10

    .line 214
    .line 215
    aput-object v1, v0, v11

    .line 216
    .line 217
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 218
    .line 219
    const/16 v11, 0x8b

    .line 220
    .line 221
    const/16 v8, 0x30

    .line 222
    .line 223
    .line 224
    invoke-direct {v1, v11, v2, v10, v8}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;I)V

    .line 225
    .line 226
    aput-object v1, v0, v4

    .line 227
    .line 228
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 229
    .line 230
    const/16 v4, 0x8c

    .line 231
    .line 232
    .line 233
    invoke-direct {v1, v4, v2, v10, v15}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;I)V

    .line 234
    .line 235
    const/16 v4, 0x12

    .line 236
    .line 237
    aput-object v1, v0, v4

    .line 238
    .line 239
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 240
    .line 241
    const/16 v4, 0x8d

    .line 242
    .line 243
    const/16 v8, 0x100

    .line 244
    .line 245
    .line 246
    invoke-direct {v1, v4, v2, v10, v8}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;I)V

    .line 247
    .line 248
    const/16 v4, 0x13

    .line 249
    .line 250
    aput-object v1, v0, v4

    .line 251
    .line 252
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 253
    .line 254
    sget-object v4, Lx9/m;->WEBMA_OPUS:Lx9/m;

    .line 255
    .line 256
    const/16 v8, 0x258

    .line 257
    .line 258
    const/16 v10, 0x23

    .line 259
    .line 260
    .line 261
    invoke-direct {v1, v8, v2, v4, v10}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;I)V

    .line 262
    .line 263
    const/16 v8, 0x14

    .line 264
    .line 265
    aput-object v1, v0, v8

    .line 266
    .line 267
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 268
    .line 269
    const/16 v8, 0xf9

    .line 270
    .line 271
    const/16 v10, 0x32

    .line 272
    .line 273
    .line 274
    invoke-direct {v1, v8, v2, v4, v10}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;I)V

    .line 275
    .line 276
    const/16 v8, 0x15

    .line 277
    .line 278
    aput-object v1, v0, v8

    .line 279
    .line 280
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 281
    .line 282
    const/16 v8, 0xfa

    .line 283
    .line 284
    const/16 v10, 0x46

    .line 285
    .line 286
    .line 287
    invoke-direct {v1, v8, v2, v4, v10}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;I)V

    .line 288
    .line 289
    const/16 v8, 0x16

    .line 290
    .line 291
    aput-object v1, v0, v8

    .line 292
    .line 293
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 294
    .line 295
    const/16 v8, 0xfb

    .line 296
    .line 297
    const/16 v10, 0xa0

    .line 298
    .line 299
    .line 300
    invoke-direct {v1, v8, v2, v4, v10}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;I)V

    .line 301
    .line 302
    const/16 v2, 0x17

    .line 303
    .line 304
    aput-object v1, v0, v2

    .line 305
    .line 306
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 307
    .line 308
    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/a$a;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/a$a;

    .line 309
    .line 310
    const/16 v4, 0xa0

    .line 311
    .line 312
    .line 313
    invoke-direct {v1, v4, v2, v3, v5}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 314
    .line 315
    const/16 v4, 0x18

    .line 316
    .line 317
    aput-object v1, v0, v4

    .line 318
    .line 319
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 320
    .line 321
    const/16 v4, 0x18a

    .line 322
    .line 323
    .line 324
    invoke-direct {v1, v4, v2, v3, v5}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 325
    .line 326
    const/16 v4, 0x19

    .line 327
    .line 328
    aput-object v1, v0, v4

    .line 329
    .line 330
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 331
    .line 332
    const/16 v4, 0x85

    .line 333
    .line 334
    .line 335
    invoke-direct {v1, v4, v2, v3, v7}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 336
    .line 337
    const/16 v4, 0x1a

    .line 338
    .line 339
    aput-object v1, v0, v4

    .line 340
    .line 341
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 342
    .line 343
    const/16 v4, 0x18b

    .line 344
    .line 345
    .line 346
    invoke-direct {v1, v4, v2, v3, v7}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 347
    .line 348
    const/16 v4, 0x1b

    .line 349
    .line 350
    aput-object v1, v0, v4

    .line 351
    .line 352
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 353
    .line 354
    const/16 v4, 0x86

    .line 355
    .line 356
    .line 357
    invoke-direct {v1, v4, v2, v3, v14}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 358
    .line 359
    const/16 v4, 0x1c

    .line 360
    .line 361
    aput-object v1, v0, v4

    .line 362
    .line 363
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 364
    .line 365
    const/16 v4, 0x18c

    .line 366
    .line 367
    .line 368
    invoke-direct {v1, v4, v2, v3, v14}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 369
    .line 370
    const/16 v4, 0x1d

    .line 371
    .line 372
    aput-object v1, v0, v4

    .line 373
    .line 374
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 375
    .line 376
    const/16 v4, 0x87

    .line 377
    .line 378
    .line 379
    invoke-direct {v1, v4, v2, v3, v13}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 380
    .line 381
    const/16 v4, 0x1e

    .line 382
    .line 383
    aput-object v1, v0, v4

    .line 384
    .line 385
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 386
    .line 387
    const/16 v4, 0xd4

    .line 388
    .line 389
    .line 390
    invoke-direct {v1, v4, v2, v3, v13}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 391
    .line 392
    const/16 v4, 0x1f

    .line 393
    .line 394
    aput-object v1, v0, v4

    .line 395
    .line 396
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 397
    .line 398
    const/16 v4, 0x18d

    .line 399
    .line 400
    .line 401
    invoke-direct {v1, v4, v2, v3, v13}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 402
    .line 403
    const/16 v4, 0x20

    .line 404
    .line 405
    aput-object v1, v0, v4

    .line 406
    .line 407
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 408
    .line 409
    const/16 v4, 0x88

    .line 410
    .line 411
    .line 412
    invoke-direct {v1, v4, v2, v3, v12}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 413
    .line 414
    const/16 v4, 0x21

    .line 415
    .line 416
    aput-object v1, v0, v4

    .line 417
    .line 418
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 419
    .line 420
    const/16 v4, 0x18e

    .line 421
    .line 422
    .line 423
    invoke-direct {v1, v4, v2, v3, v12}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 424
    .line 425
    const/16 v4, 0x22

    .line 426
    .line 427
    aput-object v1, v0, v4

    .line 428
    .line 429
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 430
    .line 431
    const/16 v4, 0x12a

    .line 432
    .line 433
    const-string v15, "720p60"

    .line 434
    .line 435
    const/16 v16, 0x3c

    .line 436
    move-object v8, v1

    .line 437
    move-object v11, v9

    .line 438
    .line 439
    const/16 v17, 0x26

    .line 440
    move v9, v4

    .line 441
    .line 442
    const/16 v4, 0x2b

    .line 443
    move-object v10, v2

    .line 444
    move-object v4, v11

    .line 445
    .line 446
    const/16 v18, 0x25

    .line 447
    move-object v11, v3

    .line 448
    .line 449
    move-object/from16 v23, v12

    .line 450
    move-object v12, v15

    .line 451
    move-object v15, v13

    .line 452
    .line 453
    move/from16 v13, v16

    .line 454
    .line 455
    .line 456
    invoke-direct/range {v8 .. v13}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;I)V

    .line 457
    .line 458
    const/16 v8, 0x23

    .line 459
    .line 460
    aput-object v1, v0, v8

    .line 461
    .line 462
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 463
    .line 464
    const/16 v8, 0x89

    .line 465
    .line 466
    .line 467
    invoke-direct {v1, v8, v2, v3, v6}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 468
    .line 469
    const/16 v8, 0x24

    .line 470
    .line 471
    aput-object v1, v0, v8

    .line 472
    .line 473
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 474
    .line 475
    const/16 v8, 0x18f

    .line 476
    .line 477
    .line 478
    invoke-direct {v1, v8, v2, v3, v6}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 479
    .line 480
    aput-object v1, v0, v18

    .line 481
    .line 482
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 483
    .line 484
    const/16 v9, 0x12b

    .line 485
    .line 486
    const-string v12, "1080p60"

    .line 487
    .line 488
    const/16 v13, 0x3c

    .line 489
    move-object v8, v1

    .line 490
    .line 491
    .line 492
    invoke-direct/range {v8 .. v13}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;I)V

    .line 493
    .line 494
    aput-object v1, v0, v17

    .line 495
    .line 496
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 497
    .line 498
    const/16 v8, 0x190

    .line 499
    .line 500
    const-string v9, "1440p"

    .line 501
    .line 502
    .line 503
    invoke-direct {v1, v8, v2, v3, v9}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 504
    .line 505
    const/16 v8, 0x27

    .line 506
    .line 507
    aput-object v1, v0, v8

    .line 508
    .line 509
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 510
    .line 511
    const/16 v8, 0x10a

    .line 512
    .line 513
    const-string v9, "2160p"

    .line 514
    .line 515
    .line 516
    invoke-direct {v1, v8, v2, v3, v9}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 517
    .line 518
    const/16 v8, 0x28

    .line 519
    .line 520
    aput-object v1, v0, v8

    .line 521
    .line 522
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 523
    .line 524
    const/16 v8, 0x191

    .line 525
    .line 526
    .line 527
    invoke-direct {v1, v8, v2, v3, v9}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 528
    .line 529
    const/16 v3, 0x29

    .line 530
    .line 531
    aput-object v1, v0, v3

    .line 532
    .line 533
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 534
    .line 535
    const/16 v3, 0x116

    .line 536
    .line 537
    .line 538
    invoke-direct {v1, v3, v2, v4, v5}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 539
    .line 540
    const/16 v3, 0x2a

    .line 541
    .line 542
    aput-object v1, v0, v3

    .line 543
    .line 544
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 545
    .line 546
    const/16 v3, 0xf2

    .line 547
    .line 548
    .line 549
    invoke-direct {v1, v3, v2, v4, v7}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 550
    .line 551
    const/16 v3, 0x2b

    .line 552
    .line 553
    aput-object v1, v0, v3

    .line 554
    .line 555
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 556
    .line 557
    const/16 v3, 0xf3

    .line 558
    .line 559
    .line 560
    invoke-direct {v1, v3, v2, v4, v14}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 561
    .line 562
    const/16 v3, 0x2c

    .line 563
    .line 564
    aput-object v1, v0, v3

    .line 565
    .line 566
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 567
    .line 568
    const/16 v3, 0xf4

    .line 569
    .line 570
    .line 571
    invoke-direct {v1, v3, v2, v4, v15}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 572
    .line 573
    const/16 v3, 0x2d

    .line 574
    .line 575
    aput-object v1, v0, v3

    .line 576
    .line 577
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 578
    .line 579
    const/16 v3, 0xf5

    .line 580
    .line 581
    .line 582
    invoke-direct {v1, v3, v2, v4, v15}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 583
    .line 584
    const/16 v3, 0x2e

    .line 585
    .line 586
    aput-object v1, v0, v3

    .line 587
    .line 588
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 589
    .line 590
    const/16 v3, 0xf6

    .line 591
    .line 592
    .line 593
    invoke-direct {v1, v3, v2, v4, v15}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 594
    .line 595
    const/16 v3, 0x2f

    .line 596
    .line 597
    aput-object v1, v0, v3

    .line 598
    .line 599
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 600
    .line 601
    const/16 v3, 0xf7

    .line 602
    .line 603
    move-object/from16 v5, v23

    .line 604
    .line 605
    .line 606
    invoke-direct {v1, v3, v2, v4, v5}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 607
    .line 608
    const/16 v3, 0x30

    .line 609
    .line 610
    aput-object v1, v0, v3

    .line 611
    .line 612
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 613
    .line 614
    const/16 v3, 0xf8

    .line 615
    .line 616
    .line 617
    invoke-direct {v1, v3, v2, v4, v6}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 618
    .line 619
    const/16 v3, 0x31

    .line 620
    .line 621
    aput-object v1, v0, v3

    .line 622
    .line 623
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 624
    .line 625
    const/16 v3, 0x10f

    .line 626
    .line 627
    const-string v5, "1440p"

    .line 628
    .line 629
    .line 630
    invoke-direct {v1, v3, v2, v4, v5}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 631
    .line 632
    const/16 v3, 0x32

    .line 633
    .line 634
    aput-object v1, v0, v3

    .line 635
    .line 636
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 637
    .line 638
    const/16 v3, 0x110

    .line 639
    .line 640
    .line 641
    invoke-direct {v1, v3, v2, v4, v9}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 642
    .line 643
    const/16 v3, 0x33

    .line 644
    .line 645
    aput-object v1, v0, v3

    .line 646
    .line 647
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 648
    .line 649
    const/16 v18, 0x12e

    .line 650
    .line 651
    const-string v21, "720p60"

    .line 652
    .line 653
    const/16 v22, 0x3c

    .line 654
    .line 655
    move-object/from16 v17, v1

    .line 656
    .line 657
    move-object/from16 v19, v2

    .line 658
    .line 659
    move-object/from16 v20, v4

    .line 660
    .line 661
    .line 662
    invoke-direct/range {v17 .. v22}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;I)V

    .line 663
    .line 664
    const/16 v3, 0x34

    .line 665
    .line 666
    aput-object v1, v0, v3

    .line 667
    .line 668
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 669
    .line 670
    const/16 v18, 0x12f

    .line 671
    .line 672
    const-string v21, "1080p60"

    .line 673
    .line 674
    move-object/from16 v17, v1

    .line 675
    .line 676
    .line 677
    invoke-direct/range {v17 .. v22}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;I)V

    .line 678
    .line 679
    const/16 v3, 0x35

    .line 680
    .line 681
    aput-object v1, v0, v3

    .line 682
    .line 683
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 684
    .line 685
    const/16 v18, 0x134

    .line 686
    .line 687
    const-string v21, "1440p60"

    .line 688
    .line 689
    move-object/from16 v17, v1

    .line 690
    .line 691
    .line 692
    invoke-direct/range {v17 .. v22}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;I)V

    .line 693
    .line 694
    const/16 v3, 0x36

    .line 695
    .line 696
    aput-object v1, v0, v3

    .line 697
    .line 698
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 699
    .line 700
    const/16 v3, 0x139

    .line 701
    .line 702
    .line 703
    invoke-direct {v1, v3, v2, v4, v9}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V

    .line 704
    .line 705
    const/16 v3, 0x37

    .line 706
    .line 707
    aput-object v1, v0, v3

    .line 708
    .line 709
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 710
    .line 711
    const/16 v18, 0x13b

    .line 712
    .line 713
    const-string v21, "2160p60"

    .line 714
    .line 715
    move-object/from16 v17, v1

    .line 716
    .line 717
    .line 718
    invoke-direct/range {v17 .. v22}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;I)V

    .line 719
    .line 720
    const/16 v2, 0x38

    .line 721
    .line 722
    aput-object v1, v0, v2

    .line 723
    .line 724
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/a;->ITAG_LIST:[Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 725
    return-void
.end method

.method public constructor <init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;I)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->sampleRate:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->audioChannels:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->fps:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->targetDurationSec:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->approxDurationMs:J

    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->contentLength:J

    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->id:I

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/a$a;

    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->mediaFormat:Lx9/m;

    iput p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->avgBitrate:I

    return-void
.end method

.method public constructor <init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->avgBitrate:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->sampleRate:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->audioChannels:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->targetDurationSec:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->approxDurationMs:J

    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->contentLength:J

    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->id:I

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/a$a;

    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->mediaFormat:Lx9/m;

    iput-object p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->resolutionString:Ljava/lang/String;

    const/16 p1, 0x1e

    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->fps:I

    return-void
.end method

.method public constructor <init>(ILorg/schabi/newpipe/extractor/services/youtube/a$a;Lx9/m;Ljava/lang/String;I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->avgBitrate:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->sampleRate:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->audioChannels:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->targetDurationSec:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->approxDurationMs:J

    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->contentLength:J

    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->id:I

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/a$a;

    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->mediaFormat:Lx9/m;

    iput-object p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->resolutionString:Ljava/lang/String;

    iput p5, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->fps:I

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/services/youtube/a;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->avgBitrate:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->sampleRate:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->audioChannels:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->fps:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->targetDurationSec:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->approxDurationMs:J

    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->contentLength:J

    .line 5
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/a;->mediaFormat:Lx9/m;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->mediaFormat:Lx9/m;

    .line 6
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/a;->id:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->id:I

    .line 7
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/a;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/a$a;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/a$a;

    .line 8
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/a;->avgBitrate:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->avgBitrate:I

    .line 9
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/a;->sampleRate:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->sampleRate:I

    .line 10
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/a;->audioChannels:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->audioChannels:I

    .line 11
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/a;->resolutionString:Ljava/lang/String;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->resolutionString:Ljava/lang/String;

    .line 12
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/a;->fps:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->fps:I

    .line 13
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/a;->bitrate:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->bitrate:I

    .line 14
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/a;->width:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->width:I

    .line 15
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/a;->height:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->height:I

    .line 16
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/a;->initStart:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->initStart:I

    .line 17
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/a;->initEnd:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->initEnd:I

    .line 18
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/a;->indexStart:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->indexStart:I

    .line 19
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/a;->indexEnd:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->indexEnd:I

    .line 20
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/a;->quality:Ljava/lang/String;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->quality:Ljava/lang/String;

    .line 21
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/a;->codec:Ljava/lang/String;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->codec:Ljava/lang/String;

    .line 22
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/a;->targetDurationSec:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->targetDurationSec:I

    .line 23
    iget-wide v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/a;->approxDurationMs:J

    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->approxDurationMs:J

    .line 24
    iget-wide v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/a;->contentLength:J

    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->contentLength:J

    .line 25
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/a;->audioTrackId:Ljava/lang/String;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->audioTrackId:Ljava/lang/String;

    .line 26
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/a;->audioTrackName:Ljava/lang/String;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->audioTrackName:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/a;->audioTrackType:Loa/c;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->audioTrackType:Loa/c;

    .line 28
    iget-object p1, p1, Lorg/schabi/newpipe/extractor/services/youtube/a;->audioLocale:Ljava/util/Locale;

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->audioLocale:Ljava/util/Locale;

    return-void
.end method

.method public static n(I)Lorg/schabi/newpipe/extractor/services/youtube/a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/a;->ITAG_LIST:[Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7
    .line 8
    aget-object v3, v0, v2

    .line 9
    .line 10
    iget v4, v3, Lorg/schabi/newpipe/extractor/services/youtube/a;->id:I

    .line 11
    .line 12
    if-ne p0, v4, :cond_0

    .line 13
    .line 14
    new-instance p0, Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v3}, Lorg/schabi/newpipe/extractor/services/youtube/a;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/a;)V

    .line 18
    return-object p0

    .line 19
    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_1
    new-instance v0, Laa/h;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    const-string v2, "itag "

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string p0, " is not supported"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, p0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 49
    throw v0
.end method


# virtual methods
.method public A(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, -0x1

    :goto_0
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->contentLength:J

    return-void
.end method

.method public B(I)V
    .locals 0

    .line 1
    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->fps:I

    return-void
.end method

.method public C(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->height:I

    return-void
.end method

.method public D(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->indexEnd:I

    return-void
.end method

.method public E(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->indexStart:I

    return-void
.end method

.method public F(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->initEnd:I

    return-void
.end method

.method public G(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->initStart:I

    return-void
.end method

.method public H(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->quality:Ljava/lang/String;

    return-void
.end method

.method public I(I)V
    .locals 0

    .line 1
    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->sampleRate:I

    return-void
.end method

.method public J(I)V
    .locals 0

    .line 1
    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->targetDurationSec:I

    return-void
.end method

.method public K(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->width:I

    return-void
.end method

.method public a()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->audioLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->audioTrackId:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->audioTrackName:Ljava/lang/String;

    return-object v0
.end method

.method public d()Loa/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->audioTrackType:Loa/c;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->avgBitrate:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->bitrate:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->codec:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->fps:I

    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->height:I

    return v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->indexEnd:I

    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->indexStart:I

    return v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->initEnd:I

    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->initStart:I

    return v0
.end method

.method public o()Lx9/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->mediaFormat:Lx9/m;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->quality:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->resolutionString:Ljava/lang/String;

    return-object v0
.end method

.method public r()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->width:I

    return v0
.end method

.method public s(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, -0x1

    :goto_0
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->approxDurationMs:J

    return-void
.end method

.method public t(I)V
    .locals 0

    .line 1
    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->audioChannels:I

    return-void
.end method

.method public u(Ljava/util/Locale;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->audioLocale:Ljava/util/Locale;

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->audioTrackId:Ljava/lang/String;

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->audioTrackName:Ljava/lang/String;

    return-void
.end method

.method public x(Loa/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->audioTrackType:Loa/c;

    return-void
.end method

.method public y(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->bitrate:I

    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/a;->codec:Ljava/lang/String;

    return-void
.end method
