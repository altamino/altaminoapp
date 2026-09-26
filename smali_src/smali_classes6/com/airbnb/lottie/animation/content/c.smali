.class public Lcom/airbnb/lottie/animation/content/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/d;
.implements Lcom/airbnb/lottie/animation/content/k;
.implements Lcom/airbnb/lottie/animation/keyframe/a$a;


# instance fields
.field private final contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/b;",
            ">;"
        }
    .end annotation
.end field

.field private final lottieDrawable:Lcom/airbnb/lottie/f;

.field private final matrix:Landroid/graphics/Matrix;

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private pathContents:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/k;",
            ">;"
        }
    .end annotation
.end field

.field private final rect:Landroid/graphics/RectF;

.field private transformAnimation:Lcom/airbnb/lottie/animation/keyframe/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/n;)V
    .locals 6

    .line 1
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/n;->c()Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/n;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/airbnb/lottie/animation/content/c;->c(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 3
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/n;->b()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lcom/airbnb/lottie/animation/content/c;->g(Ljava/util/List;)Lcom/airbnb/lottie/model/animatable/l;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/airbnb/lottie/animation/content/c;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Ljava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/l;)V

    return-void
.end method

.method constructor <init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Ljava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/l;)V
    .locals 1
    .param p5    # Lcom/airbnb/lottie/model/animatable/l;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/f;",
            "Lcom/airbnb/lottie/model/layer/a;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/b;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/l;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/c;->matrix:Landroid/graphics/Matrix;

    .line 7
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/c;->path:Landroid/graphics/Path;

    .line 8
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/c;->rect:Landroid/graphics/RectF;

    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/c;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/c;->lottieDrawable:Lcom/airbnb/lottie/f;

    iput-object p4, p0, Lcom/airbnb/lottie/animation/content/c;->contents:Ljava/util/List;

    if-eqz p5, :cond_0

    .line 9
    invoke-virtual {p5}, Lcom/airbnb/lottie/model/animatable/l;->b()Lcom/airbnb/lottie/animation/keyframe/p;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/c;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/p;

    .line 10
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/p;->a(Lcom/airbnb/lottie/model/layer/a;)V

    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/c;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/p;

    .line 11
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/p;->b(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 12
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_2

    .line 14
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/airbnb/lottie/animation/content/b;

    .line 15
    instance-of p5, p3, Lcom/airbnb/lottie/animation/content/i;

    if-eqz p5, :cond_1

    .line 16
    check-cast p3, Lcom/airbnb/lottie/animation/content/i;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 17
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_3

    .line 18
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/airbnb/lottie/animation/content/i;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p5

    invoke-interface {p4, p5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p5

    invoke-interface {p3, p5}, Lcom/airbnb/lottie/animation/content/i;->c(Ljava/util/ListIterator;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static c(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/f;",
            "Lcom/airbnb/lottie/model/layer/a;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/content/b;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/b;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 14
    move-result v2

    .line 15
    .line 16
    if-ge v1, v2, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    check-cast v2, Lcom/airbnb/lottie/model/content/b;

    .line 23
    .line 24
    .line 25
    invoke-interface {v2, p0, p1}, Lcom/airbnb/lottie/model/content/b;->a(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;)Lcom/airbnb/lottie/animation/content/b;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-object v0
.end method

.method static g(Ljava/util/List;)Lcom/airbnb/lottie/model/animatable/l;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/content/b;",
            ">;)",
            "Lcom/airbnb/lottie/model/animatable/l;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 5
    move-result v1

    .line 6
    .line 7
    if-ge v0, v1, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    check-cast v1, Lcom/airbnb/lottie/model/content/b;

    .line 14
    .line 15
    instance-of v2, v1, Lcom/airbnb/lottie/model/animatable/l;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    check-cast v1, Lcom/airbnb/lottie/model/animatable/l;

    .line 20
    return-object v1

    .line 21
    .line 22
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/c;->matrix:Landroid/graphics/Matrix;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 6
    .line 7
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/c;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/p;

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/c;->matrix:Landroid/graphics/Matrix;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/airbnb/lottie/animation/keyframe/p;->d()Landroid/graphics/Matrix;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 19
    .line 20
    :cond_0
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/c;->rect:Landroid/graphics/RectF;

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 25
    .line 26
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/c;->contents:Ljava/util/List;

    .line 27
    .line 28
    .line 29
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 30
    move-result p2

    .line 31
    .line 32
    add-int/lit8 p2, p2, -0x1

    .line 33
    .line 34
    :goto_0
    if-ltz p2, :cond_3

    .line 35
    .line 36
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/c;->contents:Ljava/util/List;

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    check-cast v0, Lcom/airbnb/lottie/animation/content/b;

    .line 43
    .line 44
    instance-of v1, v0, Lcom/airbnb/lottie/animation/content/d;

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    check-cast v0, Lcom/airbnb/lottie/animation/content/d;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/c;->rect:Landroid/graphics/RectF;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/c;->matrix:Landroid/graphics/Matrix;

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v1, v2}, Lcom/airbnb/lottie/animation/content/d;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    .line 59
    move-result v0

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/c;->rect:Landroid/graphics/RectF;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 67
    goto :goto_1

    .line 68
    .line 69
    :cond_1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 70
    .line 71
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/c;->rect:Landroid/graphics/RectF;

    .line 72
    .line 73
    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 77
    move-result v0

    .line 78
    .line 79
    iget v1, p1, Landroid/graphics/RectF;->top:F

    .line 80
    .line 81
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/c;->rect:Landroid/graphics/RectF;

    .line 82
    .line 83
    iget v2, v2, Landroid/graphics/RectF;->top:F

    .line 84
    .line 85
    .line 86
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 87
    move-result v1

    .line 88
    .line 89
    iget v2, p1, Landroid/graphics/RectF;->right:F

    .line 90
    .line 91
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/c;->rect:Landroid/graphics/RectF;

    .line 92
    .line 93
    iget v3, v3, Landroid/graphics/RectF;->right:F

    .line 94
    .line 95
    .line 96
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 97
    move-result v2

    .line 98
    .line 99
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    .line 100
    .line 101
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/c;->rect:Landroid/graphics/RectF;

    .line 102
    .line 103
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    .line 104
    .line 105
    .line 106
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    .line 107
    move-result v3

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 111
    .line 112
    :cond_2
    :goto_1
    add-int/lit8 p2, p2, -0x1

    .line 113
    goto :goto_0

    .line 114
    :cond_3
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/c;->contents:Ljava/util/List;

    .line 4
    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-ge v0, v1, :cond_3

    .line 10
    .line 11
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/c;->contents:Ljava/util/List;

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    check-cast v1, Lcom/airbnb/lottie/animation/content/b;

    .line 18
    .line 19
    instance-of v2, v1, Lcom/airbnb/lottie/animation/content/d;

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    move-object v2, v1

    .line 23
    .line 24
    check-cast v2, Lcom/airbnb/lottie/animation/content/d;

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-interface {v1}, Lcom/airbnb/lottie/animation/content/b;->getName()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    goto :goto_1

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-interface {v2, p1, p2, p3}, Lcom/airbnb/lottie/animation/content/d;->b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 43
    .line 44
    .line 45
    invoke-interface {v2, p1, v1, p3}, Lcom/airbnb/lottie/animation/content/d;->b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 46
    .line 47
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_3
    return-void
.end method

.method public d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/c;->matrix:Landroid/graphics/Matrix;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 6
    .line 7
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/c;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/p;

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/c;->matrix:Landroid/graphics/Matrix;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/airbnb/lottie/animation/keyframe/p;->d()Landroid/graphics/Matrix;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 19
    .line 20
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/c;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/p;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/airbnb/lottie/animation/keyframe/p;->f()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    check-cast p2, Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 34
    move-result p2

    .line 35
    int-to-float p2, p2

    .line 36
    .line 37
    const/high16 v0, 0x42c80000    # 100.0f

    .line 38
    div-float/2addr p2, v0

    .line 39
    int-to-float p3, p3

    .line 40
    mul-float/2addr p2, p3

    .line 41
    .line 42
    const/high16 p3, 0x437f0000    # 255.0f

    .line 43
    div-float/2addr p2, p3

    .line 44
    mul-float/2addr p2, p3

    .line 45
    float-to-int p3, p2

    .line 46
    .line 47
    :cond_0
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/c;->contents:Ljava/util/List;

    .line 48
    .line 49
    .line 50
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 51
    move-result p2

    .line 52
    .line 53
    add-int/lit8 p2, p2, -0x1

    .line 54
    .line 55
    :goto_0
    if-ltz p2, :cond_2

    .line 56
    .line 57
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/c;->contents:Ljava/util/List;

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    instance-of v1, v0, Lcom/airbnb/lottie/animation/content/d;

    .line 64
    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    check-cast v0, Lcom/airbnb/lottie/animation/content/d;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/c;->matrix:Landroid/graphics/Matrix;

    .line 70
    .line 71
    .line 72
    invoke-interface {v0, p1, v1, p3}, Lcom/airbnb/lottie/animation/content/d;->d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 73
    .line 74
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/c;->lottieDrawable:Lcom/airbnb/lottie/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/f;->invalidateSelf()V

    .line 6
    return-void
.end method

.method public f(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/b;",
            ">;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance p2, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/c;->contents:Ljava/util/List;

    .line 9
    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 12
    move-result v1

    .line 13
    add-int/2addr v0, v1

    .line 14
    .line 15
    .line 16
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    .line 21
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/c;->contents:Ljava/util/List;

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 25
    move-result p1

    .line 26
    .line 27
    add-int/lit8 p1, p1, -0x1

    .line 28
    .line 29
    :goto_0
    if-ltz p1, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/c;->contents:Ljava/util/List;

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    check-cast v0, Lcom/airbnb/lottie/animation/content/b;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/c;->contents:Ljava/util/List;

    .line 40
    const/4 v2, 0x0

    .line 41
    .line 42
    .line 43
    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, p2, v1}, Lcom/airbnb/lottie/animation/content/b;->f(Ljava/util/List;Ljava/util/List;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    add-int/lit8 p1, p1, -0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/c;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/c;->matrix:Landroid/graphics/Matrix;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/c;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/p;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/c;->matrix:Landroid/graphics/Matrix;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/p;->d()Landroid/graphics/Matrix;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/c;->path:Landroid/graphics/Path;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 24
    .line 25
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/c;->contents:Ljava/util/List;

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    move-result v0

    .line 30
    .line 31
    add-int/lit8 v0, v0, -0x1

    .line 32
    .line 33
    :goto_0
    if-ltz v0, :cond_2

    .line 34
    .line 35
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/c;->contents:Ljava/util/List;

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    check-cast v1, Lcom/airbnb/lottie/animation/content/b;

    .line 42
    .line 43
    instance-of v2, v1, Lcom/airbnb/lottie/animation/content/k;

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/c;->path:Landroid/graphics/Path;

    .line 48
    .line 49
    check-cast v1, Lcom/airbnb/lottie/animation/content/k;

    .line 50
    .line 51
    .line 52
    invoke-interface {v1}, Lcom/airbnb/lottie/animation/content/k;->getPath()Landroid/graphics/Path;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/c;->matrix:Landroid/graphics/Matrix;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 59
    .line 60
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/c;->path:Landroid/graphics/Path;

    .line 64
    return-object v0
.end method

.method h()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/k;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/c;->pathContents:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/c;->pathContents:Ljava/util/List;

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/c;->contents:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 18
    move-result v1

    .line 19
    .line 20
    if-ge v0, v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/c;->contents:Ljava/util/List;

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, Lcom/airbnb/lottie/animation/content/b;

    .line 29
    .line 30
    instance-of v2, v1, Lcom/airbnb/lottie/animation/content/k;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/c;->pathContents:Ljava/util/List;

    .line 35
    .line 36
    check-cast v1, Lcom/airbnb/lottie/animation/content/k;

    .line 37
    .line 38
    .line 39
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/c;->pathContents:Ljava/util/List;

    .line 45
    return-object v0
.end method

.method i()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/c;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/p;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/p;->d()Landroid/graphics/Matrix;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/c;->matrix:Landroid/graphics/Matrix;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/c;->matrix:Landroid/graphics/Matrix;

    .line 17
    return-object v0
.end method
