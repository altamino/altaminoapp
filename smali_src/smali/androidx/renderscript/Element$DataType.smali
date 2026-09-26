.class public final enum Landroidx/renderscript/Element$DataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/renderscript/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/renderscript/Element$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/renderscript/Element$DataType;

.field public static final enum BOOLEAN:Landroidx/renderscript/Element$DataType;

.field public static final enum FLOAT_32:Landroidx/renderscript/Element$DataType;

.field public static final enum FLOAT_64:Landroidx/renderscript/Element$DataType;

.field public static final enum MATRIX_2X2:Landroidx/renderscript/Element$DataType;

.field public static final enum MATRIX_3X3:Landroidx/renderscript/Element$DataType;

.field public static final enum MATRIX_4X4:Landroidx/renderscript/Element$DataType;

.field public static final enum NONE:Landroidx/renderscript/Element$DataType;

.field public static final enum RS_ALLOCATION:Landroidx/renderscript/Element$DataType;

.field public static final enum RS_ELEMENT:Landroidx/renderscript/Element$DataType;

.field public static final enum RS_SAMPLER:Landroidx/renderscript/Element$DataType;

.field public static final enum RS_SCRIPT:Landroidx/renderscript/Element$DataType;

.field public static final enum RS_TYPE:Landroidx/renderscript/Element$DataType;

.field public static final enum SIGNED_16:Landroidx/renderscript/Element$DataType;

.field public static final enum SIGNED_32:Landroidx/renderscript/Element$DataType;

.field public static final enum SIGNED_64:Landroidx/renderscript/Element$DataType;

.field public static final enum SIGNED_8:Landroidx/renderscript/Element$DataType;

.field public static final enum UNSIGNED_16:Landroidx/renderscript/Element$DataType;

.field public static final enum UNSIGNED_32:Landroidx/renderscript/Element$DataType;

.field public static final enum UNSIGNED_4_4_4_4:Landroidx/renderscript/Element$DataType;

.field public static final enum UNSIGNED_5_5_5_1:Landroidx/renderscript/Element$DataType;

.field public static final enum UNSIGNED_5_6_5:Landroidx/renderscript/Element$DataType;

.field public static final enum UNSIGNED_64:Landroidx/renderscript/Element$DataType;

.field public static final enum UNSIGNED_8:Landroidx/renderscript/Element$DataType;


# instance fields
.field mID:I

.field mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Element$DataType;

    .line 3
    .line 4
    const-string v1, "NONE"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v2, v2}, Landroidx/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 9
    .line 10
    sput-object v0, Landroidx/renderscript/Element$DataType;->NONE:Landroidx/renderscript/Element$DataType;

    .line 11
    .line 12
    new-instance v1, Landroidx/renderscript/Element$DataType;

    .line 13
    .line 14
    const-string v3, "FLOAT_32"

    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, 0x2

    .line 17
    const/4 v6, 0x4

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v3, v4, v5, v6}, Landroidx/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 21
    .line 22
    sput-object v1, Landroidx/renderscript/Element$DataType;->FLOAT_32:Landroidx/renderscript/Element$DataType;

    .line 23
    .line 24
    new-instance v3, Landroidx/renderscript/Element$DataType;

    .line 25
    .line 26
    const-string v7, "FLOAT_64"

    .line 27
    const/4 v8, 0x3

    .line 28
    .line 29
    const/16 v9, 0x8

    .line 30
    .line 31
    .line 32
    invoke-direct {v3, v7, v5, v8, v9}, Landroidx/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 33
    .line 34
    sput-object v3, Landroidx/renderscript/Element$DataType;->FLOAT_64:Landroidx/renderscript/Element$DataType;

    .line 35
    .line 36
    new-instance v7, Landroidx/renderscript/Element$DataType;

    .line 37
    .line 38
    const-string v10, "SIGNED_8"

    .line 39
    .line 40
    .line 41
    invoke-direct {v7, v10, v8, v6, v4}, Landroidx/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 42
    .line 43
    sput-object v7, Landroidx/renderscript/Element$DataType;->SIGNED_8:Landroidx/renderscript/Element$DataType;

    .line 44
    .line 45
    new-instance v10, Landroidx/renderscript/Element$DataType;

    .line 46
    .line 47
    const-string v11, "SIGNED_16"

    .line 48
    const/4 v12, 0x5

    .line 49
    .line 50
    .line 51
    invoke-direct {v10, v11, v6, v12, v5}, Landroidx/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 52
    .line 53
    sput-object v10, Landroidx/renderscript/Element$DataType;->SIGNED_16:Landroidx/renderscript/Element$DataType;

    .line 54
    .line 55
    new-instance v11, Landroidx/renderscript/Element$DataType;

    .line 56
    .line 57
    const-string v13, "SIGNED_32"

    .line 58
    const/4 v14, 0x6

    .line 59
    .line 60
    .line 61
    invoke-direct {v11, v13, v12, v14, v6}, Landroidx/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 62
    .line 63
    sput-object v11, Landroidx/renderscript/Element$DataType;->SIGNED_32:Landroidx/renderscript/Element$DataType;

    .line 64
    .line 65
    new-instance v13, Landroidx/renderscript/Element$DataType;

    .line 66
    .line 67
    const-string v15, "SIGNED_64"

    .line 68
    const/4 v12, 0x7

    .line 69
    .line 70
    .line 71
    invoke-direct {v13, v15, v14, v12, v9}, Landroidx/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 72
    .line 73
    sput-object v13, Landroidx/renderscript/Element$DataType;->SIGNED_64:Landroidx/renderscript/Element$DataType;

    .line 74
    .line 75
    new-instance v15, Landroidx/renderscript/Element$DataType;

    .line 76
    .line 77
    const-string v14, "UNSIGNED_8"

    .line 78
    .line 79
    .line 80
    invoke-direct {v15, v14, v12, v9, v4}, Landroidx/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 81
    .line 82
    sput-object v15, Landroidx/renderscript/Element$DataType;->UNSIGNED_8:Landroidx/renderscript/Element$DataType;

    .line 83
    .line 84
    new-instance v14, Landroidx/renderscript/Element$DataType;

    .line 85
    .line 86
    const-string v12, "UNSIGNED_16"

    .line 87
    .line 88
    const/16 v8, 0x9

    .line 89
    .line 90
    .line 91
    invoke-direct {v14, v12, v9, v8, v5}, Landroidx/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 92
    .line 93
    sput-object v14, Landroidx/renderscript/Element$DataType;->UNSIGNED_16:Landroidx/renderscript/Element$DataType;

    .line 94
    .line 95
    new-instance v12, Landroidx/renderscript/Element$DataType;

    .line 96
    .line 97
    const-string v2, "UNSIGNED_32"

    .line 98
    .line 99
    const/16 v5, 0xa

    .line 100
    .line 101
    .line 102
    invoke-direct {v12, v2, v8, v5, v6}, Landroidx/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 103
    .line 104
    sput-object v12, Landroidx/renderscript/Element$DataType;->UNSIGNED_32:Landroidx/renderscript/Element$DataType;

    .line 105
    .line 106
    new-instance v2, Landroidx/renderscript/Element$DataType;

    .line 107
    .line 108
    const-string v8, "UNSIGNED_64"

    .line 109
    .line 110
    const/16 v6, 0xb

    .line 111
    .line 112
    .line 113
    invoke-direct {v2, v8, v5, v6, v9}, Landroidx/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 114
    .line 115
    sput-object v2, Landroidx/renderscript/Element$DataType;->UNSIGNED_64:Landroidx/renderscript/Element$DataType;

    .line 116
    .line 117
    new-instance v8, Landroidx/renderscript/Element$DataType;

    .line 118
    .line 119
    const-string v5, "BOOLEAN"

    .line 120
    .line 121
    const/16 v9, 0xc

    .line 122
    .line 123
    .line 124
    invoke-direct {v8, v5, v6, v9, v4}, Landroidx/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 125
    .line 126
    sput-object v8, Landroidx/renderscript/Element$DataType;->BOOLEAN:Landroidx/renderscript/Element$DataType;

    .line 127
    .line 128
    new-instance v5, Landroidx/renderscript/Element$DataType;

    .line 129
    .line 130
    const-string v6, "UNSIGNED_5_6_5"

    .line 131
    .line 132
    const/16 v4, 0xd

    .line 133
    .line 134
    move-object/from16 v16, v8

    .line 135
    const/4 v8, 0x2

    .line 136
    .line 137
    .line 138
    invoke-direct {v5, v6, v9, v4, v8}, Landroidx/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 139
    .line 140
    sput-object v5, Landroidx/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroidx/renderscript/Element$DataType;

    .line 141
    .line 142
    new-instance v6, Landroidx/renderscript/Element$DataType;

    .line 143
    .line 144
    const-string v9, "UNSIGNED_5_5_5_1"

    .line 145
    .line 146
    move-object/from16 v17, v5

    .line 147
    .line 148
    const/16 v5, 0xe

    .line 149
    .line 150
    .line 151
    invoke-direct {v6, v9, v4, v5, v8}, Landroidx/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 152
    .line 153
    sput-object v6, Landroidx/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroidx/renderscript/Element$DataType;

    .line 154
    .line 155
    new-instance v9, Landroidx/renderscript/Element$DataType;

    .line 156
    .line 157
    const-string v4, "UNSIGNED_4_4_4_4"

    .line 158
    .line 159
    move-object/from16 v18, v6

    .line 160
    .line 161
    const/16 v6, 0xf

    .line 162
    .line 163
    .line 164
    invoke-direct {v9, v4, v5, v6, v8}, Landroidx/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 165
    .line 166
    sput-object v9, Landroidx/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroidx/renderscript/Element$DataType;

    .line 167
    .line 168
    new-instance v4, Landroidx/renderscript/Element$DataType;

    .line 169
    .line 170
    const/16 v8, 0x40

    .line 171
    .line 172
    const-string v5, "MATRIX_4X4"

    .line 173
    .line 174
    move-object/from16 v19, v9

    .line 175
    .line 176
    const/16 v9, 0x10

    .line 177
    .line 178
    .line 179
    invoke-direct {v4, v5, v6, v9, v8}, Landroidx/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 180
    .line 181
    sput-object v4, Landroidx/renderscript/Element$DataType;->MATRIX_4X4:Landroidx/renderscript/Element$DataType;

    .line 182
    .line 183
    new-instance v5, Landroidx/renderscript/Element$DataType;

    .line 184
    .line 185
    const/16 v8, 0x24

    .line 186
    .line 187
    const-string v6, "MATRIX_3X3"

    .line 188
    .line 189
    move-object/from16 v20, v4

    .line 190
    .line 191
    const/16 v4, 0x11

    .line 192
    .line 193
    .line 194
    invoke-direct {v5, v6, v9, v4, v8}, Landroidx/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 195
    .line 196
    sput-object v5, Landroidx/renderscript/Element$DataType;->MATRIX_3X3:Landroidx/renderscript/Element$DataType;

    .line 197
    .line 198
    new-instance v6, Landroidx/renderscript/Element$DataType;

    .line 199
    .line 200
    const-string v8, "MATRIX_2X2"

    .line 201
    .line 202
    move-object/from16 v21, v5

    .line 203
    .line 204
    const/16 v5, 0x12

    .line 205
    .line 206
    .line 207
    invoke-direct {v6, v8, v4, v5, v9}, Landroidx/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 208
    .line 209
    sput-object v6, Landroidx/renderscript/Element$DataType;->MATRIX_2X2:Landroidx/renderscript/Element$DataType;

    .line 210
    .line 211
    new-instance v8, Landroidx/renderscript/Element$DataType;

    .line 212
    .line 213
    const-string v4, "RS_ELEMENT"

    .line 214
    .line 215
    const/16 v9, 0x3e8

    .line 216
    .line 217
    .line 218
    invoke-direct {v8, v4, v5, v9}, Landroidx/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    .line 219
    .line 220
    sput-object v8, Landroidx/renderscript/Element$DataType;->RS_ELEMENT:Landroidx/renderscript/Element$DataType;

    .line 221
    .line 222
    new-instance v4, Landroidx/renderscript/Element$DataType;

    .line 223
    .line 224
    const/16 v9, 0x3e9

    .line 225
    .line 226
    const-string v5, "RS_TYPE"

    .line 227
    .line 228
    move-object/from16 v22, v8

    .line 229
    .line 230
    const/16 v8, 0x13

    .line 231
    .line 232
    .line 233
    invoke-direct {v4, v5, v8, v9}, Landroidx/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    .line 234
    .line 235
    sput-object v4, Landroidx/renderscript/Element$DataType;->RS_TYPE:Landroidx/renderscript/Element$DataType;

    .line 236
    .line 237
    new-instance v5, Landroidx/renderscript/Element$DataType;

    .line 238
    .line 239
    const/16 v9, 0x3ea

    .line 240
    .line 241
    const-string v8, "RS_ALLOCATION"

    .line 242
    .line 243
    move-object/from16 v23, v4

    .line 244
    .line 245
    const/16 v4, 0x14

    .line 246
    .line 247
    .line 248
    invoke-direct {v5, v8, v4, v9}, Landroidx/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    .line 249
    .line 250
    sput-object v5, Landroidx/renderscript/Element$DataType;->RS_ALLOCATION:Landroidx/renderscript/Element$DataType;

    .line 251
    .line 252
    new-instance v8, Landroidx/renderscript/Element$DataType;

    .line 253
    .line 254
    const/16 v9, 0x3eb

    .line 255
    .line 256
    const-string v4, "RS_SAMPLER"

    .line 257
    .line 258
    move-object/from16 v24, v5

    .line 259
    .line 260
    const/16 v5, 0x15

    .line 261
    .line 262
    .line 263
    invoke-direct {v8, v4, v5, v9}, Landroidx/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    .line 264
    .line 265
    sput-object v8, Landroidx/renderscript/Element$DataType;->RS_SAMPLER:Landroidx/renderscript/Element$DataType;

    .line 266
    .line 267
    new-instance v4, Landroidx/renderscript/Element$DataType;

    .line 268
    .line 269
    const/16 v9, 0x16

    .line 270
    .line 271
    const/16 v5, 0x3ec

    .line 272
    .line 273
    move-object/from16 v25, v8

    .line 274
    .line 275
    const-string v8, "RS_SCRIPT"

    .line 276
    .line 277
    .line 278
    invoke-direct {v4, v8, v9, v5}, Landroidx/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    .line 279
    .line 280
    sput-object v4, Landroidx/renderscript/Element$DataType;->RS_SCRIPT:Landroidx/renderscript/Element$DataType;

    .line 281
    .line 282
    const/16 v5, 0x17

    .line 283
    .line 284
    new-array v5, v5, [Landroidx/renderscript/Element$DataType;

    .line 285
    const/4 v8, 0x0

    .line 286
    .line 287
    aput-object v0, v5, v8

    .line 288
    const/4 v0, 0x1

    .line 289
    .line 290
    aput-object v1, v5, v0

    .line 291
    const/4 v0, 0x2

    .line 292
    .line 293
    aput-object v3, v5, v0

    .line 294
    const/4 v0, 0x3

    .line 295
    .line 296
    aput-object v7, v5, v0

    .line 297
    const/4 v0, 0x4

    .line 298
    .line 299
    aput-object v10, v5, v0

    .line 300
    const/4 v0, 0x5

    .line 301
    .line 302
    aput-object v11, v5, v0

    .line 303
    const/4 v0, 0x6

    .line 304
    .line 305
    aput-object v13, v5, v0

    .line 306
    const/4 v0, 0x7

    .line 307
    .line 308
    aput-object v15, v5, v0

    .line 309
    .line 310
    const/16 v0, 0x8

    .line 311
    .line 312
    aput-object v14, v5, v0

    .line 313
    .line 314
    const/16 v0, 0x9

    .line 315
    .line 316
    aput-object v12, v5, v0

    .line 317
    .line 318
    const/16 v0, 0xa

    .line 319
    .line 320
    aput-object v2, v5, v0

    .line 321
    .line 322
    const/16 v0, 0xb

    .line 323
    .line 324
    aput-object v16, v5, v0

    .line 325
    .line 326
    const/16 v0, 0xc

    .line 327
    .line 328
    aput-object v17, v5, v0

    .line 329
    .line 330
    const/16 v0, 0xd

    .line 331
    .line 332
    aput-object v18, v5, v0

    .line 333
    .line 334
    const/16 v0, 0xe

    .line 335
    .line 336
    aput-object v19, v5, v0

    .line 337
    .line 338
    const/16 v0, 0xf

    .line 339
    .line 340
    aput-object v20, v5, v0

    .line 341
    .line 342
    const/16 v0, 0x10

    .line 343
    .line 344
    aput-object v21, v5, v0

    .line 345
    .line 346
    const/16 v0, 0x11

    .line 347
    .line 348
    aput-object v6, v5, v0

    .line 349
    .line 350
    const/16 v0, 0x12

    .line 351
    .line 352
    aput-object v22, v5, v0

    .line 353
    .line 354
    const/16 v0, 0x13

    .line 355
    .line 356
    aput-object v23, v5, v0

    .line 357
    .line 358
    const/16 v0, 0x14

    .line 359
    .line 360
    aput-object v24, v5, v0

    .line 361
    .line 362
    const/16 v0, 0x15

    .line 363
    .line 364
    aput-object v25, v5, v0

    .line 365
    .line 366
    const/16 v0, 0x16

    .line 367
    .line 368
    aput-object v4, v5, v0

    .line 369
    .line 370
    sput-object v5, Landroidx/renderscript/Element$DataType;->$VALUES:[Landroidx/renderscript/Element$DataType;

    .line 371
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroidx/renderscript/Element$DataType;->mID:I

    const/4 p1, 0x4

    iput p1, p0, Landroidx/renderscript/Element$DataType;->mSize:I

    .line 3
    sget p1, Landroidx/renderscript/RenderScript;->sPointerSize:I

    const/16 p2, 0x8

    if-ne p1, p2, :cond_0

    const/16 p1, 0x20

    iput p1, p0, Landroidx/renderscript/Element$DataType;->mSize:I

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroidx/renderscript/Element$DataType;->mID:I

    iput p4, p0, Landroidx/renderscript/Element$DataType;->mSize:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/renderscript/Element$DataType;
    .locals 1

    .line 1
    .line 2
    const-class v0, Landroidx/renderscript/Element$DataType;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Landroidx/renderscript/Element$DataType;

    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/renderscript/Element$DataType;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataType;->$VALUES:[Landroidx/renderscript/Element$DataType;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Landroidx/renderscript/Element$DataType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Landroidx/renderscript/Element$DataType;

    .line 9
    return-object v0
.end method
