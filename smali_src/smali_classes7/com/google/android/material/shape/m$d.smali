.class public Lcom/google/android/material/shape/m$d;
.super Lcom/google/android/material/shape/m$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field private static final rectF:Landroid/graphics/RectF;


# instance fields
.field public bottom:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public left:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public right:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public startAngle:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public sweepAngle:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public top:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/RectF;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/android/material/shape/m$d;->rectF:Landroid/graphics/RectF;

    .line 8
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/shape/m$f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/m$d;->q(F)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/m$d;->u(F)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/m$d;->r(F)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p4}, Lcom/google/android/material/shape/m$d;->p(F)V

    .line 16
    return-void
.end method

.method static synthetic b(Lcom/google/android/material/shape/m$d;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/shape/m$d;->k()F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic c(Lcom/google/android/material/shape/m$d;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/shape/m$d;->o()F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic d(Lcom/google/android/material/shape/m$d;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/shape/m$d;->l()F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic e(Lcom/google/android/material/shape/m$d;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/shape/m$d;->j()F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic f(Lcom/google/android/material/shape/m$d;F)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/m$d;->s(F)V

    .line 4
    return-void
.end method

.method static synthetic g(Lcom/google/android/material/shape/m$d;F)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/m$d;->t(F)V

    .line 4
    return-void
.end method

.method static synthetic h(Lcom/google/android/material/shape/m$d;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/shape/m$d;->m()F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic i(Lcom/google/android/material/shape/m$d;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/shape/m$d;->n()F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private j()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/m$d;->bottom:F

    return v0
.end method

.method private k()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/m$d;->left:F

    return v0
.end method

.method private l()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/m$d;->right:F

    return v0
.end method

.method private m()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/m$d;->startAngle:F

    return v0
.end method

.method private n()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/m$d;->sweepAngle:F

    return v0
.end method

.method private o()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/m$d;->top:F

    return v0
.end method

.method private p(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/m$d;->bottom:F

    return-void
.end method

.method private q(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/m$d;->left:F

    return-void
.end method

.method private r(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/m$d;->right:F

    return-void
.end method

.method private s(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/m$d;->startAngle:F

    return-void
.end method

.method private t(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/m$d;->sweepAngle:F

    return-void
.end method

.method private u(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/m$d;->top:F

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 5
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/shape/m$f;->matrix:Landroid/graphics/Matrix;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 9
    .line 10
    sget-object v0, Lcom/google/android/material/shape/m$d;->rectF:Landroid/graphics/RectF;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/google/android/material/shape/m$d;->k()F

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/google/android/material/shape/m$d;->o()F

    .line 18
    move-result v2

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/google/android/material/shape/m$d;->l()F

    .line 22
    move-result v3

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/google/android/material/shape/m$d;->j()F

    .line 26
    move-result v4

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/google/android/material/shape/m$d;->m()F

    .line 33
    move-result v1

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/google/android/material/shape/m$d;->n()F

    .line 37
    move-result v2

    .line 38
    const/4 v3, 0x0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 45
    return-void
.end method
