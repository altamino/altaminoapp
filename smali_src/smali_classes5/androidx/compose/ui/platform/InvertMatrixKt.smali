.class public final Landroidx/compose/ui/platform/InvertMatrixKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInvertMatrix.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InvertMatrix.kt\nandroidx/compose/ui/platform/InvertMatrixKt\n+ 2 Matrix.kt\nandroidx/compose/ui/graphics/Matrix\n*L\n1#1,77:1\n39#2:78\n39#2:79\n39#2:80\n39#2:81\n39#2:82\n39#2:83\n39#2:84\n39#2:85\n39#2:86\n39#2:87\n39#2:88\n39#2:89\n39#2:90\n39#2:91\n39#2:92\n39#2:93\n42#2,2:94\n42#2,2:96\n42#2,2:98\n42#2,2:100\n42#2,2:102\n42#2,2:104\n42#2,2:106\n42#2,2:108\n42#2,2:110\n42#2,2:112\n42#2,2:114\n42#2,2:116\n42#2,2:118\n42#2,2:120\n42#2,2:122\n42#2,2:124\n*S KotlinDebug\n*F\n+ 1 InvertMatrix.kt\nandroidx/compose/ui/platform/InvertMatrixKt\n*L\n26#1:78\n27#1:79\n28#1:80\n29#1:81\n30#1:82\n31#1:83\n32#1:84\n33#1:85\n34#1:86\n35#1:87\n36#1:88\n37#1:89\n38#1:90\n39#1:91\n40#1:92\n41#1:93\n60#1:94,2\n61#1:96,2\n62#1:98,2\n63#1:100,2\n64#1:102,2\n65#1:104,2\n66#1:106,2\n67#1:108,2\n68#1:110,2\n69#1:112,2\n70#1:114,2\n71#1:116,2\n72#1:118,2\n73#1:120,2\n74#1:122,2\n75#1:124,2\n*E\n"
.end annotation


# direct methods
.method public static final a([F[F)Z
    .locals 47
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    const-string v2, "$this$invertTo"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    const-string v2, "other"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    aget v3, v0, v2

    .line 18
    const/4 v4, 0x1

    .line 19
    .line 20
    aget v5, v0, v4

    .line 21
    const/4 v6, 0x2

    .line 22
    .line 23
    aget v7, v0, v6

    .line 24
    const/4 v8, 0x3

    .line 25
    .line 26
    aget v9, v0, v8

    .line 27
    const/4 v10, 0x4

    .line 28
    .line 29
    aget v11, v0, v10

    .line 30
    const/4 v12, 0x5

    .line 31
    .line 32
    aget v13, v0, v12

    .line 33
    const/4 v14, 0x6

    .line 34
    .line 35
    aget v15, v0, v14

    .line 36
    .line 37
    const/16 v16, 0x7

    .line 38
    .line 39
    aget v17, v0, v16

    .line 40
    .line 41
    const/16 v18, 0x8

    .line 42
    .line 43
    aget v14, v0, v18

    .line 44
    .line 45
    const/16 v20, 0x9

    .line 46
    .line 47
    aget v12, v0, v20

    .line 48
    .line 49
    const/16 v22, 0xa

    .line 50
    .line 51
    aget v23, v0, v22

    .line 52
    .line 53
    const/16 v24, 0xb

    .line 54
    .line 55
    aget v25, v0, v24

    .line 56
    .line 57
    const/16 v26, 0xc

    .line 58
    .line 59
    aget v10, v0, v26

    .line 60
    .line 61
    const/16 v27, 0xd

    .line 62
    .line 63
    aget v28, v0, v27

    .line 64
    .line 65
    const/16 v29, 0xe

    .line 66
    .line 67
    aget v30, v0, v29

    .line 68
    .line 69
    const/16 v31, 0xf

    .line 70
    .line 71
    aget v0, v0, v31

    .line 72
    .line 73
    mul-float v32, v3, v13

    .line 74
    .line 75
    mul-float v33, v5, v11

    .line 76
    .line 77
    sub-float v32, v32, v33

    .line 78
    .line 79
    mul-float v33, v3, v15

    .line 80
    .line 81
    mul-float v34, v7, v11

    .line 82
    .line 83
    sub-float v33, v33, v34

    .line 84
    .line 85
    mul-float v34, v3, v17

    .line 86
    .line 87
    mul-float v35, v9, v11

    .line 88
    .line 89
    sub-float v34, v34, v35

    .line 90
    .line 91
    mul-float v35, v5, v15

    .line 92
    .line 93
    mul-float v36, v7, v13

    .line 94
    .line 95
    sub-float v35, v35, v36

    .line 96
    .line 97
    mul-float v36, v5, v17

    .line 98
    .line 99
    mul-float v37, v9, v13

    .line 100
    .line 101
    sub-float v36, v36, v37

    .line 102
    .line 103
    mul-float v37, v7, v17

    .line 104
    .line 105
    mul-float v38, v9, v15

    .line 106
    .line 107
    sub-float v37, v37, v38

    .line 108
    .line 109
    mul-float v38, v14, v28

    .line 110
    .line 111
    mul-float v39, v12, v10

    .line 112
    .line 113
    sub-float v38, v38, v39

    .line 114
    .line 115
    mul-float v39, v14, v30

    .line 116
    .line 117
    mul-float v40, v23, v10

    .line 118
    .line 119
    sub-float v39, v39, v40

    .line 120
    .line 121
    mul-float v40, v14, v0

    .line 122
    .line 123
    mul-float v41, v25, v10

    .line 124
    .line 125
    sub-float v40, v40, v41

    .line 126
    .line 127
    mul-float v41, v12, v30

    .line 128
    .line 129
    mul-float v42, v23, v28

    .line 130
    .line 131
    sub-float v41, v41, v42

    .line 132
    .line 133
    mul-float v42, v12, v0

    .line 134
    .line 135
    mul-float v43, v25, v28

    .line 136
    .line 137
    sub-float v42, v42, v43

    .line 138
    .line 139
    mul-float v43, v23, v0

    .line 140
    .line 141
    mul-float v44, v25, v30

    .line 142
    .line 143
    sub-float v43, v43, v44

    .line 144
    .line 145
    mul-float v44, v32, v43

    .line 146
    .line 147
    mul-float v45, v33, v42

    .line 148
    .line 149
    sub-float v44, v44, v45

    .line 150
    .line 151
    mul-float v45, v34, v41

    .line 152
    .line 153
    add-float v44, v44, v45

    .line 154
    .line 155
    mul-float v45, v35, v40

    .line 156
    .line 157
    add-float v44, v44, v45

    .line 158
    .line 159
    mul-float v45, v36, v39

    .line 160
    .line 161
    sub-float v44, v44, v45

    .line 162
    .line 163
    mul-float v45, v37, v38

    .line 164
    .line 165
    add-float v44, v44, v45

    .line 166
    .line 167
    const/16 v45, 0x0

    .line 168
    .line 169
    cmpg-float v45, v44, v45

    .line 170
    .line 171
    if-nez v45, :cond_0

    .line 172
    return v2

    .line 173
    .line 174
    :cond_0
    const/high16 v45, 0x3f800000    # 1.0f

    .line 175
    .line 176
    div-float v45, v45, v44

    .line 177
    .line 178
    mul-float v44, v13, v43

    .line 179
    .line 180
    mul-float v46, v15, v42

    .line 181
    .line 182
    sub-float v44, v44, v46

    .line 183
    .line 184
    mul-float v46, v17, v41

    .line 185
    .line 186
    add-float v44, v44, v46

    .line 187
    .line 188
    mul-float v44, v44, v45

    .line 189
    .line 190
    aput v44, v1, v2

    .line 191
    neg-float v2, v5

    .line 192
    .line 193
    mul-float v2, v2, v43

    .line 194
    .line 195
    mul-float v44, v7, v42

    .line 196
    .line 197
    add-float v2, v2, v44

    .line 198
    .line 199
    mul-float v44, v9, v41

    .line 200
    .line 201
    sub-float v2, v2, v44

    .line 202
    .line 203
    mul-float v2, v2, v45

    .line 204
    .line 205
    aput v2, v1, v4

    .line 206
    .line 207
    mul-float v2, v28, v37

    .line 208
    .line 209
    mul-float v44, v30, v36

    .line 210
    .line 211
    sub-float v2, v2, v44

    .line 212
    .line 213
    mul-float v44, v0, v35

    .line 214
    .line 215
    add-float v2, v2, v44

    .line 216
    .line 217
    mul-float v2, v2, v45

    .line 218
    .line 219
    aput v2, v1, v6

    .line 220
    neg-float v2, v12

    .line 221
    .line 222
    mul-float v2, v2, v37

    .line 223
    .line 224
    mul-float v6, v23, v36

    .line 225
    add-float/2addr v2, v6

    .line 226
    .line 227
    mul-float v6, v25, v35

    .line 228
    sub-float/2addr v2, v6

    .line 229
    .line 230
    mul-float v2, v2, v45

    .line 231
    .line 232
    aput v2, v1, v8

    .line 233
    neg-float v2, v11

    .line 234
    .line 235
    mul-float v6, v2, v43

    .line 236
    .line 237
    mul-float v8, v15, v40

    .line 238
    add-float/2addr v6, v8

    .line 239
    .line 240
    mul-float v8, v17, v39

    .line 241
    sub-float/2addr v6, v8

    .line 242
    .line 243
    mul-float v6, v6, v45

    .line 244
    const/4 v8, 0x4

    .line 245
    .line 246
    aput v6, v1, v8

    .line 247
    .line 248
    mul-float v43, v43, v3

    .line 249
    .line 250
    mul-float v6, v7, v40

    .line 251
    .line 252
    sub-float v43, v43, v6

    .line 253
    .line 254
    mul-float v6, v9, v39

    .line 255
    .line 256
    add-float v43, v43, v6

    .line 257
    .line 258
    mul-float v43, v43, v45

    .line 259
    const/4 v6, 0x5

    .line 260
    .line 261
    aput v43, v1, v6

    .line 262
    neg-float v6, v10

    .line 263
    .line 264
    mul-float v8, v6, v37

    .line 265
    .line 266
    mul-float v21, v30, v34

    .line 267
    .line 268
    add-float v8, v8, v21

    .line 269
    .line 270
    mul-float v21, v0, v33

    .line 271
    .line 272
    sub-float v8, v8, v21

    .line 273
    .line 274
    mul-float v8, v8, v45

    .line 275
    .line 276
    const/16 v19, 0x6

    .line 277
    .line 278
    aput v8, v1, v19

    .line 279
    .line 280
    mul-float v37, v37, v14

    .line 281
    .line 282
    mul-float v8, v23, v34

    .line 283
    .line 284
    sub-float v37, v37, v8

    .line 285
    .line 286
    mul-float v8, v25, v33

    .line 287
    .line 288
    add-float v37, v37, v8

    .line 289
    .line 290
    mul-float v37, v37, v45

    .line 291
    .line 292
    aput v37, v1, v16

    .line 293
    .line 294
    mul-float v11, v11, v42

    .line 295
    .line 296
    mul-float v8, v13, v40

    .line 297
    sub-float/2addr v11, v8

    .line 298
    .line 299
    mul-float v17, v17, v38

    .line 300
    .line 301
    add-float v11, v11, v17

    .line 302
    .line 303
    mul-float v11, v11, v45

    .line 304
    .line 305
    aput v11, v1, v18

    .line 306
    neg-float v8, v3

    .line 307
    .line 308
    mul-float v8, v8, v42

    .line 309
    .line 310
    mul-float v40, v40, v5

    .line 311
    .line 312
    add-float v8, v8, v40

    .line 313
    .line 314
    mul-float v9, v9, v38

    .line 315
    sub-float/2addr v8, v9

    .line 316
    .line 317
    mul-float v8, v8, v45

    .line 318
    .line 319
    aput v8, v1, v20

    .line 320
    .line 321
    mul-float v10, v10, v36

    .line 322
    .line 323
    mul-float v8, v28, v34

    .line 324
    sub-float/2addr v10, v8

    .line 325
    .line 326
    mul-float v0, v0, v32

    .line 327
    add-float/2addr v10, v0

    .line 328
    .line 329
    mul-float v10, v10, v45

    .line 330
    .line 331
    aput v10, v1, v22

    .line 332
    neg-float v0, v14

    .line 333
    .line 334
    mul-float v0, v0, v36

    .line 335
    .line 336
    mul-float v34, v34, v12

    .line 337
    .line 338
    add-float v0, v0, v34

    .line 339
    .line 340
    mul-float v25, v25, v32

    .line 341
    .line 342
    sub-float v0, v0, v25

    .line 343
    .line 344
    mul-float v0, v0, v45

    .line 345
    .line 346
    aput v0, v1, v24

    .line 347
    .line 348
    mul-float v2, v2, v41

    .line 349
    .line 350
    mul-float v13, v13, v39

    .line 351
    add-float/2addr v2, v13

    .line 352
    .line 353
    mul-float v15, v15, v38

    .line 354
    sub-float/2addr v2, v15

    .line 355
    .line 356
    mul-float v2, v2, v45

    .line 357
    .line 358
    aput v2, v1, v26

    .line 359
    .line 360
    mul-float v3, v3, v41

    .line 361
    .line 362
    mul-float v5, v5, v39

    .line 363
    sub-float/2addr v3, v5

    .line 364
    .line 365
    mul-float v7, v7, v38

    .line 366
    add-float/2addr v3, v7

    .line 367
    .line 368
    mul-float v3, v3, v45

    .line 369
    .line 370
    aput v3, v1, v27

    .line 371
    .line 372
    mul-float v6, v6, v35

    .line 373
    .line 374
    mul-float v28, v28, v33

    .line 375
    .line 376
    add-float v6, v6, v28

    .line 377
    .line 378
    mul-float v30, v30, v32

    .line 379
    .line 380
    sub-float v6, v6, v30

    .line 381
    .line 382
    mul-float v6, v6, v45

    .line 383
    .line 384
    aput v6, v1, v29

    .line 385
    .line 386
    mul-float v14, v14, v35

    .line 387
    .line 388
    mul-float v12, v12, v33

    .line 389
    sub-float/2addr v14, v12

    .line 390
    .line 391
    mul-float v23, v23, v32

    .line 392
    .line 393
    add-float v14, v14, v23

    .line 394
    .line 395
    mul-float v14, v14, v45

    .line 396
    .line 397
    aput v14, v1, v31

    .line 398
    return v4
.end method
