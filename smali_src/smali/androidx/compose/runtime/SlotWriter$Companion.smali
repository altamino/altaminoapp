.class public final Landroidx/compose/runtime/SlotWriter$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/SlotWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotWriter$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,3391:1\n1#2:3392\n4234#3,5:3393\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotWriter$Companion\n*L\n2066#1:3393,5\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/runtime/SlotWriter$Companion;Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZ)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p5}, Landroidx/compose/runtime/SlotWriter$Companion;->b(Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZ)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final b(Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZ)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/SlotWriter;",
            "I",
            "Landroidx/compose/runtime/SlotWriter;",
            "ZZ)",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Anchor;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    move/from16 v1, p2

    .line 5
    .line 6
    move-object/from16 v2, p3

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p1 .. p2}, Landroidx/compose/runtime/SlotWriter;->c0(I)I

    .line 10
    move-result v3

    .line 11
    .line 12
    add-int v4, v1, v3

    .line 13
    .line 14
    .line 15
    invoke-static/range {p1 .. p2}, Landroidx/compose/runtime/SlotWriter;->b(Landroidx/compose/runtime/SlotWriter;I)I

    .line 16
    move-result v5

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v4}, Landroidx/compose/runtime/SlotWriter;->b(Landroidx/compose/runtime/SlotWriter;I)I

    .line 20
    move-result v6

    .line 21
    .line 22
    sub-int v7, v6, v5

    .line 23
    .line 24
    .line 25
    invoke-static/range {p1 .. p2}, Landroidx/compose/runtime/SlotWriter;->a(Landroidx/compose/runtime/SlotWriter;I)Z

    .line 26
    move-result v8

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v3}, Landroidx/compose/runtime/SlotWriter;->o(Landroidx/compose/runtime/SlotWriter;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->U()I

    .line 33
    move-result v9

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v7, v9}, Landroidx/compose/runtime/SlotWriter;->p(Landroidx/compose/runtime/SlotWriter;II)V

    .line 37
    .line 38
    .line 39
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->h(Landroidx/compose/runtime/SlotWriter;)I

    .line 40
    move-result v9

    .line 41
    .line 42
    if-ge v9, v4, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v4}, Landroidx/compose/runtime/SlotWriter;->q(Landroidx/compose/runtime/SlotWriter;I)V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->n(Landroidx/compose/runtime/SlotWriter;)I

    .line 49
    move-result v9

    .line 50
    .line 51
    if-ge v9, v6, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v6, v4}, Landroidx/compose/runtime/SlotWriter;->r(Landroidx/compose/runtime/SlotWriter;II)V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->i(Landroidx/compose/runtime/SlotWriter;)[I

    .line 58
    move-result-object v9

    .line 59
    .line 60
    .line 61
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->U()I

    .line 62
    move-result v10

    .line 63
    .line 64
    .line 65
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->i(Landroidx/compose/runtime/SlotWriter;)[I

    .line 66
    move-result-object v11

    .line 67
    .line 68
    mul-int/lit8 v12, v10, 0x5

    .line 69
    .line 70
    mul-int/lit8 v13, v1, 0x5

    .line 71
    .line 72
    mul-int/lit8 v14, v4, 0x5

    .line 73
    .line 74
    .line 75
    invoke-static {v11, v9, v12, v13, v14}, Lkotlin/collections/l;->g([I[IIII)[I

    .line 76
    .line 77
    .line 78
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->k(Landroidx/compose/runtime/SlotWriter;)[Ljava/lang/Object;

    .line 79
    move-result-object v11

    .line 80
    .line 81
    .line 82
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->g(Landroidx/compose/runtime/SlotWriter;)I

    .line 83
    move-result v12

    .line 84
    .line 85
    .line 86
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->k(Landroidx/compose/runtime/SlotWriter;)[Ljava/lang/Object;

    .line 87
    move-result-object v13

    .line 88
    .line 89
    .line 90
    invoke-static {v13, v11, v12, v5, v6}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->V()I

    .line 94
    move-result v6

    .line 95
    .line 96
    .line 97
    invoke-static {v9, v10, v6}, Landroidx/compose/runtime/SlotTableKt;->z([III)V

    .line 98
    .line 99
    sub-int v13, v10, v1

    .line 100
    .line 101
    add-int v14, v10, v3

    .line 102
    .line 103
    .line 104
    invoke-static {v2, v9, v10}, Landroidx/compose/runtime/SlotWriter;->c(Landroidx/compose/runtime/SlotWriter;[II)I

    .line 105
    move-result v15

    .line 106
    .line 107
    sub-int v15, v12, v15

    .line 108
    .line 109
    .line 110
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->m(Landroidx/compose/runtime/SlotWriter;)I

    .line 111
    move-result v16

    .line 112
    .line 113
    move/from16 v17, v6

    .line 114
    .line 115
    .line 116
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->l(Landroidx/compose/runtime/SlotWriter;)I

    .line 117
    move-result v6

    .line 118
    array-length v11, v11

    .line 119
    .line 120
    move/from16 v18, v8

    .line 121
    .line 122
    move/from16 v8, v16

    .line 123
    .line 124
    move/from16 v16, v12

    .line 125
    move v12, v10

    .line 126
    .line 127
    :goto_0
    const/16 v19, 0x0

    .line 128
    .line 129
    if-ge v12, v14, :cond_5

    .line 130
    .line 131
    if-eq v12, v10, :cond_2

    .line 132
    .line 133
    .line 134
    invoke-static {v9, v12}, Landroidx/compose/runtime/SlotTableKt;->r([II)I

    .line 135
    move-result v20

    .line 136
    .line 137
    move/from16 v21, v14

    .line 138
    .line 139
    add-int v14, v20, v13

    .line 140
    .line 141
    .line 142
    invoke-static {v9, v12, v14}, Landroidx/compose/runtime/SlotTableKt;->z([III)V

    .line 143
    goto :goto_1

    .line 144
    .line 145
    :cond_2
    move/from16 v21, v14

    .line 146
    .line 147
    .line 148
    :goto_1
    invoke-static {v2, v9, v12}, Landroidx/compose/runtime/SlotWriter;->c(Landroidx/compose/runtime/SlotWriter;[II)I

    .line 149
    move-result v14

    .line 150
    add-int/2addr v14, v15

    .line 151
    .line 152
    if-ge v8, v12, :cond_3

    .line 153
    .line 154
    :goto_2
    move/from16 v20, v15

    .line 155
    .line 156
    move/from16 v15, v19

    .line 157
    goto :goto_3

    .line 158
    .line 159
    .line 160
    :cond_3
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->n(Landroidx/compose/runtime/SlotWriter;)I

    .line 161
    move-result v19

    .line 162
    goto :goto_2

    .line 163
    .line 164
    .line 165
    :goto_3
    invoke-static {v2, v14, v15, v6, v11}, Landroidx/compose/runtime/SlotWriter;->e(Landroidx/compose/runtime/SlotWriter;IIII)I

    .line 166
    move-result v14

    .line 167
    .line 168
    .line 169
    invoke-static {v9, v12, v14}, Landroidx/compose/runtime/SlotTableKt;->v([III)V

    .line 170
    .line 171
    if-ne v12, v8, :cond_4

    .line 172
    .line 173
    add-int/lit8 v8, v8, 0x1

    .line 174
    .line 175
    :cond_4
    add-int/lit8 v12, v12, 0x1

    .line 176
    .line 177
    move/from16 v15, v20

    .line 178
    .line 179
    move/from16 v14, v21

    .line 180
    goto :goto_0

    .line 181
    .line 182
    :cond_5
    move/from16 v21, v14

    .line 183
    .line 184
    .line 185
    invoke-static {v2, v8}, Landroidx/compose/runtime/SlotWriter;->x(Landroidx/compose/runtime/SlotWriter;I)V

    .line 186
    .line 187
    .line 188
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->f(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;

    .line 189
    move-result-object v6

    .line 190
    .line 191
    .line 192
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->W()I

    .line 193
    move-result v8

    .line 194
    .line 195
    .line 196
    invoke-static {v6, v1, v8}, Landroidx/compose/runtime/SlotTableKt;->n(Ljava/util/ArrayList;II)I

    .line 197
    move-result v6

    .line 198
    .line 199
    .line 200
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->f(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;

    .line 201
    move-result-object v8

    .line 202
    .line 203
    .line 204
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->W()I

    .line 205
    move-result v11

    .line 206
    .line 207
    .line 208
    invoke-static {v8, v4, v11}, Landroidx/compose/runtime/SlotTableKt;->n(Ljava/util/ArrayList;II)I

    .line 209
    move-result v4

    .line 210
    .line 211
    if-ge v6, v4, :cond_7

    .line 212
    .line 213
    .line 214
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->f(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;

    .line 215
    move-result-object v8

    .line 216
    .line 217
    new-instance v11, Ljava/util/ArrayList;

    .line 218
    .line 219
    sub-int v12, v4, v6

    .line 220
    .line 221
    .line 222
    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 223
    move v12, v6

    .line 224
    .line 225
    :goto_4
    if-ge v12, v4, :cond_6

    .line 226
    .line 227
    .line 228
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 229
    move-result-object v14

    .line 230
    .line 231
    const-string/jumbo v15, "sourceAnchors[anchorIndex]"

    .line 232
    .line 233
    .line 234
    invoke-static {v14, v15}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    .line 236
    check-cast v14, Landroidx/compose/runtime/Anchor;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v14}, Landroidx/compose/runtime/Anchor;->a()I

    .line 240
    move-result v15

    .line 241
    add-int/2addr v15, v13

    .line 242
    .line 243
    .line 244
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/Anchor;->c(I)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    add-int/lit8 v12, v12, 0x1

    .line 250
    goto :goto_4

    .line 251
    .line 252
    .line 253
    :cond_6
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->f(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;

    .line 254
    move-result-object v12

    .line 255
    .line 256
    .line 257
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->U()I

    .line 258
    move-result v13

    .line 259
    .line 260
    .line 261
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->W()I

    .line 262
    move-result v14

    .line 263
    .line 264
    .line 265
    invoke-static {v12, v13, v14}, Landroidx/compose/runtime/SlotTableKt;->n(Ljava/util/ArrayList;II)I

    .line 266
    move-result v12

    .line 267
    .line 268
    .line 269
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->f(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;

    .line 270
    move-result-object v13

    .line 271
    .line 272
    .line 273
    invoke-virtual {v13, v12, v11}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 274
    .line 275
    .line 276
    invoke-virtual {v8, v6, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 277
    move-result-object v4

    .line 278
    .line 279
    .line 280
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 281
    goto :goto_5

    .line 282
    .line 283
    .line 284
    :cond_7
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 285
    move-result-object v11

    .line 286
    .line 287
    .line 288
    :goto_5
    invoke-virtual/range {p1 .. p2}, Landroidx/compose/runtime/SlotWriter;->y0(I)I

    .line 289
    move-result v4

    .line 290
    const/4 v6, 0x1

    .line 291
    .line 292
    if-eqz p4, :cond_a

    .line 293
    .line 294
    if-ltz v4, :cond_8

    .line 295
    .line 296
    move/from16 v19, v6

    .line 297
    .line 298
    :cond_8
    if-eqz v19, :cond_9

    .line 299
    .line 300
    .line 301
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->T0()V

    .line 302
    .line 303
    .line 304
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->U()I

    .line 305
    move-result v3

    .line 306
    sub-int/2addr v4, v3

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/SlotWriter;->z(I)V

    .line 310
    .line 311
    .line 312
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->T0()V

    .line 313
    .line 314
    .line 315
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->U()I

    .line 316
    move-result v3

    .line 317
    sub-int/2addr v1, v3

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SlotWriter;->z(I)V

    .line 321
    .line 322
    .line 323
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->E0()Z

    .line 324
    move-result v1

    .line 325
    .line 326
    if-eqz v19, :cond_b

    .line 327
    .line 328
    .line 329
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->O0()V

    .line 330
    .line 331
    .line 332
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->N()I

    .line 333
    .line 334
    .line 335
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->O0()V

    .line 336
    .line 337
    .line 338
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->N()I

    .line 339
    goto :goto_6

    .line 340
    .line 341
    .line 342
    :cond_a
    invoke-static {v0, v1, v3}, Landroidx/compose/runtime/SlotWriter;->s(Landroidx/compose/runtime/SlotWriter;II)Z

    .line 343
    move-result v3

    .line 344
    sub-int/2addr v1, v6

    .line 345
    .line 346
    .line 347
    invoke-static {v0, v5, v7, v1}, Landroidx/compose/runtime/SlotWriter;->t(Landroidx/compose/runtime/SlotWriter;III)V

    .line 348
    move v1, v3

    .line 349
    .line 350
    :cond_b
    :goto_6
    xor-int/lit8 v0, v1, 0x1

    .line 351
    .line 352
    if-eqz v0, :cond_f

    .line 353
    .line 354
    .line 355
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->j(Landroidx/compose/runtime/SlotWriter;)I

    .line 356
    move-result v0

    .line 357
    .line 358
    .line 359
    invoke-static {v9, v10}, Landroidx/compose/runtime/SlotTableKt;->l([II)Z

    .line 360
    move-result v1

    .line 361
    .line 362
    if-eqz v1, :cond_c

    .line 363
    goto :goto_7

    .line 364
    .line 365
    .line 366
    :cond_c
    invoke-static {v9, v10}, Landroidx/compose/runtime/SlotTableKt;->o([II)I

    .line 367
    move-result v6

    .line 368
    :goto_7
    add-int/2addr v0, v6

    .line 369
    .line 370
    .line 371
    invoke-static {v2, v0}, Landroidx/compose/runtime/SlotWriter;->w(Landroidx/compose/runtime/SlotWriter;I)V

    .line 372
    .line 373
    if-eqz p5, :cond_d

    .line 374
    .line 375
    move/from16 v10, v21

    .line 376
    .line 377
    .line 378
    invoke-static {v2, v10}, Landroidx/compose/runtime/SlotWriter;->u(Landroidx/compose/runtime/SlotWriter;I)V

    .line 379
    .line 380
    add-int v12, v16, v7

    .line 381
    .line 382
    .line 383
    invoke-static {v2, v12}, Landroidx/compose/runtime/SlotWriter;->v(Landroidx/compose/runtime/SlotWriter;I)V

    .line 384
    .line 385
    :cond_d
    if-eqz v18, :cond_e

    .line 386
    .line 387
    move/from16 v0, v17

    .line 388
    .line 389
    .line 390
    invoke-static {v2, v0}, Landroidx/compose/runtime/SlotWriter;->y(Landroidx/compose/runtime/SlotWriter;I)V

    .line 391
    :cond_e
    return-object v11

    .line 392
    .line 393
    :cond_f
    const-string v0, "Unexpectedly removed anchors"

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 397
    move-result-object v0

    .line 398
    .line 399
    .line 400
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->x(Ljava/lang/String;)Ljava/lang/Void;

    .line 401
    .line 402
    new-instance v0, Lw7/i;

    .line 403
    .line 404
    .line 405
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 406
    throw v0
.end method
