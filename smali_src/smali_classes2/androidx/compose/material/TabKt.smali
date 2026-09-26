.class public final Landroidx/compose/material/TabKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTab.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tab.kt\nandroidx/compose/material/TabKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Transition.kt\nandroidx/compose/animation/TransitionKt\n+ 6 Transition.kt\nandroidx/compose/animation/core/TransitionKt\n+ 7 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 8 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 9 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 10 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,434:1\n25#2:435\n25#2:443\n25#2:451\n36#2:464\n460#2,13:494\n460#2,13:526\n473#2,3:540\n460#2,13:564\n473#2,3:578\n473#2,3:583\n1057#3,6:436\n1057#3,6:444\n1057#3,6:452\n957#3,3:465\n960#3,3:469\n76#4:442\n76#4:450\n76#4:458\n76#4:482\n76#4:514\n76#4:552\n66#5,5:459\n71#5:468\n74#5:472\n844#6,5:473\n72#7,4:478\n76#7,11:483\n75#7:513\n76#7,11:515\n89#7:543\n75#7:551\n76#7,11:553\n89#7:581\n89#7:586\n67#8,6:507\n73#8:539\n77#8:544\n67#8,6:545\n73#8:577\n77#8:582\n76#9:587\n155#10:588\n155#10:589\n155#10:590\n155#10:591\n155#10:592\n155#10:593\n*S KotlinDebug\n*F\n+ 1 Tab.kt\nandroidx/compose/material/TabKt\n*L\n97#1:435\n159#1:443\n228#1:451\n270#1:464\n305#1:494,13\n308#1:526,13\n308#1:540,3\n313#1:564,13\n313#1:578,3\n305#1:583,3\n97#1:436,6\n159#1:444,6\n228#1:452,6\n270#1:465,3\n270#1:469,3\n98#1:442\n160#1:450\n229#1:458\n305#1:482\n308#1:514\n313#1:552\n270#1:459,5\n270#1:468\n270#1:472\n270#1:473,5\n305#1:478,4\n305#1:483,11\n308#1:513\n308#1:515,11\n308#1:543\n313#1:551\n313#1:553,11\n313#1:581\n305#1:586\n308#1:507,6\n308#1:539\n308#1:544\n313#1:545,6\n313#1:577\n313#1:582\n270#1:587\n413#1:588\n414#1:589\n422#1:590\n426#1:591\n429#1:592\n433#1:593\n*E\n"
.end annotation


# static fields
.field private static final DoubleLineTextBaselineWithIcon:F

.field private static final HorizontalTextPadding:F

.field private static final IconDistanceFromBaseline:J

.field private static final LargeTabHeight:F

.field private static final SingleLineTextBaselineWithIcon:F

.field private static final SmallTabHeight:F

.field private static final TabFadeInAnimationDelay:I = 0x64

.field private static final TabFadeInAnimationDuration:I = 0x96

.field private static final TabFadeOutAnimationDuration:I = 0x64

.field private static final TextDistanceFromLeadingIcon:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x30

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
    sput v0, Landroidx/compose/material/TabKt;->SmallTabHeight:F

    .line 10
    .line 11
    const/16 v0, 0x48

    .line 12
    int-to-float v0, v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 16
    move-result v0

    .line 17
    .line 18
    sput v0, Landroidx/compose/material/TabKt;->LargeTabHeight:F

    .line 19
    .line 20
    const/16 v0, 0x10

    .line 21
    int-to-float v0, v0

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 25
    move-result v0

    .line 26
    .line 27
    sput v0, Landroidx/compose/material/TabKt;->HorizontalTextPadding:F

    .line 28
    .line 29
    const/16 v0, 0xe

    .line 30
    int-to-float v0, v0

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 34
    move-result v0

    .line 35
    .line 36
    sput v0, Landroidx/compose/material/TabKt;->SingleLineTextBaselineWithIcon:F

    .line 37
    const/4 v0, 0x6

    .line 38
    int-to-float v0, v0

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 42
    move-result v0

    .line 43
    .line 44
    sput v0, Landroidx/compose/material/TabKt;->DoubleLineTextBaselineWithIcon:F

    .line 45
    .line 46
    const/16 v0, 0x14

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->e(I)J

    .line 50
    move-result-wide v0

    .line 51
    .line 52
    sput-wide v0, Landroidx/compose/material/TabKt;->IconDistanceFromBaseline:J

    .line 53
    .line 54
    const/16 v0, 0x8

    .line 55
    int-to-float v0, v0

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 59
    move-result v0

    .line 60
    .line 61
    sput v0, Landroidx/compose/material/TabKt;->TextDistanceFromLeadingIcon:F

    .line 62
    return-void
.end method

.method public static final a(ZLe8/a;Le8/p;Le8/p;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;JJLandroidx/compose/runtime/Composer;II)V
    .locals 28
    .param p1    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "JJ",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v10, p1

    .line 3
    .line 4
    move-object/from16 v11, p2

    .line 5
    .line 6
    move-object/from16 v12, p3

    .line 7
    .line 8
    move/from16 v13, p12

    .line 9
    .line 10
    move/from16 v14, p13

    .line 11
    .line 12
    const-string v0, "onClick"

    .line 13
    .line 14
    .line 15
    invoke-static {v10, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "text"

    .line 18
    .line 19
    .line 20
    invoke-static {v11, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    const-string v0, "icon"

    .line 23
    .line 24
    .line 25
    invoke-static {v12, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const v0, -0x59661301

    .line 29
    .line 30
    move-object/from16 v1, p11

    .line 31
    .line 32
    .line 33
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 34
    move-result-object v15

    .line 35
    .line 36
    and-int/lit8 v0, v14, 0x1

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    or-int/lit8 v0, v13, 0x6

    .line 41
    .line 42
    move/from16 v9, p0

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_0
    and-int/lit8 v0, v13, 0xe

    .line 46
    .line 47
    move/from16 v9, p0

    .line 48
    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 53
    move-result v0

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    const/4 v0, 0x4

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 v0, 0x2

    .line 59
    :goto_0
    or-int/2addr v0, v13

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    move v0, v13

    .line 62
    .line 63
    :goto_1
    and-int/lit8 v1, v14, 0x2

    .line 64
    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    or-int/lit8 v0, v0, 0x30

    .line 68
    goto :goto_3

    .line 69
    .line 70
    :cond_3
    and-int/lit8 v1, v13, 0x70

    .line 71
    .line 72
    if-nez v1, :cond_5

    .line 73
    .line 74
    .line 75
    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 76
    move-result v1

    .line 77
    .line 78
    if-eqz v1, :cond_4

    .line 79
    .line 80
    const/16 v1, 0x20

    .line 81
    goto :goto_2

    .line 82
    .line 83
    :cond_4
    const/16 v1, 0x10

    .line 84
    :goto_2
    or-int/2addr v0, v1

    .line 85
    .line 86
    :cond_5
    :goto_3
    and-int/lit8 v1, v14, 0x4

    .line 87
    .line 88
    if-eqz v1, :cond_6

    .line 89
    .line 90
    or-int/lit16 v0, v0, 0x180

    .line 91
    goto :goto_5

    .line 92
    .line 93
    :cond_6
    and-int/lit16 v1, v13, 0x380

    .line 94
    .line 95
    if-nez v1, :cond_8

    .line 96
    .line 97
    .line 98
    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 99
    move-result v1

    .line 100
    .line 101
    if-eqz v1, :cond_7

    .line 102
    .line 103
    const/16 v1, 0x100

    .line 104
    goto :goto_4

    .line 105
    .line 106
    :cond_7
    const/16 v1, 0x80

    .line 107
    :goto_4
    or-int/2addr v0, v1

    .line 108
    .line 109
    :cond_8
    :goto_5
    and-int/lit8 v1, v14, 0x8

    .line 110
    .line 111
    if-eqz v1, :cond_9

    .line 112
    .line 113
    or-int/lit16 v0, v0, 0xc00

    .line 114
    goto :goto_7

    .line 115
    .line 116
    :cond_9
    and-int/lit16 v1, v13, 0x1c00

    .line 117
    .line 118
    if-nez v1, :cond_b

    .line 119
    .line 120
    .line 121
    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 122
    move-result v1

    .line 123
    .line 124
    if-eqz v1, :cond_a

    .line 125
    .line 126
    const/16 v1, 0x800

    .line 127
    goto :goto_6

    .line 128
    .line 129
    :cond_a
    const/16 v1, 0x400

    .line 130
    :goto_6
    or-int/2addr v0, v1

    .line 131
    .line 132
    :cond_b
    :goto_7
    and-int/lit8 v1, v14, 0x10

    .line 133
    .line 134
    if-eqz v1, :cond_d

    .line 135
    .line 136
    or-int/lit16 v0, v0, 0x6000

    .line 137
    .line 138
    :cond_c
    move-object/from16 v2, p4

    .line 139
    goto :goto_9

    .line 140
    .line 141
    .line 142
    :cond_d
    const v2, 0xe000

    .line 143
    and-int/2addr v2, v13

    .line 144
    .line 145
    if-nez v2, :cond_c

    .line 146
    .line 147
    move-object/from16 v2, p4

    .line 148
    .line 149
    .line 150
    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 151
    move-result v3

    .line 152
    .line 153
    if-eqz v3, :cond_e

    .line 154
    .line 155
    const/16 v3, 0x4000

    .line 156
    goto :goto_8

    .line 157
    .line 158
    :cond_e
    const/16 v3, 0x2000

    .line 159
    :goto_8
    or-int/2addr v0, v3

    .line 160
    .line 161
    :goto_9
    and-int/lit8 v3, v14, 0x20

    .line 162
    .line 163
    if-eqz v3, :cond_10

    .line 164
    .line 165
    const/high16 v4, 0x30000

    .line 166
    or-int/2addr v0, v4

    .line 167
    .line 168
    :cond_f
    move/from16 v4, p5

    .line 169
    goto :goto_b

    .line 170
    .line 171
    :cond_10
    const/high16 v4, 0x70000

    .line 172
    and-int/2addr v4, v13

    .line 173
    .line 174
    if-nez v4, :cond_f

    .line 175
    .line 176
    move/from16 v4, p5

    .line 177
    .line 178
    .line 179
    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 180
    move-result v5

    .line 181
    .line 182
    if-eqz v5, :cond_11

    .line 183
    .line 184
    const/high16 v5, 0x20000

    .line 185
    goto :goto_a

    .line 186
    .line 187
    :cond_11
    const/high16 v5, 0x10000

    .line 188
    :goto_a
    or-int/2addr v0, v5

    .line 189
    .line 190
    :goto_b
    and-int/lit8 v5, v14, 0x40

    .line 191
    .line 192
    if-eqz v5, :cond_13

    .line 193
    .line 194
    const/high16 v6, 0x180000

    .line 195
    or-int/2addr v0, v6

    .line 196
    .line 197
    :cond_12
    move-object/from16 v6, p6

    .line 198
    goto :goto_d

    .line 199
    .line 200
    :cond_13
    const/high16 v6, 0x380000

    .line 201
    and-int/2addr v6, v13

    .line 202
    .line 203
    if-nez v6, :cond_12

    .line 204
    .line 205
    move-object/from16 v6, p6

    .line 206
    .line 207
    .line 208
    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 209
    move-result v7

    .line 210
    .line 211
    if-eqz v7, :cond_14

    .line 212
    .line 213
    const/high16 v7, 0x100000

    .line 214
    goto :goto_c

    .line 215
    .line 216
    :cond_14
    const/high16 v7, 0x80000

    .line 217
    :goto_c
    or-int/2addr v0, v7

    .line 218
    .line 219
    :goto_d
    const/high16 v7, 0x1c00000

    .line 220
    and-int/2addr v7, v13

    .line 221
    .line 222
    if-nez v7, :cond_17

    .line 223
    .line 224
    and-int/lit16 v7, v14, 0x80

    .line 225
    .line 226
    if-nez v7, :cond_15

    .line 227
    .line 228
    move-wide/from16 v7, p7

    .line 229
    .line 230
    .line 231
    invoke-interface {v15, v7, v8}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 232
    move-result v16

    .line 233
    .line 234
    if-eqz v16, :cond_16

    .line 235
    .line 236
    const/high16 v16, 0x800000

    .line 237
    goto :goto_e

    .line 238
    .line 239
    :cond_15
    move-wide/from16 v7, p7

    .line 240
    .line 241
    :cond_16
    const/high16 v16, 0x400000

    .line 242
    .line 243
    :goto_e
    or-int v0, v0, v16

    .line 244
    goto :goto_f

    .line 245
    .line 246
    :cond_17
    move-wide/from16 v7, p7

    .line 247
    .line 248
    :goto_f
    const/high16 v16, 0xe000000

    .line 249
    .line 250
    and-int v16, v13, v16

    .line 251
    .line 252
    if-nez v16, :cond_19

    .line 253
    .line 254
    and-int/lit16 v2, v14, 0x100

    .line 255
    .line 256
    move-wide/from16 v6, p9

    .line 257
    .line 258
    if-nez v2, :cond_18

    .line 259
    .line 260
    .line 261
    invoke-interface {v15, v6, v7}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 262
    move-result v2

    .line 263
    .line 264
    if-eqz v2, :cond_18

    .line 265
    .line 266
    const/high16 v2, 0x4000000

    .line 267
    goto :goto_10

    .line 268
    .line 269
    :cond_18
    const/high16 v2, 0x2000000

    .line 270
    :goto_10
    or-int/2addr v0, v2

    .line 271
    goto :goto_11

    .line 272
    .line 273
    :cond_19
    move-wide/from16 v6, p9

    .line 274
    .line 275
    .line 276
    :goto_11
    const v2, 0xb6db6db

    .line 277
    and-int/2addr v2, v0

    .line 278
    .line 279
    .line 280
    const v8, 0x2492492

    .line 281
    .line 282
    if-ne v2, v8, :cond_1b

    .line 283
    .line 284
    .line 285
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->b()Z

    .line 286
    move-result v2

    .line 287
    .line 288
    if-nez v2, :cond_1a

    .line 289
    goto :goto_12

    .line 290
    .line 291
    .line 292
    :cond_1a
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->g()V

    .line 293
    .line 294
    move-object/from16 v5, p4

    .line 295
    .line 296
    move-wide/from16 v8, p7

    .line 297
    move-wide v10, v6

    .line 298
    .line 299
    move-object/from16 v7, p6

    .line 300
    move v6, v4

    .line 301
    .line 302
    goto/16 :goto_19

    .line 303
    .line 304
    .line 305
    :cond_1b
    :goto_12
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->J()V

    .line 306
    .line 307
    and-int/lit8 v2, v13, 0x1

    .line 308
    .line 309
    .line 310
    const v16, -0x1c00001

    .line 311
    const/4 v8, 0x1

    .line 312
    .line 313
    if-eqz v2, :cond_1f

    .line 314
    .line 315
    .line 316
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->h()Z

    .line 317
    move-result v2

    .line 318
    .line 319
    if-eqz v2, :cond_1c

    .line 320
    goto :goto_13

    .line 321
    .line 322
    .line 323
    :cond_1c
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->g()V

    .line 324
    .line 325
    and-int/lit16 v1, v14, 0x80

    .line 326
    .line 327
    if-eqz v1, :cond_1d

    .line 328
    .line 329
    and-int v0, v0, v16

    .line 330
    .line 331
    :cond_1d
    and-int/lit16 v1, v14, 0x100

    .line 332
    .line 333
    if-eqz v1, :cond_1e

    .line 334
    .line 335
    .line 336
    const v1, -0xe000001

    .line 337
    and-int/2addr v0, v1

    .line 338
    .line 339
    :cond_1e
    move-object/from16 v16, p4

    .line 340
    .line 341
    move-object/from16 v19, p6

    .line 342
    .line 343
    move-wide/from16 v20, p7

    .line 344
    .line 345
    move/from16 v24, v0

    .line 346
    .line 347
    move/from16 v18, v4

    .line 348
    .line 349
    move-wide/from16 v22, v6

    .line 350
    .line 351
    goto/16 :goto_18

    .line 352
    .line 353
    :cond_1f
    :goto_13
    if-eqz v1, :cond_20

    .line 354
    .line 355
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 356
    goto :goto_14

    .line 357
    .line 358
    :cond_20
    move-object/from16 v1, p4

    .line 359
    .line 360
    :goto_14
    if-eqz v3, :cond_21

    .line 361
    move v4, v8

    .line 362
    .line 363
    :cond_21
    if-eqz v5, :cond_23

    .line 364
    .line 365
    .line 366
    const v2, -0x1d58f75c

    .line 367
    .line 368
    .line 369
    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 370
    .line 371
    .line 372
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 373
    move-result-object v2

    .line 374
    .line 375
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 379
    move-result-object v3

    .line 380
    .line 381
    if-ne v2, v3, :cond_22

    .line 382
    .line 383
    .line 384
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 385
    move-result-object v2

    .line 386
    .line 387
    .line 388
    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    :cond_22
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->Q()V

    .line 392
    .line 393
    check-cast v2, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 394
    goto :goto_15

    .line 395
    .line 396
    :cond_23
    move-object/from16 v2, p6

    .line 397
    .line 398
    :goto_15
    and-int/lit16 v3, v14, 0x80

    .line 399
    .line 400
    if-eqz v3, :cond_24

    .line 401
    .line 402
    .line 403
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 404
    move-result-object v3

    .line 405
    .line 406
    .line 407
    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 408
    move-result-object v3

    .line 409
    .line 410
    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 414
    move-result-wide v18

    .line 415
    .line 416
    and-int v0, v0, v16

    .line 417
    goto :goto_16

    .line 418
    .line 419
    :cond_24
    move-wide/from16 v18, p7

    .line 420
    .line 421
    :goto_16
    and-int/lit16 v3, v14, 0x100

    .line 422
    .line 423
    if-eqz v3, :cond_25

    .line 424
    .line 425
    sget-object v3, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 426
    const/4 v5, 0x6

    .line 427
    .line 428
    .line 429
    invoke-virtual {v3, v15, v5}, Landroidx/compose/material/ContentAlpha;->d(Landroidx/compose/runtime/Composer;I)F

    .line 430
    move-result v22

    .line 431
    .line 432
    const/16 v23, 0x0

    .line 433
    .line 434
    const/16 v24, 0x0

    .line 435
    .line 436
    const/16 v25, 0x0

    .line 437
    .line 438
    const/16 v26, 0xe

    .line 439
    .line 440
    const/16 v27, 0x0

    .line 441
    .line 442
    move-wide/from16 v20, v18

    .line 443
    .line 444
    .line 445
    invoke-static/range {v20 .. v27}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 446
    move-result-wide v5

    .line 447
    .line 448
    .line 449
    const v3, -0xe000001

    .line 450
    and-int/2addr v0, v3

    .line 451
    .line 452
    move/from16 v24, v0

    .line 453
    .line 454
    move-object/from16 v16, v1

    .line 455
    .line 456
    move-wide/from16 v22, v5

    .line 457
    .line 458
    :goto_17
    move-object/from16 v19, v2

    .line 459
    .line 460
    move/from16 v18, v4

    .line 461
    goto :goto_18

    .line 462
    .line 463
    :cond_25
    move/from16 v24, v0

    .line 464
    .line 465
    move-object/from16 v16, v1

    .line 466
    .line 467
    move-wide/from16 v22, v6

    .line 468
    .line 469
    move-wide/from16 v20, v18

    .line 470
    goto :goto_17

    .line 471
    .line 472
    .line 473
    :goto_18
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->A()V

    .line 474
    const/4 v0, 0x1

    .line 475
    const/4 v1, 0x0

    .line 476
    .line 477
    shr-int/lit8 v2, v24, 0xf

    .line 478
    .line 479
    and-int/lit16 v2, v2, 0x380

    .line 480
    .line 481
    const/16 v17, 0x6

    .line 482
    .line 483
    or-int/lit8 v2, v2, 0x6

    .line 484
    const/4 v3, 0x2

    .line 485
    .line 486
    move/from16 p4, v0

    .line 487
    .line 488
    move/from16 p5, v1

    .line 489
    .line 490
    move-wide/from16 p6, v20

    .line 491
    .line 492
    move-object/from16 p8, v15

    .line 493
    .line 494
    move/from16 p9, v2

    .line 495
    .line 496
    move/from16 p10, v3

    .line 497
    .line 498
    .line 499
    invoke-static/range {p4 .. p10}, Landroidx/compose/material/ripple/RippleKt;->e(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    .line 500
    move-result-object v4

    .line 501
    .line 502
    new-instance v7, Landroidx/compose/material/TabKt$LeadingIconTab$2;

    .line 503
    move-object v0, v7

    .line 504
    .line 505
    move-object/from16 v1, v16

    .line 506
    .line 507
    move/from16 v2, p0

    .line 508
    .line 509
    move-object/from16 v3, v19

    .line 510
    .line 511
    move/from16 v5, v18

    .line 512
    .line 513
    move-object/from16 v6, p1

    .line 514
    move-object v10, v7

    .line 515
    .line 516
    move-object/from16 v7, p3

    .line 517
    move v11, v8

    .line 518
    .line 519
    move/from16 v8, v24

    .line 520
    .line 521
    move-object/from16 v9, p2

    .line 522
    .line 523
    .line 524
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material/TabKt$LeadingIconTab$2;-><init>(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLe8/a;Le8/p;ILe8/p;)V

    .line 525
    .line 526
    .line 527
    const v0, 0x33a873bb

    .line 528
    .line 529
    .line 530
    invoke-static {v15, v0, v11, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 531
    move-result-object v0

    .line 532
    .line 533
    shr-int/lit8 v1, v24, 0x15

    .line 534
    .line 535
    and-int/lit8 v2, v1, 0xe

    .line 536
    .line 537
    or-int/lit16 v2, v2, 0xc00

    .line 538
    .line 539
    and-int/lit8 v1, v1, 0x70

    .line 540
    or-int/2addr v1, v2

    .line 541
    .line 542
    shl-int/lit8 v2, v24, 0x6

    .line 543
    .line 544
    and-int/lit16 v2, v2, 0x380

    .line 545
    or-int/2addr v1, v2

    .line 546
    .line 547
    move-wide/from16 p4, v20

    .line 548
    .line 549
    move-wide/from16 p6, v22

    .line 550
    .line 551
    move/from16 p8, p0

    .line 552
    .line 553
    move-object/from16 p9, v0

    .line 554
    .line 555
    move-object/from16 p10, v15

    .line 556
    .line 557
    move/from16 p11, v1

    .line 558
    .line 559
    .line 560
    invoke-static/range {p4 .. p11}, Landroidx/compose/material/TabKt;->e(JJZLe8/p;Landroidx/compose/runtime/Composer;I)V

    .line 561
    .line 562
    move-object/from16 v5, v16

    .line 563
    .line 564
    move/from16 v6, v18

    .line 565
    .line 566
    move-object/from16 v7, v19

    .line 567
    .line 568
    move-wide/from16 v8, v20

    .line 569
    .line 570
    move-wide/from16 v10, v22

    .line 571
    .line 572
    .line 573
    :goto_19
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 574
    move-result-object v15

    .line 575
    .line 576
    if-nez v15, :cond_26

    .line 577
    goto :goto_1a

    .line 578
    .line 579
    :cond_26
    new-instance v4, Landroidx/compose/material/TabKt$LeadingIconTab$3;

    .line 580
    move-object v0, v4

    .line 581
    .line 582
    move/from16 v1, p0

    .line 583
    .line 584
    move-object/from16 v2, p1

    .line 585
    .line 586
    move-object/from16 v3, p2

    .line 587
    move-object v14, v4

    .line 588
    .line 589
    move-object/from16 v4, p3

    .line 590
    .line 591
    move/from16 v12, p12

    .line 592
    .line 593
    move/from16 v13, p13

    .line 594
    .line 595
    .line 596
    invoke-direct/range {v0 .. v13}, Landroidx/compose/material/TabKt$LeadingIconTab$3;-><init>(ZLe8/a;Le8/p;Le8/p;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;JJII)V

    .line 597
    .line 598
    .line 599
    invoke-interface {v15, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 600
    :goto_1a
    return-void
.end method

.method public static final b(ZLe8/a;Landroidx/compose/ui/Modifier;ZLe8/p;Le8/p;Landroidx/compose/foundation/interaction/MutableInteractionSource;JJLandroidx/compose/runtime/Composer;II)V
    .locals 29
    .param p1    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "JJ",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v13, p1

    .line 3
    .line 4
    move/from16 v14, p12

    .line 5
    .line 6
    move/from16 v15, p13

    .line 7
    .line 8
    const-string v0, "onClick"

    .line 9
    .line 10
    .line 11
    invoke-static {v13, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v0, -0x58940cb4

    .line 15
    .line 16
    move-object/from16 v1, p11

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 20
    move-result-object v12

    .line 21
    .line 22
    and-int/lit8 v0, v15, 0x1

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    or-int/lit8 v0, v14, 0x6

    .line 27
    .line 28
    move/from16 v11, p0

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_0
    and-int/lit8 v0, v14, 0xe

    .line 32
    .line 33
    move/from16 v11, p0

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    const/4 v0, 0x4

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, 0x2

    .line 45
    :goto_0
    or-int/2addr v0, v14

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move v0, v14

    .line 48
    .line 49
    :goto_1
    and-int/lit8 v1, v15, 0x2

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    or-int/lit8 v0, v0, 0x30

    .line 54
    goto :goto_3

    .line 55
    .line 56
    :cond_3
    and-int/lit8 v1, v14, 0x70

    .line 57
    .line 58
    if-nez v1, :cond_5

    .line 59
    .line 60
    .line 61
    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 62
    move-result v1

    .line 63
    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    const/16 v1, 0x20

    .line 67
    goto :goto_2

    .line 68
    .line 69
    :cond_4
    const/16 v1, 0x10

    .line 70
    :goto_2
    or-int/2addr v0, v1

    .line 71
    .line 72
    :cond_5
    :goto_3
    and-int/lit8 v1, v15, 0x4

    .line 73
    .line 74
    if-eqz v1, :cond_7

    .line 75
    .line 76
    or-int/lit16 v0, v0, 0x180

    .line 77
    .line 78
    :cond_6
    move-object/from16 v2, p2

    .line 79
    goto :goto_5

    .line 80
    .line 81
    :cond_7
    and-int/lit16 v2, v14, 0x380

    .line 82
    .line 83
    if-nez v2, :cond_6

    .line 84
    .line 85
    move-object/from16 v2, p2

    .line 86
    .line 87
    .line 88
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 89
    move-result v3

    .line 90
    .line 91
    if-eqz v3, :cond_8

    .line 92
    .line 93
    const/16 v3, 0x100

    .line 94
    goto :goto_4

    .line 95
    .line 96
    :cond_8
    const/16 v3, 0x80

    .line 97
    :goto_4
    or-int/2addr v0, v3

    .line 98
    .line 99
    :goto_5
    and-int/lit8 v3, v15, 0x8

    .line 100
    .line 101
    if-eqz v3, :cond_a

    .line 102
    .line 103
    or-int/lit16 v0, v0, 0xc00

    .line 104
    .line 105
    :cond_9
    move/from16 v4, p3

    .line 106
    goto :goto_7

    .line 107
    .line 108
    :cond_a
    and-int/lit16 v4, v14, 0x1c00

    .line 109
    .line 110
    if-nez v4, :cond_9

    .line 111
    .line 112
    move/from16 v4, p3

    .line 113
    .line 114
    .line 115
    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 116
    move-result v5

    .line 117
    .line 118
    if-eqz v5, :cond_b

    .line 119
    .line 120
    const/16 v5, 0x800

    .line 121
    goto :goto_6

    .line 122
    .line 123
    :cond_b
    const/16 v5, 0x400

    .line 124
    :goto_6
    or-int/2addr v0, v5

    .line 125
    .line 126
    :goto_7
    and-int/lit8 v5, v15, 0x10

    .line 127
    .line 128
    .line 129
    const v6, 0xe000

    .line 130
    .line 131
    if-eqz v5, :cond_d

    .line 132
    .line 133
    or-int/lit16 v0, v0, 0x6000

    .line 134
    .line 135
    :cond_c
    move-object/from16 v7, p4

    .line 136
    goto :goto_9

    .line 137
    .line 138
    :cond_d
    and-int v7, v14, v6

    .line 139
    .line 140
    if-nez v7, :cond_c

    .line 141
    .line 142
    move-object/from16 v7, p4

    .line 143
    .line 144
    .line 145
    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 146
    move-result v8

    .line 147
    .line 148
    if-eqz v8, :cond_e

    .line 149
    .line 150
    const/16 v8, 0x4000

    .line 151
    goto :goto_8

    .line 152
    .line 153
    :cond_e
    const/16 v8, 0x2000

    .line 154
    :goto_8
    or-int/2addr v0, v8

    .line 155
    .line 156
    :goto_9
    and-int/lit8 v8, v15, 0x20

    .line 157
    .line 158
    const/high16 v9, 0x70000

    .line 159
    .line 160
    if-eqz v8, :cond_10

    .line 161
    .line 162
    const/high16 v10, 0x30000

    .line 163
    or-int/2addr v0, v10

    .line 164
    .line 165
    :cond_f
    move-object/from16 v10, p5

    .line 166
    goto :goto_b

    .line 167
    .line 168
    :cond_10
    and-int v10, v14, v9

    .line 169
    .line 170
    if-nez v10, :cond_f

    .line 171
    .line 172
    move-object/from16 v10, p5

    .line 173
    .line 174
    .line 175
    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 176
    move-result v16

    .line 177
    .line 178
    if-eqz v16, :cond_11

    .line 179
    .line 180
    const/high16 v16, 0x20000

    .line 181
    goto :goto_a

    .line 182
    .line 183
    :cond_11
    const/high16 v16, 0x10000

    .line 184
    .line 185
    :goto_a
    or-int v0, v0, v16

    .line 186
    .line 187
    :goto_b
    and-int/lit8 v16, v15, 0x40

    .line 188
    .line 189
    const/high16 v17, 0x380000

    .line 190
    .line 191
    if-eqz v16, :cond_12

    .line 192
    .line 193
    const/high16 v18, 0x180000

    .line 194
    .line 195
    or-int v0, v0, v18

    .line 196
    .line 197
    move-object/from16 v9, p6

    .line 198
    goto :goto_d

    .line 199
    .line 200
    :cond_12
    and-int v18, v14, v17

    .line 201
    .line 202
    move-object/from16 v9, p6

    .line 203
    .line 204
    if-nez v18, :cond_14

    .line 205
    .line 206
    .line 207
    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 208
    move-result v18

    .line 209
    .line 210
    if-eqz v18, :cond_13

    .line 211
    .line 212
    const/high16 v18, 0x100000

    .line 213
    goto :goto_c

    .line 214
    .line 215
    :cond_13
    const/high16 v18, 0x80000

    .line 216
    .line 217
    :goto_c
    or-int v0, v0, v18

    .line 218
    .line 219
    :cond_14
    :goto_d
    const/high16 v18, 0x1c00000

    .line 220
    .line 221
    and-int v18, v14, v18

    .line 222
    .line 223
    if-nez v18, :cond_17

    .line 224
    .line 225
    and-int/lit16 v6, v15, 0x80

    .line 226
    .line 227
    if-nez v6, :cond_15

    .line 228
    .line 229
    move-wide/from16 v6, p7

    .line 230
    .line 231
    .line 232
    invoke-interface {v12, v6, v7}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 233
    move-result v19

    .line 234
    .line 235
    if-eqz v19, :cond_16

    .line 236
    .line 237
    const/high16 v19, 0x800000

    .line 238
    goto :goto_e

    .line 239
    .line 240
    :cond_15
    move-wide/from16 v6, p7

    .line 241
    .line 242
    :cond_16
    const/high16 v19, 0x400000

    .line 243
    .line 244
    :goto_e
    or-int v0, v0, v19

    .line 245
    goto :goto_f

    .line 246
    .line 247
    :cond_17
    move-wide/from16 v6, p7

    .line 248
    .line 249
    :goto_f
    const/high16 v19, 0xe000000

    .line 250
    .line 251
    and-int v19, v14, v19

    .line 252
    .line 253
    if-nez v19, :cond_19

    .line 254
    .line 255
    and-int/lit16 v2, v15, 0x100

    .line 256
    .line 257
    move-wide/from16 v6, p9

    .line 258
    .line 259
    if-nez v2, :cond_18

    .line 260
    .line 261
    .line 262
    invoke-interface {v12, v6, v7}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 263
    move-result v2

    .line 264
    .line 265
    if-eqz v2, :cond_18

    .line 266
    .line 267
    const/high16 v2, 0x4000000

    .line 268
    goto :goto_10

    .line 269
    .line 270
    :cond_18
    const/high16 v2, 0x2000000

    .line 271
    :goto_10
    or-int/2addr v0, v2

    .line 272
    goto :goto_11

    .line 273
    .line 274
    :cond_19
    move-wide/from16 v6, p9

    .line 275
    .line 276
    .line 277
    :goto_11
    const v2, 0xb6db6db

    .line 278
    and-int/2addr v2, v0

    .line 279
    .line 280
    .line 281
    const v4, 0x2492492

    .line 282
    .line 283
    if-ne v2, v4, :cond_1b

    .line 284
    .line 285
    .line 286
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->b()Z

    .line 287
    move-result v2

    .line 288
    .line 289
    if-nez v2, :cond_1a

    .line 290
    goto :goto_12

    .line 291
    .line 292
    .line 293
    :cond_1a
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->g()V

    .line 294
    .line 295
    move-object/from16 v3, p2

    .line 296
    .line 297
    move/from16 v4, p3

    .line 298
    .line 299
    move-object/from16 v5, p4

    .line 300
    .line 301
    move-object/from16 v17, v12

    .line 302
    .line 303
    move-wide/from16 v27, v6

    .line 304
    move-object v7, v9

    .line 305
    .line 306
    move-wide/from16 v8, p7

    .line 307
    move-object v6, v10

    .line 308
    .line 309
    move-wide/from16 v10, v27

    .line 310
    .line 311
    goto/16 :goto_1c

    .line 312
    .line 313
    .line 314
    :cond_1b
    :goto_12
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->J()V

    .line 315
    .line 316
    and-int/lit8 v2, v14, 0x1

    .line 317
    .line 318
    .line 319
    const v19, -0x1c00001

    .line 320
    .line 321
    const/16 v20, 0x0

    .line 322
    .line 323
    if-eqz v2, :cond_1f

    .line 324
    .line 325
    .line 326
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->h()Z

    .line 327
    move-result v2

    .line 328
    .line 329
    if-eqz v2, :cond_1c

    .line 330
    goto :goto_13

    .line 331
    .line 332
    .line 333
    :cond_1c
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->g()V

    .line 334
    .line 335
    and-int/lit16 v1, v15, 0x80

    .line 336
    .line 337
    if-eqz v1, :cond_1d

    .line 338
    .line 339
    and-int v0, v0, v19

    .line 340
    .line 341
    :cond_1d
    and-int/lit16 v1, v15, 0x100

    .line 342
    .line 343
    if-eqz v1, :cond_1e

    .line 344
    .line 345
    .line 346
    const v1, -0xe000001

    .line 347
    and-int/2addr v0, v1

    .line 348
    .line 349
    :cond_1e
    move-object/from16 v19, p2

    .line 350
    .line 351
    move/from16 v21, p3

    .line 352
    .line 353
    move-wide/from16 v23, p7

    .line 354
    .line 355
    move-wide/from16 v25, v6

    .line 356
    .line 357
    move-object/from16 v22, v9

    .line 358
    move-object v9, v10

    .line 359
    .line 360
    move-object/from16 v10, p4

    .line 361
    .line 362
    goto/16 :goto_19

    .line 363
    .line 364
    :cond_1f
    :goto_13
    if-eqz v1, :cond_20

    .line 365
    .line 366
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 367
    goto :goto_14

    .line 368
    .line 369
    :cond_20
    move-object/from16 v1, p2

    .line 370
    .line 371
    :goto_14
    if-eqz v3, :cond_21

    .line 372
    const/4 v2, 0x1

    .line 373
    goto :goto_15

    .line 374
    .line 375
    :cond_21
    move/from16 v2, p3

    .line 376
    .line 377
    :goto_15
    if-eqz v5, :cond_22

    .line 378
    .line 379
    move-object/from16 v3, v20

    .line 380
    goto :goto_16

    .line 381
    .line 382
    :cond_22
    move-object/from16 v3, p4

    .line 383
    .line 384
    :goto_16
    if-eqz v8, :cond_23

    .line 385
    .line 386
    move-object/from16 v10, v20

    .line 387
    .line 388
    :cond_23
    if-eqz v16, :cond_25

    .line 389
    .line 390
    .line 391
    const v5, -0x1d58f75c

    .line 392
    .line 393
    .line 394
    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 395
    .line 396
    .line 397
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 398
    move-result-object v5

    .line 399
    .line 400
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 404
    move-result-object v8

    .line 405
    .line 406
    if-ne v5, v8, :cond_24

    .line 407
    .line 408
    .line 409
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 410
    move-result-object v5

    .line 411
    .line 412
    .line 413
    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    :cond_24
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->Q()V

    .line 417
    .line 418
    check-cast v5, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 419
    goto :goto_17

    .line 420
    :cond_25
    move-object v5, v9

    .line 421
    .line 422
    :goto_17
    and-int/lit16 v8, v15, 0x80

    .line 423
    .line 424
    if-eqz v8, :cond_26

    .line 425
    .line 426
    .line 427
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 428
    move-result-object v8

    .line 429
    .line 430
    .line 431
    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 432
    move-result-object v8

    .line 433
    .line 434
    check-cast v8, Landroidx/compose/ui/graphics/Color;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 438
    move-result-wide v8

    .line 439
    .line 440
    and-int v0, v0, v19

    .line 441
    goto :goto_18

    .line 442
    .line 443
    :cond_26
    move-wide/from16 v8, p7

    .line 444
    .line 445
    :goto_18
    and-int/lit16 v4, v15, 0x100

    .line 446
    .line 447
    if-eqz v4, :cond_27

    .line 448
    .line 449
    sget-object v4, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 450
    const/4 v6, 0x6

    .line 451
    .line 452
    .line 453
    invoke-virtual {v4, v12, v6}, Landroidx/compose/material/ContentAlpha;->d(Landroidx/compose/runtime/Composer;I)F

    .line 454
    move-result v4

    .line 455
    const/4 v6, 0x0

    .line 456
    const/4 v7, 0x0

    .line 457
    .line 458
    const/16 v19, 0x0

    .line 459
    .line 460
    const/16 v22, 0xe

    .line 461
    .line 462
    const/16 v23, 0x0

    .line 463
    .line 464
    move-wide/from16 p2, v8

    .line 465
    .line 466
    move/from16 p4, v4

    .line 467
    .line 468
    move/from16 p5, v6

    .line 469
    .line 470
    move/from16 p6, v7

    .line 471
    .line 472
    move/from16 p7, v19

    .line 473
    .line 474
    move/from16 p8, v22

    .line 475
    .line 476
    move-object/from16 p9, v23

    .line 477
    .line 478
    .line 479
    invoke-static/range {p2 .. p9}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 480
    move-result-wide v6

    .line 481
    .line 482
    .line 483
    const v4, -0xe000001

    .line 484
    and-int/2addr v0, v4

    .line 485
    .line 486
    :cond_27
    move-object/from16 v19, v1

    .line 487
    .line 488
    move/from16 v21, v2

    .line 489
    .line 490
    move-object/from16 v22, v5

    .line 491
    .line 492
    move-wide/from16 v25, v6

    .line 493
    .line 494
    move-wide/from16 v23, v8

    .line 495
    move-object v9, v10

    .line 496
    move-object v10, v3

    .line 497
    .line 498
    .line 499
    :goto_19
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->A()V

    .line 500
    .line 501
    if-eqz v10, :cond_28

    .line 502
    .line 503
    new-instance v1, Landroidx/compose/material/TabKt$Tab$styledText$1$1;

    .line 504
    .line 505
    .line 506
    invoke-direct {v1, v10, v0}, Landroidx/compose/material/TabKt$Tab$styledText$1$1;-><init>(Le8/p;I)V

    .line 507
    .line 508
    .line 509
    const v2, -0x670eabfd

    .line 510
    const/4 v3, 0x1

    .line 511
    .line 512
    .line 513
    invoke-static {v12, v2, v3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 514
    move-result-object v20

    .line 515
    .line 516
    :goto_1a
    move-object/from16 v1, v20

    .line 517
    goto :goto_1b

    .line 518
    :cond_28
    const/4 v3, 0x1

    .line 519
    goto :goto_1a

    .line 520
    .line 521
    :goto_1b
    new-instance v2, Landroidx/compose/material/TabKt$Tab$2;

    .line 522
    .line 523
    .line 524
    invoke-direct {v2, v1, v9, v0}, Landroidx/compose/material/TabKt$Tab$2;-><init>(Le8/p;Le8/p;I)V

    .line 525
    .line 526
    .line 527
    const v1, -0xa9e6047

    .line 528
    .line 529
    .line 530
    invoke-static {v12, v1, v3, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 531
    move-result-object v16

    .line 532
    .line 533
    const/high16 v1, 0xc00000

    .line 534
    .line 535
    and-int/lit8 v2, v0, 0xe

    .line 536
    or-int/2addr v1, v2

    .line 537
    .line 538
    and-int/lit8 v2, v0, 0x70

    .line 539
    or-int/2addr v1, v2

    .line 540
    .line 541
    and-int/lit16 v2, v0, 0x380

    .line 542
    or-int/2addr v1, v2

    .line 543
    .line 544
    and-int/lit16 v2, v0, 0x1c00

    .line 545
    or-int/2addr v1, v2

    .line 546
    const/4 v2, 0x6

    .line 547
    shr-int/2addr v0, v2

    .line 548
    .line 549
    .line 550
    const v2, 0xe000

    .line 551
    and-int/2addr v2, v0

    .line 552
    or-int/2addr v1, v2

    .line 553
    .line 554
    const/high16 v2, 0x70000

    .line 555
    and-int/2addr v2, v0

    .line 556
    or-int/2addr v1, v2

    .line 557
    .line 558
    and-int v0, v0, v17

    .line 559
    .line 560
    or-int v17, v1, v0

    .line 561
    .line 562
    const/16 v18, 0x0

    .line 563
    .line 564
    move/from16 v0, p0

    .line 565
    .line 566
    move-object/from16 v1, p1

    .line 567
    .line 568
    move-object/from16 v2, v19

    .line 569
    .line 570
    move/from16 v3, v21

    .line 571
    .line 572
    move-object/from16 v4, v22

    .line 573
    .line 574
    move-wide/from16 v5, v23

    .line 575
    .line 576
    move-wide/from16 v7, v25

    .line 577
    .line 578
    move-object/from16 v20, v9

    .line 579
    .line 580
    move-object/from16 v9, v16

    .line 581
    .line 582
    move-object/from16 v16, v10

    .line 583
    move-object v10, v12

    .line 584
    .line 585
    move/from16 v11, v17

    .line 586
    .line 587
    move-object/from16 v17, v12

    .line 588
    .line 589
    move/from16 v12, v18

    .line 590
    .line 591
    .line 592
    invoke-static/range {v0 .. v12}, Landroidx/compose/material/TabKt;->c(ZLe8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;JJLe8/q;Landroidx/compose/runtime/Composer;II)V

    .line 593
    .line 594
    move-object/from16 v5, v16

    .line 595
    .line 596
    move-object/from16 v3, v19

    .line 597
    .line 598
    move-object/from16 v6, v20

    .line 599
    .line 600
    move/from16 v4, v21

    .line 601
    .line 602
    move-object/from16 v7, v22

    .line 603
    .line 604
    move-wide/from16 v8, v23

    .line 605
    .line 606
    move-wide/from16 v10, v25

    .line 607
    .line 608
    .line 609
    :goto_1c
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 610
    move-result-object v12

    .line 611
    .line 612
    if-nez v12, :cond_29

    .line 613
    goto :goto_1d

    .line 614
    .line 615
    :cond_29
    new-instance v2, Landroidx/compose/material/TabKt$Tab$3;

    .line 616
    move-object v0, v2

    .line 617
    .line 618
    move/from16 v1, p0

    .line 619
    move-object v14, v2

    .line 620
    .line 621
    move-object/from16 v2, p1

    .line 622
    move-object v13, v12

    .line 623
    .line 624
    move/from16 v12, p12

    .line 625
    move-object v15, v13

    .line 626
    .line 627
    move/from16 v13, p13

    .line 628
    .line 629
    .line 630
    invoke-direct/range {v0 .. v13}, Landroidx/compose/material/TabKt$Tab$3;-><init>(ZLe8/a;Landroidx/compose/ui/Modifier;ZLe8/p;Le8/p;Landroidx/compose/foundation/interaction/MutableInteractionSource;JJII)V

    .line 631
    .line 632
    .line 633
    invoke-interface {v15, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 634
    :goto_1d
    return-void
.end method

.method public static final c(ZLe8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;JJLe8/q;Landroidx/compose/runtime/Composer;II)V
    .locals 27
    .param p1    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    .param p9    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "JJ",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
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
    move-object/from16 v9, p1

    .line 3
    .line 4
    move-object/from16 v10, p9

    .line 5
    .line 6
    move/from16 v11, p11

    .line 7
    .line 8
    move/from16 v12, p12

    .line 9
    .line 10
    const-string v0, "onClick"

    .line 11
    .line 12
    .line 13
    invoke-static {v9, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    const-string v0, "content"

    .line 16
    .line 17
    .line 18
    invoke-static {v10, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const v0, 0x2a89e147

    .line 22
    .line 23
    move-object/from16 v1, p10

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 27
    move-result-object v13

    .line 28
    .line 29
    and-int/lit8 v0, v12, 0x1

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    or-int/lit8 v0, v11, 0x6

    .line 34
    .line 35
    move/from16 v14, p0

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_0
    and-int/lit8 v0, v11, 0xe

    .line 39
    .line 40
    move/from16 v14, p0

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 46
    move-result v0

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    const/4 v0, 0x4

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 v0, 0x2

    .line 52
    :goto_0
    or-int/2addr v0, v11

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move v0, v11

    .line 55
    .line 56
    :goto_1
    and-int/lit8 v1, v12, 0x2

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    or-int/lit8 v0, v0, 0x30

    .line 61
    goto :goto_3

    .line 62
    .line 63
    :cond_3
    and-int/lit8 v1, v11, 0x70

    .line 64
    .line 65
    if-nez v1, :cond_5

    .line 66
    .line 67
    .line 68
    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 69
    move-result v1

    .line 70
    .line 71
    if-eqz v1, :cond_4

    .line 72
    .line 73
    const/16 v1, 0x20

    .line 74
    goto :goto_2

    .line 75
    .line 76
    :cond_4
    const/16 v1, 0x10

    .line 77
    :goto_2
    or-int/2addr v0, v1

    .line 78
    .line 79
    :cond_5
    :goto_3
    and-int/lit8 v1, v12, 0x4

    .line 80
    .line 81
    if-eqz v1, :cond_7

    .line 82
    .line 83
    or-int/lit16 v0, v0, 0x180

    .line 84
    .line 85
    :cond_6
    move-object/from16 v2, p2

    .line 86
    goto :goto_5

    .line 87
    .line 88
    :cond_7
    and-int/lit16 v2, v11, 0x380

    .line 89
    .line 90
    if-nez v2, :cond_6

    .line 91
    .line 92
    move-object/from16 v2, p2

    .line 93
    .line 94
    .line 95
    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 96
    move-result v3

    .line 97
    .line 98
    if-eqz v3, :cond_8

    .line 99
    .line 100
    const/16 v3, 0x100

    .line 101
    goto :goto_4

    .line 102
    .line 103
    :cond_8
    const/16 v3, 0x80

    .line 104
    :goto_4
    or-int/2addr v0, v3

    .line 105
    .line 106
    :goto_5
    and-int/lit8 v3, v12, 0x8

    .line 107
    .line 108
    if-eqz v3, :cond_a

    .line 109
    .line 110
    or-int/lit16 v0, v0, 0xc00

    .line 111
    .line 112
    :cond_9
    move/from16 v4, p3

    .line 113
    goto :goto_7

    .line 114
    .line 115
    :cond_a
    and-int/lit16 v4, v11, 0x1c00

    .line 116
    .line 117
    if-nez v4, :cond_9

    .line 118
    .line 119
    move/from16 v4, p3

    .line 120
    .line 121
    .line 122
    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 123
    move-result v5

    .line 124
    .line 125
    if-eqz v5, :cond_b

    .line 126
    .line 127
    const/16 v5, 0x800

    .line 128
    goto :goto_6

    .line 129
    .line 130
    :cond_b
    const/16 v5, 0x400

    .line 131
    :goto_6
    or-int/2addr v0, v5

    .line 132
    .line 133
    :goto_7
    and-int/lit8 v5, v12, 0x10

    .line 134
    .line 135
    if-eqz v5, :cond_d

    .line 136
    .line 137
    or-int/lit16 v0, v0, 0x6000

    .line 138
    .line 139
    :cond_c
    move-object/from16 v6, p4

    .line 140
    goto :goto_9

    .line 141
    .line 142
    .line 143
    :cond_d
    const v6, 0xe000

    .line 144
    and-int/2addr v6, v11

    .line 145
    .line 146
    if-nez v6, :cond_c

    .line 147
    .line 148
    move-object/from16 v6, p4

    .line 149
    .line 150
    .line 151
    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 152
    move-result v7

    .line 153
    .line 154
    if-eqz v7, :cond_e

    .line 155
    .line 156
    const/16 v7, 0x4000

    .line 157
    goto :goto_8

    .line 158
    .line 159
    :cond_e
    const/16 v7, 0x2000

    .line 160
    :goto_8
    or-int/2addr v0, v7

    .line 161
    .line 162
    :goto_9
    const/high16 v7, 0x70000

    .line 163
    and-int/2addr v7, v11

    .line 164
    .line 165
    if-nez v7, :cond_11

    .line 166
    .line 167
    and-int/lit8 v7, v12, 0x20

    .line 168
    .line 169
    if-nez v7, :cond_f

    .line 170
    .line 171
    move-wide/from16 v7, p5

    .line 172
    .line 173
    .line 174
    invoke-interface {v13, v7, v8}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 175
    move-result v15

    .line 176
    .line 177
    if-eqz v15, :cond_10

    .line 178
    .line 179
    const/high16 v15, 0x20000

    .line 180
    goto :goto_a

    .line 181
    .line 182
    :cond_f
    move-wide/from16 v7, p5

    .line 183
    .line 184
    :cond_10
    const/high16 v15, 0x10000

    .line 185
    :goto_a
    or-int/2addr v0, v15

    .line 186
    goto :goto_b

    .line 187
    .line 188
    :cond_11
    move-wide/from16 v7, p5

    .line 189
    .line 190
    :goto_b
    const/high16 v15, 0x380000

    .line 191
    and-int/2addr v15, v11

    .line 192
    .line 193
    if-nez v15, :cond_13

    .line 194
    .line 195
    and-int/lit8 v15, v12, 0x40

    .line 196
    .line 197
    move-wide/from16 v6, p7

    .line 198
    .line 199
    if-nez v15, :cond_12

    .line 200
    .line 201
    .line 202
    invoke-interface {v13, v6, v7}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 203
    move-result v8

    .line 204
    .line 205
    if-eqz v8, :cond_12

    .line 206
    .line 207
    const/high16 v8, 0x100000

    .line 208
    goto :goto_c

    .line 209
    .line 210
    :cond_12
    const/high16 v8, 0x80000

    .line 211
    :goto_c
    or-int/2addr v0, v8

    .line 212
    goto :goto_d

    .line 213
    .line 214
    :cond_13
    move-wide/from16 v6, p7

    .line 215
    .line 216
    :goto_d
    and-int/lit16 v8, v12, 0x80

    .line 217
    .line 218
    if-eqz v8, :cond_14

    .line 219
    .line 220
    const/high16 v8, 0xc00000

    .line 221
    :goto_e
    or-int/2addr v0, v8

    .line 222
    goto :goto_f

    .line 223
    .line 224
    :cond_14
    const/high16 v8, 0x1c00000

    .line 225
    and-int/2addr v8, v11

    .line 226
    .line 227
    if-nez v8, :cond_16

    .line 228
    .line 229
    .line 230
    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 231
    move-result v8

    .line 232
    .line 233
    if-eqz v8, :cond_15

    .line 234
    .line 235
    const/high16 v8, 0x800000

    .line 236
    goto :goto_e

    .line 237
    .line 238
    :cond_15
    const/high16 v8, 0x400000

    .line 239
    goto :goto_e

    .line 240
    .line 241
    .line 242
    :cond_16
    :goto_f
    const v8, 0x16db6db

    .line 243
    and-int/2addr v8, v0

    .line 244
    .line 245
    .line 246
    const v15, 0x492492

    .line 247
    .line 248
    if-ne v8, v15, :cond_18

    .line 249
    .line 250
    .line 251
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->b()Z

    .line 252
    move-result v8

    .line 253
    .line 254
    if-nez v8, :cond_17

    .line 255
    goto :goto_10

    .line 256
    .line 257
    .line 258
    :cond_17
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->g()V

    .line 259
    .line 260
    move-object/from16 v5, p4

    .line 261
    move-object v3, v2

    .line 262
    move-wide v8, v6

    .line 263
    .line 264
    move-wide/from16 v6, p5

    .line 265
    .line 266
    goto/16 :goto_17

    .line 267
    .line 268
    .line 269
    :cond_18
    :goto_10
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->J()V

    .line 270
    .line 271
    and-int/lit8 v8, v11, 0x1

    .line 272
    .line 273
    .line 274
    const v16, -0x70001

    .line 275
    const/4 v15, 0x1

    .line 276
    .line 277
    if-eqz v8, :cond_1c

    .line 278
    .line 279
    .line 280
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->h()Z

    .line 281
    move-result v8

    .line 282
    .line 283
    if-eqz v8, :cond_19

    .line 284
    goto :goto_11

    .line 285
    .line 286
    .line 287
    :cond_19
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->g()V

    .line 288
    .line 289
    and-int/lit8 v1, v12, 0x20

    .line 290
    .line 291
    if-eqz v1, :cond_1a

    .line 292
    .line 293
    and-int v0, v0, v16

    .line 294
    .line 295
    :cond_1a
    and-int/lit8 v1, v12, 0x40

    .line 296
    .line 297
    if-eqz v1, :cond_1b

    .line 298
    .line 299
    .line 300
    const v1, -0x380001

    .line 301
    and-int/2addr v0, v1

    .line 302
    .line 303
    :cond_1b
    move-object/from16 v18, p4

    .line 304
    .line 305
    move-wide/from16 v19, p5

    .line 306
    .line 307
    move/from16 v23, v0

    .line 308
    .line 309
    move-object/from16 v16, v2

    .line 310
    .line 311
    move/from16 v17, v4

    .line 312
    .line 313
    move-wide/from16 v21, v6

    .line 314
    .line 315
    goto/16 :goto_16

    .line 316
    .line 317
    :cond_1c
    :goto_11
    if-eqz v1, :cond_1d

    .line 318
    .line 319
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 320
    goto :goto_12

    .line 321
    :cond_1d
    move-object v1, v2

    .line 322
    .line 323
    :goto_12
    if-eqz v3, :cond_1e

    .line 324
    move v4, v15

    .line 325
    .line 326
    :cond_1e
    if-eqz v5, :cond_20

    .line 327
    .line 328
    .line 329
    const v2, -0x1d58f75c

    .line 330
    .line 331
    .line 332
    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 333
    .line 334
    .line 335
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 336
    move-result-object v2

    .line 337
    .line 338
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 342
    move-result-object v3

    .line 343
    .line 344
    if-ne v2, v3, :cond_1f

    .line 345
    .line 346
    .line 347
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 348
    move-result-object v2

    .line 349
    .line 350
    .line 351
    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    :cond_1f
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->Q()V

    .line 355
    .line 356
    check-cast v2, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 357
    goto :goto_13

    .line 358
    .line 359
    :cond_20
    move-object/from16 v2, p4

    .line 360
    .line 361
    :goto_13
    and-int/lit8 v3, v12, 0x20

    .line 362
    .line 363
    if-eqz v3, :cond_21

    .line 364
    .line 365
    .line 366
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 367
    move-result-object v3

    .line 368
    .line 369
    .line 370
    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 371
    move-result-object v3

    .line 372
    .line 373
    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 377
    move-result-wide v17

    .line 378
    .line 379
    and-int v0, v0, v16

    .line 380
    goto :goto_14

    .line 381
    .line 382
    :cond_21
    move-wide/from16 v17, p5

    .line 383
    .line 384
    :goto_14
    and-int/lit8 v3, v12, 0x40

    .line 385
    .line 386
    if-eqz v3, :cond_22

    .line 387
    .line 388
    sget-object v3, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 389
    const/4 v5, 0x6

    .line 390
    .line 391
    .line 392
    invoke-virtual {v3, v13, v5}, Landroidx/compose/material/ContentAlpha;->d(Landroidx/compose/runtime/Composer;I)F

    .line 393
    move-result v21

    .line 394
    .line 395
    const/16 v22, 0x0

    .line 396
    .line 397
    const/16 v23, 0x0

    .line 398
    .line 399
    const/16 v24, 0x0

    .line 400
    .line 401
    const/16 v25, 0xe

    .line 402
    .line 403
    const/16 v26, 0x0

    .line 404
    .line 405
    move-wide/from16 v19, v17

    .line 406
    .line 407
    .line 408
    invoke-static/range {v19 .. v26}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 409
    move-result-wide v5

    .line 410
    .line 411
    .line 412
    const v3, -0x380001

    .line 413
    and-int/2addr v0, v3

    .line 414
    .line 415
    move/from16 v23, v0

    .line 416
    .line 417
    move-object/from16 v16, v1

    .line 418
    .line 419
    move-wide/from16 v21, v5

    .line 420
    .line 421
    :goto_15
    move-object/from16 v18, v2

    .line 422
    .line 423
    move/from16 v17, v4

    .line 424
    goto :goto_16

    .line 425
    .line 426
    :cond_22
    move/from16 v23, v0

    .line 427
    .line 428
    move-object/from16 v16, v1

    .line 429
    .line 430
    move-wide/from16 v21, v6

    .line 431
    .line 432
    move-wide/from16 v19, v17

    .line 433
    goto :goto_15

    .line 434
    .line 435
    .line 436
    :goto_16
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->A()V

    .line 437
    const/4 v0, 0x1

    .line 438
    const/4 v1, 0x0

    .line 439
    .line 440
    shr-int/lit8 v2, v23, 0x9

    .line 441
    .line 442
    and-int/lit16 v2, v2, 0x380

    .line 443
    const/4 v3, 0x6

    .line 444
    or-int/2addr v2, v3

    .line 445
    const/4 v3, 0x2

    .line 446
    .line 447
    move/from16 p2, v0

    .line 448
    .line 449
    move/from16 p3, v1

    .line 450
    .line 451
    move-wide/from16 p4, v19

    .line 452
    .line 453
    move-object/from16 p6, v13

    .line 454
    .line 455
    move/from16 p7, v2

    .line 456
    .line 457
    move/from16 p8, v3

    .line 458
    .line 459
    .line 460
    invoke-static/range {p2 .. p8}, Landroidx/compose/material/ripple/RippleKt;->e(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    .line 461
    move-result-object v4

    .line 462
    .line 463
    new-instance v8, Landroidx/compose/material/TabKt$Tab$5;

    .line 464
    move-object v0, v8

    .line 465
    .line 466
    move-object/from16 v1, v16

    .line 467
    .line 468
    move/from16 v2, p0

    .line 469
    .line 470
    move-object/from16 v3, v18

    .line 471
    .line 472
    move/from16 v5, v17

    .line 473
    .line 474
    move-object/from16 v6, p1

    .line 475
    .line 476
    move-object/from16 v7, p9

    .line 477
    move-object v9, v8

    .line 478
    .line 479
    move/from16 v8, v23

    .line 480
    .line 481
    .line 482
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/TabKt$Tab$5;-><init>(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLe8/a;Le8/q;I)V

    .line 483
    .line 484
    .line 485
    const v0, -0x49bee2f5

    .line 486
    .line 487
    .line 488
    invoke-static {v13, v0, v15, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 489
    move-result-object v6

    .line 490
    .line 491
    shr-int/lit8 v0, v23, 0xf

    .line 492
    .line 493
    and-int/lit8 v1, v0, 0xe

    .line 494
    .line 495
    or-int/lit16 v1, v1, 0xc00

    .line 496
    .line 497
    and-int/lit8 v0, v0, 0x70

    .line 498
    or-int/2addr v0, v1

    .line 499
    const/4 v1, 0x6

    .line 500
    .line 501
    shl-int/lit8 v1, v23, 0x6

    .line 502
    .line 503
    and-int/lit16 v1, v1, 0x380

    .line 504
    .line 505
    or-int v8, v0, v1

    .line 506
    .line 507
    move-wide/from16 v1, v19

    .line 508
    .line 509
    move-wide/from16 v3, v21

    .line 510
    .line 511
    move/from16 v5, p0

    .line 512
    move-object v7, v13

    .line 513
    .line 514
    .line 515
    invoke-static/range {v1 .. v8}, Landroidx/compose/material/TabKt;->e(JJZLe8/p;Landroidx/compose/runtime/Composer;I)V

    .line 516
    .line 517
    move-object/from16 v3, v16

    .line 518
    .line 519
    move/from16 v4, v17

    .line 520
    .line 521
    move-object/from16 v5, v18

    .line 522
    .line 523
    move-wide/from16 v6, v19

    .line 524
    .line 525
    move-wide/from16 v8, v21

    .line 526
    .line 527
    .line 528
    :goto_17
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 529
    move-result-object v13

    .line 530
    .line 531
    if-nez v13, :cond_23

    .line 532
    goto :goto_18

    .line 533
    .line 534
    :cond_23
    new-instance v15, Landroidx/compose/material/TabKt$Tab$6;

    .line 535
    move-object v0, v15

    .line 536
    .line 537
    move/from16 v1, p0

    .line 538
    .line 539
    move-object/from16 v2, p1

    .line 540
    .line 541
    move-object/from16 v10, p9

    .line 542
    .line 543
    move/from16 v11, p11

    .line 544
    .line 545
    move/from16 v12, p12

    .line 546
    .line 547
    .line 548
    invoke-direct/range {v0 .. v12}, Landroidx/compose/material/TabKt$Tab$6;-><init>(ZLe8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;JJLe8/q;II)V

    .line 549
    .line 550
    .line 551
    invoke-interface {v13, v15}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 552
    :goto_18
    return-void
.end method

.method private static final d(Le8/p;Le8/p;Landroidx/compose/runtime/Composer;I)V
    .locals 16
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
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
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move/from16 v2, p3

    .line 7
    .line 8
    .line 9
    const v3, 0x4a7f2c97    # 4180773.8f

    .line 10
    .line 11
    move-object/from16 v4, p2

    .line 12
    .line 13
    .line 14
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    and-int/lit8 v4, v2, 0xe

    .line 18
    const/4 v5, 0x2

    .line 19
    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 24
    move-result v4

    .line 25
    .line 26
    if-eqz v4, :cond_0

    .line 27
    const/4 v4, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v4, v5

    .line 30
    :goto_0
    or-int/2addr v4, v2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v4, v2

    .line 33
    .line 34
    :goto_1
    and-int/lit8 v6, v2, 0x70

    .line 35
    .line 36
    if-nez v6, :cond_3

    .line 37
    .line 38
    .line 39
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 40
    move-result v6

    .line 41
    .line 42
    if-eqz v6, :cond_2

    .line 43
    .line 44
    const/16 v6, 0x20

    .line 45
    goto :goto_2

    .line 46
    .line 47
    :cond_2
    const/16 v6, 0x10

    .line 48
    :goto_2
    or-int/2addr v4, v6

    .line 49
    .line 50
    :cond_3
    and-int/lit8 v6, v4, 0x5b

    .line 51
    .line 52
    const/16 v7, 0x12

    .line 53
    .line 54
    if-ne v6, v7, :cond_5

    .line 55
    .line 56
    .line 57
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->b()Z

    .line 58
    move-result v6

    .line 59
    .line 60
    if-nez v6, :cond_4

    .line 61
    goto :goto_3

    .line 62
    .line 63
    .line 64
    :cond_4
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->g()V

    .line 65
    .line 66
    goto/16 :goto_7

    .line 67
    .line 68
    :cond_5
    :goto_3
    new-instance v6, Landroidx/compose/material/TabKt$TabBaselineLayout$2;

    .line 69
    .line 70
    .line 71
    invoke-direct {v6, v0, v1}, Landroidx/compose/material/TabKt$TabBaselineLayout$2;-><init>(Le8/p;Le8/p;)V

    .line 72
    .line 73
    .line 74
    const v7, -0x4ee9b9da

    .line 75
    .line 76
    .line 77
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 78
    .line 79
    sget-object v8, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 80
    .line 81
    .line 82
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 83
    move-result-object v9

    .line 84
    .line 85
    .line 86
    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 87
    move-result-object v9

    .line 88
    .line 89
    check-cast v9, Landroidx/compose/ui/unit/Density;

    .line 90
    .line 91
    .line 92
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 93
    move-result-object v10

    .line 94
    .line 95
    .line 96
    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 97
    move-result-object v10

    .line 98
    .line 99
    check-cast v10, Landroidx/compose/ui/unit/LayoutDirection;

    .line 100
    .line 101
    .line 102
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 103
    move-result-object v11

    .line 104
    .line 105
    .line 106
    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 107
    move-result-object v11

    .line 108
    .line 109
    check-cast v11, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 110
    .line 111
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 115
    move-result-object v13

    .line 116
    .line 117
    .line 118
    invoke-static {v8}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 119
    move-result-object v14

    .line 120
    .line 121
    .line 122
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 123
    move-result-object v15

    .line 124
    .line 125
    instance-of v15, v15, Landroidx/compose/runtime/Applier;

    .line 126
    .line 127
    if-nez v15, :cond_6

    .line 128
    .line 129
    .line 130
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 131
    .line 132
    .line 133
    :cond_6
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->e()V

    .line 134
    .line 135
    .line 136
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->r()Z

    .line 137
    move-result v15

    .line 138
    .line 139
    if-eqz v15, :cond_7

    .line 140
    .line 141
    .line 142
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 143
    goto :goto_4

    .line 144
    .line 145
    .line 146
    :cond_7
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->c()V

    .line 147
    .line 148
    .line 149
    :goto_4
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->L()V

    .line 150
    .line 151
    .line 152
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 153
    move-result-object v13

    .line 154
    .line 155
    .line 156
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 157
    move-result-object v15

    .line 158
    .line 159
    .line 160
    invoke-static {v13, v6, v15}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 164
    move-result-object v6

    .line 165
    .line 166
    .line 167
    invoke-static {v13, v9, v6}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 171
    move-result-object v6

    .line 172
    .line 173
    .line 174
    invoke-static {v13, v10, v6}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 178
    move-result-object v6

    .line 179
    .line 180
    .line 181
    invoke-static {v13, v11, v6}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 182
    .line 183
    .line 184
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->o()V

    .line 185
    .line 186
    .line 187
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 188
    move-result-object v6

    .line 189
    .line 190
    .line 191
    invoke-static {v6}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 192
    move-result-object v6

    .line 193
    const/4 v9, 0x0

    .line 194
    .line 195
    .line 196
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    move-result-object v10

    .line 198
    .line 199
    .line 200
    invoke-interface {v14, v6, v3, v10}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    const v6, 0x7ab4aae9

    .line 204
    .line 205
    .line 206
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 207
    .line 208
    .line 209
    const v10, 0x4418c2c0

    .line 210
    .line 211
    .line 212
    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 213
    .line 214
    .line 215
    const v10, -0x7f9d8064

    .line 216
    .line 217
    .line 218
    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 219
    .line 220
    .line 221
    const v11, 0x2bb5b5d7

    .line 222
    .line 223
    if-eqz v0, :cond_a

    .line 224
    .line 225
    const-string v13, "text"

    .line 226
    .line 227
    .line 228
    invoke-static {v8, v13}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 229
    move-result-object v13

    .line 230
    .line 231
    sget v14, Landroidx/compose/material/TabKt;->HorizontalTextPadding:F

    .line 232
    const/4 v15, 0x0

    .line 233
    const/4 v10, 0x0

    .line 234
    .line 235
    .line 236
    invoke-static {v13, v14, v15, v5, v10}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 237
    move-result-object v5

    .line 238
    .line 239
    .line 240
    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 241
    .line 242
    sget-object v10, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v10}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 246
    move-result-object v10

    .line 247
    .line 248
    .line 249
    invoke-static {v10, v9, v3, v9}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 250
    move-result-object v10

    .line 251
    .line 252
    .line 253
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 254
    .line 255
    .line 256
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 257
    move-result-object v13

    .line 258
    .line 259
    .line 260
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 261
    move-result-object v13

    .line 262
    .line 263
    check-cast v13, Landroidx/compose/ui/unit/Density;

    .line 264
    .line 265
    .line 266
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 267
    move-result-object v14

    .line 268
    .line 269
    .line 270
    invoke-interface {v3, v14}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 271
    move-result-object v14

    .line 272
    .line 273
    check-cast v14, Landroidx/compose/ui/unit/LayoutDirection;

    .line 274
    .line 275
    .line 276
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 277
    move-result-object v15

    .line 278
    .line 279
    .line 280
    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 281
    move-result-object v15

    .line 282
    .line 283
    check-cast v15, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 287
    move-result-object v7

    .line 288
    .line 289
    .line 290
    invoke-static {v5}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 291
    move-result-object v5

    .line 292
    .line 293
    .line 294
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 295
    move-result-object v11

    .line 296
    .line 297
    instance-of v11, v11, Landroidx/compose/runtime/Applier;

    .line 298
    .line 299
    if-nez v11, :cond_8

    .line 300
    .line 301
    .line 302
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 303
    .line 304
    .line 305
    :cond_8
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->e()V

    .line 306
    .line 307
    .line 308
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->r()Z

    .line 309
    move-result v11

    .line 310
    .line 311
    if-eqz v11, :cond_9

    .line 312
    .line 313
    .line 314
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 315
    goto :goto_5

    .line 316
    .line 317
    .line 318
    :cond_9
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->c()V

    .line 319
    .line 320
    .line 321
    :goto_5
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->L()V

    .line 322
    .line 323
    .line 324
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 325
    move-result-object v7

    .line 326
    .line 327
    .line 328
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 329
    move-result-object v11

    .line 330
    .line 331
    .line 332
    invoke-static {v7, v10, v11}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 336
    move-result-object v10

    .line 337
    .line 338
    .line 339
    invoke-static {v7, v13, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 343
    move-result-object v10

    .line 344
    .line 345
    .line 346
    invoke-static {v7, v14, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 350
    move-result-object v10

    .line 351
    .line 352
    .line 353
    invoke-static {v7, v15, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 354
    .line 355
    .line 356
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->o()V

    .line 357
    .line 358
    .line 359
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 360
    move-result-object v7

    .line 361
    .line 362
    .line 363
    invoke-static {v7}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 364
    move-result-object v7

    .line 365
    .line 366
    .line 367
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 368
    move-result-object v10

    .line 369
    .line 370
    .line 371
    invoke-interface {v5, v7, v3, v10}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 375
    .line 376
    .line 377
    const v5, -0x7f65a980

    .line 378
    .line 379
    .line 380
    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 381
    .line 382
    sget-object v5, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 383
    .line 384
    .line 385
    const v5, -0x1b690cc1

    .line 386
    .line 387
    .line 388
    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 389
    .line 390
    and-int/lit8 v5, v4, 0xe

    .line 391
    .line 392
    .line 393
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 394
    move-result-object v5

    .line 395
    .line 396
    .line 397
    invoke-interface {v0, v3, v5}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 401
    .line 402
    .line 403
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 404
    .line 405
    .line 406
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 407
    .line 408
    .line 409
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->d()V

    .line 410
    .line 411
    .line 412
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 413
    .line 414
    .line 415
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 416
    .line 417
    .line 418
    :cond_a
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 419
    .line 420
    if-eqz v1, :cond_d

    .line 421
    .line 422
    const-string v5, "icon"

    .line 423
    .line 424
    .line 425
    invoke-static {v8, v5}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 426
    move-result-object v5

    .line 427
    .line 428
    .line 429
    const v7, 0x2bb5b5d7

    .line 430
    .line 431
    .line 432
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 433
    .line 434
    sget-object v7, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v7}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 438
    move-result-object v7

    .line 439
    .line 440
    .line 441
    invoke-static {v7, v9, v3, v9}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 442
    move-result-object v7

    .line 443
    .line 444
    .line 445
    const v8, -0x4ee9b9da

    .line 446
    .line 447
    .line 448
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 449
    .line 450
    .line 451
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 452
    move-result-object v8

    .line 453
    .line 454
    .line 455
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 456
    move-result-object v8

    .line 457
    .line 458
    check-cast v8, Landroidx/compose/ui/unit/Density;

    .line 459
    .line 460
    .line 461
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 462
    move-result-object v10

    .line 463
    .line 464
    .line 465
    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 466
    move-result-object v10

    .line 467
    .line 468
    check-cast v10, Landroidx/compose/ui/unit/LayoutDirection;

    .line 469
    .line 470
    .line 471
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 472
    move-result-object v11

    .line 473
    .line 474
    .line 475
    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 476
    move-result-object v11

    .line 477
    .line 478
    check-cast v11, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 482
    move-result-object v13

    .line 483
    .line 484
    .line 485
    invoke-static {v5}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 486
    move-result-object v5

    .line 487
    .line 488
    .line 489
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 490
    move-result-object v14

    .line 491
    .line 492
    instance-of v14, v14, Landroidx/compose/runtime/Applier;

    .line 493
    .line 494
    if-nez v14, :cond_b

    .line 495
    .line 496
    .line 497
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 498
    .line 499
    .line 500
    :cond_b
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->e()V

    .line 501
    .line 502
    .line 503
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->r()Z

    .line 504
    move-result v14

    .line 505
    .line 506
    if-eqz v14, :cond_c

    .line 507
    .line 508
    .line 509
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 510
    goto :goto_6

    .line 511
    .line 512
    .line 513
    :cond_c
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->c()V

    .line 514
    .line 515
    .line 516
    :goto_6
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->L()V

    .line 517
    .line 518
    .line 519
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 520
    move-result-object v13

    .line 521
    .line 522
    .line 523
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 524
    move-result-object v14

    .line 525
    .line 526
    .line 527
    invoke-static {v13, v7, v14}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 531
    move-result-object v7

    .line 532
    .line 533
    .line 534
    invoke-static {v13, v8, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 538
    move-result-object v7

    .line 539
    .line 540
    .line 541
    invoke-static {v13, v10, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 545
    move-result-object v7

    .line 546
    .line 547
    .line 548
    invoke-static {v13, v11, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 549
    .line 550
    .line 551
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->o()V

    .line 552
    .line 553
    .line 554
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 555
    move-result-object v7

    .line 556
    .line 557
    .line 558
    invoke-static {v7}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 559
    move-result-object v7

    .line 560
    .line 561
    .line 562
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 563
    move-result-object v8

    .line 564
    .line 565
    .line 566
    invoke-interface {v5, v7, v3, v8}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 570
    .line 571
    .line 572
    const v5, -0x7f65a980

    .line 573
    .line 574
    .line 575
    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 576
    .line 577
    sget-object v5, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 578
    .line 579
    .line 580
    const v5, 0x352d6ee8

    .line 581
    .line 582
    .line 583
    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 584
    .line 585
    shr-int/lit8 v4, v4, 0x3

    .line 586
    .line 587
    and-int/lit8 v4, v4, 0xe

    .line 588
    .line 589
    .line 590
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 591
    move-result-object v4

    .line 592
    .line 593
    .line 594
    invoke-interface {v1, v3, v4}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 598
    .line 599
    .line 600
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 601
    .line 602
    .line 603
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 604
    .line 605
    .line 606
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->d()V

    .line 607
    .line 608
    .line 609
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 610
    .line 611
    .line 612
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 613
    .line 614
    .line 615
    :cond_d
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 616
    .line 617
    .line 618
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 619
    .line 620
    .line 621
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->d()V

    .line 622
    .line 623
    .line 624
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 625
    .line 626
    .line 627
    :goto_7
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 628
    move-result-object v3

    .line 629
    .line 630
    if-nez v3, :cond_e

    .line 631
    goto :goto_8

    .line 632
    .line 633
    :cond_e
    new-instance v4, Landroidx/compose/material/TabKt$TabBaselineLayout$3;

    .line 634
    .line 635
    .line 636
    invoke-direct {v4, v0, v1, v2}, Landroidx/compose/material/TabKt$TabBaselineLayout$3;-><init>(Le8/p;Le8/p;I)V

    .line 637
    .line 638
    .line 639
    invoke-interface {v3, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 640
    :goto_8
    return-void
.end method

.method private static final e(JJZLe8/p;Landroidx/compose/runtime/Composer;I)V
    .locals 18
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ",
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
    move-object/from16 v6, p5

    .line 3
    .line 4
    move/from16 v7, p7

    .line 5
    .line 6
    .line 7
    const v0, -0x182c862d

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
    and-int/lit8 v1, v7, 0xe

    .line 16
    const/4 v2, 0x2

    .line 17
    .line 18
    move-wide/from16 v3, p0

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v3, v4}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    const/4 v1, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v1, v2

    .line 30
    :goto_0
    or-int/2addr v1, v7

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v1, v7

    .line 33
    .line 34
    :goto_1
    and-int/lit8 v5, v7, 0x70

    .line 35
    .line 36
    move-wide/from16 v14, p2

    .line 37
    .line 38
    if-nez v5, :cond_3

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v14, v15}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 42
    move-result v5

    .line 43
    .line 44
    if-eqz v5, :cond_2

    .line 45
    .line 46
    const/16 v5, 0x20

    .line 47
    goto :goto_2

    .line 48
    .line 49
    :cond_2
    const/16 v5, 0x10

    .line 50
    :goto_2
    or-int/2addr v1, v5

    .line 51
    .line 52
    :cond_3
    and-int/lit16 v5, v7, 0x380

    .line 53
    .line 54
    if-nez v5, :cond_5

    .line 55
    .line 56
    move/from16 v5, p4

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 60
    move-result v8

    .line 61
    .line 62
    if-eqz v8, :cond_4

    .line 63
    .line 64
    const/16 v8, 0x100

    .line 65
    goto :goto_3

    .line 66
    .line 67
    :cond_4
    const/16 v8, 0x80

    .line 68
    :goto_3
    or-int/2addr v1, v8

    .line 69
    goto :goto_4

    .line 70
    .line 71
    :cond_5
    move/from16 v5, p4

    .line 72
    .line 73
    :goto_4
    and-int/lit16 v8, v7, 0x1c00

    .line 74
    .line 75
    if-nez v8, :cond_7

    .line 76
    .line 77
    .line 78
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 79
    move-result v8

    .line 80
    .line 81
    if-eqz v8, :cond_6

    .line 82
    .line 83
    const/16 v8, 0x800

    .line 84
    goto :goto_5

    .line 85
    .line 86
    :cond_6
    const/16 v8, 0x400

    .line 87
    :goto_5
    or-int/2addr v1, v8

    .line 88
    .line 89
    :cond_7
    and-int/lit16 v8, v1, 0x16db

    .line 90
    .line 91
    const/16 v9, 0x492

    .line 92
    .line 93
    if-ne v8, v9, :cond_9

    .line 94
    .line 95
    .line 96
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 97
    move-result v8

    .line 98
    .line 99
    if-nez v8, :cond_8

    .line 100
    goto :goto_6

    .line 101
    .line 102
    .line 103
    :cond_8
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 104
    .line 105
    goto/16 :goto_a

    .line 106
    .line 107
    .line 108
    :cond_9
    :goto_6
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 109
    move-result-object v8

    .line 110
    .line 111
    shr-int/lit8 v1, v1, 0x6

    .line 112
    .line 113
    and-int/lit8 v9, v1, 0xe

    .line 114
    const/4 v10, 0x0

    .line 115
    .line 116
    .line 117
    invoke-static {v8, v10, v0, v9, v2}, Landroidx/compose/animation/core/TransitionKt;->e(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    .line 118
    move-result-object v8

    .line 119
    .line 120
    sget-object v9, Landroidx/compose/material/TabKt$TabTransition$color$2;->INSTANCE:Landroidx/compose/material/TabKt$TabTransition$color$2;

    .line 121
    .line 122
    .line 123
    const v10, -0x57267098

    .line 124
    .line 125
    .line 126
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 127
    .line 128
    const-string v13, "ColorAnimation"

    .line 129
    .line 130
    .line 131
    invoke-virtual {v8}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 132
    move-result-object v10

    .line 133
    .line 134
    check-cast v10, Ljava/lang/Boolean;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 138
    move-result v10

    .line 139
    .line 140
    .line 141
    const v11, 0x562f4396

    .line 142
    .line 143
    .line 144
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 145
    .line 146
    if-eqz v10, :cond_a

    .line 147
    .line 148
    move-wide/from16 v16, v3

    .line 149
    goto :goto_7

    .line 150
    .line 151
    :cond_a
    move-wide/from16 v16, v14

    .line 152
    .line 153
    .line 154
    :goto_7
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 155
    .line 156
    .line 157
    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/graphics/Color;->q(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 158
    move-result-object v10

    .line 159
    .line 160
    .line 161
    const v12, -0x384212

    .line 162
    .line 163
    .line 164
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 165
    .line 166
    .line 167
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 168
    move-result v12

    .line 169
    .line 170
    .line 171
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 172
    move-result-object v2

    .line 173
    .line 174
    if-nez v12, :cond_b

    .line 175
    .line 176
    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 180
    move-result-object v12

    .line 181
    .line 182
    if-ne v2, v12, :cond_c

    .line 183
    .line 184
    :cond_b
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 185
    .line 186
    .line 187
    invoke-static {v2}, Landroidx/compose/animation/ColorVectorConverterKt;->d(Landroidx/compose/ui/graphics/Color$Companion;)Le8/l;

    .line 188
    move-result-object v2

    .line 189
    .line 190
    .line 191
    invoke-interface {v2, v10}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    move-result-object v2

    .line 193
    .line 194
    check-cast v2, Landroidx/compose/animation/core/TwoWayConverter;

    .line 195
    .line 196
    .line 197
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    :cond_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 201
    move-object v12, v2

    .line 202
    .line 203
    check-cast v12, Landroidx/compose/animation/core/TwoWayConverter;

    .line 204
    .line 205
    .line 206
    const v2, 0x6e220c08

    .line 207
    .line 208
    .line 209
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v8}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    .line 213
    move-result-object v2

    .line 214
    .line 215
    check-cast v2, Ljava/lang/Boolean;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 219
    move-result v2

    .line 220
    .line 221
    .line 222
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 223
    .line 224
    if-eqz v2, :cond_d

    .line 225
    .line 226
    move-wide/from16 v16, v3

    .line 227
    goto :goto_8

    .line 228
    .line 229
    :cond_d
    move-wide/from16 v16, v14

    .line 230
    .line 231
    .line 232
    :goto_8
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 233
    .line 234
    .line 235
    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 236
    move-result-object v2

    .line 237
    .line 238
    .line 239
    invoke-virtual {v8}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 240
    move-result-object v10

    .line 241
    .line 242
    check-cast v10, Ljava/lang/Boolean;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 246
    move-result v10

    .line 247
    .line 248
    .line 249
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 250
    .line 251
    if-eqz v10, :cond_e

    .line 252
    move-wide v10, v3

    .line 253
    goto :goto_9

    .line 254
    :cond_e
    move-wide v10, v14

    .line 255
    .line 256
    .line 257
    :goto_9
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 258
    .line 259
    .line 260
    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 261
    move-result-object v10

    .line 262
    .line 263
    .line 264
    invoke-virtual {v8}, Landroidx/compose/animation/core/Transition;->k()Landroidx/compose/animation/core/Transition$Segment;

    .line 265
    move-result-object v11

    .line 266
    .line 267
    const/16 v16, 0x0

    .line 268
    .line 269
    .line 270
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 271
    move-result-object v3

    .line 272
    .line 273
    .line 274
    invoke-interface {v9, v11, v0, v3}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    move-result-object v3

    .line 276
    move-object v11, v3

    .line 277
    .line 278
    check-cast v11, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 279
    .line 280
    .line 281
    const v3, 0x8000

    .line 282
    move-object v9, v2

    .line 283
    move-object v14, v0

    .line 284
    move v15, v3

    .line 285
    .line 286
    .line 287
    invoke-static/range {v8 .. v15}, Landroidx/compose/animation/core/TransitionKt;->c(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 288
    move-result-object v2

    .line 289
    .line 290
    .line 291
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 292
    .line 293
    .line 294
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 295
    const/4 v3, 0x2

    .line 296
    .line 297
    new-array v3, v3, [Landroidx/compose/runtime/ProvidedValue;

    .line 298
    .line 299
    .line 300
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 301
    move-result-object v4

    .line 302
    .line 303
    .line 304
    invoke-static {v2}, Landroidx/compose/material/TabKt;->f(Landroidx/compose/runtime/State;)J

    .line 305
    move-result-wide v8

    .line 306
    .line 307
    const/high16 v10, 0x3f800000    # 1.0f

    .line 308
    const/4 v11, 0x0

    .line 309
    const/4 v12, 0x0

    .line 310
    const/4 v13, 0x0

    .line 311
    .line 312
    const/16 v14, 0xe

    .line 313
    const/4 v15, 0x0

    .line 314
    .line 315
    .line 316
    invoke-static/range {v8 .. v15}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 317
    move-result-wide v8

    .line 318
    .line 319
    .line 320
    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 321
    move-result-object v8

    .line 322
    .line 323
    .line 324
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 325
    move-result-object v4

    .line 326
    .line 327
    aput-object v4, v3, v16

    .line 328
    .line 329
    .line 330
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 331
    move-result-object v4

    .line 332
    .line 333
    .line 334
    invoke-static {v2}, Landroidx/compose/material/TabKt;->f(Landroidx/compose/runtime/State;)J

    .line 335
    move-result-wide v8

    .line 336
    .line 337
    .line 338
    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Color;->o(J)F

    .line 339
    move-result v2

    .line 340
    .line 341
    .line 342
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 343
    move-result-object v2

    .line 344
    .line 345
    .line 346
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 347
    move-result-object v2

    .line 348
    const/4 v4, 0x1

    .line 349
    .line 350
    aput-object v2, v3, v4

    .line 351
    .line 352
    and-int/lit8 v1, v1, 0x70

    .line 353
    .line 354
    or-int/lit8 v1, v1, 0x8

    .line 355
    .line 356
    .line 357
    invoke-static {v3, v6, v0, v1}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 358
    .line 359
    .line 360
    :goto_a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 361
    move-result-object v8

    .line 362
    .line 363
    if-nez v8, :cond_f

    .line 364
    goto :goto_b

    .line 365
    .line 366
    :cond_f
    new-instance v9, Landroidx/compose/material/TabKt$TabTransition$1;

    .line 367
    move-object v0, v9

    .line 368
    .line 369
    move-wide/from16 v1, p0

    .line 370
    .line 371
    move-wide/from16 v3, p2

    .line 372
    .line 373
    move/from16 v5, p4

    .line 374
    .line 375
    move-object/from16 v6, p5

    .line 376
    .line 377
    move/from16 v7, p7

    .line 378
    .line 379
    .line 380
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material/TabKt$TabTransition$1;-><init>(JJZLe8/p;I)V

    .line 381
    .line 382
    .line 383
    invoke-interface {v8, v9}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 384
    :goto_b
    return-void
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

.method public static final synthetic g(Le8/p;Le8/p;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/TabKt;->d(Le8/p;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 4
    return-void
.end method

.method public static final synthetic h(JJZLe8/p;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p7}, Landroidx/compose/material/TabKt;->e(JJZLe8/p;Landroidx/compose/runtime/Composer;I)V

    .line 4
    return-void
.end method

.method public static final synthetic i()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/TabKt;->HorizontalTextPadding:F

    return v0
.end method

.method public static final synthetic j()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/TabKt;->LargeTabHeight:F

    return v0
.end method

.method public static final synthetic k()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/TabKt;->SmallTabHeight:F

    return v0
.end method

.method public static final synthetic l()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/TabKt;->TextDistanceFromLeadingIcon:F

    return v0
.end method

.method public static final synthetic m(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;IIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p7}, Landroidx/compose/material/TabKt;->o(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;IIII)V

    .line 4
    return-void
.end method

.method public static final synthetic n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/material/TabKt;->p(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;I)V

    .line 4
    return-void
.end method

.method private static final o(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;IIII)V
    .locals 12

    .line 1
    move-object v0, p1

    .line 2
    .line 3
    move/from16 v1, p6

    .line 4
    .line 5
    move/from16 v2, p7

    .line 6
    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    sget v3, Landroidx/compose/material/TabKt;->SingleLineTextBaselineWithIcon:F

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    sget v3, Landroidx/compose/material/TabKt;->DoubleLineTextBaselineWithIcon:F

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-interface {p1, v3}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 16
    move-result v3

    .line 17
    .line 18
    sget-object v4, Landroidx/compose/material/TabRowDefaults;->INSTANCE:Landroidx/compose/material/TabRowDefaults;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4}, Landroidx/compose/material/TabRowDefaults;->c()F

    .line 22
    move-result v4

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v4}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 26
    move-result v4

    .line 27
    add-int/2addr v3, v4

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 31
    move-result v4

    .line 32
    .line 33
    sget-wide v5, Landroidx/compose/material/TabKt;->IconDistanceFromBaseline:J

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, v5, v6}, Landroidx/compose/ui/unit/Density;->L0(J)I

    .line 37
    move-result v0

    .line 38
    add-int/2addr v4, v0

    .line 39
    sub-int/2addr v4, v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 43
    move-result v0

    .line 44
    .line 45
    sub-int v0, p4, v0

    .line 46
    .line 47
    div-int/lit8 v7, v0, 0x2

    .line 48
    .line 49
    sub-int v0, p5, v2

    .line 50
    sub-int/2addr v0, v3

    .line 51
    const/4 v9, 0x0

    .line 52
    const/4 v10, 0x4

    .line 53
    const/4 v11, 0x0

    .line 54
    move-object v5, p0

    .line 55
    move-object v6, p2

    .line 56
    move v8, v0

    .line 57
    .line 58
    .line 59
    invoke-static/range {v5 .. v11}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 63
    move-result v1

    .line 64
    .line 65
    sub-int v1, p4, v1

    .line 66
    .line 67
    div-int/lit8 v7, v1, 0x2

    .line 68
    .line 69
    sub-int v8, v0, v4

    .line 70
    move-object v6, p3

    .line 71
    .line 72
    .line 73
    invoke-static/range {v5 .. v11}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 74
    return-void
.end method

.method private static final p(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;I)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 4
    move-result v0

    .line 5
    sub-int/2addr p2, v0

    .line 6
    .line 7
    div-int/lit8 v3, p2, 0x2

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x4

    .line 11
    const/4 v6, 0x0

    .line 12
    move-object v0, p0

    .line 13
    move-object v1, p1

    .line 14
    .line 15
    .line 16
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 17
    return-void
.end method
