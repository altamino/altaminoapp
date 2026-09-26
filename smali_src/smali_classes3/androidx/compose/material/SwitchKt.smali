.class public final Landroidx/compose/material/SwitchKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSwitch.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Switch.kt\nandroidx/compose/material/SwitchKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 7 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 8 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 9 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 10 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,376:1\n25#2:377\n460#2,13:406\n473#2,3:420\n25#2:425\n50#2:432\n49#2:433\n36#2:440\n36#2:450\n1057#3,6:378\n1057#3,6:426\n1057#3,6:434\n1057#3,6:441\n1057#3,6:451\n76#4:384\n76#4:386\n76#4:394\n76#4:447\n76#4:448\n1#5:385\n67#6,6:387\n73#6:419\n77#6:424\n75#7:393\n76#7,11:395\n89#7:423\n52#8:449\n59#8:464\n76#9:457\n76#9:458\n155#10:459\n155#10:460\n155#10:461\n155#10:462\n155#10:463\n155#10:465\n155#10:466\n*S KotlinDebug\n*F\n+ 1 Switch.kt\nandroidx/compose/material/SwitchKt\n*L\n95#1:377\n116#1:406,13\n116#1:420,3\n182#1:425\n184#1:432\n184#1:433\n204#1:440\n219#1:450\n95#1:378,6\n182#1:426,6\n184#1:434,6\n204#1:441,6\n219#1:451,6\n99#1:384\n101#1:386\n116#1:394\n208#1:447\n209#1:448\n116#1:387,6\n116#1:419\n116#1:424\n116#1:393\n116#1:395,11\n116#1:423\n209#1:449\n250#1:464\n203#1:457\n207#1:458\n241#1:459\n242#1:460\n243#1:461\n245#1:462\n247#1:463\n254#1:465\n255#1:466\n*E\n"
.end annotation


# static fields
.field private static final AnimationSpec:Landroidx/compose/animation/core/TweenSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TweenSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DefaultSwitchPadding:F

.field private static final SwitchHeight:F

.field private static final SwitchWidth:F

.field private static final ThumbDefaultElevation:F

.field private static final ThumbDiameter:F

.field private static final ThumbPathLength:F

.field private static final ThumbPressedElevation:F

.field private static final ThumbRippleRadius:F

.field private static final TrackStrokeWidth:F

.field private static final TrackWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    .line 2
    const/16 v0, 0x22

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
    sput v0, Landroidx/compose/material/SwitchKt;->TrackWidth:F

    .line 10
    .line 11
    const/16 v1, 0xe

    .line 12
    int-to-float v1, v1

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 16
    move-result v1

    .line 17
    .line 18
    sput v1, Landroidx/compose/material/SwitchKt;->TrackStrokeWidth:F

    .line 19
    .line 20
    const/16 v1, 0x14

    .line 21
    int-to-float v1, v1

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 25
    move-result v1

    .line 26
    .line 27
    sput v1, Landroidx/compose/material/SwitchKt;->ThumbDiameter:F

    .line 28
    .line 29
    const/16 v2, 0x18

    .line 30
    int-to-float v2, v2

    .line 31
    .line 32
    .line 33
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 34
    move-result v2

    .line 35
    .line 36
    sput v2, Landroidx/compose/material/SwitchKt;->ThumbRippleRadius:F

    .line 37
    const/4 v2, 0x2

    .line 38
    int-to-float v2, v2

    .line 39
    .line 40
    .line 41
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 42
    move-result v2

    .line 43
    .line 44
    sput v2, Landroidx/compose/material/SwitchKt;->DefaultSwitchPadding:F

    .line 45
    .line 46
    sput v0, Landroidx/compose/material/SwitchKt;->SwitchWidth:F

    .line 47
    .line 48
    sput v1, Landroidx/compose/material/SwitchKt;->SwitchHeight:F

    .line 49
    sub-float/2addr v0, v1

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 53
    move-result v0

    .line 54
    .line 55
    sput v0, Landroidx/compose/material/SwitchKt;->ThumbPathLength:F

    .line 56
    .line 57
    new-instance v0, Landroidx/compose/animation/core/TweenSpec;

    .line 58
    .line 59
    const/16 v2, 0x64

    .line 60
    const/4 v3, 0x0

    .line 61
    const/4 v4, 0x0

    .line 62
    const/4 v5, 0x6

    .line 63
    const/4 v6, 0x0

    .line 64
    move-object v1, v0

    .line 65
    .line 66
    .line 67
    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/k;)V

    .line 68
    .line 69
    sput-object v0, Landroidx/compose/material/SwitchKt;->AnimationSpec:Landroidx/compose/animation/core/TweenSpec;

    .line 70
    const/4 v0, 0x1

    .line 71
    int-to-float v0, v0

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 75
    move-result v0

    .line 76
    .line 77
    sput v0, Landroidx/compose/material/SwitchKt;->ThumbDefaultElevation:F

    .line 78
    const/4 v0, 0x6

    .line 79
    int-to-float v0, v0

    .line 80
    .line 81
    .line 82
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 83
    move-result v0

    .line 84
    .line 85
    sput v0, Landroidx/compose/material/SwitchKt;->ThumbPressedElevation:F

    .line 86
    return-void
.end method

.method public static final a(ZLe8/l;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SwitchColors;Landroidx/compose/runtime/Composer;II)V
    .locals 35
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
    .param p5    # Landroidx/compose/material/SwitchColors;
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
            "Landroidx/compose/material/SwitchColors;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v7, p1

    .line 3
    .line 4
    move/from16 v8, p7

    .line 5
    .line 6
    .line 7
    const v0, 0x18ab249

    .line 8
    .line 9
    move-object/from16 v1, p6

    .line 10
    .line 11
    .line 12
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    and-int/lit8 v1, p8, 0x1

    .line 16
    const/4 v6, 0x2

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    or-int/lit8 v1, v8, 0x6

    .line 21
    .line 22
    move/from16 v5, p0

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_0
    and-int/lit8 v1, v8, 0xe

    .line 26
    .line 27
    move/from16 v5, p0

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 33
    move-result v1

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    const/4 v1, 0x4

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v1, v6

    .line 39
    :goto_0
    or-int/2addr v1, v8

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move v1, v8

    .line 42
    .line 43
    :goto_1
    and-int/lit8 v2, p8, 0x2

    .line 44
    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    or-int/lit8 v1, v1, 0x30

    .line 48
    goto :goto_3

    .line 49
    .line 50
    :cond_3
    and-int/lit8 v2, v8, 0x70

    .line 51
    .line 52
    if-nez v2, :cond_5

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 56
    move-result v2

    .line 57
    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    const/16 v2, 0x20

    .line 61
    goto :goto_2

    .line 62
    .line 63
    :cond_4
    const/16 v2, 0x10

    .line 64
    :goto_2
    or-int/2addr v1, v2

    .line 65
    .line 66
    :cond_5
    :goto_3
    and-int/lit8 v2, p8, 0x4

    .line 67
    .line 68
    if-eqz v2, :cond_7

    .line 69
    .line 70
    or-int/lit16 v1, v1, 0x180

    .line 71
    .line 72
    :cond_6
    move-object/from16 v3, p2

    .line 73
    goto :goto_5

    .line 74
    .line 75
    :cond_7
    and-int/lit16 v3, v8, 0x380

    .line 76
    .line 77
    if-nez v3, :cond_6

    .line 78
    .line 79
    move-object/from16 v3, p2

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 83
    move-result v4

    .line 84
    .line 85
    if-eqz v4, :cond_8

    .line 86
    .line 87
    const/16 v4, 0x100

    .line 88
    goto :goto_4

    .line 89
    .line 90
    :cond_8
    const/16 v4, 0x80

    .line 91
    :goto_4
    or-int/2addr v1, v4

    .line 92
    .line 93
    :goto_5
    and-int/lit8 v4, p8, 0x8

    .line 94
    .line 95
    if-eqz v4, :cond_a

    .line 96
    .line 97
    or-int/lit16 v1, v1, 0xc00

    .line 98
    .line 99
    :cond_9
    move/from16 v9, p3

    .line 100
    goto :goto_7

    .line 101
    .line 102
    :cond_a
    and-int/lit16 v9, v8, 0x1c00

    .line 103
    .line 104
    if-nez v9, :cond_9

    .line 105
    .line 106
    move/from16 v9, p3

    .line 107
    .line 108
    .line 109
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 110
    move-result v10

    .line 111
    .line 112
    if-eqz v10, :cond_b

    .line 113
    .line 114
    const/16 v10, 0x800

    .line 115
    goto :goto_6

    .line 116
    .line 117
    :cond_b
    const/16 v10, 0x400

    .line 118
    :goto_6
    or-int/2addr v1, v10

    .line 119
    .line 120
    :goto_7
    and-int/lit8 v10, p8, 0x10

    .line 121
    .line 122
    if-eqz v10, :cond_d

    .line 123
    .line 124
    or-int/lit16 v1, v1, 0x6000

    .line 125
    .line 126
    :cond_c
    move-object/from16 v11, p4

    .line 127
    goto :goto_9

    .line 128
    .line 129
    .line 130
    :cond_d
    const v11, 0xe000

    .line 131
    and-int/2addr v11, v8

    .line 132
    .line 133
    if-nez v11, :cond_c

    .line 134
    .line 135
    move-object/from16 v11, p4

    .line 136
    .line 137
    .line 138
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 139
    move-result v12

    .line 140
    .line 141
    if-eqz v12, :cond_e

    .line 142
    .line 143
    const/16 v12, 0x4000

    .line 144
    goto :goto_8

    .line 145
    .line 146
    :cond_e
    const/16 v12, 0x2000

    .line 147
    :goto_8
    or-int/2addr v1, v12

    .line 148
    .line 149
    :goto_9
    const/high16 v32, 0x70000

    .line 150
    .line 151
    and-int v12, v8, v32

    .line 152
    .line 153
    if-nez v12, :cond_11

    .line 154
    .line 155
    and-int/lit8 v12, p8, 0x20

    .line 156
    .line 157
    if-nez v12, :cond_f

    .line 158
    .line 159
    move-object/from16 v12, p5

    .line 160
    .line 161
    .line 162
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 163
    move-result v13

    .line 164
    .line 165
    if-eqz v13, :cond_10

    .line 166
    .line 167
    const/high16 v13, 0x20000

    .line 168
    goto :goto_a

    .line 169
    .line 170
    :cond_f
    move-object/from16 v12, p5

    .line 171
    .line 172
    :cond_10
    const/high16 v13, 0x10000

    .line 173
    :goto_a
    or-int/2addr v1, v13

    .line 174
    goto :goto_b

    .line 175
    .line 176
    :cond_11
    move-object/from16 v12, p5

    .line 177
    .line 178
    .line 179
    :goto_b
    const v13, 0x5b6db

    .line 180
    and-int/2addr v13, v1

    .line 181
    .line 182
    .line 183
    const v14, 0x12492

    .line 184
    .line 185
    if-ne v13, v14, :cond_13

    .line 186
    .line 187
    .line 188
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 189
    move-result v13

    .line 190
    .line 191
    if-nez v13, :cond_12

    .line 192
    goto :goto_c

    .line 193
    .line 194
    .line 195
    :cond_12
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 196
    move v4, v9

    .line 197
    move-object v5, v11

    .line 198
    move-object v6, v12

    .line 199
    .line 200
    goto/16 :goto_18

    .line 201
    .line 202
    .line 203
    :cond_13
    :goto_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->J()V

    .line 204
    .line 205
    and-int/lit8 v13, v8, 0x1

    .line 206
    .line 207
    .line 208
    const v33, -0x70001

    .line 209
    .line 210
    const/16 v34, 0x1

    .line 211
    .line 212
    if-eqz v13, :cond_16

    .line 213
    .line 214
    .line 215
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->h()Z

    .line 216
    move-result v13

    .line 217
    .line 218
    if-eqz v13, :cond_14

    .line 219
    goto :goto_e

    .line 220
    .line 221
    .line 222
    :cond_14
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 223
    .line 224
    and-int/lit8 v2, p8, 0x20

    .line 225
    .line 226
    if-eqz v2, :cond_15

    .line 227
    .line 228
    and-int v1, v1, v33

    .line 229
    :cond_15
    move-object v15, v3

    .line 230
    .line 231
    move/from16 v17, v9

    .line 232
    .line 233
    move-object/from16 v30, v11

    .line 234
    .line 235
    move-object/from16 v31, v12

    .line 236
    :goto_d
    move v9, v1

    .line 237
    .line 238
    goto/16 :goto_12

    .line 239
    .line 240
    :cond_16
    :goto_e
    if-eqz v2, :cond_17

    .line 241
    .line 242
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 243
    goto :goto_f

    .line 244
    :cond_17
    move-object v2, v3

    .line 245
    .line 246
    :goto_f
    if-eqz v4, :cond_18

    .line 247
    .line 248
    move/from16 v3, v34

    .line 249
    goto :goto_10

    .line 250
    :cond_18
    move v3, v9

    .line 251
    .line 252
    :goto_10
    if-eqz v10, :cond_1a

    .line 253
    .line 254
    .line 255
    const v4, -0x1d58f75c

    .line 256
    .line 257
    .line 258
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 259
    .line 260
    .line 261
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 262
    move-result-object v4

    .line 263
    .line 264
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 268
    move-result-object v9

    .line 269
    .line 270
    if-ne v4, v9, :cond_19

    .line 271
    .line 272
    .line 273
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 274
    move-result-object v4

    .line 275
    .line 276
    .line 277
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    :cond_19
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 281
    .line 282
    check-cast v4, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 283
    goto :goto_11

    .line 284
    :cond_1a
    move-object v4, v11

    .line 285
    .line 286
    :goto_11
    and-int/lit8 v9, p8, 0x20

    .line 287
    .line 288
    if-eqz v9, :cond_1b

    .line 289
    .line 290
    sget-object v9, Landroidx/compose/material/SwitchDefaults;->INSTANCE:Landroidx/compose/material/SwitchDefaults;

    .line 291
    .line 292
    const-wide/16 v10, 0x0

    .line 293
    .line 294
    const-wide/16 v12, 0x0

    .line 295
    const/4 v14, 0x0

    .line 296
    .line 297
    const-wide/16 v15, 0x0

    .line 298
    .line 299
    const-wide/16 v17, 0x0

    .line 300
    .line 301
    const/16 v19, 0x0

    .line 302
    .line 303
    const-wide/16 v20, 0x0

    .line 304
    .line 305
    const-wide/16 v22, 0x0

    .line 306
    .line 307
    const-wide/16 v24, 0x0

    .line 308
    .line 309
    const-wide/16 v26, 0x0

    .line 310
    .line 311
    const/16 v29, 0x0

    .line 312
    .line 313
    const/16 v30, 0x6

    .line 314
    .line 315
    const/16 v31, 0x3ff

    .line 316
    .line 317
    move-object/from16 v28, v0

    .line 318
    .line 319
    .line 320
    invoke-virtual/range {v9 .. v31}, Landroidx/compose/material/SwitchDefaults;->a(JJFJJFJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material/SwitchColors;

    .line 321
    move-result-object v9

    .line 322
    .line 323
    and-int v1, v1, v33

    .line 324
    move-object v15, v2

    .line 325
    .line 326
    move/from16 v17, v3

    .line 327
    .line 328
    move-object/from16 v30, v4

    .line 329
    .line 330
    move-object/from16 v31, v9

    .line 331
    goto :goto_d

    .line 332
    :cond_1b
    move v9, v1

    .line 333
    move-object v15, v2

    .line 334
    .line 335
    move/from16 v17, v3

    .line 336
    .line 337
    move-object/from16 v30, v4

    .line 338
    .line 339
    move-object/from16 v31, v12

    .line 340
    .line 341
    .line 342
    :goto_12
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->A()V

    .line 343
    .line 344
    .line 345
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 346
    move-result-object v1

    .line 347
    .line 348
    .line 349
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 350
    move-result-object v1

    .line 351
    .line 352
    check-cast v1, Landroidx/compose/ui/unit/Density;

    .line 353
    .line 354
    sget v2, Landroidx/compose/material/SwitchKt;->ThumbPathLength:F

    .line 355
    .line 356
    .line 357
    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 358
    move-result v10

    .line 359
    .line 360
    .line 361
    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 362
    move-result-object v1

    .line 363
    .line 364
    if-nez v7, :cond_1c

    .line 365
    .line 366
    sget-object v2, Landroidx/compose/material/SwitchKt$Switch$swipeableState$1;->INSTANCE:Landroidx/compose/material/SwitchKt$Switch$swipeableState$1;

    .line 367
    goto :goto_13

    .line 368
    :cond_1c
    move-object v2, v7

    .line 369
    .line 370
    :goto_13
    sget-object v3, Landroidx/compose/material/SwitchKt;->AnimationSpec:Landroidx/compose/animation/core/TweenSpec;

    .line 371
    .line 372
    and-int/lit8 v4, v9, 0xe

    .line 373
    .line 374
    or-int/lit16 v11, v4, 0x180

    .line 375
    const/4 v12, 0x0

    .line 376
    move-object v4, v0

    .line 377
    move v5, v11

    .line 378
    move v11, v6

    .line 379
    move v6, v12

    .line 380
    .line 381
    .line 382
    invoke-static/range {v1 .. v6}, Landroidx/compose/material/SwipeableKt;->g(Ljava/lang/Object;Le8/l;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/SwipeableState;

    .line 383
    move-result-object v12

    .line 384
    .line 385
    .line 386
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 387
    move-result-object v1

    .line 388
    .line 389
    .line 390
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 391
    move-result-object v1

    .line 392
    .line 393
    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    .line 394
    const/4 v13, 0x0

    .line 395
    .line 396
    if-ne v1, v2, :cond_1d

    .line 397
    .line 398
    move/from16 v23, v34

    .line 399
    goto :goto_14

    .line 400
    .line 401
    :cond_1d
    move/from16 v23, v13

    .line 402
    .line 403
    :goto_14
    if-eqz v7, :cond_1e

    .line 404
    .line 405
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 406
    .line 407
    sget-object v2, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/Role$Companion;->e()I

    .line 411
    move-result v2

    .line 412
    const/4 v3, 0x0

    .line 413
    .line 414
    .line 415
    invoke-static {v2}, Landroidx/compose/ui/semantics/Role;->g(I)Landroidx/compose/ui/semantics/Role;

    .line 416
    move-result-object v5

    .line 417
    move-object v14, v0

    .line 418
    move-object v0, v1

    .line 419
    .line 420
    move/from16 v1, p0

    .line 421
    .line 422
    move-object/from16 v2, v30

    .line 423
    .line 424
    move/from16 v4, v17

    .line 425
    .line 426
    move-object/from16 v6, p1

    .line 427
    .line 428
    .line 429
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/selection/ToggleableKt;->b(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 430
    move-result-object v0

    .line 431
    goto :goto_15

    .line 432
    :cond_1e
    move-object v14, v0

    .line 433
    .line 434
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 435
    .line 436
    :goto_15
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 437
    .line 438
    if-eqz v7, :cond_1f

    .line 439
    .line 440
    .line 441
    invoke-static {v1}, Landroidx/compose/material/TouchTargetKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 442
    move-result-object v1

    .line 443
    .line 444
    .line 445
    :cond_1f
    invoke-interface {v15, v1}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 446
    move-result-object v1

    .line 447
    .line 448
    .line 449
    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 450
    move-result-object v18

    .line 451
    .line 452
    new-array v0, v11, [Lw7/u;

    .line 453
    const/4 v1, 0x0

    .line 454
    .line 455
    .line 456
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 457
    move-result-object v1

    .line 458
    .line 459
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 460
    .line 461
    .line 462
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 463
    move-result-object v1

    .line 464
    .line 465
    aput-object v1, v0, v13

    .line 466
    .line 467
    .line 468
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 469
    move-result-object v1

    .line 470
    .line 471
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 472
    .line 473
    .line 474
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 475
    move-result-object v1

    .line 476
    .line 477
    aput-object v1, v0, v34

    .line 478
    .line 479
    .line 480
    invoke-static {v0}, Lkotlin/collections/p0;->l([Lw7/u;)Ljava/util/Map;

    .line 481
    move-result-object v20

    .line 482
    .line 483
    sget-object v21, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 484
    .line 485
    if-eqz v17, :cond_20

    .line 486
    .line 487
    if-eqz v7, :cond_20

    .line 488
    .line 489
    move/from16 v22, v34

    .line 490
    goto :goto_16

    .line 491
    .line 492
    :cond_20
    move/from16 v22, v13

    .line 493
    .line 494
    :goto_16
    sget-object v25, Landroidx/compose/material/SwitchKt$Switch$2;->INSTANCE:Landroidx/compose/material/SwitchKt$Switch$2;

    .line 495
    .line 496
    const/16 v26, 0x0

    .line 497
    .line 498
    const/16 v27, 0x0

    .line 499
    .line 500
    const/16 v28, 0x100

    .line 501
    .line 502
    const/16 v29, 0x0

    .line 503
    .line 504
    move-object/from16 v19, v12

    .line 505
    .line 506
    move-object/from16 v24, v30

    .line 507
    .line 508
    .line 509
    invoke-static/range {v18 .. v29}, Landroidx/compose/material/SwipeableKt;->i(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SwipeableState;Ljava/util/Map;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;Landroidx/compose/material/ResistanceConfig;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 510
    move-result-object v0

    .line 511
    .line 512
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->e()Landroidx/compose/ui/Alignment;

    .line 516
    move-result-object v2

    .line 517
    const/4 v3, 0x0

    .line 518
    .line 519
    .line 520
    invoke-static {v0, v2, v13, v11, v3}, Landroidx/compose/foundation/layout/SizeKt;->H(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 521
    move-result-object v0

    .line 522
    .line 523
    sget v2, Landroidx/compose/material/SwitchKt;->DefaultSwitchPadding:F

    .line 524
    .line 525
    .line 526
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 527
    move-result-object v0

    .line 528
    .line 529
    sget v2, Landroidx/compose/material/SwitchKt;->SwitchWidth:F

    .line 530
    .line 531
    sget v3, Landroidx/compose/material/SwitchKt;->SwitchHeight:F

    .line 532
    .line 533
    .line 534
    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->u(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 535
    move-result-object v0

    .line 536
    .line 537
    .line 538
    const v2, 0x2bb5b5d7

    .line 539
    .line 540
    .line 541
    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 545
    move-result-object v1

    .line 546
    .line 547
    .line 548
    invoke-static {v1, v13, v14, v13}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 549
    move-result-object v1

    .line 550
    .line 551
    .line 552
    const v2, -0x4ee9b9da

    .line 553
    .line 554
    .line 555
    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 556
    .line 557
    .line 558
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 559
    move-result-object v2

    .line 560
    .line 561
    .line 562
    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 563
    move-result-object v2

    .line 564
    .line 565
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 566
    .line 567
    .line 568
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 569
    move-result-object v3

    .line 570
    .line 571
    .line 572
    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 573
    move-result-object v3

    .line 574
    .line 575
    check-cast v3, Landroidx/compose/ui/unit/LayoutDirection;

    .line 576
    .line 577
    .line 578
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 579
    move-result-object v4

    .line 580
    .line 581
    .line 582
    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 583
    move-result-object v4

    .line 584
    .line 585
    check-cast v4, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 586
    .line 587
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 591
    move-result-object v6

    .line 592
    .line 593
    .line 594
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 595
    move-result-object v0

    .line 596
    .line 597
    .line 598
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 599
    move-result-object v10

    .line 600
    .line 601
    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    .line 602
    .line 603
    if-nez v10, :cond_21

    .line 604
    .line 605
    .line 606
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 607
    .line 608
    .line 609
    :cond_21
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->e()V

    .line 610
    .line 611
    .line 612
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->r()Z

    .line 613
    move-result v10

    .line 614
    .line 615
    if-eqz v10, :cond_22

    .line 616
    .line 617
    .line 618
    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 619
    goto :goto_17

    .line 620
    .line 621
    .line 622
    :cond_22
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->c()V

    .line 623
    .line 624
    .line 625
    :goto_17
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->L()V

    .line 626
    .line 627
    .line 628
    invoke-static {v14}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 629
    move-result-object v6

    .line 630
    .line 631
    .line 632
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 633
    move-result-object v10

    .line 634
    .line 635
    .line 636
    invoke-static {v6, v1, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 640
    move-result-object v1

    .line 641
    .line 642
    .line 643
    invoke-static {v6, v2, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 647
    move-result-object v1

    .line 648
    .line 649
    .line 650
    invoke-static {v6, v3, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 654
    move-result-object v1

    .line 655
    .line 656
    .line 657
    invoke-static {v6, v4, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 658
    .line 659
    .line 660
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->o()V

    .line 661
    .line 662
    .line 663
    invoke-static {v14}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 664
    move-result-object v1

    .line 665
    .line 666
    .line 667
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 668
    move-result-object v1

    .line 669
    .line 670
    .line 671
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 672
    move-result-object v2

    .line 673
    .line 674
    .line 675
    invoke-interface {v0, v1, v14, v2}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    const v0, 0x7ab4aae9

    .line 679
    .line 680
    .line 681
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 682
    .line 683
    .line 684
    const v0, -0x7f65a980

    .line 685
    .line 686
    .line 687
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 688
    .line 689
    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 690
    .line 691
    .line 692
    const v1, 0x5da63e4f

    .line 693
    .line 694
    .line 695
    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 696
    .line 697
    .line 698
    invoke-virtual {v12}, Landroidx/compose/material/SwipeableState;->t()Landroidx/compose/runtime/State;

    .line 699
    move-result-object v13

    .line 700
    .line 701
    shl-int/lit8 v1, v9, 0x3

    .line 702
    .line 703
    and-int/lit8 v2, v1, 0x70

    .line 704
    const/4 v3, 0x6

    .line 705
    or-int/2addr v2, v3

    .line 706
    .line 707
    shr-int/lit8 v4, v9, 0x3

    .line 708
    .line 709
    and-int/lit16 v4, v4, 0x380

    .line 710
    or-int/2addr v2, v4

    .line 711
    .line 712
    shr-int/lit8 v3, v9, 0x6

    .line 713
    .line 714
    and-int/lit16 v3, v3, 0x1c00

    .line 715
    or-int/2addr v2, v3

    .line 716
    .line 717
    and-int v1, v1, v32

    .line 718
    .line 719
    or-int v16, v2, v1

    .line 720
    move-object v9, v0

    .line 721
    .line 722
    move/from16 v10, p0

    .line 723
    .line 724
    move/from16 v11, v17

    .line 725
    .line 726
    move-object/from16 v12, v31

    .line 727
    move-object v0, v14

    .line 728
    .line 729
    move-object/from16 v14, v30

    .line 730
    move-object v2, v15

    .line 731
    move-object v15, v0

    .line 732
    .line 733
    .line 734
    invoke-static/range {v9 .. v16}, Landroidx/compose/material/SwitchKt;->b(Landroidx/compose/foundation/layout/BoxScope;ZZLandroidx/compose/material/SwitchColors;Landroidx/compose/runtime/State;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)V

    .line 735
    .line 736
    .line 737
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 738
    .line 739
    .line 740
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 741
    .line 742
    .line 743
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 744
    .line 745
    .line 746
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->d()V

    .line 747
    .line 748
    .line 749
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 750
    .line 751
    .line 752
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 753
    move-object v3, v2

    .line 754
    .line 755
    move/from16 v4, v17

    .line 756
    .line 757
    move-object/from16 v5, v30

    .line 758
    .line 759
    move-object/from16 v6, v31

    .line 760
    .line 761
    .line 762
    :goto_18
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 763
    move-result-object v9

    .line 764
    .line 765
    if-nez v9, :cond_23

    .line 766
    goto :goto_19

    .line 767
    .line 768
    :cond_23
    new-instance v10, Landroidx/compose/material/SwitchKt$Switch$4;

    .line 769
    move-object v0, v10

    .line 770
    .line 771
    move/from16 v1, p0

    .line 772
    .line 773
    move-object/from16 v2, p1

    .line 774
    .line 775
    move/from16 v7, p7

    .line 776
    .line 777
    move/from16 v8, p8

    .line 778
    .line 779
    .line 780
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/SwitchKt$Switch$4;-><init>(ZLe8/l;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SwitchColors;II)V

    .line 781
    .line 782
    .line 783
    invoke-interface {v9, v10}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 784
    :goto_19
    return-void
.end method

.method private static final b(Landroidx/compose/foundation/layout/BoxScope;ZZLandroidx/compose/material/SwitchColors;Landroidx/compose/runtime/State;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)V
    .locals 27
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "ZZ",
            "Landroidx/compose/material/SwitchColors;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move/from16 v2, p1

    .line 5
    .line 6
    move/from16 v3, p2

    .line 7
    .line 8
    move-object/from16 v4, p3

    .line 9
    .line 10
    move-object/from16 v5, p4

    .line 11
    .line 12
    move-object/from16 v6, p5

    .line 13
    .line 14
    move/from16 v7, p7

    .line 15
    .line 16
    .line 17
    const v0, -0x6d5d6cd5

    .line 18
    .line 19
    move-object/from16 v8, p6

    .line 20
    .line 21
    .line 22
    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    and-int/lit8 v8, v7, 0xe

    .line 26
    .line 27
    if-nez v8, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 31
    move-result v8

    .line 32
    .line 33
    if-eqz v8, :cond_0

    .line 34
    const/4 v8, 0x4

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v8, 0x2

    .line 37
    :goto_0
    or-int/2addr v8, v7

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v8, v7

    .line 40
    .line 41
    :goto_1
    and-int/lit8 v9, v7, 0x70

    .line 42
    .line 43
    if-nez v9, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 47
    move-result v9

    .line 48
    .line 49
    if-eqz v9, :cond_2

    .line 50
    .line 51
    const/16 v9, 0x20

    .line 52
    goto :goto_2

    .line 53
    .line 54
    :cond_2
    const/16 v9, 0x10

    .line 55
    :goto_2
    or-int/2addr v8, v9

    .line 56
    .line 57
    :cond_3
    and-int/lit16 v9, v7, 0x380

    .line 58
    .line 59
    if-nez v9, :cond_5

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 63
    move-result v9

    .line 64
    .line 65
    if-eqz v9, :cond_4

    .line 66
    .line 67
    const/16 v9, 0x100

    .line 68
    goto :goto_3

    .line 69
    .line 70
    :cond_4
    const/16 v9, 0x80

    .line 71
    :goto_3
    or-int/2addr v8, v9

    .line 72
    .line 73
    :cond_5
    and-int/lit16 v9, v7, 0x1c00

    .line 74
    .line 75
    if-nez v9, :cond_7

    .line 76
    .line 77
    .line 78
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 79
    move-result v9

    .line 80
    .line 81
    if-eqz v9, :cond_6

    .line 82
    .line 83
    const/16 v9, 0x800

    .line 84
    goto :goto_4

    .line 85
    .line 86
    :cond_6
    const/16 v9, 0x400

    .line 87
    :goto_4
    or-int/2addr v8, v9

    .line 88
    .line 89
    .line 90
    :cond_7
    const v9, 0xe000

    .line 91
    and-int/2addr v9, v7

    .line 92
    .line 93
    if-nez v9, :cond_9

    .line 94
    .line 95
    .line 96
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 97
    move-result v9

    .line 98
    .line 99
    if-eqz v9, :cond_8

    .line 100
    .line 101
    const/16 v9, 0x4000

    .line 102
    goto :goto_5

    .line 103
    .line 104
    :cond_8
    const/16 v9, 0x2000

    .line 105
    :goto_5
    or-int/2addr v8, v9

    .line 106
    .line 107
    :cond_9
    const/high16 v9, 0x70000

    .line 108
    and-int/2addr v9, v7

    .line 109
    .line 110
    if-nez v9, :cond_b

    .line 111
    .line 112
    .line 113
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 114
    move-result v9

    .line 115
    .line 116
    if-eqz v9, :cond_a

    .line 117
    .line 118
    const/high16 v9, 0x20000

    .line 119
    goto :goto_6

    .line 120
    .line 121
    :cond_a
    const/high16 v9, 0x10000

    .line 122
    :goto_6
    or-int/2addr v8, v9

    .line 123
    .line 124
    .line 125
    :cond_b
    const v9, 0x5b6db

    .line 126
    and-int/2addr v9, v8

    .line 127
    .line 128
    .line 129
    const v10, 0x12492

    .line 130
    .line 131
    if-ne v9, v10, :cond_d

    .line 132
    .line 133
    .line 134
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 135
    move-result v9

    .line 136
    .line 137
    if-nez v9, :cond_c

    .line 138
    goto :goto_7

    .line 139
    .line 140
    .line 141
    :cond_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 142
    .line 143
    goto/16 :goto_c

    .line 144
    .line 145
    .line 146
    :cond_d
    :goto_7
    const v9, -0x1d58f75c

    .line 147
    .line 148
    .line 149
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 150
    .line 151
    .line 152
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 153
    move-result-object v9

    .line 154
    .line 155
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 159
    move-result-object v10

    .line 160
    .line 161
    if-ne v9, v10, :cond_e

    .line 162
    .line 163
    .line 164
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->d()Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 165
    move-result-object v9

    .line 166
    .line 167
    .line 168
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    :cond_e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 172
    .line 173
    check-cast v9, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 174
    .line 175
    shr-int/lit8 v10, v8, 0xf

    .line 176
    .line 177
    and-int/lit8 v10, v10, 0xe

    .line 178
    .line 179
    .line 180
    const v11, 0x1e7b2b64

    .line 181
    .line 182
    .line 183
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 184
    .line 185
    .line 186
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 187
    move-result v11

    .line 188
    .line 189
    .line 190
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 191
    move-result v12

    .line 192
    or-int/2addr v11, v12

    .line 193
    .line 194
    .line 195
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 196
    move-result-object v12

    .line 197
    const/4 v13, 0x0

    .line 198
    .line 199
    if-nez v11, :cond_f

    .line 200
    .line 201
    .line 202
    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 203
    move-result-object v11

    .line 204
    .line 205
    if-ne v12, v11, :cond_10

    .line 206
    .line 207
    :cond_f
    new-instance v12, Landroidx/compose/material/SwitchKt$SwitchImpl$1$1;

    .line 208
    .line 209
    .line 210
    invoke-direct {v12, v6, v9, v13}, Landroidx/compose/material/SwitchKt$SwitchImpl$1$1;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/coroutines/d;)V

    .line 211
    .line 212
    .line 213
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    :cond_10
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 217
    .line 218
    check-cast v12, Le8/p;

    .line 219
    .line 220
    .line 221
    invoke-static {v6, v12, v0, v10}, Landroidx/compose/runtime/EffectsKt;->d(Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 222
    .line 223
    .line 224
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 225
    move-result v9

    .line 226
    const/4 v10, 0x1

    .line 227
    xor-int/2addr v9, v10

    .line 228
    .line 229
    if-eqz v9, :cond_11

    .line 230
    .line 231
    sget v9, Landroidx/compose/material/SwitchKt;->ThumbPressedElevation:F

    .line 232
    .line 233
    :goto_8
    move/from16 v16, v9

    .line 234
    goto :goto_9

    .line 235
    .line 236
    :cond_11
    sget v9, Landroidx/compose/material/SwitchKt;->ThumbDefaultElevation:F

    .line 237
    goto :goto_8

    .line 238
    .line 239
    :goto_9
    shr-int/lit8 v9, v8, 0x6

    .line 240
    .line 241
    and-int/lit8 v9, v9, 0xe

    .line 242
    .line 243
    and-int/lit8 v11, v8, 0x70

    .line 244
    or-int/2addr v9, v11

    .line 245
    .line 246
    shr-int/lit8 v8, v8, 0x3

    .line 247
    .line 248
    and-int/lit16 v8, v8, 0x380

    .line 249
    or-int/2addr v8, v9

    .line 250
    .line 251
    .line 252
    invoke-interface {v4, v3, v2, v0, v8}, Landroidx/compose/material/SwitchColors;->a(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 253
    move-result-object v9

    .line 254
    .line 255
    sget-object v15, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 256
    .line 257
    sget-object v17, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 258
    .line 259
    .line 260
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/Alignment$Companion;->e()Landroidx/compose/ui/Alignment;

    .line 261
    move-result-object v11

    .line 262
    .line 263
    .line 264
    invoke-interface {v1, v15, v11}, Landroidx/compose/foundation/layout/BoxScope;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    .line 265
    move-result-object v11

    .line 266
    const/4 v12, 0x0

    .line 267
    .line 268
    .line 269
    invoke-static {v11, v12, v10, v13}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 270
    move-result-object v10

    .line 271
    .line 272
    .line 273
    const v13, 0x44faf204

    .line 274
    .line 275
    .line 276
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 277
    .line 278
    .line 279
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 280
    move-result v11

    .line 281
    .line 282
    .line 283
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 284
    move-result-object v12

    .line 285
    .line 286
    if-nez v11, :cond_12

    .line 287
    .line 288
    .line 289
    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 290
    move-result-object v11

    .line 291
    .line 292
    if-ne v12, v11, :cond_13

    .line 293
    .line 294
    :cond_12
    new-instance v12, Landroidx/compose/material/SwitchKt$SwitchImpl$2$1;

    .line 295
    .line 296
    .line 297
    invoke-direct {v12, v9}, Landroidx/compose/material/SwitchKt$SwitchImpl$2$1;-><init>(Landroidx/compose/runtime/State;)V

    .line 298
    .line 299
    .line 300
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    :cond_13
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 304
    .line 305
    check-cast v12, Le8/l;

    .line 306
    const/4 v11, 0x0

    .line 307
    .line 308
    .line 309
    invoke-static {v10, v12, v0, v11}, Landroidx/compose/foundation/CanvasKt;->a(Landroidx/compose/ui/Modifier;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 310
    .line 311
    .line 312
    invoke-interface {v4, v3, v2, v0, v8}, Landroidx/compose/material/SwitchColors;->b(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 313
    move-result-object v8

    .line 314
    .line 315
    .line 316
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->d()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 317
    move-result-object v9

    .line 318
    .line 319
    .line 320
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 321
    move-result-object v9

    .line 322
    .line 323
    check-cast v9, Landroidx/compose/material/ElevationOverlay;

    .line 324
    .line 325
    .line 326
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->c()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 327
    move-result-object v10

    .line 328
    .line 329
    .line 330
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 331
    move-result-object v10

    .line 332
    .line 333
    check-cast v10, Landroidx/compose/ui/unit/Dp;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v10}, Landroidx/compose/ui/unit/Dp;->l()F

    .line 337
    move-result v10

    .line 338
    .line 339
    add-float v10, v10, v16

    .line 340
    .line 341
    .line 342
    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 343
    move-result v12

    .line 344
    .line 345
    .line 346
    const v10, -0x20243b31

    .line 347
    .line 348
    .line 349
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 350
    .line 351
    move-object/from16 p6, v14

    .line 352
    .line 353
    .line 354
    invoke-static {v8}, Landroidx/compose/material/SwitchKt;->d(Landroidx/compose/runtime/State;)J

    .line 355
    move-result-wide v13

    .line 356
    .line 357
    sget-object v10, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 358
    const/4 v11, 0x6

    .line 359
    .line 360
    .line 361
    invoke-virtual {v10, v0, v11}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 362
    move-result-object v10

    .line 363
    .line 364
    .line 365
    invoke-virtual {v10}, Landroidx/compose/material/Colors;->n()J

    .line 366
    move-result-wide v10

    .line 367
    .line 368
    .line 369
    invoke-static {v13, v14, v10, v11}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 370
    move-result v10

    .line 371
    .line 372
    if-eqz v10, :cond_14

    .line 373
    .line 374
    if-eqz v9, :cond_14

    .line 375
    .line 376
    .line 377
    invoke-static {v8}, Landroidx/compose/material/SwitchKt;->d(Landroidx/compose/runtime/State;)J

    .line 378
    move-result-wide v10

    .line 379
    const/4 v13, 0x0

    .line 380
    move-object v8, v9

    .line 381
    move-wide v9, v10

    .line 382
    const/4 v14, 0x0

    .line 383
    move v11, v12

    .line 384
    move-object v12, v0

    .line 385
    .line 386
    .line 387
    const v14, 0x44faf204

    .line 388
    .line 389
    .line 390
    invoke-interface/range {v8 .. v13}, Landroidx/compose/material/ElevationOverlay;->a(JFLandroidx/compose/runtime/Composer;I)J

    .line 391
    move-result-wide v8

    .line 392
    :goto_a
    move-wide v12, v8

    .line 393
    goto :goto_b

    .line 394
    .line 395
    .line 396
    :cond_14
    const v14, 0x44faf204

    .line 397
    .line 398
    .line 399
    invoke-static {v8}, Landroidx/compose/material/SwitchKt;->d(Landroidx/compose/runtime/State;)J

    .line 400
    move-result-wide v8

    .line 401
    goto :goto_a

    .line 402
    .line 403
    .line 404
    :goto_b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 405
    .line 406
    .line 407
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/Alignment$Companion;->h()Landroidx/compose/ui/Alignment;

    .line 408
    move-result-object v8

    .line 409
    .line 410
    .line 411
    invoke-interface {v1, v15, v8}, Landroidx/compose/foundation/layout/BoxScope;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    .line 412
    move-result-object v8

    .line 413
    .line 414
    .line 415
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 416
    .line 417
    .line 418
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 419
    move-result v9

    .line 420
    .line 421
    .line 422
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 423
    move-result-object v10

    .line 424
    .line 425
    if-nez v9, :cond_15

    .line 426
    .line 427
    .line 428
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 429
    move-result-object v9

    .line 430
    .line 431
    if-ne v10, v9, :cond_16

    .line 432
    .line 433
    :cond_15
    new-instance v10, Landroidx/compose/material/SwitchKt$SwitchImpl$3$1;

    .line 434
    .line 435
    .line 436
    invoke-direct {v10, v5}, Landroidx/compose/material/SwitchKt$SwitchImpl$3$1;-><init>(Landroidx/compose/runtime/State;)V

    .line 437
    .line 438
    .line 439
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 440
    .line 441
    .line 442
    :cond_16
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 443
    .line 444
    check-cast v10, Le8/l;

    .line 445
    .line 446
    .line 447
    invoke-static {v8, v10}, Landroidx/compose/foundation/layout/OffsetKt;->a(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 448
    move-result-object v15

    .line 449
    const/4 v8, 0x0

    .line 450
    .line 451
    sget v9, Landroidx/compose/material/SwitchKt;->ThumbRippleRadius:F

    .line 452
    .line 453
    const-wide/16 v10, 0x0

    .line 454
    .line 455
    const/16 v14, 0x36

    .line 456
    .line 457
    const/16 v17, 0x4

    .line 458
    .line 459
    move-wide/from16 v25, v12

    .line 460
    move-object v12, v0

    .line 461
    move v13, v14

    .line 462
    const/4 v1, 0x0

    .line 463
    .line 464
    move/from16 v14, v17

    .line 465
    .line 466
    .line 467
    invoke-static/range {v8 .. v14}, Landroidx/compose/material/ripple/RippleKt;->e(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    .line 468
    move-result-object v8

    .line 469
    .line 470
    .line 471
    invoke-static {v15, v6, v8}, Landroidx/compose/foundation/IndicationKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/Indication;)Landroidx/compose/ui/Modifier;

    .line 472
    move-result-object v8

    .line 473
    .line 474
    sget v9, Landroidx/compose/material/SwitchKt;->ThumbDiameter:F

    .line 475
    .line 476
    .line 477
    invoke-static {v8, v9}, Landroidx/compose/foundation/layout/SizeKt;->t(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 478
    move-result-object v15

    .line 479
    .line 480
    .line 481
    invoke-static {}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->d()Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 482
    move-result-object v17

    .line 483
    .line 484
    const/16 v18, 0x0

    .line 485
    .line 486
    const-wide/16 v19, 0x0

    .line 487
    .line 488
    const-wide/16 v21, 0x0

    .line 489
    .line 490
    const/16 v23, 0x18

    .line 491
    .line 492
    const/16 v24, 0x0

    .line 493
    .line 494
    .line 495
    invoke-static/range {v15 .. v24}, Landroidx/compose/ui/draw/ShadowKt;->b(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;ZJJILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 496
    move-result-object v8

    .line 497
    .line 498
    .line 499
    invoke-static {}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->d()Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 500
    move-result-object v9

    .line 501
    .line 502
    move-wide/from16 v10, v25

    .line 503
    .line 504
    .line 505
    invoke-static {v8, v10, v11, v9}, Landroidx/compose/foundation/BackgroundKt;->a(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 506
    move-result-object v8

    .line 507
    .line 508
    .line 509
    invoke-static {v8, v0, v1}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 510
    .line 511
    .line 512
    :goto_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 513
    move-result-object v8

    .line 514
    .line 515
    if-nez v8, :cond_17

    .line 516
    goto :goto_d

    .line 517
    .line 518
    :cond_17
    new-instance v9, Landroidx/compose/material/SwitchKt$SwitchImpl$4;

    .line 519
    move-object v0, v9

    .line 520
    .line 521
    move-object/from16 v1, p0

    .line 522
    .line 523
    move/from16 v2, p1

    .line 524
    .line 525
    move/from16 v3, p2

    .line 526
    .line 527
    move-object/from16 v4, p3

    .line 528
    .line 529
    move-object/from16 v5, p4

    .line 530
    .line 531
    move-object/from16 v6, p5

    .line 532
    .line 533
    move/from16 v7, p7

    .line 534
    .line 535
    .line 536
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material/SwitchKt$SwitchImpl$4;-><init>(Landroidx/compose/foundation/layout/BoxScope;ZZLandroidx/compose/material/SwitchColors;Landroidx/compose/runtime/State;Landroidx/compose/foundation/interaction/InteractionSource;I)V

    .line 537
    .line 538
    .line 539
    invoke-interface {v8, v9}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 540
    :goto_d
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

.method private static final d(Landroidx/compose/runtime/State;)J
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

.method public static final synthetic e(Landroidx/compose/foundation/layout/BoxScope;ZZLandroidx/compose/material/SwitchColors;Landroidx/compose/runtime/State;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p7}, Landroidx/compose/material/SwitchKt;->b(Landroidx/compose/foundation/layout/BoxScope;ZZLandroidx/compose/material/SwitchColors;Landroidx/compose/runtime/State;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)V

    .line 4
    return-void
.end method

.method public static final synthetic f(Landroidx/compose/runtime/State;)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/material/SwitchKt;->c(Landroidx/compose/runtime/State;)J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static final synthetic g(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFF)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material/SwitchKt;->h(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFF)V

    .line 4
    return-void
.end method

.method private static final h(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFF)V
    .locals 16

    .line 1
    const/4 v0, 0x2

    .line 2
    int-to-float v0, v0

    .line 3
    .line 4
    div-float v0, p4, v0

    .line 5
    .line 6
    .line 7
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->W()J

    .line 8
    move-result-wide v1

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 16
    move-result-wide v4

    .line 17
    .line 18
    sub-float v0, p3, v0

    .line 19
    .line 20
    .line 21
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->W()J

    .line 22
    move-result-wide v1

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 26
    move-result v1

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 30
    move-result-wide v6

    .line 31
    .line 32
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->b()I

    .line 36
    move-result v9

    .line 37
    const/4 v10, 0x0

    .line 38
    const/4 v11, 0x0

    .line 39
    const/4 v12, 0x0

    .line 40
    const/4 v13, 0x0

    .line 41
    .line 42
    const/16 v14, 0x1e0

    .line 43
    const/4 v15, 0x0

    .line 44
    .line 45
    move-object/from16 v1, p0

    .line 46
    .line 47
    move-wide/from16 v2, p1

    .line 48
    .line 49
    move/from16 v8, p4

    .line 50
    .line 51
    .line 52
    invoke-static/range {v1 .. v15}, Landroidx/compose/ui/graphics/drawscope/a;->i(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 53
    return-void
.end method

.method public static final i()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/SwitchKt;->TrackStrokeWidth:F

    return v0
.end method

.method public static final j()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/SwitchKt;->TrackWidth:F

    return v0
.end method
