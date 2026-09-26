.class public final Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExposedDropdownMenuPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExposedDropdownMenuPopup.kt\nandroidx/compose/material/internal/ExposedDropdownMenuPopupKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 6 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,471:1\n76#2:472\n76#2:473\n76#2:474\n76#2:475\n76#2:484\n76#2:514\n25#3:476\n460#3,16:496\n460#3,16:526\n1057#4,6:477\n75#5:483\n76#5,11:485\n89#5:512\n75#5:513\n76#5,11:515\n89#5:542\n76#6:543\n*S KotlinDebug\n*F\n+ 1 ExposedDropdownMenuPopup.kt\nandroidx/compose/material/internal/ExposedDropdownMenuPopupKt\n*L\n83#1:472\n84#1:473\n85#1:474\n86#1:475\n148#1:484\n177#1:514\n90#1:476\n148#1:496,16\n177#1:526,16\n90#1:477,6\n148#1:483\n148#1:485,11\n148#1:512\n177#1:513\n177#1:515,11\n177#1:542\n88#1:543\n*E\n"
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
    sget-object v0, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$LocalPopupTestTag$1;->INSTANCE:Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$LocalPopupTestTag$1;

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
    sput-object v0, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt;->LocalPopupTestTag:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 11
    return-void
.end method

.method public static final a(Le8/a;Landroidx/compose/ui/window/PopupPositionProvider;Le8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 21
    .param p0    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/window/PopupPositionProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
            "Landroidx/compose/ui/window/PopupPositionProvider;",
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
    move-object/from16 v7, p1

    .line 3
    .line 4
    move-object/from16 v8, p2

    .line 5
    .line 6
    move/from16 v9, p4

    .line 7
    .line 8
    const-string v0, "popupPositionProvider"

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
    const v0, -0x3227758d

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
    or-int/lit8 v1, v9, 0x6

    .line 32
    move v2, v1

    .line 33
    .line 34
    move-object/from16 v1, p0

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_0
    and-int/lit8 v1, v9, 0xe

    .line 38
    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    move-object/from16 v1, p0

    .line 42
    .line 43
    .line 44
    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 45
    move-result v2

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    const/4 v2, 0x4

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v2, 0x2

    .line 51
    :goto_0
    or-int/2addr v2, v9

    .line 52
    goto :goto_1

    .line 53
    .line 54
    :cond_2
    move-object/from16 v1, p0

    .line 55
    move v2, v9

    .line 56
    .line 57
    :goto_1
    and-int/lit8 v3, p5, 0x2

    .line 58
    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    or-int/lit8 v2, v2, 0x30

    .line 62
    goto :goto_3

    .line 63
    .line 64
    :cond_3
    and-int/lit8 v3, v9, 0x70

    .line 65
    .line 66
    if-nez v3, :cond_5

    .line 67
    .line 68
    .line 69
    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 70
    move-result v3

    .line 71
    .line 72
    if-eqz v3, :cond_4

    .line 73
    .line 74
    const/16 v3, 0x20

    .line 75
    goto :goto_2

    .line 76
    .line 77
    :cond_4
    const/16 v3, 0x10

    .line 78
    :goto_2
    or-int/2addr v2, v3

    .line 79
    .line 80
    :cond_5
    :goto_3
    and-int/lit8 v3, p5, 0x4

    .line 81
    .line 82
    if-eqz v3, :cond_7

    .line 83
    .line 84
    or-int/lit16 v2, v2, 0x180

    .line 85
    :cond_6
    :goto_4
    move v5, v2

    .line 86
    goto :goto_6

    .line 87
    .line 88
    :cond_7
    and-int/lit16 v3, v9, 0x380

    .line 89
    .line 90
    if-nez v3, :cond_6

    .line 91
    .line 92
    .line 93
    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 94
    move-result v3

    .line 95
    .line 96
    if-eqz v3, :cond_8

    .line 97
    .line 98
    const/16 v3, 0x100

    .line 99
    goto :goto_5

    .line 100
    .line 101
    :cond_8
    const/16 v3, 0x80

    .line 102
    :goto_5
    or-int/2addr v2, v3

    .line 103
    goto :goto_4

    .line 104
    .line 105
    :goto_6
    and-int/lit16 v2, v5, 0x2db

    .line 106
    .line 107
    const/16 v3, 0x92

    .line 108
    .line 109
    if-ne v2, v3, :cond_a

    .line 110
    .line 111
    .line 112
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->b()Z

    .line 113
    move-result v2

    .line 114
    .line 115
    if-nez v2, :cond_9

    .line 116
    goto :goto_7

    .line 117
    .line 118
    .line 119
    :cond_9
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->g()V

    .line 120
    move-object v12, v6

    .line 121
    .line 122
    goto/16 :goto_b

    .line 123
    .line 124
    :cond_a
    :goto_7
    if-eqz v0, :cond_b

    .line 125
    const/4 v0, 0x0

    .line 126
    move-object v4, v0

    .line 127
    goto :goto_8

    .line 128
    :cond_b
    move-object v4, v1

    .line 129
    .line 130
    .line 131
    :goto_8
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->k()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    .line 135
    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 136
    move-result-object v0

    .line 137
    move-object v3, v0

    .line 138
    .line 139
    check-cast v3, Landroid/view/View;

    .line 140
    .line 141
    .line 142
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 143
    move-result-object v0

    .line 144
    .line 145
    .line 146
    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 147
    move-result-object v0

    .line 148
    .line 149
    move-object/from16 v17, v0

    .line 150
    .line 151
    check-cast v17, Landroidx/compose/ui/unit/Density;

    .line 152
    .line 153
    sget-object v0, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt;->LocalPopupTestTag:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 154
    .line 155
    .line 156
    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 157
    move-result-object v0

    .line 158
    move-object v2, v0

    .line 159
    .line 160
    check-cast v2, Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 164
    move-result-object v0

    .line 165
    .line 166
    .line 167
    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 168
    move-result-object v0

    .line 169
    move-object v1, v0

    .line 170
    .line 171
    check-cast v1, Landroidx/compose/ui/unit/LayoutDirection;

    .line 172
    const/4 v0, 0x0

    .line 173
    .line 174
    .line 175
    invoke-static {v6, v0}, Landroidx/compose/runtime/ComposablesKt;->d(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/CompositionContext;

    .line 176
    move-result-object v15

    .line 177
    .line 178
    shr-int/lit8 v10, v5, 0x6

    .line 179
    .line 180
    and-int/lit8 v10, v10, 0xe

    .line 181
    .line 182
    .line 183
    invoke-static {v8, v6, v10}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 184
    move-result-object v14

    .line 185
    .line 186
    new-array v10, v0, [Ljava/lang/Object;

    .line 187
    const/4 v11, 0x0

    .line 188
    const/4 v12, 0x0

    .line 189
    .line 190
    sget-object v13, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupId$1;->INSTANCE:Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupId$1;

    .line 191
    .line 192
    const/16 v16, 0xc08

    .line 193
    .line 194
    const/16 v18, 0x6

    .line 195
    .line 196
    move-object/from16 v19, v14

    .line 197
    move-object v14, v6

    .line 198
    .line 199
    move-object/from16 v20, v15

    .line 200
    .line 201
    move/from16 v15, v16

    .line 202
    .line 203
    move/from16 v16, v18

    .line 204
    .line 205
    .line 206
    invoke-static/range {v10 .. v16}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->b([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Le8/a;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    .line 207
    move-result-object v10

    .line 208
    .line 209
    check-cast v10, Ljava/util/UUID;

    .line 210
    .line 211
    .line 212
    const v11, -0x1d58f75c

    .line 213
    .line 214
    .line 215
    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 216
    .line 217
    .line 218
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 219
    move-result-object v11

    .line 220
    .line 221
    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 225
    move-result-object v12

    .line 226
    .line 227
    if-ne v11, v12, :cond_c

    .line 228
    .line 229
    new-instance v11, Landroidx/compose/material/internal/PopupLayout;

    .line 230
    .line 231
    const-string v12, "popupId"

    .line 232
    .line 233
    .line 234
    invoke-static {v10, v12}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    move v12, v0

    .line 236
    move-object v0, v11

    .line 237
    move-object v13, v1

    .line 238
    move-object v1, v4

    .line 239
    move-object v14, v2

    .line 240
    move-object v15, v4

    .line 241
    .line 242
    move-object/from16 v4, v17

    .line 243
    .line 244
    move/from16 v16, v5

    .line 245
    .line 246
    move-object/from16 v5, p1

    .line 247
    move-object v12, v6

    .line 248
    move-object v6, v10

    .line 249
    .line 250
    .line 251
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/internal/PopupLayout;-><init>(Le8/a;Ljava/lang/String;Landroid/view/View;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/window/PopupPositionProvider;Ljava/util/UUID;)V

    .line 252
    .line 253
    new-instance v0, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1;

    .line 254
    .line 255
    move-object/from16 v1, v19

    .line 256
    .line 257
    .line 258
    invoke-direct {v0, v11, v1}, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1;-><init>(Landroidx/compose/material/internal/PopupLayout;Landroidx/compose/runtime/State;)V

    .line 259
    .line 260
    .line 261
    const v1, 0x89c7b48

    .line 262
    const/4 v2, 0x1

    .line 263
    .line 264
    .line 265
    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->c(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 266
    move-result-object v0

    .line 267
    .line 268
    move-object/from16 v1, v20

    .line 269
    .line 270
    .line 271
    invoke-virtual {v11, v1, v0}, Landroidx/compose/material/internal/PopupLayout;->n(Landroidx/compose/runtime/CompositionContext;Le8/p;)V

    .line 272
    .line 273
    .line 274
    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 275
    goto :goto_9

    .line 276
    :cond_c
    move-object v13, v1

    .line 277
    move-object v14, v2

    .line 278
    move-object v15, v4

    .line 279
    .line 280
    move/from16 v16, v5

    .line 281
    move-object v12, v6

    .line 282
    .line 283
    .line 284
    :goto_9
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->Q()V

    .line 285
    .line 286
    check-cast v11, Landroidx/compose/material/internal/PopupLayout;

    .line 287
    .line 288
    new-instance v0, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$1;

    .line 289
    .line 290
    .line 291
    invoke-direct {v0, v11, v15, v14, v13}, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$1;-><init>(Landroidx/compose/material/internal/PopupLayout;Le8/a;Ljava/lang/String;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 292
    .line 293
    const/16 v1, 0x8

    .line 294
    .line 295
    .line 296
    invoke-static {v11, v0, v12, v1}, Landroidx/compose/runtime/EffectsKt;->a(Ljava/lang/Object;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 297
    .line 298
    new-instance v0, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$2;

    .line 299
    .line 300
    .line 301
    invoke-direct {v0, v11, v15, v14, v13}, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$2;-><init>(Landroidx/compose/material/internal/PopupLayout;Le8/a;Ljava/lang/String;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 302
    const/4 v1, 0x0

    .line 303
    .line 304
    .line 305
    invoke-static {v0, v12, v1}, Landroidx/compose/runtime/EffectsKt;->h(Le8/a;Landroidx/compose/runtime/Composer;I)V

    .line 306
    .line 307
    new-instance v0, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$3;

    .line 308
    .line 309
    .line 310
    invoke-direct {v0, v11, v7}, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$3;-><init>(Landroidx/compose/material/internal/PopupLayout;Landroidx/compose/ui/window/PopupPositionProvider;)V

    .line 311
    .line 312
    shr-int/lit8 v1, v16, 0x3

    .line 313
    .line 314
    and-int/lit8 v1, v1, 0xe

    .line 315
    .line 316
    .line 317
    invoke-static {v7, v0, v12, v1}, Landroidx/compose/runtime/EffectsKt;->a(Ljava/lang/Object;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 318
    .line 319
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 320
    .line 321
    new-instance v1, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$5;

    .line 322
    .line 323
    .line 324
    invoke-direct {v1, v11}, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$5;-><init>(Landroidx/compose/material/internal/PopupLayout;)V

    .line 325
    .line 326
    .line 327
    invoke-static {v0, v1}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->a(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 328
    move-result-object v0

    .line 329
    .line 330
    new-instance v1, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$6;

    .line 331
    .line 332
    .line 333
    invoke-direct {v1, v11, v13}, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$6;-><init>(Landroidx/compose/material/internal/PopupLayout;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 334
    .line 335
    .line 336
    const v2, -0x4ee9b9da

    .line 337
    .line 338
    .line 339
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 340
    .line 341
    .line 342
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 343
    move-result-object v2

    .line 344
    .line 345
    .line 346
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 347
    move-result-object v2

    .line 348
    .line 349
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 350
    .line 351
    .line 352
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 353
    move-result-object v3

    .line 354
    .line 355
    .line 356
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 357
    move-result-object v3

    .line 358
    .line 359
    check-cast v3, Landroidx/compose/ui/unit/LayoutDirection;

    .line 360
    .line 361
    .line 362
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 363
    move-result-object v4

    .line 364
    .line 365
    .line 366
    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 367
    move-result-object v4

    .line 368
    .line 369
    check-cast v4, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 370
    .line 371
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 375
    move-result-object v6

    .line 376
    .line 377
    .line 378
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 379
    move-result-object v0

    .line 380
    .line 381
    .line 382
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 383
    move-result-object v10

    .line 384
    .line 385
    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    .line 386
    .line 387
    if-nez v10, :cond_d

    .line 388
    .line 389
    .line 390
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 391
    .line 392
    .line 393
    :cond_d
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->e()V

    .line 394
    .line 395
    .line 396
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->r()Z

    .line 397
    move-result v10

    .line 398
    .line 399
    if-eqz v10, :cond_e

    .line 400
    .line 401
    .line 402
    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 403
    goto :goto_a

    .line 404
    .line 405
    .line 406
    :cond_e
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->c()V

    .line 407
    .line 408
    .line 409
    :goto_a
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->L()V

    .line 410
    .line 411
    .line 412
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 413
    move-result-object v6

    .line 414
    .line 415
    .line 416
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 417
    move-result-object v10

    .line 418
    .line 419
    .line 420
    invoke-static {v6, v1, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 424
    move-result-object v1

    .line 425
    .line 426
    .line 427
    invoke-static {v6, v2, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 431
    move-result-object v1

    .line 432
    .line 433
    .line 434
    invoke-static {v6, v3, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 438
    move-result-object v1

    .line 439
    .line 440
    .line 441
    invoke-static {v6, v4, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 442
    .line 443
    .line 444
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->o()V

    .line 445
    .line 446
    .line 447
    invoke-static {v12}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 448
    move-result-object v1

    .line 449
    .line 450
    .line 451
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 452
    move-result-object v1

    .line 453
    const/4 v2, 0x0

    .line 454
    .line 455
    .line 456
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 457
    move-result-object v2

    .line 458
    .line 459
    .line 460
    invoke-interface {v0, v1, v12, v2}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    const v0, 0x7ab4aae9

    .line 464
    .line 465
    .line 466
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 467
    .line 468
    .line 469
    const v0, -0xf9b3956

    .line 470
    .line 471
    .line 472
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 473
    .line 474
    .line 475
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->Q()V

    .line 476
    .line 477
    .line 478
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->Q()V

    .line 479
    .line 480
    .line 481
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->d()V

    .line 482
    .line 483
    .line 484
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->Q()V

    .line 485
    move-object v1, v15

    .line 486
    .line 487
    .line 488
    :goto_b
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 489
    move-result-object v6

    .line 490
    .line 491
    if-nez v6, :cond_f

    .line 492
    goto :goto_c

    .line 493
    .line 494
    :cond_f
    new-instance v10, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$7;

    .line 495
    move-object v0, v10

    .line 496
    .line 497
    move-object/from16 v2, p1

    .line 498
    .line 499
    move-object/from16 v3, p2

    .line 500
    .line 501
    move/from16 v4, p4

    .line 502
    .line 503
    move/from16 v5, p5

    .line 504
    .line 505
    .line 506
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$7;-><init>(Le8/a;Landroidx/compose/ui/window/PopupPositionProvider;Le8/p;II)V

    .line 507
    .line 508
    .line 509
    invoke-interface {v6, v10}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 510
    :goto_c
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

.method public static final synthetic c(Landroidx/compose/runtime/State;)Le8/p;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt;->b(Landroidx/compose/runtime/State;)Le8/p;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
