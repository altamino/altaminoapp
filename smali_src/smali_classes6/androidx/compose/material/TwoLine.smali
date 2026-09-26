.class final Landroidx/compose/material/TwoLine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListItem.kt\nandroidx/compose/material/TwoLine\n+ 2 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 7 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 8 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,429:1\n75#2,6:430\n81#2:462\n85#2:505\n75#3:436\n76#3,11:438\n75#3:469\n76#3,11:471\n89#3:499\n89#3:504\n76#4:437\n76#4:470\n460#5,13:449\n460#5,13:482\n473#5,3:496\n473#5,3:501\n52#6:463\n68#7,5:464\n73#7:495\n77#7:500\n155#8:506\n155#8:507\n155#8:508\n155#8:509\n155#8:510\n155#8:511\n155#8:512\n155#8:513\n155#8:514\n155#8:515\n155#8:516\n155#8:517\n155#8:518\n155#8:519\n*S KotlinDebug\n*F\n+ 1 ListItem.kt\nandroidx/compose/material/TwoLine\n*L\n206#1:430,6\n206#1:462\n206#1:505\n206#1:436\n206#1:438,11\n211#1:469\n211#1:471,11\n211#1:499\n206#1:504\n206#1:437\n211#1:470\n206#1:449,13\n211#1:482,13\n211#1:496,3\n206#1:501,3\n214#1:463\n211#1:464,5\n211#1:495\n211#1:500\n175#1:506\n176#1:507\n179#1:508\n180#1:509\n181#1:510\n184#1:511\n185#1:512\n186#1:513\n187#1:514\n188#1:515\n189#1:516\n190#1:517\n191#1:518\n194#1:519\n*E\n"
.end annotation


# static fields
.field private static final ContentLeftPadding:F

.field private static final ContentRightPadding:F

.field public static final INSTANCE:Landroidx/compose/material/TwoLine;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final IconLeftPadding:F

.field private static final IconMinPaddedWidth:F

.field private static final IconVerticalPadding:F

.field private static final MinHeight:F

.field private static final MinHeightWithIcon:F

.field private static final OverlineBaselineOffset:F

.field private static final OverlineToPrimaryBaselineOffset:F

.field private static final PrimaryBaselineOffsetNoIcon:F

.field private static final PrimaryBaselineOffsetWithIcon:F

.field private static final PrimaryToSecondaryBaselineOffsetNoIcon:F

.field private static final PrimaryToSecondaryBaselineOffsetWithIcon:F

.field private static final TrailingRightPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/material/TwoLine;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/compose/material/TwoLine;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/compose/material/TwoLine;->INSTANCE:Landroidx/compose/material/TwoLine;

    .line 8
    .line 9
    const/16 v0, 0x40

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
    sput v0, Landroidx/compose/material/TwoLine;->MinHeight:F

    .line 17
    .line 18
    const/16 v0, 0x48

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
    sput v0, Landroidx/compose/material/TwoLine;->MinHeightWithIcon:F

    .line 26
    .line 27
    const/16 v0, 0x28

    .line 28
    int-to-float v0, v0

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 32
    move-result v0

    .line 33
    .line 34
    sput v0, Landroidx/compose/material/TwoLine;->IconMinPaddedWidth:F

    .line 35
    .line 36
    const/16 v0, 0x10

    .line 37
    int-to-float v0, v0

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 41
    move-result v1

    .line 42
    .line 43
    sput v1, Landroidx/compose/material/TwoLine;->IconLeftPadding:F

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 47
    move-result v1

    .line 48
    .line 49
    sput v1, Landroidx/compose/material/TwoLine;->IconVerticalPadding:F

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 53
    move-result v1

    .line 54
    .line 55
    sput v1, Landroidx/compose/material/TwoLine;->ContentLeftPadding:F

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 59
    move-result v1

    .line 60
    .line 61
    sput v1, Landroidx/compose/material/TwoLine;->ContentRightPadding:F

    .line 62
    .line 63
    const/16 v1, 0x18

    .line 64
    int-to-float v1, v1

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 68
    move-result v1

    .line 69
    .line 70
    sput v1, Landroidx/compose/material/TwoLine;->OverlineBaselineOffset:F

    .line 71
    .line 72
    const/16 v1, 0x14

    .line 73
    int-to-float v1, v1

    .line 74
    .line 75
    .line 76
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 77
    move-result v2

    .line 78
    .line 79
    sput v2, Landroidx/compose/material/TwoLine;->OverlineToPrimaryBaselineOffset:F

    .line 80
    .line 81
    const/16 v2, 0x1c

    .line 82
    int-to-float v2, v2

    .line 83
    .line 84
    .line 85
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 86
    move-result v2

    .line 87
    .line 88
    sput v2, Landroidx/compose/material/TwoLine;->PrimaryBaselineOffsetNoIcon:F

    .line 89
    .line 90
    const/16 v2, 0x20

    .line 91
    int-to-float v2, v2

    .line 92
    .line 93
    .line 94
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 95
    move-result v2

    .line 96
    .line 97
    sput v2, Landroidx/compose/material/TwoLine;->PrimaryBaselineOffsetWithIcon:F

    .line 98
    .line 99
    .line 100
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 101
    move-result v2

    .line 102
    .line 103
    sput v2, Landroidx/compose/material/TwoLine;->PrimaryToSecondaryBaselineOffsetNoIcon:F

    .line 104
    .line 105
    .line 106
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 107
    move-result v1

    .line 108
    .line 109
    sput v1, Landroidx/compose/material/TwoLine;->PrimaryToSecondaryBaselineOffsetWithIcon:F

    .line 110
    .line 111
    .line 112
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 113
    move-result v0

    .line 114
    .line 115
    sput v0, Landroidx/compose/material/TwoLine;->TrailingRightPadding:F

    .line 116
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

.method public static final synthetic b()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/TwoLine;->TrailingRightPadding:F

    return v0
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
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    move-object/from16 v7, p6

    .line 11
    .line 12
    move/from16 v8, p8

    .line 13
    .line 14
    const-string v0, "text"

    .line 15
    .line 16
    .line 17
    invoke-static {v4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const v0, -0x4fe82181

    .line 21
    .line 22
    move-object/from16 v1, p7

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    and-int/lit8 v1, p9, 0x1

    .line 29
    const/4 v2, 0x2

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    or-int/lit8 v9, v8, 0x6

    .line 34
    move v10, v9

    .line 35
    .line 36
    move-object/from16 v9, p1

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_0
    and-int/lit8 v9, v8, 0xe

    .line 40
    .line 41
    if-nez v9, :cond_2

    .line 42
    .line 43
    move-object/from16 v9, p1

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 47
    move-result v10

    .line 48
    .line 49
    if-eqz v10, :cond_1

    .line 50
    const/4 v10, 0x4

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move v10, v2

    .line 53
    :goto_0
    or-int/2addr v10, v8

    .line 54
    goto :goto_1

    .line 55
    .line 56
    :cond_2
    move-object/from16 v9, p1

    .line 57
    move v10, v8

    .line 58
    .line 59
    :goto_1
    and-int/lit8 v11, p9, 0x2

    .line 60
    .line 61
    if-eqz v11, :cond_3

    .line 62
    .line 63
    or-int/lit8 v10, v10, 0x30

    .line 64
    goto :goto_3

    .line 65
    .line 66
    :cond_3
    and-int/lit8 v11, v8, 0x70

    .line 67
    .line 68
    if-nez v11, :cond_5

    .line 69
    .line 70
    .line 71
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 72
    move-result v11

    .line 73
    .line 74
    if-eqz v11, :cond_4

    .line 75
    .line 76
    const/16 v11, 0x20

    .line 77
    goto :goto_2

    .line 78
    .line 79
    :cond_4
    const/16 v11, 0x10

    .line 80
    :goto_2
    or-int/2addr v10, v11

    .line 81
    .line 82
    :cond_5
    :goto_3
    and-int/lit8 v11, p9, 0x4

    .line 83
    .line 84
    if-eqz v11, :cond_6

    .line 85
    .line 86
    or-int/lit16 v10, v10, 0x180

    .line 87
    goto :goto_5

    .line 88
    .line 89
    :cond_6
    and-int/lit16 v11, v8, 0x380

    .line 90
    .line 91
    if-nez v11, :cond_8

    .line 92
    .line 93
    .line 94
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 95
    move-result v11

    .line 96
    .line 97
    if-eqz v11, :cond_7

    .line 98
    .line 99
    const/16 v11, 0x100

    .line 100
    goto :goto_4

    .line 101
    .line 102
    :cond_7
    const/16 v11, 0x80

    .line 103
    :goto_4
    or-int/2addr v10, v11

    .line 104
    .line 105
    :cond_8
    :goto_5
    and-int/lit8 v11, p9, 0x8

    .line 106
    .line 107
    if-eqz v11, :cond_9

    .line 108
    .line 109
    or-int/lit16 v10, v10, 0xc00

    .line 110
    goto :goto_7

    .line 111
    .line 112
    :cond_9
    and-int/lit16 v11, v8, 0x1c00

    .line 113
    .line 114
    if-nez v11, :cond_b

    .line 115
    .line 116
    .line 117
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 118
    move-result v11

    .line 119
    .line 120
    if-eqz v11, :cond_a

    .line 121
    .line 122
    const/16 v11, 0x800

    .line 123
    goto :goto_6

    .line 124
    .line 125
    :cond_a
    const/16 v11, 0x400

    .line 126
    :goto_6
    or-int/2addr v10, v11

    .line 127
    .line 128
    :cond_b
    :goto_7
    and-int/lit8 v11, p9, 0x10

    .line 129
    .line 130
    if-eqz v11, :cond_c

    .line 131
    .line 132
    or-int/lit16 v10, v10, 0x6000

    .line 133
    goto :goto_9

    .line 134
    .line 135
    .line 136
    :cond_c
    const v11, 0xe000

    .line 137
    and-int/2addr v11, v8

    .line 138
    .line 139
    if-nez v11, :cond_e

    .line 140
    .line 141
    .line 142
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 143
    move-result v11

    .line 144
    .line 145
    if-eqz v11, :cond_d

    .line 146
    .line 147
    const/16 v11, 0x4000

    .line 148
    goto :goto_8

    .line 149
    .line 150
    :cond_d
    const/16 v11, 0x2000

    .line 151
    :goto_8
    or-int/2addr v10, v11

    .line 152
    .line 153
    :cond_e
    :goto_9
    and-int/lit8 v11, p9, 0x20

    .line 154
    .line 155
    if-eqz v11, :cond_f

    .line 156
    .line 157
    const/high16 v11, 0x30000

    .line 158
    :goto_a
    or-int/2addr v10, v11

    .line 159
    goto :goto_b

    .line 160
    .line 161
    :cond_f
    const/high16 v11, 0x70000

    .line 162
    and-int/2addr v11, v8

    .line 163
    .line 164
    if-nez v11, :cond_11

    .line 165
    .line 166
    .line 167
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 168
    move-result v11

    .line 169
    .line 170
    if-eqz v11, :cond_10

    .line 171
    .line 172
    const/high16 v11, 0x20000

    .line 173
    goto :goto_a

    .line 174
    .line 175
    :cond_10
    const/high16 v11, 0x10000

    .line 176
    goto :goto_a

    .line 177
    .line 178
    :cond_11
    :goto_b
    and-int/lit8 v11, p9, 0x40

    .line 179
    .line 180
    if-eqz v11, :cond_13

    .line 181
    .line 182
    const/high16 v11, 0x180000

    .line 183
    or-int/2addr v10, v11

    .line 184
    .line 185
    move-object/from16 v15, p0

    .line 186
    :cond_12
    :goto_c
    move v14, v10

    .line 187
    goto :goto_e

    .line 188
    .line 189
    :cond_13
    const/high16 v11, 0x380000

    .line 190
    and-int/2addr v11, v8

    .line 191
    .line 192
    move-object/from16 v15, p0

    .line 193
    .line 194
    if-nez v11, :cond_12

    .line 195
    .line 196
    .line 197
    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 198
    move-result v11

    .line 199
    .line 200
    if-eqz v11, :cond_14

    .line 201
    .line 202
    const/high16 v11, 0x100000

    .line 203
    goto :goto_d

    .line 204
    .line 205
    :cond_14
    const/high16 v11, 0x80000

    .line 206
    :goto_d
    or-int/2addr v10, v11

    .line 207
    goto :goto_c

    .line 208
    .line 209
    .line 210
    :goto_e
    const v10, 0x2db6db

    .line 211
    and-int/2addr v10, v14

    .line 212
    .line 213
    .line 214
    const v11, 0x92492

    .line 215
    .line 216
    if-ne v10, v11, :cond_16

    .line 217
    .line 218
    .line 219
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 220
    move-result v10

    .line 221
    .line 222
    if-nez v10, :cond_15

    .line 223
    goto :goto_f

    .line 224
    .line 225
    .line 226
    :cond_15
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 227
    move-object v2, v9

    .line 228
    .line 229
    goto/16 :goto_1a

    .line 230
    .line 231
    :cond_16
    :goto_f
    if-eqz v1, :cond_17

    .line 232
    .line 233
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 234
    goto :goto_10

    .line 235
    :cond_17
    move-object v1, v9

    .line 236
    .line 237
    :goto_10
    if-nez v3, :cond_18

    .line 238
    .line 239
    sget v9, Landroidx/compose/material/TwoLine;->MinHeight:F

    .line 240
    :goto_11
    move v13, v9

    .line 241
    goto :goto_12

    .line 242
    .line 243
    :cond_18
    sget v9, Landroidx/compose/material/TwoLine;->MinHeightWithIcon:F

    .line 244
    goto :goto_11

    .line 245
    :goto_12
    const/4 v9, 0x0

    .line 246
    const/4 v10, 0x0

    .line 247
    .line 248
    .line 249
    invoke-static {v1, v13, v9, v2, v10}, Landroidx/compose/foundation/layout/SizeKt;->q(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 250
    move-result-object v9

    .line 251
    .line 252
    .line 253
    const v10, 0x2952b718

    .line 254
    .line 255
    .line 256
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 257
    .line 258
    sget-object v10, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v10}, Landroidx/compose/foundation/layout/Arrangement;->e()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 262
    move-result-object v10

    .line 263
    .line 264
    sget-object v11, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v11}, Landroidx/compose/ui/Alignment$Companion;->l()Landroidx/compose/ui/Alignment$Vertical;

    .line 268
    move-result-object v12

    .line 269
    const/4 v2, 0x0

    .line 270
    .line 271
    .line 272
    invoke-static {v10, v12, v0, v2}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 273
    move-result-object v10

    .line 274
    .line 275
    .line 276
    const v12, -0x4ee9b9da

    .line 277
    .line 278
    .line 279
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 280
    .line 281
    .line 282
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 283
    move-result-object v12

    .line 284
    .line 285
    .line 286
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 287
    move-result-object v12

    .line 288
    .line 289
    check-cast v12, Landroidx/compose/ui/unit/Density;

    .line 290
    .line 291
    .line 292
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 293
    move-result-object v2

    .line 294
    .line 295
    .line 296
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 297
    move-result-object v2

    .line 298
    .line 299
    check-cast v2, Landroidx/compose/ui/unit/LayoutDirection;

    .line 300
    .line 301
    move-object/from16 v23, v1

    .line 302
    .line 303
    .line 304
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 305
    move-result-object v1

    .line 306
    .line 307
    .line 308
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 309
    move-result-object v1

    .line 310
    .line 311
    check-cast v1, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 312
    .line 313
    sget-object v24, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 314
    .line 315
    .line 316
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 317
    move-result-object v8

    .line 318
    .line 319
    .line 320
    invoke-static {v9}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 321
    move-result-object v9

    .line 322
    .line 323
    .line 324
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 325
    move-result-object v15

    .line 326
    .line 327
    instance-of v15, v15, Landroidx/compose/runtime/Applier;

    .line 328
    .line 329
    if-nez v15, :cond_19

    .line 330
    .line 331
    .line 332
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 333
    .line 334
    .line 335
    :cond_19
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->e()V

    .line 336
    .line 337
    .line 338
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->r()Z

    .line 339
    move-result v15

    .line 340
    .line 341
    if-eqz v15, :cond_1a

    .line 342
    .line 343
    .line 344
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 345
    goto :goto_13

    .line 346
    .line 347
    .line 348
    :cond_1a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->c()V

    .line 349
    .line 350
    .line 351
    :goto_13
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->L()V

    .line 352
    .line 353
    .line 354
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 355
    move-result-object v8

    .line 356
    .line 357
    .line 358
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 359
    move-result-object v15

    .line 360
    .line 361
    .line 362
    invoke-static {v8, v10, v15}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 366
    move-result-object v10

    .line 367
    .line 368
    .line 369
    invoke-static {v8, v12, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 373
    move-result-object v10

    .line 374
    .line 375
    .line 376
    invoke-static {v8, v2, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 380
    move-result-object v2

    .line 381
    .line 382
    .line 383
    invoke-static {v8, v1, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 384
    .line 385
    .line 386
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->o()V

    .line 387
    .line 388
    .line 389
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 390
    move-result-object v1

    .line 391
    .line 392
    .line 393
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 394
    move-result-object v1

    .line 395
    const/4 v2, 0x0

    .line 396
    .line 397
    .line 398
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 399
    move-result-object v8

    .line 400
    .line 401
    .line 402
    invoke-interface {v9, v1, v0, v8}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    const v1, 0x7ab4aae9

    .line 406
    .line 407
    .line 408
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 409
    .line 410
    .line 411
    const v2, -0x286e2e7f

    .line 412
    .line 413
    .line 414
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 415
    .line 416
    sget-object v15, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 417
    .line 418
    .line 419
    const v2, 0x72020ee3

    .line 420
    .line 421
    .line 422
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 423
    .line 424
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 425
    .line 426
    const/high16 v17, 0x3f800000    # 1.0f

    .line 427
    .line 428
    const/16 v18, 0x0

    .line 429
    .line 430
    const/16 v19, 0x2

    .line 431
    .line 432
    const/16 v20, 0x0

    .line 433
    .line 434
    move-object/from16 v16, v2

    .line 435
    .line 436
    .line 437
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/d;->a(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 438
    move-result-object v25

    .line 439
    .line 440
    sget v26, Landroidx/compose/material/TwoLine;->ContentLeftPadding:F

    .line 441
    .line 442
    const/16 v27, 0x0

    .line 443
    .line 444
    sget v28, Landroidx/compose/material/TwoLine;->ContentRightPadding:F

    .line 445
    .line 446
    const/16 v29, 0x0

    .line 447
    .line 448
    const/16 v30, 0xa

    .line 449
    .line 450
    const/16 v31, 0x0

    .line 451
    .line 452
    .line 453
    invoke-static/range {v25 .. v31}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 454
    move-result-object v10

    .line 455
    .line 456
    .line 457
    const v8, -0x1017cd67

    .line 458
    .line 459
    .line 460
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 461
    .line 462
    if-eqz v3, :cond_1d

    .line 463
    .line 464
    sget v8, Landroidx/compose/material/TwoLine;->IconLeftPadding:F

    .line 465
    .line 466
    sget v9, Landroidx/compose/material/TwoLine;->IconMinPaddedWidth:F

    .line 467
    add-float/2addr v9, v8

    .line 468
    .line 469
    .line 470
    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 471
    move-result v17

    .line 472
    .line 473
    const/16 v19, 0x0

    .line 474
    .line 475
    const/16 v20, 0x0

    .line 476
    .line 477
    const/16 v21, 0xc

    .line 478
    .line 479
    const/16 v22, 0x0

    .line 480
    .line 481
    move-object/from16 v16, v2

    .line 482
    .line 483
    move/from16 v18, v13

    .line 484
    .line 485
    .line 486
    invoke-static/range {v16 .. v22}, Landroidx/compose/foundation/layout/SizeKt;->C(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 487
    move-result-object v15

    .line 488
    .line 489
    sget v19, Landroidx/compose/material/TwoLine;->IconVerticalPadding:F

    .line 490
    .line 491
    const/16 v18, 0x0

    .line 492
    .line 493
    const/16 v20, 0x4

    .line 494
    .line 495
    const/16 v21, 0x0

    .line 496
    .line 497
    move/from16 v16, v8

    .line 498
    .line 499
    move/from16 v17, v19

    .line 500
    .line 501
    .line 502
    invoke-static/range {v15 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 503
    move-result-object v2

    .line 504
    .line 505
    .line 506
    invoke-virtual {v11}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 507
    move-result-object v8

    .line 508
    .line 509
    .line 510
    const v9, 0x2bb5b5d7

    .line 511
    .line 512
    .line 513
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 514
    const/4 v9, 0x6

    .line 515
    const/4 v11, 0x0

    .line 516
    .line 517
    .line 518
    invoke-static {v8, v11, v0, v9}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 519
    move-result-object v8

    .line 520
    .line 521
    .line 522
    const v9, -0x4ee9b9da

    .line 523
    .line 524
    .line 525
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 526
    .line 527
    .line 528
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 529
    move-result-object v9

    .line 530
    .line 531
    .line 532
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 533
    move-result-object v9

    .line 534
    .line 535
    check-cast v9, Landroidx/compose/ui/unit/Density;

    .line 536
    .line 537
    .line 538
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 539
    move-result-object v11

    .line 540
    .line 541
    .line 542
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 543
    move-result-object v11

    .line 544
    .line 545
    check-cast v11, Landroidx/compose/ui/unit/LayoutDirection;

    .line 546
    .line 547
    .line 548
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 549
    move-result-object v12

    .line 550
    .line 551
    .line 552
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 553
    move-result-object v12

    .line 554
    .line 555
    check-cast v12, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 556
    .line 557
    .line 558
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 559
    move-result-object v15

    .line 560
    .line 561
    .line 562
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 563
    move-result-object v2

    .line 564
    .line 565
    .line 566
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 567
    move-result-object v1

    .line 568
    .line 569
    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    .line 570
    .line 571
    if-nez v1, :cond_1b

    .line 572
    .line 573
    .line 574
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 575
    .line 576
    .line 577
    :cond_1b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->e()V

    .line 578
    .line 579
    .line 580
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->r()Z

    .line 581
    move-result v1

    .line 582
    .line 583
    if-eqz v1, :cond_1c

    .line 584
    .line 585
    .line 586
    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 587
    goto :goto_14

    .line 588
    .line 589
    .line 590
    :cond_1c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->c()V

    .line 591
    .line 592
    .line 593
    :goto_14
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->L()V

    .line 594
    .line 595
    .line 596
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 597
    move-result-object v1

    .line 598
    .line 599
    .line 600
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 601
    move-result-object v15

    .line 602
    .line 603
    .line 604
    invoke-static {v1, v8, v15}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 605
    .line 606
    .line 607
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 608
    move-result-object v8

    .line 609
    .line 610
    .line 611
    invoke-static {v1, v9, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 612
    .line 613
    .line 614
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 615
    move-result-object v8

    .line 616
    .line 617
    .line 618
    invoke-static {v1, v11, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 619
    .line 620
    .line 621
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 622
    move-result-object v8

    .line 623
    .line 624
    .line 625
    invoke-static {v1, v12, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 626
    .line 627
    .line 628
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->o()V

    .line 629
    .line 630
    .line 631
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 632
    move-result-object v1

    .line 633
    .line 634
    .line 635
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 636
    move-result-object v1

    .line 637
    const/4 v8, 0x0

    .line 638
    .line 639
    .line 640
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 641
    move-result-object v9

    .line 642
    .line 643
    .line 644
    invoke-interface {v2, v1, v0, v9}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    .line 646
    .line 647
    const v1, 0x7ab4aae9

    .line 648
    .line 649
    .line 650
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 651
    .line 652
    .line 653
    const v1, -0x7f65a980

    .line 654
    .line 655
    .line 656
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 657
    .line 658
    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 659
    .line 660
    .line 661
    const v1, 0x6540fb84

    .line 662
    .line 663
    .line 664
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 665
    .line 666
    shr-int/lit8 v1, v14, 0x3

    .line 667
    .line 668
    and-int/lit8 v1, v1, 0xe

    .line 669
    .line 670
    .line 671
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 672
    move-result-object v1

    .line 673
    .line 674
    .line 675
    invoke-interface {v3, v0, v1}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 679
    .line 680
    .line 681
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 682
    .line 683
    .line 684
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 685
    .line 686
    .line 687
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->d()V

    .line 688
    .line 689
    .line 690
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 691
    .line 692
    .line 693
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 694
    .line 695
    .line 696
    :cond_1d
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 697
    const/4 v1, 0x1

    .line 698
    .line 699
    if-eqz v6, :cond_1e

    .line 700
    .line 701
    .line 702
    const v2, -0x1017caf9

    .line 703
    .line 704
    .line 705
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 706
    const/4 v2, 0x2

    .line 707
    .line 708
    new-array v2, v2, [Landroidx/compose/ui/unit/Dp;

    .line 709
    .line 710
    sget v8, Landroidx/compose/material/TwoLine;->OverlineBaselineOffset:F

    .line 711
    .line 712
    .line 713
    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 714
    move-result-object v8

    .line 715
    const/4 v9, 0x0

    .line 716
    .line 717
    aput-object v8, v2, v9

    .line 718
    .line 719
    sget v8, Landroidx/compose/material/TwoLine;->OverlineToPrimaryBaselineOffset:F

    .line 720
    .line 721
    .line 722
    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 723
    move-result-object v8

    .line 724
    .line 725
    aput-object v8, v2, v1

    .line 726
    .line 727
    .line 728
    invoke-static {v2}, Lkotlin/collections/t;->p([Ljava/lang/Object;)Ljava/util/List;

    .line 729
    move-result-object v9

    .line 730
    .line 731
    new-instance v2, Landroidx/compose/material/TwoLine$ListItem$1$2;

    .line 732
    .line 733
    .line 734
    invoke-direct {v2, v6, v14, v4}, Landroidx/compose/material/TwoLine$ListItem$1$2;-><init>(Le8/p;ILe8/p;)V

    .line 735
    .line 736
    .line 737
    const v8, -0x63d6cc81

    .line 738
    .line 739
    .line 740
    invoke-static {v0, v8, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 741
    move-result-object v11

    .line 742
    .line 743
    const/16 v2, 0x180

    .line 744
    const/4 v8, 0x0

    .line 745
    move-object v12, v0

    .line 746
    move v15, v13

    .line 747
    move v13, v2

    .line 748
    move v2, v14

    .line 749
    move v14, v8

    .line 750
    .line 751
    .line 752
    invoke-static/range {v9 .. v14}, Landroidx/compose/material/ListItemKt;->d(Ljava/util/List;Landroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/runtime/Composer;II)V

    .line 753
    .line 754
    .line 755
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 756
    goto :goto_17

    .line 757
    :cond_1e
    move v15, v13

    .line 758
    move v2, v14

    .line 759
    .line 760
    .line 761
    const v8, -0x1017c9e1

    .line 762
    .line 763
    .line 764
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 765
    const/4 v8, 0x2

    .line 766
    .line 767
    new-array v8, v8, [Landroidx/compose/ui/unit/Dp;

    .line 768
    .line 769
    if-eqz v3, :cond_1f

    .line 770
    .line 771
    sget v9, Landroidx/compose/material/TwoLine;->PrimaryBaselineOffsetWithIcon:F

    .line 772
    goto :goto_15

    .line 773
    .line 774
    :cond_1f
    sget v9, Landroidx/compose/material/TwoLine;->PrimaryBaselineOffsetNoIcon:F

    .line 775
    .line 776
    .line 777
    :goto_15
    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 778
    move-result-object v9

    .line 779
    const/4 v11, 0x0

    .line 780
    .line 781
    aput-object v9, v8, v11

    .line 782
    .line 783
    if-eqz v3, :cond_20

    .line 784
    .line 785
    sget v9, Landroidx/compose/material/TwoLine;->PrimaryToSecondaryBaselineOffsetWithIcon:F

    .line 786
    goto :goto_16

    .line 787
    .line 788
    :cond_20
    sget v9, Landroidx/compose/material/TwoLine;->PrimaryToSecondaryBaselineOffsetNoIcon:F

    .line 789
    .line 790
    .line 791
    :goto_16
    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 792
    move-result-object v9

    .line 793
    .line 794
    aput-object v9, v8, v1

    .line 795
    .line 796
    .line 797
    invoke-static {v8}, Lkotlin/collections/t;->p([Ljava/lang/Object;)Ljava/util/List;

    .line 798
    move-result-object v9

    .line 799
    .line 800
    new-instance v8, Landroidx/compose/material/TwoLine$ListItem$1$3;

    .line 801
    .line 802
    .line 803
    invoke-direct {v8, v4, v2, v5}, Landroidx/compose/material/TwoLine$ListItem$1$3;-><init>(Le8/p;ILe8/p;)V

    .line 804
    .line 805
    .line 806
    const v11, 0x3b3cbdc8

    .line 807
    .line 808
    .line 809
    invoke-static {v0, v11, v1, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 810
    move-result-object v11

    .line 811
    .line 812
    const/16 v13, 0x180

    .line 813
    const/4 v14, 0x0

    .line 814
    move-object v12, v0

    .line 815
    .line 816
    .line 817
    invoke-static/range {v9 .. v14}, Landroidx/compose/material/ListItemKt;->d(Ljava/util/List;Landroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/runtime/Composer;II)V

    .line 818
    .line 819
    .line 820
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 821
    .line 822
    :goto_17
    if-eqz v7, :cond_22

    .line 823
    .line 824
    if-eqz v3, :cond_21

    .line 825
    .line 826
    sget v8, Landroidx/compose/material/TwoLine;->PrimaryBaselineOffsetWithIcon:F

    .line 827
    :goto_18
    move v9, v8

    .line 828
    goto :goto_19

    .line 829
    .line 830
    :cond_21
    sget v8, Landroidx/compose/material/TwoLine;->PrimaryBaselineOffsetNoIcon:F

    .line 831
    goto :goto_18

    .line 832
    :goto_19
    const/4 v10, 0x0

    .line 833
    .line 834
    new-instance v8, Landroidx/compose/material/TwoLine$ListItem$1$4;

    .line 835
    .line 836
    .line 837
    invoke-direct {v8, v15, v7, v2}, Landroidx/compose/material/TwoLine$ListItem$1$4;-><init>(FLe8/p;I)V

    .line 838
    .line 839
    .line 840
    const v2, -0x65260bb0

    .line 841
    .line 842
    .line 843
    invoke-static {v0, v2, v1, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 844
    move-result-object v11

    .line 845
    .line 846
    const/16 v13, 0x180

    .line 847
    const/4 v14, 0x2

    .line 848
    move-object v12, v0

    .line 849
    .line 850
    .line 851
    invoke-static/range {v9 .. v14}, Landroidx/compose/material/ListItemKt;->e(FLandroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/runtime/Composer;II)V

    .line 852
    .line 853
    .line 854
    :cond_22
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 855
    .line 856
    .line 857
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 858
    .line 859
    .line 860
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 861
    .line 862
    .line 863
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->d()V

    .line 864
    .line 865
    .line 866
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 867
    .line 868
    .line 869
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 870
    .line 871
    move-object/from16 v2, v23

    .line 872
    .line 873
    .line 874
    :goto_1a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 875
    move-result-object v10

    .line 876
    .line 877
    if-nez v10, :cond_23

    .line 878
    goto :goto_1b

    .line 879
    .line 880
    :cond_23
    new-instance v11, Landroidx/compose/material/TwoLine$ListItem$2;

    .line 881
    move-object v0, v11

    .line 882
    .line 883
    move-object/from16 v1, p0

    .line 884
    .line 885
    move-object/from16 v3, p2

    .line 886
    .line 887
    move-object/from16 v4, p3

    .line 888
    .line 889
    move-object/from16 v5, p4

    .line 890
    .line 891
    move-object/from16 v6, p5

    .line 892
    .line 893
    move-object/from16 v7, p6

    .line 894
    .line 895
    move/from16 v8, p8

    .line 896
    .line 897
    move/from16 v9, p9

    .line 898
    .line 899
    .line 900
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material/TwoLine$ListItem$2;-><init>(Landroidx/compose/material/TwoLine;Landroidx/compose/ui/Modifier;Le8/p;Le8/p;Le8/p;Le8/p;Le8/p;II)V

    .line 901
    .line 902
    .line 903
    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 904
    :goto_1b
    return-void
.end method
