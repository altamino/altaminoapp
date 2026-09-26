.class public final Lcoil/compose/f;
.super Landroidx/compose/ui/graphics/painter/Painter;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCrossfadePainter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CrossfadePainter.kt\ncoil/compose/CrossfadePainter\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 Size.kt\nandroidx/compose/ui/geometry/SizeKt\n+ 4 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n*L\n1#1,128:1\n76#2:129\n102#2,2:130\n76#2:132\n102#2,2:133\n76#2:135\n102#2,2:136\n152#3:138\n152#3:139\n159#3:140\n159#3:146\n159#3:147\n104#4:141\n66#4,4:142\n*S KotlinDebug\n*F\n+ 1 CrossfadePainter.kt\ncoil/compose/CrossfadePainter\n*L\n36#1:129\n36#1:130,2\n40#1:132\n40#1:133,2\n41#1:135\n41#1:136,2\n87#1:138\n88#1:139\n109#1:140\n123#1:146\n124#1:147\n112#1:141\n112#1:142,4\n*E\n"
.end annotation


# instance fields
.field private final colorFilter$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final contentScale:Landroidx/compose/ui/layout/ContentScale;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final durationMillis:I

.field private final end:Landroidx/compose/ui/graphics/painter/Painter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final fadeStart:Z

.field private final invalidateTick$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isDone:Z

.field private final maxAlpha$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final preferExactIntrinsicSize:Z

.field private start:Landroidx/compose/ui/graphics/painter/Painter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private startTimeMillis:J


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/layout/ContentScale;IZZ)V
    .locals 0
    .param p1    # Landroidx/compose/ui/graphics/painter/Painter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/graphics/painter/Painter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/layout/ContentScale;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcoil/compose/f;->start:Landroidx/compose/ui/graphics/painter/Painter;

    .line 6
    .line 7
    iput-object p2, p0, Lcoil/compose/f;->end:Landroidx/compose/ui/graphics/painter/Painter;

    .line 8
    .line 9
    iput-object p3, p0, Lcoil/compose/f;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 10
    .line 11
    iput p4, p0, Lcoil/compose/f;->durationMillis:I

    .line 12
    .line 13
    iput-boolean p5, p0, Lcoil/compose/f;->fadeStart:Z

    .line 14
    .line 15
    iput-boolean p6, p0, Lcoil/compose/f;->preferExactIntrinsicSize:Z

    .line 16
    const/4 p1, 0x0

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object p1

    .line 21
    const/4 p2, 0x0

    .line 22
    const/4 p3, 0x2

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iput-object p1, p0, Lcoil/compose/f;->invalidateTick$delegate:Landroidx/compose/runtime/MutableState;

    .line 29
    .line 30
    const-wide/16 p4, -0x1

    .line 31
    .line 32
    iput-wide p4, p0, Lcoil/compose/f;->startTimeMillis:J

    .line 33
    .line 34
    const/high16 p1, 0x3f800000    # 1.0f

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-static {p1, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    iput-object p1, p0, Lcoil/compose/f;->maxAlpha$delegate:Landroidx/compose/runtime/MutableState;

    .line 45
    .line 46
    .line 47
    invoke-static {p2, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    iput-object p1, p0, Lcoil/compose/f;->colorFilter$delegate:Landroidx/compose/runtime/MutableState;

    .line 51
    return-void
.end method

.method private final n(JJ)J
    .locals 3

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->a()J

    .line 6
    move-result-wide v1

    .line 7
    .line 8
    cmp-long v1, p1, v1

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->k(J)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    :goto_0
    return-wide p3

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->a()J

    .line 22
    move-result-wide v0

    .line 23
    .line 24
    cmp-long v0, p3, v0

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    goto :goto_1

    .line 28
    .line 29
    .line 30
    :cond_2
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Size;->k(J)Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    :goto_1
    return-wide p3

    .line 35
    .line 36
    :cond_3
    iget-object v0, p0, Lcoil/compose/f;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/ContentScale;->a(JJ)J

    .line 40
    move-result-wide p3

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p2, p3, p4}, Landroidx/compose/ui/layout/ScaleFactorKt;->d(JJ)J

    .line 44
    move-result-wide p1

    .line 45
    return-wide p1
.end method

.method private final o()J
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/compose/f;->start:Landroidx/compose/ui/graphics/painter/Painter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/painter/Painter;->k()J

    .line 8
    move-result-wide v0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->b()J

    .line 15
    move-result-wide v0

    .line 16
    .line 17
    :goto_0
    iget-object v2, p0, Lcoil/compose/f;->end:Landroidx/compose/ui/graphics/painter/Painter;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/painter/Painter;->k()J

    .line 23
    move-result-wide v2

    .line 24
    goto :goto_1

    .line 25
    .line 26
    :cond_1
    sget-object v2, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Size$Companion;->b()J

    .line 30
    move-result-wide v2

    .line 31
    .line 32
    :goto_1
    sget-object v4, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Size$Companion;->a()J

    .line 36
    move-result-wide v5

    .line 37
    .line 38
    cmp-long v5, v0, v5

    .line 39
    const/4 v6, 0x0

    .line 40
    const/4 v7, 0x1

    .line 41
    .line 42
    if-eqz v5, :cond_2

    .line 43
    move v5, v7

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    move v5, v6

    .line 46
    .line 47
    .line 48
    :goto_2
    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Size$Companion;->a()J

    .line 49
    move-result-wide v8

    .line 50
    .line 51
    cmp-long v8, v2, v8

    .line 52
    .line 53
    if-eqz v8, :cond_3

    .line 54
    move v6, v7

    .line 55
    .line 56
    :cond_3
    if-eqz v5, :cond_4

    .line 57
    .line 58
    if-eqz v6, :cond_4

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 62
    move-result v4

    .line 63
    .line 64
    .line 65
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 66
    move-result v5

    .line 67
    .line 68
    .line 69
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    .line 70
    move-result v4

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 74
    move-result v0

    .line 75
    .line 76
    .line 77
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 78
    move-result v1

    .line 79
    .line 80
    .line 81
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 82
    move-result v0

    .line 83
    .line 84
    .line 85
    invoke-static {v4, v0}, Landroidx/compose/ui/geometry/SizeKt;->a(FF)J

    .line 86
    move-result-wide v0

    .line 87
    return-wide v0

    .line 88
    .line 89
    :cond_4
    iget-boolean v7, p0, Lcoil/compose/f;->preferExactIntrinsicSize:Z

    .line 90
    .line 91
    if-eqz v7, :cond_6

    .line 92
    .line 93
    if-eqz v5, :cond_5

    .line 94
    return-wide v0

    .line 95
    .line 96
    :cond_5
    if-eqz v6, :cond_6

    .line 97
    return-wide v2

    .line 98
    .line 99
    .line 100
    :cond_6
    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Size$Companion;->a()J

    .line 101
    move-result-wide v0

    .line 102
    return-wide v0
.end method

.method private final p(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/painter/Painter;F)V
    .locals 10

    .line 1
    .line 2
    if-eqz p2, :cond_3

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    cmpg-float v0, p3, v0

    .line 6
    .line 7
    if-gtz v0, :cond_0

    .line 8
    goto :goto_1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/painter/Painter;->k()J

    .line 16
    move-result-wide v2

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v2, v3, v0, v1}, Lcoil/compose/f;->n(JJ)J

    .line 20
    move-result-wide v6

    .line 21
    .line 22
    sget-object v2, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Size$Companion;->a()J

    .line 26
    move-result-wide v2

    .line 27
    .line 28
    cmp-long v2, v0, v2

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->k(J)Z

    .line 35
    move-result v2

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-direct {p0}, Lcoil/compose/f;->q()Landroidx/compose/ui/graphics/ColorFilter;

    .line 41
    move-result-object v9

    .line 42
    move-object v4, p2

    .line 43
    move-object v5, p1

    .line 44
    move v8, p3

    .line 45
    .line 46
    .line 47
    invoke-virtual/range {v4 .. v9}, Landroidx/compose/ui/graphics/painter/Painter;->j(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFLandroidx/compose/ui/graphics/ColorFilter;)V

    .line 48
    goto :goto_1

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 52
    move-result v2

    .line 53
    .line 54
    .line 55
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 56
    move-result v3

    .line 57
    sub-float/2addr v2, v3

    .line 58
    const/4 v3, 0x2

    .line 59
    int-to-float v3, v3

    .line 60
    div-float/2addr v2, v3

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 64
    move-result v0

    .line 65
    .line 66
    .line 67
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 68
    move-result v1

    .line 69
    sub-float/2addr v0, v1

    .line 70
    div-float/2addr v0, v3

    .line 71
    .line 72
    .line 73
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->T()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    .line 77
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->d()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    .line 81
    invoke-interface {v1, v2, v0, v2, v0}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->f(FFFF)V

    .line 82
    .line 83
    .line 84
    invoke-direct {p0}, Lcoil/compose/f;->q()Landroidx/compose/ui/graphics/ColorFilter;

    .line 85
    move-result-object v9

    .line 86
    move-object v4, p2

    .line 87
    move-object v5, p1

    .line 88
    move v8, p3

    .line 89
    .line 90
    .line 91
    invoke-virtual/range {v4 .. v9}, Landroidx/compose/ui/graphics/painter/Painter;->j(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFLandroidx/compose/ui/graphics/ColorFilter;)V

    .line 92
    .line 93
    .line 94
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->T()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    .line 98
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->d()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    .line 99
    move-result-object p1

    .line 100
    neg-float p2, v2

    .line 101
    neg-float p3, v0

    .line 102
    .line 103
    .line 104
    invoke-interface {p1, p2, p3, p2, p3}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->f(FFFF)V

    .line 105
    :cond_3
    :goto_1
    return-void
.end method

.method private final q()Landroidx/compose/ui/graphics/ColorFilter;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/compose/f;->colorFilter$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/ui/graphics/ColorFilter;

    .line 9
    return-object v0
.end method

.method private final r()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/compose/f;->invalidateTick$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Number;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final s()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/compose/f;->maxAlpha$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Number;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final t(Landroidx/compose/ui/graphics/ColorFilter;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/compose/f;->colorFilter$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method private final u(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/compose/f;->invalidateTick$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 10
    return-void
.end method

.method private final v(F)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/compose/f;->maxAlpha$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 10
    return-void
.end method


# virtual methods
.method protected a(F)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcoil/compose/f;->v(F)V

    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

.method protected e(Landroidx/compose/ui/graphics/ColorFilter;)Z
    .locals 0
    .param p1    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcoil/compose/f;->t(Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

.method public k()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcoil/compose/f;->o()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method protected m(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 6
    .param p1    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-boolean v0, p0, Lcoil/compose/f;->isDone:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcoil/compose/f;->end:Landroidx/compose/ui/graphics/painter/Painter;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcoil/compose/f;->s()F

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1, v0, v1}, Lcoil/compose/f;->p(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/painter/Painter;F)V

    .line 14
    return-void

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 18
    move-result-wide v0

    .line 19
    .line 20
    iget-wide v2, p0, Lcoil/compose/f;->startTimeMillis:J

    .line 21
    .line 22
    const-wide/16 v4, -0x1

    .line 23
    .line 24
    cmp-long v2, v2, v4

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    iput-wide v0, p0, Lcoil/compose/f;->startTimeMillis:J

    .line 29
    .line 30
    :cond_1
    iget-wide v2, p0, Lcoil/compose/f;->startTimeMillis:J

    .line 31
    sub-long/2addr v0, v2

    .line 32
    long-to-float v0, v0

    .line 33
    .line 34
    iget v1, p0, Lcoil/compose/f;->durationMillis:I

    .line 35
    int-to-float v1, v1

    .line 36
    div-float/2addr v0, v1

    .line 37
    const/4 v1, 0x0

    .line 38
    .line 39
    const/high16 v2, 0x3f800000    # 1.0f

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1, v2}, Lj8/m;->m(FFF)F

    .line 43
    move-result v1

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcoil/compose/f;->s()F

    .line 47
    move-result v3

    .line 48
    mul-float/2addr v1, v3

    .line 49
    .line 50
    iget-boolean v3, p0, Lcoil/compose/f;->fadeStart:Z

    .line 51
    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcoil/compose/f;->s()F

    .line 56
    move-result v3

    .line 57
    sub-float/2addr v3, v1

    .line 58
    goto :goto_0

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-direct {p0}, Lcoil/compose/f;->s()F

    .line 62
    move-result v3

    .line 63
    .line 64
    :goto_0
    cmpl-float v0, v0, v2

    .line 65
    const/4 v2, 0x1

    .line 66
    .line 67
    if-ltz v0, :cond_3

    .line 68
    move v0, v2

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    const/4 v0, 0x0

    .line 71
    .line 72
    :goto_1
    iput-boolean v0, p0, Lcoil/compose/f;->isDone:Z

    .line 73
    .line 74
    iget-object v0, p0, Lcoil/compose/f;->start:Landroidx/compose/ui/graphics/painter/Painter;

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, p1, v0, v3}, Lcoil/compose/f;->p(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/painter/Painter;F)V

    .line 78
    .line 79
    iget-object v0, p0, Lcoil/compose/f;->end:Landroidx/compose/ui/graphics/painter/Painter;

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, p1, v0, v1}, Lcoil/compose/f;->p(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/painter/Painter;F)V

    .line 83
    .line 84
    iget-boolean p1, p0, Lcoil/compose/f;->isDone:Z

    .line 85
    .line 86
    if-eqz p1, :cond_4

    .line 87
    const/4 p1, 0x0

    .line 88
    .line 89
    iput-object p1, p0, Lcoil/compose/f;->start:Landroidx/compose/ui/graphics/painter/Painter;

    .line 90
    goto :goto_2

    .line 91
    .line 92
    .line 93
    :cond_4
    invoke-direct {p0}, Lcoil/compose/f;->r()I

    .line 94
    move-result p1

    .line 95
    add-int/2addr p1, v2

    .line 96
    .line 97
    .line 98
    invoke-direct {p0, p1}, Lcoil/compose/f;->u(I)V

    .line 99
    :goto_2
    return-void
.end method
