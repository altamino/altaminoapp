.class public final Landroidx/compose/foundation/ImageKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Image.kt\nandroidx/compose/foundation/ImageKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,269:1\n36#2:270\n36#2:277\n460#2,16:297\n1057#3,6:271\n1057#3,6:278\n75#4:284\n76#4,11:286\n89#4:313\n76#5:285\n*S KotlinDebug\n*F\n+ 1 Image.kt\nandroidx/compose/foundation/ImageKt\n*L\n154#1:270\n246#1:277\n256#1:297,16\n154#1:271,6\n246#1:278,6\n256#1:284\n256#1:286,11\n256#1:313\n256#1:285\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V
    .locals 19
    .param p0    # Landroidx/compose/ui/graphics/painter/Painter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/Alignment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/layout/ContentScale;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v2, p1

    .line 3
    .line 4
    const-string v0, "painter"

    .line 5
    .line 6
    move-object/from16 v1, p0

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v0, 0x441d0e20

    .line 13
    .line 14
    move-object/from16 v3, p7

    .line 15
    .line 16
    .line 17
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    and-int/lit8 v3, p9, 0x4

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 25
    move-object v12, v3

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    move-object/from16 v12, p2

    .line 29
    .line 30
    :goto_0
    and-int/lit8 v3, p9, 0x8

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->e()Landroidx/compose/ui/Alignment;

    .line 38
    move-result-object v3

    .line 39
    move-object v13, v3

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_1
    move-object/from16 v13, p3

    .line 43
    .line 44
    :goto_1
    and-int/lit8 v3, p9, 0x10

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    sget-object v3, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Landroidx/compose/ui/layout/ContentScale$Companion;->b()Landroidx/compose/ui/layout/ContentScale;

    .line 52
    move-result-object v3

    .line 53
    move-object v14, v3

    .line 54
    goto :goto_2

    .line 55
    .line 56
    :cond_2
    move-object/from16 v14, p4

    .line 57
    .line 58
    :goto_2
    and-int/lit8 v3, p9, 0x20

    .line 59
    .line 60
    if-eqz v3, :cond_3

    .line 61
    .line 62
    const/high16 v3, 0x3f800000    # 1.0f

    .line 63
    move v15, v3

    .line 64
    goto :goto_3

    .line 65
    .line 66
    :cond_3
    move/from16 v15, p5

    .line 67
    .line 68
    :goto_3
    and-int/lit8 v3, p9, 0x40

    .line 69
    const/4 v4, 0x0

    .line 70
    .line 71
    if-eqz v3, :cond_4

    .line 72
    .line 73
    move-object/from16 v16, v4

    .line 74
    goto :goto_4

    .line 75
    .line 76
    :cond_4
    move-object/from16 v16, p6

    .line 77
    .line 78
    .line 79
    :goto_4
    const v3, -0x30af4a0b

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 83
    const/4 v11, 0x0

    .line 84
    .line 85
    if-eqz v2, :cond_7

    .line 86
    .line 87
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 88
    .line 89
    .line 90
    const v5, 0x44faf204

    .line 91
    .line 92
    .line 93
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 97
    move-result v5

    .line 98
    .line 99
    .line 100
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 101
    move-result-object v6

    .line 102
    .line 103
    if-nez v5, :cond_5

    .line 104
    .line 105
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 109
    move-result-object v5

    .line 110
    .line 111
    if-ne v6, v5, :cond_6

    .line 112
    .line 113
    :cond_5
    new-instance v6, Landroidx/compose/foundation/ImageKt$Image$semantics$1$1;

    .line 114
    .line 115
    .line 116
    invoke-direct {v6, v2}, Landroidx/compose/foundation/ImageKt$Image$semantics$1$1;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    :cond_6
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 123
    .line 124
    check-cast v6, Le8/l;

    .line 125
    const/4 v5, 0x1

    .line 126
    .line 127
    .line 128
    invoke-static {v3, v11, v6, v5, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->c(Landroidx/compose/ui/Modifier;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 129
    move-result-object v3

    .line 130
    goto :goto_5

    .line 131
    .line 132
    :cond_7
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 133
    .line 134
    .line 135
    :goto_5
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 136
    .line 137
    .line 138
    invoke-interface {v12, v3}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 139
    move-result-object v3

    .line 140
    .line 141
    .line 142
    invoke-static {v3}, Landroidx/compose/ui/draw/ClipKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 143
    move-result-object v3

    .line 144
    const/4 v5, 0x0

    .line 145
    const/4 v10, 0x2

    .line 146
    .line 147
    const/16 v17, 0x0

    .line 148
    .line 149
    move-object/from16 v4, p0

    .line 150
    move-object v6, v13

    .line 151
    move-object v7, v14

    .line 152
    move v8, v15

    .line 153
    .line 154
    move-object/from16 v9, v16

    .line 155
    .line 156
    move/from16 v18, v11

    .line 157
    .line 158
    move-object/from16 v11, v17

    .line 159
    .line 160
    .line 161
    invoke-static/range {v3 .. v11}, Landroidx/compose/ui/draw/PainterModifierKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;ZLandroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 162
    move-result-object v3

    .line 163
    .line 164
    sget-object v4, Landroidx/compose/foundation/ImageKt$Image$2;->INSTANCE:Landroidx/compose/foundation/ImageKt$Image$2;

    .line 165
    .line 166
    .line 167
    const v5, -0x4ee9b9da

    .line 168
    .line 169
    .line 170
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 171
    .line 172
    .line 173
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 174
    move-result-object v5

    .line 175
    .line 176
    .line 177
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 178
    move-result-object v5

    .line 179
    .line 180
    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 181
    .line 182
    .line 183
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 184
    move-result-object v6

    .line 185
    .line 186
    .line 187
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 188
    move-result-object v6

    .line 189
    .line 190
    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 191
    .line 192
    .line 193
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 194
    move-result-object v7

    .line 195
    .line 196
    .line 197
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 198
    move-result-object v7

    .line 199
    .line 200
    check-cast v7, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 201
    .line 202
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 206
    move-result-object v9

    .line 207
    .line 208
    .line 209
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 210
    move-result-object v3

    .line 211
    .line 212
    .line 213
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 214
    move-result-object v10

    .line 215
    .line 216
    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    .line 217
    .line 218
    if-nez v10, :cond_8

    .line 219
    .line 220
    .line 221
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 222
    .line 223
    .line 224
    :cond_8
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->e()V

    .line 225
    .line 226
    .line 227
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->r()Z

    .line 228
    move-result v10

    .line 229
    .line 230
    if-eqz v10, :cond_9

    .line 231
    .line 232
    .line 233
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 234
    goto :goto_6

    .line 235
    .line 236
    .line 237
    :cond_9
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->c()V

    .line 238
    .line 239
    .line 240
    :goto_6
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->L()V

    .line 241
    .line 242
    .line 243
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 244
    move-result-object v9

    .line 245
    .line 246
    .line 247
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 248
    move-result-object v10

    .line 249
    .line 250
    .line 251
    invoke-static {v9, v4, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 255
    move-result-object v4

    .line 256
    .line 257
    .line 258
    invoke-static {v9, v5, v4}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 262
    move-result-object v4

    .line 263
    .line 264
    .line 265
    invoke-static {v9, v6, v4}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 269
    move-result-object v4

    .line 270
    .line 271
    .line 272
    invoke-static {v9, v7, v4}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 273
    .line 274
    .line 275
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->o()V

    .line 276
    .line 277
    .line 278
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 279
    move-result-object v4

    .line 280
    .line 281
    .line 282
    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 283
    move-result-object v4

    .line 284
    .line 285
    .line 286
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 287
    move-result-object v5

    .line 288
    .line 289
    .line 290
    invoke-interface {v3, v4, v0, v5}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    const v3, 0x7ab4aae9

    .line 294
    .line 295
    .line 296
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 297
    .line 298
    .line 299
    const v3, -0x7bdbb269

    .line 300
    .line 301
    .line 302
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 303
    .line 304
    .line 305
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 306
    .line 307
    .line 308
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 309
    .line 310
    .line 311
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->d()V

    .line 312
    .line 313
    .line 314
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 315
    .line 316
    .line 317
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 318
    move-result-object v10

    .line 319
    .line 320
    if-nez v10, :cond_a

    .line 321
    goto :goto_7

    .line 322
    .line 323
    :cond_a
    new-instance v11, Landroidx/compose/foundation/ImageKt$Image$3;

    .line 324
    move-object v0, v11

    .line 325
    .line 326
    move-object/from16 v1, p0

    .line 327
    .line 328
    move-object/from16 v2, p1

    .line 329
    move-object v3, v12

    .line 330
    move-object v4, v13

    .line 331
    move-object v5, v14

    .line 332
    move v6, v15

    .line 333
    .line 334
    move-object/from16 v7, v16

    .line 335
    .line 336
    move/from16 v8, p8

    .line 337
    .line 338
    move/from16 v9, p9

    .line 339
    .line 340
    .line 341
    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/ImageKt$Image$3;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;II)V

    .line 342
    .line 343
    .line 344
    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 345
    :goto_7
    return-void
.end method
