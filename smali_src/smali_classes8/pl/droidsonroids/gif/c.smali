.class public final enum Lpl/droidsonroids/gif/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpl/droidsonroids/gif/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpl/droidsonroids/gif/c;

.field public static final enum CLOSE_FAILED:Lpl/droidsonroids/gif/c;

.field public static final enum DATA_TOO_BIG:Lpl/droidsonroids/gif/c;

.field public static final enum EOF_TOO_SOON:Lpl/droidsonroids/gif/c;

.field public static final enum IMAGE_DEFECT:Lpl/droidsonroids/gif/c;

.field public static final enum IMG_NOT_CONFINED:Lpl/droidsonroids/gif/c;

.field public static final enum INVALID_BYTE_BUFFER:Lpl/droidsonroids/gif/c;

.field public static final enum INVALID_IMG_DIMS:Lpl/droidsonroids/gif/c;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum INVALID_SCR_DIMS:Lpl/droidsonroids/gif/c;

.field public static final enum NOT_ENOUGH_MEM:Lpl/droidsonroids/gif/c;

.field public static final enum NOT_GIF_FILE:Lpl/droidsonroids/gif/c;

.field public static final enum NOT_READABLE:Lpl/droidsonroids/gif/c;

.field public static final enum NO_COLOR_MAP:Lpl/droidsonroids/gif/c;

.field public static final enum NO_ERROR:Lpl/droidsonroids/gif/c;

.field public static final enum NO_FRAMES:Lpl/droidsonroids/gif/c;

.field public static final enum NO_IMAG_DSCR:Lpl/droidsonroids/gif/c;

.field public static final enum NO_SCRN_DSCR:Lpl/droidsonroids/gif/c;

.field public static final enum OPEN_FAILED:Lpl/droidsonroids/gif/c;

.field public static final enum READ_FAILED:Lpl/droidsonroids/gif/c;

.field public static final enum REWIND_FAILED:Lpl/droidsonroids/gif/c;

.field public static final enum UNKNOWN:Lpl/droidsonroids/gif/c;

.field public static final enum WRONG_RECORD:Lpl/droidsonroids/gif/c;


# instance fields
.field public final description:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    .line 2
    new-instance v0, Lpl/droidsonroids/gif/c;

    .line 3
    .line 4
    const-string v1, "No error"

    .line 5
    .line 6
    const-string v2, "NO_ERROR"

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v2, v3, v3, v1}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 11
    .line 12
    sput-object v0, Lpl/droidsonroids/gif/c;->NO_ERROR:Lpl/droidsonroids/gif/c;

    .line 13
    .line 14
    new-instance v1, Lpl/droidsonroids/gif/c;

    .line 15
    .line 16
    const/16 v2, 0x65

    .line 17
    .line 18
    const-string v4, "Failed to open given input"

    .line 19
    .line 20
    const-string v5, "OPEN_FAILED"

    .line 21
    const/4 v6, 0x1

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v5, v6, v2, v4}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 25
    .line 26
    sput-object v1, Lpl/droidsonroids/gif/c;->OPEN_FAILED:Lpl/droidsonroids/gif/c;

    .line 27
    .line 28
    new-instance v2, Lpl/droidsonroids/gif/c;

    .line 29
    .line 30
    const/16 v4, 0x66

    .line 31
    .line 32
    const-string v5, "Failed to read from given input"

    .line 33
    .line 34
    const-string v7, "READ_FAILED"

    .line 35
    const/4 v8, 0x2

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v7, v8, v4, v5}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 39
    .line 40
    sput-object v2, Lpl/droidsonroids/gif/c;->READ_FAILED:Lpl/droidsonroids/gif/c;

    .line 41
    .line 42
    new-instance v4, Lpl/droidsonroids/gif/c;

    .line 43
    .line 44
    const/16 v5, 0x67

    .line 45
    .line 46
    const-string v7, "Data is not in GIF format"

    .line 47
    .line 48
    const-string v9, "NOT_GIF_FILE"

    .line 49
    const/4 v10, 0x3

    .line 50
    .line 51
    .line 52
    invoke-direct {v4, v9, v10, v5, v7}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 53
    .line 54
    sput-object v4, Lpl/droidsonroids/gif/c;->NOT_GIF_FILE:Lpl/droidsonroids/gif/c;

    .line 55
    .line 56
    new-instance v5, Lpl/droidsonroids/gif/c;

    .line 57
    .line 58
    const/16 v7, 0x68

    .line 59
    .line 60
    const-string v9, "No screen descriptor detected"

    .line 61
    .line 62
    const-string v11, "NO_SCRN_DSCR"

    .line 63
    const/4 v12, 0x4

    .line 64
    .line 65
    .line 66
    invoke-direct {v5, v11, v12, v7, v9}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 67
    .line 68
    sput-object v5, Lpl/droidsonroids/gif/c;->NO_SCRN_DSCR:Lpl/droidsonroids/gif/c;

    .line 69
    .line 70
    new-instance v7, Lpl/droidsonroids/gif/c;

    .line 71
    .line 72
    const/16 v9, 0x69

    .line 73
    .line 74
    const-string v11, "No image descriptor detected"

    .line 75
    .line 76
    const-string v13, "NO_IMAG_DSCR"

    .line 77
    const/4 v14, 0x5

    .line 78
    .line 79
    .line 80
    invoke-direct {v7, v13, v14, v9, v11}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 81
    .line 82
    sput-object v7, Lpl/droidsonroids/gif/c;->NO_IMAG_DSCR:Lpl/droidsonroids/gif/c;

    .line 83
    .line 84
    new-instance v9, Lpl/droidsonroids/gif/c;

    .line 85
    .line 86
    const/16 v11, 0x6a

    .line 87
    .line 88
    const-string v13, "Neither global nor local color map found"

    .line 89
    .line 90
    const-string v15, "NO_COLOR_MAP"

    .line 91
    const/4 v14, 0x6

    .line 92
    .line 93
    .line 94
    invoke-direct {v9, v15, v14, v11, v13}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 95
    .line 96
    sput-object v9, Lpl/droidsonroids/gif/c;->NO_COLOR_MAP:Lpl/droidsonroids/gif/c;

    .line 97
    .line 98
    new-instance v11, Lpl/droidsonroids/gif/c;

    .line 99
    .line 100
    const/16 v13, 0x6b

    .line 101
    .line 102
    const-string v15, "Wrong record type detected"

    .line 103
    .line 104
    const-string v14, "WRONG_RECORD"

    .line 105
    const/4 v12, 0x7

    .line 106
    .line 107
    .line 108
    invoke-direct {v11, v14, v12, v13, v15}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 109
    .line 110
    sput-object v11, Lpl/droidsonroids/gif/c;->WRONG_RECORD:Lpl/droidsonroids/gif/c;

    .line 111
    .line 112
    new-instance v13, Lpl/droidsonroids/gif/c;

    .line 113
    .line 114
    const/16 v14, 0x6c

    .line 115
    .line 116
    const-string v15, "Number of pixels bigger than width * height"

    .line 117
    .line 118
    const-string v12, "DATA_TOO_BIG"

    .line 119
    .line 120
    const/16 v10, 0x8

    .line 121
    .line 122
    .line 123
    invoke-direct {v13, v12, v10, v14, v15}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 124
    .line 125
    sput-object v13, Lpl/droidsonroids/gif/c;->DATA_TOO_BIG:Lpl/droidsonroids/gif/c;

    .line 126
    .line 127
    new-instance v12, Lpl/droidsonroids/gif/c;

    .line 128
    .line 129
    const/16 v14, 0x6d

    .line 130
    .line 131
    const-string v15, "Failed to allocate required memory"

    .line 132
    .line 133
    const-string v10, "NOT_ENOUGH_MEM"

    .line 134
    .line 135
    const/16 v8, 0x9

    .line 136
    .line 137
    .line 138
    invoke-direct {v12, v10, v8, v14, v15}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 139
    .line 140
    sput-object v12, Lpl/droidsonroids/gif/c;->NOT_ENOUGH_MEM:Lpl/droidsonroids/gif/c;

    .line 141
    .line 142
    new-instance v10, Lpl/droidsonroids/gif/c;

    .line 143
    .line 144
    const/16 v14, 0x6e

    .line 145
    .line 146
    const-string v15, "Failed to close given input"

    .line 147
    .line 148
    const-string v8, "CLOSE_FAILED"

    .line 149
    .line 150
    const/16 v6, 0xa

    .line 151
    .line 152
    .line 153
    invoke-direct {v10, v8, v6, v14, v15}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 154
    .line 155
    sput-object v10, Lpl/droidsonroids/gif/c;->CLOSE_FAILED:Lpl/droidsonroids/gif/c;

    .line 156
    .line 157
    new-instance v8, Lpl/droidsonroids/gif/c;

    .line 158
    .line 159
    const/16 v14, 0x6f

    .line 160
    .line 161
    const-string v15, "Given file was not opened for read"

    .line 162
    .line 163
    const-string v6, "NOT_READABLE"

    .line 164
    .line 165
    const/16 v3, 0xb

    .line 166
    .line 167
    .line 168
    invoke-direct {v8, v6, v3, v14, v15}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 169
    .line 170
    sput-object v8, Lpl/droidsonroids/gif/c;->NOT_READABLE:Lpl/droidsonroids/gif/c;

    .line 171
    .line 172
    new-instance v6, Lpl/droidsonroids/gif/c;

    .line 173
    .line 174
    const/16 v14, 0x70

    .line 175
    .line 176
    const-string v15, "Image is defective, decoding aborted"

    .line 177
    .line 178
    const-string v3, "IMAGE_DEFECT"

    .line 179
    .line 180
    move-object/from16 v16, v8

    .line 181
    .line 182
    const/16 v8, 0xc

    .line 183
    .line 184
    .line 185
    invoke-direct {v6, v3, v8, v14, v15}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 186
    .line 187
    sput-object v6, Lpl/droidsonroids/gif/c;->IMAGE_DEFECT:Lpl/droidsonroids/gif/c;

    .line 188
    .line 189
    new-instance v3, Lpl/droidsonroids/gif/c;

    .line 190
    .line 191
    const/16 v14, 0x71

    .line 192
    .line 193
    const-string v15, "Image EOF detected before image complete"

    .line 194
    .line 195
    const-string v8, "EOF_TOO_SOON"

    .line 196
    .line 197
    move-object/from16 v17, v6

    .line 198
    .line 199
    const/16 v6, 0xd

    .line 200
    .line 201
    .line 202
    invoke-direct {v3, v8, v6, v14, v15}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 203
    .line 204
    sput-object v3, Lpl/droidsonroids/gif/c;->EOF_TOO_SOON:Lpl/droidsonroids/gif/c;

    .line 205
    .line 206
    new-instance v8, Lpl/droidsonroids/gif/c;

    .line 207
    .line 208
    const/16 v14, 0x3e8

    .line 209
    .line 210
    const-string v15, "No frames found, at least one frame required"

    .line 211
    .line 212
    const-string v6, "NO_FRAMES"

    .line 213
    .line 214
    move-object/from16 v18, v3

    .line 215
    .line 216
    const/16 v3, 0xe

    .line 217
    .line 218
    .line 219
    invoke-direct {v8, v6, v3, v14, v15}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 220
    .line 221
    sput-object v8, Lpl/droidsonroids/gif/c;->NO_FRAMES:Lpl/droidsonroids/gif/c;

    .line 222
    .line 223
    new-instance v6, Lpl/droidsonroids/gif/c;

    .line 224
    .line 225
    const/16 v14, 0x3e9

    .line 226
    .line 227
    const-string v15, "Invalid screen size, dimensions must be positive"

    .line 228
    .line 229
    const-string v3, "INVALID_SCR_DIMS"

    .line 230
    .line 231
    move-object/from16 v19, v8

    .line 232
    .line 233
    const/16 v8, 0xf

    .line 234
    .line 235
    .line 236
    invoke-direct {v6, v3, v8, v14, v15}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 237
    .line 238
    sput-object v6, Lpl/droidsonroids/gif/c;->INVALID_SCR_DIMS:Lpl/droidsonroids/gif/c;

    .line 239
    .line 240
    new-instance v3, Lpl/droidsonroids/gif/c;

    .line 241
    .line 242
    const/16 v14, 0x3ea

    .line 243
    .line 244
    const-string v15, "Invalid image size, dimensions must be positive"

    .line 245
    .line 246
    const-string v8, "INVALID_IMG_DIMS"

    .line 247
    .line 248
    move-object/from16 v20, v6

    .line 249
    .line 250
    const/16 v6, 0x10

    .line 251
    .line 252
    .line 253
    invoke-direct {v3, v8, v6, v14, v15}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 254
    .line 255
    sput-object v3, Lpl/droidsonroids/gif/c;->INVALID_IMG_DIMS:Lpl/droidsonroids/gif/c;

    .line 256
    .line 257
    new-instance v8, Lpl/droidsonroids/gif/c;

    .line 258
    .line 259
    const/16 v14, 0x3eb

    .line 260
    .line 261
    const-string v15, "Image size exceeds screen size"

    .line 262
    .line 263
    const-string v6, "IMG_NOT_CONFINED"

    .line 264
    .line 265
    move-object/from16 v21, v3

    .line 266
    .line 267
    const/16 v3, 0x11

    .line 268
    .line 269
    .line 270
    invoke-direct {v8, v6, v3, v14, v15}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 271
    .line 272
    sput-object v8, Lpl/droidsonroids/gif/c;->IMG_NOT_CONFINED:Lpl/droidsonroids/gif/c;

    .line 273
    .line 274
    new-instance v6, Lpl/droidsonroids/gif/c;

    .line 275
    .line 276
    const/16 v14, 0x3ec

    .line 277
    .line 278
    const-string v15, "Input source rewind failed, animation stopped"

    .line 279
    .line 280
    const-string v3, "REWIND_FAILED"

    .line 281
    .line 282
    move-object/from16 v22, v8

    .line 283
    .line 284
    const/16 v8, 0x12

    .line 285
    .line 286
    .line 287
    invoke-direct {v6, v3, v8, v14, v15}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 288
    .line 289
    sput-object v6, Lpl/droidsonroids/gif/c;->REWIND_FAILED:Lpl/droidsonroids/gif/c;

    .line 290
    .line 291
    new-instance v3, Lpl/droidsonroids/gif/c;

    .line 292
    .line 293
    const/16 v14, 0x3ed

    .line 294
    .line 295
    const-string v15, "Invalid and/or indirect byte buffer specified"

    .line 296
    .line 297
    const-string v8, "INVALID_BYTE_BUFFER"

    .line 298
    .line 299
    move-object/from16 v23, v6

    .line 300
    .line 301
    const/16 v6, 0x13

    .line 302
    .line 303
    .line 304
    invoke-direct {v3, v8, v6, v14, v15}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 305
    .line 306
    sput-object v3, Lpl/droidsonroids/gif/c;->INVALID_BYTE_BUFFER:Lpl/droidsonroids/gif/c;

    .line 307
    .line 308
    new-instance v8, Lpl/droidsonroids/gif/c;

    .line 309
    const/4 v14, -0x1

    .line 310
    .line 311
    const-string v15, "Unknown error"

    .line 312
    .line 313
    const-string v6, "UNKNOWN"

    .line 314
    .line 315
    move-object/from16 v24, v3

    .line 316
    .line 317
    const/16 v3, 0x14

    .line 318
    .line 319
    .line 320
    invoke-direct {v8, v6, v3, v14, v15}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 321
    .line 322
    sput-object v8, Lpl/droidsonroids/gif/c;->UNKNOWN:Lpl/droidsonroids/gif/c;

    .line 323
    .line 324
    const/16 v6, 0x15

    .line 325
    .line 326
    new-array v6, v6, [Lpl/droidsonroids/gif/c;

    .line 327
    const/4 v14, 0x0

    .line 328
    .line 329
    aput-object v0, v6, v14

    .line 330
    const/4 v0, 0x1

    .line 331
    .line 332
    aput-object v1, v6, v0

    .line 333
    const/4 v0, 0x2

    .line 334
    .line 335
    aput-object v2, v6, v0

    .line 336
    const/4 v0, 0x3

    .line 337
    .line 338
    aput-object v4, v6, v0

    .line 339
    const/4 v0, 0x4

    .line 340
    .line 341
    aput-object v5, v6, v0

    .line 342
    const/4 v0, 0x5

    .line 343
    .line 344
    aput-object v7, v6, v0

    .line 345
    const/4 v0, 0x6

    .line 346
    .line 347
    aput-object v9, v6, v0

    .line 348
    const/4 v0, 0x7

    .line 349
    .line 350
    aput-object v11, v6, v0

    .line 351
    .line 352
    const/16 v0, 0x8

    .line 353
    .line 354
    aput-object v13, v6, v0

    .line 355
    .line 356
    const/16 v0, 0x9

    .line 357
    .line 358
    aput-object v12, v6, v0

    .line 359
    .line 360
    const/16 v0, 0xa

    .line 361
    .line 362
    aput-object v10, v6, v0

    .line 363
    .line 364
    const/16 v0, 0xb

    .line 365
    .line 366
    aput-object v16, v6, v0

    .line 367
    .line 368
    const/16 v0, 0xc

    .line 369
    .line 370
    aput-object v17, v6, v0

    .line 371
    .line 372
    const/16 v0, 0xd

    .line 373
    .line 374
    aput-object v18, v6, v0

    .line 375
    .line 376
    const/16 v0, 0xe

    .line 377
    .line 378
    aput-object v19, v6, v0

    .line 379
    .line 380
    const/16 v0, 0xf

    .line 381
    .line 382
    aput-object v20, v6, v0

    .line 383
    .line 384
    const/16 v0, 0x10

    .line 385
    .line 386
    aput-object v21, v6, v0

    .line 387
    .line 388
    const/16 v0, 0x11

    .line 389
    .line 390
    aput-object v22, v6, v0

    .line 391
    .line 392
    const/16 v0, 0x12

    .line 393
    .line 394
    aput-object v23, v6, v0

    .line 395
    .line 396
    const/16 v0, 0x13

    .line 397
    .line 398
    aput-object v24, v6, v0

    .line 399
    .line 400
    aput-object v8, v6, v3

    .line 401
    .line 402
    sput-object v6, Lpl/droidsonroids/gif/c;->$VALUES:[Lpl/droidsonroids/gif/c;

    .line 403
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    iput p3, p0, Lpl/droidsonroids/gif/c;->errorCode:I

    .line 6
    .line 7
    iput-object p4, p0, Lpl/droidsonroids/gif/c;->description:Ljava/lang/String;

    .line 8
    return-void
.end method

.method static a(I)Lpl/droidsonroids/gif/c;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lpl/droidsonroids/gif/c;->values()[Lpl/droidsonroids/gif/c;

    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    :goto_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    aget-object v3, v0, v2

    .line 11
    .line 12
    iget v4, v3, Lpl/droidsonroids/gif/c;->errorCode:I

    .line 13
    .line 14
    if-ne v4, p0, :cond_0

    .line 15
    return-object v3

    .line 16
    .line 17
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_1
    sget-object v0, Lpl/droidsonroids/gif/c;->UNKNOWN:Lpl/droidsonroids/gif/c;

    .line 21
    .line 22
    iput p0, v0, Lpl/droidsonroids/gif/c;->errorCode:I

    .line 23
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lpl/droidsonroids/gif/c;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lpl/droidsonroids/gif/c;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lpl/droidsonroids/gif/c;

    .line 9
    return-object p0
.end method

.method public static values()[Lpl/droidsonroids/gif/c;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lpl/droidsonroids/gif/c;->$VALUES:[Lpl/droidsonroids/gif/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lpl/droidsonroids/gif/c;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lpl/droidsonroids/gif/c;

    .line 9
    return-object v0
.end method


# virtual methods
.method b()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    .line 7
    iget v2, p0, Lpl/droidsonroids/gif/c;->errorCode:I

    .line 8
    .line 9
    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    .line 14
    aput-object v2, v1, v3

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    iget-object v3, p0, Lpl/droidsonroids/gif/c;->description:Ljava/lang/String;

    .line 18
    .line 19
    aput-object v3, v1, v2

    .line 20
    .line 21
    const-string v2, "GifError %d: %s"

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
