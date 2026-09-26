.class final Landroidx/compose/foundation/text/MaxLinesHeightModifierKt$maxLinesHeight$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/MaxLinesHeightModifierKt;->a(Landroidx/compose/ui/Modifier;ILandroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Landroidx/compose/ui/Modifier;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/ui/Modifier;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMaxLinesHeightModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MaxLinesHeightModifier.kt\nandroidx/compose/foundation/text/MaxLinesHeightModifierKt$maxLinesHeight$2\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,110:1\n76#2:111\n76#2:112\n76#2:113\n50#3:114\n49#3:115\n50#3:122\n49#3:123\n83#3,3:130\n83#3,3:139\n1057#4,6:116\n1057#4,6:124\n1057#4,6:133\n1057#4,6:142\n1#5:148\n76#6:149\n*S KotlinDebug\n*F\n+ 1 MaxLinesHeightModifier.kt\nandroidx/compose/foundation/text/MaxLinesHeightModifierKt$maxLinesHeight$2\n*L\n54#1:111\n55#1:112\n56#1:113\n60#1:114\n60#1:115\n63#1:122\n63#1:123\n72#1:130,3\n88#1:139,3\n60#1:116,6\n63#1:124,6\n72#1:133,6\n88#1:142,6\n63#1:149\n*E\n"
.end annotation


# instance fields
.field final synthetic $maxLines:I

.field final synthetic $textStyle:Landroidx/compose/ui/text/TextStyle;


# direct methods
.method constructor <init>(ILandroidx/compose/ui/text/TextStyle;)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/text/MaxLinesHeightModifierKt$maxLinesHeight$2;->$maxLines:I

    iput-object p2, p0, Landroidx/compose/foundation/text/MaxLinesHeightModifierKt$maxLinesHeight$2;->$textStyle:Landroidx/compose/ui/text/TextStyle;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method

.method private static final b(Landroidx/compose/runtime/State;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 17
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    const-string v2, "$this$composed"

    .line 7
    .line 8
    move-object/from16 v3, p1

    .line 9
    .line 10
    .line 11
    invoke-static {v3, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v2, -0x3d36fe1d

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 18
    .line 19
    iget v2, v0, Landroidx/compose/foundation/text/MaxLinesHeightModifierKt$maxLinesHeight$2;->$maxLines:I

    .line 20
    .line 21
    if-lez v2, :cond_e

    .line 22
    .line 23
    .line 24
    const v3, 0x7fffffff

    .line 25
    .line 26
    if-ne v2, v3, :cond_0

    .line 27
    .line 28
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 29
    .line 30
    .line 31
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 32
    return-object v2

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->g()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    .line 49
    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    check-cast v3, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 53
    .line 54
    .line 55
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 56
    move-result-object v4

    .line 57
    .line 58
    .line 59
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 60
    move-result-object v4

    .line 61
    .line 62
    check-cast v4, Landroidx/compose/ui/unit/LayoutDirection;

    .line 63
    .line 64
    iget-object v5, v0, Landroidx/compose/foundation/text/MaxLinesHeightModifierKt$maxLinesHeight$2;->$textStyle:Landroidx/compose/ui/text/TextStyle;

    .line 65
    .line 66
    .line 67
    const v6, 0x1e7b2b64

    .line 68
    .line 69
    .line 70
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 71
    .line 72
    .line 73
    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 74
    move-result v7

    .line 75
    .line 76
    .line 77
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 78
    move-result v8

    .line 79
    or-int/2addr v7, v8

    .line 80
    .line 81
    .line 82
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 83
    move-result-object v8

    .line 84
    .line 85
    if-nez v7, :cond_1

    .line 86
    .line 87
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 91
    move-result-object v7

    .line 92
    .line 93
    if-ne v8, v7, :cond_2

    .line 94
    .line 95
    .line 96
    :cond_1
    invoke-static {v5, v4}, Landroidx/compose/ui/text/TextStyleKt;->d(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    .line 97
    move-result-object v8

    .line 98
    .line 99
    .line 100
    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 104
    .line 105
    check-cast v8, Landroidx/compose/ui/text/TextStyle;

    .line 106
    .line 107
    .line 108
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 112
    move-result v5

    .line 113
    .line 114
    .line 115
    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 116
    move-result v6

    .line 117
    or-int/2addr v5, v6

    .line 118
    .line 119
    .line 120
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 121
    move-result-object v6

    .line 122
    .line 123
    if-nez v5, :cond_3

    .line 124
    .line 125
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 129
    move-result-object v5

    .line 130
    .line 131
    if-ne v6, v5, :cond_7

    .line 132
    .line 133
    .line 134
    :cond_3
    invoke-virtual {v8}, Landroidx/compose/ui/text/TextStyle;->h()Landroidx/compose/ui/text/font/FontFamily;

    .line 135
    move-result-object v5

    .line 136
    .line 137
    .line 138
    invoke-virtual {v8}, Landroidx/compose/ui/text/TextStyle;->m()Landroidx/compose/ui/text/font/FontWeight;

    .line 139
    move-result-object v6

    .line 140
    .line 141
    if-nez v6, :cond_4

    .line 142
    .line 143
    sget-object v6, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6}, Landroidx/compose/ui/text/font/FontWeight$Companion;->d()Landroidx/compose/ui/text/font/FontWeight;

    .line 147
    move-result-object v6

    .line 148
    .line 149
    .line 150
    :cond_4
    invoke-virtual {v8}, Landroidx/compose/ui/text/TextStyle;->k()Landroidx/compose/ui/text/font/FontStyle;

    .line 151
    move-result-object v7

    .line 152
    .line 153
    if-eqz v7, :cond_5

    .line 154
    .line 155
    .line 156
    invoke-virtual {v7}, Landroidx/compose/ui/text/font/FontStyle;->i()I

    .line 157
    move-result v7

    .line 158
    goto :goto_0

    .line 159
    .line 160
    :cond_5
    sget-object v7, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v7}, Landroidx/compose/ui/text/font/FontStyle$Companion;->b()I

    .line 164
    move-result v7

    .line 165
    .line 166
    .line 167
    :goto_0
    invoke-virtual {v8}, Landroidx/compose/ui/text/TextStyle;->l()Landroidx/compose/ui/text/font/FontSynthesis;

    .line 168
    move-result-object v9

    .line 169
    .line 170
    if-eqz v9, :cond_6

    .line 171
    .line 172
    .line 173
    invoke-virtual {v9}, Landroidx/compose/ui/text/font/FontSynthesis;->m()I

    .line 174
    move-result v9

    .line 175
    goto :goto_1

    .line 176
    .line 177
    :cond_6
    sget-object v9, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v9}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->a()I

    .line 181
    move-result v9

    .line 182
    .line 183
    .line 184
    :goto_1
    invoke-interface {v3, v5, v6, v7, v9}, Landroidx/compose/ui/text/font/FontFamily$Resolver;->a(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;II)Landroidx/compose/runtime/State;

    .line 185
    move-result-object v6

    .line 186
    .line 187
    .line 188
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    :cond_7
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 192
    .line 193
    check-cast v6, Landroidx/compose/runtime/State;

    .line 194
    const/4 v5, 0x5

    .line 195
    .line 196
    new-array v7, v5, [Ljava/lang/Object;

    .line 197
    const/4 v9, 0x0

    .line 198
    .line 199
    aput-object v2, v7, v9

    .line 200
    const/4 v10, 0x1

    .line 201
    .line 202
    aput-object v3, v7, v10

    .line 203
    .line 204
    iget-object v11, v0, Landroidx/compose/foundation/text/MaxLinesHeightModifierKt$maxLinesHeight$2;->$textStyle:Landroidx/compose/ui/text/TextStyle;

    .line 205
    const/4 v12, 0x2

    .line 206
    .line 207
    aput-object v11, v7, v12

    .line 208
    const/4 v11, 0x3

    .line 209
    .line 210
    aput-object v4, v7, v11

    .line 211
    .line 212
    .line 213
    invoke-static {v6}, Landroidx/compose/foundation/text/MaxLinesHeightModifierKt$maxLinesHeight$2;->b(Landroidx/compose/runtime/State;)Ljava/lang/Object;

    .line 214
    move-result-object v13

    .line 215
    const/4 v14, 0x4

    .line 216
    .line 217
    aput-object v13, v7, v14

    .line 218
    .line 219
    .line 220
    const v13, -0x21de6e89

    .line 221
    .line 222
    .line 223
    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 224
    move v15, v9

    .line 225
    .line 226
    move/from16 v16, v15

    .line 227
    .line 228
    :goto_2
    if-ge v15, v5, :cond_8

    .line 229
    .line 230
    aget-object v13, v7, v15

    .line 231
    .line 232
    .line 233
    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 234
    move-result v13

    .line 235
    .line 236
    or-int v16, v16, v13

    .line 237
    .line 238
    add-int/lit8 v15, v15, 0x1

    .line 239
    .line 240
    .line 241
    const v13, -0x21de6e89

    .line 242
    goto :goto_2

    .line 243
    .line 244
    .line 245
    :cond_8
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 246
    move-result-object v7

    .line 247
    .line 248
    if-nez v16, :cond_9

    .line 249
    .line 250
    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 254
    move-result-object v13

    .line 255
    .line 256
    if-ne v7, v13, :cond_a

    .line 257
    .line 258
    .line 259
    :cond_9
    invoke-static {}, Landroidx/compose/foundation/text/TextFieldDelegateKt;->c()Ljava/lang/String;

    .line 260
    move-result-object v7

    .line 261
    .line 262
    .line 263
    invoke-static {v8, v2, v3, v7, v10}, Landroidx/compose/foundation/text/TextFieldDelegateKt;->a(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/lang/String;I)J

    .line 264
    move-result-wide v15

    .line 265
    .line 266
    .line 267
    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 268
    move-result v7

    .line 269
    .line 270
    .line 271
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 272
    move-result-object v7

    .line 273
    .line 274
    .line 275
    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    :cond_a
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 279
    .line 280
    check-cast v7, Ljava/lang/Number;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 284
    move-result v7

    .line 285
    .line 286
    new-array v13, v5, [Ljava/lang/Object;

    .line 287
    .line 288
    aput-object v2, v13, v9

    .line 289
    .line 290
    aput-object v3, v13, v10

    .line 291
    .line 292
    iget-object v15, v0, Landroidx/compose/foundation/text/MaxLinesHeightModifierKt$maxLinesHeight$2;->$textStyle:Landroidx/compose/ui/text/TextStyle;

    .line 293
    .line 294
    aput-object v15, v13, v12

    .line 295
    .line 296
    aput-object v4, v13, v11

    .line 297
    .line 298
    .line 299
    invoke-static {v6}, Landroidx/compose/foundation/text/MaxLinesHeightModifierKt$maxLinesHeight$2;->b(Landroidx/compose/runtime/State;)Ljava/lang/Object;

    .line 300
    move-result-object v4

    .line 301
    .line 302
    aput-object v4, v13, v14

    .line 303
    .line 304
    .line 305
    const v4, -0x21de6e89

    .line 306
    .line 307
    .line 308
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 309
    move v4, v9

    .line 310
    .line 311
    :goto_3
    if-ge v9, v5, :cond_b

    .line 312
    .line 313
    aget-object v6, v13, v9

    .line 314
    .line 315
    .line 316
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 317
    move-result v6

    .line 318
    or-int/2addr v4, v6

    .line 319
    .line 320
    add-int/lit8 v9, v9, 0x1

    .line 321
    goto :goto_3

    .line 322
    .line 323
    .line 324
    :cond_b
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 325
    move-result-object v5

    .line 326
    .line 327
    if-nez v4, :cond_c

    .line 328
    .line 329
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 333
    move-result-object v4

    .line 334
    .line 335
    if-ne v5, v4, :cond_d

    .line 336
    .line 337
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .line 342
    .line 343
    invoke-static {}, Landroidx/compose/foundation/text/TextFieldDelegateKt;->c()Ljava/lang/String;

    .line 344
    move-result-object v5

    .line 345
    .line 346
    .line 347
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    const/16 v5, 0xa

    .line 350
    .line 351
    .line 352
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-static {}, Landroidx/compose/foundation/text/TextFieldDelegateKt;->c()Ljava/lang/String;

    .line 356
    move-result-object v5

    .line 357
    .line 358
    .line 359
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    move-result-object v4

    .line 364
    .line 365
    .line 366
    invoke-static {v8, v2, v3, v4, v12}, Landroidx/compose/foundation/text/TextFieldDelegateKt;->a(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/lang/String;I)J

    .line 367
    move-result-wide v3

    .line 368
    .line 369
    .line 370
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 371
    move-result v3

    .line 372
    .line 373
    .line 374
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 375
    move-result-object v5

    .line 376
    .line 377
    .line 378
    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    :cond_d
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 382
    .line 383
    check-cast v5, Ljava/lang/Number;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 387
    move-result v3

    .line 388
    sub-int/2addr v3, v7

    .line 389
    .line 390
    iget v4, v0, Landroidx/compose/foundation/text/MaxLinesHeightModifierKt$maxLinesHeight$2;->$maxLines:I

    .line 391
    sub-int/2addr v4, v10

    .line 392
    mul-int/2addr v3, v4

    .line 393
    add-int/2addr v7, v3

    .line 394
    .line 395
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 396
    .line 397
    .line 398
    invoke-interface {v2, v7}, Landroidx/compose/ui/unit/Density;->j(I)F

    .line 399
    move-result v2

    .line 400
    const/4 v4, 0x0

    .line 401
    const/4 v5, 0x0

    .line 402
    .line 403
    .line 404
    invoke-static {v3, v5, v2, v10, v4}, Landroidx/compose/foundation/layout/SizeKt;->q(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 405
    move-result-object v2

    .line 406
    .line 407
    .line 408
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 409
    return-object v2

    .line 410
    .line 411
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 412
    .line 413
    const-string v2, "maxLines must be greater than 0"

    .line 414
    .line 415
    .line 416
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 417
    move-result-object v2

    .line 418
    .line 419
    .line 420
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 421
    throw v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/Modifier;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 5
    .line 6
    check-cast p3, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 10
    move-result p3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/text/MaxLinesHeightModifierKt$maxLinesHeight$2;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
