.class public final enum Landroidx/core/graphics/BlendModeCompat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/core/graphics/BlendModeCompat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/core/graphics/BlendModeCompat;

.field public static final enum CLEAR:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum COLOR:Landroidx/core/graphics/BlendModeCompat;
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation
.end field

.field public static final enum COLOR_BURN:Landroidx/core/graphics/BlendModeCompat;
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation
.end field

.field public static final enum COLOR_DODGE:Landroidx/core/graphics/BlendModeCompat;
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation
.end field

.field public static final enum DARKEN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DIFFERENCE:Landroidx/core/graphics/BlendModeCompat;
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation
.end field

.field public static final enum DST:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DST_ATOP:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DST_IN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DST_OUT:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DST_OVER:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum EXCLUSION:Landroidx/core/graphics/BlendModeCompat;
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation
.end field

.field public static final enum HARD_LIGHT:Landroidx/core/graphics/BlendModeCompat;
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation
.end field

.field public static final enum HUE:Landroidx/core/graphics/BlendModeCompat;
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation
.end field

.field public static final enum LIGHTEN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum LUMINOSITY:Landroidx/core/graphics/BlendModeCompat;
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation
.end field

.field public static final enum MODULATE:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum MULTIPLY:Landroidx/core/graphics/BlendModeCompat;
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation
.end field

.field public static final enum OVERLAY:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum PLUS:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SATURATION:Landroidx/core/graphics/BlendModeCompat;
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation
.end field

.field public static final enum SCREEN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SOFT_LIGHT:Landroidx/core/graphics/BlendModeCompat;
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation
.end field

.field public static final enum SRC:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SRC_ATOP:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SRC_IN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SRC_OUT:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SRC_OVER:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum XOR:Landroidx/core/graphics/BlendModeCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 1
    .line 2
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    .line 3
    .line 4
    const-string v1, "CLEAR"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Landroidx/core/graphics/BlendModeCompat;->CLEAR:Landroidx/core/graphics/BlendModeCompat;

    .line 11
    .line 12
    new-instance v1, Landroidx/core/graphics/BlendModeCompat;

    .line 13
    .line 14
    const-string v3, "SRC"

    .line 15
    const/4 v4, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3, v4}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v1, Landroidx/core/graphics/BlendModeCompat;->SRC:Landroidx/core/graphics/BlendModeCompat;

    .line 21
    .line 22
    new-instance v3, Landroidx/core/graphics/BlendModeCompat;

    .line 23
    .line 24
    const-string v5, "DST"

    .line 25
    const/4 v6, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v5, v6}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v3, Landroidx/core/graphics/BlendModeCompat;->DST:Landroidx/core/graphics/BlendModeCompat;

    .line 31
    .line 32
    new-instance v5, Landroidx/core/graphics/BlendModeCompat;

    .line 33
    .line 34
    const-string v7, "SRC_OVER"

    .line 35
    const/4 v8, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v5, v7, v8}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    sput-object v5, Landroidx/core/graphics/BlendModeCompat;->SRC_OVER:Landroidx/core/graphics/BlendModeCompat;

    .line 41
    .line 42
    new-instance v7, Landroidx/core/graphics/BlendModeCompat;

    .line 43
    .line 44
    const-string v9, "DST_OVER"

    .line 45
    const/4 v10, 0x4

    .line 46
    .line 47
    .line 48
    invoke-direct {v7, v9, v10}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    sput-object v7, Landroidx/core/graphics/BlendModeCompat;->DST_OVER:Landroidx/core/graphics/BlendModeCompat;

    .line 51
    .line 52
    new-instance v9, Landroidx/core/graphics/BlendModeCompat;

    .line 53
    .line 54
    const-string v11, "SRC_IN"

    .line 55
    const/4 v12, 0x5

    .line 56
    .line 57
    .line 58
    invoke-direct {v9, v11, v12}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    sput-object v9, Landroidx/core/graphics/BlendModeCompat;->SRC_IN:Landroidx/core/graphics/BlendModeCompat;

    .line 61
    .line 62
    new-instance v11, Landroidx/core/graphics/BlendModeCompat;

    .line 63
    .line 64
    const-string v13, "DST_IN"

    .line 65
    const/4 v14, 0x6

    .line 66
    .line 67
    .line 68
    invoke-direct {v11, v13, v14}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 69
    .line 70
    sput-object v11, Landroidx/core/graphics/BlendModeCompat;->DST_IN:Landroidx/core/graphics/BlendModeCompat;

    .line 71
    .line 72
    new-instance v13, Landroidx/core/graphics/BlendModeCompat;

    .line 73
    .line 74
    const-string v15, "SRC_OUT"

    .line 75
    const/4 v14, 0x7

    .line 76
    .line 77
    .line 78
    invoke-direct {v13, v15, v14}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 79
    .line 80
    sput-object v13, Landroidx/core/graphics/BlendModeCompat;->SRC_OUT:Landroidx/core/graphics/BlendModeCompat;

    .line 81
    .line 82
    new-instance v15, Landroidx/core/graphics/BlendModeCompat;

    .line 83
    .line 84
    const-string v14, "DST_OUT"

    .line 85
    .line 86
    const/16 v12, 0x8

    .line 87
    .line 88
    .line 89
    invoke-direct {v15, v14, v12}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 90
    .line 91
    sput-object v15, Landroidx/core/graphics/BlendModeCompat;->DST_OUT:Landroidx/core/graphics/BlendModeCompat;

    .line 92
    .line 93
    new-instance v14, Landroidx/core/graphics/BlendModeCompat;

    .line 94
    .line 95
    const-string v12, "SRC_ATOP"

    .line 96
    .line 97
    const/16 v10, 0x9

    .line 98
    .line 99
    .line 100
    invoke-direct {v14, v12, v10}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 101
    .line 102
    sput-object v14, Landroidx/core/graphics/BlendModeCompat;->SRC_ATOP:Landroidx/core/graphics/BlendModeCompat;

    .line 103
    .line 104
    new-instance v12, Landroidx/core/graphics/BlendModeCompat;

    .line 105
    .line 106
    const-string v10, "DST_ATOP"

    .line 107
    .line 108
    const/16 v8, 0xa

    .line 109
    .line 110
    .line 111
    invoke-direct {v12, v10, v8}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 112
    .line 113
    sput-object v12, Landroidx/core/graphics/BlendModeCompat;->DST_ATOP:Landroidx/core/graphics/BlendModeCompat;

    .line 114
    .line 115
    new-instance v10, Landroidx/core/graphics/BlendModeCompat;

    .line 116
    .line 117
    const-string v8, "XOR"

    .line 118
    .line 119
    const/16 v6, 0xb

    .line 120
    .line 121
    .line 122
    invoke-direct {v10, v8, v6}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 123
    .line 124
    sput-object v10, Landroidx/core/graphics/BlendModeCompat;->XOR:Landroidx/core/graphics/BlendModeCompat;

    .line 125
    .line 126
    new-instance v8, Landroidx/core/graphics/BlendModeCompat;

    .line 127
    .line 128
    const-string v6, "PLUS"

    .line 129
    .line 130
    const/16 v4, 0xc

    .line 131
    .line 132
    .line 133
    invoke-direct {v8, v6, v4}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 134
    .line 135
    sput-object v8, Landroidx/core/graphics/BlendModeCompat;->PLUS:Landroidx/core/graphics/BlendModeCompat;

    .line 136
    .line 137
    new-instance v6, Landroidx/core/graphics/BlendModeCompat;

    .line 138
    .line 139
    const-string v4, "MODULATE"

    .line 140
    .line 141
    const/16 v2, 0xd

    .line 142
    .line 143
    .line 144
    invoke-direct {v6, v4, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 145
    .line 146
    sput-object v6, Landroidx/core/graphics/BlendModeCompat;->MODULATE:Landroidx/core/graphics/BlendModeCompat;

    .line 147
    .line 148
    new-instance v4, Landroidx/core/graphics/BlendModeCompat;

    .line 149
    .line 150
    const-string v2, "SCREEN"

    .line 151
    .line 152
    move-object/from16 v16, v6

    .line 153
    .line 154
    const/16 v6, 0xe

    .line 155
    .line 156
    .line 157
    invoke-direct {v4, v2, v6}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 158
    .line 159
    sput-object v4, Landroidx/core/graphics/BlendModeCompat;->SCREEN:Landroidx/core/graphics/BlendModeCompat;

    .line 160
    .line 161
    new-instance v2, Landroidx/core/graphics/BlendModeCompat;

    .line 162
    .line 163
    const-string v6, "OVERLAY"

    .line 164
    .line 165
    move-object/from16 v17, v4

    .line 166
    .line 167
    const/16 v4, 0xf

    .line 168
    .line 169
    .line 170
    invoke-direct {v2, v6, v4}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 171
    .line 172
    sput-object v2, Landroidx/core/graphics/BlendModeCompat;->OVERLAY:Landroidx/core/graphics/BlendModeCompat;

    .line 173
    .line 174
    new-instance v6, Landroidx/core/graphics/BlendModeCompat;

    .line 175
    .line 176
    const-string v4, "DARKEN"

    .line 177
    .line 178
    move-object/from16 v18, v2

    .line 179
    .line 180
    const/16 v2, 0x10

    .line 181
    .line 182
    .line 183
    invoke-direct {v6, v4, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 184
    .line 185
    sput-object v6, Landroidx/core/graphics/BlendModeCompat;->DARKEN:Landroidx/core/graphics/BlendModeCompat;

    .line 186
    .line 187
    new-instance v4, Landroidx/core/graphics/BlendModeCompat;

    .line 188
    .line 189
    const-string v2, "LIGHTEN"

    .line 190
    .line 191
    move-object/from16 v19, v6

    .line 192
    .line 193
    const/16 v6, 0x11

    .line 194
    .line 195
    .line 196
    invoke-direct {v4, v2, v6}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 197
    .line 198
    sput-object v4, Landroidx/core/graphics/BlendModeCompat;->LIGHTEN:Landroidx/core/graphics/BlendModeCompat;

    .line 199
    .line 200
    new-instance v2, Landroidx/core/graphics/BlendModeCompat;

    .line 201
    .line 202
    const-string v6, "COLOR_DODGE"

    .line 203
    .line 204
    move-object/from16 v20, v4

    .line 205
    .line 206
    const/16 v4, 0x12

    .line 207
    .line 208
    .line 209
    invoke-direct {v2, v6, v4}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 210
    .line 211
    sput-object v2, Landroidx/core/graphics/BlendModeCompat;->COLOR_DODGE:Landroidx/core/graphics/BlendModeCompat;

    .line 212
    .line 213
    new-instance v6, Landroidx/core/graphics/BlendModeCompat;

    .line 214
    .line 215
    const-string v4, "COLOR_BURN"

    .line 216
    .line 217
    move-object/from16 v21, v2

    .line 218
    .line 219
    const/16 v2, 0x13

    .line 220
    .line 221
    .line 222
    invoke-direct {v6, v4, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 223
    .line 224
    sput-object v6, Landroidx/core/graphics/BlendModeCompat;->COLOR_BURN:Landroidx/core/graphics/BlendModeCompat;

    .line 225
    .line 226
    new-instance v4, Landroidx/core/graphics/BlendModeCompat;

    .line 227
    .line 228
    const-string v2, "HARD_LIGHT"

    .line 229
    .line 230
    move-object/from16 v22, v6

    .line 231
    .line 232
    const/16 v6, 0x14

    .line 233
    .line 234
    .line 235
    invoke-direct {v4, v2, v6}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 236
    .line 237
    sput-object v4, Landroidx/core/graphics/BlendModeCompat;->HARD_LIGHT:Landroidx/core/graphics/BlendModeCompat;

    .line 238
    .line 239
    new-instance v2, Landroidx/core/graphics/BlendModeCompat;

    .line 240
    .line 241
    const-string v6, "SOFT_LIGHT"

    .line 242
    .line 243
    move-object/from16 v23, v4

    .line 244
    .line 245
    const/16 v4, 0x15

    .line 246
    .line 247
    .line 248
    invoke-direct {v2, v6, v4}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 249
    .line 250
    sput-object v2, Landroidx/core/graphics/BlendModeCompat;->SOFT_LIGHT:Landroidx/core/graphics/BlendModeCompat;

    .line 251
    .line 252
    new-instance v6, Landroidx/core/graphics/BlendModeCompat;

    .line 253
    .line 254
    const-string v4, "DIFFERENCE"

    .line 255
    .line 256
    move-object/from16 v24, v2

    .line 257
    .line 258
    const/16 v2, 0x16

    .line 259
    .line 260
    .line 261
    invoke-direct {v6, v4, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 262
    .line 263
    sput-object v6, Landroidx/core/graphics/BlendModeCompat;->DIFFERENCE:Landroidx/core/graphics/BlendModeCompat;

    .line 264
    .line 265
    new-instance v2, Landroidx/core/graphics/BlendModeCompat;

    .line 266
    .line 267
    const-string v4, "EXCLUSION"

    .line 268
    .line 269
    move-object/from16 v25, v6

    .line 270
    .line 271
    const/16 v6, 0x17

    .line 272
    .line 273
    .line 274
    invoke-direct {v2, v4, v6}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 275
    .line 276
    sput-object v2, Landroidx/core/graphics/BlendModeCompat;->EXCLUSION:Landroidx/core/graphics/BlendModeCompat;

    .line 277
    .line 278
    new-instance v4, Landroidx/core/graphics/BlendModeCompat;

    .line 279
    .line 280
    const-string v6, "MULTIPLY"

    .line 281
    .line 282
    move-object/from16 v26, v2

    .line 283
    .line 284
    const/16 v2, 0x18

    .line 285
    .line 286
    .line 287
    invoke-direct {v4, v6, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 288
    .line 289
    sput-object v4, Landroidx/core/graphics/BlendModeCompat;->MULTIPLY:Landroidx/core/graphics/BlendModeCompat;

    .line 290
    .line 291
    new-instance v2, Landroidx/core/graphics/BlendModeCompat;

    .line 292
    .line 293
    const-string v6, "HUE"

    .line 294
    .line 295
    move-object/from16 v27, v4

    .line 296
    .line 297
    const/16 v4, 0x19

    .line 298
    .line 299
    .line 300
    invoke-direct {v2, v6, v4}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 301
    .line 302
    sput-object v2, Landroidx/core/graphics/BlendModeCompat;->HUE:Landroidx/core/graphics/BlendModeCompat;

    .line 303
    .line 304
    new-instance v4, Landroidx/core/graphics/BlendModeCompat;

    .line 305
    .line 306
    const-string v6, "SATURATION"

    .line 307
    .line 308
    move-object/from16 v28, v2

    .line 309
    .line 310
    const/16 v2, 0x1a

    .line 311
    .line 312
    .line 313
    invoke-direct {v4, v6, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 314
    .line 315
    sput-object v4, Landroidx/core/graphics/BlendModeCompat;->SATURATION:Landroidx/core/graphics/BlendModeCompat;

    .line 316
    .line 317
    new-instance v2, Landroidx/core/graphics/BlendModeCompat;

    .line 318
    .line 319
    const-string v6, "COLOR"

    .line 320
    .line 321
    move-object/from16 v29, v4

    .line 322
    .line 323
    const/16 v4, 0x1b

    .line 324
    .line 325
    .line 326
    invoke-direct {v2, v6, v4}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 327
    .line 328
    sput-object v2, Landroidx/core/graphics/BlendModeCompat;->COLOR:Landroidx/core/graphics/BlendModeCompat;

    .line 329
    .line 330
    new-instance v4, Landroidx/core/graphics/BlendModeCompat;

    .line 331
    .line 332
    const-string v6, "LUMINOSITY"

    .line 333
    .line 334
    move-object/from16 v30, v2

    .line 335
    .line 336
    const/16 v2, 0x1c

    .line 337
    .line 338
    .line 339
    invoke-direct {v4, v6, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 340
    .line 341
    sput-object v4, Landroidx/core/graphics/BlendModeCompat;->LUMINOSITY:Landroidx/core/graphics/BlendModeCompat;

    .line 342
    .line 343
    const/16 v2, 0x1d

    .line 344
    .line 345
    new-array v2, v2, [Landroidx/core/graphics/BlendModeCompat;

    .line 346
    const/4 v6, 0x0

    .line 347
    .line 348
    aput-object v0, v2, v6

    .line 349
    const/4 v0, 0x1

    .line 350
    .line 351
    aput-object v1, v2, v0

    .line 352
    const/4 v0, 0x2

    .line 353
    .line 354
    aput-object v3, v2, v0

    .line 355
    const/4 v0, 0x3

    .line 356
    .line 357
    aput-object v5, v2, v0

    .line 358
    const/4 v0, 0x4

    .line 359
    .line 360
    aput-object v7, v2, v0

    .line 361
    const/4 v0, 0x5

    .line 362
    .line 363
    aput-object v9, v2, v0

    .line 364
    const/4 v0, 0x6

    .line 365
    .line 366
    aput-object v11, v2, v0

    .line 367
    const/4 v0, 0x7

    .line 368
    .line 369
    aput-object v13, v2, v0

    .line 370
    .line 371
    const/16 v0, 0x8

    .line 372
    .line 373
    aput-object v15, v2, v0

    .line 374
    .line 375
    const/16 v0, 0x9

    .line 376
    .line 377
    aput-object v14, v2, v0

    .line 378
    .line 379
    const/16 v0, 0xa

    .line 380
    .line 381
    aput-object v12, v2, v0

    .line 382
    .line 383
    const/16 v0, 0xb

    .line 384
    .line 385
    aput-object v10, v2, v0

    .line 386
    .line 387
    const/16 v0, 0xc

    .line 388
    .line 389
    aput-object v8, v2, v0

    .line 390
    .line 391
    const/16 v0, 0xd

    .line 392
    .line 393
    aput-object v16, v2, v0

    .line 394
    .line 395
    const/16 v0, 0xe

    .line 396
    .line 397
    aput-object v17, v2, v0

    .line 398
    .line 399
    const/16 v0, 0xf

    .line 400
    .line 401
    aput-object v18, v2, v0

    .line 402
    .line 403
    const/16 v0, 0x10

    .line 404
    .line 405
    aput-object v19, v2, v0

    .line 406
    .line 407
    const/16 v0, 0x11

    .line 408
    .line 409
    aput-object v20, v2, v0

    .line 410
    .line 411
    const/16 v0, 0x12

    .line 412
    .line 413
    aput-object v21, v2, v0

    .line 414
    .line 415
    const/16 v0, 0x13

    .line 416
    .line 417
    aput-object v22, v2, v0

    .line 418
    .line 419
    const/16 v0, 0x14

    .line 420
    .line 421
    aput-object v23, v2, v0

    .line 422
    .line 423
    const/16 v0, 0x15

    .line 424
    .line 425
    aput-object v24, v2, v0

    .line 426
    .line 427
    const/16 v0, 0x16

    .line 428
    .line 429
    aput-object v25, v2, v0

    .line 430
    .line 431
    const/16 v0, 0x17

    .line 432
    .line 433
    aput-object v26, v2, v0

    .line 434
    .line 435
    const/16 v0, 0x18

    .line 436
    .line 437
    aput-object v27, v2, v0

    .line 438
    .line 439
    const/16 v0, 0x19

    .line 440
    .line 441
    aput-object v28, v2, v0

    .line 442
    .line 443
    const/16 v0, 0x1a

    .line 444
    .line 445
    aput-object v29, v2, v0

    .line 446
    .line 447
    const/16 v0, 0x1b

    .line 448
    .line 449
    aput-object v30, v2, v0

    .line 450
    .line 451
    const/16 v0, 0x1c

    .line 452
    .line 453
    aput-object v4, v2, v0

    .line 454
    .line 455
    sput-object v2, Landroidx/core/graphics/BlendModeCompat;->$VALUES:[Landroidx/core/graphics/BlendModeCompat;

    .line 456
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/core/graphics/BlendModeCompat;
    .locals 1

    .line 1
    .line 2
    const-class v0, Landroidx/core/graphics/BlendModeCompat;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Landroidx/core/graphics/BlendModeCompat;

    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/core/graphics/BlendModeCompat;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/core/graphics/BlendModeCompat;->$VALUES:[Landroidx/core/graphics/BlendModeCompat;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Landroidx/core/graphics/BlendModeCompat;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Landroidx/core/graphics/BlendModeCompat;

    .line 9
    return-object v0
.end method
