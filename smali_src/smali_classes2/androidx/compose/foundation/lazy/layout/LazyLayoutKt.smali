.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyLayout.kt\nandroidx/compose/foundation/lazy/layout/LazyLayoutKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,124:1\n25#2:125\n25#2:132\n50#2:139\n49#2:140\n1057#3,6:126\n1057#3,6:133\n1057#3,6:141\n*S KotlinDebug\n*F\n+ 1 LazyLayout.kt\nandroidx/compose/foundation/lazy/layout/LazyLayoutKt\n*L\n52#1:125\n55#1:132\n69#1:139\n69#1:140\n52#1:126,6\n55#1:133,6\n69#1:141,6\n*E\n"
.end annotation


# static fields
.field private static final MaxItemsToRetainForReuse:I = 0x7


# direct methods
.method public static final a(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Le8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 13
    .param p0    # Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;",
            "Le8/p<",
            "-",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "+",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    move-object v1, p0

    .line 2
    .line 3
    move-object/from16 v4, p3

    .line 4
    .line 5
    move/from16 v5, p5

    .line 6
    .line 7
    const-string v0, "itemProvider"

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "measurePolicy"

    .line 13
    .line 14
    .line 15
    invoke-static {v4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const v0, 0x32d52bd3

    .line 19
    .line 20
    move-object/from16 v2, p4

    .line 21
    .line 22
    .line 23
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    and-int/lit8 v2, p6, 0x1

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    or-int/lit8 v2, v5, 0x6

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_0
    and-int/lit8 v2, v5, 0xe

    .line 34
    .line 35
    if-nez v2, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 39
    move-result v2

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    const/4 v2, 0x4

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v2, 0x2

    .line 45
    :goto_0
    or-int/2addr v2, v5

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move v2, v5

    .line 48
    .line 49
    :goto_1
    and-int/lit8 v3, p6, 0x2

    .line 50
    .line 51
    if-eqz v3, :cond_4

    .line 52
    .line 53
    or-int/lit8 v2, v2, 0x30

    .line 54
    :cond_3
    move-object v6, p1

    .line 55
    goto :goto_3

    .line 56
    .line 57
    :cond_4
    and-int/lit8 v6, v5, 0x70

    .line 58
    .line 59
    if-nez v6, :cond_3

    .line 60
    move-object v6, p1

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 64
    move-result v7

    .line 65
    .line 66
    if-eqz v7, :cond_5

    .line 67
    .line 68
    const/16 v7, 0x20

    .line 69
    goto :goto_2

    .line 70
    .line 71
    :cond_5
    const/16 v7, 0x10

    .line 72
    :goto_2
    or-int/2addr v2, v7

    .line 73
    .line 74
    :goto_3
    and-int/lit8 v7, p6, 0x4

    .line 75
    .line 76
    if-eqz v7, :cond_7

    .line 77
    .line 78
    or-int/lit16 v2, v2, 0x180

    .line 79
    :cond_6
    move-object v8, p2

    .line 80
    goto :goto_5

    .line 81
    .line 82
    :cond_7
    and-int/lit16 v8, v5, 0x380

    .line 83
    .line 84
    if-nez v8, :cond_6

    .line 85
    move-object v8, p2

    .line 86
    .line 87
    .line 88
    invoke-interface {v0, p2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 89
    move-result v9

    .line 90
    .line 91
    if-eqz v9, :cond_8

    .line 92
    .line 93
    const/16 v9, 0x100

    .line 94
    goto :goto_4

    .line 95
    .line 96
    :cond_8
    const/16 v9, 0x80

    .line 97
    :goto_4
    or-int/2addr v2, v9

    .line 98
    .line 99
    :goto_5
    and-int/lit8 v9, p6, 0x8

    .line 100
    .line 101
    if-eqz v9, :cond_9

    .line 102
    .line 103
    or-int/lit16 v2, v2, 0xc00

    .line 104
    goto :goto_7

    .line 105
    .line 106
    :cond_9
    and-int/lit16 v9, v5, 0x1c00

    .line 107
    .line 108
    if-nez v9, :cond_b

    .line 109
    .line 110
    .line 111
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 112
    move-result v9

    .line 113
    .line 114
    if-eqz v9, :cond_a

    .line 115
    .line 116
    const/16 v9, 0x800

    .line 117
    goto :goto_6

    .line 118
    .line 119
    :cond_a
    const/16 v9, 0x400

    .line 120
    :goto_6
    or-int/2addr v2, v9

    .line 121
    .line 122
    :cond_b
    :goto_7
    and-int/lit16 v9, v2, 0x16db

    .line 123
    .line 124
    const/16 v10, 0x492

    .line 125
    .line 126
    if-ne v9, v10, :cond_d

    .line 127
    .line 128
    .line 129
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 130
    move-result v9

    .line 131
    .line 132
    if-nez v9, :cond_c

    .line 133
    goto :goto_8

    .line 134
    .line 135
    .line 136
    :cond_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 137
    move-object v2, v6

    .line 138
    move-object v3, v8

    .line 139
    .line 140
    goto/16 :goto_c

    .line 141
    .line 142
    :cond_d
    :goto_8
    if-eqz v3, :cond_e

    .line 143
    .line 144
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 145
    goto :goto_9

    .line 146
    :cond_e
    move-object v3, v6

    .line 147
    .line 148
    :goto_9
    if-eqz v7, :cond_f

    .line 149
    const/4 v6, 0x0

    .line 150
    move-object v12, v6

    .line 151
    goto :goto_a

    .line 152
    :cond_f
    move-object v12, v8

    .line 153
    .line 154
    :goto_a
    and-int/lit8 v6, v2, 0xe

    .line 155
    .line 156
    .line 157
    invoke-static {p0, v0, v6}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 158
    move-result-object v6

    .line 159
    const/4 v7, 0x0

    .line 160
    .line 161
    .line 162
    invoke-static {v0, v7}, Landroidx/compose/runtime/saveable/SaveableStateHolderKt;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/saveable/SaveableStateHolder;

    .line 163
    move-result-object v7

    .line 164
    .line 165
    .line 166
    const v8, -0x1d58f75c

    .line 167
    .line 168
    .line 169
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 170
    .line 171
    .line 172
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 173
    move-result-object v9

    .line 174
    .line 175
    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 179
    move-result-object v11

    .line 180
    .line 181
    if-ne v9, v11, :cond_10

    .line 182
    .line 183
    new-instance v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 184
    .line 185
    new-instance v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$itemContentFactory$1$1;

    .line 186
    .line 187
    .line 188
    invoke-direct {v11, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$itemContentFactory$1$1;-><init>(Landroidx/compose/runtime/State;)V

    .line 189
    .line 190
    .line 191
    invoke-direct {v9, v7, v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;-><init>(Landroidx/compose/runtime/saveable/SaveableStateHolder;Le8/a;)V

    .line 192
    .line 193
    .line 194
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    :cond_10
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 198
    .line 199
    check-cast v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 200
    .line 201
    .line 202
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 203
    .line 204
    .line 205
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 206
    move-result-object v6

    .line 207
    .line 208
    .line 209
    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 210
    move-result-object v7

    .line 211
    .line 212
    if-ne v6, v7, :cond_11

    .line 213
    .line 214
    new-instance v6, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 215
    .line 216
    new-instance v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemReusePolicy;

    .line 217
    .line 218
    .line 219
    invoke-direct {v7, v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemReusePolicy;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;)V

    .line 220
    .line 221
    .line 222
    invoke-direct {v6, v7}, Landroidx/compose/ui/layout/SubcomposeLayoutState;-><init>(Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;)V

    .line 223
    .line 224
    .line 225
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    :cond_11
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 229
    .line 230
    check-cast v6, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 231
    .line 232
    .line 233
    const v7, 0x24cb81e7

    .line 234
    .line 235
    .line 236
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 237
    .line 238
    if-nez v12, :cond_12

    .line 239
    goto :goto_b

    .line 240
    .line 241
    :cond_12
    shr-int/lit8 v7, v2, 0x6

    .line 242
    .line 243
    and-int/lit8 v7, v7, 0xe

    .line 244
    .line 245
    or-int/lit8 v7, v7, 0x40

    .line 246
    .line 247
    sget v8, Landroidx/compose/ui/layout/SubcomposeLayoutState;->$stable:I

    .line 248
    .line 249
    shl-int/lit8 v8, v8, 0x6

    .line 250
    or-int/2addr v7, v8

    .line 251
    .line 252
    .line 253
    invoke-static {v12, v9, v6, v0, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher_androidKt;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/runtime/Composer;I)V

    .line 254
    .line 255
    sget-object v7, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 256
    .line 257
    .line 258
    :goto_b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 259
    .line 260
    .line 261
    const v7, 0x1e7b2b64

    .line 262
    .line 263
    .line 264
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 265
    .line 266
    .line 267
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 268
    move-result v7

    .line 269
    .line 270
    .line 271
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 272
    move-result v8

    .line 273
    or-int/2addr v7, v8

    .line 274
    .line 275
    .line 276
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 277
    move-result-object v8

    .line 278
    .line 279
    if-nez v7, :cond_13

    .line 280
    .line 281
    .line 282
    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 283
    move-result-object v7

    .line 284
    .line 285
    if-ne v8, v7, :cond_14

    .line 286
    .line 287
    :cond_13
    new-instance v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$2$1;

    .line 288
    .line 289
    .line 290
    invoke-direct {v8, v9, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$2$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Le8/p;)V

    .line 291
    .line 292
    .line 293
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    :cond_14
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 297
    .line 298
    check-cast v8, Le8/p;

    .line 299
    .line 300
    sget v7, Landroidx/compose/ui/layout/SubcomposeLayoutState;->$stable:I

    .line 301
    .line 302
    and-int/lit8 v2, v2, 0x70

    .line 303
    .line 304
    or-int v10, v7, v2

    .line 305
    const/4 v11, 0x0

    .line 306
    move-object v7, v3

    .line 307
    move-object v9, v0

    .line 308
    .line 309
    .line 310
    invoke-static/range {v6 .. v11}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->b(Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/runtime/Composer;II)V

    .line 311
    move-object v2, v3

    .line 312
    move-object v3, v12

    .line 313
    .line 314
    .line 315
    :goto_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 316
    move-result-object v7

    .line 317
    .line 318
    if-nez v7, :cond_15

    .line 319
    goto :goto_d

    .line 320
    .line 321
    :cond_15
    new-instance v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$3;

    .line 322
    move-object v0, v8

    .line 323
    move-object v1, p0

    .line 324
    .line 325
    move-object/from16 v4, p3

    .line 326
    .line 327
    move/from16 v5, p5

    .line 328
    .line 329
    move/from16 v6, p6

    .line 330
    .line 331
    .line 332
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$3;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Le8/p;II)V

    .line 333
    .line 334
    .line 335
    invoke-interface {v7, v8}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 336
    :goto_d
    return-void
.end method
