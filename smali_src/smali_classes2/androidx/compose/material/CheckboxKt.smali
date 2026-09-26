.class public final Landroidx/compose/material/CheckboxKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/CheckboxKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCheckbox.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Checkbox.kt\nandroidx/compose/material/CheckboxKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Transition.kt\nandroidx/compose/animation/core/TransitionKt\n+ 5 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 6 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,479:1\n25#2:480\n50#2:487\n49#2:488\n25#2:495\n25#2:520\n83#2,3:527\n1057#3,6:481\n1057#3,6:489\n1057#3,6:496\n1057#3,6:521\n1057#3,6:530\n923#4,4:502\n844#4,5:506\n923#4,4:511\n844#4,5:515\n76#5:536\n76#5:537\n76#5:538\n76#5:539\n76#5:540\n155#6:541\n155#6:542\n155#6:543\n155#6:544\n155#6:545\n*S KotlinDebug\n*F\n+ 1 Checkbox.kt\nandroidx/compose/material/CheckboxKt\n*L\n91#1:480\n96#1:487\n96#1:488\n137#1:495\n291#1:520\n295#1:527,3\n91#1:481,6\n96#1:489,6\n137#1:496,6\n291#1:521,6\n295#1:530,6\n260#1:502,4\n260#1:506,5\n276#1:511,4\n276#1:515,5\n260#1:536\n276#1:537\n292#1:538\n293#1:539\n294#1:540\n474#1:541\n475#1:542\n476#1:543\n477#1:544\n478#1:545\n*E\n"
.end annotation


# static fields
.field private static final BoxInDuration:I = 0x32

.field private static final BoxOutDuration:I = 0x64

.field private static final CheckAnimationDuration:I = 0x64

.field private static final CheckboxDefaultPadding:F

.field private static final CheckboxRippleRadius:F

.field private static final CheckboxSize:F

.field private static final RadiusSize:F

.field private static final StrokeWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x18

    .line 3
    int-to-float v0, v0

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 7
    move-result v0

    .line 8
    .line 9
    sput v0, Landroidx/compose/material/CheckboxKt;->CheckboxRippleRadius:F

    .line 10
    const/4 v0, 0x2

    .line 11
    int-to-float v0, v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 15
    move-result v1

    .line 16
    .line 17
    sput v1, Landroidx/compose/material/CheckboxKt;->CheckboxDefaultPadding:F

    .line 18
    .line 19
    const/16 v1, 0x14

    .line 20
    int-to-float v1, v1

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 24
    move-result v1

    .line 25
    .line 26
    sput v1, Landroidx/compose/material/CheckboxKt;->CheckboxSize:F

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 30
    move-result v1

    .line 31
    .line 32
    sput v1, Landroidx/compose/material/CheckboxKt;->StrokeWidth:F

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 36
    move-result v0

    .line 37
    .line 38
    sput v0, Landroidx/compose/material/CheckboxKt;->RadiusSize:F

    .line 39
    return-void
.end method

.method public static final a(ZLe8/l;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/CheckboxColors;Landroidx/compose/runtime/Composer;II)V
    .locals 26
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/material/CheckboxColors;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Le8/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/material/CheckboxColors;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    move/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v2, p1

    .line 5
    .line 6
    move/from16 v7, p7

    .line 7
    .line 8
    .line 9
    const v0, -0x7e483386

    .line 10
    .line 11
    move-object/from16 v3, p6

    .line 12
    .line 13
    .line 14
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    and-int/lit8 v3, p8, 0x1

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    or-int/lit8 v3, v7, 0x6

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_0
    and-int/lit8 v3, v7, 0xe

    .line 25
    .line 26
    if-nez v3, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 30
    move-result v3

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    const/4 v3, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v3, 0x2

    .line 36
    :goto_0
    or-int/2addr v3, v7

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move v3, v7

    .line 39
    .line 40
    :goto_1
    and-int/lit8 v4, p8, 0x2

    .line 41
    .line 42
    if-eqz v4, :cond_3

    .line 43
    .line 44
    or-int/lit8 v3, v3, 0x30

    .line 45
    goto :goto_3

    .line 46
    .line 47
    :cond_3
    and-int/lit8 v4, v7, 0x70

    .line 48
    .line 49
    if-nez v4, :cond_5

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 53
    move-result v4

    .line 54
    .line 55
    if-eqz v4, :cond_4

    .line 56
    .line 57
    const/16 v4, 0x20

    .line 58
    goto :goto_2

    .line 59
    .line 60
    :cond_4
    const/16 v4, 0x10

    .line 61
    :goto_2
    or-int/2addr v3, v4

    .line 62
    .line 63
    :cond_5
    :goto_3
    and-int/lit8 v4, p8, 0x4

    .line 64
    .line 65
    if-eqz v4, :cond_7

    .line 66
    .line 67
    or-int/lit16 v3, v3, 0x180

    .line 68
    .line 69
    :cond_6
    move-object/from16 v5, p2

    .line 70
    goto :goto_5

    .line 71
    .line 72
    :cond_7
    and-int/lit16 v5, v7, 0x380

    .line 73
    .line 74
    if-nez v5, :cond_6

    .line 75
    .line 76
    move-object/from16 v5, p2

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 80
    move-result v6

    .line 81
    .line 82
    if-eqz v6, :cond_8

    .line 83
    .line 84
    const/16 v6, 0x100

    .line 85
    goto :goto_4

    .line 86
    .line 87
    :cond_8
    const/16 v6, 0x80

    .line 88
    :goto_4
    or-int/2addr v3, v6

    .line 89
    .line 90
    :goto_5
    and-int/lit8 v6, p8, 0x8

    .line 91
    .line 92
    if-eqz v6, :cond_a

    .line 93
    .line 94
    or-int/lit16 v3, v3, 0xc00

    .line 95
    .line 96
    :cond_9
    move/from16 v8, p3

    .line 97
    goto :goto_7

    .line 98
    .line 99
    :cond_a
    and-int/lit16 v8, v7, 0x1c00

    .line 100
    .line 101
    if-nez v8, :cond_9

    .line 102
    .line 103
    move/from16 v8, p3

    .line 104
    .line 105
    .line 106
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 107
    move-result v9

    .line 108
    .line 109
    if-eqz v9, :cond_b

    .line 110
    .line 111
    const/16 v9, 0x800

    .line 112
    goto :goto_6

    .line 113
    .line 114
    :cond_b
    const/16 v9, 0x400

    .line 115
    :goto_6
    or-int/2addr v3, v9

    .line 116
    .line 117
    :goto_7
    and-int/lit8 v9, p8, 0x10

    .line 118
    .line 119
    .line 120
    const v22, 0xe000

    .line 121
    .line 122
    if-eqz v9, :cond_d

    .line 123
    .line 124
    or-int/lit16 v3, v3, 0x6000

    .line 125
    .line 126
    :cond_c
    move-object/from16 v10, p4

    .line 127
    goto :goto_9

    .line 128
    .line 129
    :cond_d
    and-int v10, v7, v22

    .line 130
    .line 131
    if-nez v10, :cond_c

    .line 132
    .line 133
    move-object/from16 v10, p4

    .line 134
    .line 135
    .line 136
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 137
    move-result v11

    .line 138
    .line 139
    if-eqz v11, :cond_e

    .line 140
    .line 141
    const/16 v11, 0x4000

    .line 142
    goto :goto_8

    .line 143
    .line 144
    :cond_e
    const/16 v11, 0x2000

    .line 145
    :goto_8
    or-int/2addr v3, v11

    .line 146
    .line 147
    :goto_9
    const/high16 v23, 0x70000

    .line 148
    .line 149
    and-int v11, v7, v23

    .line 150
    .line 151
    if-nez v11, :cond_11

    .line 152
    .line 153
    and-int/lit8 v11, p8, 0x20

    .line 154
    .line 155
    if-nez v11, :cond_f

    .line 156
    .line 157
    move-object/from16 v11, p5

    .line 158
    .line 159
    .line 160
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 161
    move-result v12

    .line 162
    .line 163
    if-eqz v12, :cond_10

    .line 164
    .line 165
    const/high16 v12, 0x20000

    .line 166
    goto :goto_a

    .line 167
    .line 168
    :cond_f
    move-object/from16 v11, p5

    .line 169
    .line 170
    :cond_10
    const/high16 v12, 0x10000

    .line 171
    :goto_a
    or-int/2addr v3, v12

    .line 172
    goto :goto_b

    .line 173
    .line 174
    :cond_11
    move-object/from16 v11, p5

    .line 175
    .line 176
    .line 177
    :goto_b
    const v12, 0x5b6db

    .line 178
    and-int/2addr v12, v3

    .line 179
    .line 180
    .line 181
    const v13, 0x12492

    .line 182
    .line 183
    if-ne v12, v13, :cond_13

    .line 184
    .line 185
    .line 186
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 187
    move-result v12

    .line 188
    .line 189
    if-nez v12, :cond_12

    .line 190
    goto :goto_c

    .line 191
    .line 192
    .line 193
    :cond_12
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 194
    move-object v3, v5

    .line 195
    move v4, v8

    .line 196
    move-object v5, v10

    .line 197
    move-object v6, v11

    .line 198
    .line 199
    goto/16 :goto_13

    .line 200
    .line 201
    .line 202
    :cond_13
    :goto_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->J()V

    .line 203
    .line 204
    and-int/lit8 v12, v7, 0x1

    .line 205
    .line 206
    .line 207
    const v24, -0x70001

    .line 208
    .line 209
    if-eqz v12, :cond_17

    .line 210
    .line 211
    .line 212
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->h()Z

    .line 213
    move-result v12

    .line 214
    .line 215
    if-eqz v12, :cond_14

    .line 216
    goto :goto_d

    .line 217
    .line 218
    .line 219
    :cond_14
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 220
    .line 221
    and-int/lit8 v4, p8, 0x20

    .line 222
    .line 223
    if-eqz v4, :cond_15

    .line 224
    .line 225
    and-int v3, v3, v24

    .line 226
    :cond_15
    move-object v4, v5

    .line 227
    move v5, v8

    .line 228
    move-object v6, v10

    .line 229
    :cond_16
    move v8, v3

    .line 230
    move-object v3, v11

    .line 231
    goto :goto_11

    .line 232
    .line 233
    :cond_17
    :goto_d
    if-eqz v4, :cond_18

    .line 234
    .line 235
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 236
    goto :goto_e

    .line 237
    :cond_18
    move-object v4, v5

    .line 238
    .line 239
    :goto_e
    if-eqz v6, :cond_19

    .line 240
    const/4 v5, 0x1

    .line 241
    goto :goto_f

    .line 242
    :cond_19
    move v5, v8

    .line 243
    .line 244
    :goto_f
    if-eqz v9, :cond_1b

    .line 245
    .line 246
    .line 247
    const v6, -0x1d58f75c

    .line 248
    .line 249
    .line 250
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 251
    .line 252
    .line 253
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 254
    move-result-object v6

    .line 255
    .line 256
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 260
    move-result-object v8

    .line 261
    .line 262
    if-ne v6, v8, :cond_1a

    .line 263
    .line 264
    .line 265
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 266
    move-result-object v6

    .line 267
    .line 268
    .line 269
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    :cond_1a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 273
    .line 274
    check-cast v6, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 275
    goto :goto_10

    .line 276
    :cond_1b
    move-object v6, v10

    .line 277
    .line 278
    :goto_10
    and-int/lit8 v8, p8, 0x20

    .line 279
    .line 280
    if-eqz v8, :cond_16

    .line 281
    .line 282
    sget-object v8, Landroidx/compose/material/CheckboxDefaults;->INSTANCE:Landroidx/compose/material/CheckboxDefaults;

    .line 283
    .line 284
    const-wide/16 v9, 0x0

    .line 285
    .line 286
    const-wide/16 v11, 0x0

    .line 287
    .line 288
    const-wide/16 v13, 0x0

    .line 289
    .line 290
    const-wide/16 v15, 0x0

    .line 291
    .line 292
    const-wide/16 v17, 0x0

    .line 293
    .line 294
    const/high16 v20, 0x30000

    .line 295
    .line 296
    const/16 v21, 0x1f

    .line 297
    .line 298
    move-object/from16 v19, v0

    .line 299
    .line 300
    .line 301
    invoke-virtual/range {v8 .. v21}, Landroidx/compose/material/CheckboxDefaults;->a(JJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/CheckboxColors;

    .line 302
    move-result-object v8

    .line 303
    .line 304
    and-int v3, v3, v24

    .line 305
    .line 306
    move-object/from16 v25, v8

    .line 307
    move v8, v3

    .line 308
    .line 309
    move-object/from16 v3, v25

    .line 310
    .line 311
    .line 312
    :goto_11
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->A()V

    .line 313
    .line 314
    .line 315
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/state/ToggleableStateKt;->a(Z)Landroidx/compose/ui/state/ToggleableState;

    .line 316
    move-result-object v9

    .line 317
    .line 318
    .line 319
    const v10, 0x556bc466

    .line 320
    .line 321
    .line 322
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 323
    .line 324
    if-eqz v2, :cond_1e

    .line 325
    .line 326
    .line 327
    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 328
    move-result-object v10

    .line 329
    .line 330
    .line 331
    const v11, 0x1e7b2b64

    .line 332
    .line 333
    .line 334
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 335
    .line 336
    .line 337
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 338
    move-result v11

    .line 339
    .line 340
    .line 341
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 342
    move-result v10

    .line 343
    or-int/2addr v10, v11

    .line 344
    .line 345
    .line 346
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 347
    move-result-object v11

    .line 348
    .line 349
    if-nez v10, :cond_1c

    .line 350
    .line 351
    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 355
    move-result-object v10

    .line 356
    .line 357
    if-ne v11, v10, :cond_1d

    .line 358
    .line 359
    :cond_1c
    new-instance v11, Landroidx/compose/material/CheckboxKt$Checkbox$2$1;

    .line 360
    .line 361
    .line 362
    invoke-direct {v11, v2, v1}, Landroidx/compose/material/CheckboxKt$Checkbox$2$1;-><init>(Le8/l;Z)V

    .line 363
    .line 364
    .line 365
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    :cond_1d
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 369
    .line 370
    check-cast v11, Le8/a;

    .line 371
    move-object v10, v11

    .line 372
    goto :goto_12

    .line 373
    :cond_1e
    const/4 v10, 0x0

    .line 374
    .line 375
    .line 376
    :goto_12
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 377
    .line 378
    and-int/lit16 v11, v8, 0x380

    .line 379
    .line 380
    and-int/lit16 v12, v8, 0x1c00

    .line 381
    or-int/2addr v11, v12

    .line 382
    .line 383
    and-int v12, v8, v22

    .line 384
    or-int/2addr v11, v12

    .line 385
    .line 386
    and-int v8, v8, v23

    .line 387
    .line 388
    or-int v15, v11, v8

    .line 389
    .line 390
    const/16 v16, 0x0

    .line 391
    move-object v8, v9

    .line 392
    move-object v9, v10

    .line 393
    move-object v10, v4

    .line 394
    move v11, v5

    .line 395
    move-object v12, v6

    .line 396
    move-object v13, v3

    .line 397
    move-object v14, v0

    .line 398
    .line 399
    .line 400
    invoke-static/range {v8 .. v16}, Landroidx/compose/material/CheckboxKt;->h(Landroidx/compose/ui/state/ToggleableState;Le8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/CheckboxColors;Landroidx/compose/runtime/Composer;II)V

    .line 401
    .line 402
    move-object/from16 v25, v6

    .line 403
    move-object v6, v3

    .line 404
    move-object v3, v4

    .line 405
    move v4, v5

    .line 406
    .line 407
    move-object/from16 v5, v25

    .line 408
    .line 409
    .line 410
    :goto_13
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 411
    move-result-object v9

    .line 412
    .line 413
    if-nez v9, :cond_1f

    .line 414
    goto :goto_14

    .line 415
    .line 416
    :cond_1f
    new-instance v10, Landroidx/compose/material/CheckboxKt$Checkbox$3;

    .line 417
    move-object v0, v10

    .line 418
    .line 419
    move/from16 v1, p0

    .line 420
    .line 421
    move-object/from16 v2, p1

    .line 422
    .line 423
    move/from16 v7, p7

    .line 424
    .line 425
    move/from16 v8, p8

    .line 426
    .line 427
    .line 428
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/CheckboxKt$Checkbox$3;-><init>(ZLe8/l;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/CheckboxColors;II)V

    .line 429
    .line 430
    .line 431
    invoke-interface {v9, v10}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 432
    :goto_14
    return-void
.end method

.method private static final b(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/ui/Modifier;Landroidx/compose/material/CheckboxColors;Landroidx/compose/runtime/Composer;I)V
    .locals 34
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .line 1
    .line 2
    move/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v2, p1

    .line 5
    .line 6
    move-object/from16 v3, p2

    .line 7
    .line 8
    move-object/from16 v4, p3

    .line 9
    .line 10
    move/from16 v5, p5

    .line 11
    .line 12
    .line 13
    const v0, -0x7e4bc86f

    .line 14
    .line 15
    move-object/from16 v6, p4

    .line 16
    .line 17
    .line 18
    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    and-int/lit8 v6, v5, 0xe

    .line 22
    const/4 v15, 0x2

    .line 23
    .line 24
    if-nez v6, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 28
    move-result v6

    .line 29
    .line 30
    if-eqz v6, :cond_0

    .line 31
    const/4 v6, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v6, v15

    .line 34
    :goto_0
    or-int/2addr v6, v5

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v6, v5

    .line 37
    .line 38
    :goto_1
    and-int/lit8 v7, v5, 0x70

    .line 39
    .line 40
    if-nez v7, :cond_3

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 44
    move-result v7

    .line 45
    .line 46
    if-eqz v7, :cond_2

    .line 47
    .line 48
    const/16 v7, 0x20

    .line 49
    goto :goto_2

    .line 50
    .line 51
    :cond_2
    const/16 v7, 0x10

    .line 52
    :goto_2
    or-int/2addr v6, v7

    .line 53
    .line 54
    :cond_3
    and-int/lit16 v7, v5, 0x380

    .line 55
    .line 56
    if-nez v7, :cond_5

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 60
    move-result v7

    .line 61
    .line 62
    if-eqz v7, :cond_4

    .line 63
    .line 64
    const/16 v7, 0x100

    .line 65
    goto :goto_3

    .line 66
    .line 67
    :cond_4
    const/16 v7, 0x80

    .line 68
    :goto_3
    or-int/2addr v6, v7

    .line 69
    .line 70
    :cond_5
    and-int/lit16 v7, v5, 0x1c00

    .line 71
    .line 72
    if-nez v7, :cond_7

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 76
    move-result v7

    .line 77
    .line 78
    if-eqz v7, :cond_6

    .line 79
    .line 80
    const/16 v7, 0x800

    .line 81
    goto :goto_4

    .line 82
    .line 83
    :cond_6
    const/16 v7, 0x400

    .line 84
    :goto_4
    or-int/2addr v6, v7

    .line 85
    :cond_7
    move v13, v6

    .line 86
    .line 87
    and-int/lit16 v6, v13, 0x16db

    .line 88
    .line 89
    const/16 v7, 0x492

    .line 90
    .line 91
    if-ne v6, v7, :cond_9

    .line 92
    .line 93
    .line 94
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 95
    move-result v6

    .line 96
    .line 97
    if-nez v6, :cond_8

    .line 98
    goto :goto_5

    .line 99
    .line 100
    .line 101
    :cond_8
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 102
    .line 103
    goto/16 :goto_b

    .line 104
    .line 105
    :cond_9
    :goto_5
    shr-int/lit8 v12, v13, 0x3

    .line 106
    .line 107
    and-int/lit8 v11, v12, 0xe

    .line 108
    const/4 v10, 0x0

    .line 109
    .line 110
    .line 111
    invoke-static {v2, v10, v0, v11, v15}, Landroidx/compose/animation/core/TransitionKt;->e(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    .line 112
    move-result-object v16

    .line 113
    .line 114
    sget-object v6, Landroidx/compose/material/CheckboxKt$CheckboxImpl$checkDrawFraction$2;->INSTANCE:Landroidx/compose/material/CheckboxKt$CheckboxImpl$checkDrawFraction$2;

    .line 115
    .line 116
    .line 117
    const v9, 0x5370a61d

    .line 118
    .line 119
    .line 120
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 121
    .line 122
    const-string v17, "FloatAnimation"

    .line 123
    .line 124
    sget-object v18, Lkotlin/jvm/internal/m;->INSTANCE:Lkotlin/jvm/internal/m;

    .line 125
    .line 126
    .line 127
    invoke-static/range {v18 .. v18}, Landroidx/compose/animation/core/VectorConvertersKt;->i(Lkotlin/jvm/internal/m;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 128
    move-result-object v19

    .line 129
    .line 130
    .line 131
    const v8, 0x6e220c08

    .line 132
    .line 133
    .line 134
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    .line 138
    move-result-object v7

    .line 139
    .line 140
    check-cast v7, Landroidx/compose/ui/state/ToggleableState;

    .line 141
    .line 142
    .line 143
    const v8, -0x6b309374

    .line 144
    .line 145
    .line 146
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 147
    .line 148
    sget-object v20, Landroidx/compose/material/CheckboxKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 152
    move-result v7

    .line 153
    .line 154
    aget v7, v20, v7

    .line 155
    .line 156
    const/16 v21, 0x0

    .line 157
    .line 158
    const/high16 v22, 0x3f800000    # 1.0f

    .line 159
    const/4 v14, 0x1

    .line 160
    .line 161
    move/from16 v23, v13

    .line 162
    const/4 v13, 0x3

    .line 163
    .line 164
    if-eq v7, v14, :cond_a

    .line 165
    .line 166
    if-eq v7, v15, :cond_c

    .line 167
    .line 168
    if-ne v7, v13, :cond_b

    .line 169
    .line 170
    :cond_a
    move/from16 v7, v22

    .line 171
    goto :goto_6

    .line 172
    .line 173
    :cond_b
    new-instance v0, Lw7/s;

    .line 174
    .line 175
    .line 176
    invoke-direct {v0}, Lw7/s;-><init>()V

    .line 177
    throw v0

    .line 178
    .line 179
    :cond_c
    move/from16 v7, v21

    .line 180
    .line 181
    .line 182
    :goto_6
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 183
    .line 184
    .line 185
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 186
    move-result-object v7

    .line 187
    .line 188
    .line 189
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 190
    move-result-object v24

    .line 191
    .line 192
    check-cast v24, Landroidx/compose/ui/state/ToggleableState;

    .line 193
    .line 194
    .line 195
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Enum;->ordinal()I

    .line 199
    move-result v8

    .line 200
    .line 201
    aget v8, v20, v8

    .line 202
    .line 203
    if-eq v8, v14, :cond_d

    .line 204
    .line 205
    if-eq v8, v15, :cond_f

    .line 206
    .line 207
    if-ne v8, v13, :cond_e

    .line 208
    .line 209
    :cond_d
    move/from16 v8, v22

    .line 210
    goto :goto_7

    .line 211
    .line 212
    :cond_e
    new-instance v0, Lw7/s;

    .line 213
    .line 214
    .line 215
    invoke-direct {v0}, Lw7/s;-><init>()V

    .line 216
    throw v0

    .line 217
    .line 218
    :cond_f
    move/from16 v8, v21

    .line 219
    .line 220
    .line 221
    :goto_7
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 222
    .line 223
    .line 224
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 225
    move-result-object v8

    .line 226
    .line 227
    .line 228
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->k()Landroidx/compose/animation/core/Transition$Segment;

    .line 229
    move-result-object v9

    .line 230
    const/4 v15, 0x0

    .line 231
    .line 232
    .line 233
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    move-result-object v10

    .line 235
    .line 236
    .line 237
    invoke-interface {v6, v9, v0, v10}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    move-result-object v6

    .line 239
    move-object v9, v6

    .line 240
    .line 241
    check-cast v9, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 242
    .line 243
    const/16 v25, 0x0

    .line 244
    .line 245
    move-object/from16 v6, v16

    .line 246
    .line 247
    .line 248
    const v10, 0x6e220c08

    .line 249
    .line 250
    .line 251
    const v15, 0x5370a61d

    .line 252
    move v14, v10

    .line 253
    .line 254
    move-object/from16 v10, v19

    .line 255
    .line 256
    move/from16 v19, v11

    .line 257
    .line 258
    move-object/from16 v11, v17

    .line 259
    .line 260
    move/from16 v26, v12

    .line 261
    move-object v12, v0

    .line 262
    .line 263
    move/from16 v17, v23

    .line 264
    .line 265
    move/from16 v13, v25

    .line 266
    .line 267
    .line 268
    invoke-static/range {v6 .. v13}, Landroidx/compose/animation/core/TransitionKt;->c(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 269
    move-result-object v32

    .line 270
    .line 271
    .line 272
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 273
    .line 274
    .line 275
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 276
    .line 277
    sget-object v6, Landroidx/compose/material/CheckboxKt$CheckboxImpl$checkCenterGravitationShiftFraction$2;->INSTANCE:Landroidx/compose/material/CheckboxKt$CheckboxImpl$checkCenterGravitationShiftFraction$2;

    .line 278
    .line 279
    .line 280
    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 281
    .line 282
    const-string v11, "FloatAnimation"

    .line 283
    .line 284
    .line 285
    invoke-static/range {v18 .. v18}, Landroidx/compose/animation/core/VectorConvertersKt;->i(Lkotlin/jvm/internal/m;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 286
    move-result-object v10

    .line 287
    .line 288
    .line 289
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    .line 293
    move-result-object v7

    .line 294
    .line 295
    check-cast v7, Landroidx/compose/ui/state/ToggleableState;

    .line 296
    .line 297
    .line 298
    const v8, -0x7d1b526b

    .line 299
    .line 300
    .line 301
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 305
    move-result v7

    .line 306
    .line 307
    aget v7, v20, v7

    .line 308
    const/4 v9, 0x1

    .line 309
    .line 310
    if-eq v7, v9, :cond_11

    .line 311
    const/4 v9, 0x2

    .line 312
    .line 313
    if-eq v7, v9, :cond_11

    .line 314
    const/4 v14, 0x3

    .line 315
    .line 316
    if-ne v7, v14, :cond_10

    .line 317
    .line 318
    move/from16 v7, v22

    .line 319
    goto :goto_8

    .line 320
    .line 321
    :cond_10
    new-instance v0, Lw7/s;

    .line 322
    .line 323
    .line 324
    invoke-direct {v0}, Lw7/s;-><init>()V

    .line 325
    throw v0

    .line 326
    :cond_11
    const/4 v14, 0x3

    .line 327
    .line 328
    move/from16 v7, v21

    .line 329
    .line 330
    .line 331
    :goto_8
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 332
    .line 333
    .line 334
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 335
    move-result-object v7

    .line 336
    .line 337
    .line 338
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 339
    move-result-object v9

    .line 340
    .line 341
    check-cast v9, Landroidx/compose/ui/state/ToggleableState;

    .line 342
    .line 343
    .line 344
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 348
    move-result v8

    .line 349
    .line 350
    aget v8, v20, v8

    .line 351
    const/4 v9, 0x1

    .line 352
    .line 353
    if-eq v8, v9, :cond_13

    .line 354
    const/4 v9, 0x2

    .line 355
    .line 356
    if-eq v8, v9, :cond_13

    .line 357
    .line 358
    if-ne v8, v14, :cond_12

    .line 359
    .line 360
    move/from16 v21, v22

    .line 361
    goto :goto_9

    .line 362
    .line 363
    :cond_12
    new-instance v0, Lw7/s;

    .line 364
    .line 365
    .line 366
    invoke-direct {v0}, Lw7/s;-><init>()V

    .line 367
    throw v0

    .line 368
    .line 369
    .line 370
    :cond_13
    :goto_9
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 371
    .line 372
    .line 373
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 374
    move-result-object v8

    .line 375
    .line 376
    .line 377
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->k()Landroidx/compose/animation/core/Transition$Segment;

    .line 378
    move-result-object v9

    .line 379
    const/4 v12, 0x0

    .line 380
    .line 381
    .line 382
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 383
    move-result-object v13

    .line 384
    .line 385
    .line 386
    invoke-interface {v6, v9, v0, v13}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    move-result-object v6

    .line 388
    move-object v9, v6

    .line 389
    .line 390
    check-cast v9, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 391
    .line 392
    move-object/from16 v6, v16

    .line 393
    move-object v12, v0

    .line 394
    .line 395
    move/from16 v13, v25

    .line 396
    .line 397
    .line 398
    invoke-static/range {v6 .. v13}, Landroidx/compose/animation/core/TransitionKt;->c(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 399
    move-result-object v33

    .line 400
    .line 401
    .line 402
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 403
    .line 404
    .line 405
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 406
    .line 407
    .line 408
    const v6, -0x1d58f75c

    .line 409
    .line 410
    .line 411
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 412
    .line 413
    .line 414
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 415
    move-result-object v6

    .line 416
    .line 417
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 421
    move-result-object v7

    .line 422
    .line 423
    if-ne v6, v7, :cond_14

    .line 424
    .line 425
    new-instance v6, Landroidx/compose/material/CheckDrawingCache;

    .line 426
    const/4 v9, 0x0

    .line 427
    const/4 v10, 0x0

    .line 428
    const/4 v11, 0x0

    .line 429
    const/4 v12, 0x7

    .line 430
    const/4 v13, 0x0

    .line 431
    move-object v8, v6

    .line 432
    .line 433
    .line 434
    invoke-direct/range {v8 .. v13}, Landroidx/compose/material/CheckDrawingCache;-><init>(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/PathMeasure;Landroidx/compose/ui/graphics/Path;ILkotlin/jvm/internal/k;)V

    .line 435
    .line 436
    .line 437
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 438
    .line 439
    .line 440
    :cond_14
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 441
    .line 442
    move-object/from16 v28, v6

    .line 443
    .line 444
    check-cast v28, Landroidx/compose/material/CheckDrawingCache;

    .line 445
    .line 446
    shr-int/lit8 v6, v17, 0x6

    .line 447
    .line 448
    and-int/lit8 v6, v6, 0x70

    .line 449
    .line 450
    or-int v6, v19, v6

    .line 451
    .line 452
    .line 453
    invoke-interface {v4, v2, v0, v6}, Landroidx/compose/material/CheckboxColors;->a(Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 454
    move-result-object v31

    .line 455
    .line 456
    and-int/lit8 v6, v17, 0xe

    .line 457
    .line 458
    and-int/lit8 v7, v17, 0x70

    .line 459
    or-int/2addr v6, v7

    .line 460
    .line 461
    move/from16 v7, v26

    .line 462
    .line 463
    and-int/lit16 v7, v7, 0x380

    .line 464
    or-int/2addr v6, v7

    .line 465
    .line 466
    .line 467
    invoke-interface {v4, v1, v2, v0, v6}, Landroidx/compose/material/CheckboxColors;->b(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 468
    move-result-object v29

    .line 469
    .line 470
    .line 471
    invoke-interface {v4, v1, v2, v0, v6}, Landroidx/compose/material/CheckboxColors;->c(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 472
    move-result-object v30

    .line 473
    .line 474
    sget-object v6, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v6}, Landroidx/compose/ui/Alignment$Companion;->e()Landroidx/compose/ui/Alignment;

    .line 478
    move-result-object v6

    .line 479
    const/4 v7, 0x2

    .line 480
    const/4 v8, 0x0

    .line 481
    const/4 v9, 0x0

    .line 482
    .line 483
    .line 484
    invoke-static {v3, v6, v9, v7, v8}, Landroidx/compose/foundation/layout/SizeKt;->H(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 485
    move-result-object v6

    .line 486
    .line 487
    sget v8, Landroidx/compose/material/CheckboxKt;->CheckboxSize:F

    .line 488
    .line 489
    .line 490
    invoke-static {v6, v8}, Landroidx/compose/foundation/layout/SizeKt;->t(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 491
    move-result-object v6

    .line 492
    const/4 v8, 0x6

    .line 493
    .line 494
    new-array v10, v8, [Ljava/lang/Object;

    .line 495
    .line 496
    aput-object v29, v10, v9

    .line 497
    const/4 v9, 0x1

    .line 498
    .line 499
    aput-object v30, v10, v9

    .line 500
    .line 501
    aput-object v31, v10, v7

    .line 502
    .line 503
    aput-object v32, v10, v14

    .line 504
    const/4 v7, 0x4

    .line 505
    .line 506
    aput-object v33, v10, v7

    .line 507
    const/4 v7, 0x5

    .line 508
    .line 509
    aput-object v28, v10, v7

    .line 510
    .line 511
    .line 512
    const v7, -0x21de6e89

    .line 513
    .line 514
    .line 515
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 516
    const/4 v7, 0x0

    .line 517
    const/4 v12, 0x0

    .line 518
    .line 519
    :goto_a
    if-ge v12, v8, :cond_15

    .line 520
    .line 521
    aget-object v9, v10, v12

    .line 522
    .line 523
    .line 524
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 525
    move-result v9

    .line 526
    or-int/2addr v7, v9

    .line 527
    .line 528
    add-int/lit8 v12, v12, 0x1

    .line 529
    goto :goto_a

    .line 530
    .line 531
    .line 532
    :cond_15
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 533
    move-result-object v8

    .line 534
    .line 535
    if-nez v7, :cond_16

    .line 536
    .line 537
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 541
    move-result-object v7

    .line 542
    .line 543
    if-ne v8, v7, :cond_17

    .line 544
    .line 545
    :cond_16
    new-instance v8, Landroidx/compose/material/CheckboxKt$CheckboxImpl$1$1;

    .line 546
    .line 547
    move-object/from16 v27, v8

    .line 548
    .line 549
    .line 550
    invoke-direct/range {v27 .. v33}, Landroidx/compose/material/CheckboxKt$CheckboxImpl$1$1;-><init>(Landroidx/compose/material/CheckDrawingCache;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    .line 551
    .line 552
    .line 553
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 554
    .line 555
    .line 556
    :cond_17
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 557
    .line 558
    check-cast v8, Le8/l;

    .line 559
    const/4 v7, 0x0

    .line 560
    .line 561
    .line 562
    invoke-static {v6, v8, v0, v7}, Landroidx/compose/foundation/CanvasKt;->a(Landroidx/compose/ui/Modifier;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 563
    .line 564
    .line 565
    :goto_b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 566
    move-result-object v6

    .line 567
    .line 568
    if-nez v6, :cond_18

    .line 569
    goto :goto_c

    .line 570
    .line 571
    :cond_18
    new-instance v7, Landroidx/compose/material/CheckboxKt$CheckboxImpl$2;

    .line 572
    move-object v0, v7

    .line 573
    .line 574
    move/from16 v1, p0

    .line 575
    .line 576
    move-object/from16 v2, p1

    .line 577
    .line 578
    move-object/from16 v3, p2

    .line 579
    .line 580
    move-object/from16 v4, p3

    .line 581
    .line 582
    move/from16 v5, p5

    .line 583
    .line 584
    .line 585
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/CheckboxKt$CheckboxImpl$2;-><init>(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/ui/Modifier;Landroidx/compose/material/CheckboxColors;I)V

    .line 586
    .line 587
    .line 588
    invoke-interface {v6, v7}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 589
    :goto_c
    return-void
.end method

.method private static final c(Landroidx/compose/runtime/State;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)J"
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
    check-cast p0, Landroidx/compose/ui/graphics/Color;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method private static final d(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
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
    check-cast p0, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final e(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
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
    check-cast p0, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final f(Landroidx/compose/runtime/State;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)J"
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
    check-cast p0, Landroidx/compose/ui/graphics/Color;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method private static final g(Landroidx/compose/runtime/State;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)J"
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
    check-cast p0, Landroidx/compose/ui/graphics/Color;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public static final h(Landroidx/compose/ui/state/ToggleableState;Le8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/CheckboxColors;Landroidx/compose/runtime/Composer;II)V
    .locals 25
    .param p0    # Landroidx/compose/ui/state/ToggleableState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/material/CheckboxColors;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/state/ToggleableState;",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/material/CheckboxColors;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v7, p0

    .line 3
    .line 4
    move-object/from16 v8, p1

    .line 5
    .line 6
    move/from16 v9, p7

    .line 7
    .line 8
    const-string v0, "state"

    .line 9
    .line 10
    .line 11
    invoke-static {v7, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x79127e9a

    .line 15
    .line 16
    move-object/from16 v1, p6

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 20
    move-result-object v6

    .line 21
    .line 22
    and-int/lit8 v0, p8, 0x1

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    or-int/lit8 v0, v9, 0x6

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_0
    and-int/lit8 v0, v9, 0xe

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    const/4 v0, 0x4

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x2

    .line 41
    :goto_0
    or-int/2addr v0, v9

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v0, v9

    .line 44
    .line 45
    :goto_1
    and-int/lit8 v1, p8, 0x2

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    or-int/lit8 v0, v0, 0x30

    .line 50
    goto :goto_3

    .line 51
    .line 52
    :cond_3
    and-int/lit8 v1, v9, 0x70

    .line 53
    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    .line 57
    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 58
    move-result v1

    .line 59
    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    const/16 v1, 0x20

    .line 63
    goto :goto_2

    .line 64
    .line 65
    :cond_4
    const/16 v1, 0x10

    .line 66
    :goto_2
    or-int/2addr v0, v1

    .line 67
    .line 68
    :cond_5
    :goto_3
    and-int/lit8 v1, p8, 0x4

    .line 69
    .line 70
    if-eqz v1, :cond_7

    .line 71
    .line 72
    or-int/lit16 v0, v0, 0x180

    .line 73
    .line 74
    :cond_6
    move-object/from16 v2, p2

    .line 75
    goto :goto_5

    .line 76
    .line 77
    :cond_7
    and-int/lit16 v2, v9, 0x380

    .line 78
    .line 79
    if-nez v2, :cond_6

    .line 80
    .line 81
    move-object/from16 v2, p2

    .line 82
    .line 83
    .line 84
    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 85
    move-result v3

    .line 86
    .line 87
    if-eqz v3, :cond_8

    .line 88
    .line 89
    const/16 v3, 0x100

    .line 90
    goto :goto_4

    .line 91
    .line 92
    :cond_8
    const/16 v3, 0x80

    .line 93
    :goto_4
    or-int/2addr v0, v3

    .line 94
    .line 95
    :goto_5
    and-int/lit8 v3, p8, 0x8

    .line 96
    .line 97
    if-eqz v3, :cond_a

    .line 98
    .line 99
    or-int/lit16 v0, v0, 0xc00

    .line 100
    .line 101
    :cond_9
    move/from16 v4, p3

    .line 102
    goto :goto_7

    .line 103
    .line 104
    :cond_a
    and-int/lit16 v4, v9, 0x1c00

    .line 105
    .line 106
    if-nez v4, :cond_9

    .line 107
    .line 108
    move/from16 v4, p3

    .line 109
    .line 110
    .line 111
    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 112
    move-result v5

    .line 113
    .line 114
    if-eqz v5, :cond_b

    .line 115
    .line 116
    const/16 v5, 0x800

    .line 117
    goto :goto_6

    .line 118
    .line 119
    :cond_b
    const/16 v5, 0x400

    .line 120
    :goto_6
    or-int/2addr v0, v5

    .line 121
    .line 122
    :goto_7
    and-int/lit8 v5, p8, 0x10

    .line 123
    .line 124
    if-eqz v5, :cond_d

    .line 125
    .line 126
    or-int/lit16 v0, v0, 0x6000

    .line 127
    .line 128
    :cond_c
    move-object/from16 v10, p4

    .line 129
    goto :goto_9

    .line 130
    .line 131
    .line 132
    :cond_d
    const v10, 0xe000

    .line 133
    and-int/2addr v10, v9

    .line 134
    .line 135
    if-nez v10, :cond_c

    .line 136
    .line 137
    move-object/from16 v10, p4

    .line 138
    .line 139
    .line 140
    invoke-interface {v6, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 141
    move-result v11

    .line 142
    .line 143
    if-eqz v11, :cond_e

    .line 144
    .line 145
    const/16 v11, 0x4000

    .line 146
    goto :goto_8

    .line 147
    .line 148
    :cond_e
    const/16 v11, 0x2000

    .line 149
    :goto_8
    or-int/2addr v0, v11

    .line 150
    .line 151
    :goto_9
    const/high16 v11, 0x70000

    .line 152
    and-int/2addr v11, v9

    .line 153
    .line 154
    if-nez v11, :cond_11

    .line 155
    .line 156
    and-int/lit8 v11, p8, 0x20

    .line 157
    .line 158
    if-nez v11, :cond_f

    .line 159
    .line 160
    move-object/from16 v11, p5

    .line 161
    .line 162
    .line 163
    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 164
    move-result v12

    .line 165
    .line 166
    if-eqz v12, :cond_10

    .line 167
    .line 168
    const/high16 v12, 0x20000

    .line 169
    goto :goto_a

    .line 170
    .line 171
    :cond_f
    move-object/from16 v11, p5

    .line 172
    .line 173
    :cond_10
    const/high16 v12, 0x10000

    .line 174
    :goto_a
    or-int/2addr v0, v12

    .line 175
    goto :goto_b

    .line 176
    .line 177
    :cond_11
    move-object/from16 v11, p5

    .line 178
    .line 179
    .line 180
    :goto_b
    const v12, 0x5b6db

    .line 181
    and-int/2addr v12, v0

    .line 182
    .line 183
    .line 184
    const v13, 0x12492

    .line 185
    .line 186
    if-ne v12, v13, :cond_13

    .line 187
    .line 188
    .line 189
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->b()Z

    .line 190
    move-result v12

    .line 191
    .line 192
    if-nez v12, :cond_12

    .line 193
    goto :goto_c

    .line 194
    .line 195
    .line 196
    :cond_12
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->g()V

    .line 197
    move-object v3, v2

    .line 198
    move-object v5, v10

    .line 199
    move-object v10, v6

    .line 200
    move-object v6, v11

    .line 201
    .line 202
    goto/16 :goto_14

    .line 203
    .line 204
    .line 205
    :cond_13
    :goto_c
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->J()V

    .line 206
    .line 207
    and-int/lit8 v12, v9, 0x1

    .line 208
    .line 209
    .line 210
    const v24, -0x70001

    .line 211
    .line 212
    if-eqz v12, :cond_16

    .line 213
    .line 214
    .line 215
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->h()Z

    .line 216
    move-result v12

    .line 217
    .line 218
    if-eqz v12, :cond_14

    .line 219
    goto :goto_e

    .line 220
    .line 221
    .line 222
    :cond_14
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->g()V

    .line 223
    .line 224
    and-int/lit8 v1, p8, 0x20

    .line 225
    .line 226
    if-eqz v1, :cond_15

    .line 227
    .line 228
    and-int v0, v0, v24

    .line 229
    .line 230
    :cond_15
    move/from16 v20, v0

    .line 231
    move-object v5, v2

    .line 232
    .line 233
    move/from16 v17, v4

    .line 234
    .line 235
    move-object/from16 v18, v10

    .line 236
    .line 237
    :goto_d
    move-object/from16 v19, v11

    .line 238
    goto :goto_12

    .line 239
    .line 240
    :cond_16
    :goto_e
    if-eqz v1, :cond_17

    .line 241
    .line 242
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 243
    goto :goto_f

    .line 244
    :cond_17
    move-object v1, v2

    .line 245
    .line 246
    :goto_f
    if-eqz v3, :cond_18

    .line 247
    const/4 v2, 0x1

    .line 248
    goto :goto_10

    .line 249
    :cond_18
    move v2, v4

    .line 250
    .line 251
    :goto_10
    if-eqz v5, :cond_1a

    .line 252
    .line 253
    .line 254
    const v3, -0x1d58f75c

    .line 255
    .line 256
    .line 257
    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 258
    .line 259
    .line 260
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 261
    move-result-object v3

    .line 262
    .line 263
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 267
    move-result-object v4

    .line 268
    .line 269
    if-ne v3, v4, :cond_19

    .line 270
    .line 271
    .line 272
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 273
    move-result-object v3

    .line 274
    .line 275
    .line 276
    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    :cond_19
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->Q()V

    .line 280
    .line 281
    check-cast v3, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 282
    goto :goto_11

    .line 283
    :cond_1a
    move-object v3, v10

    .line 284
    .line 285
    :goto_11
    and-int/lit8 v4, p8, 0x20

    .line 286
    .line 287
    if-eqz v4, :cond_1b

    .line 288
    .line 289
    sget-object v10, Landroidx/compose/material/CheckboxDefaults;->INSTANCE:Landroidx/compose/material/CheckboxDefaults;

    .line 290
    .line 291
    const-wide/16 v11, 0x0

    .line 292
    .line 293
    const-wide/16 v13, 0x0

    .line 294
    .line 295
    const-wide/16 v15, 0x0

    .line 296
    .line 297
    const-wide/16 v17, 0x0

    .line 298
    .line 299
    const-wide/16 v19, 0x0

    .line 300
    .line 301
    const/high16 v22, 0x30000

    .line 302
    .line 303
    const/16 v23, 0x1f

    .line 304
    .line 305
    move-object/from16 v21, v6

    .line 306
    .line 307
    .line 308
    invoke-virtual/range {v10 .. v23}, Landroidx/compose/material/CheckboxDefaults;->a(JJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/CheckboxColors;

    .line 309
    move-result-object v4

    .line 310
    .line 311
    and-int v0, v0, v24

    .line 312
    .line 313
    move/from16 v20, v0

    .line 314
    move-object v5, v1

    .line 315
    .line 316
    move/from16 v17, v2

    .line 317
    .line 318
    move-object/from16 v18, v3

    .line 319
    .line 320
    move-object/from16 v19, v4

    .line 321
    goto :goto_12

    .line 322
    .line 323
    :cond_1b
    move/from16 v20, v0

    .line 324
    move-object v5, v1

    .line 325
    .line 326
    move/from16 v17, v2

    .line 327
    .line 328
    move-object/from16 v18, v3

    .line 329
    goto :goto_d

    .line 330
    .line 331
    .line 332
    :goto_12
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->A()V

    .line 333
    .line 334
    .line 335
    const v0, -0x5a73f7ca

    .line 336
    .line 337
    .line 338
    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 339
    .line 340
    if-eqz v8, :cond_1c

    .line 341
    .line 342
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 343
    .line 344
    sget-object v1, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/Role$Companion;->b()I

    .line 348
    move-result v1

    .line 349
    const/4 v10, 0x0

    .line 350
    .line 351
    sget v11, Landroidx/compose/material/CheckboxKt;->CheckboxRippleRadius:F

    .line 352
    .line 353
    const-wide/16 v12, 0x0

    .line 354
    .line 355
    const/16 v15, 0x36

    .line 356
    .line 357
    const/16 v16, 0x4

    .line 358
    move-object v14, v6

    .line 359
    .line 360
    .line 361
    invoke-static/range {v10 .. v16}, Landroidx/compose/material/ripple/RippleKt;->e(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    .line 362
    move-result-object v3

    .line 363
    .line 364
    .line 365
    invoke-static {v1}, Landroidx/compose/ui/semantics/Role;->g(I)Landroidx/compose/ui/semantics/Role;

    .line 366
    move-result-object v10

    .line 367
    .line 368
    move-object/from16 v1, p0

    .line 369
    .line 370
    move-object/from16 v2, v18

    .line 371
    .line 372
    move/from16 v4, v17

    .line 373
    move-object v11, v5

    .line 374
    move-object v5, v10

    .line 375
    move-object v10, v6

    .line 376
    .line 377
    move-object/from16 v6, p1

    .line 378
    .line 379
    .line 380
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/selection/ToggleableKt;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Le8/a;)Landroidx/compose/ui/Modifier;

    .line 381
    move-result-object v0

    .line 382
    goto :goto_13

    .line 383
    :cond_1c
    move-object v11, v5

    .line 384
    move-object v10, v6

    .line 385
    .line 386
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 387
    .line 388
    .line 389
    :goto_13
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->Q()V

    .line 390
    .line 391
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 392
    .line 393
    if-eqz v8, :cond_1d

    .line 394
    .line 395
    .line 396
    invoke-static {v1}, Landroidx/compose/material/TouchTargetKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 397
    move-result-object v1

    .line 398
    .line 399
    .line 400
    :cond_1d
    invoke-interface {v11, v1}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 401
    move-result-object v1

    .line 402
    .line 403
    .line 404
    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 405
    move-result-object v0

    .line 406
    .line 407
    sget v1, Landroidx/compose/material/CheckboxKt;->CheckboxDefaultPadding:F

    .line 408
    .line 409
    .line 410
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 411
    move-result-object v2

    .line 412
    .line 413
    shr-int/lit8 v0, v20, 0x9

    .line 414
    .line 415
    and-int/lit8 v0, v0, 0xe

    .line 416
    .line 417
    shl-int/lit8 v1, v20, 0x3

    .line 418
    .line 419
    and-int/lit8 v1, v1, 0x70

    .line 420
    or-int/2addr v0, v1

    .line 421
    .line 422
    shr-int/lit8 v1, v20, 0x6

    .line 423
    .line 424
    and-int/lit16 v1, v1, 0x1c00

    .line 425
    .line 426
    or-int v5, v0, v1

    .line 427
    .line 428
    move/from16 v0, v17

    .line 429
    .line 430
    move-object/from16 v1, p0

    .line 431
    .line 432
    move-object/from16 v3, v19

    .line 433
    move-object v4, v10

    .line 434
    .line 435
    .line 436
    invoke-static/range {v0 .. v5}, Landroidx/compose/material/CheckboxKt;->b(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/ui/Modifier;Landroidx/compose/material/CheckboxColors;Landroidx/compose/runtime/Composer;I)V

    .line 437
    move-object v3, v11

    .line 438
    .line 439
    move/from16 v4, v17

    .line 440
    .line 441
    move-object/from16 v5, v18

    .line 442
    .line 443
    move-object/from16 v6, v19

    .line 444
    .line 445
    .line 446
    :goto_14
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 447
    move-result-object v10

    .line 448
    .line 449
    if-nez v10, :cond_1e

    .line 450
    goto :goto_15

    .line 451
    .line 452
    :cond_1e
    new-instance v11, Landroidx/compose/material/CheckboxKt$TriStateCheckbox$2;

    .line 453
    move-object v0, v11

    .line 454
    .line 455
    move-object/from16 v1, p0

    .line 456
    .line 457
    move-object/from16 v2, p1

    .line 458
    .line 459
    move/from16 v7, p7

    .line 460
    .line 461
    move/from16 v8, p8

    .line 462
    .line 463
    .line 464
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/CheckboxKt$TriStateCheckbox$2;-><init>(Landroidx/compose/ui/state/ToggleableState;Le8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/CheckboxColors;II)V

    .line 465
    .line 466
    .line 467
    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 468
    :goto_15
    return-void
.end method

.method public static final synthetic i(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/ui/Modifier;Landroidx/compose/material/CheckboxColors;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/CheckboxKt;->b(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/ui/Modifier;Landroidx/compose/material/CheckboxColors;Landroidx/compose/runtime/Composer;I)V

    .line 4
    return-void
.end method

.method public static final synthetic j(Landroidx/compose/runtime/State;)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/material/CheckboxKt;->c(Landroidx/compose/runtime/State;)J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static final synthetic k(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/material/CheckboxKt;->d(Landroidx/compose/runtime/State;)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic l(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/material/CheckboxKt;->e(Landroidx/compose/runtime/State;)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic m(Landroidx/compose/runtime/State;)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/material/CheckboxKt;->f(Landroidx/compose/runtime/State;)J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static final synthetic n(Landroidx/compose/runtime/State;)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/material/CheckboxKt;->g(Landroidx/compose/runtime/State;)J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static final synthetic o(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJFF)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p6}, Landroidx/compose/material/CheckboxKt;->s(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJFF)V

    .line 4
    return-void
.end method

.method public static final synthetic p(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFFFLandroidx/compose/material/CheckDrawingCache;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p6}, Landroidx/compose/material/CheckboxKt;->t(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFFFLandroidx/compose/material/CheckDrawingCache;)V

    .line 4
    return-void
.end method

.method public static final synthetic q()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/CheckboxKt;->RadiusSize:F

    return v0
.end method

.method public static final synthetic r()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/CheckboxKt;->StrokeWidth:F

    return v0
.end method

.method private static final s(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJFF)V
    .locals 51

    .line 1
    .line 2
    move/from16 v0, p5

    .line 3
    .line 4
    move/from16 v9, p6

    .line 5
    .line 6
    const/high16 v1, 0x40000000    # 2.0f

    .line 7
    .line 8
    div-float v10, v9, v1

    .line 9
    .line 10
    new-instance v20, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    .line 16
    const/16 v7, 0x1e

    .line 17
    const/4 v8, 0x0

    .line 18
    .line 19
    move-object/from16 v1, v20

    .line 20
    .line 21
    move/from16 v2, p6

    .line 22
    .line 23
    .line 24
    invoke-direct/range {v1 .. v8}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/k;)V

    .line 25
    .line 26
    .line 27
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 28
    move-result-wide v1

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 32
    move-result v1

    .line 33
    .line 34
    .line 35
    invoke-static/range {p1 .. p4}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v4, 0x2

    .line 39
    const/4 v5, 0x0

    .line 40
    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    const-wide/16 v24, 0x0

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v1}, Landroidx/compose/ui/geometry/SizeKt;->a(FF)J

    .line 47
    move-result-wide v26

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v5, v4, v3}, Landroidx/compose/ui/geometry/CornerRadiusKt;->b(FFILjava/lang/Object;)J

    .line 51
    move-result-wide v28

    .line 52
    .line 53
    sget-object v30, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 54
    .line 55
    const/16 v31, 0x0

    .line 56
    .line 57
    const/16 v32, 0x0

    .line 58
    .line 59
    const/16 v33, 0x0

    .line 60
    .line 61
    const/16 v34, 0xe2

    .line 62
    .line 63
    const/16 v35, 0x0

    .line 64
    .line 65
    move-object/from16 v21, p0

    .line 66
    .line 67
    move-wide/from16 v22, p1

    .line 68
    .line 69
    .line 70
    invoke-static/range {v21 .. v35}, Landroidx/compose/ui/graphics/drawscope/a;->p(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 71
    goto :goto_0

    .line 72
    .line 73
    .line 74
    :cond_0
    invoke-static {v9, v9}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 75
    move-result-wide v39

    .line 76
    int-to-float v2, v4

    .line 77
    mul-float/2addr v2, v9

    .line 78
    .line 79
    sub-float v2, v1, v2

    .line 80
    .line 81
    .line 82
    invoke-static {v2, v2}, Landroidx/compose/ui/geometry/SizeKt;->a(FF)J

    .line 83
    move-result-wide v41

    .line 84
    .line 85
    sub-float v2, v0, v9

    .line 86
    .line 87
    .line 88
    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    .line 89
    move-result v2

    .line 90
    .line 91
    .line 92
    invoke-static {v2, v5, v4, v3}, Landroidx/compose/ui/geometry/CornerRadiusKt;->b(FFILjava/lang/Object;)J

    .line 93
    move-result-wide v43

    .line 94
    .line 95
    sget-object v45, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 96
    .line 97
    const/16 v46, 0x0

    .line 98
    .line 99
    const/16 v47, 0x0

    .line 100
    .line 101
    const/16 v48, 0x0

    .line 102
    .line 103
    const/16 v49, 0xe0

    .line 104
    .line 105
    const/16 v50, 0x0

    .line 106
    .line 107
    move-object/from16 v36, p0

    .line 108
    .line 109
    move-wide/from16 v37, p1

    .line 110
    .line 111
    .line 112
    invoke-static/range {v36 .. v50}, Landroidx/compose/ui/graphics/drawscope/a;->p(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v10, v10}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 116
    move-result-wide v14

    .line 117
    sub-float/2addr v1, v9

    .line 118
    .line 119
    .line 120
    invoke-static {v1, v1}, Landroidx/compose/ui/geometry/SizeKt;->a(FF)J

    .line 121
    move-result-wide v16

    .line 122
    sub-float/2addr v0, v10

    .line 123
    .line 124
    .line 125
    invoke-static {v0, v5, v4, v3}, Landroidx/compose/ui/geometry/CornerRadiusKt;->b(FFILjava/lang/Object;)J

    .line 126
    move-result-wide v18

    .line 127
    .line 128
    const/16 v21, 0x0

    .line 129
    .line 130
    const/16 v22, 0x0

    .line 131
    .line 132
    const/16 v23, 0x0

    .line 133
    .line 134
    const/16 v24, 0xe0

    .line 135
    .line 136
    const/16 v25, 0x0

    .line 137
    .line 138
    move-object/from16 v11, p0

    .line 139
    .line 140
    move-wide/from16 v12, p3

    .line 141
    .line 142
    .line 143
    invoke-static/range {v11 .. v25}, Landroidx/compose/ui/graphics/drawscope/a;->p(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 144
    :goto_0
    return-void
.end method

.method private static final t(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFFFLandroidx/compose/material/CheckDrawingCache;)V
    .locals 11

    .line 1
    move v0, p4

    .line 2
    .line 3
    new-instance v9, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 4
    const/4 v3, 0x0

    .line 5
    .line 6
    sget-object v1, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->c()I

    .line 10
    move-result v4

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    .line 14
    const/16 v7, 0x1a

    .line 15
    const/4 v8, 0x0

    .line 16
    move-object v1, v9

    .line 17
    .line 18
    move/from16 v2, p5

    .line 19
    .line 20
    .line 21
    invoke-direct/range {v1 .. v8}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/k;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 25
    move-result-wide v1

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 29
    move-result v1

    .line 30
    .line 31
    .line 32
    const v2, 0x3ecccccd    # 0.4f

    .line 33
    .line 34
    const/high16 v3, 0x3f000000    # 0.5f

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v3, p4}, Landroidx/compose/ui/util/MathHelpersKt;->a(FFF)F

    .line 38
    move-result v2

    .line 39
    .line 40
    .line 41
    const v4, 0x3f333333    # 0.7f

    .line 42
    .line 43
    .line 44
    invoke-static {v4, v3, p4}, Landroidx/compose/ui/util/MathHelpersKt;->a(FFF)F

    .line 45
    move-result v4

    .line 46
    .line 47
    .line 48
    invoke-static {v3, v3, p4}, Landroidx/compose/ui/util/MathHelpersKt;->a(FFF)F

    .line 49
    move-result v5

    .line 50
    .line 51
    .line 52
    const v6, 0x3e99999a    # 0.3f

    .line 53
    .line 54
    .line 55
    invoke-static {v6, v3, p4}, Landroidx/compose/ui/util/MathHelpersKt;->a(FFF)F

    .line 56
    move-result v0

    .line 57
    .line 58
    .line 59
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material/CheckDrawingCache;->a()Landroidx/compose/ui/graphics/Path;

    .line 60
    move-result-object v3

    .line 61
    .line 62
    .line 63
    invoke-interface {v3}, Landroidx/compose/ui/graphics/Path;->reset()V

    .line 64
    .line 65
    .line 66
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material/CheckDrawingCache;->a()Landroidx/compose/ui/graphics/Path;

    .line 67
    move-result-object v3

    .line 68
    .line 69
    .line 70
    const v6, 0x3e4ccccd    # 0.2f

    .line 71
    mul-float/2addr v6, v1

    .line 72
    mul-float/2addr v5, v1

    .line 73
    .line 74
    .line 75
    invoke-interface {v3, v6, v5}, Landroidx/compose/ui/graphics/Path;->moveTo(FF)V

    .line 76
    .line 77
    .line 78
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material/CheckDrawingCache;->a()Landroidx/compose/ui/graphics/Path;

    .line 79
    move-result-object v3

    .line 80
    mul-float/2addr v2, v1

    .line 81
    mul-float/2addr v4, v1

    .line 82
    .line 83
    .line 84
    invoke-interface {v3, v2, v4}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 85
    .line 86
    .line 87
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material/CheckDrawingCache;->a()Landroidx/compose/ui/graphics/Path;

    .line 88
    move-result-object v2

    .line 89
    .line 90
    .line 91
    const v3, 0x3f4ccccd    # 0.8f

    .line 92
    mul-float/2addr v3, v1

    .line 93
    mul-float/2addr v1, v0

    .line 94
    .line 95
    .line 96
    invoke-interface {v2, v3, v1}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 97
    .line 98
    .line 99
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material/CheckDrawingCache;->b()Landroidx/compose/ui/graphics/PathMeasure;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    .line 103
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material/CheckDrawingCache;->a()Landroidx/compose/ui/graphics/Path;

    .line 104
    move-result-object v1

    .line 105
    const/4 v2, 0x0

    .line 106
    .line 107
    .line 108
    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/graphics/PathMeasure;->b(Landroidx/compose/ui/graphics/Path;Z)V

    .line 109
    .line 110
    .line 111
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material/CheckDrawingCache;->c()Landroidx/compose/ui/graphics/Path;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    .line 115
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Path;->reset()V

    .line 116
    .line 117
    .line 118
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material/CheckDrawingCache;->b()Landroidx/compose/ui/graphics/PathMeasure;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    .line 122
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material/CheckDrawingCache;->b()Landroidx/compose/ui/graphics/PathMeasure;

    .line 123
    move-result-object v1

    .line 124
    .line 125
    .line 126
    invoke-interface {v1}, Landroidx/compose/ui/graphics/PathMeasure;->getLength()F

    .line 127
    move-result v1

    .line 128
    mul-float/2addr v1, p3

    .line 129
    .line 130
    .line 131
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material/CheckDrawingCache;->c()Landroidx/compose/ui/graphics/Path;

    .line 132
    move-result-object v2

    .line 133
    const/4 v3, 0x1

    .line 134
    const/4 v4, 0x0

    .line 135
    .line 136
    .line 137
    invoke-interface {v0, v4, v1, v2, v3}, Landroidx/compose/ui/graphics/PathMeasure;->a(FFLandroidx/compose/ui/graphics/Path;Z)Z

    .line 138
    .line 139
    .line 140
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material/CheckDrawingCache;->c()Landroidx/compose/ui/graphics/Path;

    .line 141
    move-result-object v1

    .line 142
    const/4 v6, 0x0

    .line 143
    const/4 v7, 0x0

    .line 144
    .line 145
    const/16 v8, 0x34

    .line 146
    const/4 v10, 0x0

    .line 147
    move-object v0, p0

    .line 148
    move-wide v2, p1

    .line 149
    move-object v5, v9

    .line 150
    move-object v9, v10

    .line 151
    .line 152
    .line 153
    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/graphics/drawscope/a;->k(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 154
    return-void
.end method
