.class public final Landroidx/compose/ui/graphics/vector/PathParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;,
        Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPathParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathParser.kt\nandroidx/compose/ui/graphics/vector/PathParser\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,645:1\n107#2:646\n79#2,22:647\n32#3,6:669\n*S KotlinDebug\n*F\n+ 1 PathParser.kt\nandroidx/compose/ui/graphics/vector/PathParser\n*L\n81#1:646\n81#1:647,22\n112#1:669,6\n*E\n"
.end annotation


# instance fields
.field private final ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final segmentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/List;

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x3

    .line 15
    const/4 v3, 0x0

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;-><init>(FFILkotlin/jvm/internal/k;)V

    .line 19
    .line 20
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 21
    .line 22
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1, v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;-><init>(FFILkotlin/jvm/internal/k;)V

    .line 26
    .line 27
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 28
    .line 29
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1, v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;-><init>(FFILkotlin/jvm/internal/k;)V

    .line 33
    .line 34
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->segmentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 35
    .line 36
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1, v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;-><init>(FFILkotlin/jvm/internal/k;)V

    .line 40
    .line 41
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 42
    return-void
.end method

.method private final A(Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;ZLandroidx/compose/ui/graphics/Path;)V
    .locals 3

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 10
    move-result v0

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 16
    move-result v1

    .line 17
    sub-float/2addr v0, v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 21
    .line 22
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 28
    move-result v0

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 34
    move-result v1

    .line 35
    sub-float/2addr v0, v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->c()V

    .line 45
    .line 46
    :goto_0
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 50
    move-result p2

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 56
    move-result v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;->c()F

    .line 60
    move-result v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;->d()F

    .line 64
    move-result v2

    .line 65
    .line 66
    .line 67
    invoke-interface {p3, p2, v0, v1, v2}, Landroidx/compose/ui/graphics/Path;->c(FFFF)V

    .line 68
    .line 69
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 70
    .line 71
    iget-object p3, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 75
    move-result p3

    .line 76
    .line 77
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 81
    move-result v0

    .line 82
    add-float/2addr p3, v0

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 86
    .line 87
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 88
    .line 89
    iget-object p3, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 93
    move-result p3

    .line 94
    .line 95
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 99
    move-result v0

    .line 100
    add-float/2addr p3, v0

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 104
    .line 105
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 109
    move-result p3

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;->c()F

    .line 113
    move-result v0

    .line 114
    add-float/2addr p3, v0

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 118
    .line 119
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 123
    move-result p3

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;->d()F

    .line 127
    move-result p1

    .line 128
    add-float/2addr p3, p1

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 132
    return-void
.end method

.method private final B(Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;Landroidx/compose/ui/graphics/Path;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;->c()F

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {p2, v1, v0}, Landroidx/compose/ui/graphics/Path;->l(FF)V

    .line 9
    .line 10
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;->c()F

    .line 18
    move-result p1

    .line 19
    add-float/2addr v0, p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 23
    return-void
.end method

.method private final E(D)D
    .locals 2

    .line 1
    const/16 v0, 0xb4

    int-to-double v0, v0

    div-double/2addr p1, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p1, v0

    return-wide p1
.end method

.method private final F(Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;Landroidx/compose/ui/graphics/Path;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;->c()F

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 14
    .line 15
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;->c()F

    .line 19
    move-result p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 23
    return-void
.end method

.method private final a(C[F)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/vector/PathNodeKt;->a(C[F)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    return-void
.end method

.method private final c(Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;Landroidx/compose/ui/graphics/Path;)V
    .locals 18

    .line 1
    .line 2
    move-object/from16 v14, p0

    .line 3
    .line 4
    move-object/from16 v0, p0

    .line 5
    .line 6
    move-object/from16 v1, p2

    .line 7
    .line 8
    iget-object v2, v14, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 12
    move-result v2

    .line 13
    float-to-double v2, v2

    .line 14
    .line 15
    iget-object v4, v14, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 19
    move-result v4

    .line 20
    float-to-double v4, v4

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->c()F

    .line 24
    move-result v6

    .line 25
    float-to-double v6, v6

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->d()F

    .line 29
    move-result v8

    .line 30
    float-to-double v8, v8

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->e()F

    .line 34
    move-result v10

    .line 35
    float-to-double v10, v10

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->g()F

    .line 39
    move-result v12

    .line 40
    float-to-double v12, v12

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->f()F

    .line 44
    move-result v15

    .line 45
    float-to-double v14, v15

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->h()Z

    .line 49
    move-result v16

    .line 50
    .line 51
    .line 52
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->i()Z

    .line 53
    move-result v17

    .line 54
    .line 55
    .line 56
    invoke-direct/range {v0 .. v17}, Landroidx/compose/ui/graphics/vector/PathParser;->i(Landroidx/compose/ui/graphics/Path;DDDDDDDZZ)V

    .line 57
    .line 58
    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 59
    .line 60
    .line 61
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->c()F

    .line 62
    move-result v2

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 66
    .line 67
    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 68
    .line 69
    .line 70
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->d()F

    .line 71
    move-result v2

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 75
    .line 76
    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 77
    .line 78
    iget-object v2, v0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 82
    move-result v2

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 86
    .line 87
    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 88
    .line 89
    iget-object v2, v0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 93
    move-result v2

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 97
    return-void
.end method

.method private final d(Landroidx/compose/ui/graphics/Path;DDDDDDDDD)V
    .locals 48

    .line 1
    .line 2
    move-wide/from16 v0, p6

    .line 3
    const/4 v2, 0x4

    .line 4
    int-to-double v2, v2

    .line 5
    .line 6
    mul-double v4, p18, v2

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    .line 12
    div-double/2addr v4, v6

    .line 13
    .line 14
    .line 15
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    .line 16
    move-result-wide v4

    .line 17
    .line 18
    .line 19
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 20
    move-result-wide v4

    .line 21
    double-to-int v4, v4

    .line 22
    .line 23
    .line 24
    invoke-static/range {p14 .. p15}, Ljava/lang/Math;->cos(D)D

    .line 25
    move-result-wide v5

    .line 26
    .line 27
    .line 28
    invoke-static/range {p14 .. p15}, Ljava/lang/Math;->sin(D)D

    .line 29
    move-result-wide v7

    .line 30
    .line 31
    .line 32
    invoke-static/range {p16 .. p17}, Ljava/lang/Math;->cos(D)D

    .line 33
    move-result-wide v9

    .line 34
    .line 35
    .line 36
    invoke-static/range {p16 .. p17}, Ljava/lang/Math;->sin(D)D

    .line 37
    move-result-wide v11

    .line 38
    neg-double v13, v0

    .line 39
    .line 40
    mul-double v15, v13, v5

    .line 41
    .line 42
    mul-double v17, v15, v11

    .line 43
    .line 44
    mul-double v19, p8, v7

    .line 45
    .line 46
    mul-double v21, v19, v9

    .line 47
    .line 48
    sub-double v17, v17, v21

    .line 49
    mul-double/2addr v13, v7

    .line 50
    mul-double/2addr v11, v13

    .line 51
    .line 52
    mul-double v21, p8, v5

    .line 53
    .line 54
    mul-double v9, v9, v21

    .line 55
    add-double/2addr v11, v9

    .line 56
    int-to-double v9, v4

    .line 57
    .line 58
    div-double v9, p18, v9

    .line 59
    .line 60
    const/16 v23, 0x0

    .line 61
    .line 62
    move-wide/from16 p8, p10

    .line 63
    .line 64
    move-wide/from16 v25, v11

    .line 65
    .line 66
    move-wide/from16 v27, v17

    .line 67
    .line 68
    move/from16 v11, v23

    .line 69
    .line 70
    move-wide/from16 v17, p12

    .line 71
    .line 72
    move-wide/from16 v23, p16

    .line 73
    .line 74
    :goto_0
    if-ge v11, v4, :cond_0

    .line 75
    .line 76
    add-double v29, v23, v9

    .line 77
    .line 78
    .line 79
    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->sin(D)D

    .line 80
    move-result-wide v31

    .line 81
    .line 82
    .line 83
    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->cos(D)D

    .line 84
    move-result-wide v33

    .line 85
    .line 86
    mul-double v35, v0, v5

    .line 87
    .line 88
    mul-double v35, v35, v33

    .line 89
    .line 90
    add-double v35, p2, v35

    .line 91
    .line 92
    mul-double v37, v19, v31

    .line 93
    move v12, v4

    .line 94
    .line 95
    move-wide/from16 v39, v5

    .line 96
    .line 97
    sub-double v4, v35, v37

    .line 98
    .line 99
    mul-double v35, v0, v7

    .line 100
    .line 101
    mul-double v35, v35, v33

    .line 102
    .line 103
    add-double v35, p4, v35

    .line 104
    .line 105
    mul-double v37, v21, v31

    .line 106
    .line 107
    add-double v0, v35, v37

    .line 108
    .line 109
    mul-double v35, v15, v31

    .line 110
    .line 111
    mul-double v37, v19, v33

    .line 112
    .line 113
    sub-double v35, v35, v37

    .line 114
    .line 115
    mul-double v31, v31, v13

    .line 116
    .line 117
    mul-double v33, v33, v21

    .line 118
    .line 119
    add-double v31, v31, v33

    .line 120
    .line 121
    sub-double v23, v29, v23

    .line 122
    const/4 v6, 0x2

    .line 123
    .line 124
    move-wide/from16 p14, v7

    .line 125
    int-to-double v6, v6

    .line 126
    .line 127
    div-double v6, v23, v6

    .line 128
    .line 129
    .line 130
    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    .line 131
    move-result-wide v6

    .line 132
    .line 133
    .line 134
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    .line 135
    move-result-wide v23

    .line 136
    .line 137
    const-wide/high16 v33, 0x4008000000000000L    # 3.0

    .line 138
    .line 139
    mul-double v33, v33, v6

    .line 140
    .line 141
    mul-double v33, v33, v6

    .line 142
    .line 143
    add-double v33, v2, v33

    .line 144
    .line 145
    .line 146
    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->sqrt(D)D

    .line 147
    move-result-wide v6

    .line 148
    const/4 v8, 0x1

    .line 149
    .line 150
    move-wide/from16 v33, v2

    .line 151
    int-to-double v2, v8

    .line 152
    sub-double/2addr v6, v2

    .line 153
    .line 154
    mul-double v23, v23, v6

    .line 155
    const/4 v2, 0x3

    .line 156
    int-to-double v2, v2

    .line 157
    .line 158
    div-double v23, v23, v2

    .line 159
    .line 160
    mul-double v27, v27, v23

    .line 161
    .line 162
    move-wide/from16 v2, p8

    .line 163
    .line 164
    add-double v2, v2, v27

    .line 165
    .line 166
    mul-double v25, v25, v23

    .line 167
    .line 168
    add-double v6, v17, v25

    .line 169
    .line 170
    mul-double v17, v23, v35

    .line 171
    .line 172
    move-wide/from16 p8, v9

    .line 173
    .line 174
    sub-double v8, v4, v17

    .line 175
    .line 176
    mul-double v23, v23, v31

    .line 177
    .line 178
    move/from16 p10, v12

    .line 179
    .line 180
    move-wide/from16 v17, v13

    .line 181
    .line 182
    sub-double v12, v0, v23

    .line 183
    double-to-float v2, v2

    .line 184
    double-to-float v3, v6

    .line 185
    double-to-float v6, v8

    .line 186
    double-to-float v7, v12

    .line 187
    double-to-float v8, v4

    .line 188
    double-to-float v9, v0

    .line 189
    .line 190
    move-object/from16 v41, p1

    .line 191
    .line 192
    move/from16 v42, v2

    .line 193
    .line 194
    move/from16 v43, v3

    .line 195
    .line 196
    move/from16 v44, v6

    .line 197
    .line 198
    move/from16 v45, v7

    .line 199
    .line 200
    move/from16 v46, v8

    .line 201
    .line 202
    move/from16 v47, v9

    .line 203
    .line 204
    .line 205
    invoke-interface/range {v41 .. v47}, Landroidx/compose/ui/graphics/Path;->cubicTo(FFFFFF)V

    .line 206
    .line 207
    add-int/lit8 v11, v11, 0x1

    .line 208
    .line 209
    move-wide/from16 v9, p8

    .line 210
    .line 211
    move-wide/from16 v7, p14

    .line 212
    .line 213
    move-wide/from16 p8, v4

    .line 214
    .line 215
    move-wide/from16 v13, v17

    .line 216
    .line 217
    move-wide/from16 v23, v29

    .line 218
    .line 219
    move-wide/from16 v25, v31

    .line 220
    .line 221
    move-wide/from16 v2, v33

    .line 222
    .line 223
    move-wide/from16 v27, v35

    .line 224
    .line 225
    move-wide/from16 v5, v39

    .line 226
    .line 227
    move/from16 v4, p10

    .line 228
    .line 229
    move-wide/from16 v17, v0

    .line 230
    .line 231
    move-wide/from16 v0, p6

    .line 232
    .line 233
    goto/16 :goto_0

    .line 234
    :cond_0
    return-void
.end method

.method private final f(Landroidx/compose/ui/graphics/Path;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->segmentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->segmentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 19
    move-result v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->segmentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 30
    move-result v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->segmentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 41
    move-result v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Path;->close()V

    .line 48
    .line 49
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 53
    move-result v0

    .line 54
    .line 55
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 59
    move-result v1

    .line 60
    .line 61
    .line 62
    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/graphics/Path;->moveTo(FF)V

    .line 63
    return-void
.end method

.method private final g([FII)[F
    .locals 2

    .line 1
    .line 2
    if-gt p2, p3, :cond_1

    .line 3
    array-length v0, p1

    .line 4
    .line 5
    if-ltz p2, :cond_0

    .line 6
    .line 7
    if-gt p2, v0, :cond_0

    .line 8
    sub-int/2addr p3, p2

    .line 9
    sub-int/2addr v0, p2

    .line 10
    .line 11
    .line 12
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 13
    move-result v0

    .line 14
    .line 15
    new-array p3, p3, [F

    .line 16
    const/4 v1, 0x0

    .line 17
    add-int/2addr v0, p2

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p3, v1, p2, v0}, Lkotlin/collections/l;->f([F[FIII)[F

    .line 21
    return-object p3

    .line 22
    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 24
    .line 25
    .line 26
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 27
    throw p1

    .line 28
    .line 29
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    .line 32
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 33
    throw p1
.end method

.method private final h(Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;Landroidx/compose/ui/graphics/Path;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->c()F

    .line 4
    move-result v1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->f()F

    .line 8
    move-result v2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->d()F

    .line 12
    move-result v3

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->g()F

    .line 16
    move-result v4

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->e()F

    .line 20
    move-result v5

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->h()F

    .line 24
    move-result v6

    .line 25
    move-object v0, p2

    .line 26
    .line 27
    .line 28
    invoke-interface/range {v0 .. v6}, Landroidx/compose/ui/graphics/Path;->cubicTo(FFFFFF)V

    .line 29
    .line 30
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->d()F

    .line 34
    move-result v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 38
    .line 39
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->g()F

    .line 43
    move-result v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 47
    .line 48
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->e()F

    .line 52
    move-result v0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 56
    .line 57
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->h()F

    .line 61
    move-result p1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 65
    return-void
.end method

.method private final i(Landroidx/compose/ui/graphics/Path;DDDDDDDZZ)V
    .locals 34

    .line 1
    .line 2
    move-wide/from16 v14, p2

    .line 3
    .line 4
    move-wide/from16 v6, p6

    .line 5
    .line 6
    move-object/from16 v8, p0

    .line 7
    .line 8
    move-wide/from16 v4, p14

    .line 9
    .line 10
    move/from16 v9, p17

    .line 11
    .line 12
    .line 13
    invoke-direct {v8, v4, v5}, Landroidx/compose/ui/graphics/vector/PathParser;->E(D)D

    .line 14
    move-result-wide v16

    .line 15
    .line 16
    .line 17
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    .line 18
    move-result-wide v0

    .line 19
    .line 20
    .line 21
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    .line 22
    move-result-wide v10

    .line 23
    .line 24
    mul-double v2, v14, v0

    .line 25
    .line 26
    mul-double v12, p4, v10

    .line 27
    add-double/2addr v2, v12

    .line 28
    .line 29
    div-double v2, v2, p10

    .line 30
    neg-double v12, v14

    .line 31
    mul-double/2addr v12, v10

    .line 32
    .line 33
    mul-double v18, p4, v0

    .line 34
    .line 35
    add-double v12, v12, v18

    .line 36
    .line 37
    div-double v12, v12, p12

    .line 38
    .line 39
    mul-double v18, v6, v0

    .line 40
    .line 41
    mul-double v20, p8, v10

    .line 42
    .line 43
    add-double v18, v18, v20

    .line 44
    .line 45
    div-double v18, v18, p10

    .line 46
    neg-double v4, v6

    .line 47
    mul-double/2addr v4, v10

    .line 48
    .line 49
    mul-double v20, p8, v0

    .line 50
    .line 51
    add-double v4, v4, v20

    .line 52
    .line 53
    div-double v4, v4, p12

    .line 54
    .line 55
    sub-double v20, v2, v18

    .line 56
    .line 57
    sub-double v22, v12, v4

    .line 58
    .line 59
    add-double v24, v2, v18

    .line 60
    const/4 v6, 0x2

    .line 61
    int-to-double v6, v6

    .line 62
    .line 63
    div-double v24, v24, v6

    .line 64
    .line 65
    add-double v26, v12, v4

    .line 66
    .line 67
    div-double v26, v26, v6

    .line 68
    .line 69
    mul-double v6, v20, v20

    .line 70
    .line 71
    mul-double v28, v22, v22

    .line 72
    .line 73
    add-double v6, v6, v28

    .line 74
    .line 75
    const-wide/16 v28, 0x0

    .line 76
    .line 77
    cmpg-double v30, v6, v28

    .line 78
    .line 79
    if-nez v30, :cond_0

    .line 80
    return-void

    .line 81
    .line 82
    :cond_0
    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    .line 83
    .line 84
    div-double v30, v30, v6

    .line 85
    .line 86
    const-wide/high16 v32, 0x3fd0000000000000L    # 0.25

    .line 87
    .line 88
    sub-double v30, v30, v32

    .line 89
    .line 90
    cmpg-double v32, v30, v28

    .line 91
    .line 92
    if-gez v32, :cond_1

    .line 93
    .line 94
    .line 95
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 96
    move-result-wide v0

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    const-wide v2, 0x3ffffff583a53b8eL    # 1.99999

    .line 102
    div-double/2addr v0, v2

    .line 103
    double-to-float v0, v0

    .line 104
    float-to-double v0, v0

    .line 105
    .line 106
    mul-double v10, p10, v0

    .line 107
    .line 108
    mul-double v12, p12, v0

    .line 109
    .line 110
    move-object/from16 v0, p0

    .line 111
    .line 112
    move-object/from16 v1, p1

    .line 113
    .line 114
    move-wide/from16 v2, p2

    .line 115
    .line 116
    move-wide/from16 v4, p4

    .line 117
    .line 118
    move-wide/from16 v6, p6

    .line 119
    move v14, v9

    .line 120
    .line 121
    move-wide/from16 v8, p8

    .line 122
    .line 123
    move-wide/from16 v14, p14

    .line 124
    .line 125
    move/from16 v16, p16

    .line 126
    .line 127
    move/from16 v17, p17

    .line 128
    .line 129
    .line 130
    invoke-direct/range {v0 .. v17}, Landroidx/compose/ui/graphics/vector/PathParser;->i(Landroidx/compose/ui/graphics/Path;DDDDDDDZZ)V

    .line 131
    return-void

    .line 132
    .line 133
    .line 134
    :cond_1
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sqrt(D)D

    .line 135
    move-result-wide v6

    .line 136
    .line 137
    mul-double v20, v20, v6

    .line 138
    .line 139
    mul-double v6, v6, v22

    .line 140
    .line 141
    move/from16 v8, p16

    .line 142
    .line 143
    move/from16 v9, p17

    .line 144
    .line 145
    if-ne v8, v9, :cond_2

    .line 146
    .line 147
    sub-double v24, v24, v6

    .line 148
    .line 149
    add-double v26, v26, v20

    .line 150
    goto :goto_0

    .line 151
    .line 152
    :cond_2
    add-double v24, v24, v6

    .line 153
    .line 154
    sub-double v26, v26, v20

    .line 155
    .line 156
    :goto_0
    sub-double v12, v12, v26

    .line 157
    .line 158
    sub-double v2, v2, v24

    .line 159
    .line 160
    .line 161
    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    .line 162
    move-result-wide v20

    .line 163
    .line 164
    sub-double v4, v4, v26

    .line 165
    .line 166
    sub-double v2, v18, v24

    .line 167
    .line 168
    .line 169
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    .line 170
    move-result-wide v2

    .line 171
    .line 172
    sub-double v2, v2, v20

    .line 173
    .line 174
    cmpl-double v4, v2, v28

    .line 175
    .line 176
    if-ltz v4, :cond_3

    .line 177
    const/4 v5, 0x1

    .line 178
    goto :goto_1

    .line 179
    :cond_3
    const/4 v5, 0x0

    .line 180
    .line 181
    :goto_1
    if-eq v9, v5, :cond_4

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    .line 187
    .line 188
    if-lez v4, :cond_5

    .line 189
    sub-double/2addr v2, v5

    .line 190
    .line 191
    :cond_4
    :goto_2
    move-wide/from16 v18, v2

    .line 192
    goto :goto_3

    .line 193
    :cond_5
    add-double/2addr v2, v5

    .line 194
    goto :goto_2

    .line 195
    .line 196
    :goto_3
    mul-double v24, v24, p10

    .line 197
    .line 198
    mul-double v26, v26, p12

    .line 199
    .line 200
    mul-double v2, v24, v0

    .line 201
    .line 202
    mul-double v4, v26, v10

    .line 203
    sub-double/2addr v2, v4

    .line 204
    .line 205
    mul-double v24, v24, v10

    .line 206
    .line 207
    mul-double v26, v26, v0

    .line 208
    .line 209
    add-double v4, v24, v26

    .line 210
    .line 211
    move-object/from16 v0, p0

    .line 212
    .line 213
    move-object/from16 v1, p1

    .line 214
    .line 215
    move-wide/from16 v6, p10

    .line 216
    .line 217
    move-wide/from16 v8, p12

    .line 218
    .line 219
    move-wide/from16 v10, p2

    .line 220
    .line 221
    move-wide/from16 v12, p4

    .line 222
    .line 223
    move-wide/from16 v14, v16

    .line 224
    .line 225
    move-wide/from16 v16, v20

    .line 226
    .line 227
    .line 228
    invoke-direct/range {v0 .. v19}, Landroidx/compose/ui/graphics/vector/PathParser;->d(Landroidx/compose/ui/graphics/Path;DDDDDDDDD)V

    .line 229
    return-void
.end method

.method private final j(Ljava/lang/String;ILandroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3, v0}, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;->d(Z)V

    .line 5
    move v1, p2

    .line 6
    move v2, v0

    .line 7
    move v3, v2

    .line 8
    move v4, v3

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 12
    move-result v5

    .line 13
    .line 14
    if-ge v1, v5, :cond_8

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 18
    move-result v5

    .line 19
    .line 20
    const/16 v6, 0x20

    .line 21
    const/4 v7, 0x1

    .line 22
    .line 23
    if-ne v5, v6, :cond_0

    .line 24
    goto :goto_1

    .line 25
    .line 26
    :cond_0
    const/16 v6, 0x2c

    .line 27
    .line 28
    if-ne v5, v6, :cond_1

    .line 29
    :goto_1
    move v2, v0

    .line 30
    move v4, v7

    .line 31
    goto :goto_3

    .line 32
    .line 33
    :cond_1
    const/16 v6, 0x2d

    .line 34
    .line 35
    if-ne v5, v6, :cond_2

    .line 36
    .line 37
    if-eq v1, p2, :cond_6

    .line 38
    .line 39
    if-nez v2, :cond_6

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3, v7}, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;->d(Z)V

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_2
    const/16 v2, 0x2e

    .line 46
    .line 47
    if-ne v5, v2, :cond_4

    .line 48
    .line 49
    if-nez v3, :cond_3

    .line 50
    move v2, v0

    .line 51
    move v3, v7

    .line 52
    goto :goto_3

    .line 53
    .line 54
    .line 55
    :cond_3
    invoke-virtual {p3, v7}, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;->d(Z)V

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_4
    const/16 v2, 0x65

    .line 59
    .line 60
    if-ne v5, v2, :cond_5

    .line 61
    goto :goto_2

    .line 62
    .line 63
    :cond_5
    const/16 v2, 0x45

    .line 64
    .line 65
    if-ne v5, v2, :cond_6

    .line 66
    :goto_2
    move v2, v7

    .line 67
    goto :goto_3

    .line 68
    :cond_6
    move v2, v0

    .line 69
    .line 70
    :goto_3
    if-eqz v4, :cond_7

    .line 71
    goto :goto_4

    .line 72
    .line 73
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 74
    goto :goto_0

    .line 75
    .line 76
    .line 77
    :cond_8
    :goto_4
    invoke-virtual {p3, v1}, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;->c(I)V

    .line 78
    return-void
.end method

.method private final k(Ljava/lang/String;)[F
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 5
    move-result v1

    .line 6
    .line 7
    const/16 v2, 0x7a

    .line 8
    .line 9
    if-eq v1, v2, :cond_4

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 13
    move-result v1

    .line 14
    .line 15
    const/16 v2, 0x5a

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    goto :goto_1

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 22
    move-result v1

    .line 23
    .line 24
    new-array v1, v1, [F

    .line 25
    .line 26
    new-instance v2, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;

    .line 27
    const/4 v3, 0x3

    .line 28
    const/4 v4, 0x0

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, v0, v0, v3, v4}, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;-><init>(IZILkotlin/jvm/internal/k;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 35
    move-result v3

    .line 36
    const/4 v4, 0x1

    .line 37
    move v5, v0

    .line 38
    .line 39
    :goto_0
    if-ge v4, v3, :cond_3

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p1, v4, v2}, Landroidx/compose/ui/graphics/vector/PathParser;->j(Ljava/lang/String;ILandroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;->a()I

    .line 46
    move-result v6

    .line 47
    .line 48
    if-ge v4, v6, :cond_1

    .line 49
    .line 50
    add-int/lit8 v7, v5, 0x1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 54
    move-result-object v4

    .line 55
    .line 56
    const-string v8, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 57
    .line 58
    .line 59
    invoke-static {v4, v8}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 63
    move-result v4

    .line 64
    .line 65
    aput v4, v1, v5

    .line 66
    move v5, v7

    .line 67
    .line 68
    .line 69
    :cond_1
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;->b()Z

    .line 70
    move-result v4

    .line 71
    .line 72
    if-eqz v4, :cond_2

    .line 73
    move v4, v6

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :cond_2
    add-int/lit8 v4, v6, 0x1

    .line 77
    goto :goto_0

    .line 78
    .line 79
    .line 80
    :cond_3
    invoke-direct {p0, v1, v0, v5}, Landroidx/compose/ui/graphics/vector/PathParser;->g([FII)[F

    .line 81
    move-result-object p1

    .line 82
    return-object p1

    .line 83
    .line 84
    :cond_4
    :goto_1
    new-array p1, v0, [F

    .line 85
    return-object p1
.end method

.method private final l(Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;Landroidx/compose/ui/graphics/Path;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;->c()F

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 14
    .line 15
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;->c()F

    .line 19
    move-result p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 23
    return-void
.end method

.method private final m(Landroidx/compose/ui/graphics/vector/PathNode$LineTo;Landroidx/compose/ui/graphics/Path;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;->c()F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;->d()F

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 12
    .line 13
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;->c()F

    .line 17
    move-result v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 21
    .line 22
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;->d()F

    .line 26
    move-result p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 30
    return-void
.end method

.method private final n(Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;Landroidx/compose/ui/graphics/Path;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;->c()F

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;->d()F

    .line 15
    move-result v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;->c()F

    .line 22
    move-result v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;->d()F

    .line 26
    move-result p1

    .line 27
    .line 28
    .line 29
    invoke-interface {p2, v0, p1}, Landroidx/compose/ui/graphics/Path;->moveTo(FF)V

    .line 30
    .line 31
    iget-object p1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->segmentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 32
    .line 33
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 37
    move-result p2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 41
    .line 42
    iget-object p1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->segmentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 43
    .line 44
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 48
    move-result p2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 52
    return-void
.end method

.method private final o(Ljava/lang/String;I)I
    .locals 3

    .line 1
    .line 2
    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-ge p2, v0, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 10
    move-result v0

    .line 11
    .line 12
    add-int/lit8 v1, v0, -0x41

    .line 13
    .line 14
    add-int/lit8 v2, v0, -0x5a

    .line 15
    mul-int/2addr v1, v2

    .line 16
    .line 17
    if-lez v1, :cond_0

    .line 18
    .line 19
    add-int/lit8 v1, v0, -0x61

    .line 20
    .line 21
    add-int/lit8 v2, v0, -0x7a

    .line 22
    mul-int/2addr v1, v2

    .line 23
    .line 24
    if-gtz v1, :cond_1

    .line 25
    .line 26
    :cond_0
    const/16 v1, 0x65

    .line 27
    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    const/16 v1, 0x45

    .line 31
    .line 32
    if-eq v0, v1, :cond_1

    .line 33
    return p2

    .line 34
    .line 35
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return p2
.end method

.method private final q(Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;Landroidx/compose/ui/graphics/Path;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->c()F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->e()F

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->d()F

    .line 12
    move-result v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->f()F

    .line 16
    move-result v3

    .line 17
    .line 18
    .line 19
    invoke-interface {p2, v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Path;->h(FFFF)V

    .line 20
    .line 21
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->c()F

    .line 25
    move-result v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 29
    .line 30
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->e()F

    .line 34
    move-result v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 38
    .line 39
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->d()F

    .line 43
    move-result v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 47
    .line 48
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->f()F

    .line 52
    move-result p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 56
    return-void
.end method

.method private final r(Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;ZLandroidx/compose/ui/graphics/Path;)V
    .locals 7

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 5
    const/4 v0, 0x2

    .line 6
    int-to-float v0, v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 12
    move-result v1

    .line 13
    mul-float/2addr v1, v0

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 19
    move-result v2

    .line 20
    sub-float/2addr v1, v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 24
    .line 25
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 26
    .line 27
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 31
    move-result v1

    .line 32
    mul-float/2addr v0, v1

    .line 33
    .line 34
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 38
    move-result v1

    .line 39
    sub-float/2addr v0, v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_0
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 46
    .line 47
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 51
    move-result v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 55
    .line 56
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 57
    .line 58
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 62
    move-result v0

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 66
    .line 67
    :goto_0
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 71
    move-result v1

    .line 72
    .line 73
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 77
    move-result v2

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->c()F

    .line 81
    move-result v3

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->e()F

    .line 85
    move-result v4

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->d()F

    .line 89
    move-result v5

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->f()F

    .line 93
    move-result v6

    .line 94
    move-object v0, p3

    .line 95
    .line 96
    .line 97
    invoke-interface/range {v0 .. v6}, Landroidx/compose/ui/graphics/Path;->cubicTo(FFFFFF)V

    .line 98
    .line 99
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->c()F

    .line 103
    move-result p3

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 107
    .line 108
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->e()F

    .line 112
    move-result p3

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 116
    .line 117
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->d()F

    .line 121
    move-result p3

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 125
    .line 126
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->f()F

    .line 130
    move-result p1

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, p1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 134
    return-void
.end method

.method private final s(Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;ZLandroidx/compose/ui/graphics/Path;)V
    .locals 3

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 5
    const/4 v0, 0x2

    .line 6
    int-to-float v0, v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 12
    move-result v1

    .line 13
    mul-float/2addr v1, v0

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 19
    move-result v2

    .line 20
    sub-float/2addr v1, v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 24
    .line 25
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 26
    .line 27
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 31
    move-result v1

    .line 32
    mul-float/2addr v0, v1

    .line 33
    .line 34
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 38
    move-result v1

    .line 39
    sub-float/2addr v0, v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_0
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 46
    .line 47
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 51
    move-result v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 55
    .line 56
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 57
    .line 58
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 62
    move-result v0

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 66
    .line 67
    :goto_0
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 71
    move-result p2

    .line 72
    .line 73
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 77
    move-result v0

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;->c()F

    .line 81
    move-result v1

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;->d()F

    .line 85
    move-result v2

    .line 86
    .line 87
    .line 88
    invoke-interface {p3, p2, v0, v1, v2}, Landroidx/compose/ui/graphics/Path;->h(FFFF)V

    .line 89
    .line 90
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 91
    .line 92
    iget-object p3, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 96
    move-result p3

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 100
    .line 101
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 102
    .line 103
    iget-object p3, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 107
    move-result p3

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 111
    .line 112
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;->c()F

    .line 116
    move-result p3

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 120
    .line 121
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;->d()F

    .line 125
    move-result p1

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, p1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 129
    return-void
.end method

.method private final t(Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;Landroidx/compose/ui/graphics/Path;)V
    .locals 20

    .line 1
    .line 2
    move-object/from16 v14, p0

    .line 3
    .line 4
    move-object/from16 v0, p0

    .line 5
    .line 6
    move-object/from16 v1, p2

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->c()F

    .line 10
    move-result v2

    .line 11
    .line 12
    iget-object v3, v14, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 16
    move-result v3

    .line 17
    .line 18
    add-float v15, v2, v3

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->d()F

    .line 22
    move-result v2

    .line 23
    .line 24
    iget-object v3, v14, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 28
    move-result v3

    .line 29
    .line 30
    add-float v12, v2, v3

    .line 31
    .line 32
    iget-object v2, v14, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 36
    move-result v2

    .line 37
    float-to-double v2, v2

    .line 38
    .line 39
    iget-object v4, v14, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 43
    move-result v4

    .line 44
    float-to-double v4, v4

    .line 45
    float-to-double v6, v15

    .line 46
    float-to-double v8, v12

    .line 47
    .line 48
    .line 49
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->e()F

    .line 50
    move-result v10

    .line 51
    float-to-double v10, v10

    .line 52
    .line 53
    .line 54
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->g()F

    .line 55
    move-result v13

    .line 56
    .line 57
    move/from16 p2, v12

    .line 58
    float-to-double v12, v13

    .line 59
    .line 60
    move/from16 v18, p2

    .line 61
    .line 62
    .line 63
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->f()F

    .line 64
    move-result v14

    .line 65
    .line 66
    move/from16 p2, v15

    .line 67
    float-to-double v14, v14

    .line 68
    .line 69
    move/from16 v19, p2

    .line 70
    .line 71
    .line 72
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->h()Z

    .line 73
    move-result v16

    .line 74
    .line 75
    .line 76
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->i()Z

    .line 77
    move-result v17

    .line 78
    .line 79
    .line 80
    invoke-direct/range {v0 .. v17}, Landroidx/compose/ui/graphics/vector/PathParser;->i(Landroidx/compose/ui/graphics/Path;DDDDDDDZZ)V

    .line 81
    .line 82
    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 83
    .line 84
    move/from16 v2, v19

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 88
    .line 89
    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 90
    .line 91
    move/from16 v2, v18

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 95
    .line 96
    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 97
    .line 98
    iget-object v2, v0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 102
    move-result v2

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 106
    .line 107
    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 108
    .line 109
    iget-object v2, v0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 113
    move-result v2

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 117
    return-void
.end method

.method private final u(Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;Landroidx/compose/ui/graphics/Path;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->c()F

    .line 4
    move-result v1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->f()F

    .line 8
    move-result v2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->d()F

    .line 12
    move-result v3

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->g()F

    .line 16
    move-result v4

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->e()F

    .line 20
    move-result v5

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->h()F

    .line 24
    move-result v6

    .line 25
    move-object v0, p2

    .line 26
    .line 27
    .line 28
    invoke-interface/range {v0 .. v6}, Landroidx/compose/ui/graphics/Path;->b(FFFFFF)V

    .line 29
    .line 30
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 36
    move-result v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->d()F

    .line 40
    move-result v1

    .line 41
    add-float/2addr v0, v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 45
    .line 46
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 47
    .line 48
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 52
    move-result v0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->g()F

    .line 56
    move-result v1

    .line 57
    add-float/2addr v0, v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 61
    .line 62
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 66
    move-result v0

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->e()F

    .line 70
    move-result v1

    .line 71
    add-float/2addr v0, v1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 75
    .line 76
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 80
    move-result v0

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->h()F

    .line 84
    move-result p1

    .line 85
    add-float/2addr v0, p1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 89
    return-void
.end method

.method private final v(Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;Landroidx/compose/ui/graphics/Path;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;->c()F

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/graphics/Path;->l(FF)V

    .line 9
    .line 10
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;->c()F

    .line 18
    move-result p1

    .line 19
    add-float/2addr v0, p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 23
    return-void
.end method

.method private final w(Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;Landroidx/compose/ui/graphics/Path;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;->c()F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;->d()F

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/graphics/Path;->l(FF)V

    .line 12
    .line 13
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 17
    move-result v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;->c()F

    .line 21
    move-result v1

    .line 22
    add-float/2addr v0, v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 26
    .line 27
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 31
    move-result v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;->d()F

    .line 35
    move-result p1

    .line 36
    add-float/2addr v0, p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 40
    return-void
.end method

.method private final x(Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;Landroidx/compose/ui/graphics/Path;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;->c()F

    .line 10
    move-result v2

    .line 11
    add-float/2addr v1, v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 20
    move-result v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;->d()F

    .line 24
    move-result v2

    .line 25
    add-float/2addr v1, v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;->c()F

    .line 32
    move-result v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;->d()F

    .line 36
    move-result p1

    .line 37
    .line 38
    .line 39
    invoke-interface {p2, v0, p1}, Landroidx/compose/ui/graphics/Path;->a(FF)V

    .line 40
    .line 41
    iget-object p1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->segmentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 42
    .line 43
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 47
    move-result p2

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 51
    .line 52
    iget-object p1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->segmentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 53
    .line 54
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 58
    move-result p2

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 62
    return-void
.end method

.method private final y(Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;Landroidx/compose/ui/graphics/Path;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->c()F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->e()F

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->d()F

    .line 12
    move-result v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->f()F

    .line 16
    move-result v3

    .line 17
    .line 18
    .line 19
    invoke-interface {p2, v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Path;->c(FFFF)V

    .line 20
    .line 21
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 27
    move-result v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->c()F

    .line 31
    move-result v1

    .line 32
    add-float/2addr v0, v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 36
    .line 37
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 38
    .line 39
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 43
    move-result v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->e()F

    .line 47
    move-result v1

    .line 48
    add-float/2addr v0, v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 52
    .line 53
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 57
    move-result v0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->d()F

    .line 61
    move-result v1

    .line 62
    add-float/2addr v0, v1

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 66
    .line 67
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 71
    move-result v0

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->f()F

    .line 75
    move-result p1

    .line 76
    add-float/2addr v0, p1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 80
    return-void
.end method

.method private final z(Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;ZLandroidx/compose/ui/graphics/Path;)V
    .locals 7

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 10
    move-result v0

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 16
    move-result v1

    .line 17
    sub-float/2addr v0, v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 21
    .line 22
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 28
    move-result v0

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 34
    move-result v1

    .line 35
    sub-float/2addr v0, v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->c()V

    .line 45
    .line 46
    :goto_0
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 50
    move-result v1

    .line 51
    .line 52
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 56
    move-result v2

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->c()F

    .line 60
    move-result v3

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->e()F

    .line 64
    move-result v4

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->d()F

    .line 68
    move-result v5

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->f()F

    .line 72
    move-result v6

    .line 73
    move-object v0, p3

    .line 74
    .line 75
    .line 76
    invoke-interface/range {v0 .. v6}, Landroidx/compose/ui/graphics/Path;->b(FFFFFF)V

    .line 77
    .line 78
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 79
    .line 80
    iget-object p3, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 84
    move-result p3

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->c()F

    .line 88
    move-result v0

    .line 89
    add-float/2addr p3, v0

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 93
    .line 94
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 95
    .line 96
    iget-object p3, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 100
    move-result p3

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->e()F

    .line 104
    move-result v0

    .line 105
    add-float/2addr p3, v0

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 109
    .line 110
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->a()F

    .line 114
    move-result p3

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->d()F

    .line 118
    move-result v0

    .line 119
    add-float/2addr p3, v0

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->d(F)V

    .line 123
    .line 124
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->b()F

    .line 128
    move-result p3

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->f()F

    .line 132
    move-result p1

    .line 133
    add-float/2addr p3, p1

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2, p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->e(F)V

    .line 137
    return-void
.end method


# virtual methods
.method public final C()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/List;

    return-object v0
.end method

.method public final D(Landroidx/compose/ui/graphics/Path;)Landroidx/compose/ui/graphics/Path;
    .locals 6
    .param p1    # Landroidx/compose/ui/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "target"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Path;->reset()V

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->c()V

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->c()V

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->segmentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->c()V

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->c()V

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/List;

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    .line 38
    :goto_0
    if-ge v3, v1, :cond_14

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v4

    .line 43
    .line 44
    check-cast v4, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 45
    .line 46
    if-nez v2, :cond_0

    .line 47
    move-object v2, v4

    .line 48
    .line 49
    :cond_0
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$Close;

    .line 50
    .line 51
    if-eqz v5, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->f(Landroidx/compose/ui/graphics/Path;)V

    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :cond_1
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    .line 59
    .line 60
    if-eqz v5, :cond_2

    .line 61
    move-object v2, v4

    .line 62
    .line 63
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->x(Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;Landroidx/compose/ui/graphics/Path;)V

    .line 67
    .line 68
    goto/16 :goto_1

    .line 69
    .line 70
    :cond_2
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    .line 71
    .line 72
    if-eqz v5, :cond_3

    .line 73
    move-object v2, v4

    .line 74
    .line 75
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->n(Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;Landroidx/compose/ui/graphics/Path;)V

    .line 79
    .line 80
    goto/16 :goto_1

    .line 81
    .line 82
    :cond_3
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    .line 83
    .line 84
    if-eqz v5, :cond_4

    .line 85
    move-object v2, v4

    .line 86
    .line 87
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    .line 88
    .line 89
    .line 90
    invoke-direct {p0, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->w(Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;Landroidx/compose/ui/graphics/Path;)V

    .line 91
    .line 92
    goto/16 :goto_1

    .line 93
    .line 94
    :cond_4
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    .line 95
    .line 96
    if-eqz v5, :cond_5

    .line 97
    move-object v2, v4

    .line 98
    .line 99
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    .line 100
    .line 101
    .line 102
    invoke-direct {p0, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->m(Landroidx/compose/ui/graphics/vector/PathNode$LineTo;Landroidx/compose/ui/graphics/Path;)V

    .line 103
    .line 104
    goto/16 :goto_1

    .line 105
    .line 106
    :cond_5
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    .line 107
    .line 108
    if-eqz v5, :cond_6

    .line 109
    move-object v2, v4

    .line 110
    .line 111
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    .line 112
    .line 113
    .line 114
    invoke-direct {p0, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->v(Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;Landroidx/compose/ui/graphics/Path;)V

    .line 115
    .line 116
    goto/16 :goto_1

    .line 117
    .line 118
    :cond_6
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;

    .line 119
    .line 120
    if-eqz v5, :cond_7

    .line 121
    move-object v2, v4

    .line 122
    .line 123
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;

    .line 124
    .line 125
    .line 126
    invoke-direct {p0, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->l(Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;Landroidx/compose/ui/graphics/Path;)V

    .line 127
    .line 128
    goto/16 :goto_1

    .line 129
    .line 130
    :cond_7
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    .line 131
    .line 132
    if-eqz v5, :cond_8

    .line 133
    move-object v2, v4

    .line 134
    .line 135
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    .line 136
    .line 137
    .line 138
    invoke-direct {p0, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->B(Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;Landroidx/compose/ui/graphics/Path;)V

    .line 139
    .line 140
    goto/16 :goto_1

    .line 141
    .line 142
    :cond_8
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;

    .line 143
    .line 144
    if-eqz v5, :cond_9

    .line 145
    move-object v2, v4

    .line 146
    .line 147
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;

    .line 148
    .line 149
    .line 150
    invoke-direct {p0, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->F(Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;Landroidx/compose/ui/graphics/Path;)V

    .line 151
    .line 152
    goto/16 :goto_1

    .line 153
    .line 154
    :cond_9
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;

    .line 155
    .line 156
    if-eqz v5, :cond_a

    .line 157
    move-object v2, v4

    .line 158
    .line 159
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;

    .line 160
    .line 161
    .line 162
    invoke-direct {p0, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->u(Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;Landroidx/compose/ui/graphics/Path;)V

    .line 163
    .line 164
    goto/16 :goto_1

    .line 165
    .line 166
    :cond_a
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    .line 167
    .line 168
    if-eqz v5, :cond_b

    .line 169
    move-object v2, v4

    .line 170
    .line 171
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    .line 172
    .line 173
    .line 174
    invoke-direct {p0, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->h(Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;Landroidx/compose/ui/graphics/Path;)V

    .line 175
    .line 176
    goto/16 :goto_1

    .line 177
    .line 178
    :cond_b
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    .line 179
    .line 180
    if-eqz v5, :cond_c

    .line 181
    move-object v5, v4

    .line 182
    .line 183
    check-cast v5, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    .line 184
    .line 185
    .line 186
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode;->a()Z

    .line 190
    move-result v2

    .line 191
    .line 192
    .line 193
    invoke-direct {p0, v5, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->z(Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;ZLandroidx/compose/ui/graphics/Path;)V

    .line 194
    goto :goto_1

    .line 195
    .line 196
    :cond_c
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    .line 197
    .line 198
    if-eqz v5, :cond_d

    .line 199
    move-object v5, v4

    .line 200
    .line 201
    check-cast v5, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    .line 202
    .line 203
    .line 204
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode;->a()Z

    .line 208
    move-result v2

    .line 209
    .line 210
    .line 211
    invoke-direct {p0, v5, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->r(Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;ZLandroidx/compose/ui/graphics/Path;)V

    .line 212
    goto :goto_1

    .line 213
    .line 214
    :cond_d
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;

    .line 215
    .line 216
    if-eqz v5, :cond_e

    .line 217
    move-object v2, v4

    .line 218
    .line 219
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;

    .line 220
    .line 221
    .line 222
    invoke-direct {p0, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->y(Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;Landroidx/compose/ui/graphics/Path;)V

    .line 223
    goto :goto_1

    .line 224
    .line 225
    :cond_e
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;

    .line 226
    .line 227
    if-eqz v5, :cond_f

    .line 228
    move-object v2, v4

    .line 229
    .line 230
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;

    .line 231
    .line 232
    .line 233
    invoke-direct {p0, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->q(Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;Landroidx/compose/ui/graphics/Path;)V

    .line 234
    goto :goto_1

    .line 235
    .line 236
    :cond_f
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;

    .line 237
    .line 238
    if-eqz v5, :cond_10

    .line 239
    move-object v5, v4

    .line 240
    .line 241
    check-cast v5, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;

    .line 242
    .line 243
    .line 244
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode;->b()Z

    .line 248
    move-result v2

    .line 249
    .line 250
    .line 251
    invoke-direct {p0, v5, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->A(Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;ZLandroidx/compose/ui/graphics/Path;)V

    .line 252
    goto :goto_1

    .line 253
    .line 254
    :cond_10
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;

    .line 255
    .line 256
    if-eqz v5, :cond_11

    .line 257
    move-object v5, v4

    .line 258
    .line 259
    check-cast v5, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;

    .line 260
    .line 261
    .line 262
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode;->b()Z

    .line 266
    move-result v2

    .line 267
    .line 268
    .line 269
    invoke-direct {p0, v5, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->s(Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;ZLandroidx/compose/ui/graphics/Path;)V

    .line 270
    goto :goto_1

    .line 271
    .line 272
    :cond_11
    instance-of v2, v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    .line 273
    .line 274
    if-eqz v2, :cond_12

    .line 275
    move-object v2, v4

    .line 276
    .line 277
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    .line 278
    .line 279
    .line 280
    invoke-direct {p0, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->t(Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;Landroidx/compose/ui/graphics/Path;)V

    .line 281
    goto :goto_1

    .line 282
    .line 283
    :cond_12
    instance-of v2, v4, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;

    .line 284
    .line 285
    if-eqz v2, :cond_13

    .line 286
    move-object v2, v4

    .line 287
    .line 288
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;

    .line 289
    .line 290
    .line 291
    invoke-direct {p0, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->c(Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;Landroidx/compose/ui/graphics/Path;)V

    .line 292
    .line 293
    :cond_13
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 294
    move-object v2, v4

    .line 295
    .line 296
    goto/16 :goto_0

    .line 297
    :cond_14
    return-object p1
.end method

.method public final b(Ljava/util/List;)Landroidx/compose/ui/graphics/vector/PathParser;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;)",
            "Landroidx/compose/ui/graphics/vector/PathParser;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "nodes"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/List;

    .line 8
    .line 9
    check-cast p1, Ljava/util/Collection;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    return-object p0
.end method

.method public final e()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    return-void
.end method

.method public final p(Ljava/lang/String;)Landroidx/compose/ui/graphics/vector/PathParser;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "pathData"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x1

    .line 13
    move v3, v0

    .line 14
    move v2, v1

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 18
    move-result v4

    .line 19
    .line 20
    if-ge v2, v4, :cond_7

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1, v2}, Landroidx/compose/ui/graphics/vector/PathParser;->o(Ljava/lang/String;I)I

    .line 24
    move-result v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    const-string v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 31
    .line 32
    .line 33
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 37
    move-result v4

    .line 38
    sub-int/2addr v4, v1

    .line 39
    move v5, v0

    .line 40
    move v6, v5

    .line 41
    .line 42
    :goto_1
    if-gt v5, v4, :cond_5

    .line 43
    .line 44
    if-nez v6, :cond_0

    .line 45
    move v7, v5

    .line 46
    goto :goto_2

    .line 47
    :cond_0
    move v7, v4

    .line 48
    .line 49
    .line 50
    :goto_2
    invoke-interface {v3, v7}, Ljava/lang/CharSequence;->charAt(I)C

    .line 51
    move-result v7

    .line 52
    .line 53
    const/16 v8, 0x20

    .line 54
    .line 55
    .line 56
    invoke-static {v7, v8}, Lkotlin/jvm/internal/t;->l(II)I

    .line 57
    move-result v7

    .line 58
    .line 59
    if-gtz v7, :cond_1

    .line 60
    move v7, v1

    .line 61
    goto :goto_3

    .line 62
    :cond_1
    move v7, v0

    .line 63
    .line 64
    :goto_3
    if-nez v6, :cond_3

    .line 65
    .line 66
    if-nez v7, :cond_2

    .line 67
    move v6, v1

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 71
    goto :goto_1

    .line 72
    .line 73
    :cond_3
    if-nez v7, :cond_4

    .line 74
    goto :goto_4

    .line 75
    .line 76
    :cond_4
    add-int/lit8 v4, v4, -0x1

    .line 77
    goto :goto_1

    .line 78
    .line 79
    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 80
    .line 81
    .line 82
    invoke-interface {v3, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 83
    move-result-object v3

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    move-result-object v3

    .line 88
    .line 89
    .line 90
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 91
    move-result v4

    .line 92
    .line 93
    if-lez v4, :cond_6

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, v3}, Landroidx/compose/ui/graphics/vector/PathParser;->k(Ljava/lang/String;)[F

    .line 97
    move-result-object v4

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    .line 101
    move-result v3

    .line 102
    .line 103
    .line 104
    invoke-direct {p0, v3, v4}, Landroidx/compose/ui/graphics/vector/PathParser;->a(C[F)V

    .line 105
    .line 106
    :cond_6
    add-int/lit8 v3, v2, 0x1

    .line 107
    move v9, v3

    .line 108
    move v3, v2

    .line 109
    move v2, v9

    .line 110
    goto :goto_0

    .line 111
    :cond_7
    sub-int/2addr v2, v3

    .line 112
    .line 113
    if-ne v2, v1, :cond_8

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 117
    move-result v1

    .line 118
    .line 119
    if-ge v3, v1, :cond_8

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 123
    move-result p1

    .line 124
    .line 125
    new-array v0, v0, [F

    .line 126
    .line 127
    .line 128
    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/graphics/vector/PathParser;->a(C[F)V

    .line 129
    :cond_8
    return-object p0
.end method
