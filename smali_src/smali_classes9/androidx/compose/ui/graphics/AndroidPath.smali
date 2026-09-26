.class public final Landroidx/compose/ui/graphics/AndroidPath;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/graphics/Path;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidPath.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidPath.android.kt\nandroidx/compose/ui/graphics/AndroidPath\n+ 2 AndroidPath.android.kt\nandroidx/compose/ui/graphics/AndroidPath_androidKt\n*L\n1#1,235:1\n35#2,5:236\n35#2,5:241\n*S KotlinDebug\n*F\n+ 1 AndroidPath.android.kt\nandroidx/compose/ui/graphics/AndroidPath\n*L\n172#1:236,5\n211#1:241,5\n*E\n"
.end annotation


# instance fields
.field private final internalPath:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mMatrix:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final radii:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rectF:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Landroidx/compose/ui/graphics/AndroidPath;-><init>(Landroid/graphics/Path;ILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 1
    .param p1    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "internalPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    .line 3
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/AndroidPath;->rectF:Landroid/graphics/RectF;

    const/16 p1, 0x8

    new-array p1, p1, [F

    iput-object p1, p0, Landroidx/compose/ui/graphics/AndroidPath;->radii:[F

    .line 4
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/AndroidPath;->mMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/Path;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 5
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/AndroidPath;-><init>(Landroid/graphics/Path;)V

    return-void
.end method

.method private final m(Landroidx/compose/ui/geometry/Rect;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->j()F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    xor-int/2addr v0, v1

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 16
    move-result v0

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 20
    move-result v0

    .line 21
    xor-int/2addr v0, v1

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->k()F

    .line 27
    move-result v0

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 31
    move-result v0

    .line 32
    xor-int/2addr v0, v1

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->e()F

    .line 38
    move-result p1

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 42
    move-result p1

    .line 43
    xor-int/2addr p1, v1

    .line 44
    .line 45
    if-eqz p1, :cond_0

    .line 46
    return v1

    .line 47
    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string v0, "Rect.bottom is NaN"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p1

    .line 59
    .line 60
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    const-string v0, "Rect.right is NaN"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    throw p1

    .line 71
    .line 72
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 73
    .line 74
    const-string v0, "Rect.top is NaN"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    .line 81
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    throw p1

    .line 83
    .line 84
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    const-string v0, "Rect.left is NaN"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    .line 93
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 94
    throw p1
.end method


# virtual methods
.method public a(FF)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 6
    return-void
.end method

.method public b(FFFFFF)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move v5, p5

    .line 8
    move v6, p6

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 12
    return-void
.end method

.method public c(FFFF)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 6
    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 6
    return-void
.end method

.method public cubicTo(FFFFFF)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move v5, p5

    .line 8
    move v6, p6

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 12
    return-void
.end method

.method public d(J)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPath;->mMatrix:Landroid/graphics/Matrix;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPath;->mMatrix:Landroid/graphics/Matrix;

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 15
    move-result p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 19
    .line 20
    iget-object p1, p0, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    .line 21
    .line 22
    iget-object p2, p0, Landroidx/compose/ui/graphics/AndroidPath;->mMatrix:Landroid/graphics/Matrix;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 26
    return-void
.end method

.method public e(Landroidx/compose/ui/geometry/RoundRect;)V
    .locals 5
    .param p1    # Landroidx/compose/ui/geometry/RoundRect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "roundRect"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPath;->rectF:Landroid/graphics/RectF;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->e()F

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->g()F

    .line 15
    move-result v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->f()F

    .line 19
    move-result v3

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->a()F

    .line 23
    move-result v4

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPath;->radii:[F

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->h()J

    .line 32
    move-result-wide v1

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 36
    move-result v1

    .line 37
    const/4 v2, 0x0

    .line 38
    .line 39
    aput v1, v0, v2

    .line 40
    .line 41
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPath;->radii:[F

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->h()J

    .line 45
    move-result-wide v1

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->f(J)F

    .line 49
    move-result v1

    .line 50
    const/4 v2, 0x1

    .line 51
    .line 52
    aput v1, v0, v2

    .line 53
    .line 54
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPath;->radii:[F

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->i()J

    .line 58
    move-result-wide v1

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 62
    move-result v1

    .line 63
    const/4 v2, 0x2

    .line 64
    .line 65
    aput v1, v0, v2

    .line 66
    .line 67
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPath;->radii:[F

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->i()J

    .line 71
    move-result-wide v1

    .line 72
    .line 73
    .line 74
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->f(J)F

    .line 75
    move-result v1

    .line 76
    const/4 v2, 0x3

    .line 77
    .line 78
    aput v1, v0, v2

    .line 79
    .line 80
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPath;->radii:[F

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->c()J

    .line 84
    move-result-wide v1

    .line 85
    .line 86
    .line 87
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 88
    move-result v1

    .line 89
    const/4 v2, 0x4

    .line 90
    .line 91
    aput v1, v0, v2

    .line 92
    .line 93
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPath;->radii:[F

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->c()J

    .line 97
    move-result-wide v1

    .line 98
    .line 99
    .line 100
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->f(J)F

    .line 101
    move-result v1

    .line 102
    const/4 v2, 0x5

    .line 103
    .line 104
    aput v1, v0, v2

    .line 105
    .line 106
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPath;->radii:[F

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->b()J

    .line 110
    move-result-wide v1

    .line 111
    .line 112
    .line 113
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 114
    move-result v1

    .line 115
    const/4 v2, 0x6

    .line 116
    .line 117
    aput v1, v0, v2

    .line 118
    .line 119
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPath;->radii:[F

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->b()J

    .line 123
    move-result-wide v1

    .line 124
    .line 125
    .line 126
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->f(J)F

    .line 127
    move-result p1

    .line 128
    const/4 v1, 0x7

    .line 129
    .line 130
    aput p1, v0, v1

    .line 131
    .line 132
    iget-object p1, p0, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    .line 133
    .line 134
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPath;->rectF:Landroid/graphics/RectF;

    .line 135
    .line 136
    iget-object v1, p0, Landroidx/compose/ui/graphics/AndroidPath;->radii:[F

    .line 137
    .line 138
    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 142
    return-void
.end method

.method public f(Landroidx/compose/ui/graphics/Path;J)V
    .locals 2
    .param p1    # Landroidx/compose/ui/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "path"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    .line 8
    .line 9
    instance-of v1, p1, Landroidx/compose/ui/graphics/AndroidPath;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast p1, Landroidx/compose/ui/graphics/AndroidPath;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/AndroidPath;->n()Landroid/graphics/Path;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 21
    move-result v1

    .line 22
    .line 23
    .line 24
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 25
    move-result p2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1, v1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;FF)V

    .line 29
    return-void

    .line 30
    .line 31
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 32
    .line 33
    const-string p2, "Unable to obtain android.graphics.Path"

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p1
.end method

.method public g()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getBounds()Landroidx/compose/ui/geometry/Rect;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/ui/graphics/AndroidPath;->rectF:Landroid/graphics/RectF;

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 9
    .line 10
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/compose/ui/graphics/AndroidPath;->rectF:Landroid/graphics/RectF;

    .line 13
    .line 14
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 15
    .line 16
    iget v3, v1, Landroid/graphics/RectF;->top:F

    .line 17
    .line 18
    iget v4, v1, Landroid/graphics/RectF;->right:F

    .line 19
    .line 20
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v2, v3, v4, v1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 24
    return-object v0
.end method

.method public h(FFFF)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 6
    return-void
.end method

.method public i(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    .line 3
    .line 4
    sget-object v1, Landroidx/compose/ui/graphics/PathFillType;->Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/PathFillType$Companion;->a()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/PathFillType;->f(II)Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    sget-object p1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    sget-object p1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 23
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public j(Landroidx/compose/ui/geometry/Rect;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/geometry/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "rect"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/AndroidPath;->m(Landroidx/compose/ui/geometry/Rect;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPath;->rectF:Landroid/graphics/RectF;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->b(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/RectF;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 21
    .line 22
    iget-object p1, p0, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPath;->rectF:Landroid/graphics/RectF;

    .line 25
    .line 26
    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 30
    return-void

    .line 31
    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string v0, "Check failed."

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p1
.end method

.method public k(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;I)Z
    .locals 3
    .param p1    # Landroidx/compose/ui/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "path1"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "path2"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object v0, Landroidx/compose/ui/graphics/PathOperation;->Companion:Landroidx/compose/ui/graphics/PathOperation$Companion;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/PathOperation$Companion;->a()I

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-static {p3, v1}, Landroidx/compose/ui/graphics/PathOperation;->g(II)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    sget-object p3, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/PathOperation$Companion;->b()I

    .line 29
    move-result v1

    .line 30
    .line 31
    .line 32
    invoke-static {p3, v1}, Landroidx/compose/ui/graphics/PathOperation;->g(II)Z

    .line 33
    move-result v1

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    sget-object p3, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/PathOperation$Companion;->c()I

    .line 42
    move-result v1

    .line 43
    .line 44
    .line 45
    invoke-static {p3, v1}, Landroidx/compose/ui/graphics/PathOperation;->g(II)Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    sget-object p3, Landroid/graphics/Path$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Path$Op;

    .line 51
    goto :goto_0

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/PathOperation$Companion;->d()I

    .line 55
    move-result v0

    .line 56
    .line 57
    .line 58
    invoke-static {p3, v0}, Landroidx/compose/ui/graphics/PathOperation;->g(II)Z

    .line 59
    move-result p3

    .line 60
    .line 61
    if-eqz p3, :cond_3

    .line 62
    .line 63
    sget-object p3, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_3
    sget-object p3, Landroid/graphics/Path$Op;->XOR:Landroid/graphics/Path$Op;

    .line 67
    .line 68
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    .line 69
    .line 70
    instance-of v1, p1, Landroidx/compose/ui/graphics/AndroidPath;

    .line 71
    .line 72
    const-string v2, "Unable to obtain android.graphics.Path"

    .line 73
    .line 74
    if-eqz v1, :cond_5

    .line 75
    .line 76
    check-cast p1, Landroidx/compose/ui/graphics/AndroidPath;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/AndroidPath;->n()Landroid/graphics/Path;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    instance-of v1, p2, Landroidx/compose/ui/graphics/AndroidPath;

    .line 83
    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    check-cast p2, Landroidx/compose/ui/graphics/AndroidPath;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/AndroidPath;->n()Landroid/graphics/Path;

    .line 90
    move-result-object p2

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 94
    move-result p1

    .line 95
    return p1

    .line 96
    .line 97
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 98
    .line 99
    .line 100
    invoke-direct {p1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 101
    throw p1

    .line 102
    .line 103
    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 104
    .line 105
    .line 106
    invoke-direct {p1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 107
    throw p1
.end method

.method public l(FF)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 6
    return-void
.end method

.method public lineTo(FF)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    return-void
.end method

.method public moveTo(FF)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 6
    return-void
.end method

.method public final n()Landroid/graphics/Path;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 6
    return-void
.end method
