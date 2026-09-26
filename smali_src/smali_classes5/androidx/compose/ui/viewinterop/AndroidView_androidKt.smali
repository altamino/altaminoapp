.class public final Landroidx/compose/ui/viewinterop/AndroidView_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidView.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidView.android.kt\nandroidx/compose/ui/viewinterop/AndroidView_androidKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,185:1\n76#2:186\n76#2:201\n76#2:202\n76#2:203\n76#2:211\n76#2:212\n25#3:187\n25#3:194\n25#3:204\n251#3,10:213\n1057#4,6:188\n1057#4,6:195\n1057#4,6:205\n*S KotlinDebug\n*F\n+ 1 AndroidView.android.kt\nandroidx/compose/ui/viewinterop/AndroidView_androidKt\n*L\n87#1:186\n99#1:201\n100#1:202\n102#1:203\n110#1:211\n111#1:212\n90#1:187\n92#1:194\n104#1:204\n113#1:213,10\n90#1:188,6\n92#1:195,6\n104#1:205,6\n*E\n"
.end annotation


# static fields
.field private static final NoOpUpdate:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroid/view/View;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$NoOpUpdate$1;->INSTANCE:Landroidx/compose/ui/viewinterop/AndroidView_androidKt$NoOpUpdate$1;

    sput-object v0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->NoOpUpdate:Le8/l;

    return-void
.end method

.method public static final a(Le8/l;Landroidx/compose/ui/Modifier;Le8/l;Landroidx/compose/runtime/Composer;II)V
    .locals 17
    .param p0    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/ui/UiComposable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Le8/l<",
            "-",
            "Landroid/content/Context;",
            "+TT;>;",
            "Landroidx/compose/ui/Modifier;",
            "Le8/l<",
            "-TT;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v8, p0

    .line 3
    .line 4
    move/from16 v9, p4

    .line 5
    .line 6
    const-string v0, "factory"

    .line 7
    .line 8
    .line 9
    invoke-static {v8, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v0, -0x6a521d79

    .line 13
    .line 14
    move-object/from16 v1, p3

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 18
    move-result-object v10

    .line 19
    .line 20
    and-int/lit8 v0, p5, 0x1

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    or-int/lit8 v0, v9, 0x6

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_0
    and-int/lit8 v0, v9, 0xe

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    const/4 v0, 0x4

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x2

    .line 39
    :goto_0
    or-int/2addr v0, v9

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move v0, v9

    .line 42
    .line 43
    :goto_1
    and-int/lit8 v1, p5, 0x2

    .line 44
    .line 45
    if-eqz v1, :cond_4

    .line 46
    .line 47
    or-int/lit8 v0, v0, 0x30

    .line 48
    .line 49
    :cond_3
    move-object/from16 v2, p1

    .line 50
    goto :goto_3

    .line 51
    .line 52
    :cond_4
    and-int/lit8 v2, v9, 0x70

    .line 53
    .line 54
    if-nez v2, :cond_3

    .line 55
    .line 56
    move-object/from16 v2, p1

    .line 57
    .line 58
    .line 59
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 60
    move-result v3

    .line 61
    .line 62
    if-eqz v3, :cond_5

    .line 63
    .line 64
    const/16 v3, 0x20

    .line 65
    goto :goto_2

    .line 66
    .line 67
    :cond_5
    const/16 v3, 0x10

    .line 68
    :goto_2
    or-int/2addr v0, v3

    .line 69
    .line 70
    :goto_3
    and-int/lit8 v3, p5, 0x4

    .line 71
    .line 72
    if-eqz v3, :cond_7

    .line 73
    .line 74
    or-int/lit16 v0, v0, 0x180

    .line 75
    .line 76
    :cond_6
    move-object/from16 v4, p2

    .line 77
    goto :goto_5

    .line 78
    .line 79
    :cond_7
    and-int/lit16 v4, v9, 0x380

    .line 80
    .line 81
    if-nez v4, :cond_6

    .line 82
    .line 83
    move-object/from16 v4, p2

    .line 84
    .line 85
    .line 86
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 87
    move-result v5

    .line 88
    .line 89
    if-eqz v5, :cond_8

    .line 90
    .line 91
    const/16 v5, 0x100

    .line 92
    goto :goto_4

    .line 93
    .line 94
    :cond_8
    const/16 v5, 0x80

    .line 95
    :goto_4
    or-int/2addr v0, v5

    .line 96
    .line 97
    :goto_5
    and-int/lit16 v0, v0, 0x2db

    .line 98
    .line 99
    const/16 v5, 0x92

    .line 100
    .line 101
    if-ne v0, v5, :cond_a

    .line 102
    .line 103
    .line 104
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->b()Z

    .line 105
    move-result v0

    .line 106
    .line 107
    if-nez v0, :cond_9

    .line 108
    goto :goto_6

    .line 109
    .line 110
    .line 111
    :cond_9
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->g()V

    .line 112
    move-object v3, v4

    .line 113
    .line 114
    goto/16 :goto_a

    .line 115
    .line 116
    :cond_a
    :goto_6
    if-eqz v1, :cond_b

    .line 117
    .line 118
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 119
    move-object v11, v0

    .line 120
    goto :goto_7

    .line 121
    :cond_b
    move-object v11, v2

    .line 122
    .line 123
    :goto_7
    if-eqz v3, :cond_c

    .line 124
    .line 125
    sget-object v0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->NoOpUpdate:Le8/l;

    .line 126
    move-object v12, v0

    .line 127
    goto :goto_8

    .line 128
    :cond_c
    move-object v12, v4

    .line 129
    .line 130
    .line 131
    :goto_8
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->g()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    .line 135
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 136
    move-result-object v0

    .line 137
    move-object v1, v0

    .line 138
    .line 139
    check-cast v1, Landroid/content/Context;

    .line 140
    .line 141
    .line 142
    const v0, -0x1d58f75c

    .line 143
    .line 144
    .line 145
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 146
    .line 147
    .line 148
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 149
    move-result-object v2

    .line 150
    .line 151
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 155
    move-result-object v4

    .line 156
    .line 157
    if-ne v2, v4, :cond_d

    .line 158
    .line 159
    new-instance v2, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$noOpConnection$1$1;

    .line 160
    .line 161
    .line 162
    invoke-direct {v2}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$noOpConnection$1$1;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    :cond_d
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->Q()V

    .line 169
    .line 170
    check-cast v2, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$noOpConnection$1$1;

    .line 171
    .line 172
    .line 173
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 174
    .line 175
    .line 176
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 177
    move-result-object v4

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 181
    move-result-object v5

    .line 182
    .line 183
    if-ne v4, v5, :cond_e

    .line 184
    .line 185
    new-instance v4, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 186
    .line 187
    .line 188
    invoke-direct {v4}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    :cond_e
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->Q()V

    .line 195
    .line 196
    check-cast v4, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 197
    .line 198
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 199
    .line 200
    .line 201
    invoke-static {v5, v2, v4}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)Landroidx/compose/ui/Modifier;

    .line 202
    move-result-object v2

    .line 203
    .line 204
    .line 205
    invoke-interface {v11, v2}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 206
    move-result-object v2

    .line 207
    .line 208
    sget-object v5, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$modifierWithSemantics$1;->INSTANCE:Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$modifierWithSemantics$1;

    .line 209
    const/4 v6, 0x1

    .line 210
    .line 211
    .line 212
    invoke-static {v2, v6, v5}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLe8/l;)Landroidx/compose/ui/Modifier;

    .line 213
    move-result-object v2

    .line 214
    .line 215
    .line 216
    invoke-static {v10, v2}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 217
    move-result-object v13

    .line 218
    .line 219
    .line 220
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 221
    move-result-object v2

    .line 222
    .line 223
    .line 224
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 225
    move-result-object v2

    .line 226
    move-object v14, v2

    .line 227
    .line 228
    check-cast v14, Landroidx/compose/ui/unit/Density;

    .line 229
    .line 230
    .line 231
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 232
    move-result-object v2

    .line 233
    .line 234
    .line 235
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 236
    move-result-object v2

    .line 237
    move-object v15, v2

    .line 238
    .line 239
    check-cast v15, Landroidx/compose/ui/unit/LayoutDirection;

    .line 240
    const/4 v2, 0x0

    .line 241
    .line 242
    .line 243
    invoke-static {v10, v2}, Landroidx/compose/runtime/ComposablesKt;->d(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/CompositionContext;

    .line 244
    move-result-object v5

    .line 245
    .line 246
    .line 247
    invoke-static {}, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->b()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 248
    move-result-object v6

    .line 249
    .line 250
    .line 251
    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 252
    move-result-object v6

    .line 253
    move-object v7, v6

    .line 254
    .line 255
    check-cast v7, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 256
    .line 257
    .line 258
    invoke-static {v10, v2}, Landroidx/compose/runtime/ComposablesKt;->a(Landroidx/compose/runtime/Composer;I)I

    .line 259
    move-result v2

    .line 260
    .line 261
    .line 262
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 263
    move-result-object v6

    .line 264
    .line 265
    .line 266
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 267
    .line 268
    .line 269
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 270
    move-result-object v0

    .line 271
    .line 272
    .line 273
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 274
    move-result-object v2

    .line 275
    .line 276
    if-ne v0, v2, :cond_f

    .line 277
    .line 278
    new-instance v0, Landroidx/compose/ui/node/Ref;

    .line 279
    .line 280
    .line 281
    invoke-direct {v0}, Landroidx/compose/ui/node/Ref;-><init>()V

    .line 282
    .line 283
    .line 284
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    :cond_f
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->Q()V

    .line 288
    move-object v3, v0

    .line 289
    .line 290
    check-cast v3, Landroidx/compose/ui/node/Ref;

    .line 291
    .line 292
    .line 293
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->i()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 294
    move-result-object v0

    .line 295
    .line 296
    .line 297
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 298
    move-result-object v0

    .line 299
    move-object v2, v0

    .line 300
    .line 301
    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    .line 302
    .line 303
    .line 304
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 305
    move-result-object v0

    .line 306
    .line 307
    .line 308
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 309
    move-result-object v0

    .line 310
    .line 311
    check-cast v0, Landroidx/savedstate/SavedStateRegistryOwner;

    .line 312
    .line 313
    new-instance v8, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;

    .line 314
    move-object v9, v0

    .line 315
    move-object v0, v8

    .line 316
    .line 317
    move-object/from16 p1, v11

    .line 318
    move-object v11, v2

    .line 319
    move-object v2, v5

    .line 320
    move-object v5, v3

    .line 321
    move-object v3, v4

    .line 322
    .line 323
    move-object/from16 v4, p0

    .line 324
    .line 325
    move-object/from16 p2, v5

    .line 326
    move-object v5, v7

    .line 327
    .line 328
    move-object/from16 p3, v6

    .line 329
    .line 330
    move-object/from16 v16, v7

    .line 331
    .line 332
    move-object/from16 v7, p2

    .line 333
    .line 334
    .line 335
    invoke-direct/range {v0 .. v7}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;-><init>(Landroid/content/Context;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;Le8/l;Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/lang/String;Landroidx/compose/ui/node/Ref;)V

    .line 336
    .line 337
    .line 338
    const v0, 0x7076b8d0

    .line 339
    .line 340
    .line 341
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 342
    .line 343
    .line 344
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 345
    move-result-object v0

    .line 346
    .line 347
    instance-of v0, v0, Landroidx/compose/ui/node/UiApplier;

    .line 348
    .line 349
    if-nez v0, :cond_10

    .line 350
    .line 351
    .line 352
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 353
    .line 354
    .line 355
    :cond_10
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->v()V

    .line 356
    .line 357
    .line 358
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->r()Z

    .line 359
    move-result v0

    .line 360
    .line 361
    if-eqz v0, :cond_11

    .line 362
    .line 363
    new-instance v0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$$inlined$ComposeNode$1;

    .line 364
    .line 365
    .line 366
    invoke-direct {v0, v8}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$$inlined$ComposeNode$1;-><init>(Le8/a;)V

    .line 367
    .line 368
    .line 369
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 370
    goto :goto_9

    .line 371
    .line 372
    .line 373
    :cond_11
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->c()V

    .line 374
    .line 375
    .line 376
    :goto_9
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 377
    move-result-object v0

    .line 378
    .line 379
    new-instance v1, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$2$1;

    .line 380
    .line 381
    move-object/from16 v2, p2

    .line 382
    .line 383
    .line 384
    invoke-direct {v1, v2}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$2$1;-><init>(Landroidx/compose/ui/node/Ref;)V

    .line 385
    .line 386
    .line 387
    invoke-static {v0, v13, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 388
    .line 389
    new-instance v1, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$2$2;

    .line 390
    .line 391
    .line 392
    invoke-direct {v1, v2}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$2$2;-><init>(Landroidx/compose/ui/node/Ref;)V

    .line 393
    .line 394
    .line 395
    invoke-static {v0, v14, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 396
    .line 397
    new-instance v1, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$2$3;

    .line 398
    .line 399
    .line 400
    invoke-direct {v1, v2}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$2$3;-><init>(Landroidx/compose/ui/node/Ref;)V

    .line 401
    .line 402
    .line 403
    invoke-static {v0, v11, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 404
    .line 405
    new-instance v1, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$2$4;

    .line 406
    .line 407
    .line 408
    invoke-direct {v1, v2}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$2$4;-><init>(Landroidx/compose/ui/node/Ref;)V

    .line 409
    .line 410
    .line 411
    invoke-static {v0, v9, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 412
    .line 413
    new-instance v1, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$2$5;

    .line 414
    .line 415
    .line 416
    invoke-direct {v1, v2}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$2$5;-><init>(Landroidx/compose/ui/node/Ref;)V

    .line 417
    .line 418
    .line 419
    invoke-static {v0, v12, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 420
    .line 421
    new-instance v1, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$2$6;

    .line 422
    .line 423
    .line 424
    invoke-direct {v1, v2}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$2$6;-><init>(Landroidx/compose/ui/node/Ref;)V

    .line 425
    .line 426
    .line 427
    invoke-static {v0, v15, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 428
    .line 429
    .line 430
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->d()V

    .line 431
    .line 432
    .line 433
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->Q()V

    .line 434
    .line 435
    move-object/from16 v6, v16

    .line 436
    .line 437
    if-eqz v6, :cond_12

    .line 438
    .line 439
    new-instance v0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3;

    .line 440
    .line 441
    move-object/from16 v1, p3

    .line 442
    .line 443
    .line 444
    invoke-direct {v0, v6, v1, v2}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3;-><init>(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/lang/String;Landroidx/compose/ui/node/Ref;)V

    .line 445
    .line 446
    const/16 v2, 0x8

    .line 447
    .line 448
    .line 449
    invoke-static {v6, v1, v0, v10, v2}, Landroidx/compose/runtime/EffectsKt;->b(Ljava/lang/Object;Ljava/lang/Object;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 450
    .line 451
    :cond_12
    move-object/from16 v2, p1

    .line 452
    move-object v3, v12

    .line 453
    .line 454
    .line 455
    :goto_a
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 456
    move-result-object v6

    .line 457
    .line 458
    if-nez v6, :cond_13

    .line 459
    goto :goto_b

    .line 460
    .line 461
    :cond_13
    new-instance v7, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$4;

    .line 462
    move-object v0, v7

    .line 463
    .line 464
    move-object/from16 v1, p0

    .line 465
    .line 466
    move/from16 v4, p4

    .line 467
    .line 468
    move/from16 v5, p5

    .line 469
    .line 470
    .line 471
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$4;-><init>(Le8/l;Landroidx/compose/ui/Modifier;Le8/l;II)V

    .line 472
    .line 473
    .line 474
    invoke-interface {v6, v7}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 475
    :goto_b
    return-void
.end method

.method public static final b()Le8/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/l<",
            "Landroid/view/View;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->NoOpUpdate:Le8/l;

    return-object v0
.end method
