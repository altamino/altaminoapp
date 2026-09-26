.class public final Landroidx/compose/ui/window/AndroidDialog_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidDialog.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidDialog.android.kt\nandroidx/compose/ui/window/AndroidDialog_androidKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 6 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,411:1\n76#2:412\n76#2:413\n76#2:414\n76#2:424\n50#3:415\n49#3:416\n460#3,16:436\n1057#4,6:417\n75#5:423\n76#5,11:425\n89#5:452\n76#6:453\n*S KotlinDebug\n*F\n+ 1 AndroidDialog.android.kt\nandroidx/compose/ui/window/AndroidDialog_androidKt\n*L\n142#1:412\n143#1:413\n144#1:414\n400#1:424\n148#1:415\n148#1:416\n400#1:436,16\n148#1:417,6\n400#1:423\n400#1:425,11\n400#1:452\n146#1:453\n*E\n"
.end annotation


# direct methods
.method public static final a(Le8/a;Landroidx/compose/ui/window/DialogProperties;Le8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 19
    .param p0    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/window/DialogProperties;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/window/DialogProperties;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v7, p0

    .line 3
    .line 4
    move-object/from16 v8, p2

    .line 5
    .line 6
    move/from16 v9, p4

    .line 7
    .line 8
    const-string v0, "onDismissRequest"

    .line 9
    .line 10
    .line 11
    invoke-static {v7, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v0, "content"

    .line 14
    .line 15
    .line 16
    invoke-static {v8, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const v0, -0x792b3ec6

    .line 20
    .line 21
    move-object/from16 v1, p3

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 25
    move-result-object v6

    .line 26
    .line 27
    and-int/lit8 v0, p5, 0x1

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    or-int/lit8 v0, v9, 0x6

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :cond_0
    and-int/lit8 v0, v9, 0xe

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    const/4 v0, 0x4

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x2

    .line 46
    :goto_0
    or-int/2addr v0, v9

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v0, v9

    .line 49
    .line 50
    :goto_1
    and-int/lit8 v1, v9, 0x70

    .line 51
    .line 52
    if-nez v1, :cond_5

    .line 53
    .line 54
    and-int/lit8 v1, p5, 0x2

    .line 55
    .line 56
    if-nez v1, :cond_3

    .line 57
    .line 58
    move-object/from16 v1, p1

    .line 59
    .line 60
    .line 61
    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 62
    move-result v2

    .line 63
    .line 64
    if-eqz v2, :cond_4

    .line 65
    .line 66
    const/16 v2, 0x20

    .line 67
    goto :goto_2

    .line 68
    .line 69
    :cond_3
    move-object/from16 v1, p1

    .line 70
    .line 71
    :cond_4
    const/16 v2, 0x10

    .line 72
    :goto_2
    or-int/2addr v0, v2

    .line 73
    goto :goto_3

    .line 74
    .line 75
    :cond_5
    move-object/from16 v1, p1

    .line 76
    .line 77
    :goto_3
    and-int/lit8 v2, p5, 0x4

    .line 78
    .line 79
    if-eqz v2, :cond_6

    .line 80
    .line 81
    or-int/lit16 v0, v0, 0x180

    .line 82
    goto :goto_5

    .line 83
    .line 84
    :cond_6
    and-int/lit16 v2, v9, 0x380

    .line 85
    .line 86
    if-nez v2, :cond_8

    .line 87
    .line 88
    .line 89
    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 90
    move-result v2

    .line 91
    .line 92
    if-eqz v2, :cond_7

    .line 93
    .line 94
    const/16 v2, 0x100

    .line 95
    goto :goto_4

    .line 96
    .line 97
    :cond_7
    const/16 v2, 0x80

    .line 98
    :goto_4
    or-int/2addr v0, v2

    .line 99
    .line 100
    :cond_8
    :goto_5
    and-int/lit16 v2, v0, 0x2db

    .line 101
    .line 102
    const/16 v3, 0x92

    .line 103
    .line 104
    if-ne v2, v3, :cond_a

    .line 105
    .line 106
    .line 107
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->b()Z

    .line 108
    move-result v2

    .line 109
    .line 110
    if-nez v2, :cond_9

    .line 111
    goto :goto_6

    .line 112
    .line 113
    .line 114
    :cond_9
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->g()V

    .line 115
    move-object v2, v1

    .line 116
    move-object v15, v6

    .line 117
    .line 118
    goto/16 :goto_c

    .line 119
    .line 120
    .line 121
    :cond_a
    :goto_6
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->J()V

    .line 122
    .line 123
    and-int/lit8 v2, v9, 0x1

    .line 124
    .line 125
    if-eqz v2, :cond_d

    .line 126
    .line 127
    .line 128
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->h()Z

    .line 129
    move-result v2

    .line 130
    .line 131
    if-eqz v2, :cond_b

    .line 132
    goto :goto_8

    .line 133
    .line 134
    .line 135
    :cond_b
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->g()V

    .line 136
    .line 137
    and-int/lit8 v2, p5, 0x2

    .line 138
    .line 139
    if-eqz v2, :cond_c

    .line 140
    .line 141
    :goto_7
    and-int/lit8 v0, v0, -0x71

    .line 142
    :cond_c
    move-object v5, v1

    .line 143
    goto :goto_9

    .line 144
    .line 145
    :cond_d
    :goto_8
    and-int/lit8 v2, p5, 0x2

    .line 146
    .line 147
    if-eqz v2, :cond_c

    .line 148
    .line 149
    new-instance v1, Landroidx/compose/ui/window/DialogProperties;

    .line 150
    const/4 v11, 0x0

    .line 151
    const/4 v12, 0x0

    .line 152
    const/4 v13, 0x0

    .line 153
    const/4 v14, 0x7

    .line 154
    const/4 v15, 0x0

    .line 155
    move-object v10, v1

    .line 156
    .line 157
    .line 158
    invoke-direct/range {v10 .. v15}, Landroidx/compose/ui/window/DialogProperties;-><init>(ZZLandroidx/compose/ui/window/SecureFlagPolicy;ILkotlin/jvm/internal/k;)V

    .line 159
    goto :goto_7

    .line 160
    .line 161
    .line 162
    :goto_9
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->A()V

    .line 163
    .line 164
    .line 165
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->k()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 166
    move-result-object v1

    .line 167
    .line 168
    .line 169
    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 170
    move-result-object v1

    .line 171
    move-object v3, v1

    .line 172
    .line 173
    check-cast v3, Landroid/view/View;

    .line 174
    .line 175
    .line 176
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 177
    move-result-object v1

    .line 178
    .line 179
    .line 180
    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 181
    move-result-object v1

    .line 182
    move-object v4, v1

    .line 183
    .line 184
    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 185
    .line 186
    .line 187
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 188
    move-result-object v1

    .line 189
    .line 190
    .line 191
    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 192
    move-result-object v1

    .line 193
    move-object v2, v1

    .line 194
    .line 195
    check-cast v2, Landroidx/compose/ui/unit/LayoutDirection;

    .line 196
    const/4 v1, 0x0

    .line 197
    .line 198
    .line 199
    invoke-static {v6, v1}, Landroidx/compose/runtime/ComposablesKt;->d(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/CompositionContext;

    .line 200
    move-result-object v15

    .line 201
    .line 202
    shr-int/lit8 v0, v0, 0x6

    .line 203
    .line 204
    and-int/lit8 v0, v0, 0xe

    .line 205
    .line 206
    .line 207
    invoke-static {v8, v6, v0}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 208
    move-result-object v0

    .line 209
    .line 210
    new-array v10, v1, [Ljava/lang/Object;

    .line 211
    const/4 v11, 0x0

    .line 212
    const/4 v12, 0x0

    .line 213
    .line 214
    sget-object v13, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$dialogId$1;->INSTANCE:Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$dialogId$1;

    .line 215
    .line 216
    const/16 v16, 0xc08

    .line 217
    .line 218
    const/16 v17, 0x6

    .line 219
    move-object v14, v6

    .line 220
    .line 221
    move-object/from16 v18, v15

    .line 222
    .line 223
    move/from16 v15, v16

    .line 224
    .line 225
    move/from16 v16, v17

    .line 226
    .line 227
    .line 228
    invoke-static/range {v10 .. v16}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->b([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Le8/a;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    .line 229
    move-result-object v10

    .line 230
    .line 231
    check-cast v10, Ljava/util/UUID;

    .line 232
    .line 233
    .line 234
    const v11, 0x1e7b2b64

    .line 235
    .line 236
    .line 237
    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 238
    .line 239
    .line 240
    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 241
    move-result v11

    .line 242
    .line 243
    .line 244
    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 245
    move-result v12

    .line 246
    or-int/2addr v11, v12

    .line 247
    .line 248
    .line 249
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 250
    move-result-object v12

    .line 251
    .line 252
    if-nez v11, :cond_f

    .line 253
    .line 254
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 258
    move-result-object v11

    .line 259
    .line 260
    if-ne v12, v11, :cond_e

    .line 261
    goto :goto_a

    .line 262
    :cond_e
    move-object v14, v2

    .line 263
    move-object v13, v5

    .line 264
    move-object v15, v6

    .line 265
    goto :goto_b

    .line 266
    .line 267
    :cond_f
    :goto_a
    new-instance v12, Landroidx/compose/ui/window/DialogWrapper;

    .line 268
    .line 269
    const-string v11, "dialogId"

    .line 270
    .line 271
    .line 272
    invoke-static {v10, v11}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    move-object v11, v0

    .line 274
    move-object v0, v12

    .line 275
    move v13, v1

    .line 276
    .line 277
    move-object/from16 v1, p0

    .line 278
    move-object v14, v2

    .line 279
    move-object v2, v5

    .line 280
    move-object v15, v4

    .line 281
    move-object v4, v14

    .line 282
    move-object v13, v5

    .line 283
    move-object v5, v15

    .line 284
    move-object v15, v6

    .line 285
    move-object v6, v10

    .line 286
    .line 287
    .line 288
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/window/DialogWrapper;-><init>(Le8/a;Landroidx/compose/ui/window/DialogProperties;Landroid/view/View;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;Ljava/util/UUID;)V

    .line 289
    .line 290
    new-instance v0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$dialog$1$1$1;

    .line 291
    .line 292
    .line 293
    invoke-direct {v0, v11}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$dialog$1$1$1;-><init>(Landroidx/compose/runtime/State;)V

    .line 294
    .line 295
    .line 296
    const v1, 0x1d1a4619

    .line 297
    const/4 v2, 0x1

    .line 298
    .line 299
    .line 300
    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->c(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 301
    move-result-object v0

    .line 302
    .line 303
    move-object/from16 v1, v18

    .line 304
    .line 305
    .line 306
    invoke-virtual {v12, v1, v0}, Landroidx/compose/ui/window/DialogWrapper;->c(Landroidx/compose/runtime/CompositionContext;Le8/p;)V

    .line 307
    .line 308
    .line 309
    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    :goto_b
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->Q()V

    .line 313
    .line 314
    check-cast v12, Landroidx/compose/ui/window/DialogWrapper;

    .line 315
    .line 316
    new-instance v0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$1;

    .line 317
    .line 318
    .line 319
    invoke-direct {v0, v12}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$1;-><init>(Landroidx/compose/ui/window/DialogWrapper;)V

    .line 320
    .line 321
    const/16 v1, 0x8

    .line 322
    .line 323
    .line 324
    invoke-static {v12, v0, v15, v1}, Landroidx/compose/runtime/EffectsKt;->a(Ljava/lang/Object;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 325
    .line 326
    new-instance v0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2;

    .line 327
    .line 328
    .line 329
    invoke-direct {v0, v12, v7, v13, v14}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2;-><init>(Landroidx/compose/ui/window/DialogWrapper;Le8/a;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 330
    const/4 v1, 0x0

    .line 331
    .line 332
    .line 333
    invoke-static {v0, v15, v1}, Landroidx/compose/runtime/EffectsKt;->h(Le8/a;Landroidx/compose/runtime/Composer;I)V

    .line 334
    move-object v2, v13

    .line 335
    .line 336
    .line 337
    :goto_c
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 338
    move-result-object v6

    .line 339
    .line 340
    if-nez v6, :cond_10

    .line 341
    goto :goto_d

    .line 342
    .line 343
    :cond_10
    new-instance v10, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;

    .line 344
    move-object v0, v10

    .line 345
    .line 346
    move-object/from16 v1, p0

    .line 347
    .line 348
    move-object/from16 v3, p2

    .line 349
    .line 350
    move/from16 v4, p4

    .line 351
    .line 352
    move/from16 v5, p5

    .line 353
    .line 354
    .line 355
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;-><init>(Le8/a;Landroidx/compose/ui/window/DialogProperties;Le8/p;II)V

    .line 356
    .line 357
    .line 358
    invoke-interface {v6, v10}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 359
    :goto_d
    return-void
.end method

.method private static final b(Landroidx/compose/runtime/State;)Le8/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;>;)",
            "Le8/p<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    check-cast p0, Le8/p;

    .line 7
    return-object p0
.end method

.method private static final c(Landroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 9
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, -0x4634f888

    .line 4
    .line 5
    .line 6
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    and-int/lit8 v0, p4, 0x1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    or-int/lit8 v1, p3, 0x6

    .line 14
    goto :goto_1

    .line 15
    .line 16
    :cond_0
    and-int/lit8 v1, p3, 0xe

    .line 17
    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    const/4 v1, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v1, 0x2

    .line 28
    :goto_0
    or-int/2addr v1, p3

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    move v1, p3

    .line 31
    .line 32
    :goto_1
    and-int/lit8 v2, p4, 0x2

    .line 33
    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    or-int/lit8 v1, v1, 0x30

    .line 37
    goto :goto_3

    .line 38
    .line 39
    :cond_3
    and-int/lit8 v2, p3, 0x70

    .line 40
    .line 41
    if-nez v2, :cond_5

    .line 42
    .line 43
    .line 44
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 45
    move-result v2

    .line 46
    .line 47
    if-eqz v2, :cond_4

    .line 48
    .line 49
    const/16 v2, 0x20

    .line 50
    goto :goto_2

    .line 51
    .line 52
    :cond_4
    const/16 v2, 0x10

    .line 53
    :goto_2
    or-int/2addr v1, v2

    .line 54
    .line 55
    :cond_5
    :goto_3
    and-int/lit8 v2, v1, 0x5b

    .line 56
    .line 57
    const/16 v3, 0x12

    .line 58
    .line 59
    if-ne v2, v3, :cond_7

    .line 60
    .line 61
    .line 62
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->b()Z

    .line 63
    move-result v2

    .line 64
    .line 65
    if-nez v2, :cond_6

    .line 66
    goto :goto_4

    .line 67
    .line 68
    .line 69
    :cond_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->g()V

    .line 70
    .line 71
    goto/16 :goto_6

    .line 72
    .line 73
    :cond_7
    :goto_4
    if-eqz v0, :cond_8

    .line 74
    .line 75
    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 76
    .line 77
    :cond_8
    sget-object v0, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1;->INSTANCE:Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1;

    .line 78
    .line 79
    shr-int/lit8 v2, v1, 0x3

    .line 80
    .line 81
    and-int/lit8 v2, v2, 0xe

    .line 82
    .line 83
    shl-int/lit8 v1, v1, 0x3

    .line 84
    .line 85
    and-int/lit8 v1, v1, 0x70

    .line 86
    or-int/2addr v1, v2

    .line 87
    .line 88
    .line 89
    const v2, -0x4ee9b9da

    .line 90
    .line 91
    .line 92
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 93
    .line 94
    .line 95
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 96
    move-result-object v2

    .line 97
    .line 98
    .line 99
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 100
    move-result-object v2

    .line 101
    .line 102
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 103
    .line 104
    .line 105
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 106
    move-result-object v3

    .line 107
    .line 108
    .line 109
    invoke-interface {p2, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 110
    move-result-object v3

    .line 111
    .line 112
    check-cast v3, Landroidx/compose/ui/unit/LayoutDirection;

    .line 113
    .line 114
    .line 115
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 116
    move-result-object v4

    .line 117
    .line 118
    .line 119
    invoke-interface {p2, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 120
    move-result-object v4

    .line 121
    .line 122
    check-cast v4, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 123
    .line 124
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 128
    move-result-object v6

    .line 129
    .line 130
    .line 131
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 132
    move-result-object v7

    .line 133
    .line 134
    shl-int/lit8 v1, v1, 0x9

    .line 135
    .line 136
    and-int/lit16 v1, v1, 0x1c00

    .line 137
    .line 138
    or-int/lit8 v1, v1, 0x6

    .line 139
    .line 140
    .line 141
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 142
    move-result-object v8

    .line 143
    .line 144
    instance-of v8, v8, Landroidx/compose/runtime/Applier;

    .line 145
    .line 146
    if-nez v8, :cond_9

    .line 147
    .line 148
    .line 149
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 150
    .line 151
    .line 152
    :cond_9
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->e()V

    .line 153
    .line 154
    .line 155
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->r()Z

    .line 156
    move-result v8

    .line 157
    .line 158
    if-eqz v8, :cond_a

    .line 159
    .line 160
    .line 161
    invoke-interface {p2, v6}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 162
    goto :goto_5

    .line 163
    .line 164
    .line 165
    :cond_a
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->c()V

    .line 166
    .line 167
    .line 168
    :goto_5
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->L()V

    .line 169
    .line 170
    .line 171
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 172
    move-result-object v6

    .line 173
    .line 174
    .line 175
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 176
    move-result-object v8

    .line 177
    .line 178
    .line 179
    invoke-static {v6, v0, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 183
    move-result-object v0

    .line 184
    .line 185
    .line 186
    invoke-static {v6, v2, v0}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 190
    move-result-object v0

    .line 191
    .line 192
    .line 193
    invoke-static {v6, v3, v0}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 197
    move-result-object v0

    .line 198
    .line 199
    .line 200
    invoke-static {v6, v4, v0}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 201
    .line 202
    .line 203
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->o()V

    .line 204
    .line 205
    .line 206
    invoke-static {p2}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 207
    move-result-object v0

    .line 208
    .line 209
    .line 210
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 211
    move-result-object v0

    .line 212
    .line 213
    shr-int/lit8 v2, v1, 0x3

    .line 214
    .line 215
    and-int/lit8 v2, v2, 0x70

    .line 216
    .line 217
    .line 218
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    move-result-object v2

    .line 220
    .line 221
    .line 222
    invoke-interface {v7, v0, p2, v2}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    const v0, 0x7ab4aae9

    .line 226
    .line 227
    .line 228
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 229
    .line 230
    shr-int/lit8 v0, v1, 0x9

    .line 231
    .line 232
    and-int/lit8 v0, v0, 0xe

    .line 233
    .line 234
    .line 235
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    move-result-object v0

    .line 237
    .line 238
    .line 239
    invoke-interface {p1, p2, v0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 243
    .line 244
    .line 245
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->d()V

    .line 246
    .line 247
    .line 248
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 249
    .line 250
    .line 251
    :goto_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 252
    move-result-object p2

    .line 253
    .line 254
    if-nez p2, :cond_b

    .line 255
    goto :goto_7

    .line 256
    .line 257
    :cond_b
    new-instance v0, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$2;

    .line 258
    .line 259
    .line 260
    invoke-direct {v0, p0, p1, p3, p4}, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$2;-><init>(Landroidx/compose/ui/Modifier;Le8/p;II)V

    .line 261
    .line 262
    .line 263
    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 264
    :goto_7
    return-void
.end method

.method public static final synthetic d(Landroidx/compose/runtime/State;)Le8/p;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/ui/window/AndroidDialog_androidKt;->b(Landroidx/compose/runtime/State;)Le8/p;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Landroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/window/AndroidDialog_androidKt;->c(Landroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/runtime/Composer;II)V

    .line 4
    return-void
.end method
