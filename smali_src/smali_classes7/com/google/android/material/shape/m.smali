.class public Lcom/google/android/material/shape/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/m$d;,
        Lcom/google/android/material/shape/m$e;,
        Lcom/google/android/material/shape/m$f;,
        Lcom/google/android/material/shape/m$b;,
        Lcom/google/android/material/shape/m$c;,
        Lcom/google/android/material/shape/m$g;
    }
.end annotation


# static fields
.field protected static final ANGLE_LEFT:F = 180.0f

.field private static final ANGLE_UP:F = 270.0f


# instance fields
.field private containsIncompatibleShadowOp:Z

.field public currentShadowAngle:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public endShadowAngle:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public endX:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public endY:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final operations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/shape/m$f;",
            ">;"
        }
    .end annotation
.end field

.field private final shadowCompatOperations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/shape/m$g;",
            ">;"
        }
    .end annotation
.end field

.field public startX:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public startY:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/m;->operations:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/m;->shadowCompatOperations:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, v0}, Lcom/google/android/material/shape/m;->n(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/m;->operations:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/m;->shadowCompatOperations:Ljava/util/List;

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/shape/m;->n(FF)V

    return-void
.end method

.method private b(F)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/shape/m;->g()F

    .line 4
    move-result v0

    .line 5
    .line 6
    cmpl-float v0, v0, p1

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/shape/m;->g()F

    .line 13
    move-result v0

    .line 14
    .line 15
    sub-float v0, p1, v0

    .line 16
    .line 17
    const/high16 v1, 0x43b40000    # 360.0f

    .line 18
    add-float/2addr v0, v1

    .line 19
    rem-float/2addr v0, v1

    .line 20
    .line 21
    const/high16 v1, 0x43340000    # 180.0f

    .line 22
    .line 23
    cmpl-float v1, v0, v1

    .line 24
    .line 25
    if-lez v1, :cond_1

    .line 26
    return-void

    .line 27
    .line 28
    :cond_1
    new-instance v1, Lcom/google/android/material/shape/m$d;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/google/android/material/shape/m;->i()F

    .line 32
    move-result v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/google/android/material/shape/m;->j()F

    .line 36
    move-result v3

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/google/android/material/shape/m;->i()F

    .line 40
    move-result v4

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/google/android/material/shape/m;->j()F

    .line 44
    move-result v5

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/material/shape/m$d;-><init>(FFFF)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lcom/google/android/material/shape/m;->g()F

    .line 51
    move-result v2

    .line 52
    .line 53
    .line 54
    invoke-static {v1, v2}, Lcom/google/android/material/shape/m$d;->f(Lcom/google/android/material/shape/m$d;F)V

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v0}, Lcom/google/android/material/shape/m$d;->g(Lcom/google/android/material/shape/m$d;F)V

    .line 58
    .line 59
    iget-object v0, p0, Lcom/google/android/material/shape/m;->shadowCompatOperations:Ljava/util/List;

    .line 60
    .line 61
    new-instance v2, Lcom/google/android/material/shape/m$b;

    .line 62
    .line 63
    .line 64
    invoke-direct {v2, v1}, Lcom/google/android/material/shape/m$b;-><init>(Lcom/google/android/material/shape/m$d;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/m;->p(F)V

    .line 71
    return-void
.end method

.method private c(Lcom/google/android/material/shape/m$g;FF)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/m;->b(F)V

    .line 4
    .line 5
    iget-object p2, p0, Lcom/google/android/material/shape/m;->shadowCompatOperations:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/m;->p(F)V

    .line 12
    return-void
.end method

.method private g()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/m;->currentShadowAngle:F

    return v0
.end method

.method private h()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/m;->endShadowAngle:F

    return v0
.end method

.method private p(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/m;->currentShadowAngle:F

    return-void
.end method

.method private q(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/m;->endShadowAngle:F

    return-void
.end method

.method private r(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/m;->endX:F

    return-void
.end method

.method private s(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/m;->endY:F

    return-void
.end method

.method private t(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/m;->startX:F

    return-void
.end method

.method private u(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/m;->startY:F

    return-void
.end method


# virtual methods
.method public a(FFFFFF)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/material/shape/m$d;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/material/shape/m$d;-><init>(FFFF)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p5}, Lcom/google/android/material/shape/m$d;->f(Lcom/google/android/material/shape/m$d;F)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p6}, Lcom/google/android/material/shape/m$d;->g(Lcom/google/android/material/shape/m$d;F)V

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/material/shape/m;->operations:Ljava/util/List;

    .line 14
    .line 15
    .line 16
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    new-instance v1, Lcom/google/android/material/shape/m$b;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v0}, Lcom/google/android/material/shape/m$b;-><init>(Lcom/google/android/material/shape/m$d;)V

    .line 22
    .line 23
    add-float v0, p5, p6

    .line 24
    const/4 v2, 0x0

    .line 25
    .line 26
    cmpg-float p6, p6, v2

    .line 27
    .line 28
    if-gez p6, :cond_0

    .line 29
    const/4 p6, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p6, 0x0

    .line 32
    .line 33
    :goto_0
    const/high16 v2, 0x43b40000    # 360.0f

    .line 34
    .line 35
    const/high16 v3, 0x43340000    # 180.0f

    .line 36
    .line 37
    if-eqz p6, :cond_1

    .line 38
    add-float/2addr p5, v3

    .line 39
    rem-float/2addr p5, v2

    .line 40
    .line 41
    :cond_1
    if-eqz p6, :cond_2

    .line 42
    add-float/2addr v3, v0

    .line 43
    rem-float/2addr v3, v2

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move v3, v0

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-direct {p0, v1, p5, v3}, Lcom/google/android/material/shape/m;->c(Lcom/google/android/material/shape/m$g;FF)V

    .line 49
    .line 50
    add-float p5, p1, p3

    .line 51
    .line 52
    const/high16 p6, 0x3f000000    # 0.5f

    .line 53
    mul-float/2addr p5, p6

    .line 54
    sub-float/2addr p3, p1

    .line 55
    .line 56
    const/high16 p1, 0x40000000    # 2.0f

    .line 57
    div-float/2addr p3, p1

    .line 58
    float-to-double v0, v0

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 62
    move-result-wide v2

    .line 63
    .line 64
    .line 65
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 66
    move-result-wide v2

    .line 67
    double-to-float v2, v2

    .line 68
    mul-float/2addr p3, v2

    .line 69
    add-float/2addr p5, p3

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, p5}, Lcom/google/android/material/shape/m;->r(F)V

    .line 73
    .line 74
    add-float p3, p2, p4

    .line 75
    mul-float/2addr p3, p6

    .line 76
    sub-float/2addr p4, p2

    .line 77
    div-float/2addr p4, p1

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 81
    move-result-wide p1

    .line 82
    .line 83
    .line 84
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    .line 85
    move-result-wide p1

    .line 86
    double-to-float p1, p1

    .line 87
    mul-float/2addr p4, p1

    .line 88
    add-float/2addr p3, p4

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/m;->s(F)V

    .line 92
    return-void
.end method

.method public d(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/shape/m;->operations:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    :goto_0
    if-ge v1, v0, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/android/material/shape/m;->operations:Ljava/util/List;

    .line 12
    .line 13
    .line 14
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    check-cast v2, Lcom/google/android/material/shape/m$f;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p1, p2}, Lcom/google/android/material/shape/m$f;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/shape/m;->containsIncompatibleShadowOp:Z

    return v0
.end method

.method f(Landroid/graphics/Matrix;)Lcom/google/android/material/shape/m$g;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/shape/m;->h()F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/google/android/material/shape/m;->b(F)V

    .line 8
    .line 9
    new-instance v0, Landroid/graphics/Matrix;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 13
    .line 14
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/material/shape/m;->shadowCompatOperations:Ljava/util/List;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    new-instance v1, Lcom/google/android/material/shape/m$a;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/material/shape/m$a;-><init>(Lcom/google/android/material/shape/m;Ljava/util/List;Landroid/graphics/Matrix;)V

    .line 25
    return-object v1
.end method

.method i()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/m;->endX:F

    return v0
.end method

.method j()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/m;->endY:F

    return v0
.end method

.method k()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/m;->startX:F

    return v0
.end method

.method l()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/m;->startY:F

    return v0
.end method

.method public m(FF)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/material/shape/m$e;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/material/shape/m$e;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/google/android/material/shape/m$e;->c(Lcom/google/android/material/shape/m$e;F)F

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p2}, Lcom/google/android/material/shape/m$e;->e(Lcom/google/android/material/shape/m$e;F)F

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/material/shape/m;->operations:Ljava/util/List;

    .line 14
    .line 15
    .line 16
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    new-instance v1, Lcom/google/android/material/shape/m$c;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/material/shape/m;->i()F

    .line 22
    move-result v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/android/material/shape/m;->j()F

    .line 26
    move-result v3

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/material/shape/m$c;-><init>(Lcom/google/android/material/shape/m$e;FF)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/google/android/material/shape/m$c;->c()F

    .line 33
    move-result v0

    .line 34
    .line 35
    const/high16 v2, 0x43870000    # 270.0f

    .line 36
    add-float/2addr v0, v2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/google/android/material/shape/m$c;->c()F

    .line 40
    move-result v3

    .line 41
    add-float/2addr v3, v2

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v1, v0, v3}, Lcom/google/android/material/shape/m;->c(Lcom/google/android/material/shape/m$g;FF)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/m;->r(F)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/m;->s(F)V

    .line 51
    return-void
.end method

.method public n(FF)V
    .locals 2

    .line 1
    .line 2
    const/high16 v0, 0x43870000    # 270.0f

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/material/shape/m;->o(FFFF)V

    .line 7
    return-void
.end method

.method public o(FFFF)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/m;->t(F)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/m;->u(F)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/m;->r(F)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/m;->s(F)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/m;->p(F)V

    .line 16
    add-float/2addr p3, p4

    .line 17
    .line 18
    const/high16 p1, 0x43b40000    # 360.0f

    .line 19
    rem-float/2addr p3, p1

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/m;->q(F)V

    .line 23
    .line 24
    iget-object p1, p0, Lcom/google/android/material/shape/m;->operations:Ljava/util/List;

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 28
    .line 29
    iget-object p1, p0, Lcom/google/android/material/shape/m;->shadowCompatOperations:Ljava/util/List;

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 33
    const/4 p1, 0x0

    .line 34
    .line 35
    iput-boolean p1, p0, Lcom/google/android/material/shape/m;->containsIncompatibleShadowOp:Z

    .line 36
    return-void
.end method
