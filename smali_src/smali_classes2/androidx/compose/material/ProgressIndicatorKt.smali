.class public final Landroidx/compose/material/ProgressIndicatorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProgressIndicator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProgressIndicator.kt\nandroidx/compose/material/ProgressIndicatorKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 6 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 7 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,475:1\n67#2,3:476\n66#2:479\n83#2,3:486\n1057#3,6:480\n1057#3,6:489\n76#4:495\n76#4:496\n76#5,7:497\n76#6:504\n76#6:505\n76#6:506\n76#6:507\n76#6:508\n76#6:509\n76#6:510\n76#6:511\n155#7:512\n155#7:513\n*S KotlinDebug\n*F\n+ 1 ProgressIndicator.kt\nandroidx/compose/material/ProgressIndicatorKt\n*L\n82#1:476,3\n82#1:479\n158#1:486,3\n82#1:480,6\n158#1:489,6\n230#1:495\n261#1:496\n401#1:497,7\n110#1:504\n121#1:505\n132#1:506\n143#1:507\n267#1:508\n279#1:509\n290#1:510\n302#1:511\n418#1:512\n422#1:513\n*E\n"
.end annotation


# static fields
.field private static final BaseRotationAngle:F = 286.0f

.field private static final CircularEasing:Landroidx/compose/animation/core/CubicBezierEasing;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CircularIndicatorDiameter:F

.field private static final FirstLineHeadDelay:I = 0x0

.field private static final FirstLineHeadDuration:I = 0x2ee

.field private static final FirstLineHeadEasing:Landroidx/compose/animation/core/CubicBezierEasing;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FirstLineTailDelay:I = 0x14d

.field private static final FirstLineTailDuration:I = 0x352

.field private static final FirstLineTailEasing:Landroidx/compose/animation/core/CubicBezierEasing;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final HeadAndTailAnimationDuration:I = 0x29a

.field private static final HeadAndTailDelayDuration:I = 0x29a

.field private static final JumpRotationAngle:F = 290.0f

.field private static final LinearAnimationDuration:I = 0x708

.field private static final LinearIndicatorHeight:F

.field private static final LinearIndicatorWidth:F

.field private static final RotationAngleOffset:F = 216.0f

.field private static final RotationDuration:I = 0x534

.field private static final RotationsPerCycle:I = 0x5

.field private static final SecondLineHeadDelay:I = 0x3e8

.field private static final SecondLineHeadDuration:I = 0x237

.field private static final SecondLineHeadEasing:Landroidx/compose/animation/core/CubicBezierEasing;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SecondLineTailDelay:I = 0x4f3

.field private static final SecondLineTailDuration:I = 0x215

.field private static final SecondLineTailEasing:Landroidx/compose/animation/core/CubicBezierEasing;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final StartAngleOffset:F = -90.0f


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/material/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material/ProgressIndicatorDefaults;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/material/ProgressIndicatorDefaults;->a()F

    .line 6
    move-result v0

    .line 7
    .line 8
    sput v0, Landroidx/compose/material/ProgressIndicatorKt;->LinearIndicatorHeight:F

    .line 9
    .line 10
    const/16 v0, 0xf0

    .line 11
    int-to-float v0, v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 15
    move-result v0

    .line 16
    .line 17
    sput v0, Landroidx/compose/material/ProgressIndicatorKt;->LinearIndicatorWidth:F

    .line 18
    .line 19
    const/16 v0, 0x28

    .line 20
    int-to-float v0, v0

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 24
    move-result v0

    .line 25
    .line 26
    sput v0, Landroidx/compose/material/ProgressIndicatorKt;->CircularIndicatorDiameter:F

    .line 27
    .line 28
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 29
    .line 30
    .line 31
    const v1, 0x3e4ccccd    # 0.2f

    .line 32
    const/4 v2, 0x0

    .line 33
    .line 34
    .line 35
    const v3, 0x3f4ccccd    # 0.8f

    .line 36
    .line 37
    const/high16 v4, 0x3f800000    # 1.0f

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    .line 41
    .line 42
    sput-object v0, Landroidx/compose/material/ProgressIndicatorKt;->FirstLineHeadEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 43
    .line 44
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 45
    .line 46
    .line 47
    const v3, 0x3ecccccd    # 0.4f

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v3, v2, v4, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    .line 51
    .line 52
    sput-object v0, Landroidx/compose/material/ProgressIndicatorKt;->FirstLineTailEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 53
    .line 54
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 55
    .line 56
    .line 57
    const v5, 0x3f266666    # 0.65f

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, v2, v2, v5, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    .line 61
    .line 62
    sput-object v0, Landroidx/compose/material/ProgressIndicatorKt;->SecondLineHeadEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 63
    .line 64
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 65
    .line 66
    .line 67
    const v5, 0x3dcccccd    # 0.1f

    .line 68
    .line 69
    .line 70
    const v6, 0x3ee66666    # 0.45f

    .line 71
    .line 72
    .line 73
    invoke-direct {v0, v5, v2, v6, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    .line 74
    .line 75
    sput-object v0, Landroidx/compose/material/ProgressIndicatorKt;->SecondLineTailEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 76
    .line 77
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, v3, v2, v1, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    .line 81
    .line 82
    sput-object v0, Landroidx/compose/material/ProgressIndicatorKt;->CircularEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 83
    return-void
.end method

.method public static final synthetic A()Landroidx/compose/animation/core/CubicBezierEasing;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/ProgressIndicatorKt;->FirstLineTailEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    return-object v0
.end method

.method public static final synthetic B()Landroidx/compose/animation/core/CubicBezierEasing;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/ProgressIndicatorKt;->SecondLineHeadEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    return-object v0
.end method

.method public static final synthetic C()Landroidx/compose/animation/core/CubicBezierEasing;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/ProgressIndicatorKt;->SecondLineTailEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    return-object v0
.end method

.method private static final D(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 19

    .line 1
    .line 2
    .line 3
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/ui/graphics/drawscope/Stroke;->f()F

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    int-to-float v1, v1

    .line 7
    div-float/2addr v0, v1

    .line 8
    .line 9
    .line 10
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 11
    move-result-wide v2

    .line 12
    .line 13
    .line 14
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 15
    move-result v2

    .line 16
    mul-float/2addr v1, v0

    .line 17
    sub-float/2addr v2, v1

    .line 18
    const/4 v8, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v0}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 22
    move-result-wide v9

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v2}, Landroidx/compose/ui/geometry/SizeKt;->a(FF)J

    .line 26
    move-result-wide v11

    .line 27
    const/4 v13, 0x0

    .line 28
    const/4 v15, 0x0

    .line 29
    .line 30
    const/16 v16, 0x0

    .line 31
    .line 32
    const/16 v17, 0x340

    .line 33
    .line 34
    const/16 v18, 0x0

    .line 35
    .line 36
    move-object/from16 v3, p0

    .line 37
    .line 38
    move-wide/from16 v4, p3

    .line 39
    .line 40
    move/from16 v6, p1

    .line 41
    .line 42
    move/from16 v7, p2

    .line 43
    .line 44
    move-object/from16 v14, p5

    .line 45
    .line 46
    .line 47
    invoke-static/range {v3 .. v18}, Landroidx/compose/ui/graphics/drawscope/a;->d(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 48
    return-void
.end method

.method private static final E(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/ProgressIndicatorKt;->D(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    .line 4
    return-void
.end method

.method private static final F(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 6

    .line 1
    .line 2
    sget v0, Landroidx/compose/material/ProgressIndicatorKt;->CircularIndicatorDiameter:F

    .line 3
    const/4 v1, 0x2

    .line 4
    int-to-float v1, v1

    .line 5
    div-float/2addr v0, v1

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 9
    move-result v0

    .line 10
    div-float/2addr p2, v0

    .line 11
    .line 12
    .line 13
    const v0, 0x42652ee1

    .line 14
    mul-float/2addr p2, v0

    .line 15
    .line 16
    const/high16 v0, 0x40000000    # 2.0f

    .line 17
    div-float/2addr p2, v0

    .line 18
    .line 19
    add-float v1, p1, p2

    .line 20
    .line 21
    .line 22
    const p1, 0x3dcccccd    # 0.1f

    .line 23
    .line 24
    .line 25
    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    .line 26
    move-result v2

    .line 27
    move-object v0, p0

    .line 28
    move-wide v3, p4

    .line 29
    move-object v5, p6

    .line 30
    .line 31
    .line 32
    invoke-static/range {v0 .. v5}, Landroidx/compose/material/ProgressIndicatorKt;->D(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    .line 33
    return-void
.end method

.method private static final G(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJF)V
    .locals 20

    .line 1
    .line 2
    .line 3
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 12
    move-result-wide v1

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x2

    .line 18
    int-to-float v2, v2

    .line 19
    div-float/2addr v1, v2

    .line 20
    .line 21
    .line 22
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 26
    .line 27
    if-ne v2, v3, :cond_0

    .line 28
    const/4 v2, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v2, 0x0

    .line 31
    .line 32
    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    move/from16 v4, p1

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_1
    sub-float v4, v3, p2

    .line 40
    :goto_1
    mul-float/2addr v4, v0

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    move/from16 v2, p2

    .line 45
    goto :goto_2

    .line 46
    .line 47
    :cond_2
    sub-float v2, v3, p1

    .line 48
    :goto_2
    mul-float/2addr v2, v0

    .line 49
    .line 50
    .line 51
    invoke-static {v4, v1}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 52
    move-result-wide v8

    .line 53
    .line 54
    .line 55
    invoke-static {v2, v1}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 56
    move-result-wide v10

    .line 57
    const/4 v13, 0x0

    .line 58
    const/4 v14, 0x0

    .line 59
    const/4 v15, 0x0

    .line 60
    .line 61
    const/16 v16, 0x0

    .line 62
    .line 63
    const/16 v17, 0x0

    .line 64
    .line 65
    const/16 v18, 0x1f0

    .line 66
    .line 67
    const/16 v19, 0x0

    .line 68
    .line 69
    move-object/from16 v5, p0

    .line 70
    .line 71
    move-wide/from16 v6, p3

    .line 72
    .line 73
    move/from16 v12, p5

    .line 74
    .line 75
    .line 76
    invoke-static/range {v5 .. v19}, Landroidx/compose/ui/graphics/drawscope/a;->i(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 77
    return-void
.end method

.method private static final H(Landroidx/compose/ui/graphics/drawscope/DrawScope;JF)V
    .locals 6

    .line 1
    const/4 v1, 0x0

    .line 2
    .line 3
    const/high16 v2, 0x3f800000    # 1.0f

    .line 4
    move-object v0, p0

    .line 5
    move-wide v3, p1

    .line 6
    move v5, p3

    .line 7
    .line 8
    .line 9
    invoke-static/range {v0 .. v5}, Landroidx/compose/material/ProgressIndicatorKt;->G(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJF)V

    .line 10
    return-void
.end method

.method public static final a(FLandroidx/compose/ui/Modifier;JFLandroidx/compose/runtime/Composer;II)V
    .locals 21
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .line 1
    .line 2
    move/from16 v6, p0

    .line 3
    .line 4
    move/from16 v7, p6

    .line 5
    .line 6
    .line 7
    const v0, -0x186ac24b

    .line 8
    .line 9
    move-object/from16 v1, p5

    .line 10
    .line 11
    .line 12
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 13
    move-result-object v8

    .line 14
    .line 15
    and-int/lit8 v0, p7, 0x1

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    or-int/lit8 v0, v7, 0x6

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_0
    and-int/lit8 v0, v7, 0xe

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    const/4 v0, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x2

    .line 34
    :goto_0
    or-int/2addr v0, v7

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    move v0, v7

    .line 37
    .line 38
    :goto_1
    and-int/lit8 v1, p7, 0x2

    .line 39
    .line 40
    if-eqz v1, :cond_4

    .line 41
    .line 42
    or-int/lit8 v0, v0, 0x30

    .line 43
    .line 44
    :cond_3
    move-object/from16 v2, p1

    .line 45
    goto :goto_3

    .line 46
    .line 47
    :cond_4
    and-int/lit8 v2, v7, 0x70

    .line 48
    .line 49
    if-nez v2, :cond_3

    .line 50
    .line 51
    move-object/from16 v2, p1

    .line 52
    .line 53
    .line 54
    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 55
    move-result v3

    .line 56
    .line 57
    if-eqz v3, :cond_5

    .line 58
    .line 59
    const/16 v3, 0x20

    .line 60
    goto :goto_2

    .line 61
    .line 62
    :cond_5
    const/16 v3, 0x10

    .line 63
    :goto_2
    or-int/2addr v0, v3

    .line 64
    .line 65
    :goto_3
    and-int/lit16 v3, v7, 0x380

    .line 66
    .line 67
    if-nez v3, :cond_8

    .line 68
    .line 69
    and-int/lit8 v3, p7, 0x4

    .line 70
    .line 71
    if-nez v3, :cond_6

    .line 72
    .line 73
    move-wide/from16 v3, p2

    .line 74
    .line 75
    .line 76
    invoke-interface {v8, v3, v4}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 77
    move-result v5

    .line 78
    .line 79
    if-eqz v5, :cond_7

    .line 80
    .line 81
    const/16 v5, 0x100

    .line 82
    goto :goto_4

    .line 83
    .line 84
    :cond_6
    move-wide/from16 v3, p2

    .line 85
    .line 86
    :cond_7
    const/16 v5, 0x80

    .line 87
    :goto_4
    or-int/2addr v0, v5

    .line 88
    goto :goto_5

    .line 89
    .line 90
    :cond_8
    move-wide/from16 v3, p2

    .line 91
    .line 92
    :goto_5
    and-int/lit8 v5, p7, 0x8

    .line 93
    .line 94
    if-eqz v5, :cond_a

    .line 95
    .line 96
    or-int/lit16 v0, v0, 0xc00

    .line 97
    .line 98
    :cond_9
    move/from16 v9, p4

    .line 99
    goto :goto_7

    .line 100
    .line 101
    :cond_a
    and-int/lit16 v9, v7, 0x1c00

    .line 102
    .line 103
    if-nez v9, :cond_9

    .line 104
    .line 105
    move/from16 v9, p4

    .line 106
    .line 107
    .line 108
    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 109
    move-result v10

    .line 110
    .line 111
    if-eqz v10, :cond_b

    .line 112
    .line 113
    const/16 v10, 0x800

    .line 114
    goto :goto_6

    .line 115
    .line 116
    :cond_b
    const/16 v10, 0x400

    .line 117
    :goto_6
    or-int/2addr v0, v10

    .line 118
    .line 119
    :goto_7
    and-int/lit16 v0, v0, 0x16db

    .line 120
    .line 121
    const/16 v10, 0x492

    .line 122
    .line 123
    if-ne v0, v10, :cond_d

    .line 124
    .line 125
    .line 126
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->b()Z

    .line 127
    move-result v0

    .line 128
    .line 129
    if-nez v0, :cond_c

    .line 130
    goto :goto_8

    .line 131
    .line 132
    .line 133
    :cond_c
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->g()V

    .line 134
    move v5, v9

    .line 135
    .line 136
    goto/16 :goto_d

    .line 137
    .line 138
    .line 139
    :cond_d
    :goto_8
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->J()V

    .line 140
    .line 141
    and-int/lit8 v0, v7, 0x1

    .line 142
    .line 143
    if-eqz v0, :cond_f

    .line 144
    .line 145
    .line 146
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->h()Z

    .line 147
    move-result v0

    .line 148
    .line 149
    if-eqz v0, :cond_e

    .line 150
    goto :goto_9

    .line 151
    .line 152
    .line 153
    :cond_e
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->g()V

    .line 154
    move-wide v10, v3

    .line 155
    move v12, v9

    .line 156
    move-object v9, v2

    .line 157
    goto :goto_c

    .line 158
    .line 159
    :cond_f
    :goto_9
    if-eqz v1, :cond_10

    .line 160
    .line 161
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 162
    goto :goto_a

    .line 163
    :cond_10
    move-object v0, v2

    .line 164
    .line 165
    :goto_a
    and-int/lit8 v1, p7, 0x4

    .line 166
    .line 167
    if-eqz v1, :cond_11

    .line 168
    .line 169
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 170
    const/4 v2, 0x6

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v8, v2}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 174
    move-result-object v1

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->j()J

    .line 178
    move-result-wide v1

    .line 179
    goto :goto_b

    .line 180
    :cond_11
    move-wide v1, v3

    .line 181
    .line 182
    :goto_b
    if-eqz v5, :cond_12

    .line 183
    .line 184
    sget-object v3, Landroidx/compose/material/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material/ProgressIndicatorDefaults;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3}, Landroidx/compose/material/ProgressIndicatorDefaults;->a()F

    .line 188
    move-result v3

    .line 189
    move-object v9, v0

    .line 190
    move-wide v10, v1

    .line 191
    move v12, v3

    .line 192
    goto :goto_c

    .line 193
    :cond_12
    move-wide v10, v1

    .line 194
    move v12, v9

    .line 195
    move-object v9, v0

    .line 196
    .line 197
    .line 198
    :goto_c
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->A()V

    .line 199
    .line 200
    .line 201
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 202
    move-result-object v0

    .line 203
    .line 204
    .line 205
    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 206
    move-result-object v0

    .line 207
    .line 208
    check-cast v0, Landroidx/compose/ui/unit/Density;

    .line 209
    .line 210
    new-instance v5, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 211
    .line 212
    .line 213
    invoke-interface {v0, v12}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 214
    move-result v14

    .line 215
    const/4 v15, 0x0

    .line 216
    .line 217
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->a()I

    .line 221
    move-result v16

    .line 222
    .line 223
    const/16 v17, 0x0

    .line 224
    .line 225
    const/16 v18, 0x0

    .line 226
    .line 227
    const/16 v19, 0x1a

    .line 228
    .line 229
    const/16 v20, 0x0

    .line 230
    move-object v13, v5

    .line 231
    .line 232
    .line 233
    invoke-direct/range {v13 .. v20}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/k;)V

    .line 234
    const/4 v2, 0x0

    .line 235
    const/4 v3, 0x0

    .line 236
    const/4 v4, 0x6

    .line 237
    const/4 v13, 0x0

    .line 238
    move-object v0, v9

    .line 239
    .line 240
    move/from16 v1, p0

    .line 241
    move-object v14, v5

    .line 242
    move-object v5, v13

    .line 243
    .line 244
    .line 245
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/ProgressSemanticsKt;->c(Landroidx/compose/ui/Modifier;FLj8/e;IILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 246
    move-result-object v0

    .line 247
    .line 248
    sget v1, Landroidx/compose/material/ProgressIndicatorKt;->CircularIndicatorDiameter:F

    .line 249
    .line 250
    .line 251
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->y(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 252
    move-result-object v0

    .line 253
    .line 254
    new-instance v1, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$1;

    .line 255
    .line 256
    .line 257
    invoke-direct {v1, v6, v10, v11, v14}, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$1;-><init>(FJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    .line 258
    const/4 v2, 0x0

    .line 259
    .line 260
    .line 261
    invoke-static {v0, v1, v8, v2}, Landroidx/compose/foundation/CanvasKt;->a(Landroidx/compose/ui/Modifier;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 262
    move-object v2, v9

    .line 263
    move-wide v3, v10

    .line 264
    move v5, v12

    .line 265
    .line 266
    .line 267
    :goto_d
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 268
    move-result-object v8

    .line 269
    .line 270
    if-nez v8, :cond_13

    .line 271
    goto :goto_e

    .line 272
    .line 273
    :cond_13
    new-instance v9, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$2;

    .line 274
    move-object v0, v9

    .line 275
    .line 276
    move/from16 v1, p0

    .line 277
    .line 278
    move/from16 v6, p6

    .line 279
    .line 280
    move/from16 v7, p7

    .line 281
    .line 282
    .line 283
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$2;-><init>(FLandroidx/compose/ui/Modifier;JFII)V

    .line 284
    .line 285
    .line 286
    invoke-interface {v8, v9}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 287
    :goto_e
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;JFLandroidx/compose/runtime/Composer;II)V
    .locals 30
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .line 1
    .line 2
    move/from16 v5, p5

    .line 3
    .line 4
    .line 5
    const v0, -0x175ed17b

    .line 6
    .line 7
    move-object/from16 v1, p4

    .line 8
    .line 9
    .line 10
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    and-int/lit8 v1, p6, 0x1

    .line 14
    const/4 v2, 0x2

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    or-int/lit8 v3, v5, 0x6

    .line 19
    move v4, v3

    .line 20
    .line 21
    move-object/from16 v3, p0

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_0
    and-int/lit8 v3, v5, 0xe

    .line 25
    .line 26
    if-nez v3, :cond_2

    .line 27
    .line 28
    move-object/from16 v3, p0

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 32
    move-result v4

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    const/4 v4, 0x4

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v4, v2

    .line 38
    :goto_0
    or-int/2addr v4, v5

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_2
    move-object/from16 v3, p0

    .line 42
    move v4, v5

    .line 43
    .line 44
    :goto_1
    and-int/lit8 v6, v5, 0x70

    .line 45
    .line 46
    if-nez v6, :cond_5

    .line 47
    .line 48
    and-int/lit8 v6, p6, 0x2

    .line 49
    .line 50
    if-nez v6, :cond_3

    .line 51
    .line 52
    move-wide/from16 v6, p1

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v6, v7}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 56
    move-result v8

    .line 57
    .line 58
    if-eqz v8, :cond_4

    .line 59
    .line 60
    const/16 v8, 0x20

    .line 61
    goto :goto_2

    .line 62
    .line 63
    :cond_3
    move-wide/from16 v6, p1

    .line 64
    .line 65
    :cond_4
    const/16 v8, 0x10

    .line 66
    :goto_2
    or-int/2addr v4, v8

    .line 67
    goto :goto_3

    .line 68
    .line 69
    :cond_5
    move-wide/from16 v6, p1

    .line 70
    .line 71
    :goto_3
    and-int/lit8 v8, p6, 0x4

    .line 72
    .line 73
    if-eqz v8, :cond_7

    .line 74
    .line 75
    or-int/lit16 v4, v4, 0x180

    .line 76
    .line 77
    :cond_6
    move/from16 v9, p3

    .line 78
    goto :goto_5

    .line 79
    .line 80
    :cond_7
    and-int/lit16 v9, v5, 0x380

    .line 81
    .line 82
    if-nez v9, :cond_6

    .line 83
    .line 84
    move/from16 v9, p3

    .line 85
    .line 86
    .line 87
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 88
    move-result v10

    .line 89
    .line 90
    if-eqz v10, :cond_8

    .line 91
    .line 92
    const/16 v10, 0x100

    .line 93
    goto :goto_4

    .line 94
    .line 95
    :cond_8
    const/16 v10, 0x80

    .line 96
    :goto_4
    or-int/2addr v4, v10

    .line 97
    .line 98
    :goto_5
    and-int/lit16 v4, v4, 0x2db

    .line 99
    .line 100
    const/16 v10, 0x92

    .line 101
    .line 102
    if-ne v4, v10, :cond_a

    .line 103
    .line 104
    .line 105
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 106
    move-result v4

    .line 107
    .line 108
    if-nez v4, :cond_9

    .line 109
    goto :goto_6

    .line 110
    .line 111
    .line 112
    :cond_9
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 113
    move-object v1, v3

    .line 114
    move-wide v2, v6

    .line 115
    move v4, v9

    .line 116
    .line 117
    goto/16 :goto_b

    .line 118
    .line 119
    .line 120
    :cond_a
    :goto_6
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->J()V

    .line 121
    .line 122
    and-int/lit8 v4, v5, 0x1

    .line 123
    .line 124
    if-eqz v4, :cond_d

    .line 125
    .line 126
    .line 127
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->h()Z

    .line 128
    move-result v4

    .line 129
    .line 130
    if-eqz v4, :cond_b

    .line 131
    goto :goto_7

    .line 132
    .line 133
    .line 134
    :cond_b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 135
    move-object v1, v3

    .line 136
    move-wide v3, v6

    .line 137
    :cond_c
    move v15, v9

    .line 138
    goto :goto_a

    .line 139
    .line 140
    :cond_d
    :goto_7
    if-eqz v1, :cond_e

    .line 141
    .line 142
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 143
    goto :goto_8

    .line 144
    :cond_e
    move-object v1, v3

    .line 145
    .line 146
    :goto_8
    and-int/lit8 v3, p6, 0x2

    .line 147
    .line 148
    if-eqz v3, :cond_f

    .line 149
    .line 150
    sget-object v3, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 151
    const/4 v4, 0x6

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3, v0, v4}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 155
    move-result-object v3

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3}, Landroidx/compose/material/Colors;->j()J

    .line 159
    move-result-wide v3

    .line 160
    goto :goto_9

    .line 161
    :cond_f
    move-wide v3, v6

    .line 162
    .line 163
    :goto_9
    if-eqz v8, :cond_c

    .line 164
    .line 165
    sget-object v6, Landroidx/compose/material/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material/ProgressIndicatorDefaults;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6}, Landroidx/compose/material/ProgressIndicatorDefaults;->a()F

    .line 169
    move-result v6

    .line 170
    move v15, v6

    .line 171
    .line 172
    .line 173
    :goto_a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->A()V

    .line 174
    .line 175
    .line 176
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 177
    move-result-object v6

    .line 178
    .line 179
    .line 180
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 181
    move-result-object v6

    .line 182
    .line 183
    check-cast v6, Landroidx/compose/ui/unit/Density;

    .line 184
    .line 185
    new-instance v16, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 186
    .line 187
    .line 188
    invoke-interface {v6, v15}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 189
    move-result v8

    .line 190
    const/4 v9, 0x0

    .line 191
    .line 192
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->c()I

    .line 196
    move-result v10

    .line 197
    const/4 v11, 0x0

    .line 198
    const/4 v12, 0x0

    .line 199
    .line 200
    const/16 v13, 0x1a

    .line 201
    const/4 v14, 0x0

    .line 202
    .line 203
    move-object/from16 v7, v16

    .line 204
    .line 205
    .line 206
    invoke-direct/range {v7 .. v14}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/k;)V

    .line 207
    const/4 v14, 0x0

    .line 208
    .line 209
    .line 210
    invoke-static {v0, v14}, Landroidx/compose/animation/core/InfiniteTransitionKt;->c(Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/InfiniteTransition;

    .line 211
    move-result-object v13

    .line 212
    .line 213
    .line 214
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    move-result-object v7

    .line 216
    const/4 v6, 0x5

    .line 217
    .line 218
    .line 219
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    move-result-object v8

    .line 221
    .line 222
    sget-object v6, Lkotlin/jvm/internal/s;->INSTANCE:Lkotlin/jvm/internal/s;

    .line 223
    .line 224
    .line 225
    invoke-static {v6}, Landroidx/compose/animation/core/VectorConvertersKt;->j(Lkotlin/jvm/internal/s;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 226
    move-result-object v9

    .line 227
    .line 228
    const/16 v6, 0x1a04

    .line 229
    .line 230
    .line 231
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->b()Landroidx/compose/animation/core/Easing;

    .line 232
    move-result-object v10

    .line 233
    .line 234
    .line 235
    invoke-static {v6, v14, v10, v2, v12}, Landroidx/compose/animation/core/AnimationSpecKt;->k(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    .line 236
    move-result-object v17

    .line 237
    .line 238
    const/16 v18, 0x0

    .line 239
    .line 240
    const-wide/16 v19, 0x0

    .line 241
    .line 242
    const/16 v21, 0x6

    .line 243
    .line 244
    const/16 v22, 0x0

    .line 245
    .line 246
    .line 247
    invoke-static/range {v17 .. v22}, Landroidx/compose/animation/core/AnimationSpecKt;->d(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 248
    move-result-object v10

    .line 249
    .line 250
    sget v11, Landroidx/compose/animation/core/InfiniteTransition;->$stable:I

    .line 251
    .line 252
    or-int/lit16 v6, v11, 0x11b0

    .line 253
    .line 254
    sget v17, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->$stable:I

    .line 255
    .line 256
    shl-int/lit8 v18, v17, 0xc

    .line 257
    .line 258
    or-int v18, v6, v18

    .line 259
    move-object v6, v13

    .line 260
    .line 261
    move/from16 v23, v11

    .line 262
    move-object v11, v0

    .line 263
    move-object v5, v12

    .line 264
    .line 265
    move/from16 v12, v18

    .line 266
    .line 267
    .line 268
    invoke-static/range {v6 .. v12}, Landroidx/compose/animation/core/InfiniteTransitionKt;->b(Landroidx/compose/animation/core/InfiniteTransition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 269
    move-result-object v12

    .line 270
    const/4 v7, 0x0

    .line 271
    .line 272
    const/high16 v8, 0x438f0000    # 286.0f

    .line 273
    .line 274
    const/16 v6, 0x534

    .line 275
    .line 276
    .line 277
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->b()Landroidx/compose/animation/core/Easing;

    .line 278
    move-result-object v9

    .line 279
    .line 280
    .line 281
    invoke-static {v6, v14, v9, v2, v5}, Landroidx/compose/animation/core/AnimationSpecKt;->k(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    .line 282
    move-result-object v24

    .line 283
    .line 284
    const/16 v25, 0x0

    .line 285
    .line 286
    const-wide/16 v26, 0x0

    .line 287
    .line 288
    const/16 v28, 0x6

    .line 289
    .line 290
    const/16 v29, 0x0

    .line 291
    .line 292
    .line 293
    invoke-static/range {v24 .. v29}, Landroidx/compose/animation/core/AnimationSpecKt;->d(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 294
    move-result-object v9

    .line 295
    .line 296
    move/from16 v2, v23

    .line 297
    .line 298
    or-int/lit16 v5, v2, 0x1b0

    .line 299
    .line 300
    shl-int/lit8 v6, v17, 0x9

    .line 301
    .line 302
    or-int v11, v5, v6

    .line 303
    move-object v6, v13

    .line 304
    move-object v10, v0

    .line 305
    .line 306
    .line 307
    invoke-static/range {v6 .. v11}, Landroidx/compose/animation/core/InfiniteTransitionKt;->a(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 308
    move-result-object v5

    .line 309
    .line 310
    const/high16 v8, 0x43910000    # 290.0f

    .line 311
    .line 312
    sget-object v6, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$endAngle$2;->INSTANCE:Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$endAngle$2;

    .line 313
    .line 314
    .line 315
    invoke-static {v6}, Landroidx/compose/animation/core/AnimationSpecKt;->e(Le8/l;)Landroidx/compose/animation/core/KeyframesSpec;

    .line 316
    move-result-object v18

    .line 317
    .line 318
    const/16 v19, 0x0

    .line 319
    .line 320
    const-wide/16 v20, 0x0

    .line 321
    .line 322
    const/16 v22, 0x6

    .line 323
    .line 324
    const/16 v23, 0x0

    .line 325
    .line 326
    .line 327
    invoke-static/range {v18 .. v23}, Landroidx/compose/animation/core/AnimationSpecKt;->d(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 328
    move-result-object v9

    .line 329
    .line 330
    or-int/lit16 v6, v2, 0x1b0

    .line 331
    .line 332
    shl-int/lit8 v10, v17, 0x9

    .line 333
    .line 334
    or-int v11, v6, v10

    .line 335
    move-object v6, v13

    .line 336
    move-object v10, v0

    .line 337
    .line 338
    .line 339
    invoke-static/range {v6 .. v11}, Landroidx/compose/animation/core/InfiniteTransitionKt;->a(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 340
    move-result-object v18

    .line 341
    .line 342
    sget-object v6, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$startAngle$2;->INSTANCE:Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$startAngle$2;

    .line 343
    .line 344
    .line 345
    invoke-static {v6}, Landroidx/compose/animation/core/AnimationSpecKt;->e(Le8/l;)Landroidx/compose/animation/core/KeyframesSpec;

    .line 346
    move-result-object v19

    .line 347
    .line 348
    const/16 v20, 0x0

    .line 349
    .line 350
    const-wide/16 v21, 0x0

    .line 351
    .line 352
    const/16 v23, 0x6

    .line 353
    .line 354
    const/16 v24, 0x0

    .line 355
    .line 356
    .line 357
    invoke-static/range {v19 .. v24}, Landroidx/compose/animation/core/AnimationSpecKt;->d(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 358
    move-result-object v9

    .line 359
    .line 360
    or-int/lit16 v2, v2, 0x1b0

    .line 361
    .line 362
    shl-int/lit8 v6, v17, 0x9

    .line 363
    .line 364
    or-int v11, v2, v6

    .line 365
    move-object v6, v13

    .line 366
    .line 367
    .line 368
    invoke-static/range {v6 .. v11}, Landroidx/compose/animation/core/InfiniteTransitionKt;->a(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 369
    move-result-object v13

    .line 370
    .line 371
    .line 372
    invoke-static {v1}, Landroidx/compose/foundation/ProgressSemanticsKt;->a(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 373
    move-result-object v2

    .line 374
    .line 375
    sget v6, Landroidx/compose/material/ProgressIndicatorKt;->CircularIndicatorDiameter:F

    .line 376
    .line 377
    .line 378
    invoke-static {v2, v6}, Landroidx/compose/foundation/layout/SizeKt;->y(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 379
    move-result-object v2

    .line 380
    .line 381
    new-instance v11, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$3;

    .line 382
    move-object v6, v11

    .line 383
    move v7, v15

    .line 384
    move-wide v8, v3

    .line 385
    .line 386
    move-object/from16 v10, v16

    .line 387
    .line 388
    move-object/from16 p0, v1

    .line 389
    move-object v1, v11

    .line 390
    move-object v11, v12

    .line 391
    .line 392
    move-object/from16 v12, v18

    .line 393
    .line 394
    move-wide/from16 p1, v3

    .line 395
    move v3, v14

    .line 396
    move-object v14, v5

    .line 397
    .line 398
    .line 399
    invoke-direct/range {v6 .. v14}, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$3;-><init>(FJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    .line 400
    .line 401
    .line 402
    invoke-static {v2, v1, v0, v3}, Landroidx/compose/foundation/CanvasKt;->a(Landroidx/compose/ui/Modifier;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 403
    .line 404
    move-object/from16 v1, p0

    .line 405
    .line 406
    move-wide/from16 v2, p1

    .line 407
    move v4, v15

    .line 408
    .line 409
    .line 410
    :goto_b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 411
    move-result-object v7

    .line 412
    .line 413
    if-nez v7, :cond_10

    .line 414
    goto :goto_c

    .line 415
    .line 416
    :cond_10
    new-instance v8, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$4;

    .line 417
    move-object v0, v8

    .line 418
    .line 419
    move/from16 v5, p5

    .line 420
    .line 421
    move/from16 v6, p6

    .line 422
    .line 423
    .line 424
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$4;-><init>(Landroidx/compose/ui/Modifier;JFII)V

    .line 425
    .line 426
    .line 427
    invoke-interface {v7, v8}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 428
    :goto_c
    return-void
.end method

.method private static final c(Landroidx/compose/runtime/State;)F
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

.method private static final e(Landroidx/compose/runtime/State;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;)I"
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
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final f(Landroidx/compose/runtime/State;)F
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

.method public static final g(Landroidx/compose/ui/Modifier;JJLandroidx/compose/runtime/Composer;II)V
    .locals 25
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .line 1
    .line 2
    move/from16 v6, p6

    .line 3
    .line 4
    .line 5
    const v0, -0x30d701c2

    .line 6
    .line 7
    move-object/from16 v1, p5

    .line 8
    .line 9
    .line 10
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    and-int/lit8 v1, p7, 0x1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    or-int/lit8 v4, v6, 0x6

    .line 18
    move v5, v4

    .line 19
    .line 20
    move-object/from16 v4, p0

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_0
    and-int/lit8 v4, v6, 0xe

    .line 24
    .line 25
    if-nez v4, :cond_2

    .line 26
    .line 27
    move-object/from16 v4, p0

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 31
    move-result v5

    .line 32
    .line 33
    if-eqz v5, :cond_1

    .line 34
    const/4 v5, 0x4

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v5, 0x2

    .line 37
    :goto_0
    or-int/2addr v5, v6

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_2
    move-object/from16 v4, p0

    .line 41
    move v5, v6

    .line 42
    .line 43
    :goto_1
    and-int/lit8 v7, v6, 0x70

    .line 44
    .line 45
    if-nez v7, :cond_5

    .line 46
    .line 47
    and-int/lit8 v7, p7, 0x2

    .line 48
    .line 49
    if-nez v7, :cond_3

    .line 50
    .line 51
    move-wide/from16 v7, p1

    .line 52
    .line 53
    .line 54
    invoke-interface {v0, v7, v8}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 55
    move-result v9

    .line 56
    .line 57
    if-eqz v9, :cond_4

    .line 58
    .line 59
    const/16 v9, 0x20

    .line 60
    goto :goto_2

    .line 61
    .line 62
    :cond_3
    move-wide/from16 v7, p1

    .line 63
    .line 64
    :cond_4
    const/16 v9, 0x10

    .line 65
    :goto_2
    or-int/2addr v5, v9

    .line 66
    goto :goto_3

    .line 67
    .line 68
    :cond_5
    move-wide/from16 v7, p1

    .line 69
    .line 70
    :goto_3
    and-int/lit16 v9, v6, 0x380

    .line 71
    .line 72
    if-nez v9, :cond_8

    .line 73
    .line 74
    and-int/lit8 v9, p7, 0x4

    .line 75
    .line 76
    if-nez v9, :cond_6

    .line 77
    .line 78
    move-wide/from16 v9, p3

    .line 79
    .line 80
    .line 81
    invoke-interface {v0, v9, v10}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 82
    move-result v11

    .line 83
    .line 84
    if-eqz v11, :cond_7

    .line 85
    .line 86
    const/16 v11, 0x100

    .line 87
    goto :goto_4

    .line 88
    .line 89
    :cond_6
    move-wide/from16 v9, p3

    .line 90
    .line 91
    :cond_7
    const/16 v11, 0x80

    .line 92
    :goto_4
    or-int/2addr v5, v11

    .line 93
    goto :goto_5

    .line 94
    .line 95
    :cond_8
    move-wide/from16 v9, p3

    .line 96
    .line 97
    :goto_5
    and-int/lit16 v5, v5, 0x2db

    .line 98
    .line 99
    const/16 v11, 0x92

    .line 100
    .line 101
    if-ne v5, v11, :cond_a

    .line 102
    .line 103
    .line 104
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 105
    move-result v5

    .line 106
    .line 107
    if-nez v5, :cond_9

    .line 108
    goto :goto_7

    .line 109
    .line 110
    .line 111
    :cond_9
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 112
    move-object v1, v4

    .line 113
    move-wide v2, v7

    .line 114
    :goto_6
    move-wide v4, v9

    .line 115
    .line 116
    goto/16 :goto_d

    .line 117
    .line 118
    .line 119
    :cond_a
    :goto_7
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->J()V

    .line 120
    .line 121
    and-int/lit8 v5, v6, 0x1

    .line 122
    const/4 v11, 0x6

    .line 123
    .line 124
    if-eqz v5, :cond_c

    .line 125
    .line 126
    .line 127
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->h()Z

    .line 128
    move-result v5

    .line 129
    .line 130
    if-eqz v5, :cond_b

    .line 131
    goto :goto_8

    .line 132
    .line 133
    .line 134
    :cond_b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 135
    move-object v1, v4

    .line 136
    move-wide v4, v7

    .line 137
    goto :goto_b

    .line 138
    .line 139
    :cond_c
    :goto_8
    if-eqz v1, :cond_d

    .line 140
    .line 141
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 142
    goto :goto_9

    .line 143
    :cond_d
    move-object v1, v4

    .line 144
    .line 145
    :goto_9
    and-int/lit8 v4, p7, 0x2

    .line 146
    .line 147
    if-eqz v4, :cond_e

    .line 148
    .line 149
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v0, v11}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 153
    move-result-object v4

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4}, Landroidx/compose/material/Colors;->j()J

    .line 157
    move-result-wide v4

    .line 158
    goto :goto_a

    .line 159
    :cond_e
    move-wide v4, v7

    .line 160
    .line 161
    :goto_a
    and-int/lit8 v7, p7, 0x4

    .line 162
    .line 163
    if-eqz v7, :cond_f

    .line 164
    .line 165
    .line 166
    const v14, 0x3e75c28f    # 0.24f

    .line 167
    const/4 v15, 0x0

    .line 168
    .line 169
    const/16 v16, 0x0

    .line 170
    .line 171
    const/16 v17, 0x0

    .line 172
    .line 173
    const/16 v18, 0xe

    .line 174
    .line 175
    const/16 v19, 0x0

    .line 176
    move-wide v12, v4

    .line 177
    .line 178
    .line 179
    invoke-static/range {v12 .. v19}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 180
    move-result-wide v7

    .line 181
    move-wide v9, v7

    .line 182
    .line 183
    .line 184
    :cond_f
    :goto_b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->A()V

    .line 185
    const/4 v7, 0x0

    .line 186
    .line 187
    .line 188
    invoke-static {v0, v7}, Landroidx/compose/animation/core/InfiniteTransitionKt;->c(Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/InfiniteTransition;

    .line 189
    move-result-object v8

    .line 190
    const/4 v12, 0x0

    .line 191
    .line 192
    const/high16 v13, 0x3f800000    # 1.0f

    .line 193
    .line 194
    sget-object v14, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$firstLineHead$2;->INSTANCE:Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$firstLineHead$2;

    .line 195
    .line 196
    .line 197
    invoke-static {v14}, Landroidx/compose/animation/core/AnimationSpecKt;->e(Le8/l;)Landroidx/compose/animation/core/KeyframesSpec;

    .line 198
    move-result-object v14

    .line 199
    const/4 v15, 0x0

    .line 200
    .line 201
    const-wide/16 v16, 0x0

    .line 202
    .line 203
    const/16 v18, 0x6

    .line 204
    .line 205
    const/16 v19, 0x0

    .line 206
    .line 207
    move-object/from16 p0, v14

    .line 208
    .line 209
    move-object/from16 p1, v15

    .line 210
    .line 211
    move-wide/from16 p2, v16

    .line 212
    .line 213
    move/from16 p4, v18

    .line 214
    .line 215
    move-object/from16 p5, v19

    .line 216
    .line 217
    .line 218
    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/AnimationSpecKt;->d(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 219
    move-result-object v14

    .line 220
    .line 221
    sget v15, Landroidx/compose/animation/core/InfiniteTransition;->$stable:I

    .line 222
    .line 223
    or-int/lit16 v3, v15, 0x1b0

    .line 224
    .line 225
    sget v17, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->$stable:I

    .line 226
    .line 227
    shl-int/lit8 v18, v17, 0x9

    .line 228
    .line 229
    or-int v3, v3, v18

    .line 230
    .line 231
    move-object/from16 p0, v8

    .line 232
    .line 233
    move/from16 p1, v12

    .line 234
    .line 235
    move/from16 p2, v13

    .line 236
    .line 237
    move-object/from16 p3, v14

    .line 238
    .line 239
    move-object/from16 p4, v0

    .line 240
    .line 241
    move/from16 p5, v3

    .line 242
    .line 243
    .line 244
    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/InfiniteTransitionKt;->a(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 245
    move-result-object v3

    .line 246
    .line 247
    sget-object v14, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$firstLineTail$2;->INSTANCE:Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$firstLineTail$2;

    .line 248
    .line 249
    .line 250
    invoke-static {v14}, Landroidx/compose/animation/core/AnimationSpecKt;->e(Le8/l;)Landroidx/compose/animation/core/KeyframesSpec;

    .line 251
    move-result-object v14

    .line 252
    .line 253
    const/16 v18, 0x0

    .line 254
    .line 255
    const-wide/16 v19, 0x0

    .line 256
    .line 257
    const/16 v21, 0x6

    .line 258
    .line 259
    const/16 v22, 0x0

    .line 260
    .line 261
    move-object/from16 p0, v14

    .line 262
    .line 263
    move-object/from16 p1, v18

    .line 264
    .line 265
    move-wide/from16 p2, v19

    .line 266
    .line 267
    move/from16 p4, v21

    .line 268
    .line 269
    move-object/from16 p5, v22

    .line 270
    .line 271
    .line 272
    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/AnimationSpecKt;->d(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 273
    move-result-object v14

    .line 274
    .line 275
    or-int/lit16 v2, v15, 0x1b0

    .line 276
    .line 277
    shl-int/lit8 v19, v17, 0x9

    .line 278
    .line 279
    or-int v2, v2, v19

    .line 280
    .line 281
    move-object/from16 p0, v8

    .line 282
    .line 283
    move/from16 p1, v12

    .line 284
    .line 285
    move/from16 p2, v13

    .line 286
    .line 287
    move-object/from16 p3, v14

    .line 288
    .line 289
    move-object/from16 p4, v0

    .line 290
    .line 291
    move/from16 p5, v2

    .line 292
    .line 293
    .line 294
    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/InfiniteTransitionKt;->a(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 295
    move-result-object v2

    .line 296
    .line 297
    sget-object v14, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$secondLineHead$2;->INSTANCE:Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$secondLineHead$2;

    .line 298
    .line 299
    .line 300
    invoke-static {v14}, Landroidx/compose/animation/core/AnimationSpecKt;->e(Le8/l;)Landroidx/compose/animation/core/KeyframesSpec;

    .line 301
    move-result-object v14

    .line 302
    .line 303
    const/16 v19, 0x0

    .line 304
    .line 305
    const-wide/16 v20, 0x0

    .line 306
    .line 307
    const/16 v22, 0x6

    .line 308
    .line 309
    const/16 v23, 0x0

    .line 310
    .line 311
    move-object/from16 p0, v14

    .line 312
    .line 313
    move-object/from16 p1, v19

    .line 314
    .line 315
    move-wide/from16 p2, v20

    .line 316
    .line 317
    move/from16 p4, v22

    .line 318
    .line 319
    move-object/from16 p5, v23

    .line 320
    .line 321
    .line 322
    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/AnimationSpecKt;->d(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 323
    move-result-object v14

    .line 324
    .line 325
    or-int/lit16 v7, v15, 0x1b0

    .line 326
    .line 327
    shl-int/lit8 v19, v17, 0x9

    .line 328
    .line 329
    or-int v7, v7, v19

    .line 330
    .line 331
    move-object/from16 p0, v8

    .line 332
    .line 333
    move/from16 p1, v12

    .line 334
    .line 335
    move/from16 p2, v13

    .line 336
    .line 337
    move-object/from16 p3, v14

    .line 338
    .line 339
    move-object/from16 p4, v0

    .line 340
    .line 341
    move/from16 p5, v7

    .line 342
    .line 343
    .line 344
    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/InfiniteTransitionKt;->a(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 345
    move-result-object v19

    .line 346
    const/4 v7, 0x0

    .line 347
    .line 348
    const/high16 v12, 0x3f800000    # 1.0f

    .line 349
    .line 350
    sget-object v13, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$secondLineTail$2;->INSTANCE:Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$secondLineTail$2;

    .line 351
    .line 352
    .line 353
    invoke-static {v13}, Landroidx/compose/animation/core/AnimationSpecKt;->e(Le8/l;)Landroidx/compose/animation/core/KeyframesSpec;

    .line 354
    move-result-object v13

    .line 355
    const/4 v14, 0x0

    .line 356
    .line 357
    const-wide/16 v22, 0x0

    .line 358
    .line 359
    const/16 v20, 0x6

    .line 360
    .line 361
    const/16 v24, 0x0

    .line 362
    .line 363
    move-object/from16 p0, v13

    .line 364
    .line 365
    move-object/from16 p1, v14

    .line 366
    .line 367
    move-wide/from16 p2, v22

    .line 368
    .line 369
    move/from16 p4, v20

    .line 370
    .line 371
    move-object/from16 p5, v24

    .line 372
    .line 373
    .line 374
    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/AnimationSpecKt;->d(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 375
    move-result-object v13

    .line 376
    .line 377
    or-int/lit16 v14, v15, 0x1b0

    .line 378
    .line 379
    shl-int/lit8 v15, v17, 0x9

    .line 380
    or-int/2addr v14, v15

    .line 381
    .line 382
    move-object/from16 p0, v8

    .line 383
    .line 384
    move/from16 p1, v7

    .line 385
    .line 386
    move/from16 p2, v12

    .line 387
    .line 388
    move-object/from16 p3, v13

    .line 389
    .line 390
    move-object/from16 p4, v0

    .line 391
    .line 392
    move/from16 p5, v14

    .line 393
    .line 394
    .line 395
    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/InfiniteTransitionKt;->a(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 396
    move-result-object v20

    .line 397
    .line 398
    .line 399
    invoke-static {v1}, Landroidx/compose/foundation/ProgressSemanticsKt;->a(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 400
    move-result-object v7

    .line 401
    .line 402
    sget v8, Landroidx/compose/material/ProgressIndicatorKt;->LinearIndicatorWidth:F

    .line 403
    .line 404
    sget v12, Landroidx/compose/material/ProgressIndicatorKt;->LinearIndicatorHeight:F

    .line 405
    .line 406
    .line 407
    invoke-static {v7, v8, v12}, Landroidx/compose/foundation/layout/SizeKt;->A(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 408
    move-result-object v7

    .line 409
    .line 410
    new-array v8, v11, [Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 414
    move-result-object v12

    .line 415
    const/4 v13, 0x0

    .line 416
    .line 417
    aput-object v12, v8, v13

    .line 418
    const/4 v12, 0x1

    .line 419
    .line 420
    aput-object v3, v8, v12

    .line 421
    const/4 v12, 0x2

    .line 422
    .line 423
    aput-object v2, v8, v12

    .line 424
    const/4 v12, 0x3

    .line 425
    .line 426
    .line 427
    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 428
    move-result-object v13

    .line 429
    .line 430
    aput-object v13, v8, v12

    .line 431
    const/4 v12, 0x4

    .line 432
    .line 433
    aput-object v19, v8, v12

    .line 434
    const/4 v12, 0x5

    .line 435
    .line 436
    aput-object v20, v8, v12

    .line 437
    .line 438
    .line 439
    const v12, -0x21de6e89

    .line 440
    .line 441
    .line 442
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 443
    const/4 v12, 0x0

    .line 444
    const/4 v13, 0x0

    .line 445
    .line 446
    :goto_c
    if-ge v13, v11, :cond_10

    .line 447
    .line 448
    aget-object v14, v8, v13

    .line 449
    .line 450
    .line 451
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 452
    move-result v14

    .line 453
    or-int/2addr v12, v14

    .line 454
    .line 455
    add-int/lit8 v13, v13, 0x1

    .line 456
    goto :goto_c

    .line 457
    .line 458
    .line 459
    :cond_10
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 460
    move-result-object v8

    .line 461
    .line 462
    if-nez v12, :cond_11

    .line 463
    .line 464
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 468
    move-result-object v11

    .line 469
    .line 470
    if-ne v8, v11, :cond_12

    .line 471
    .line 472
    :cond_11
    new-instance v8, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;

    .line 473
    move-object v12, v8

    .line 474
    move-wide v13, v9

    .line 475
    move-wide v15, v4

    .line 476
    .line 477
    move-object/from16 v17, v3

    .line 478
    .line 479
    move-object/from16 v18, v2

    .line 480
    .line 481
    .line 482
    invoke-direct/range {v12 .. v20}, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;-><init>(JJLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    .line 483
    .line 484
    .line 485
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 486
    .line 487
    .line 488
    :cond_12
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 489
    .line 490
    check-cast v8, Le8/l;

    .line 491
    const/4 v2, 0x0

    .line 492
    .line 493
    .line 494
    invoke-static {v7, v8, v0, v2}, Landroidx/compose/foundation/CanvasKt;->a(Landroidx/compose/ui/Modifier;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 495
    move-wide v2, v4

    .line 496
    .line 497
    goto/16 :goto_6

    .line 498
    .line 499
    .line 500
    :goto_d
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 501
    move-result-object v8

    .line 502
    .line 503
    if-nez v8, :cond_13

    .line 504
    goto :goto_e

    .line 505
    .line 506
    :cond_13
    new-instance v9, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$4;

    .line 507
    move-object v0, v9

    .line 508
    .line 509
    move/from16 v6, p6

    .line 510
    .line 511
    move/from16 v7, p7

    .line 512
    .line 513
    .line 514
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$4;-><init>(Landroidx/compose/ui/Modifier;JJII)V

    .line 515
    .line 516
    .line 517
    invoke-interface {v8, v9}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 518
    :goto_e
    return-void
.end method

.method public static final h(FLandroidx/compose/ui/Modifier;JJLandroidx/compose/runtime/Composer;II)V
    .locals 16
    .param p1    # Landroidx/compose/ui/Modifier;
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

    .line 1
    .line 2
    move/from16 v7, p7

    .line 3
    .line 4
    .line 5
    const v0, -0x32aeb272

    .line 6
    .line 7
    move-object/from16 v1, p6

    .line 8
    .line 9
    .line 10
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    and-int/lit8 v1, p8, 0x1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    or-int/lit8 v1, v7, 0x6

    .line 18
    move v2, v1

    .line 19
    .line 20
    move/from16 v1, p0

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_0
    and-int/lit8 v1, v7, 0xe

    .line 24
    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    move/from16 v1, p0

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 31
    move-result v2

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    const/4 v2, 0x4

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v2, 0x2

    .line 37
    :goto_0
    or-int/2addr v2, v7

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_2
    move/from16 v1, p0

    .line 41
    move v2, v7

    .line 42
    .line 43
    :goto_1
    and-int/lit8 v3, p8, 0x2

    .line 44
    .line 45
    if-eqz v3, :cond_4

    .line 46
    .line 47
    or-int/lit8 v2, v2, 0x30

    .line 48
    .line 49
    :cond_3
    move-object/from16 v4, p1

    .line 50
    goto :goto_3

    .line 51
    .line 52
    :cond_4
    and-int/lit8 v4, v7, 0x70

    .line 53
    .line 54
    if-nez v4, :cond_3

    .line 55
    .line 56
    move-object/from16 v4, p1

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 60
    move-result v5

    .line 61
    .line 62
    if-eqz v5, :cond_5

    .line 63
    .line 64
    const/16 v5, 0x20

    .line 65
    goto :goto_2

    .line 66
    .line 67
    :cond_5
    const/16 v5, 0x10

    .line 68
    :goto_2
    or-int/2addr v2, v5

    .line 69
    .line 70
    :goto_3
    and-int/lit16 v5, v7, 0x380

    .line 71
    .line 72
    if-nez v5, :cond_8

    .line 73
    .line 74
    and-int/lit8 v5, p8, 0x4

    .line 75
    .line 76
    if-nez v5, :cond_6

    .line 77
    .line 78
    move-wide/from16 v5, p2

    .line 79
    .line 80
    .line 81
    invoke-interface {v0, v5, v6}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 82
    move-result v8

    .line 83
    .line 84
    if-eqz v8, :cond_7

    .line 85
    .line 86
    const/16 v8, 0x100

    .line 87
    goto :goto_4

    .line 88
    .line 89
    :cond_6
    move-wide/from16 v5, p2

    .line 90
    .line 91
    :cond_7
    const/16 v8, 0x80

    .line 92
    :goto_4
    or-int/2addr v2, v8

    .line 93
    goto :goto_5

    .line 94
    .line 95
    :cond_8
    move-wide/from16 v5, p2

    .line 96
    .line 97
    :goto_5
    and-int/lit16 v8, v7, 0x1c00

    .line 98
    .line 99
    if-nez v8, :cond_b

    .line 100
    .line 101
    and-int/lit8 v8, p8, 0x8

    .line 102
    .line 103
    if-nez v8, :cond_9

    .line 104
    .line 105
    move-wide/from16 v8, p4

    .line 106
    .line 107
    .line 108
    invoke-interface {v0, v8, v9}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 109
    move-result v10

    .line 110
    .line 111
    if-eqz v10, :cond_a

    .line 112
    .line 113
    const/16 v10, 0x800

    .line 114
    goto :goto_6

    .line 115
    .line 116
    :cond_9
    move-wide/from16 v8, p4

    .line 117
    .line 118
    :cond_a
    const/16 v10, 0x400

    .line 119
    :goto_6
    or-int/2addr v2, v10

    .line 120
    goto :goto_7

    .line 121
    .line 122
    :cond_b
    move-wide/from16 v8, p4

    .line 123
    .line 124
    :goto_7
    and-int/lit16 v2, v2, 0x16db

    .line 125
    .line 126
    const/16 v10, 0x492

    .line 127
    .line 128
    if-ne v2, v10, :cond_d

    .line 129
    .line 130
    .line 131
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 132
    move-result v2

    .line 133
    .line 134
    if-nez v2, :cond_c

    .line 135
    goto :goto_9

    .line 136
    .line 137
    .line 138
    :cond_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 139
    move-object v2, v4

    .line 140
    move-wide v3, v5

    .line 141
    :goto_8
    move-wide v5, v8

    .line 142
    .line 143
    goto/16 :goto_e

    .line 144
    .line 145
    .line 146
    :cond_d
    :goto_9
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->J()V

    .line 147
    .line 148
    and-int/lit8 v2, v7, 0x1

    .line 149
    .line 150
    if-eqz v2, :cond_f

    .line 151
    .line 152
    .line 153
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->h()Z

    .line 154
    move-result v2

    .line 155
    .line 156
    if-eqz v2, :cond_e

    .line 157
    goto :goto_a

    .line 158
    .line 159
    .line 160
    :cond_e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 161
    move-object v2, v4

    .line 162
    move-wide v3, v5

    .line 163
    goto :goto_d

    .line 164
    .line 165
    :cond_f
    :goto_a
    if-eqz v3, :cond_10

    .line 166
    .line 167
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 168
    goto :goto_b

    .line 169
    :cond_10
    move-object v2, v4

    .line 170
    .line 171
    :goto_b
    and-int/lit8 v3, p8, 0x4

    .line 172
    .line 173
    if-eqz v3, :cond_11

    .line 174
    .line 175
    sget-object v3, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 176
    const/4 v4, 0x6

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3, v0, v4}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 180
    move-result-object v3

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3}, Landroidx/compose/material/Colors;->j()J

    .line 184
    move-result-wide v3

    .line 185
    goto :goto_c

    .line 186
    :cond_11
    move-wide v3, v5

    .line 187
    .line 188
    :goto_c
    and-int/lit8 v5, p8, 0x8

    .line 189
    .line 190
    if-eqz v5, :cond_12

    .line 191
    .line 192
    .line 193
    const v10, 0x3e75c28f    # 0.24f

    .line 194
    const/4 v11, 0x0

    .line 195
    const/4 v12, 0x0

    .line 196
    const/4 v13, 0x0

    .line 197
    .line 198
    const/16 v14, 0xe

    .line 199
    const/4 v15, 0x0

    .line 200
    move-wide v8, v3

    .line 201
    .line 202
    .line 203
    invoke-static/range {v8 .. v15}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 204
    move-result-wide v5

    .line 205
    move-wide v8, v5

    .line 206
    .line 207
    .line 208
    :cond_12
    :goto_d
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->A()V

    .line 209
    const/4 v5, 0x0

    .line 210
    const/4 v6, 0x0

    .line 211
    const/4 v10, 0x6

    .line 212
    const/4 v11, 0x0

    .line 213
    .line 214
    move-object/from16 p1, v2

    .line 215
    .line 216
    move/from16 p2, p0

    .line 217
    .line 218
    move-object/from16 p3, v5

    .line 219
    .line 220
    move/from16 p4, v6

    .line 221
    .line 222
    move/from16 p5, v10

    .line 223
    .line 224
    move-object/from16 p6, v11

    .line 225
    .line 226
    .line 227
    invoke-static/range {p1 .. p6}, Landroidx/compose/foundation/ProgressSemanticsKt;->c(Landroidx/compose/ui/Modifier;FLj8/e;IILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 228
    move-result-object v5

    .line 229
    .line 230
    sget v6, Landroidx/compose/material/ProgressIndicatorKt;->LinearIndicatorWidth:F

    .line 231
    .line 232
    sget v10, Landroidx/compose/material/ProgressIndicatorKt;->LinearIndicatorHeight:F

    .line 233
    .line 234
    .line 235
    invoke-static {v5, v6, v10}, Landroidx/compose/foundation/layout/SizeKt;->A(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 236
    move-result-object v5

    .line 237
    .line 238
    .line 239
    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 240
    move-result-object v6

    .line 241
    .line 242
    .line 243
    invoke-static/range {p0 .. p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 244
    move-result-object v10

    .line 245
    .line 246
    .line 247
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 248
    move-result-object v11

    .line 249
    .line 250
    .line 251
    const v12, 0x607fb4c4

    .line 252
    .line 253
    .line 254
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 255
    .line 256
    .line 257
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 258
    move-result v6

    .line 259
    .line 260
    .line 261
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 262
    move-result v10

    .line 263
    or-int/2addr v6, v10

    .line 264
    .line 265
    .line 266
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 267
    move-result v10

    .line 268
    or-int/2addr v6, v10

    .line 269
    .line 270
    .line 271
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 272
    move-result-object v10

    .line 273
    .line 274
    if-nez v6, :cond_13

    .line 275
    .line 276
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 280
    move-result-object v6

    .line 281
    .line 282
    if-ne v10, v6, :cond_14

    .line 283
    .line 284
    :cond_13
    new-instance v10, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$1$1;

    .line 285
    .line 286
    move-object/from16 p1, v10

    .line 287
    .line 288
    move-wide/from16 p2, v8

    .line 289
    .line 290
    move/from16 p4, p0

    .line 291
    .line 292
    move-wide/from16 p5, v3

    .line 293
    .line 294
    .line 295
    invoke-direct/range {p1 .. p6}, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$1$1;-><init>(JFJ)V

    .line 296
    .line 297
    .line 298
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    :cond_14
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 302
    .line 303
    check-cast v10, Le8/l;

    .line 304
    const/4 v6, 0x0

    .line 305
    .line 306
    .line 307
    invoke-static {v5, v10, v0, v6}, Landroidx/compose/foundation/CanvasKt;->a(Landroidx/compose/ui/Modifier;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 308
    .line 309
    goto/16 :goto_8

    .line 310
    .line 311
    .line 312
    :goto_e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 313
    move-result-object v9

    .line 314
    .line 315
    if-nez v9, :cond_15

    .line 316
    goto :goto_f

    .line 317
    .line 318
    :cond_15
    new-instance v10, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$2;

    .line 319
    move-object v0, v10

    .line 320
    .line 321
    move/from16 v1, p0

    .line 322
    .line 323
    move/from16 v7, p7

    .line 324
    .line 325
    move/from16 v8, p8

    .line 326
    .line 327
    .line 328
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$2;-><init>(FLandroidx/compose/ui/Modifier;JJII)V

    .line 329
    .line 330
    .line 331
    invoke-interface {v9, v10}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 332
    :goto_f
    return-void
.end method

.method private static final i(Landroidx/compose/runtime/State;)F
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

.method private static final j(Landroidx/compose/runtime/State;)F
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

.method private static final k(Landroidx/compose/runtime/State;)F
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

.method private static final l(Landroidx/compose/runtime/State;)F
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

.method public static final synthetic m(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/material/ProgressIndicatorKt;->c(Landroidx/compose/runtime/State;)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic n(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/material/ProgressIndicatorKt;->d(Landroidx/compose/runtime/State;)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic o(Landroidx/compose/runtime/State;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/material/ProgressIndicatorKt;->e(Landroidx/compose/runtime/State;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic p(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/material/ProgressIndicatorKt;->f(Landroidx/compose/runtime/State;)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic q(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/material/ProgressIndicatorKt;->i(Landroidx/compose/runtime/State;)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic r(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/material/ProgressIndicatorKt;->j(Landroidx/compose/runtime/State;)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic s(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/material/ProgressIndicatorKt;->k(Landroidx/compose/runtime/State;)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic t(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/material/ProgressIndicatorKt;->l(Landroidx/compose/runtime/State;)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic u(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/ProgressIndicatorKt;->E(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    .line 4
    return-void
.end method

.method public static final synthetic v(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p6}, Landroidx/compose/material/ProgressIndicatorKt;->F(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    .line 4
    return-void
.end method

.method public static final synthetic w(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJF)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/ProgressIndicatorKt;->G(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJF)V

    .line 4
    return-void
.end method

.method public static final synthetic x(Landroidx/compose/ui/graphics/drawscope/DrawScope;JF)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/ProgressIndicatorKt;->H(Landroidx/compose/ui/graphics/drawscope/DrawScope;JF)V

    .line 4
    return-void
.end method

.method public static final synthetic y()Landroidx/compose/animation/core/CubicBezierEasing;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/ProgressIndicatorKt;->CircularEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    return-object v0
.end method

.method public static final synthetic z()Landroidx/compose/animation/core/CubicBezierEasing;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/ProgressIndicatorKt;->FirstLineHeadEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    return-object v0
.end method
