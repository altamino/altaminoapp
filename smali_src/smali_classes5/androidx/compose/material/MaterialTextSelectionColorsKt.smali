.class public final Landroidx/compose/material/MaterialTextSelectionColorsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMaterialTextSelectionColors.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MaterialTextSelectionColors.kt\nandroidx/compose/material/MaterialTextSelectionColorsKt\n+ 2 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,242:1\n666#2:243\n654#2:244\n76#3:245\n67#4,3:246\n66#4:249\n1057#5,6:250\n*S KotlinDebug\n*F\n+ 1 MaterialTextSelectionColors.kt\nandroidx/compose/material/MaterialTextSelectionColorsKt\n*L\n43#1:243\n43#1:244\n44#1:245\n48#1:246,3\n48#1:249\n48#1:250,6\n*E\n"
.end annotation


# static fields
.field private static final DefaultSelectionBackgroundAlpha:F = 0.4f

.field private static final DesiredContrastRatio:F = 4.5f

.field private static final MinimumSelectionBackgroundAlpha:F = 0.2f


# direct methods
.method private static final a(JJJ)F
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    const v1, 0x3e4ccccd    # 0.2f

    .line 5
    .line 6
    .line 7
    const v2, 0x3ecccccd    # 0.4f

    .line 8
    move v9, v2

    .line 9
    move v10, v9

    .line 10
    :goto_0
    const/4 v2, 0x7

    .line 11
    .line 12
    if-ge v0, v2, :cond_2

    .line 13
    move-wide v2, p0

    .line 14
    move v4, v9

    .line 15
    move-wide v5, p2

    .line 16
    move-wide v7, p4

    .line 17
    .line 18
    .line 19
    invoke-static/range {v2 .. v8}, Landroidx/compose/material/MaterialTextSelectionColorsKt;->c(JFJJ)F

    .line 20
    move-result v2

    .line 21
    .line 22
    const/high16 v3, 0x40900000    # 4.5f

    .line 23
    div-float/2addr v2, v3

    .line 24
    .line 25
    const/high16 v3, 0x3f800000    # 1.0f

    .line 26
    sub-float/2addr v2, v3

    .line 27
    const/4 v3, 0x0

    .line 28
    .line 29
    cmpg-float v4, v3, v2

    .line 30
    .line 31
    if-gtz v4, :cond_0

    .line 32
    .line 33
    .line 34
    const v4, 0x3c23d70a    # 0.01f

    .line 35
    .line 36
    cmpg-float v4, v2, v4

    .line 37
    .line 38
    if-gtz v4, :cond_0

    .line 39
    goto :goto_2

    .line 40
    .line 41
    :cond_0
    cmpg-float v2, v2, v3

    .line 42
    .line 43
    if-gez v2, :cond_1

    .line 44
    move v10, v9

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move v1, v9

    .line 47
    .line 48
    :goto_1
    add-float v2, v10, v1

    .line 49
    .line 50
    const/high16 v3, 0x40000000    # 2.0f

    .line 51
    .line 52
    div-float v9, v2, v3

    .line 53
    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    :goto_2
    return v9
.end method

.method public static final b(JJ)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/ColorKt;->j(J)F

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    const p1, 0x3d4ccccd    # 0.05f

    .line 8
    add-float/2addr p0, p1

    .line 9
    .line 10
    .line 11
    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/ColorKt;->j(J)F

    .line 12
    move-result p2

    .line 13
    add-float/2addr p2, p1

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    .line 17
    move-result p1

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    .line 21
    move-result p0

    .line 22
    div-float/2addr p1, p0

    .line 23
    return p1
.end method

.method private static final c(JFJJ)F
    .locals 8

    .line 1
    const/4 v3, 0x0

    .line 2
    const/4 v4, 0x0

    .line 3
    const/4 v5, 0x0

    .line 4
    .line 5
    const/16 v6, 0xe

    .line 6
    const/4 v7, 0x0

    .line 7
    move-wide v0, p0

    .line 8
    move v2, p2

    .line 9
    .line 10
    .line 11
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 12
    move-result-wide p0

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p1, p5, p6}, Landroidx/compose/ui/graphics/ColorKt;->g(JJ)J

    .line 16
    move-result-wide p0

    .line 17
    .line 18
    .line 19
    invoke-static {p3, p4, p0, p1}, Landroidx/compose/ui/graphics/ColorKt;->g(JJ)J

    .line 20
    move-result-wide p2

    .line 21
    .line 22
    .line 23
    invoke-static {p2, p3, p0, p1}, Landroidx/compose/material/MaterialTextSelectionColorsKt;->b(JJ)F

    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public static final d(JJJ)J
    .locals 8

    .line 1
    .line 2
    .line 3
    const v2, 0x3ecccccd    # 0.4f

    .line 4
    move-wide v0, p0

    .line 5
    move-wide v3, p2

    .line 6
    move-wide v5, p4

    .line 7
    .line 8
    .line 9
    invoke-static/range {v0 .. v6}, Landroidx/compose/material/MaterialTextSelectionColorsKt;->c(JFJJ)F

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    const v3, 0x3e4ccccd    # 0.2f

    .line 14
    move-wide v1, p0

    .line 15
    move-wide v4, p2

    .line 16
    move-wide v6, p4

    .line 17
    .line 18
    .line 19
    invoke-static/range {v1 .. v7}, Landroidx/compose/material/MaterialTextSelectionColorsKt;->c(JFJJ)F

    .line 20
    move-result v1

    .line 21
    .line 22
    const/high16 v2, 0x40900000    # 4.5f

    .line 23
    .line 24
    cmpl-float v0, v0, v2

    .line 25
    .line 26
    if-ltz v0, :cond_0

    .line 27
    .line 28
    .line 29
    const p2, 0x3ecccccd    # 0.4f

    .line 30
    :goto_0
    move v2, p2

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_0
    cmpg-float v0, v1, v2

    .line 34
    .line 35
    if-gez v0, :cond_1

    .line 36
    .line 37
    .line 38
    const p2, 0x3e4ccccd    # 0.2f

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/MaterialTextSelectionColorsKt;->a(JJJ)F

    .line 43
    move-result p2

    .line 44
    goto :goto_0

    .line 45
    :goto_1
    const/4 v3, 0x0

    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x0

    .line 48
    .line 49
    const/16 v6, 0xe

    .line 50
    const/4 v7, 0x0

    .line 51
    move-wide v0, p0

    .line 52
    .line 53
    .line 54
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 55
    move-result-wide p0

    .line 56
    return-wide p0
.end method

.method public static final e(Landroidx/compose/material/Colors;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/text/selection/TextSelectionColors;
    .locals 17
    .param p0    # Landroidx/compose/material/Colors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    const-string v2, "colors"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v2, -0x2b0437ad

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material/Colors;->j()J

    .line 19
    move-result-wide v3

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material/Colors;->c()J

    .line 23
    move-result-wide v7

    .line 24
    .line 25
    .line 26
    const v2, 0x21eccae

    .line 27
    .line 28
    .line 29
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v7, v8}, Landroidx/compose/material/ColorsKt;->a(Landroidx/compose/material/Colors;J)J

    .line 33
    move-result-wide v5

    .line 34
    .line 35
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->f()J

    .line 39
    move-result-wide v9

    .line 40
    .line 41
    cmp-long v2, v5, v9

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    :goto_0
    move-wide v9, v5

    .line 45
    goto :goto_1

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    .line 52
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 59
    move-result-wide v5

    .line 60
    goto :goto_0

    .line 61
    .line 62
    .line 63
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 64
    .line 65
    sget-object v2, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 66
    const/4 v5, 0x6

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v1, v5}, Landroidx/compose/material/ContentAlpha;->d(Landroidx/compose/runtime/Composer;I)F

    .line 70
    move-result v11

    .line 71
    const/4 v12, 0x0

    .line 72
    const/4 v13, 0x0

    .line 73
    const/4 v14, 0x0

    .line 74
    .line 75
    const/16 v15, 0xe

    .line 76
    .line 77
    const/16 v16, 0x0

    .line 78
    .line 79
    .line 80
    invoke-static/range {v9 .. v16}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 81
    move-result-wide v5

    .line 82
    .line 83
    .line 84
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 85
    move-result-object v2

    .line 86
    .line 87
    .line 88
    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 89
    move-result-object v9

    .line 90
    .line 91
    .line 92
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 93
    move-result-object v10

    .line 94
    .line 95
    .line 96
    const v11, 0x607fb4c4

    .line 97
    .line 98
    .line 99
    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 103
    move-result v2

    .line 104
    .line 105
    .line 106
    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 107
    move-result v9

    .line 108
    or-int/2addr v2, v9

    .line 109
    .line 110
    .line 111
    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 112
    move-result v9

    .line 113
    or-int/2addr v2, v9

    .line 114
    .line 115
    .line 116
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 117
    move-result-object v9

    .line 118
    .line 119
    if-nez v2, :cond_1

    .line 120
    .line 121
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 125
    move-result-object v2

    .line 126
    .line 127
    if-ne v9, v2, :cond_2

    .line 128
    .line 129
    :cond_1
    new-instance v9, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 130
    .line 131
    .line 132
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material/Colors;->j()J

    .line 133
    move-result-wide v11

    .line 134
    .line 135
    .line 136
    invoke-static/range {v3 .. v8}, Landroidx/compose/material/MaterialTextSelectionColorsKt;->d(JJJ)J

    .line 137
    move-result-wide v13

    .line 138
    const/4 v15, 0x0

    .line 139
    move-object v10, v9

    .line 140
    .line 141
    .line 142
    invoke-direct/range {v10 .. v15}, Landroidx/compose/foundation/text/selection/TextSelectionColors;-><init>(JJLkotlin/jvm/internal/k;)V

    .line 143
    .line 144
    .line 145
    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 149
    .line 150
    check-cast v9, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 151
    .line 152
    .line 153
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 154
    return-object v9
.end method
