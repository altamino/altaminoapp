.class final Landroidx/compose/material/ThreeLine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListItem.kt\nandroidx/compose/material/ThreeLine\n+ 2 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 7 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 8 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,429:1\n75#2,6:430\n81#2:462\n85#2:506\n75#3:436\n76#3,11:438\n75#3:469\n76#3,11:471\n89#3:499\n89#3:505\n76#4:437\n76#4:470\n460#5,13:449\n460#5,13:482\n473#5,3:496\n473#5,3:502\n52#6:463\n59#6:501\n68#7,5:464\n73#7:495\n77#7:500\n155#8:507\n155#8:508\n155#8:509\n155#8:510\n155#8:511\n155#8:512\n155#8:513\n155#8:514\n155#8:515\n155#8:516\n155#8:517\n*S KotlinDebug\n*F\n+ 1 ListItem.kt\nandroidx/compose/material/ThreeLine\n*L\n303#1:430,6\n303#1:462\n303#1:506\n303#1:436\n303#1:438,11\n306#1:469\n306#1:471,11\n306#1:499\n303#1:505\n303#1:437\n306#1:470\n303#1:449,13\n306#1:482,13\n306#1:496,3\n303#1:502,3\n305#1:463\n332#1:501\n306#1:464,5\n306#1:495\n306#1:500\n276#1:507\n279#1:508\n280#1:509\n281#1:510\n284#1:511\n285#1:512\n286#1:513\n287#1:514\n288#1:515\n289#1:516\n292#1:517\n*E\n"
.end annotation


# static fields
.field private static final ContentLeftPadding:F

.field private static final ContentRightPadding:F

.field public static final INSTANCE:Landroidx/compose/material/ThreeLine;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final IconLeftPadding:F

.field private static final IconMinPaddedWidth:F

.field private static final IconThreeLineVerticalPadding:F

.field private static final MinHeight:F

.field private static final ThreeLineBaselineFirstOffset:F

.field private static final ThreeLineBaselineSecondOffset:F

.field private static final ThreeLineBaselineThirdOffset:F

.field private static final ThreeLineTrailingTopPadding:F

.field private static final TrailingRightPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/material/ThreeLine;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/compose/material/ThreeLine;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/compose/material/ThreeLine;->INSTANCE:Landroidx/compose/material/ThreeLine;

    .line 8
    .line 9
    const/16 v0, 0x58

    .line 10
    int-to-float v0, v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 14
    move-result v0

    .line 15
    .line 16
    sput v0, Landroidx/compose/material/ThreeLine;->MinHeight:F

    .line 17
    .line 18
    const/16 v0, 0x28

    .line 19
    int-to-float v0, v0

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 23
    move-result v0

    .line 24
    .line 25
    sput v0, Landroidx/compose/material/ThreeLine;->IconMinPaddedWidth:F

    .line 26
    .line 27
    const/16 v0, 0x10

    .line 28
    int-to-float v0, v0

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 32
    move-result v1

    .line 33
    .line 34
    sput v1, Landroidx/compose/material/ThreeLine;->IconLeftPadding:F

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 38
    move-result v1

    .line 39
    .line 40
    sput v1, Landroidx/compose/material/ThreeLine;->IconThreeLineVerticalPadding:F

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 44
    move-result v1

    .line 45
    .line 46
    sput v1, Landroidx/compose/material/ThreeLine;->ContentLeftPadding:F

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 50
    move-result v1

    .line 51
    .line 52
    sput v1, Landroidx/compose/material/ThreeLine;->ContentRightPadding:F

    .line 53
    .line 54
    const/16 v1, 0x1c

    .line 55
    int-to-float v1, v1

    .line 56
    .line 57
    .line 58
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 59
    move-result v1

    .line 60
    .line 61
    sput v1, Landroidx/compose/material/ThreeLine;->ThreeLineBaselineFirstOffset:F

    .line 62
    .line 63
    const/16 v1, 0x14

    .line 64
    int-to-float v1, v1

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 68
    move-result v2

    .line 69
    .line 70
    sput v2, Landroidx/compose/material/ThreeLine;->ThreeLineBaselineSecondOffset:F

    .line 71
    .line 72
    .line 73
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 74
    move-result v1

    .line 75
    .line 76
    sput v1, Landroidx/compose/material/ThreeLine;->ThreeLineBaselineThirdOffset:F

    .line 77
    .line 78
    .line 79
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 80
    move-result v1

    .line 81
    .line 82
    sput v1, Landroidx/compose/material/ThreeLine;->ThreeLineTrailingTopPadding:F

    .line 83
    .line 84
    .line 85
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 86
    move-result v0

    .line 87
    .line 88
    sput v0, Landroidx/compose/material/ThreeLine;->TrailingRightPadding:F

    .line 89
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/Modifier;Le8/p;Le8/p;Le8/p;Le8/p;Le8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 32
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/ui/Modifier;",
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
    move-object/from16 v3, p2

    .line 3
    .line 4
    move-object/from16 v4, p3

    .line 5
    .line 6
    move-object/from16 v5, p4

    .line 7
    .line 8
    move-object/from16 v6, p5

    .line 9
    .line 10
    move-object/from16 v13, p6

    .line 11
    .line 12
    move/from16 v14, p8

    .line 13
    .line 14
    const-string v0, "text"

    .line 15
    .line 16
    .line 17
    invoke-static {v4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    const-string v0, "secondaryText"

    .line 20
    .line 21
    .line 22
    invoke-static {v5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const v0, 0x684ae52d

    .line 26
    .line 27
    move-object/from16 v1, p7

    .line 28
    .line 29
    .line 30
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    and-int/lit8 v1, p9, 0x1

    .line 34
    const/4 v2, 0x2

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    or-int/lit8 v7, v14, 0x6

    .line 39
    move v8, v7

    .line 40
    .line 41
    move-object/from16 v7, p1

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_0
    and-int/lit8 v7, v14, 0xe

    .line 45
    .line 46
    if-nez v7, :cond_2

    .line 47
    .line 48
    move-object/from16 v7, p1

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 52
    move-result v8

    .line 53
    .line 54
    if-eqz v8, :cond_1

    .line 55
    const/4 v8, 0x4

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move v8, v2

    .line 58
    :goto_0
    or-int/2addr v8, v14

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_2
    move-object/from16 v7, p1

    .line 62
    move v8, v14

    .line 63
    .line 64
    :goto_1
    and-int/lit8 v9, p9, 0x2

    .line 65
    .line 66
    if-eqz v9, :cond_3

    .line 67
    .line 68
    or-int/lit8 v8, v8, 0x30

    .line 69
    goto :goto_3

    .line 70
    .line 71
    :cond_3
    and-int/lit8 v9, v14, 0x70

    .line 72
    .line 73
    if-nez v9, :cond_5

    .line 74
    .line 75
    .line 76
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 77
    move-result v9

    .line 78
    .line 79
    if-eqz v9, :cond_4

    .line 80
    .line 81
    const/16 v9, 0x20

    .line 82
    goto :goto_2

    .line 83
    .line 84
    :cond_4
    const/16 v9, 0x10

    .line 85
    :goto_2
    or-int/2addr v8, v9

    .line 86
    .line 87
    :cond_5
    :goto_3
    and-int/lit8 v9, p9, 0x4

    .line 88
    .line 89
    if-eqz v9, :cond_6

    .line 90
    .line 91
    or-int/lit16 v8, v8, 0x180

    .line 92
    goto :goto_5

    .line 93
    .line 94
    :cond_6
    and-int/lit16 v9, v14, 0x380

    .line 95
    .line 96
    if-nez v9, :cond_8

    .line 97
    .line 98
    .line 99
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 100
    move-result v9

    .line 101
    .line 102
    if-eqz v9, :cond_7

    .line 103
    .line 104
    const/16 v9, 0x100

    .line 105
    goto :goto_4

    .line 106
    .line 107
    :cond_7
    const/16 v9, 0x80

    .line 108
    :goto_4
    or-int/2addr v8, v9

    .line 109
    .line 110
    :cond_8
    :goto_5
    and-int/lit8 v9, p9, 0x8

    .line 111
    .line 112
    if-eqz v9, :cond_9

    .line 113
    .line 114
    or-int/lit16 v8, v8, 0xc00

    .line 115
    goto :goto_7

    .line 116
    .line 117
    :cond_9
    and-int/lit16 v9, v14, 0x1c00

    .line 118
    .line 119
    if-nez v9, :cond_b

    .line 120
    .line 121
    .line 122
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 123
    move-result v9

    .line 124
    .line 125
    if-eqz v9, :cond_a

    .line 126
    .line 127
    const/16 v9, 0x800

    .line 128
    goto :goto_6

    .line 129
    .line 130
    :cond_a
    const/16 v9, 0x400

    .line 131
    :goto_6
    or-int/2addr v8, v9

    .line 132
    .line 133
    :cond_b
    :goto_7
    and-int/lit8 v9, p9, 0x10

    .line 134
    .line 135
    if-eqz v9, :cond_c

    .line 136
    .line 137
    or-int/lit16 v8, v8, 0x6000

    .line 138
    goto :goto_9

    .line 139
    .line 140
    .line 141
    :cond_c
    const v9, 0xe000

    .line 142
    and-int/2addr v9, v14

    .line 143
    .line 144
    if-nez v9, :cond_e

    .line 145
    .line 146
    .line 147
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 148
    move-result v9

    .line 149
    .line 150
    if-eqz v9, :cond_d

    .line 151
    .line 152
    const/16 v9, 0x4000

    .line 153
    goto :goto_8

    .line 154
    .line 155
    :cond_d
    const/16 v9, 0x2000

    .line 156
    :goto_8
    or-int/2addr v8, v9

    .line 157
    .line 158
    :cond_e
    :goto_9
    and-int/lit8 v9, p9, 0x20

    .line 159
    .line 160
    if-eqz v9, :cond_f

    .line 161
    .line 162
    const/high16 v9, 0x30000

    .line 163
    :goto_a
    or-int/2addr v8, v9

    .line 164
    goto :goto_b

    .line 165
    .line 166
    :cond_f
    const/high16 v9, 0x70000

    .line 167
    and-int/2addr v9, v14

    .line 168
    .line 169
    if-nez v9, :cond_11

    .line 170
    .line 171
    .line 172
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 173
    move-result v9

    .line 174
    .line 175
    if-eqz v9, :cond_10

    .line 176
    .line 177
    const/high16 v9, 0x20000

    .line 178
    goto :goto_a

    .line 179
    .line 180
    :cond_10
    const/high16 v9, 0x10000

    .line 181
    goto :goto_a

    .line 182
    .line 183
    :cond_11
    :goto_b
    and-int/lit8 v9, p9, 0x40

    .line 184
    .line 185
    if-eqz v9, :cond_13

    .line 186
    .line 187
    const/high16 v9, 0x180000

    .line 188
    or-int/2addr v8, v9

    .line 189
    .line 190
    move-object/from16 v15, p0

    .line 191
    :cond_12
    :goto_c
    move v12, v8

    .line 192
    goto :goto_e

    .line 193
    .line 194
    :cond_13
    const/high16 v9, 0x380000

    .line 195
    and-int/2addr v9, v14

    .line 196
    .line 197
    move-object/from16 v15, p0

    .line 198
    .line 199
    if-nez v9, :cond_12

    .line 200
    .line 201
    .line 202
    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 203
    move-result v9

    .line 204
    .line 205
    if-eqz v9, :cond_14

    .line 206
    .line 207
    const/high16 v9, 0x100000

    .line 208
    goto :goto_d

    .line 209
    .line 210
    :cond_14
    const/high16 v9, 0x80000

    .line 211
    :goto_d
    or-int/2addr v8, v9

    .line 212
    goto :goto_c

    .line 213
    .line 214
    .line 215
    :goto_e
    const v8, 0x2db6db

    .line 216
    and-int/2addr v8, v12

    .line 217
    .line 218
    .line 219
    const v9, 0x92492

    .line 220
    .line 221
    if-ne v8, v9, :cond_16

    .line 222
    .line 223
    .line 224
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 225
    move-result v8

    .line 226
    .line 227
    if-nez v8, :cond_15

    .line 228
    goto :goto_f

    .line 229
    .line 230
    .line 231
    :cond_15
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 232
    move-object v2, v7

    .line 233
    .line 234
    goto/16 :goto_13

    .line 235
    .line 236
    :cond_16
    :goto_f
    if-eqz v1, :cond_17

    .line 237
    .line 238
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 239
    goto :goto_10

    .line 240
    :cond_17
    move-object v1, v7

    .line 241
    .line 242
    :goto_10
    sget v7, Landroidx/compose/material/ThreeLine;->MinHeight:F

    .line 243
    const/4 v8, 0x0

    .line 244
    const/4 v9, 0x0

    .line 245
    .line 246
    .line 247
    invoke-static {v1, v7, v8, v2, v9}, Landroidx/compose/foundation/layout/SizeKt;->q(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 248
    move-result-object v7

    .line 249
    .line 250
    .line 251
    const v8, 0x2952b718

    .line 252
    .line 253
    .line 254
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 255
    .line 256
    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v8}, Landroidx/compose/foundation/layout/Arrangement;->e()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 260
    move-result-object v8

    .line 261
    .line 262
    sget-object v9, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v9}, Landroidx/compose/ui/Alignment$Companion;->l()Landroidx/compose/ui/Alignment$Vertical;

    .line 266
    move-result-object v10

    .line 267
    const/4 v11, 0x0

    .line 268
    .line 269
    .line 270
    invoke-static {v8, v10, v0, v11}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 271
    move-result-object v8

    .line 272
    .line 273
    .line 274
    const v10, -0x4ee9b9da

    .line 275
    .line 276
    .line 277
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 278
    .line 279
    .line 280
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 281
    move-result-object v2

    .line 282
    .line 283
    .line 284
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 285
    move-result-object v2

    .line 286
    .line 287
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 288
    .line 289
    .line 290
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 291
    move-result-object v10

    .line 292
    .line 293
    .line 294
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 295
    move-result-object v10

    .line 296
    .line 297
    check-cast v10, Landroidx/compose/ui/unit/LayoutDirection;

    .line 298
    .line 299
    .line 300
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 301
    move-result-object v11

    .line 302
    .line 303
    .line 304
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 305
    move-result-object v11

    .line 306
    .line 307
    check-cast v11, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 308
    .line 309
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 310
    .line 311
    move-object/from16 v18, v1

    .line 312
    .line 313
    .line 314
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 315
    move-result-object v1

    .line 316
    .line 317
    .line 318
    invoke-static {v7}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 319
    move-result-object v7

    .line 320
    .line 321
    .line 322
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 323
    move-result-object v14

    .line 324
    .line 325
    instance-of v14, v14, Landroidx/compose/runtime/Applier;

    .line 326
    .line 327
    if-nez v14, :cond_18

    .line 328
    .line 329
    .line 330
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 331
    .line 332
    .line 333
    :cond_18
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->e()V

    .line 334
    .line 335
    .line 336
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->r()Z

    .line 337
    move-result v14

    .line 338
    .line 339
    if-eqz v14, :cond_19

    .line 340
    .line 341
    .line 342
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 343
    goto :goto_11

    .line 344
    .line 345
    .line 346
    :cond_19
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->c()V

    .line 347
    .line 348
    .line 349
    :goto_11
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->L()V

    .line 350
    .line 351
    .line 352
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 353
    move-result-object v1

    .line 354
    .line 355
    .line 356
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 357
    move-result-object v14

    .line 358
    .line 359
    .line 360
    invoke-static {v1, v8, v14}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 364
    move-result-object v8

    .line 365
    .line 366
    .line 367
    invoke-static {v1, v2, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 371
    move-result-object v2

    .line 372
    .line 373
    .line 374
    invoke-static {v1, v10, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 378
    move-result-object v2

    .line 379
    .line 380
    .line 381
    invoke-static {v1, v11, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 382
    .line 383
    .line 384
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->o()V

    .line 385
    .line 386
    .line 387
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 388
    move-result-object v1

    .line 389
    .line 390
    .line 391
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 392
    move-result-object v1

    .line 393
    const/4 v2, 0x0

    .line 394
    .line 395
    .line 396
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 397
    move-result-object v8

    .line 398
    .line 399
    .line 400
    invoke-interface {v7, v1, v0, v8}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    const v1, 0x7ab4aae9

    .line 404
    .line 405
    .line 406
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 407
    .line 408
    .line 409
    const v2, -0x286e2e7f

    .line 410
    .line 411
    .line 412
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 413
    .line 414
    sget-object v19, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 415
    .line 416
    .line 417
    const v2, 0x586a8c91

    .line 418
    .line 419
    .line 420
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 421
    .line 422
    .line 423
    const v2, -0x10b64e10

    .line 424
    .line 425
    .line 426
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 427
    .line 428
    if-eqz v3, :cond_1c

    .line 429
    .line 430
    sget v21, Landroidx/compose/material/ThreeLine;->IconLeftPadding:F

    .line 431
    .line 432
    sget v2, Landroidx/compose/material/ThreeLine;->IconMinPaddedWidth:F

    .line 433
    .line 434
    add-float v2, v21, v2

    .line 435
    .line 436
    .line 437
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 438
    move-result v24

    .line 439
    .line 440
    sget-object v22, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 441
    .line 442
    const/16 v25, 0x0

    .line 443
    .line 444
    const/16 v26, 0x0

    .line 445
    .line 446
    const/16 v27, 0xc

    .line 447
    .line 448
    const/16 v28, 0x0

    .line 449
    .line 450
    move/from16 v23, v24

    .line 451
    .line 452
    .line 453
    invoke-static/range {v22 .. v28}, Landroidx/compose/foundation/layout/SizeKt;->C(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 454
    move-result-object v20

    .line 455
    .line 456
    sget v24, Landroidx/compose/material/ThreeLine;->IconThreeLineVerticalPadding:F

    .line 457
    .line 458
    const/16 v23, 0x0

    .line 459
    .line 460
    const/16 v25, 0x4

    .line 461
    .line 462
    const/16 v26, 0x0

    .line 463
    .line 464
    move/from16 v22, v24

    .line 465
    .line 466
    .line 467
    invoke-static/range {v20 .. v26}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 468
    move-result-object v2

    .line 469
    .line 470
    .line 471
    invoke-virtual {v9}, Landroidx/compose/ui/Alignment$Companion;->h()Landroidx/compose/ui/Alignment;

    .line 472
    move-result-object v7

    .line 473
    .line 474
    .line 475
    const v8, 0x2bb5b5d7

    .line 476
    .line 477
    .line 478
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 479
    const/4 v8, 0x6

    .line 480
    const/4 v9, 0x0

    .line 481
    .line 482
    .line 483
    invoke-static {v7, v9, v0, v8}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 484
    move-result-object v7

    .line 485
    .line 486
    .line 487
    const v8, -0x4ee9b9da

    .line 488
    .line 489
    .line 490
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 491
    .line 492
    .line 493
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 494
    move-result-object v8

    .line 495
    .line 496
    .line 497
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 498
    move-result-object v8

    .line 499
    .line 500
    check-cast v8, Landroidx/compose/ui/unit/Density;

    .line 501
    .line 502
    .line 503
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 504
    move-result-object v9

    .line 505
    .line 506
    .line 507
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 508
    move-result-object v9

    .line 509
    .line 510
    check-cast v9, Landroidx/compose/ui/unit/LayoutDirection;

    .line 511
    .line 512
    .line 513
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 514
    move-result-object v10

    .line 515
    .line 516
    .line 517
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 518
    move-result-object v10

    .line 519
    .line 520
    check-cast v10, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 521
    .line 522
    .line 523
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 524
    move-result-object v11

    .line 525
    .line 526
    .line 527
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 528
    move-result-object v2

    .line 529
    .line 530
    .line 531
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 532
    move-result-object v14

    .line 533
    .line 534
    instance-of v14, v14, Landroidx/compose/runtime/Applier;

    .line 535
    .line 536
    if-nez v14, :cond_1a

    .line 537
    .line 538
    .line 539
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 540
    .line 541
    .line 542
    :cond_1a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->e()V

    .line 543
    .line 544
    .line 545
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->r()Z

    .line 546
    move-result v14

    .line 547
    .line 548
    if-eqz v14, :cond_1b

    .line 549
    .line 550
    .line 551
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 552
    goto :goto_12

    .line 553
    .line 554
    .line 555
    :cond_1b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->c()V

    .line 556
    .line 557
    .line 558
    :goto_12
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->L()V

    .line 559
    .line 560
    .line 561
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 562
    move-result-object v11

    .line 563
    .line 564
    .line 565
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 566
    move-result-object v14

    .line 567
    .line 568
    .line 569
    invoke-static {v11, v7, v14}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 573
    move-result-object v7

    .line 574
    .line 575
    .line 576
    invoke-static {v11, v8, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 577
    .line 578
    .line 579
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 580
    move-result-object v7

    .line 581
    .line 582
    .line 583
    invoke-static {v11, v9, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 584
    .line 585
    .line 586
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 587
    move-result-object v7

    .line 588
    .line 589
    .line 590
    invoke-static {v11, v10, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 591
    .line 592
    .line 593
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->o()V

    .line 594
    .line 595
    .line 596
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 597
    move-result-object v7

    .line 598
    .line 599
    .line 600
    invoke-static {v7}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 601
    move-result-object v7

    .line 602
    const/4 v8, 0x0

    .line 603
    .line 604
    .line 605
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 606
    move-result-object v9

    .line 607
    .line 608
    .line 609
    invoke-interface {v2, v7, v0, v9}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 613
    .line 614
    .line 615
    const v1, -0x7f65a980

    .line 616
    .line 617
    .line 618
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 619
    .line 620
    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 621
    .line 622
    .line 623
    const v1, 0x77a0d4f2

    .line 624
    .line 625
    .line 626
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 627
    .line 628
    shr-int/lit8 v1, v12, 0x3

    .line 629
    .line 630
    and-int/lit8 v1, v1, 0xe

    .line 631
    .line 632
    .line 633
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 634
    move-result-object v1

    .line 635
    .line 636
    .line 637
    invoke-interface {v3, v0, v1}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 641
    .line 642
    .line 643
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 644
    .line 645
    .line 646
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 647
    .line 648
    .line 649
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->d()V

    .line 650
    .line 651
    .line 652
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 653
    .line 654
    .line 655
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 656
    .line 657
    .line 658
    :cond_1c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 659
    const/4 v1, 0x3

    .line 660
    .line 661
    new-array v1, v1, [Landroidx/compose/ui/unit/Dp;

    .line 662
    .line 663
    sget v2, Landroidx/compose/material/ThreeLine;->ThreeLineBaselineFirstOffset:F

    .line 664
    .line 665
    .line 666
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 667
    move-result-object v7

    .line 668
    const/4 v8, 0x0

    .line 669
    .line 670
    aput-object v7, v1, v8

    .line 671
    .line 672
    sget v7, Landroidx/compose/material/ThreeLine;->ThreeLineBaselineSecondOffset:F

    .line 673
    .line 674
    .line 675
    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 676
    move-result-object v7

    .line 677
    const/4 v8, 0x1

    .line 678
    .line 679
    aput-object v7, v1, v8

    .line 680
    .line 681
    sget v7, Landroidx/compose/material/ThreeLine;->ThreeLineBaselineThirdOffset:F

    .line 682
    .line 683
    .line 684
    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 685
    move-result-object v7

    .line 686
    const/4 v9, 0x2

    .line 687
    .line 688
    aput-object v7, v1, v9

    .line 689
    .line 690
    .line 691
    invoke-static {v1}, Lkotlin/collections/t;->p([Ljava/lang/Object;)Ljava/util/List;

    .line 692
    move-result-object v7

    .line 693
    .line 694
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 695
    .line 696
    const/high16 v21, 0x3f800000    # 1.0f

    .line 697
    .line 698
    const/16 v22, 0x0

    .line 699
    .line 700
    const/16 v23, 0x2

    .line 701
    .line 702
    const/16 v24, 0x0

    .line 703
    .line 704
    move-object/from16 v20, v1

    .line 705
    .line 706
    .line 707
    invoke-static/range {v19 .. v24}, Landroidx/compose/foundation/layout/d;->a(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 708
    move-result-object v25

    .line 709
    .line 710
    sget v26, Landroidx/compose/material/ThreeLine;->ContentLeftPadding:F

    .line 711
    .line 712
    const/16 v27, 0x0

    .line 713
    .line 714
    sget v28, Landroidx/compose/material/ThreeLine;->ContentRightPadding:F

    .line 715
    .line 716
    const/16 v29, 0x0

    .line 717
    .line 718
    const/16 v30, 0xa

    .line 719
    .line 720
    const/16 v31, 0x0

    .line 721
    .line 722
    .line 723
    invoke-static/range {v25 .. v31}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 724
    move-result-object v9

    .line 725
    .line 726
    new-instance v10, Landroidx/compose/material/ThreeLine$ListItem$1$2;

    .line 727
    .line 728
    .line 729
    invoke-direct {v10, v6, v12, v4, v5}, Landroidx/compose/material/ThreeLine$ListItem$1$2;-><init>(Le8/p;ILe8/p;Le8/p;)V

    .line 730
    .line 731
    .line 732
    const v11, -0x12f5bba5

    .line 733
    .line 734
    .line 735
    invoke-static {v0, v11, v8, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 736
    move-result-object v10

    .line 737
    .line 738
    const/16 v11, 0x180

    .line 739
    const/4 v14, 0x0

    .line 740
    move-object v8, v9

    .line 741
    move-object v9, v10

    .line 742
    move-object v10, v0

    .line 743
    .line 744
    move/from16 v16, v12

    .line 745
    move v12, v14

    .line 746
    .line 747
    .line 748
    invoke-static/range {v7 .. v12}, Landroidx/compose/material/ListItemKt;->d(Ljava/util/List;Landroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/runtime/Composer;II)V

    .line 749
    .line 750
    if-eqz v13, :cond_1d

    .line 751
    .line 752
    sget v22, Landroidx/compose/material/ThreeLine;->ThreeLineTrailingTopPadding:F

    .line 753
    .line 754
    sub-float v2, v2, v22

    .line 755
    .line 756
    .line 757
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 758
    move-result v7

    .line 759
    .line 760
    const/16 v21, 0x0

    .line 761
    .line 762
    sget v23, Landroidx/compose/material/ThreeLine;->TrailingRightPadding:F

    .line 763
    .line 764
    const/16 v24, 0x0

    .line 765
    .line 766
    const/16 v25, 0x9

    .line 767
    .line 768
    const/16 v26, 0x0

    .line 769
    .line 770
    move-object/from16 v20, v1

    .line 771
    .line 772
    .line 773
    invoke-static/range {v20 .. v26}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 774
    move-result-object v8

    .line 775
    .line 776
    shr-int/lit8 v1, v16, 0x9

    .line 777
    .line 778
    and-int/lit16 v1, v1, 0x380

    .line 779
    .line 780
    or-int/lit8 v11, v1, 0x36

    .line 781
    const/4 v12, 0x0

    .line 782
    .line 783
    move-object/from16 v9, p6

    .line 784
    move-object v10, v0

    .line 785
    .line 786
    .line 787
    invoke-static/range {v7 .. v12}, Landroidx/compose/material/ListItemKt;->e(FLandroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/runtime/Composer;II)V

    .line 788
    .line 789
    .line 790
    :cond_1d
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 791
    .line 792
    .line 793
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 794
    .line 795
    .line 796
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 797
    .line 798
    .line 799
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->d()V

    .line 800
    .line 801
    .line 802
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 803
    .line 804
    .line 805
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 806
    .line 807
    move-object/from16 v2, v18

    .line 808
    .line 809
    .line 810
    :goto_13
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 811
    move-result-object v10

    .line 812
    .line 813
    if-nez v10, :cond_1e

    .line 814
    goto :goto_14

    .line 815
    .line 816
    :cond_1e
    new-instance v11, Landroidx/compose/material/ThreeLine$ListItem$2;

    .line 817
    move-object v0, v11

    .line 818
    .line 819
    move-object/from16 v1, p0

    .line 820
    .line 821
    move-object/from16 v3, p2

    .line 822
    .line 823
    move-object/from16 v4, p3

    .line 824
    .line 825
    move-object/from16 v5, p4

    .line 826
    .line 827
    move-object/from16 v6, p5

    .line 828
    .line 829
    move-object/from16 v7, p6

    .line 830
    .line 831
    move/from16 v8, p8

    .line 832
    .line 833
    move/from16 v9, p9

    .line 834
    .line 835
    .line 836
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material/ThreeLine$ListItem$2;-><init>(Landroidx/compose/material/ThreeLine;Landroidx/compose/ui/Modifier;Le8/p;Le8/p;Le8/p;Le8/p;Le8/p;II)V

    .line 837
    .line 838
    .line 839
    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 840
    :goto_14
    return-void
.end method
