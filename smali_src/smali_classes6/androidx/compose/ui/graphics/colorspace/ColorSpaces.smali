.class public final Landroidx/compose/ui/graphics/colorspace/ColorSpaces;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Aces:Landroidx/compose/ui/graphics/colorspace/Rgb;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Acescg:Landroidx/compose/ui/graphics/colorspace/Rgb;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final AdobeRgb:Landroidx/compose/ui/graphics/colorspace/Rgb;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Bt2020:Landroidx/compose/ui/graphics/colorspace/Rgb;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Bt709:Landroidx/compose/ui/graphics/colorspace/Rgb;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CieLab:Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CieXyz:Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ColorSpacesArray:[Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DciP3:Landroidx/compose/ui/graphics/colorspace/Rgb;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DisplayP3:Landroidx/compose/ui/graphics/colorspace/Rgb;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ExtendedSrgb:Landroidx/compose/ui/graphics/colorspace/Rgb;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LinearExtendedSrgb:Landroidx/compose/ui/graphics/colorspace/Rgb;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LinearSrgb:Landroidx/compose/ui/graphics/colorspace/Rgb;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final NoneTransferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Ntsc1953:Landroidx/compose/ui/graphics/colorspace/Rgb;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Ntsc1953Primaries:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Oklab:Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ProPhotoRgb:Landroidx/compose/ui/graphics/colorspace/Rgb;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SmpteC:Landroidx/compose/ui/graphics/colorspace/Rgb;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Srgb:Landroidx/compose/ui/graphics/colorspace/Rgb;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SrgbPrimaries:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SrgbTransferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Unspecified:Landroidx/compose/ui/graphics/colorspace/Rgb;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 49

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 8
    const/4 v0, 0x6

    .line 9
    .line 10
    new-array v12, v0, [F

    .line 11
    .line 12
    .line 13
    fill-array-data v12, :array_0

    .line 14
    .line 15
    sput-object v12, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->SrgbPrimaries:[F

    .line 16
    .line 17
    new-array v13, v0, [F

    .line 18
    .line 19
    .line 20
    fill-array-data v13, :array_1

    .line 21
    .line 22
    sput-object v13, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Ntsc1953Primaries:[F

    .line 23
    .line 24
    new-instance v31, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 25
    .line 26
    move-object/from16 v14, v31

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    const-wide v15, 0x4003333333333333L    # 2.4

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    const-wide v17, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    const-wide v19, 0x3faab1232f514a03L    # 0.05213270142180095

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    const-wide v21, 0x3fb3d0722149b580L    # 0.07739938080495357

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    const-wide v23, 0x3fa4b5dcc63f1412L    # 0.04045

    .line 52
    .line 53
    const-wide/16 v25, 0x0

    .line 54
    .line 55
    const-wide/16 v27, 0x0

    .line 56
    .line 57
    const/16 v29, 0x60

    .line 58
    .line 59
    const/16 v30, 0x0

    .line 60
    .line 61
    .line 62
    invoke-direct/range {v14 .. v30}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDDDDILkotlin/jvm/internal/k;)V

    .line 63
    .line 64
    sput-object v31, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->SrgbTransferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 65
    .line 66
    new-instance v14, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 67
    .line 68
    move-object/from16 v32, v14

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    const-wide v33, 0x400199999999999aL    # 2.2

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    const-wide v35, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    const-wide v37, 0x3faab1232f514a03L    # 0.05213270142180095

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    const-wide v39, 0x3fb3d0722149b580L    # 0.07739938080495357

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    const-wide v41, 0x3fa4b5dcc63f1412L    # 0.04045

    .line 94
    .line 95
    const-wide/16 v43, 0x0

    .line 96
    .line 97
    const-wide/16 v45, 0x0

    .line 98
    .line 99
    const/16 v47, 0x60

    .line 100
    .line 101
    const/16 v48, 0x0

    .line 102
    .line 103
    .line 104
    invoke-direct/range {v32 .. v48}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDDDDILkotlin/jvm/internal/k;)V

    .line 105
    .line 106
    sput-object v14, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->NoneTransferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 107
    .line 108
    new-instance v15, Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 109
    .line 110
    const-string v2, "sRGB IEC61966-2.1"

    .line 111
    .line 112
    sget-object v16, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    .line 113
    .line 114
    .line 115
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->e()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 116
    move-result-object v4

    .line 117
    const/4 v6, 0x0

    .line 118
    move-object v1, v15

    .line 119
    move-object v3, v12

    .line 120
    .line 121
    move-object/from16 v5, v31

    .line 122
    .line 123
    .line 124
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    .line 125
    .line 126
    sput-object v15, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Srgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 127
    .line 128
    new-instance v17, Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 129
    .line 130
    const-string v2, "sRGB IEC61966-2.1 (Linear)"

    .line 131
    .line 132
    .line 133
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->e()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 134
    move-result-object v4

    .line 135
    .line 136
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 137
    const/4 v7, 0x0

    .line 138
    .line 139
    const/high16 v8, 0x3f800000    # 1.0f

    .line 140
    const/4 v9, 0x1

    .line 141
    .line 142
    move-object/from16 v1, v17

    .line 143
    .line 144
    .line 145
    invoke-direct/range {v1 .. v9}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V

    .line 146
    .line 147
    sput-object v17, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->LinearSrgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 148
    .line 149
    new-instance v18, Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 150
    .line 151
    const-string v2, "scRGB-nl IEC 61966-2-2:2003"

    .line 152
    .line 153
    .line 154
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->e()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 155
    move-result-object v4

    .line 156
    const/4 v5, 0x0

    .line 157
    .line 158
    sget-object v6, Landroidx/compose/ui/graphics/colorspace/ColorSpaces$ExtendedSrgb$1;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces$ExtendedSrgb$1;

    .line 159
    .line 160
    sget-object v7, Landroidx/compose/ui/graphics/colorspace/ColorSpaces$ExtendedSrgb$2;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces$ExtendedSrgb$2;

    .line 161
    .line 162
    .line 163
    const v8, -0x40b374bc    # -0.799f

    .line 164
    .line 165
    .line 166
    const v9, 0x40198937    # 2.399f

    .line 167
    const/4 v11, 0x2

    .line 168
    .line 169
    move-object/from16 v1, v18

    .line 170
    .line 171
    move-object/from16 v10, v31

    .line 172
    .line 173
    .line 174
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;[FLe8/l;Le8/l;FFLandroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    .line 175
    .line 176
    sput-object v18, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->ExtendedSrgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 177
    .line 178
    new-instance v10, Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 179
    .line 180
    const-string v2, "scRGB IEC 61966-2-2:2003"

    .line 181
    .line 182
    .line 183
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->e()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 184
    move-result-object v4

    .line 185
    .line 186
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 187
    .line 188
    const/high16 v7, -0x41000000    # -0.5f

    .line 189
    .line 190
    .line 191
    const v8, 0x40eff7cf    # 7.499f

    .line 192
    const/4 v9, 0x3

    .line 193
    move-object v1, v10

    .line 194
    .line 195
    .line 196
    invoke-direct/range {v1 .. v9}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V

    .line 197
    .line 198
    sput-object v10, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->LinearExtendedSrgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 199
    .line 200
    new-instance v7, Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 201
    .line 202
    const-string v20, "Rec. ITU-R BT.709-5"

    .line 203
    .line 204
    new-array v1, v0, [F

    .line 205
    .line 206
    .line 207
    fill-array-data v1, :array_2

    .line 208
    .line 209
    .line 210
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->e()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 211
    move-result-object v22

    .line 212
    .line 213
    new-instance v23, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 214
    .line 215
    move-object/from16 v32, v23

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    const-wide v33, 0x4001c71c71c71c72L    # 2.2222222222222223

    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    const-wide v35, 0x3fed1e0c942633b7L    # 0.9099181073703367

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    const-wide v37, 0x3fb70f9b5ece624dL    # 0.09008189262966333

    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    const-wide v39, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    const-wide v41, 0x3fb4bc6a7ef9db23L    # 0.081

    .line 241
    .line 242
    .line 243
    invoke-direct/range {v32 .. v48}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDDDDILkotlin/jvm/internal/k;)V

    .line 244
    .line 245
    const/16 v24, 0x4

    .line 246
    .line 247
    move-object/from16 v19, v7

    .line 248
    .line 249
    move-object/from16 v21, v1

    .line 250
    .line 251
    .line 252
    invoke-direct/range {v19 .. v24}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    .line 253
    .line 254
    sput-object v7, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt709:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 255
    .line 256
    new-instance v8, Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 257
    .line 258
    const-string v26, "Rec. ITU-R BT.2020-1"

    .line 259
    .line 260
    new-array v1, v0, [F

    .line 261
    .line 262
    .line 263
    fill-array-data v1, :array_3

    .line 264
    .line 265
    .line 266
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->e()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 267
    move-result-object v28

    .line 268
    .line 269
    new-instance v29, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 270
    .line 271
    move-object/from16 v32, v29

    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    const-wide v35, 0x3fed1c03d1b450c3L    # 0.9096697898662786

    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    const-wide v37, 0x3fb71fe1725d79e9L    # 0.09033021013372146

    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    const-wide v41, 0x3fb4d9e83e425aeeL    # 0.08145

    .line 287
    .line 288
    .line 289
    invoke-direct/range {v32 .. v48}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDDDDILkotlin/jvm/internal/k;)V

    .line 290
    .line 291
    const/16 v30, 0x5

    .line 292
    .line 293
    move-object/from16 v25, v8

    .line 294
    .line 295
    move-object/from16 v27, v1

    .line 296
    .line 297
    .line 298
    invoke-direct/range {v25 .. v30}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    .line 299
    .line 300
    sput-object v8, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt2020:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 301
    .line 302
    new-instance v9, Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 303
    .line 304
    const-string v33, "SMPTE RP 431-2-2007 DCI (P3)"

    .line 305
    .line 306
    new-array v1, v0, [F

    .line 307
    .line 308
    .line 309
    fill-array-data v1, :array_4

    .line 310
    .line 311
    new-instance v2, Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 312
    .line 313
    .line 314
    const v3, 0x3ea0c49c    # 0.314f

    .line 315
    .line 316
    .line 317
    const v4, 0x3eb3b646    # 0.351f

    .line 318
    .line 319
    .line 320
    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;-><init>(FF)V

    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    const-wide v36, 0x4004cccccccccccdL    # 2.6

    .line 326
    .line 327
    const/16 v38, 0x0

    .line 328
    .line 329
    const/high16 v39, 0x3f800000    # 1.0f

    .line 330
    .line 331
    const/16 v40, 0x6

    .line 332
    .line 333
    move-object/from16 v32, v9

    .line 334
    .line 335
    move-object/from16 v34, v1

    .line 336
    .line 337
    move-object/from16 v35, v2

    .line 338
    .line 339
    .line 340
    invoke-direct/range {v32 .. v40}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V

    .line 341
    .line 342
    sput-object v9, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->DciP3:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 343
    .line 344
    new-instance v11, Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 345
    .line 346
    const-string v2, "Display P3"

    .line 347
    .line 348
    new-array v3, v0, [F

    .line 349
    .line 350
    .line 351
    fill-array-data v3, :array_5

    .line 352
    .line 353
    .line 354
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->e()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 355
    move-result-object v4

    .line 356
    const/4 v6, 0x7

    .line 357
    move-object v1, v11

    .line 358
    .line 359
    move-object/from16 v5, v31

    .line 360
    .line 361
    .line 362
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    .line 363
    .line 364
    sput-object v11, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->DisplayP3:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 365
    .line 366
    new-instance v19, Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 367
    .line 368
    const-string v2, "NTSC (1953)"

    .line 369
    .line 370
    .line 371
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->a()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 372
    move-result-object v4

    .line 373
    .line 374
    new-instance v5, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 375
    .line 376
    move-object/from16 v20, v5

    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    const-wide v21, 0x4001c71c71c71c72L    # 2.2222222222222223

    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    const-wide v23, 0x3fed1e0c942633b7L    # 0.9099181073703367

    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    const-wide v25, 0x3fb70f9b5ece624dL    # 0.09008189262966333

    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    const-wide v27, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    const-wide v29, 0x3fb4bc6a7ef9db23L    # 0.081

    .line 402
    .line 403
    const-wide/16 v31, 0x0

    .line 404
    .line 405
    const-wide/16 v33, 0x0

    .line 406
    .line 407
    const/16 v35, 0x60

    .line 408
    .line 409
    const/16 v36, 0x0

    .line 410
    .line 411
    .line 412
    invoke-direct/range {v20 .. v36}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDDDDILkotlin/jvm/internal/k;)V

    .line 413
    .line 414
    const/16 v6, 0x8

    .line 415
    .line 416
    move-object/from16 v1, v19

    .line 417
    move-object v3, v13

    .line 418
    .line 419
    .line 420
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    .line 421
    .line 422
    sput-object v19, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Ntsc1953:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 423
    .line 424
    new-instance v13, Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 425
    .line 426
    const-string v21, "SMPTE-C RGB"

    .line 427
    .line 428
    new-array v1, v0, [F

    .line 429
    .line 430
    .line 431
    fill-array-data v1, :array_6

    .line 432
    .line 433
    .line 434
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->e()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 435
    move-result-object v23

    .line 436
    .line 437
    new-instance v2, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 438
    .line 439
    move-object/from16 v24, v2

    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    const-wide v25, 0x4001c71c71c71c72L    # 2.2222222222222223

    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    const-wide v27, 0x3fed1e0c942633b7L    # 0.9099181073703367

    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    const-wide v29, 0x3fb70f9b5ece624dL    # 0.09008189262966333

    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    const-wide v31, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    const-wide v33, 0x3fb4bc6a7ef9db23L    # 0.081

    .line 465
    .line 466
    const-wide/16 v35, 0x0

    .line 467
    .line 468
    const-wide/16 v37, 0x0

    .line 469
    .line 470
    const/16 v39, 0x60

    .line 471
    .line 472
    const/16 v40, 0x0

    .line 473
    .line 474
    .line 475
    invoke-direct/range {v24 .. v40}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDDDDILkotlin/jvm/internal/k;)V

    .line 476
    .line 477
    const/16 v25, 0x9

    .line 478
    .line 479
    move-object/from16 v20, v13

    .line 480
    .line 481
    move-object/from16 v22, v1

    .line 482
    .line 483
    .line 484
    invoke-direct/range {v20 .. v25}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    .line 485
    .line 486
    sput-object v13, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->SmpteC:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 487
    .line 488
    new-instance v20, Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 489
    .line 490
    const-string v27, "Adobe RGB (1998)"

    .line 491
    .line 492
    new-array v1, v0, [F

    .line 493
    .line 494
    .line 495
    fill-array-data v1, :array_7

    .line 496
    .line 497
    .line 498
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->e()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 499
    move-result-object v29

    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    const-wide v30, 0x400199999999999aL    # 2.2

    .line 505
    .line 506
    const/16 v32, 0x0

    .line 507
    .line 508
    const/high16 v33, 0x3f800000    # 1.0f

    .line 509
    .line 510
    const/16 v34, 0xa

    .line 511
    .line 512
    move-object/from16 v26, v20

    .line 513
    .line 514
    move-object/from16 v28, v1

    .line 515
    .line 516
    .line 517
    invoke-direct/range {v26 .. v34}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V

    .line 518
    .line 519
    sput-object v20, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->AdobeRgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 520
    .line 521
    new-instance v27, Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 522
    .line 523
    const-string v22, "ROMM RGB ISO 22028-2:2013"

    .line 524
    .line 525
    new-array v1, v0, [F

    .line 526
    .line 527
    .line 528
    fill-array-data v1, :array_8

    .line 529
    .line 530
    .line 531
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->b()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 532
    move-result-object v24

    .line 533
    .line 534
    new-instance v25, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 535
    .line 536
    move-object/from16 v28, v25

    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    const-wide v29, 0x3ffccccccccccccdL    # 1.8

    .line 542
    .line 543
    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    .line 544
    .line 545
    const-wide/16 v33, 0x0

    .line 546
    .line 547
    const-wide/high16 v35, 0x3fb0000000000000L    # 0.0625

    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    const-wide v37, 0x3f9fff79c842fa51L    # 0.031248

    .line 553
    .line 554
    const-wide/16 v39, 0x0

    .line 555
    .line 556
    const-wide/16 v41, 0x0

    .line 557
    .line 558
    const/16 v43, 0x60

    .line 559
    .line 560
    const/16 v44, 0x0

    .line 561
    .line 562
    .line 563
    invoke-direct/range {v28 .. v44}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDDDDILkotlin/jvm/internal/k;)V

    .line 564
    .line 565
    const/16 v26, 0xb

    .line 566
    .line 567
    move-object/from16 v21, v27

    .line 568
    .line 569
    move-object/from16 v23, v1

    .line 570
    .line 571
    .line 572
    invoke-direct/range {v21 .. v26}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    .line 573
    .line 574
    sput-object v27, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->ProPhotoRgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 575
    .line 576
    new-instance v21, Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 577
    .line 578
    const-string v29, "SMPTE ST 2065-1:2012 ACES"

    .line 579
    .line 580
    new-array v1, v0, [F

    .line 581
    .line 582
    .line 583
    fill-array-data v1, :array_9

    .line 584
    .line 585
    .line 586
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->d()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 587
    move-result-object v31

    .line 588
    .line 589
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    .line 590
    .line 591
    .line 592
    const v34, -0x38802000    # -65504.0f

    .line 593
    .line 594
    .line 595
    const v35, 0x477fe000    # 65504.0f

    .line 596
    .line 597
    const/16 v36, 0xc

    .line 598
    .line 599
    move-object/from16 v28, v21

    .line 600
    .line 601
    move-object/from16 v30, v1

    .line 602
    .line 603
    .line 604
    invoke-direct/range {v28 .. v36}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V

    .line 605
    .line 606
    sput-object v21, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Aces:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 607
    .line 608
    new-instance v22, Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 609
    .line 610
    const-string v38, "Academy S-2014-004 ACEScg"

    .line 611
    .line 612
    new-array v1, v0, [F

    .line 613
    .line 614
    .line 615
    fill-array-data v1, :array_a

    .line 616
    .line 617
    .line 618
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->d()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 619
    move-result-object v40

    .line 620
    .line 621
    const-wide/high16 v41, 0x3ff0000000000000L    # 1.0

    .line 622
    .line 623
    .line 624
    const v43, -0x38802000    # -65504.0f

    .line 625
    .line 626
    .line 627
    const v44, 0x477fe000    # 65504.0f

    .line 628
    .line 629
    const/16 v45, 0xd

    .line 630
    .line 631
    move-object/from16 v37, v22

    .line 632
    .line 633
    move-object/from16 v39, v1

    .line 634
    .line 635
    .line 636
    invoke-direct/range {v37 .. v45}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V

    .line 637
    .line 638
    sput-object v22, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Acescg:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 639
    .line 640
    new-instance v6, Landroidx/compose/ui/graphics/colorspace/Xyz;

    .line 641
    .line 642
    const-string v1, "Generic XYZ"

    .line 643
    .line 644
    const/16 v5, 0xe

    .line 645
    .line 646
    .line 647
    invoke-direct {v6, v1, v5}, Landroidx/compose/ui/graphics/colorspace/Xyz;-><init>(Ljava/lang/String;I)V

    .line 648
    .line 649
    sput-object v6, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->CieXyz:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 650
    .line 651
    new-instance v4, Landroidx/compose/ui/graphics/colorspace/Lab;

    .line 652
    .line 653
    const-string v1, "Generic L*a*b*"

    .line 654
    .line 655
    const/16 v3, 0xf

    .line 656
    .line 657
    .line 658
    invoke-direct {v4, v1, v3}, Landroidx/compose/ui/graphics/colorspace/Lab;-><init>(Ljava/lang/String;I)V

    .line 659
    .line 660
    sput-object v4, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->CieLab:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 661
    .line 662
    new-instance v23, Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 663
    .line 664
    const-string v2, "None"

    .line 665
    .line 666
    .line 667
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->e()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 668
    move-result-object v16

    .line 669
    .line 670
    const/16 v24, 0x10

    .line 671
    .line 672
    move-object/from16 v1, v23

    .line 673
    .line 674
    move/from16 v25, v3

    .line 675
    move-object v3, v12

    .line 676
    move-object v12, v4

    .line 677
    .line 678
    move-object/from16 v4, v16

    .line 679
    .line 680
    move/from16 v16, v5

    .line 681
    move-object v5, v14

    .line 682
    move-object v14, v6

    .line 683
    .line 684
    move/from16 v6, v24

    .line 685
    .line 686
    .line 687
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    .line 688
    .line 689
    sput-object v23, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Unspecified:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 690
    .line 691
    new-instance v1, Landroidx/compose/ui/graphics/colorspace/Oklab;

    .line 692
    .line 693
    const-string v2, "Oklab"

    .line 694
    .line 695
    const/16 v3, 0x11

    .line 696
    .line 697
    .line 698
    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/graphics/colorspace/Oklab;-><init>(Ljava/lang/String;I)V

    .line 699
    .line 700
    sput-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Oklab:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 701
    .line 702
    const/16 v2, 0x12

    .line 703
    .line 704
    new-array v2, v2, [Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 705
    const/4 v4, 0x0

    .line 706
    .line 707
    aput-object v15, v2, v4

    .line 708
    const/4 v4, 0x1

    .line 709
    .line 710
    aput-object v17, v2, v4

    .line 711
    const/4 v4, 0x2

    .line 712
    .line 713
    aput-object v18, v2, v4

    .line 714
    const/4 v4, 0x3

    .line 715
    .line 716
    aput-object v10, v2, v4

    .line 717
    const/4 v4, 0x4

    .line 718
    .line 719
    aput-object v7, v2, v4

    .line 720
    const/4 v4, 0x5

    .line 721
    .line 722
    aput-object v8, v2, v4

    .line 723
    .line 724
    aput-object v9, v2, v0

    .line 725
    const/4 v0, 0x7

    .line 726
    .line 727
    aput-object v11, v2, v0

    .line 728
    .line 729
    const/16 v0, 0x8

    .line 730
    .line 731
    aput-object v19, v2, v0

    .line 732
    .line 733
    const/16 v0, 0x9

    .line 734
    .line 735
    aput-object v13, v2, v0

    .line 736
    .line 737
    const/16 v0, 0xa

    .line 738
    .line 739
    aput-object v20, v2, v0

    .line 740
    .line 741
    const/16 v0, 0xb

    .line 742
    .line 743
    aput-object v27, v2, v0

    .line 744
    .line 745
    const/16 v0, 0xc

    .line 746
    .line 747
    aput-object v21, v2, v0

    .line 748
    .line 749
    const/16 v0, 0xd

    .line 750
    .line 751
    aput-object v22, v2, v0

    .line 752
    .line 753
    aput-object v14, v2, v16

    .line 754
    .line 755
    aput-object v12, v2, v25

    .line 756
    .line 757
    const/16 v0, 0x10

    .line 758
    .line 759
    aput-object v23, v2, v0

    .line 760
    .line 761
    aput-object v1, v2, v3

    .line 762
    .line 763
    sput-object v2, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->ColorSpacesArray:[Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 764
    return-void

    :array_0
    .array-data 4
        0x3f23d70a    # 0.64f
        0x3ea8f5c3    # 0.33f
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_1
    .array-data 4
        0x3f2b851f    # 0.67f
        0x3ea8f5c3    # 0.33f
        0x3e570a3d    # 0.21f
        0x3f35c28f    # 0.71f
        0x3e0f5c29    # 0.14f
        0x3da3d70a    # 0.08f
    .end array-data

    :array_2
    .array-data 4
        0x3f23d70a    # 0.64f
        0x3ea8f5c3    # 0.33f
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_3
    .array-data 4
        0x3f353f7d    # 0.708f
        0x3e958106    # 0.292f
        0x3e2e147b    # 0.17f
        0x3f4c0831    # 0.797f
        0x3e0624dd    # 0.131f
        0x3d3c6a7f    # 0.046f
    .end array-data

    :array_4
    .array-data 4
        0x3f2e147b    # 0.68f
        0x3ea3d70a    # 0.32f
        0x3e87ae14    # 0.265f
        0x3f30a3d7    # 0.69f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_5
    .array-data 4
        0x3f2e147b    # 0.68f
        0x3ea3d70a    # 0.32f
        0x3e87ae14    # 0.265f
        0x3f30a3d7    # 0.69f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_6
    .array-data 4
        0x3f2147ae    # 0.63f
        0x3eae147b    # 0.34f
        0x3e9eb852    # 0.31f
        0x3f1851ec    # 0.595f
        0x3e1eb852    # 0.155f
        0x3d8f5c29    # 0.07f
    .end array-data

    :array_7
    .array-data 4
        0x3f23d70a    # 0.64f
        0x3ea8f5c3    # 0.33f
        0x3e570a3d    # 0.21f
        0x3f35c28f    # 0.71f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_8
    .array-data 4
        0x3f3c154d    # 0.7347f
        0x3e87d567    # 0.2653f
        0x3e236e2f    # 0.1596f
        0x3f572474    # 0.8404f
        0x3d15e9e2    # 0.0366f
        0x38d1b717    # 1.0E-4f
    .end array-data

    :array_9
    .array-data 4
        0x3f3c154d    # 0.7347f
        0x3e87d567    # 0.2653f
        0x0
        0x3f800000    # 1.0f
        0x38d1b717    # 1.0E-4f
        -0x42624dd3    # -0.077f
    .end array-data

    :array_a
    .array-data 4
        0x3f36872b    # 0.713f
        0x3e960419    # 0.293f
        0x3e28f5c3    # 0.165f
        0x3f547ae1    # 0.83f
        0x3e03126f    # 0.128f
        0x3d343958    # 0.044f
    .end array-data
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
.method public final a()Landroidx/compose/ui/graphics/colorspace/Rgb;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Aces:Landroidx/compose/ui/graphics/colorspace/Rgb;

    return-object v0
.end method

.method public final b()Landroidx/compose/ui/graphics/colorspace/Rgb;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Acescg:Landroidx/compose/ui/graphics/colorspace/Rgb;

    return-object v0
.end method

.method public final c()Landroidx/compose/ui/graphics/colorspace/Rgb;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->AdobeRgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    return-object v0
.end method

.method public final d()Landroidx/compose/ui/graphics/colorspace/Rgb;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt2020:Landroidx/compose/ui/graphics/colorspace/Rgb;

    return-object v0
.end method

.method public final e()Landroidx/compose/ui/graphics/colorspace/Rgb;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt709:Landroidx/compose/ui/graphics/colorspace/Rgb;

    return-object v0
.end method

.method public final f()Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->CieLab:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    return-object v0
.end method

.method public final g()Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->CieXyz:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    return-object v0
.end method

.method public final h()[Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->ColorSpacesArray:[Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    return-object v0
.end method

.method public final i()Landroidx/compose/ui/graphics/colorspace/Rgb;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->DciP3:Landroidx/compose/ui/graphics/colorspace/Rgb;

    return-object v0
.end method

.method public final j()Landroidx/compose/ui/graphics/colorspace/Rgb;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->DisplayP3:Landroidx/compose/ui/graphics/colorspace/Rgb;

    return-object v0
.end method

.method public final k()Landroidx/compose/ui/graphics/colorspace/Rgb;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->ExtendedSrgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    return-object v0
.end method

.method public final l()Landroidx/compose/ui/graphics/colorspace/Rgb;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->LinearExtendedSrgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    return-object v0
.end method

.method public final m()Landroidx/compose/ui/graphics/colorspace/Rgb;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->LinearSrgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    return-object v0
.end method

.method public final n()Landroidx/compose/ui/graphics/colorspace/Rgb;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Ntsc1953:Landroidx/compose/ui/graphics/colorspace/Rgb;

    return-object v0
.end method

.method public final o()[F
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Ntsc1953Primaries:[F

    return-object v0
.end method

.method public final p()Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Oklab:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    return-object v0
.end method

.method public final q()Landroidx/compose/ui/graphics/colorspace/Rgb;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->ProPhotoRgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    return-object v0
.end method

.method public final r()Landroidx/compose/ui/graphics/colorspace/Rgb;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->SmpteC:Landroidx/compose/ui/graphics/colorspace/Rgb;

    return-object v0
.end method

.method public final s()Landroidx/compose/ui/graphics/colorspace/Rgb;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Srgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    return-object v0
.end method

.method public final t()[F
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->SrgbPrimaries:[F

    return-object v0
.end method

.method public final u()Landroidx/compose/ui/graphics/colorspace/Rgb;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Unspecified:Landroidx/compose/ui/graphics/colorspace/Rgb;

    return-object v0
.end method
