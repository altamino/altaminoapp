.class public Lcom/linkedin/urls/detection/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(C)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/linkedin/urls/detection/a;->a(C)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lcom/linkedin/urls/detection/a;->h(C)Z

    .line 10
    move-result p0

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
.end method

.method public static c(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(C)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/linkedin/urls/detection/a;->a(C)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_2e

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lcom/linkedin/urls/detection/a;->g(C)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_2e

    .line 13
    .line 14
    const/16 v0, 0x400

    .line 15
    .line 16
    if-lt p0, v0, :cond_0

    .line 17
    .line 18
    const/16 v0, 0x4ff

    .line 19
    .line 20
    if-le p0, v0, :cond_2e

    .line 21
    .line 22
    :cond_0
    const/16 v0, 0x500

    .line 23
    .line 24
    if-lt p0, v0, :cond_1

    .line 25
    .line 26
    const/16 v0, 0x527

    .line 27
    .line 28
    if-le p0, v0, :cond_2e

    .line 29
    .line 30
    :cond_1
    const/16 v0, 0x2de0

    .line 31
    .line 32
    if-lt p0, v0, :cond_2

    .line 33
    .line 34
    const/16 v0, 0x2dff

    .line 35
    .line 36
    if-le p0, v0, :cond_2e

    .line 37
    .line 38
    .line 39
    :cond_2
    const v0, 0xa640

    .line 40
    .line 41
    if-lt p0, v0, :cond_3

    .line 42
    .line 43
    .line 44
    const v0, 0xa69f

    .line 45
    .line 46
    if-le p0, v0, :cond_2e

    .line 47
    .line 48
    :cond_3
    const/16 v0, 0x591

    .line 49
    .line 50
    if-lt p0, v0, :cond_4

    .line 51
    .line 52
    const/16 v0, 0x5bf

    .line 53
    .line 54
    if-le p0, v0, :cond_2e

    .line 55
    .line 56
    :cond_4
    const/16 v0, 0x5c1

    .line 57
    .line 58
    if-lt p0, v0, :cond_5

    .line 59
    .line 60
    const/16 v0, 0x5c2

    .line 61
    .line 62
    if-le p0, v0, :cond_2e

    .line 63
    .line 64
    :cond_5
    const/16 v0, 0x5c4

    .line 65
    .line 66
    if-lt p0, v0, :cond_6

    .line 67
    .line 68
    const/16 v0, 0x5c5

    .line 69
    .line 70
    if-le p0, v0, :cond_2e

    .line 71
    .line 72
    :cond_6
    const/16 v0, 0x5c7

    .line 73
    .line 74
    if-eq p0, v0, :cond_2e

    .line 75
    .line 76
    const/16 v0, 0x5d0

    .line 77
    .line 78
    if-lt p0, v0, :cond_7

    .line 79
    .line 80
    const/16 v0, 0x5ea

    .line 81
    .line 82
    if-le p0, v0, :cond_2e

    .line 83
    .line 84
    :cond_7
    const/16 v0, 0x5f0

    .line 85
    .line 86
    if-lt p0, v0, :cond_8

    .line 87
    .line 88
    const/16 v0, 0x5f4

    .line 89
    .line 90
    if-le p0, v0, :cond_2e

    .line 91
    .line 92
    .line 93
    :cond_8
    const v0, 0xfb1d

    .line 94
    .line 95
    if-lt p0, v0, :cond_9

    .line 96
    .line 97
    .line 98
    const v0, 0xfb28

    .line 99
    .line 100
    if-le p0, v0, :cond_2e

    .line 101
    .line 102
    .line 103
    :cond_9
    const v0, 0xfb2a

    .line 104
    .line 105
    if-lt p0, v0, :cond_a

    .line 106
    .line 107
    .line 108
    const v0, 0xfb36

    .line 109
    .line 110
    if-le p0, v0, :cond_2e

    .line 111
    .line 112
    .line 113
    :cond_a
    const v0, 0xfb38

    .line 114
    .line 115
    if-lt p0, v0, :cond_b

    .line 116
    .line 117
    .line 118
    const v0, 0xfb3c

    .line 119
    .line 120
    if-le p0, v0, :cond_2e

    .line 121
    .line 122
    .line 123
    :cond_b
    const v0, 0xfb3e

    .line 124
    .line 125
    if-eq p0, v0, :cond_2e

    .line 126
    .line 127
    .line 128
    const v0, 0xfb40

    .line 129
    .line 130
    if-lt p0, v0, :cond_c

    .line 131
    .line 132
    .line 133
    const v0, 0xfb41

    .line 134
    .line 135
    if-le p0, v0, :cond_2e

    .line 136
    .line 137
    .line 138
    :cond_c
    const v0, 0xfb43

    .line 139
    .line 140
    if-lt p0, v0, :cond_d

    .line 141
    .line 142
    .line 143
    const v0, 0xfb44

    .line 144
    .line 145
    if-le p0, v0, :cond_2e

    .line 146
    .line 147
    .line 148
    :cond_d
    const v0, 0xfb46

    .line 149
    .line 150
    if-lt p0, v0, :cond_e

    .line 151
    .line 152
    .line 153
    const v0, 0xfb4f

    .line 154
    .line 155
    if-le p0, v0, :cond_2e

    .line 156
    .line 157
    :cond_e
    const/16 v0, 0x610

    .line 158
    .line 159
    if-lt p0, v0, :cond_f

    .line 160
    .line 161
    const/16 v0, 0x61a

    .line 162
    .line 163
    if-le p0, v0, :cond_2e

    .line 164
    .line 165
    :cond_f
    const/16 v0, 0x620

    .line 166
    .line 167
    if-lt p0, v0, :cond_10

    .line 168
    .line 169
    const/16 v0, 0x65f

    .line 170
    .line 171
    if-le p0, v0, :cond_2e

    .line 172
    .line 173
    :cond_10
    const/16 v0, 0x66e

    .line 174
    .line 175
    if-lt p0, v0, :cond_11

    .line 176
    .line 177
    const/16 v0, 0x6d3

    .line 178
    .line 179
    if-le p0, v0, :cond_2e

    .line 180
    .line 181
    :cond_11
    const/16 v0, 0x6d5

    .line 182
    .line 183
    if-lt p0, v0, :cond_12

    .line 184
    .line 185
    const/16 v0, 0x6dc

    .line 186
    .line 187
    if-le p0, v0, :cond_2e

    .line 188
    .line 189
    :cond_12
    const/16 v0, 0x6de

    .line 190
    .line 191
    if-lt p0, v0, :cond_13

    .line 192
    .line 193
    const/16 v0, 0x6e8

    .line 194
    .line 195
    if-le p0, v0, :cond_2e

    .line 196
    .line 197
    :cond_13
    const/16 v0, 0x6ea

    .line 198
    .line 199
    if-lt p0, v0, :cond_14

    .line 200
    .line 201
    const/16 v0, 0x6ef

    .line 202
    .line 203
    if-le p0, v0, :cond_2e

    .line 204
    .line 205
    :cond_14
    const/16 v0, 0x6fa

    .line 206
    .line 207
    if-lt p0, v0, :cond_15

    .line 208
    .line 209
    const/16 v0, 0x6fc

    .line 210
    .line 211
    if-le p0, v0, :cond_2e

    .line 212
    .line 213
    :cond_15
    const/16 v0, 0x6ff

    .line 214
    .line 215
    if-eq p0, v0, :cond_2e

    .line 216
    .line 217
    const/16 v0, 0x750

    .line 218
    .line 219
    if-lt p0, v0, :cond_16

    .line 220
    .line 221
    const/16 v0, 0x77f

    .line 222
    .line 223
    if-le p0, v0, :cond_2e

    .line 224
    .line 225
    :cond_16
    const/16 v0, 0x8a0

    .line 226
    .line 227
    if-eq p0, v0, :cond_2e

    .line 228
    .line 229
    const/16 v0, 0x8a2

    .line 230
    .line 231
    if-lt p0, v0, :cond_17

    .line 232
    .line 233
    const/16 v0, 0x8ac

    .line 234
    .line 235
    if-le p0, v0, :cond_2e

    .line 236
    .line 237
    :cond_17
    const/16 v0, 0x8e4

    .line 238
    .line 239
    if-lt p0, v0, :cond_18

    .line 240
    .line 241
    const/16 v0, 0x8fe

    .line 242
    .line 243
    if-le p0, v0, :cond_2e

    .line 244
    .line 245
    .line 246
    :cond_18
    const v0, 0xfb50

    .line 247
    .line 248
    if-lt p0, v0, :cond_19

    .line 249
    .line 250
    .line 251
    const v0, 0xfbb1

    .line 252
    .line 253
    if-le p0, v0, :cond_2e

    .line 254
    .line 255
    .line 256
    :cond_19
    const v0, 0xfbd3

    .line 257
    .line 258
    if-lt p0, v0, :cond_1a

    .line 259
    .line 260
    .line 261
    const v0, 0xfd3d

    .line 262
    .line 263
    if-le p0, v0, :cond_2e

    .line 264
    .line 265
    .line 266
    :cond_1a
    const v0, 0xfd50

    .line 267
    .line 268
    if-lt p0, v0, :cond_1b

    .line 269
    .line 270
    .line 271
    const v0, 0xfd8f

    .line 272
    .line 273
    if-le p0, v0, :cond_2e

    .line 274
    .line 275
    .line 276
    :cond_1b
    const v0, 0xfd92

    .line 277
    .line 278
    if-lt p0, v0, :cond_1c

    .line 279
    .line 280
    .line 281
    const v0, 0xfdc7

    .line 282
    .line 283
    if-le p0, v0, :cond_2e

    .line 284
    .line 285
    .line 286
    :cond_1c
    const v0, 0xfdf0

    .line 287
    .line 288
    if-lt p0, v0, :cond_1d

    .line 289
    .line 290
    .line 291
    const v0, 0xfdfb

    .line 292
    .line 293
    if-le p0, v0, :cond_2e

    .line 294
    .line 295
    .line 296
    :cond_1d
    const v0, 0xfe70

    .line 297
    .line 298
    if-lt p0, v0, :cond_1e

    .line 299
    .line 300
    .line 301
    const v0, 0xfe74

    .line 302
    .line 303
    if-le p0, v0, :cond_2e

    .line 304
    .line 305
    .line 306
    :cond_1e
    const v0, 0xfe76

    .line 307
    .line 308
    if-lt p0, v0, :cond_1f

    .line 309
    .line 310
    .line 311
    const v0, 0xfefc

    .line 312
    .line 313
    if-le p0, v0, :cond_2e

    .line 314
    .line 315
    :cond_1f
    const/16 v0, 0x200c

    .line 316
    .line 317
    if-eq p0, v0, :cond_2e

    .line 318
    .line 319
    const/16 v0, 0xe01

    .line 320
    .line 321
    if-lt p0, v0, :cond_20

    .line 322
    .line 323
    const/16 v0, 0xe3a

    .line 324
    .line 325
    if-le p0, v0, :cond_2e

    .line 326
    .line 327
    :cond_20
    const/16 v0, 0xe40

    .line 328
    .line 329
    if-lt p0, v0, :cond_21

    .line 330
    .line 331
    const/16 v0, 0xe4e

    .line 332
    .line 333
    if-le p0, v0, :cond_2e

    .line 334
    .line 335
    :cond_21
    const/16 v0, 0x1100

    .line 336
    .line 337
    if-lt p0, v0, :cond_22

    .line 338
    .line 339
    const/16 v0, 0x11ff

    .line 340
    .line 341
    if-le p0, v0, :cond_2e

    .line 342
    .line 343
    :cond_22
    const/16 v0, 0x3130

    .line 344
    .line 345
    if-lt p0, v0, :cond_23

    .line 346
    .line 347
    const/16 v0, 0x3185

    .line 348
    .line 349
    if-le p0, v0, :cond_2e

    .line 350
    .line 351
    .line 352
    :cond_23
    const v0, 0xa960

    .line 353
    .line 354
    if-lt p0, v0, :cond_24

    .line 355
    .line 356
    .line 357
    const v0, 0xa97f

    .line 358
    .line 359
    if-le p0, v0, :cond_2e

    .line 360
    .line 361
    .line 362
    :cond_24
    const v0, 0xac00

    .line 363
    .line 364
    if-lt p0, v0, :cond_25

    .line 365
    .line 366
    .line 367
    const v0, 0xd7af

    .line 368
    .line 369
    if-le p0, v0, :cond_2e

    .line 370
    .line 371
    .line 372
    :cond_25
    const v0, 0xd7b0

    .line 373
    .line 374
    if-lt p0, v0, :cond_26

    .line 375
    .line 376
    .line 377
    const v0, 0xd7ff

    .line 378
    .line 379
    if-le p0, v0, :cond_2e

    .line 380
    .line 381
    :cond_26
    const/16 v0, 0x3040

    .line 382
    .line 383
    if-lt p0, v0, :cond_27

    .line 384
    .line 385
    const/16 v0, 0x309f

    .line 386
    .line 387
    if-le p0, v0, :cond_2e

    .line 388
    .line 389
    :cond_27
    const/16 v0, 0x30a0

    .line 390
    .line 391
    if-lt p0, v0, :cond_28

    .line 392
    .line 393
    const/16 v0, 0x30ff

    .line 394
    .line 395
    if-le p0, v0, :cond_2e

    .line 396
    .line 397
    :cond_28
    const/16 v0, 0x4e00

    .line 398
    .line 399
    if-lt p0, v0, :cond_29

    .line 400
    .line 401
    .line 402
    const v0, 0x9fff

    .line 403
    .line 404
    if-le p0, v0, :cond_2e

    .line 405
    .line 406
    :cond_29
    const/16 v0, 0x3003

    .line 407
    .line 408
    if-eq p0, v0, :cond_2e

    .line 409
    .line 410
    const/16 v0, 0x3005

    .line 411
    .line 412
    if-eq p0, v0, :cond_2e

    .line 413
    .line 414
    const/16 v0, 0x303b

    .line 415
    .line 416
    if-eq p0, v0, :cond_2e

    .line 417
    .line 418
    .line 419
    const v0, 0xff21

    .line 420
    .line 421
    if-lt p0, v0, :cond_2a

    .line 422
    .line 423
    .line 424
    const v0, 0xff3a

    .line 425
    .line 426
    if-le p0, v0, :cond_2e

    .line 427
    .line 428
    .line 429
    :cond_2a
    const v0, 0xff41

    .line 430
    .line 431
    if-lt p0, v0, :cond_2b

    .line 432
    .line 433
    .line 434
    const v0, 0xff5a

    .line 435
    .line 436
    if-le p0, v0, :cond_2e

    .line 437
    .line 438
    .line 439
    :cond_2b
    const v0, 0xff66

    .line 440
    .line 441
    if-lt p0, v0, :cond_2c

    .line 442
    .line 443
    .line 444
    const v0, 0xff9f

    .line 445
    .line 446
    if-le p0, v0, :cond_2e

    .line 447
    .line 448
    .line 449
    :cond_2c
    const v0, 0xffa1

    .line 450
    .line 451
    if-lt p0, v0, :cond_2d

    .line 452
    .line 453
    .line 454
    const v0, 0xffdc

    .line 455
    .line 456
    if-gt p0, v0, :cond_2d

    .line 457
    goto :goto_0

    .line 458
    :cond_2d
    const/4 p0, 0x0

    .line 459
    goto :goto_1

    .line 460
    :cond_2e
    :goto_0
    const/4 p0, 0x1

    .line 461
    :goto_1
    return p0
.end method

.method public static e(C)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/linkedin/urls/detection/a;->h(C)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    .line 9
    const v0, 0xff10

    .line 10
    .line 11
    if-lt p0, v0, :cond_0

    .line 12
    .line 13
    .line 14
    const v0, 0xff19

    .line 15
    .line 16
    if-le p0, v0, :cond_2

    .line 17
    .line 18
    :cond_0
    const/16 v0, 0x5f

    .line 19
    .line 20
    if-ne p0, v0, :cond_1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 25
    :goto_1
    return p0
.end method

.method public static f(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static g(C)Z
    .locals 1

    .line 1
    const/16 v0, 0xc0

    if-lt p0, v0, :cond_0

    const/16 v0, 0xd6

    if-le p0, v0, :cond_6

    :cond_0
    const/16 v0, 0xd8

    if-lt p0, v0, :cond_1

    const/16 v0, 0xf6

    if-le p0, v0, :cond_6

    :cond_1
    const/16 v0, 0xf8

    if-lt p0, v0, :cond_2

    const/16 v0, 0xff

    if-le p0, v0, :cond_6

    :cond_2
    const/16 v0, 0x100

    if-lt p0, v0, :cond_3

    const/16 v0, 0x24f

    if-le p0, v0, :cond_6

    :cond_3
    const/16 v0, 0x253

    if-eq p0, v0, :cond_6

    const/16 v0, 0x254

    if-eq p0, v0, :cond_6

    const/16 v0, 0x256

    if-eq p0, v0, :cond_6

    const/16 v0, 0x257

    if-eq p0, v0, :cond_6

    const/16 v0, 0x259

    if-eq p0, v0, :cond_6

    const/16 v0, 0x25b

    if-eq p0, v0, :cond_6

    const/16 v0, 0x263

    if-eq p0, v0, :cond_6

    const/16 v0, 0x268

    if-eq p0, v0, :cond_6

    const/16 v0, 0x26f

    if-eq p0, v0, :cond_6

    const/16 v0, 0x272

    if-eq p0, v0, :cond_6

    const/16 v0, 0x289

    if-eq p0, v0, :cond_6

    const/16 v0, 0x28b

    if-eq p0, v0, :cond_6

    const/16 v0, 0x2bb

    if-eq p0, v0, :cond_6

    const/16 v0, 0x300

    if-lt p0, v0, :cond_4

    const/16 v0, 0x36f

    if-le p0, v0, :cond_6

    :cond_4
    const/16 v0, 0x1e00

    if-lt p0, v0, :cond_5

    const/16 v0, 0x1eff

    if-gt p0, v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static h(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static i(C)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/linkedin/urls/detection/a;->b(C)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x2d

    .line 9
    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lcom/linkedin/urls/detection/a;->g(C)Z

    .line 14
    move-result p0

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method

.method public static j(C)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/linkedin/urls/detection/a;->b(C)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x40

    .line 9
    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    .line 13
    const v0, 0xff20

    .line 14
    .line 15
    if-eq p0, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x24

    .line 18
    .line 19
    if-eq p0, v0, :cond_1

    .line 20
    .line 21
    const/16 v0, 0x23

    .line 22
    .line 23
    if-eq p0, v0, :cond_1

    .line 24
    .line 25
    .line 26
    const v0, 0xff03

    .line 27
    .line 28
    if-eq p0, v0, :cond_1

    .line 29
    .line 30
    const/16 v0, 0x202a

    .line 31
    .line 32
    if-lt p0, v0, :cond_0

    .line 33
    .line 34
    const/16 v0, 0x202e

    .line 35
    .line 36
    if-gt p0, v0, :cond_0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 41
    :goto_1
    return p0
.end method

.method public static k(C)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/linkedin/urls/detection/a;->b(C)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x21

    .line 9
    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/16 v0, 0x2a

    .line 13
    .line 14
    if-eq p0, v0, :cond_1

    .line 15
    .line 16
    const/16 v0, 0x27

    .line 17
    .line 18
    if-eq p0, v0, :cond_1

    .line 19
    .line 20
    const/16 v0, 0x3b

    .line 21
    .line 22
    if-eq p0, v0, :cond_1

    .line 23
    .line 24
    const/16 v0, 0x3a

    .line 25
    .line 26
    if-eq p0, v0, :cond_1

    .line 27
    .line 28
    const/16 v0, 0x3d

    .line 29
    .line 30
    if-eq p0, v0, :cond_1

    .line 31
    .line 32
    const/16 v0, 0x2b

    .line 33
    .line 34
    if-eq p0, v0, :cond_1

    .line 35
    .line 36
    const/16 v0, 0x2c

    .line 37
    .line 38
    if-eq p0, v0, :cond_1

    .line 39
    .line 40
    const/16 v0, 0x2e

    .line 41
    .line 42
    if-eq p0, v0, :cond_1

    .line 43
    .line 44
    const/16 v0, 0x24

    .line 45
    .line 46
    if-eq p0, v0, :cond_1

    .line 47
    .line 48
    const/16 v0, 0x2f

    .line 49
    .line 50
    if-eq p0, v0, :cond_1

    .line 51
    .line 52
    const/16 v0, 0x25

    .line 53
    .line 54
    if-eq p0, v0, :cond_1

    .line 55
    .line 56
    const/16 v0, 0x2d

    .line 57
    .line 58
    if-eq p0, v0, :cond_1

    .line 59
    .line 60
    const/16 v0, 0x5f

    .line 61
    .line 62
    if-eq p0, v0, :cond_1

    .line 63
    .line 64
    const/16 v0, 0x7e

    .line 65
    .line 66
    if-eq p0, v0, :cond_1

    .line 67
    .line 68
    const/16 v0, 0x7c

    .line 69
    .line 70
    if-eq p0, v0, :cond_1

    .line 71
    .line 72
    const/16 v0, 0x26

    .line 73
    .line 74
    if-eq p0, v0, :cond_1

    .line 75
    .line 76
    const/16 v0, 0x40

    .line 77
    .line 78
    if-eq p0, v0, :cond_1

    .line 79
    .line 80
    .line 81
    invoke-static {p0}, Lcom/linkedin/urls/detection/a;->g(C)Z

    .line 82
    move-result p0

    .line 83
    .line 84
    if-eqz p0, :cond_0

    .line 85
    goto :goto_0

    .line 86
    :cond_0
    const/4 p0, 0x0

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 89
    :goto_1
    return p0
.end method

.method public static l(C)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/linkedin/urls/detection/a;->b(C)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x3d

    .line 9
    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/16 v0, 0x5f

    .line 13
    .line 14
    if-eq p0, v0, :cond_1

    .line 15
    .line 16
    const/16 v0, 0x23

    .line 17
    .line 18
    if-eq p0, v0, :cond_1

    .line 19
    .line 20
    const/16 v0, 0x2f

    .line 21
    .line 22
    if-eq p0, v0, :cond_1

    .line 23
    .line 24
    const/16 v0, 0x2d

    .line 25
    .line 26
    if-eq p0, v0, :cond_1

    .line 27
    .line 28
    const/16 v0, 0x2b

    .line 29
    .line 30
    if-eq p0, v0, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-static {p0}, Lcom/linkedin/urls/detection/a;->g(C)Z

    .line 34
    move-result p0

    .line 35
    .line 36
    if-eqz p0, :cond_0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 41
    :goto_1
    return p0
.end method

.method public static m(C)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/linkedin/urls/detection/a;->b(C)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x21

    .line 9
    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/16 v0, 0x3f

    .line 13
    .line 14
    if-eq p0, v0, :cond_1

    .line 15
    .line 16
    const/16 v0, 0x2a

    .line 17
    .line 18
    if-eq p0, v0, :cond_1

    .line 19
    .line 20
    const/16 v0, 0x27

    .line 21
    .line 22
    if-eq p0, v0, :cond_1

    .line 23
    .line 24
    const/16 v0, 0x28

    .line 25
    .line 26
    if-eq p0, v0, :cond_1

    .line 27
    .line 28
    const/16 v0, 0x29

    .line 29
    .line 30
    if-eq p0, v0, :cond_1

    .line 31
    .line 32
    const/16 v0, 0x3b

    .line 33
    .line 34
    if-eq p0, v0, :cond_1

    .line 35
    .line 36
    const/16 v0, 0x3a

    .line 37
    .line 38
    if-eq p0, v0, :cond_1

    .line 39
    .line 40
    const/16 v0, 0x26

    .line 41
    .line 42
    if-eq p0, v0, :cond_1

    .line 43
    .line 44
    const/16 v0, 0x3d

    .line 45
    .line 46
    if-eq p0, v0, :cond_1

    .line 47
    .line 48
    const/16 v0, 0x2b

    .line 49
    .line 50
    if-eq p0, v0, :cond_1

    .line 51
    .line 52
    const/16 v0, 0x24

    .line 53
    .line 54
    if-eq p0, v0, :cond_1

    .line 55
    .line 56
    const/16 v0, 0x2f

    .line 57
    .line 58
    if-eq p0, v0, :cond_1

    .line 59
    .line 60
    const/16 v0, 0x25

    .line 61
    .line 62
    if-eq p0, v0, :cond_1

    .line 63
    .line 64
    const/16 v0, 0x23

    .line 65
    .line 66
    if-eq p0, v0, :cond_1

    .line 67
    .line 68
    const/16 v0, 0x2d

    .line 69
    .line 70
    if-eq p0, v0, :cond_1

    .line 71
    .line 72
    const/16 v0, 0x5f

    .line 73
    .line 74
    if-eq p0, v0, :cond_1

    .line 75
    .line 76
    const/16 v0, 0x2e

    .line 77
    .line 78
    if-eq p0, v0, :cond_1

    .line 79
    .line 80
    const/16 v0, 0x2c

    .line 81
    .line 82
    if-eq p0, v0, :cond_1

    .line 83
    .line 84
    const/16 v0, 0x7e

    .line 85
    .line 86
    if-eq p0, v0, :cond_1

    .line 87
    .line 88
    const/16 v0, 0x7c

    .line 89
    .line 90
    if-eq p0, v0, :cond_1

    .line 91
    .line 92
    const/16 v0, 0x40

    .line 93
    .line 94
    if-ne p0, v0, :cond_0

    .line 95
    goto :goto_0

    .line 96
    :cond_0
    const/4 p0, 0x0

    .line 97
    goto :goto_1

    .line 98
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 99
    :goto_1
    return p0
.end method

.method public static n(C)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/linkedin/urls/detection/a;->b(C)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x5f

    .line 9
    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/16 v0, 0x26

    .line 13
    .line 14
    if-eq p0, v0, :cond_1

    .line 15
    .line 16
    const/16 v0, 0x3d

    .line 17
    .line 18
    if-eq p0, v0, :cond_1

    .line 19
    .line 20
    const/16 v0, 0x23

    .line 21
    .line 22
    if-eq p0, v0, :cond_1

    .line 23
    .line 24
    const/16 v0, 0x2f

    .line 25
    .line 26
    if-ne p0, v0, :cond_0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 31
    :goto_1
    return p0
.end method

.method public static o(C)Z
    .locals 1

    .line 1
    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static p(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v2

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    const-string p0, ""

    .line 19
    .line 20
    .line 21
    filled-new-array {p0}, [Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    .line 25
    :cond_0
    new-instance v2, Lcom/linkedin/urls/detection/d;

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, p0}, Lcom/linkedin/urls/detection/d;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v2}, Lcom/linkedin/urls/detection/d;->c()Z

    .line 32
    move-result p0

    .line 33
    .line 34
    if-nez p0, :cond_3

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/linkedin/urls/detection/d;->j()C

    .line 38
    move-result p0

    .line 39
    .line 40
    .line 41
    invoke-static {p0}, Lcom/linkedin/urls/detection/a;->c(C)Z

    .line 42
    move-result v3

    .line 43
    const/4 v4, 0x0

    .line 44
    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_1
    const/16 v3, 0x25

    .line 59
    .line 60
    if-ne p0, v3, :cond_2

    .line 61
    const/4 v3, 0x2

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3}, Lcom/linkedin/urls/detection/d;->a(I)Z

    .line 65
    move-result v5

    .line 66
    .line 67
    if-eqz v5, :cond_2

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v3}, Lcom/linkedin/urls/detection/d;->h(I)Ljava/lang/String;

    .line 71
    move-result-object v3

    .line 72
    .line 73
    const-string v5, "2e"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 77
    move-result v3

    .line 78
    .line 79
    if-eqz v3, :cond_2

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/linkedin/urls/detection/d;->j()C

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/linkedin/urls/detection/d;->j()C

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 96
    goto :goto_0

    .line 97
    .line 98
    .line 99
    :cond_2
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    goto :goto_0

    .line 101
    .line 102
    .line 103
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object p0

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 111
    move-result p0

    .line 112
    .line 113
    new-array p0, p0, [Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 117
    move-result-object p0

    .line 118
    .line 119
    check-cast p0, [Ljava/lang/String;

    .line 120
    return-object p0
.end method
