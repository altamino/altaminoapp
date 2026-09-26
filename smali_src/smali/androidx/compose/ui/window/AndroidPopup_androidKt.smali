.class public final Landroidx/compose/ui/window/AndroidPopup_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidPopup.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidPopup.android.kt\nandroidx/compose/ui/window/AndroidPopup_androidKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 6 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,820:1\n50#2:821\n49#2:822\n25#2:833\n460#2,16:853\n460#2,16:883\n1057#3,6:823\n1057#3,6:834\n76#4:829\n76#4:830\n76#4:831\n76#4:832\n76#4:841\n76#4:871\n75#5:840\n76#5,11:842\n89#5:869\n75#5:870\n76#5,11:872\n89#5:899\n76#6:900\n*S KotlinDebug\n*F\n+ 1 AndroidPopup.android.kt\nandroidx/compose/ui/window/AndroidPopup_androidKt\n*L\n192#1:821\n192#1:822\n233#1:833\n307#1:853,16\n339#1:883,16\n192#1:823,6\n233#1:834,6\n226#1:829\n227#1:830\n228#1:831\n229#1:832\n307#1:841\n339#1:871\n307#1:840\n307#1:842,11\n307#1:869\n339#1:870\n339#1:872,11\n339#1:899\n231#1:900\n*E\n"
.end annotation


# static fields
.field private static final LocalPopupTestTag:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$LocalPopupTestTag$1;->INSTANCE:Landroidx/compose/ui/window/AndroidPopup_androidKt$LocalPopupTestTag$1;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-static {v2, v0, v1, v2}, Landroidx/compose/runtime/CompositionLocalKt;->d(Landroidx/compose/runtime/SnapshotMutationPolicy;Le8/a;ILjava/lang/Object;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sput-object v0, Landroidx/compose/ui/window/AndroidPopup_androidKt;->LocalPopupTestTag:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 11
    return-void
.end method

.method public static final a(Landroidx/compose/ui/window/PopupPositionProvider;Le8/a;Landroidx/compose/ui/window/PopupProperties;Le8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 27
    .param p0    # Landroidx/compose/ui/window/PopupPositionProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/window/PopupProperties;
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
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/window/PopupPositionProvider;",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/window/PopupProperties;",
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
    move-object/from16 v11, p0

    .line 3
    .line 4
    move-object/from16 v12, p3

    .line 5
    .line 6
    move/from16 v13, p5

    .line 7
    .line 8
    const-string v0, "popupPositionProvider"

    .line 9
    .line 10
    .line 11
    invoke-static {v11, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v0, "content"

    .line 14
    .line 15
    .line 16
    invoke-static {v12, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const v0, -0x317c909c

    .line 20
    .line 21
    move-object/from16 v1, p4

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 25
    move-result-object v14

    .line 26
    .line 27
    and-int/lit8 v0, p6, 0x1

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    or-int/lit8 v0, v13, 0x6

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :cond_0
    and-int/lit8 v0, v13, 0xe

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-interface {v14, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    or-int/2addr v0, v13

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v0, v13

    .line 49
    .line 50
    :goto_1
    and-int/lit8 v1, p6, 0x2

    .line 51
    .line 52
    if-eqz v1, :cond_4

    .line 53
    .line 54
    or-int/lit8 v0, v0, 0x30

    .line 55
    .line 56
    :cond_3
    move-object/from16 v2, p1

    .line 57
    goto :goto_3

    .line 58
    .line 59
    :cond_4
    and-int/lit8 v2, v13, 0x70

    .line 60
    .line 61
    if-nez v2, :cond_3

    .line 62
    .line 63
    move-object/from16 v2, p1

    .line 64
    .line 65
    .line 66
    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 67
    move-result v3

    .line 68
    .line 69
    if-eqz v3, :cond_5

    .line 70
    .line 71
    const/16 v3, 0x20

    .line 72
    goto :goto_2

    .line 73
    .line 74
    :cond_5
    const/16 v3, 0x10

    .line 75
    :goto_2
    or-int/2addr v0, v3

    .line 76
    .line 77
    :goto_3
    and-int/lit16 v3, v13, 0x380

    .line 78
    .line 79
    if-nez v3, :cond_8

    .line 80
    .line 81
    and-int/lit8 v3, p6, 0x4

    .line 82
    .line 83
    if-nez v3, :cond_6

    .line 84
    .line 85
    move-object/from16 v3, p2

    .line 86
    .line 87
    .line 88
    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 89
    move-result v4

    .line 90
    .line 91
    if-eqz v4, :cond_7

    .line 92
    .line 93
    const/16 v4, 0x100

    .line 94
    goto :goto_4

    .line 95
    .line 96
    :cond_6
    move-object/from16 v3, p2

    .line 97
    .line 98
    :cond_7
    const/16 v4, 0x80

    .line 99
    :goto_4
    or-int/2addr v0, v4

    .line 100
    goto :goto_5

    .line 101
    .line 102
    :cond_8
    move-object/from16 v3, p2

    .line 103
    .line 104
    :goto_5
    and-int/lit8 v4, p6, 0x8

    .line 105
    .line 106
    if-eqz v4, :cond_9

    .line 107
    .line 108
    or-int/lit16 v0, v0, 0xc00

    .line 109
    goto :goto_7

    .line 110
    .line 111
    :cond_9
    and-int/lit16 v4, v13, 0x1c00

    .line 112
    .line 113
    if-nez v4, :cond_b

    .line 114
    .line 115
    .line 116
    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 117
    move-result v4

    .line 118
    .line 119
    if-eqz v4, :cond_a

    .line 120
    .line 121
    const/16 v4, 0x800

    .line 122
    goto :goto_6

    .line 123
    .line 124
    :cond_a
    const/16 v4, 0x400

    .line 125
    :goto_6
    or-int/2addr v0, v4

    .line 126
    .line 127
    :cond_b
    :goto_7
    and-int/lit16 v4, v0, 0x16db

    .line 128
    .line 129
    const/16 v5, 0x492

    .line 130
    .line 131
    if-ne v4, v5, :cond_d

    .line 132
    .line 133
    .line 134
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->b()Z

    .line 135
    move-result v4

    .line 136
    .line 137
    if-nez v4, :cond_c

    .line 138
    goto :goto_8

    .line 139
    .line 140
    .line 141
    :cond_c
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->g()V

    .line 142
    .line 143
    goto/16 :goto_d

    .line 144
    .line 145
    .line 146
    :cond_d
    :goto_8
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->J()V

    .line 147
    .line 148
    and-int/lit8 v4, v13, 0x1

    .line 149
    .line 150
    if-eqz v4, :cond_10

    .line 151
    .line 152
    .line 153
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->h()Z

    .line 154
    move-result v4

    .line 155
    .line 156
    if-eqz v4, :cond_e

    .line 157
    goto :goto_9

    .line 158
    .line 159
    .line 160
    :cond_e
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->g()V

    .line 161
    .line 162
    and-int/lit8 v1, p6, 0x4

    .line 163
    .line 164
    if-eqz v1, :cond_f

    .line 165
    .line 166
    and-int/lit16 v0, v0, -0x381

    .line 167
    .line 168
    :cond_f
    move/from16 v18, v0

    .line 169
    .line 170
    move-object/from16 v16, v2

    .line 171
    .line 172
    move-object/from16 v17, v3

    .line 173
    goto :goto_a

    .line 174
    .line 175
    :cond_10
    :goto_9
    if-eqz v1, :cond_11

    .line 176
    const/4 v2, 0x0

    .line 177
    .line 178
    :cond_11
    and-int/lit8 v1, p6, 0x4

    .line 179
    .line 180
    if-eqz v1, :cond_f

    .line 181
    .line 182
    new-instance v1, Landroidx/compose/ui/window/PopupProperties;

    .line 183
    .line 184
    const/16 v17, 0x0

    .line 185
    .line 186
    const/16 v18, 0x0

    .line 187
    .line 188
    const/16 v19, 0x0

    .line 189
    .line 190
    const/16 v20, 0x0

    .line 191
    .line 192
    const/16 v21, 0x0

    .line 193
    .line 194
    const/16 v22, 0x0

    .line 195
    .line 196
    const/16 v23, 0x3f

    .line 197
    .line 198
    const/16 v24, 0x0

    .line 199
    .line 200
    move-object/from16 v16, v1

    .line 201
    .line 202
    .line 203
    invoke-direct/range {v16 .. v24}, Landroidx/compose/ui/window/PopupProperties;-><init>(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZILkotlin/jvm/internal/k;)V

    .line 204
    .line 205
    and-int/lit16 v0, v0, -0x381

    .line 206
    .line 207
    move/from16 v18, v0

    .line 208
    .line 209
    move-object/from16 v17, v1

    .line 210
    .line 211
    move-object/from16 v16, v2

    .line 212
    .line 213
    .line 214
    :goto_a
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->A()V

    .line 215
    .line 216
    .line 217
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->k()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 218
    move-result-object v0

    .line 219
    .line 220
    .line 221
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 222
    move-result-object v0

    .line 223
    move-object v8, v0

    .line 224
    .line 225
    check-cast v8, Landroid/view/View;

    .line 226
    .line 227
    .line 228
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 229
    move-result-object v0

    .line 230
    .line 231
    .line 232
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 233
    move-result-object v0

    .line 234
    move-object v9, v0

    .line 235
    .line 236
    check-cast v9, Landroidx/compose/ui/unit/Density;

    .line 237
    .line 238
    sget-object v0, Landroidx/compose/ui/window/AndroidPopup_androidKt;->LocalPopupTestTag:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 239
    .line 240
    .line 241
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 242
    move-result-object v0

    .line 243
    .line 244
    move-object/from16 v19, v0

    .line 245
    .line 246
    check-cast v19, Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 250
    move-result-object v0

    .line 251
    .line 252
    .line 253
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 254
    move-result-object v0

    .line 255
    move-object v10, v0

    .line 256
    .line 257
    check-cast v10, Landroidx/compose/ui/unit/LayoutDirection;

    .line 258
    const/4 v0, 0x0

    .line 259
    .line 260
    .line 261
    invoke-static {v14, v0}, Landroidx/compose/runtime/ComposablesKt;->d(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/CompositionContext;

    .line 262
    move-result-object v7

    .line 263
    .line 264
    shr-int/lit8 v1, v18, 0x9

    .line 265
    .line 266
    and-int/lit8 v1, v1, 0xe

    .line 267
    .line 268
    .line 269
    invoke-static {v12, v14, v1}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 270
    move-result-object v6

    .line 271
    .line 272
    new-array v1, v0, [Ljava/lang/Object;

    .line 273
    const/4 v2, 0x0

    .line 274
    const/4 v3, 0x0

    .line 275
    .line 276
    sget-object v4, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupId$1;->INSTANCE:Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupId$1;

    .line 277
    .line 278
    const/16 v20, 0xc08

    .line 279
    .line 280
    const/16 v21, 0x6

    .line 281
    move-object v5, v14

    .line 282
    move-object v15, v6

    .line 283
    .line 284
    move/from16 v6, v20

    .line 285
    .line 286
    move-object/from16 v25, v7

    .line 287
    .line 288
    move/from16 v7, v21

    .line 289
    .line 290
    .line 291
    invoke-static/range {v1 .. v7}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->b([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Le8/a;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    .line 292
    move-result-object v1

    .line 293
    move-object v7, v1

    .line 294
    .line 295
    check-cast v7, Ljava/util/UUID;

    .line 296
    .line 297
    .line 298
    const v1, -0x1d58f75c

    .line 299
    .line 300
    .line 301
    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 302
    .line 303
    .line 304
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 305
    move-result-object v1

    .line 306
    .line 307
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 311
    move-result-object v2

    .line 312
    .line 313
    if-ne v1, v2, :cond_12

    .line 314
    .line 315
    new-instance v6, Landroidx/compose/ui/window/PopupLayout;

    .line 316
    .line 317
    const-string v1, "popupId"

    .line 318
    .line 319
    .line 320
    invoke-static {v7, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    .line 322
    const/16 v20, 0x0

    .line 323
    .line 324
    const/16 v21, 0x80

    .line 325
    .line 326
    const/16 v22, 0x0

    .line 327
    move v5, v0

    .line 328
    move-object v0, v6

    .line 329
    .line 330
    move-object/from16 v1, v16

    .line 331
    .line 332
    move-object/from16 v2, v17

    .line 333
    .line 334
    move-object/from16 v3, v19

    .line 335
    move-object v4, v8

    .line 336
    move v8, v5

    .line 337
    move-object v5, v9

    .line 338
    move-object v9, v6

    .line 339
    .line 340
    move-object/from16 v6, p0

    .line 341
    .line 342
    move-object/from16 v8, v20

    .line 343
    .line 344
    move-object/from16 v26, v9

    .line 345
    .line 346
    move/from16 v9, v21

    .line 347
    .line 348
    move-object/from16 p1, v10

    .line 349
    .line 350
    move-object/from16 v10, v22

    .line 351
    .line 352
    .line 353
    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/window/PopupLayout;-><init>(Le8/a;Landroidx/compose/ui/window/PopupProperties;Ljava/lang/String;Landroid/view/View;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/window/PopupPositionProvider;Ljava/util/UUID;Landroidx/compose/ui/window/PopupLayoutHelper;ILkotlin/jvm/internal/k;)V

    .line 354
    .line 355
    new-instance v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupLayout$1$1$1;

    .line 356
    .line 357
    move-object/from16 v1, v26

    .line 358
    .line 359
    .line 360
    invoke-direct {v0, v1, v15}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupLayout$1$1$1;-><init>(Landroidx/compose/ui/window/PopupLayout;Landroidx/compose/runtime/State;)V

    .line 361
    .line 362
    .line 363
    const v2, 0x4da88f2f    # 3.53494496E8f

    .line 364
    const/4 v3, 0x1

    .line 365
    .line 366
    .line 367
    invoke-static {v2, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->c(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 368
    move-result-object v0

    .line 369
    .line 370
    move-object/from16 v2, v25

    .line 371
    .line 372
    .line 373
    invoke-virtual {v1, v2, v0}, Landroidx/compose/ui/window/PopupLayout;->p(Landroidx/compose/runtime/CompositionContext;Le8/p;)V

    .line 374
    .line 375
    .line 376
    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 377
    goto :goto_b

    .line 378
    .line 379
    :cond_12
    move-object/from16 p1, v10

    .line 380
    .line 381
    .line 382
    :goto_b
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->Q()V

    .line 383
    .line 384
    check-cast v1, Landroidx/compose/ui/window/PopupLayout;

    .line 385
    .line 386
    new-instance v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2;

    .line 387
    move-object v3, v0

    .line 388
    move-object v4, v1

    .line 389
    .line 390
    move-object/from16 v5, v16

    .line 391
    .line 392
    move-object/from16 v6, v17

    .line 393
    .line 394
    move-object/from16 v7, v19

    .line 395
    .line 396
    move-object/from16 v8, p1

    .line 397
    .line 398
    .line 399
    invoke-direct/range {v3 .. v8}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2;-><init>(Landroidx/compose/ui/window/PopupLayout;Le8/a;Landroidx/compose/ui/window/PopupProperties;Ljava/lang/String;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 400
    .line 401
    const/16 v2, 0x8

    .line 402
    .line 403
    .line 404
    invoke-static {v1, v0, v14, v2}, Landroidx/compose/runtime/EffectsKt;->a(Ljava/lang/Object;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 405
    .line 406
    new-instance v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$3;

    .line 407
    move-object v3, v0

    .line 408
    .line 409
    .line 410
    invoke-direct/range {v3 .. v8}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$3;-><init>(Landroidx/compose/ui/window/PopupLayout;Le8/a;Landroidx/compose/ui/window/PopupProperties;Ljava/lang/String;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 411
    const/4 v3, 0x0

    .line 412
    .line 413
    .line 414
    invoke-static {v0, v14, v3}, Landroidx/compose/runtime/EffectsKt;->h(Le8/a;Landroidx/compose/runtime/Composer;I)V

    .line 415
    .line 416
    new-instance v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$4;

    .line 417
    .line 418
    .line 419
    invoke-direct {v0, v1, v11}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$4;-><init>(Landroidx/compose/ui/window/PopupLayout;Landroidx/compose/ui/window/PopupPositionProvider;)V

    .line 420
    .line 421
    and-int/lit8 v4, v18, 0xe

    .line 422
    .line 423
    .line 424
    invoke-static {v11, v0, v14, v4}, Landroidx/compose/runtime/EffectsKt;->a(Ljava/lang/Object;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 425
    .line 426
    new-instance v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$5;

    .line 427
    const/4 v4, 0x0

    .line 428
    .line 429
    .line 430
    invoke-direct {v0, v1, v4}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$5;-><init>(Landroidx/compose/ui/window/PopupLayout;Lkotlin/coroutines/d;)V

    .line 431
    .line 432
    .line 433
    invoke-static {v1, v0, v14, v2}, Landroidx/compose/runtime/EffectsKt;->d(Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 434
    .line 435
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 436
    .line 437
    new-instance v2, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$7;

    .line 438
    .line 439
    .line 440
    invoke-direct {v2, v1}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$7;-><init>(Landroidx/compose/ui/window/PopupLayout;)V

    .line 441
    .line 442
    .line 443
    invoke-static {v0, v2}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->a(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 444
    move-result-object v0

    .line 445
    .line 446
    new-instance v2, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$8;

    .line 447
    .line 448
    move-object/from16 v4, p1

    .line 449
    .line 450
    .line 451
    invoke-direct {v2, v1, v4}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$8;-><init>(Landroidx/compose/ui/window/PopupLayout;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 452
    .line 453
    .line 454
    const v1, -0x4ee9b9da

    .line 455
    .line 456
    .line 457
    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 458
    .line 459
    .line 460
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 461
    move-result-object v1

    .line 462
    .line 463
    .line 464
    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 465
    move-result-object v1

    .line 466
    .line 467
    check-cast v1, Landroidx/compose/ui/unit/Density;

    .line 468
    .line 469
    .line 470
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 471
    move-result-object v4

    .line 472
    .line 473
    .line 474
    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 475
    move-result-object v4

    .line 476
    .line 477
    check-cast v4, Landroidx/compose/ui/unit/LayoutDirection;

    .line 478
    .line 479
    .line 480
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 481
    move-result-object v5

    .line 482
    .line 483
    .line 484
    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 485
    move-result-object v5

    .line 486
    .line 487
    check-cast v5, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 488
    .line 489
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 493
    move-result-object v7

    .line 494
    .line 495
    .line 496
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 497
    move-result-object v0

    .line 498
    .line 499
    .line 500
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 501
    move-result-object v8

    .line 502
    .line 503
    instance-of v8, v8, Landroidx/compose/runtime/Applier;

    .line 504
    .line 505
    if-nez v8, :cond_13

    .line 506
    .line 507
    .line 508
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 509
    .line 510
    .line 511
    :cond_13
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->e()V

    .line 512
    .line 513
    .line 514
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->r()Z

    .line 515
    move-result v8

    .line 516
    .line 517
    if-eqz v8, :cond_14

    .line 518
    .line 519
    .line 520
    invoke-interface {v14, v7}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 521
    goto :goto_c

    .line 522
    .line 523
    .line 524
    :cond_14
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->c()V

    .line 525
    .line 526
    .line 527
    :goto_c
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->L()V

    .line 528
    .line 529
    .line 530
    invoke-static {v14}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 531
    move-result-object v7

    .line 532
    .line 533
    .line 534
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 535
    move-result-object v8

    .line 536
    .line 537
    .line 538
    invoke-static {v7, v2, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 542
    move-result-object v2

    .line 543
    .line 544
    .line 545
    invoke-static {v7, v1, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 549
    move-result-object v1

    .line 550
    .line 551
    .line 552
    invoke-static {v7, v4, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 556
    move-result-object v1

    .line 557
    .line 558
    .line 559
    invoke-static {v7, v5, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 560
    .line 561
    .line 562
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->o()V

    .line 563
    .line 564
    .line 565
    invoke-static {v14}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 566
    move-result-object v1

    .line 567
    .line 568
    .line 569
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 570
    move-result-object v1

    .line 571
    .line 572
    .line 573
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 574
    move-result-object v2

    .line 575
    .line 576
    .line 577
    invoke-interface {v0, v1, v14, v2}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    const v0, 0x7ab4aae9

    .line 581
    .line 582
    .line 583
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 584
    .line 585
    .line 586
    const v0, 0x7c532c0d

    .line 587
    .line 588
    .line 589
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 590
    .line 591
    .line 592
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->Q()V

    .line 593
    .line 594
    .line 595
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->Q()V

    .line 596
    .line 597
    .line 598
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->d()V

    .line 599
    .line 600
    .line 601
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->Q()V

    .line 602
    .line 603
    move-object/from16 v2, v16

    .line 604
    .line 605
    move-object/from16 v3, v17

    .line 606
    .line 607
    .line 608
    :goto_d
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 609
    move-result-object v7

    .line 610
    .line 611
    if-nez v7, :cond_15

    .line 612
    goto :goto_e

    .line 613
    .line 614
    :cond_15
    new-instance v8, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$9;

    .line 615
    move-object v0, v8

    .line 616
    .line 617
    move-object/from16 v1, p0

    .line 618
    .line 619
    move-object/from16 v4, p3

    .line 620
    .line 621
    move/from16 v5, p5

    .line 622
    .line 623
    move/from16 v6, p6

    .line 624
    .line 625
    .line 626
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$9;-><init>(Landroidx/compose/ui/window/PopupPositionProvider;Le8/a;Landroidx/compose/ui/window/PopupProperties;Le8/p;II)V

    .line 627
    .line 628
    .line 629
    invoke-interface {v7, v8}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 630
    :goto_e
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

.method public static final c(Landroidx/compose/ui/Alignment;JLe8/a;Landroidx/compose/ui/window/PopupProperties;Le8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 23
    .param p0    # Landroidx/compose/ui/Alignment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/window/PopupProperties;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/ui/Alignment;",
            "J",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/window/PopupProperties;",
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
    move-object/from16 v7, p5

    .line 3
    .line 4
    move/from16 v8, p7

    .line 5
    .line 6
    const-string v0, "content"

    .line 7
    .line 8
    .line 9
    invoke-static {v7, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v0, 0x119a1011

    .line 13
    .line 14
    move-object/from16 v1, p6

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 18
    move-result-object v9

    .line 19
    .line 20
    and-int/lit8 v0, p8, 0x1

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    or-int/lit8 v1, v8, 0x6

    .line 25
    move v2, v1

    .line 26
    .line 27
    move-object/from16 v1, p0

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_0
    and-int/lit8 v1, v8, 0xe

    .line 31
    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    move-object/from16 v1, p0

    .line 35
    .line 36
    .line 37
    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    const/4 v2, 0x4

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v2, 0x2

    .line 44
    :goto_0
    or-int/2addr v2, v8

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_2
    move-object/from16 v1, p0

    .line 48
    move v2, v8

    .line 49
    .line 50
    :goto_1
    and-int/lit8 v3, p8, 0x2

    .line 51
    .line 52
    if-eqz v3, :cond_4

    .line 53
    .line 54
    or-int/lit8 v2, v2, 0x30

    .line 55
    .line 56
    :cond_3
    move-wide/from16 v4, p1

    .line 57
    goto :goto_3

    .line 58
    .line 59
    :cond_4
    and-int/lit8 v4, v8, 0x70

    .line 60
    .line 61
    if-nez v4, :cond_3

    .line 62
    .line 63
    move-wide/from16 v4, p1

    .line 64
    .line 65
    .line 66
    invoke-interface {v9, v4, v5}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 67
    move-result v6

    .line 68
    .line 69
    if-eqz v6, :cond_5

    .line 70
    .line 71
    const/16 v6, 0x20

    .line 72
    goto :goto_2

    .line 73
    .line 74
    :cond_5
    const/16 v6, 0x10

    .line 75
    :goto_2
    or-int/2addr v2, v6

    .line 76
    .line 77
    :goto_3
    and-int/lit8 v6, p8, 0x4

    .line 78
    .line 79
    if-eqz v6, :cond_7

    .line 80
    .line 81
    or-int/lit16 v2, v2, 0x180

    .line 82
    .line 83
    :cond_6
    move-object/from16 v10, p3

    .line 84
    goto :goto_5

    .line 85
    .line 86
    :cond_7
    and-int/lit16 v10, v8, 0x380

    .line 87
    .line 88
    if-nez v10, :cond_6

    .line 89
    .line 90
    move-object/from16 v10, p3

    .line 91
    .line 92
    .line 93
    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 94
    move-result v11

    .line 95
    .line 96
    if-eqz v11, :cond_8

    .line 97
    .line 98
    const/16 v11, 0x100

    .line 99
    goto :goto_4

    .line 100
    .line 101
    :cond_8
    const/16 v11, 0x80

    .line 102
    :goto_4
    or-int/2addr v2, v11

    .line 103
    .line 104
    :goto_5
    and-int/lit16 v11, v8, 0x1c00

    .line 105
    .line 106
    if-nez v11, :cond_b

    .line 107
    .line 108
    and-int/lit8 v11, p8, 0x8

    .line 109
    .line 110
    if-nez v11, :cond_9

    .line 111
    .line 112
    move-object/from16 v11, p4

    .line 113
    .line 114
    .line 115
    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 116
    move-result v12

    .line 117
    .line 118
    if-eqz v12, :cond_a

    .line 119
    .line 120
    const/16 v12, 0x800

    .line 121
    goto :goto_6

    .line 122
    .line 123
    :cond_9
    move-object/from16 v11, p4

    .line 124
    .line 125
    :cond_a
    const/16 v12, 0x400

    .line 126
    :goto_6
    or-int/2addr v2, v12

    .line 127
    goto :goto_7

    .line 128
    .line 129
    :cond_b
    move-object/from16 v11, p4

    .line 130
    .line 131
    :goto_7
    and-int/lit8 v12, p8, 0x10

    .line 132
    .line 133
    if-eqz v12, :cond_c

    .line 134
    .line 135
    or-int/lit16 v2, v2, 0x6000

    .line 136
    goto :goto_9

    .line 137
    .line 138
    .line 139
    :cond_c
    const v12, 0xe000

    .line 140
    and-int/2addr v12, v8

    .line 141
    .line 142
    if-nez v12, :cond_e

    .line 143
    .line 144
    .line 145
    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 146
    move-result v12

    .line 147
    .line 148
    if-eqz v12, :cond_d

    .line 149
    .line 150
    const/16 v12, 0x4000

    .line 151
    goto :goto_8

    .line 152
    .line 153
    :cond_d
    const/16 v12, 0x2000

    .line 154
    :goto_8
    or-int/2addr v2, v12

    .line 155
    .line 156
    .line 157
    :cond_e
    :goto_9
    const v12, 0xb6db

    .line 158
    and-int/2addr v12, v2

    .line 159
    .line 160
    const/16 v13, 0x2492

    .line 161
    .line 162
    if-ne v12, v13, :cond_10

    .line 163
    .line 164
    .line 165
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->b()Z

    .line 166
    move-result v12

    .line 167
    .line 168
    if-nez v12, :cond_f

    .line 169
    goto :goto_a

    .line 170
    .line 171
    .line 172
    :cond_f
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->g()V

    .line 173
    move-wide v2, v4

    .line 174
    move-object v4, v10

    .line 175
    move-object v5, v11

    .line 176
    .line 177
    goto/16 :goto_f

    .line 178
    .line 179
    .line 180
    :cond_10
    :goto_a
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->J()V

    .line 181
    .line 182
    and-int/lit8 v12, v8, 0x1

    .line 183
    const/4 v13, 0x0

    .line 184
    .line 185
    if-eqz v12, :cond_13

    .line 186
    .line 187
    .line 188
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->h()Z

    .line 189
    move-result v12

    .line 190
    .line 191
    if-eqz v12, :cond_11

    .line 192
    goto :goto_b

    .line 193
    .line 194
    .line 195
    :cond_11
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->g()V

    .line 196
    .line 197
    and-int/lit8 v0, p8, 0x8

    .line 198
    .line 199
    if-eqz v0, :cond_12

    .line 200
    .line 201
    and-int/lit16 v2, v2, -0x1c01

    .line 202
    :cond_12
    move-object v14, v10

    .line 203
    move-object v15, v11

    .line 204
    move-object v10, v1

    .line 205
    move-wide v11, v4

    .line 206
    goto :goto_e

    .line 207
    .line 208
    :cond_13
    :goto_b
    if-eqz v0, :cond_14

    .line 209
    .line 210
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 214
    move-result-object v0

    .line 215
    goto :goto_c

    .line 216
    :cond_14
    move-object v0, v1

    .line 217
    .line 218
    :goto_c
    if-eqz v3, :cond_15

    .line 219
    const/4 v1, 0x0

    .line 220
    .line 221
    .line 222
    invoke-static {v1, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 223
    move-result-wide v3

    .line 224
    goto :goto_d

    .line 225
    :cond_15
    move-wide v3, v4

    .line 226
    .line 227
    :goto_d
    if-eqz v6, :cond_16

    .line 228
    move-object v10, v13

    .line 229
    .line 230
    :cond_16
    and-int/lit8 v1, p8, 0x8

    .line 231
    .line 232
    if-eqz v1, :cond_17

    .line 233
    .line 234
    new-instance v1, Landroidx/compose/ui/window/PopupProperties;

    .line 235
    const/4 v15, 0x0

    .line 236
    .line 237
    const/16 v16, 0x0

    .line 238
    .line 239
    const/16 v17, 0x0

    .line 240
    .line 241
    const/16 v18, 0x0

    .line 242
    .line 243
    const/16 v19, 0x0

    .line 244
    .line 245
    const/16 v20, 0x0

    .line 246
    .line 247
    const/16 v21, 0x3f

    .line 248
    .line 249
    const/16 v22, 0x0

    .line 250
    move-object v14, v1

    .line 251
    .line 252
    .line 253
    invoke-direct/range {v14 .. v22}, Landroidx/compose/ui/window/PopupProperties;-><init>(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZILkotlin/jvm/internal/k;)V

    .line 254
    .line 255
    and-int/lit16 v2, v2, -0x1c01

    .line 256
    move-object v15, v1

    .line 257
    move-wide v11, v3

    .line 258
    move-object v14, v10

    .line 259
    move-object v10, v0

    .line 260
    goto :goto_e

    .line 261
    :cond_17
    move-object v14, v10

    .line 262
    move-object v15, v11

    .line 263
    move-object v10, v0

    .line 264
    move-wide v11, v3

    .line 265
    .line 266
    .line 267
    :goto_e
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->A()V

    .line 268
    .line 269
    .line 270
    invoke-static {v11, v12}, Landroidx/compose/ui/unit/IntOffset;->b(J)Landroidx/compose/ui/unit/IntOffset;

    .line 271
    move-result-object v0

    .line 272
    .line 273
    .line 274
    const v1, 0x1e7b2b64

    .line 275
    .line 276
    .line 277
    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 278
    .line 279
    .line 280
    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 281
    move-result v1

    .line 282
    .line 283
    .line 284
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 285
    move-result v0

    .line 286
    or-int/2addr v0, v1

    .line 287
    .line 288
    .line 289
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 290
    move-result-object v1

    .line 291
    .line 292
    if-nez v0, :cond_18

    .line 293
    .line 294
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 298
    move-result-object v0

    .line 299
    .line 300
    if-ne v1, v0, :cond_19

    .line 301
    .line 302
    :cond_18
    new-instance v1, Landroidx/compose/ui/window/AlignmentOffsetPositionProvider;

    .line 303
    .line 304
    .line 305
    invoke-direct {v1, v10, v11, v12, v13}, Landroidx/compose/ui/window/AlignmentOffsetPositionProvider;-><init>(Landroidx/compose/ui/Alignment;JLkotlin/jvm/internal/k;)V

    .line 306
    .line 307
    .line 308
    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    :cond_19
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->Q()V

    .line 312
    move-object v0, v1

    .line 313
    .line 314
    check-cast v0, Landroidx/compose/ui/window/AlignmentOffsetPositionProvider;

    .line 315
    .line 316
    shr-int/lit8 v1, v2, 0x3

    .line 317
    .line 318
    and-int/lit8 v2, v1, 0x70

    .line 319
    .line 320
    and-int/lit16 v3, v1, 0x380

    .line 321
    or-int/2addr v2, v3

    .line 322
    .line 323
    and-int/lit16 v1, v1, 0x1c00

    .line 324
    .line 325
    or-int v5, v2, v1

    .line 326
    const/4 v6, 0x0

    .line 327
    move-object v1, v14

    .line 328
    move-object v2, v15

    .line 329
    .line 330
    move-object/from16 v3, p5

    .line 331
    move-object v4, v9

    .line 332
    .line 333
    .line 334
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->a(Landroidx/compose/ui/window/PopupPositionProvider;Le8/a;Landroidx/compose/ui/window/PopupProperties;Le8/p;Landroidx/compose/runtime/Composer;II)V

    .line 335
    move-object v1, v10

    .line 336
    move-wide v2, v11

    .line 337
    move-object v4, v14

    .line 338
    move-object v5, v15

    .line 339
    .line 340
    .line 341
    :goto_f
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 342
    move-result-object v9

    .line 343
    .line 344
    if-nez v9, :cond_1a

    .line 345
    goto :goto_10

    .line 346
    .line 347
    :cond_1a
    new-instance v10, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$1;

    .line 348
    move-object v0, v10

    .line 349
    .line 350
    move-object/from16 v6, p5

    .line 351
    .line 352
    move/from16 v7, p7

    .line 353
    .line 354
    move/from16 v8, p8

    .line 355
    .line 356
    .line 357
    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$1;-><init>(Landroidx/compose/ui/Alignment;JLe8/a;Landroidx/compose/ui/window/PopupProperties;Le8/p;II)V

    .line 358
    .line 359
    .line 360
    invoke-interface {v9, v10}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 361
    :goto_10
    return-void
.end method

.method public static final d(Ljava/lang/String;Le8/p;Landroidx/compose/runtime/Composer;I)V
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
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
            "Ljava/lang/String;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string/jumbo v0, "tag"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "content"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const v0, -0x1dbc4c70

    .line 14
    .line 15
    .line 16
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    and-int/lit8 v0, p3, 0xe

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    const/4 v0, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x2

    .line 31
    :goto_0
    or-int/2addr v0, p3

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v0, p3

    .line 34
    .line 35
    :goto_1
    and-int/lit8 v1, p3, 0x70

    .line 36
    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    .line 40
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 41
    move-result v1

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    const/16 v1, 0x20

    .line 46
    goto :goto_2

    .line 47
    .line 48
    :cond_2
    const/16 v1, 0x10

    .line 49
    :goto_2
    or-int/2addr v0, v1

    .line 50
    .line 51
    :cond_3
    and-int/lit8 v1, v0, 0x5b

    .line 52
    .line 53
    const/16 v2, 0x12

    .line 54
    .line 55
    if-ne v1, v2, :cond_5

    .line 56
    .line 57
    .line 58
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->b()Z

    .line 59
    move-result v1

    .line 60
    .line 61
    if-nez v1, :cond_4

    .line 62
    goto :goto_3

    .line 63
    .line 64
    .line 65
    :cond_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->g()V

    .line 66
    goto :goto_4

    .line 67
    :cond_5
    :goto_3
    const/4 v1, 0x1

    .line 68
    .line 69
    new-array v1, v1, [Landroidx/compose/runtime/ProvidedValue;

    .line 70
    .line 71
    sget-object v2, Landroidx/compose/ui/window/AndroidPopup_androidKt;->LocalPopupTestTag:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, p0}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 75
    move-result-object v2

    .line 76
    const/4 v3, 0x0

    .line 77
    .line 78
    aput-object v2, v1, v3

    .line 79
    .line 80
    and-int/lit8 v0, v0, 0x70

    .line 81
    .line 82
    or-int/lit8 v0, v0, 0x8

    .line 83
    .line 84
    .line 85
    invoke-static {v1, p1, p2, v0}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 86
    .line 87
    .line 88
    :goto_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 89
    move-result-object p2

    .line 90
    .line 91
    if-nez p2, :cond_6

    .line 92
    goto :goto_5

    .line 93
    .line 94
    :cond_6
    new-instance v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$PopupTestTag$1;

    .line 95
    .line 96
    .line 97
    invoke-direct {v0, p0, p1, p3}, Landroidx/compose/ui/window/AndroidPopup_androidKt$PopupTestTag$1;-><init>(Ljava/lang/String;Le8/p;I)V

    .line 98
    .line 99
    .line 100
    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 101
    :goto_5
    return-void
.end method

.method public static final synthetic e(Landroidx/compose/runtime/State;)Le8/p;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->b(Landroidx/compose/runtime/State;)Le8/p;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Landroid/graphics/Rect;)Landroidx/compose/ui/unit/IntRect;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->h(Landroid/graphics/Rect;)Landroidx/compose/ui/unit/IntRect;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final g(Landroid/view/View;)Z
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    instance-of v0, p0, Landroid/view/WindowManager$LayoutParams;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    check-cast p0, Landroid/view/WindowManager$LayoutParams;

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    const/4 v0, 0x0

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 27
    .line 28
    and-int/lit16 p0, p0, 0x2000

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    const/4 v0, 0x1

    .line 32
    :cond_1
    return v0
.end method

.method private static final h(Landroid/graphics/Rect;)Landroidx/compose/ui/unit/IntRect;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/unit/IntRect;

    .line 3
    .line 4
    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 5
    .line 6
    iget v2, p0, Landroid/graphics/Rect;->top:I

    .line 7
    .line 8
    iget v3, p0, Landroid/graphics/Rect;->right:I

    .line 9
    .line 10
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    .line 14
    return-object v0
.end method
