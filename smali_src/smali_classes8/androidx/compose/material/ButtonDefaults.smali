.class public final Landroidx/compose/material/ButtonDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Button.kt\nandroidx/compose/material/ButtonDefaults\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,615:1\n155#2:616\n155#2:617\n155#2:618\n155#2:619\n155#2:620\n155#2:621\n155#2:622\n155#2:623\n155#2:624\n155#2:625\n155#2:635\n155#2:636\n155#2:637\n155#2:638\n155#2:639\n155#2:640\n155#2:641\n155#2:642\n83#3,3:626\n1057#4,6:629\n*S KotlinDebug\n*F\n+ 1 Button.kt\nandroidx/compose/material/ButtonDefaults\n*L\n344#1:616\n345#1:617\n346#1:618\n351#1:619\n352#1:620\n370#1:621\n371#1:622\n372#1:623\n373#1:624\n374#1:625\n292#1:635\n293#1:636\n309#1:637\n315#1:638\n322#1:639\n329#1:640\n467#1:641\n478#1:642\n376#1:626,3\n376#1:629,6\n*E\n"
.end annotation


# static fields
.field public static final $stable:I = 0x0

.field private static final ButtonHorizontalPadding:F

.field private static final ButtonVerticalPadding:F

.field private static final ContentPadding:Landroidx/compose/foundation/layout/PaddingValues;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Landroidx/compose/material/ButtonDefaults;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final IconSize:F

.field private static final IconSpacing:F

.field private static final MinHeight:F

.field private static final MinWidth:F

.field public static final OutlinedBorderOpacity:F = 0.12f

.field private static final OutlinedBorderSize:F

.field private static final TextButtonContentPadding:Landroidx/compose/foundation/layout/PaddingValues;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TextButtonHorizontalPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/material/ButtonDefaults;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/compose/material/ButtonDefaults;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/compose/material/ButtonDefaults;->INSTANCE:Landroidx/compose/material/ButtonDefaults;

    .line 8
    .line 9
    const/16 v0, 0x10

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
    sput v0, Landroidx/compose/material/ButtonDefaults;->ButtonHorizontalPadding:F

    .line 17
    .line 18
    const/16 v1, 0x8

    .line 19
    int-to-float v1, v1

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 23
    move-result v2

    .line 24
    .line 25
    sput v2, Landroidx/compose/material/ButtonDefaults;->ButtonVerticalPadding:F

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v2, v0, v2}, Landroidx/compose/foundation/layout/PaddingKt;->d(FFFF)Landroidx/compose/foundation/layout/PaddingValues;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    sput-object v0, Landroidx/compose/material/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 32
    .line 33
    const/16 v2, 0x40

    .line 34
    int-to-float v2, v2

    .line 35
    .line 36
    .line 37
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 38
    move-result v2

    .line 39
    .line 40
    sput v2, Landroidx/compose/material/ButtonDefaults;->MinWidth:F

    .line 41
    .line 42
    const/16 v2, 0x24

    .line 43
    int-to-float v2, v2

    .line 44
    .line 45
    .line 46
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 47
    move-result v2

    .line 48
    .line 49
    sput v2, Landroidx/compose/material/ButtonDefaults;->MinHeight:F

    .line 50
    .line 51
    const/16 v2, 0x12

    .line 52
    int-to-float v2, v2

    .line 53
    .line 54
    .line 55
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 56
    move-result v2

    .line 57
    .line 58
    sput v2, Landroidx/compose/material/ButtonDefaults;->IconSize:F

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 62
    move-result v2

    .line 63
    .line 64
    sput v2, Landroidx/compose/material/ButtonDefaults;->IconSpacing:F

    .line 65
    const/4 v2, 0x1

    .line 66
    int-to-float v2, v2

    .line 67
    .line 68
    .line 69
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 70
    move-result v2

    .line 71
    .line 72
    sput v2, Landroidx/compose/material/ButtonDefaults;->OutlinedBorderSize:F

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 76
    move-result v1

    .line 77
    .line 78
    sput v1, Landroidx/compose/material/ButtonDefaults;->TextButtonHorizontalPadding:F

    .line 79
    .line 80
    .line 81
    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    .line 82
    move-result v2

    .line 83
    .line 84
    .line 85
    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    .line 86
    move-result v0

    .line 87
    .line 88
    .line 89
    invoke-static {v1, v2, v1, v0}, Landroidx/compose/foundation/layout/PaddingKt;->d(FFFF)Landroidx/compose/foundation/layout/PaddingValues;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    sput-object v0, Landroidx/compose/material/ButtonDefaults;->TextButtonContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 93
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
.method public final a(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/ButtonColors;
    .locals 18
    .param p9    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p9

    .line 3
    .line 4
    .line 5
    const v1, 0x6f7b993e

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 9
    .line 10
    and-int/lit8 v1, p11, 0x1

    .line 11
    const/4 v2, 0x6

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->j()J

    .line 23
    move-result-wide v3

    .line 24
    move-wide v6, v3

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    move-wide/from16 v6, p1

    .line 28
    .line 29
    :goto_0
    and-int/lit8 v1, p11, 0x2

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    and-int/lit8 v1, p10, 0xe

    .line 34
    .line 35
    .line 36
    invoke-static {v6, v7, v0, v1}, Landroidx/compose/material/ColorsKt;->b(JLandroidx/compose/runtime/Composer;I)J

    .line 37
    move-result-wide v3

    .line 38
    move-wide v8, v3

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_1
    move-wide/from16 v8, p3

    .line 42
    .line 43
    :goto_1
    and-int/lit8 v1, p11, 0x4

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Landroidx/compose/material/Colors;->i()J

    .line 55
    move-result-wide v10

    .line 56
    .line 57
    .line 58
    const v12, 0x3df5c28f    # 0.12f

    .line 59
    const/4 v13, 0x0

    .line 60
    const/4 v14, 0x0

    .line 61
    const/4 v15, 0x0

    .line 62
    .line 63
    const/16 v16, 0xe

    .line 64
    .line 65
    const/16 v17, 0x0

    .line 66
    .line 67
    .line 68
    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 69
    move-result-wide v3

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->n()J

    .line 77
    move-result-wide v10

    .line 78
    .line 79
    .line 80
    invoke-static {v3, v4, v10, v11}, Landroidx/compose/ui/graphics/ColorKt;->g(JJ)J

    .line 81
    move-result-wide v3

    .line 82
    move-wide v10, v3

    .line 83
    goto :goto_2

    .line 84
    .line 85
    :cond_2
    move-wide/from16 v10, p5

    .line 86
    .line 87
    :goto_2
    and-int/lit8 v1, p11, 0x8

    .line 88
    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 95
    move-result-object v1

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->i()J

    .line 99
    move-result-wide v3

    .line 100
    .line 101
    sget-object v1, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/ContentAlpha;->b(Landroidx/compose/runtime/Composer;I)F

    .line 105
    move-result v1

    .line 106
    const/4 v2, 0x0

    .line 107
    const/4 v5, 0x0

    .line 108
    const/4 v12, 0x0

    .line 109
    .line 110
    const/16 v13, 0xe

    .line 111
    const/4 v14, 0x0

    .line 112
    .line 113
    move-wide/from16 p1, v3

    .line 114
    .line 115
    move/from16 p3, v1

    .line 116
    .line 117
    move/from16 p4, v2

    .line 118
    .line 119
    move/from16 p5, v5

    .line 120
    .line 121
    move/from16 p6, v12

    .line 122
    .line 123
    move/from16 p7, v13

    .line 124
    .line 125
    move-object/from16 p8, v14

    .line 126
    .line 127
    .line 128
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 129
    move-result-wide v1

    .line 130
    move-wide v12, v1

    .line 131
    goto :goto_3

    .line 132
    .line 133
    :cond_3
    move-wide/from16 v12, p7

    .line 134
    .line 135
    :goto_3
    new-instance v1, Landroidx/compose/material/DefaultButtonColors;

    .line 136
    const/4 v14, 0x0

    .line 137
    move-object v5, v1

    .line 138
    .line 139
    .line 140
    invoke-direct/range {v5 .. v14}, Landroidx/compose/material/DefaultButtonColors;-><init>(JJJJLkotlin/jvm/internal/k;)V

    .line 141
    .line 142
    .line 143
    invoke-interface/range {p9 .. p9}, Landroidx/compose/runtime/Composer;->Q()V

    .line 144
    return-object v1
.end method

.method public final b(FFFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/ButtonElevation;
    .locals 13
    .param p6    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p6

    .line 3
    .line 4
    .line 5
    const v1, -0x2bf05456

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 9
    .line 10
    and-int/lit8 v1, p8, 0x1

    .line 11
    const/4 v2, 0x2

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    int-to-float v1, v2

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 18
    move-result v1

    .line 19
    move v4, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v4, p1

    .line 22
    .line 23
    :goto_0
    and-int/lit8 v1, p8, 0x2

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const/16 v1, 0x8

    .line 28
    int-to-float v1, v1

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 32
    move-result v1

    .line 33
    move v5, v1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v5, p2

    .line 36
    .line 37
    :goto_1
    and-int/lit8 v1, p8, 0x4

    .line 38
    const/4 v3, 0x0

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    int-to-float v1, v3

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 45
    move-result v1

    .line 46
    move v6, v1

    .line 47
    goto :goto_2

    .line 48
    .line 49
    :cond_2
    move/from16 v6, p3

    .line 50
    .line 51
    :goto_2
    and-int/lit8 v1, p8, 0x8

    .line 52
    const/4 v7, 0x4

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    int-to-float v1, v7

    .line 56
    .line 57
    .line 58
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 59
    move-result v1

    .line 60
    goto :goto_3

    .line 61
    .line 62
    :cond_3
    move/from16 v1, p4

    .line 63
    .line 64
    :goto_3
    and-int/lit8 v8, p8, 0x10

    .line 65
    .line 66
    if-eqz v8, :cond_4

    .line 67
    int-to-float v8, v7

    .line 68
    .line 69
    .line 70
    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 71
    move-result v8

    .line 72
    goto :goto_4

    .line 73
    .line 74
    :cond_4
    move/from16 v8, p5

    .line 75
    :goto_4
    const/4 v9, 0x5

    .line 76
    .line 77
    new-array v10, v9, [Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 81
    move-result-object v11

    .line 82
    .line 83
    aput-object v11, v10, v3

    .line 84
    .line 85
    .line 86
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 87
    move-result-object v11

    .line 88
    const/4 v12, 0x1

    .line 89
    .line 90
    aput-object v11, v10, v12

    .line 91
    .line 92
    .line 93
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 94
    move-result-object v11

    .line 95
    .line 96
    aput-object v11, v10, v2

    .line 97
    const/4 v2, 0x3

    .line 98
    .line 99
    .line 100
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 101
    move-result-object v11

    .line 102
    .line 103
    aput-object v11, v10, v2

    .line 104
    .line 105
    .line 106
    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 107
    move-result-object v2

    .line 108
    .line 109
    aput-object v2, v10, v7

    .line 110
    .line 111
    .line 112
    const v2, -0x21de6e89

    .line 113
    .line 114
    .line 115
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 116
    move v2, v3

    .line 117
    .line 118
    :goto_5
    if-ge v3, v9, :cond_5

    .line 119
    .line 120
    aget-object v7, v10, v3

    .line 121
    .line 122
    .line 123
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 124
    move-result v7

    .line 125
    or-int/2addr v2, v7

    .line 126
    .line 127
    add-int/lit8 v3, v3, 0x1

    .line 128
    goto :goto_5

    .line 129
    .line 130
    .line 131
    :cond_5
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 132
    move-result-object v3

    .line 133
    .line 134
    if-nez v2, :cond_6

    .line 135
    .line 136
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 140
    move-result-object v2

    .line 141
    .line 142
    if-ne v3, v2, :cond_7

    .line 143
    .line 144
    :cond_6
    new-instance v2, Landroidx/compose/material/DefaultButtonElevation;

    .line 145
    const/4 v9, 0x0

    .line 146
    move-object v3, v2

    .line 147
    move v7, v1

    .line 148
    .line 149
    .line 150
    invoke-direct/range {v3 .. v9}, Landroidx/compose/material/DefaultButtonElevation;-><init>(FFFFFLkotlin/jvm/internal/k;)V

    .line 151
    .line 152
    .line 153
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    :cond_7
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->Q()V

    .line 157
    .line 158
    check-cast v3, Landroidx/compose/material/DefaultButtonElevation;

    .line 159
    .line 160
    .line 161
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->Q()V

    .line 162
    return-object v3
.end method

.method public final c()Landroidx/compose/foundation/layout/PaddingValues;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/material/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    return-object v0
.end method

.method public final d()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/ButtonDefaults;->MinHeight:F

    return v0
.end method

.method public final e()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/ButtonDefaults;->MinWidth:F

    return v0
.end method

.method public final f(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/BorderStroke;
    .locals 9
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p2, -0x7ca6e789

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    sget p2, Landroidx/compose/material/ButtonDefaults;->OutlinedBorderSize:F

    .line 9
    .line 10
    sget-object v0, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 11
    const/4 v1, 0x6

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, v1}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/material/Colors;->i()J

    .line 19
    move-result-wide v1

    .line 20
    .line 21
    .line 22
    const v3, 0x3df5c28f    # 0.12f

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    .line 27
    const/16 v7, 0xe

    .line 28
    const/4 v8, 0x0

    .line 29
    .line 30
    .line 31
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 32
    move-result-wide v0

    .line 33
    .line 34
    .line 35
    invoke-static {p2, v0, v1}, Landroidx/compose/foundation/BorderStrokeKt;->a(FJ)Landroidx/compose/foundation/BorderStroke;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 40
    return-object p2
.end method

.method public final g()Landroidx/compose/foundation/layout/PaddingValues;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/material/ButtonDefaults;->TextButtonContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    return-object v0
.end method

.method public final h(JJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/ButtonColors;
    .locals 20
    .param p7    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p7

    .line 3
    .line 4
    .line 5
    const v1, -0x7e9fdd4d

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 9
    .line 10
    and-int/lit8 v1, p9, 0x1

    .line 11
    const/4 v2, 0x6

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->n()J

    .line 23
    move-result-wide v3

    .line 24
    move-wide v10, v3

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    move-wide/from16 v10, p1

    .line 28
    .line 29
    :goto_0
    and-int/lit8 v1, p9, 0x2

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->j()J

    .line 41
    move-result-wide v3

    .line 42
    move-wide v8, v3

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_1
    move-wide/from16 v8, p3

    .line 46
    .line 47
    :goto_1
    and-int/lit8 v1, p9, 0x4

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->i()J

    .line 59
    move-result-wide v12

    .line 60
    .line 61
    sget-object v1, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/ContentAlpha;->b(Landroidx/compose/runtime/Composer;I)F

    .line 65
    move-result v14

    .line 66
    const/4 v15, 0x0

    .line 67
    .line 68
    const/16 v16, 0x0

    .line 69
    .line 70
    const/16 v17, 0x0

    .line 71
    .line 72
    const/16 v18, 0xe

    .line 73
    .line 74
    const/16 v19, 0x0

    .line 75
    .line 76
    .line 77
    invoke-static/range {v12 .. v19}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 78
    move-result-wide v1

    .line 79
    move-wide v12, v1

    .line 80
    goto :goto_2

    .line 81
    .line 82
    :cond_2
    move-wide/from16 v12, p5

    .line 83
    .line 84
    :goto_2
    new-instance v1, Landroidx/compose/material/DefaultButtonColors;

    .line 85
    const/4 v14, 0x0

    .line 86
    move-object v5, v1

    .line 87
    move-wide v6, v10

    .line 88
    .line 89
    .line 90
    invoke-direct/range {v5 .. v14}, Landroidx/compose/material/DefaultButtonColors;-><init>(JJJJLkotlin/jvm/internal/k;)V

    .line 91
    .line 92
    .line 93
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->Q()V

    .line 94
    return-object v1
.end method

.method public final i(JJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/ButtonColors;
    .locals 18
    .param p7    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p7

    .line 3
    .line 4
    .line 5
    const v1, 0xae46cc8

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 9
    .line 10
    and-int/lit8 v1, p9, 0x1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->e()J

    .line 18
    move-result-wide v1

    .line 19
    move-wide v8, v1

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    move-wide/from16 v8, p1

    .line 23
    .line 24
    :goto_0
    and-int/lit8 v1, p9, 0x2

    .line 25
    const/4 v2, 0x6

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->j()J

    .line 37
    move-result-wide v3

    .line 38
    move-wide v6, v3

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_1
    move-wide/from16 v6, p3

    .line 42
    .line 43
    :goto_1
    and-int/lit8 v1, p9, 0x4

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->i()J

    .line 55
    move-result-wide v10

    .line 56
    .line 57
    sget-object v1, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/ContentAlpha;->b(Landroidx/compose/runtime/Composer;I)F

    .line 61
    move-result v12

    .line 62
    const/4 v13, 0x0

    .line 63
    const/4 v14, 0x0

    .line 64
    const/4 v15, 0x0

    .line 65
    .line 66
    const/16 v16, 0xe

    .line 67
    .line 68
    const/16 v17, 0x0

    .line 69
    .line 70
    .line 71
    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 72
    move-result-wide v1

    .line 73
    move-wide v10, v1

    .line 74
    goto :goto_2

    .line 75
    .line 76
    :cond_2
    move-wide/from16 v10, p5

    .line 77
    .line 78
    :goto_2
    new-instance v1, Landroidx/compose/material/DefaultButtonColors;

    .line 79
    const/4 v12, 0x0

    .line 80
    move-object v3, v1

    .line 81
    move-wide v4, v8

    .line 82
    .line 83
    .line 84
    invoke-direct/range {v3 .. v12}, Landroidx/compose/material/DefaultButtonColors;-><init>(JJJJLkotlin/jvm/internal/k;)V

    .line 85
    .line 86
    .line 87
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->Q()V

    .line 88
    return-object v1
.end method
