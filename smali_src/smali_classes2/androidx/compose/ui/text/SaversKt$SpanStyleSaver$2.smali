.class final Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/SaversKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Ljava/lang/Object;",
        "Landroidx/compose/ui/text/SpanStyle;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSavers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Savers.kt\nandroidx/compose/ui/text/SaversKt$SpanStyleSaver$2\n+ 2 Savers.kt\nandroidx/compose/ui/text/SaversKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,398:1\n55#2,2:399\n55#2,2:402\n55#2,2:405\n70#2:408\n70#2:410\n70#2:412\n55#2,2:414\n55#2,2:417\n55#2,2:420\n55#2,2:423\n55#2,2:426\n55#2,2:429\n55#2,2:432\n1#3:401\n1#3:404\n1#3:407\n1#3:409\n1#3:411\n1#3:413\n1#3:416\n1#3:419\n1#3:422\n1#3:425\n1#3:428\n1#3:431\n1#3:434\n*S KotlinDebug\n*F\n+ 1 Savers.kt\nandroidx/compose/ui/text/SaversKt$SpanStyleSaver$2\n*L\n220#1:399,2\n221#1:402,2\n222#1:405,2\n223#1:408\n224#1:410\n226#1:412\n227#1:414,2\n228#1:417,2\n229#1:420,2\n230#1:423,2\n231#1:426,2\n232#1:429,2\n233#1:432,2\n220#1:401\n221#1:404\n222#1:407\n223#1:409\n224#1:411\n226#1:413\n227#1:416\n228#1:419\n229#1:422\n230#1:425\n231#1:428\n232#1:431\n233#1:434\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;

    invoke-direct {v0}, Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Landroidx/compose/ui/text/SpanStyle;
    .locals 27
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    const-string v1, "it"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    check-cast v0, Ljava/util/List;

    .line 10
    .line 11
    new-instance v22, Landroidx/compose/ui/text/SpanStyle;

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Landroidx/compose/ui/text/SaversKt;->g(Landroidx/compose/ui/graphics/Color$Companion;)Landroidx/compose/runtime/saveable/Saver;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    move-result v5

    .line 29
    const/4 v6, 0x0

    .line 30
    .line 31
    if-eqz v5, :cond_1

    .line 32
    :cond_0
    move-object v1, v6

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    if-eqz v1, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-interface {v3, v1}, Landroidx/compose/runtime/saveable/Saver;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    check-cast v1, Landroidx/compose/ui/graphics/Color;

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 48
    move-result-wide v7

    .line 49
    const/4 v1, 0x1

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    sget-object v3, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    .line 56
    .line 57
    .line 58
    invoke-static {v3}, Landroidx/compose/ui/text/SaversKt;->q(Landroidx/compose/ui/unit/TextUnit$Companion;)Landroidx/compose/runtime/saveable/Saver;

    .line 59
    move-result-object v5

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    move-result v9

    .line 64
    .line 65
    if-eqz v9, :cond_3

    .line 66
    :cond_2
    move-object v1, v6

    .line 67
    goto :goto_1

    .line 68
    .line 69
    :cond_3
    if-eqz v1, :cond_2

    .line 70
    .line 71
    .line 72
    invoke-interface {v5, v1}, Landroidx/compose/runtime/saveable/Saver;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    check-cast v1, Landroidx/compose/ui/unit/TextUnit;

    .line 76
    .line 77
    .line 78
    :goto_1
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Landroidx/compose/ui/unit/TextUnit;->k()J

    .line 82
    move-result-wide v9

    .line 83
    const/4 v1, 0x2

    .line 84
    .line 85
    .line 86
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    sget-object v5, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    .line 90
    .line 91
    .line 92
    invoke-static {v5}, Landroidx/compose/ui/text/SaversKt;->j(Landroidx/compose/ui/text/font/FontWeight$Companion;)Landroidx/compose/runtime/saveable/Saver;

    .line 93
    move-result-object v5

    .line 94
    .line 95
    .line 96
    invoke-static {v1, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    move-result v11

    .line 98
    .line 99
    if-eqz v11, :cond_5

    .line 100
    :cond_4
    move-object v11, v6

    .line 101
    goto :goto_2

    .line 102
    .line 103
    :cond_5
    if-eqz v1, :cond_4

    .line 104
    .line 105
    .line 106
    invoke-interface {v5, v1}, Landroidx/compose/runtime/saveable/Saver;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    move-result-object v1

    .line 108
    .line 109
    check-cast v1, Landroidx/compose/ui/text/font/FontWeight;

    .line 110
    move-object v11, v1

    .line 111
    :goto_2
    const/4 v1, 0x3

    .line 112
    .line 113
    .line 114
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    if-eqz v1, :cond_6

    .line 118
    .line 119
    check-cast v1, Landroidx/compose/ui/text/font/FontStyle;

    .line 120
    move-object v12, v1

    .line 121
    goto :goto_3

    .line 122
    :cond_6
    move-object v12, v6

    .line 123
    :goto_3
    const/4 v1, 0x4

    .line 124
    .line 125
    .line 126
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    if-eqz v1, :cond_7

    .line 130
    .line 131
    check-cast v1, Landroidx/compose/ui/text/font/FontSynthesis;

    .line 132
    move-object v13, v1

    .line 133
    goto :goto_4

    .line 134
    :cond_7
    move-object v13, v6

    .line 135
    :goto_4
    const/4 v14, 0x0

    .line 136
    const/4 v1, 0x6

    .line 137
    .line 138
    .line 139
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 140
    move-result-object v1

    .line 141
    .line 142
    if-eqz v1, :cond_8

    .line 143
    .line 144
    check-cast v1, Ljava/lang/String;

    .line 145
    move-object v15, v1

    .line 146
    goto :goto_5

    .line 147
    :cond_8
    move-object v15, v6

    .line 148
    :goto_5
    const/4 v1, 0x7

    .line 149
    .line 150
    .line 151
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 152
    move-result-object v1

    .line 153
    .line 154
    .line 155
    invoke-static {v3}, Landroidx/compose/ui/text/SaversKt;->q(Landroidx/compose/ui/unit/TextUnit$Companion;)Landroidx/compose/runtime/saveable/Saver;

    .line 156
    move-result-object v3

    .line 157
    .line 158
    .line 159
    invoke-static {v1, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 160
    move-result v5

    .line 161
    .line 162
    if-eqz v5, :cond_a

    .line 163
    :cond_9
    move-object v1, v6

    .line 164
    goto :goto_6

    .line 165
    .line 166
    :cond_a
    if-eqz v1, :cond_9

    .line 167
    .line 168
    .line 169
    invoke-interface {v3, v1}, Landroidx/compose/runtime/saveable/Saver;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    move-result-object v1

    .line 171
    .line 172
    check-cast v1, Landroidx/compose/ui/unit/TextUnit;

    .line 173
    .line 174
    .line 175
    :goto_6
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Landroidx/compose/ui/unit/TextUnit;->k()J

    .line 179
    move-result-wide v16

    .line 180
    .line 181
    const/16 v1, 0x8

    .line 182
    .line 183
    .line 184
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 185
    move-result-object v1

    .line 186
    .line 187
    sget-object v3, Landroidx/compose/ui/text/style/BaselineShift;->Companion:Landroidx/compose/ui/text/style/BaselineShift$Companion;

    .line 188
    .line 189
    .line 190
    invoke-static {v3}, Landroidx/compose/ui/text/SaversKt;->m(Landroidx/compose/ui/text/style/BaselineShift$Companion;)Landroidx/compose/runtime/saveable/Saver;

    .line 191
    move-result-object v3

    .line 192
    .line 193
    .line 194
    invoke-static {v1, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 195
    move-result v5

    .line 196
    .line 197
    if-eqz v5, :cond_c

    .line 198
    .line 199
    :cond_b
    move-object/from16 v18, v6

    .line 200
    goto :goto_7

    .line 201
    .line 202
    :cond_c
    if-eqz v1, :cond_b

    .line 203
    .line 204
    .line 205
    invoke-interface {v3, v1}, Landroidx/compose/runtime/saveable/Saver;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    move-result-object v1

    .line 207
    .line 208
    check-cast v1, Landroidx/compose/ui/text/style/BaselineShift;

    .line 209
    .line 210
    move-object/from16 v18, v1

    .line 211
    .line 212
    :goto_7
    const/16 v1, 0x9

    .line 213
    .line 214
    .line 215
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 216
    move-result-object v1

    .line 217
    .line 218
    sget-object v3, Landroidx/compose/ui/text/style/TextGeometricTransform;->Companion:Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;

    .line 219
    .line 220
    .line 221
    invoke-static {v3}, Landroidx/compose/ui/text/SaversKt;->o(Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;)Landroidx/compose/runtime/saveable/Saver;

    .line 222
    move-result-object v3

    .line 223
    .line 224
    .line 225
    invoke-static {v1, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 226
    move-result v5

    .line 227
    .line 228
    if-eqz v5, :cond_e

    .line 229
    .line 230
    :cond_d
    move-object/from16 v19, v6

    .line 231
    goto :goto_8

    .line 232
    .line 233
    :cond_e
    if-eqz v1, :cond_d

    .line 234
    .line 235
    .line 236
    invoke-interface {v3, v1}, Landroidx/compose/runtime/saveable/Saver;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    move-result-object v1

    .line 238
    .line 239
    check-cast v1, Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 240
    .line 241
    move-object/from16 v19, v1

    .line 242
    .line 243
    :goto_8
    const/16 v1, 0xa

    .line 244
    .line 245
    .line 246
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 247
    move-result-object v1

    .line 248
    .line 249
    sget-object v3, Landroidx/compose/ui/text/intl/LocaleList;->Companion:Landroidx/compose/ui/text/intl/LocaleList$Companion;

    .line 250
    .line 251
    .line 252
    invoke-static {v3}, Landroidx/compose/ui/text/SaversKt;->l(Landroidx/compose/ui/text/intl/LocaleList$Companion;)Landroidx/compose/runtime/saveable/Saver;

    .line 253
    move-result-object v3

    .line 254
    .line 255
    .line 256
    invoke-static {v1, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 257
    move-result v5

    .line 258
    .line 259
    if-eqz v5, :cond_10

    .line 260
    .line 261
    :cond_f
    move-object/from16 v23, v6

    .line 262
    goto :goto_9

    .line 263
    .line 264
    :cond_10
    if-eqz v1, :cond_f

    .line 265
    .line 266
    .line 267
    invoke-interface {v3, v1}, Landroidx/compose/runtime/saveable/Saver;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    move-result-object v1

    .line 269
    .line 270
    check-cast v1, Landroidx/compose/ui/text/intl/LocaleList;

    .line 271
    .line 272
    move-object/from16 v23, v1

    .line 273
    .line 274
    :goto_9
    const/16 v1, 0xb

    .line 275
    .line 276
    .line 277
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 278
    move-result-object v1

    .line 279
    .line 280
    .line 281
    invoke-static {v2}, Landroidx/compose/ui/text/SaversKt;->g(Landroidx/compose/ui/graphics/Color$Companion;)Landroidx/compose/runtime/saveable/Saver;

    .line 282
    move-result-object v2

    .line 283
    .line 284
    .line 285
    invoke-static {v1, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 286
    move-result v3

    .line 287
    .line 288
    if-eqz v3, :cond_12

    .line 289
    :cond_11
    move-object v1, v6

    .line 290
    goto :goto_a

    .line 291
    .line 292
    :cond_12
    if-eqz v1, :cond_11

    .line 293
    .line 294
    .line 295
    invoke-interface {v2, v1}, Landroidx/compose/runtime/saveable/Saver;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    move-result-object v1

    .line 297
    .line 298
    check-cast v1, Landroidx/compose/ui/graphics/Color;

    .line 299
    .line 300
    .line 301
    :goto_a
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 305
    move-result-wide v24

    .line 306
    .line 307
    const/16 v1, 0xc

    .line 308
    .line 309
    .line 310
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 311
    move-result-object v1

    .line 312
    .line 313
    sget-object v2, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    .line 314
    .line 315
    .line 316
    invoke-static {v2}, Landroidx/compose/ui/text/SaversKt;->n(Landroidx/compose/ui/text/style/TextDecoration$Companion;)Landroidx/compose/runtime/saveable/Saver;

    .line 317
    move-result-object v2

    .line 318
    .line 319
    .line 320
    invoke-static {v1, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 321
    move-result v3

    .line 322
    .line 323
    if-eqz v3, :cond_14

    .line 324
    .line 325
    :cond_13
    move-object/from16 v26, v6

    .line 326
    goto :goto_b

    .line 327
    .line 328
    :cond_14
    if-eqz v1, :cond_13

    .line 329
    .line 330
    .line 331
    invoke-interface {v2, v1}, Landroidx/compose/runtime/saveable/Saver;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    move-result-object v1

    .line 333
    .line 334
    check-cast v1, Landroidx/compose/ui/text/style/TextDecoration;

    .line 335
    .line 336
    move-object/from16 v26, v1

    .line 337
    .line 338
    :goto_b
    const/16 v1, 0xd

    .line 339
    .line 340
    .line 341
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 342
    move-result-object v0

    .line 343
    .line 344
    sget-object v1, Landroidx/compose/ui/graphics/Shadow;->Companion:Landroidx/compose/ui/graphics/Shadow$Companion;

    .line 345
    .line 346
    .line 347
    invoke-static {v1}, Landroidx/compose/ui/text/SaversKt;->h(Landroidx/compose/ui/graphics/Shadow$Companion;)Landroidx/compose/runtime/saveable/Saver;

    .line 348
    move-result-object v1

    .line 349
    .line 350
    .line 351
    invoke-static {v0, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 352
    move-result v2

    .line 353
    .line 354
    if-eqz v2, :cond_16

    .line 355
    :cond_15
    move-object v0, v6

    .line 356
    goto :goto_c

    .line 357
    .line 358
    :cond_16
    if-eqz v0, :cond_15

    .line 359
    .line 360
    .line 361
    invoke-interface {v1, v0}, Landroidx/compose/runtime/saveable/Saver;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    move-result-object v0

    .line 363
    .line 364
    check-cast v0, Landroidx/compose/ui/graphics/Shadow;

    .line 365
    .line 366
    :goto_c
    const/16 v20, 0x20

    .line 367
    .line 368
    const/16 v21, 0x0

    .line 369
    .line 370
    move-object/from16 v1, v22

    .line 371
    move-wide v2, v7

    .line 372
    move-wide v4, v9

    .line 373
    move-object v6, v11

    .line 374
    move-object v7, v12

    .line 375
    move-object v8, v13

    .line 376
    move-object v9, v14

    .line 377
    move-object v10, v15

    .line 378
    .line 379
    move-wide/from16 v11, v16

    .line 380
    .line 381
    move-object/from16 v13, v18

    .line 382
    .line 383
    move-object/from16 v14, v19

    .line 384
    .line 385
    move-object/from16 v15, v23

    .line 386
    .line 387
    move-wide/from16 v16, v24

    .line 388
    .line 389
    move-object/from16 v18, v26

    .line 390
    .line 391
    move-object/from16 v19, v0

    .line 392
    .line 393
    .line 394
    invoke-direct/range {v1 .. v21}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;ILkotlin/jvm/internal/k;)V

    .line 395
    return-object v22
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;->a(Ljava/lang/Object;)Landroidx/compose/ui/text/SpanStyle;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
