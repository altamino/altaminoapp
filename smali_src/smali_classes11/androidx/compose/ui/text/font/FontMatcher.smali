.class public final Landroidx/compose/ui/text/font/FontMatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFontMatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FontMatcher.kt\nandroidx/compose/ui/text/font/FontMatcher\n+ 2 TempListUtils.kt\nandroidx/compose/ui/text/TempListUtilsKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,165:1\n102#1,34:189\n102#1,34:234\n108#1,28:279\n108#1,28:318\n34#2,3:166\n37#2,2:173\n39#2:176\n34#2,3:177\n37#2,2:184\n39#2:187\n34#2,3:223\n37#2,2:230\n39#2:233\n34#2,3:268\n37#2,2:275\n39#2:278\n34#2,3:307\n37#2,2:314\n39#2:317\n34#2,3:346\n37#2,2:353\n39#2:356\n34#2,3:357\n37#2,2:364\n39#2:367\n34#2,3:368\n37#2,2:375\n39#2:378\n32#3,4:169\n37#3:175\n32#3,4:180\n37#3:186\n32#3,4:226\n37#3:232\n32#3,4:271\n37#3:277\n32#3,4:310\n37#3:316\n32#3,4:349\n37#3:355\n32#3,4:360\n37#3:366\n32#3,4:371\n37#3:377\n1#4:188\n*S KotlinDebug\n*F\n+ 1 FontMatcher.kt\nandroidx/compose/ui/text/font/FontMatcher\n*L\n65#1:189,34\n71#1:234,34\n80#1:279,28\n87#1:318,28\n49#1:166,3\n49#1:173,2\n49#1:176\n57#1:177,3\n57#1:184,2\n57#1:187\n65#1:223,3\n65#1:230,2\n65#1:233\n71#1:268,3\n71#1:275,2\n71#1:278\n80#1:307,3\n80#1:314,2\n80#1:317\n87#1:346,3\n87#1:353,2\n87#1:356\n135#1:357,3\n135#1:364,2\n135#1:367\n135#1:368,3\n135#1:375,2\n135#1:378\n49#1:169,4\n49#1:175\n57#1:180,4\n57#1:186\n65#1:226,4\n65#1:232\n71#1:271,4\n71#1:277\n80#1:310,4\n80#1:316\n87#1:349,4\n87#1:355\n135#1:360,4\n135#1:366\n135#1:371,4\n135#1:377\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/util/List;
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/font/FontWeight;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/text/font/Font;",
            ">;",
            "Landroidx/compose/ui/text/font/FontWeight;",
            "I)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/font/Font;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "fontList"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "fontWeight"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x0

    .line 25
    move v3, v2

    .line 26
    .line 27
    :goto_0
    if-ge v3, v1, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v4

    .line 32
    move-object v5, v4

    .line 33
    .line 34
    check-cast v5, Landroidx/compose/ui/text/font/Font;

    .line 35
    .line 36
    .line 37
    invoke-interface {v5}, Landroidx/compose/ui/text/font/Font;->b()Landroidx/compose/ui/text/font/FontWeight;

    .line 38
    move-result-object v6

    .line 39
    .line 40
    .line 41
    invoke-static {v6, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    move-result v6

    .line 43
    .line 44
    if-eqz v6, :cond_0

    .line 45
    .line 46
    .line 47
    invoke-interface {v5}, Landroidx/compose/ui/text/font/Font;->c()I

    .line 48
    move-result v5

    .line 49
    .line 50
    .line 51
    invoke-static {v5, p3}, Landroidx/compose/ui/text/font/FontStyle;->f(II)Z

    .line 52
    move-result v5

    .line 53
    .line 54
    if-eqz v5, :cond_0

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 60
    goto :goto_0

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 64
    move-result v1

    .line 65
    .line 66
    xor-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    if-eqz v1, :cond_2

    .line 69
    return-object v0

    .line 70
    .line 71
    :cond_2
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 72
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    .line 74
    .line 75
    .line 76
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 77
    move-result v1

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    .line 82
    .line 83
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 84
    move-result v1

    .line 85
    move v3, v2

    .line 86
    .line 87
    :goto_1
    if-ge v3, v1, :cond_4

    .line 88
    .line 89
    .line 90
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    move-result-object v4

    .line 92
    move-object v5, v4

    .line 93
    .line 94
    check-cast v5, Landroidx/compose/ui/text/font/Font;

    .line 95
    .line 96
    .line 97
    invoke-interface {v5}, Landroidx/compose/ui/text/font/Font;->c()I

    .line 98
    move-result v5

    .line 99
    .line 100
    .line 101
    invoke-static {v5, p3}, Landroidx/compose/ui/text/font/FontStyle;->f(II)Z

    .line 102
    move-result v5

    .line 103
    .line 104
    if-eqz v5, :cond_3

    .line 105
    .line 106
    .line 107
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 110
    goto :goto_1

    .line 111
    .line 112
    .line 113
    :cond_4
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 114
    move-result p3

    .line 115
    .line 116
    if-eqz p3, :cond_5

    .line 117
    goto :goto_2

    .line 118
    :cond_5
    move-object p1, v0

    .line 119
    .line 120
    :goto_2
    check-cast p1, Ljava/util/List;

    .line 121
    .line 122
    sget-object p3, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p3}, Landroidx/compose/ui/text/font/FontWeight$Companion;->e()Landroidx/compose/ui/text/font/FontWeight;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, v0}, Landroidx/compose/ui/text/font/FontWeight;->j(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 130
    move-result v0

    .line 131
    const/4 v1, 0x0

    .line 132
    .line 133
    if-gez v0, :cond_e

    .line 134
    .line 135
    .line 136
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 137
    move-result p3

    .line 138
    move-object v0, v1

    .line 139
    move v3, v2

    .line 140
    .line 141
    :goto_3
    if-ge v3, p3, :cond_b

    .line 142
    .line 143
    .line 144
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 145
    move-result-object v4

    .line 146
    .line 147
    check-cast v4, Landroidx/compose/ui/text/font/Font;

    .line 148
    .line 149
    .line 150
    invoke-interface {v4}, Landroidx/compose/ui/text/font/Font;->b()Landroidx/compose/ui/text/font/FontWeight;

    .line 151
    move-result-object v4

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, p2}, Landroidx/compose/ui/text/font/FontWeight;->j(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 155
    move-result v5

    .line 156
    .line 157
    if-gez v5, :cond_7

    .line 158
    .line 159
    if-eqz v1, :cond_6

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4, v1}, Landroidx/compose/ui/text/font/FontWeight;->j(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 163
    move-result v5

    .line 164
    .line 165
    if-lez v5, :cond_9

    .line 166
    :cond_6
    move-object v1, v4

    .line 167
    goto :goto_4

    .line 168
    .line 169
    .line 170
    :cond_7
    invoke-virtual {v4, p2}, Landroidx/compose/ui/text/font/FontWeight;->j(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 171
    move-result v5

    .line 172
    .line 173
    if-lez v5, :cond_a

    .line 174
    .line 175
    if-eqz v0, :cond_8

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/font/FontWeight;->j(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 179
    move-result v5

    .line 180
    .line 181
    if-gez v5, :cond_9

    .line 182
    :cond_8
    move-object v0, v4

    .line 183
    .line 184
    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 185
    goto :goto_3

    .line 186
    :cond_a
    move-object v0, v4

    .line 187
    move-object v1, v0

    .line 188
    .line 189
    :cond_b
    if-nez v1, :cond_c

    .line 190
    goto :goto_5

    .line 191
    :cond_c
    move-object v0, v1

    .line 192
    .line 193
    :goto_5
    new-instance p2, Ljava/util/ArrayList;

    .line 194
    .line 195
    .line 196
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 197
    move-result p3

    .line 198
    .line 199
    .line 200
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    .line 202
    .line 203
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 204
    move-result p3

    .line 205
    .line 206
    :goto_6
    if-ge v2, p3, :cond_2c

    .line 207
    .line 208
    .line 209
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 210
    move-result-object v1

    .line 211
    move-object v3, v1

    .line 212
    .line 213
    check-cast v3, Landroidx/compose/ui/text/font/Font;

    .line 214
    .line 215
    .line 216
    invoke-interface {v3}, Landroidx/compose/ui/text/font/Font;->b()Landroidx/compose/ui/text/font/FontWeight;

    .line 217
    move-result-object v3

    .line 218
    .line 219
    .line 220
    invoke-static {v3, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 221
    move-result v3

    .line 222
    .line 223
    if-eqz v3, :cond_d

    .line 224
    .line 225
    .line 226
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    :cond_d
    add-int/lit8 v2, v2, 0x1

    .line 229
    goto :goto_6

    .line 230
    .line 231
    .line 232
    :cond_e
    invoke-virtual {p3}, Landroidx/compose/ui/text/font/FontWeight$Companion;->f()Landroidx/compose/ui/text/font/FontWeight;

    .line 233
    move-result-object v0

    .line 234
    .line 235
    .line 236
    invoke-virtual {p2, v0}, Landroidx/compose/ui/text/font/FontWeight;->j(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 237
    move-result v0

    .line 238
    .line 239
    if-lez v0, :cond_17

    .line 240
    .line 241
    .line 242
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 243
    move-result p3

    .line 244
    move-object v0, v1

    .line 245
    move v3, v2

    .line 246
    .line 247
    :goto_7
    if-ge v3, p3, :cond_14

    .line 248
    .line 249
    .line 250
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 251
    move-result-object v4

    .line 252
    .line 253
    check-cast v4, Landroidx/compose/ui/text/font/Font;

    .line 254
    .line 255
    .line 256
    invoke-interface {v4}, Landroidx/compose/ui/text/font/Font;->b()Landroidx/compose/ui/text/font/FontWeight;

    .line 257
    move-result-object v4

    .line 258
    .line 259
    .line 260
    invoke-virtual {v4, p2}, Landroidx/compose/ui/text/font/FontWeight;->j(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 261
    move-result v5

    .line 262
    .line 263
    if-gez v5, :cond_10

    .line 264
    .line 265
    if-eqz v1, :cond_f

    .line 266
    .line 267
    .line 268
    invoke-virtual {v4, v1}, Landroidx/compose/ui/text/font/FontWeight;->j(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 269
    move-result v5

    .line 270
    .line 271
    if-lez v5, :cond_12

    .line 272
    :cond_f
    move-object v1, v4

    .line 273
    goto :goto_8

    .line 274
    .line 275
    .line 276
    :cond_10
    invoke-virtual {v4, p2}, Landroidx/compose/ui/text/font/FontWeight;->j(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 277
    move-result v5

    .line 278
    .line 279
    if-lez v5, :cond_13

    .line 280
    .line 281
    if-eqz v0, :cond_11

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/font/FontWeight;->j(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 285
    move-result v5

    .line 286
    .line 287
    if-gez v5, :cond_12

    .line 288
    :cond_11
    move-object v0, v4

    .line 289
    .line 290
    :cond_12
    :goto_8
    add-int/lit8 v3, v3, 0x1

    .line 291
    goto :goto_7

    .line 292
    :cond_13
    move-object v0, v4

    .line 293
    move-object v1, v0

    .line 294
    .line 295
    :cond_14
    if-nez v0, :cond_15

    .line 296
    move-object v0, v1

    .line 297
    .line 298
    :cond_15
    new-instance p2, Ljava/util/ArrayList;

    .line 299
    .line 300
    .line 301
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 302
    move-result p3

    .line 303
    .line 304
    .line 305
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 306
    .line 307
    .line 308
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 309
    move-result p3

    .line 310
    .line 311
    :goto_9
    if-ge v2, p3, :cond_2c

    .line 312
    .line 313
    .line 314
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 315
    move-result-object v1

    .line 316
    move-object v3, v1

    .line 317
    .line 318
    check-cast v3, Landroidx/compose/ui/text/font/Font;

    .line 319
    .line 320
    .line 321
    invoke-interface {v3}, Landroidx/compose/ui/text/font/Font;->b()Landroidx/compose/ui/text/font/FontWeight;

    .line 322
    move-result-object v3

    .line 323
    .line 324
    .line 325
    invoke-static {v3, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 326
    move-result v3

    .line 327
    .line 328
    if-eqz v3, :cond_16

    .line 329
    .line 330
    .line 331
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 332
    .line 333
    :cond_16
    add-int/lit8 v2, v2, 0x1

    .line 334
    goto :goto_9

    .line 335
    .line 336
    .line 337
    :cond_17
    invoke-virtual {p3}, Landroidx/compose/ui/text/font/FontWeight$Companion;->f()Landroidx/compose/ui/text/font/FontWeight;

    .line 338
    move-result-object p3

    .line 339
    .line 340
    .line 341
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 342
    move-result v0

    .line 343
    move-object v4, v1

    .line 344
    move-object v5, v4

    .line 345
    move v3, v2

    .line 346
    .line 347
    :goto_a
    if-ge v3, v0, :cond_1e

    .line 348
    .line 349
    .line 350
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 351
    move-result-object v6

    .line 352
    .line 353
    check-cast v6, Landroidx/compose/ui/text/font/Font;

    .line 354
    .line 355
    .line 356
    invoke-interface {v6}, Landroidx/compose/ui/text/font/Font;->b()Landroidx/compose/ui/text/font/FontWeight;

    .line 357
    move-result-object v6

    .line 358
    .line 359
    if-eqz p3, :cond_18

    .line 360
    .line 361
    .line 362
    invoke-virtual {v6, p3}, Landroidx/compose/ui/text/font/FontWeight;->j(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 363
    move-result v7

    .line 364
    .line 365
    if-gtz v7, :cond_1c

    .line 366
    .line 367
    .line 368
    :cond_18
    invoke-virtual {v6, p2}, Landroidx/compose/ui/text/font/FontWeight;->j(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 369
    move-result v7

    .line 370
    .line 371
    if-gez v7, :cond_1a

    .line 372
    .line 373
    if-eqz v4, :cond_19

    .line 374
    .line 375
    .line 376
    invoke-virtual {v6, v4}, Landroidx/compose/ui/text/font/FontWeight;->j(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 377
    move-result v7

    .line 378
    .line 379
    if-lez v7, :cond_1c

    .line 380
    :cond_19
    move-object v4, v6

    .line 381
    goto :goto_b

    .line 382
    .line 383
    .line 384
    :cond_1a
    invoke-virtual {v6, p2}, Landroidx/compose/ui/text/font/FontWeight;->j(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 385
    move-result v7

    .line 386
    .line 387
    if-lez v7, :cond_1d

    .line 388
    .line 389
    if-eqz v5, :cond_1b

    .line 390
    .line 391
    .line 392
    invoke-virtual {v6, v5}, Landroidx/compose/ui/text/font/FontWeight;->j(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 393
    move-result v7

    .line 394
    .line 395
    if-gez v7, :cond_1c

    .line 396
    :cond_1b
    move-object v5, v6

    .line 397
    .line 398
    :cond_1c
    :goto_b
    add-int/lit8 v3, v3, 0x1

    .line 399
    goto :goto_a

    .line 400
    :cond_1d
    move-object v4, v6

    .line 401
    move-object v5, v4

    .line 402
    .line 403
    :cond_1e
    if-nez v5, :cond_1f

    .line 404
    goto :goto_c

    .line 405
    :cond_1f
    move-object v4, v5

    .line 406
    .line 407
    :goto_c
    new-instance p3, Ljava/util/ArrayList;

    .line 408
    .line 409
    .line 410
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 411
    move-result v0

    .line 412
    .line 413
    .line 414
    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 415
    .line 416
    .line 417
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 418
    move-result v0

    .line 419
    move v3, v2

    .line 420
    .line 421
    :goto_d
    if-ge v3, v0, :cond_21

    .line 422
    .line 423
    .line 424
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 425
    move-result-object v5

    .line 426
    move-object v6, v5

    .line 427
    .line 428
    check-cast v6, Landroidx/compose/ui/text/font/Font;

    .line 429
    .line 430
    .line 431
    invoke-interface {v6}, Landroidx/compose/ui/text/font/Font;->b()Landroidx/compose/ui/text/font/FontWeight;

    .line 432
    move-result-object v6

    .line 433
    .line 434
    .line 435
    invoke-static {v6, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 436
    move-result v6

    .line 437
    .line 438
    if-eqz v6, :cond_20

    .line 439
    .line 440
    .line 441
    invoke-interface {p3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 442
    .line 443
    :cond_20
    add-int/lit8 v3, v3, 0x1

    .line 444
    goto :goto_d

    .line 445
    .line 446
    .line 447
    :cond_21
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    .line 448
    move-result v0

    .line 449
    .line 450
    if-eqz v0, :cond_2b

    .line 451
    .line 452
    sget-object p3, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    .line 453
    .line 454
    .line 455
    invoke-virtual {p3}, Landroidx/compose/ui/text/font/FontWeight$Companion;->f()Landroidx/compose/ui/text/font/FontWeight;

    .line 456
    move-result-object p3

    .line 457
    .line 458
    .line 459
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 460
    move-result v0

    .line 461
    move-object v3, v1

    .line 462
    move v4, v2

    .line 463
    .line 464
    :goto_e
    if-ge v4, v0, :cond_28

    .line 465
    .line 466
    .line 467
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 468
    move-result-object v5

    .line 469
    .line 470
    check-cast v5, Landroidx/compose/ui/text/font/Font;

    .line 471
    .line 472
    .line 473
    invoke-interface {v5}, Landroidx/compose/ui/text/font/Font;->b()Landroidx/compose/ui/text/font/FontWeight;

    .line 474
    move-result-object v5

    .line 475
    .line 476
    if-eqz p3, :cond_22

    .line 477
    .line 478
    .line 479
    invoke-virtual {v5, p3}, Landroidx/compose/ui/text/font/FontWeight;->j(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 480
    move-result v6

    .line 481
    .line 482
    if-ltz v6, :cond_26

    .line 483
    .line 484
    .line 485
    :cond_22
    invoke-virtual {v5, p2}, Landroidx/compose/ui/text/font/FontWeight;->j(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 486
    move-result v6

    .line 487
    .line 488
    if-gez v6, :cond_24

    .line 489
    .line 490
    if-eqz v1, :cond_23

    .line 491
    .line 492
    .line 493
    invoke-virtual {v5, v1}, Landroidx/compose/ui/text/font/FontWeight;->j(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 494
    move-result v6

    .line 495
    .line 496
    if-lez v6, :cond_26

    .line 497
    :cond_23
    move-object v1, v5

    .line 498
    goto :goto_f

    .line 499
    .line 500
    .line 501
    :cond_24
    invoke-virtual {v5, p2}, Landroidx/compose/ui/text/font/FontWeight;->j(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 502
    move-result v6

    .line 503
    .line 504
    if-lez v6, :cond_27

    .line 505
    .line 506
    if-eqz v3, :cond_25

    .line 507
    .line 508
    .line 509
    invoke-virtual {v5, v3}, Landroidx/compose/ui/text/font/FontWeight;->j(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 510
    move-result v6

    .line 511
    .line 512
    if-gez v6, :cond_26

    .line 513
    :cond_25
    move-object v3, v5

    .line 514
    .line 515
    :cond_26
    :goto_f
    add-int/lit8 v4, v4, 0x1

    .line 516
    goto :goto_e

    .line 517
    :cond_27
    move-object v1, v5

    .line 518
    move-object v3, v1

    .line 519
    .line 520
    :cond_28
    if-nez v3, :cond_29

    .line 521
    goto :goto_10

    .line 522
    :cond_29
    move-object v1, v3

    .line 523
    .line 524
    :goto_10
    new-instance p2, Ljava/util/ArrayList;

    .line 525
    .line 526
    .line 527
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 528
    move-result p3

    .line 529
    .line 530
    .line 531
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 532
    .line 533
    .line 534
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 535
    move-result p3

    .line 536
    .line 537
    :goto_11
    if-ge v2, p3, :cond_2c

    .line 538
    .line 539
    .line 540
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 541
    move-result-object v0

    .line 542
    move-object v3, v0

    .line 543
    .line 544
    check-cast v3, Landroidx/compose/ui/text/font/Font;

    .line 545
    .line 546
    .line 547
    invoke-interface {v3}, Landroidx/compose/ui/text/font/Font;->b()Landroidx/compose/ui/text/font/FontWeight;

    .line 548
    move-result-object v3

    .line 549
    .line 550
    .line 551
    invoke-static {v3, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 552
    move-result v3

    .line 553
    .line 554
    if-eqz v3, :cond_2a

    .line 555
    .line 556
    .line 557
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 558
    .line 559
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    .line 560
    goto :goto_11

    .line 561
    :cond_2b
    move-object p2, p3

    .line 562
    :cond_2c
    return-object p2
.end method
