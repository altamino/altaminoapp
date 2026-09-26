.class public final Lcom/google/android/material/shape/k$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private bottomEdge:Lcom/google/android/material/shape/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private bottomLeftCorner:Lcom/google/android/material/shape/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private bottomLeftCornerSize:Lcom/google/android/material/shape/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private bottomRightCorner:Lcom/google/android/material/shape/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private bottomRightCornerSize:Lcom/google/android/material/shape/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private leftEdge:Lcom/google/android/material/shape/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private rightEdge:Lcom/google/android/material/shape/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private topEdge:Lcom/google/android/material/shape/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private topLeftCorner:Lcom/google/android/material/shape/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private topLeftCornerSize:Lcom/google/android/material/shape/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private topRightCorner:Lcom/google/android/material/shape/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private topRightCornerSize:Lcom/google/android/material/shape/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/material/shape/h;->b()Lcom/google/android/material/shape/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->topLeftCorner:Lcom/google/android/material/shape/d;

    .line 3
    invoke-static {}, Lcom/google/android/material/shape/h;->b()Lcom/google/android/material/shape/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->topRightCorner:Lcom/google/android/material/shape/d;

    .line 4
    invoke-static {}, Lcom/google/android/material/shape/h;->b()Lcom/google/android/material/shape/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->bottomRightCorner:Lcom/google/android/material/shape/d;

    .line 5
    invoke-static {}, Lcom/google/android/material/shape/h;->b()Lcom/google/android/material/shape/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->bottomLeftCorner:Lcom/google/android/material/shape/d;

    .line 6
    new-instance v0, Lcom/google/android/material/shape/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->topLeftCornerSize:Lcom/google/android/material/shape/c;

    .line 7
    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->topRightCornerSize:Lcom/google/android/material/shape/c;

    .line 8
    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->bottomRightCornerSize:Lcom/google/android/material/shape/c;

    .line 9
    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->bottomLeftCornerSize:Lcom/google/android/material/shape/c;

    .line 10
    invoke-static {}, Lcom/google/android/material/shape/h;->c()Lcom/google/android/material/shape/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->topEdge:Lcom/google/android/material/shape/f;

    .line 11
    invoke-static {}, Lcom/google/android/material/shape/h;->c()Lcom/google/android/material/shape/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->rightEdge:Lcom/google/android/material/shape/f;

    .line 12
    invoke-static {}, Lcom/google/android/material/shape/h;->c()Lcom/google/android/material/shape/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->bottomEdge:Lcom/google/android/material/shape/f;

    .line 13
    invoke-static {}, Lcom/google/android/material/shape/h;->c()Lcom/google/android/material/shape/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->leftEdge:Lcom/google/android/material/shape/f;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/shape/k;)V
    .locals 2
    .param p1    # Lcom/google/android/material/shape/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lcom/google/android/material/shape/h;->b()Lcom/google/android/material/shape/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->topLeftCorner:Lcom/google/android/material/shape/d;

    .line 16
    invoke-static {}, Lcom/google/android/material/shape/h;->b()Lcom/google/android/material/shape/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->topRightCorner:Lcom/google/android/material/shape/d;

    .line 17
    invoke-static {}, Lcom/google/android/material/shape/h;->b()Lcom/google/android/material/shape/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->bottomRightCorner:Lcom/google/android/material/shape/d;

    .line 18
    invoke-static {}, Lcom/google/android/material/shape/h;->b()Lcom/google/android/material/shape/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->bottomLeftCorner:Lcom/google/android/material/shape/d;

    .line 19
    new-instance v0, Lcom/google/android/material/shape/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->topLeftCornerSize:Lcom/google/android/material/shape/c;

    .line 20
    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->topRightCornerSize:Lcom/google/android/material/shape/c;

    .line 21
    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->bottomRightCornerSize:Lcom/google/android/material/shape/c;

    .line 22
    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->bottomLeftCornerSize:Lcom/google/android/material/shape/c;

    .line 23
    invoke-static {}, Lcom/google/android/material/shape/h;->c()Lcom/google/android/material/shape/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->topEdge:Lcom/google/android/material/shape/f;

    .line 24
    invoke-static {}, Lcom/google/android/material/shape/h;->c()Lcom/google/android/material/shape/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->rightEdge:Lcom/google/android/material/shape/f;

    .line 25
    invoke-static {}, Lcom/google/android/material/shape/h;->c()Lcom/google/android/material/shape/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->bottomEdge:Lcom/google/android/material/shape/f;

    .line 26
    invoke-static {}, Lcom/google/android/material/shape/h;->c()Lcom/google/android/material/shape/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->leftEdge:Lcom/google/android/material/shape/f;

    .line 27
    iget-object v0, p1, Lcom/google/android/material/shape/k;->topLeftCorner:Lcom/google/android/material/shape/d;

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->topLeftCorner:Lcom/google/android/material/shape/d;

    .line 28
    iget-object v0, p1, Lcom/google/android/material/shape/k;->topRightCorner:Lcom/google/android/material/shape/d;

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->topRightCorner:Lcom/google/android/material/shape/d;

    .line 29
    iget-object v0, p1, Lcom/google/android/material/shape/k;->bottomRightCorner:Lcom/google/android/material/shape/d;

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->bottomRightCorner:Lcom/google/android/material/shape/d;

    .line 30
    iget-object v0, p1, Lcom/google/android/material/shape/k;->bottomLeftCorner:Lcom/google/android/material/shape/d;

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->bottomLeftCorner:Lcom/google/android/material/shape/d;

    .line 31
    iget-object v0, p1, Lcom/google/android/material/shape/k;->topLeftCornerSize:Lcom/google/android/material/shape/c;

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->topLeftCornerSize:Lcom/google/android/material/shape/c;

    .line 32
    iget-object v0, p1, Lcom/google/android/material/shape/k;->topRightCornerSize:Lcom/google/android/material/shape/c;

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->topRightCornerSize:Lcom/google/android/material/shape/c;

    .line 33
    iget-object v0, p1, Lcom/google/android/material/shape/k;->bottomRightCornerSize:Lcom/google/android/material/shape/c;

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->bottomRightCornerSize:Lcom/google/android/material/shape/c;

    .line 34
    iget-object v0, p1, Lcom/google/android/material/shape/k;->bottomLeftCornerSize:Lcom/google/android/material/shape/c;

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->bottomLeftCornerSize:Lcom/google/android/material/shape/c;

    .line 35
    iget-object v0, p1, Lcom/google/android/material/shape/k;->topEdge:Lcom/google/android/material/shape/f;

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->topEdge:Lcom/google/android/material/shape/f;

    .line 36
    iget-object v0, p1, Lcom/google/android/material/shape/k;->rightEdge:Lcom/google/android/material/shape/f;

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->rightEdge:Lcom/google/android/material/shape/f;

    .line 37
    iget-object v0, p1, Lcom/google/android/material/shape/k;->bottomEdge:Lcom/google/android/material/shape/f;

    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->bottomEdge:Lcom/google/android/material/shape/f;

    .line 38
    iget-object p1, p1, Lcom/google/android/material/shape/k;->leftEdge:Lcom/google/android/material/shape/f;

    iput-object p1, p0, Lcom/google/android/material/shape/k$b;->leftEdge:Lcom/google/android/material/shape/f;

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/shape/k$b;)Lcom/google/android/material/shape/d;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/shape/k$b;->topLeftCorner:Lcom/google/android/material/shape/d;

    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/google/android/material/shape/k$b;)Lcom/google/android/material/shape/f;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/shape/k$b;->rightEdge:Lcom/google/android/material/shape/f;

    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/shape/k$b;)Lcom/google/android/material/shape/f;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/shape/k$b;->bottomEdge:Lcom/google/android/material/shape/f;

    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/google/android/material/shape/k$b;)Lcom/google/android/material/shape/f;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/shape/k$b;->leftEdge:Lcom/google/android/material/shape/f;

    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/google/android/material/shape/k$b;)Lcom/google/android/material/shape/d;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/shape/k$b;->topRightCorner:Lcom/google/android/material/shape/d;

    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/google/android/material/shape/k$b;)Lcom/google/android/material/shape/d;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/shape/k$b;->bottomRightCorner:Lcom/google/android/material/shape/d;

    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/google/android/material/shape/k$b;)Lcom/google/android/material/shape/d;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/shape/k$b;->bottomLeftCorner:Lcom/google/android/material/shape/d;

    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/google/android/material/shape/k$b;)Lcom/google/android/material/shape/c;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/shape/k$b;->topLeftCornerSize:Lcom/google/android/material/shape/c;

    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/google/android/material/shape/k$b;)Lcom/google/android/material/shape/c;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/shape/k$b;->topRightCornerSize:Lcom/google/android/material/shape/c;

    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/google/android/material/shape/k$b;)Lcom/google/android/material/shape/c;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/shape/k$b;->bottomRightCornerSize:Lcom/google/android/material/shape/c;

    .line 3
    return-object p0
.end method

.method static synthetic k(Lcom/google/android/material/shape/k$b;)Lcom/google/android/material/shape/c;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/shape/k$b;->bottomLeftCornerSize:Lcom/google/android/material/shape/c;

    .line 3
    return-object p0
.end method

.method static synthetic l(Lcom/google/android/material/shape/k$b;)Lcom/google/android/material/shape/f;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/shape/k$b;->topEdge:Lcom/google/android/material/shape/f;

    .line 3
    return-object p0
.end method

.method private static n(Lcom/google/android/material/shape/d;)F
    .locals 1

    .line 1
    .line 2
    instance-of v0, p0, Lcom/google/android/material/shape/j;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p0, Lcom/google/android/material/shape/j;

    .line 7
    .line 8
    iget p0, p0, Lcom/google/android/material/shape/j;->radius:F

    .line 9
    return p0

    .line 10
    .line 11
    :cond_0
    instance-of v0, p0, Lcom/google/android/material/shape/e;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    check-cast p0, Lcom/google/android/material/shape/e;

    .line 16
    .line 17
    iget p0, p0, Lcom/google/android/material/shape/e;->size:F

    .line 18
    return p0

    .line 19
    .line 20
    :cond_1
    const/high16 p0, -0x40800000    # -1.0f

    .line 21
    return p0
.end method


# virtual methods
.method public A(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/k$b;
    .locals 1
    .param p1    # Lcom/google/android/material/shape/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/shape/k$b;->topLeftCorner:Lcom/google/android/material/shape/d;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/material/shape/k$b;->n(Lcom/google/android/material/shape/d;)F

    .line 6
    move-result p1

    .line 7
    .line 8
    const/high16 v0, -0x40800000    # -1.0f

    .line 9
    .line 10
    cmpl-float v0, p1, v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/k$b;->B(F)Lcom/google/android/material/shape/k$b;

    .line 16
    :cond_0
    return-object p0
.end method

.method public B(F)Lcom/google/android/material/shape/k$b;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/material/shape/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/google/android/material/shape/a;-><init>(F)V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->topLeftCornerSize:Lcom/google/android/material/shape/c;

    .line 8
    return-object p0
.end method

.method public C(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/k$b;
    .locals 0
    .param p1    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/k$b;->topLeftCornerSize:Lcom/google/android/material/shape/c;

    return-object p0
.end method

.method public D(ILcom/google/android/material/shape/c;)Lcom/google/android/material/shape/k$b;
    .locals 0
    .param p2    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/material/shape/h;->a(I)Lcom/google/android/material/shape/d;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/k$b;->E(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/k$b;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/k$b;->G(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/k$b;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public E(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/k$b;
    .locals 1
    .param p1    # Lcom/google/android/material/shape/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/shape/k$b;->topRightCorner:Lcom/google/android/material/shape/d;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/material/shape/k$b;->n(Lcom/google/android/material/shape/d;)F

    .line 6
    move-result p1

    .line 7
    .line 8
    const/high16 v0, -0x40800000    # -1.0f

    .line 9
    .line 10
    cmpl-float v0, p1, v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/k$b;->F(F)Lcom/google/android/material/shape/k$b;

    .line 16
    :cond_0
    return-object p0
.end method

.method public F(F)Lcom/google/android/material/shape/k$b;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/material/shape/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/google/android/material/shape/a;-><init>(F)V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->topRightCornerSize:Lcom/google/android/material/shape/c;

    .line 8
    return-object p0
.end method

.method public G(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/k$b;
    .locals 0
    .param p1    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/k$b;->topRightCornerSize:Lcom/google/android/material/shape/c;

    return-object p0
.end method

.method public m()Lcom/google/android/material/shape/k;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/material/shape/k;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/shape/k;-><init>(Lcom/google/android/material/shape/k$b;Lcom/google/android/material/shape/k$a;)V

    .line 7
    return-object v0
.end method

.method public o(F)Lcom/google/android/material/shape/k$b;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/k$b;->B(F)Lcom/google/android/material/shape/k$b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/k$b;->F(F)Lcom/google/android/material/shape/k$b;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/k$b;->w(F)Lcom/google/android/material/shape/k$b;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/k$b;->s(F)Lcom/google/android/material/shape/k$b;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public p(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/k$b;
    .locals 1
    .param p1    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/k$b;->C(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/k$b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/k$b;->G(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/k$b;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/k$b;->x(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/k$b;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/k$b;->t(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/k$b;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public q(ILcom/google/android/material/shape/c;)Lcom/google/android/material/shape/k$b;
    .locals 0
    .param p2    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/material/shape/h;->a(I)Lcom/google/android/material/shape/d;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/k$b;->r(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/k$b;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/k$b;->t(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/k$b;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public r(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/k$b;
    .locals 1
    .param p1    # Lcom/google/android/material/shape/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/shape/k$b;->bottomLeftCorner:Lcom/google/android/material/shape/d;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/material/shape/k$b;->n(Lcom/google/android/material/shape/d;)F

    .line 6
    move-result p1

    .line 7
    .line 8
    const/high16 v0, -0x40800000    # -1.0f

    .line 9
    .line 10
    cmpl-float v0, p1, v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/k$b;->s(F)Lcom/google/android/material/shape/k$b;

    .line 16
    :cond_0
    return-object p0
.end method

.method public s(F)Lcom/google/android/material/shape/k$b;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/material/shape/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/google/android/material/shape/a;-><init>(F)V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->bottomLeftCornerSize:Lcom/google/android/material/shape/c;

    .line 8
    return-object p0
.end method

.method public t(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/k$b;
    .locals 0
    .param p1    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/k$b;->bottomLeftCornerSize:Lcom/google/android/material/shape/c;

    return-object p0
.end method

.method public u(ILcom/google/android/material/shape/c;)Lcom/google/android/material/shape/k$b;
    .locals 0
    .param p2    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/material/shape/h;->a(I)Lcom/google/android/material/shape/d;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/k$b;->v(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/k$b;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/k$b;->x(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/k$b;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public v(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/k$b;
    .locals 1
    .param p1    # Lcom/google/android/material/shape/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/shape/k$b;->bottomRightCorner:Lcom/google/android/material/shape/d;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/material/shape/k$b;->n(Lcom/google/android/material/shape/d;)F

    .line 6
    move-result p1

    .line 7
    .line 8
    const/high16 v0, -0x40800000    # -1.0f

    .line 9
    .line 10
    cmpl-float v0, p1, v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/k$b;->w(F)Lcom/google/android/material/shape/k$b;

    .line 16
    :cond_0
    return-object p0
.end method

.method public w(F)Lcom/google/android/material/shape/k$b;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/material/shape/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/google/android/material/shape/a;-><init>(F)V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/android/material/shape/k$b;->bottomRightCornerSize:Lcom/google/android/material/shape/c;

    .line 8
    return-object p0
.end method

.method public x(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/k$b;
    .locals 0
    .param p1    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/k$b;->bottomRightCornerSize:Lcom/google/android/material/shape/c;

    return-object p0
.end method

.method public y(Lcom/google/android/material/shape/f;)Lcom/google/android/material/shape/k$b;
    .locals 0
    .param p1    # Lcom/google/android/material/shape/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/k$b;->topEdge:Lcom/google/android/material/shape/f;

    return-object p0
.end method

.method public z(ILcom/google/android/material/shape/c;)Lcom/google/android/material/shape/k$b;
    .locals 0
    .param p2    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/material/shape/h;->a(I)Lcom/google/android/material/shape/d;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/k$b;->A(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/k$b;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/k$b;->C(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/k$b;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
