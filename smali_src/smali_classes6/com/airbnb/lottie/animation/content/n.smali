.class public Lcom/airbnb/lottie/animation/content/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/d;
.implements Lcom/airbnb/lottie/animation/content/k;
.implements Lcom/airbnb/lottie/animation/content/i;
.implements Lcom/airbnb/lottie/animation/keyframe/a$a;


# instance fields
.field private contentGroup:Lcom/airbnb/lottie/animation/content/c;

.field private final copies:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final layer:Lcom/airbnb/lottie/model/layer/a;

.field private final lottieDrawable:Lcom/airbnb/lottie/f;

.field private final matrix:Landroid/graphics/Matrix;

.field private final name:Ljava/lang/String;

.field private final offset:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;

.field private final transform:Lcom/airbnb/lottie/animation/keyframe/p;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/k;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Matrix;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/n;->matrix:Landroid/graphics/Matrix;

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/Path;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/n;->path:Landroid/graphics/Path;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/n;->lottieDrawable:Lcom/airbnb/lottie/f;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/airbnb/lottie/animation/content/n;->layer:Lcom/airbnb/lottie/model/layer/a;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/k;->c()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/n;->name:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/k;->b()Lcom/airbnb/lottie/model/animatable/b;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/b;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/n;->copies:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/k;->d()Lcom/airbnb/lottie/model/animatable/b;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/b;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/n;->offset:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/k;->e()Lcom/airbnb/lottie/model/animatable/l;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/l;->b()Lcom/airbnb/lottie/animation/keyframe/p;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/n;->transform:Lcom/airbnb/lottie/animation/keyframe/p;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/p;->a(Lcom/airbnb/lottie/model/layer/a;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/p;->b(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 76
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/n;->contentGroup:Lcom/airbnb/lottie/animation/content/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/animation/content/c;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 6
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 1
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
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/n;->contentGroup:Lcom/airbnb/lottie/animation/content/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/airbnb/lottie/animation/content/c;->b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 6
    return-void
.end method

.method public c(Ljava/util/ListIterator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "Lcom/airbnb/lottie/animation/content/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/n;->contentGroup:Lcom/airbnb/lottie/animation/content/c;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-eq v0, p0, :cond_1

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    .line 40
    goto :goto_1

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 44
    .line 45
    new-instance p1, Lcom/airbnb/lottie/animation/content/c;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/n;->lottieDrawable:Lcom/airbnb/lottie/f;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/n;->layer:Lcom/airbnb/lottie/model/layer/a;

    .line 50
    .line 51
    const-string v4, "Repeater"

    .line 52
    const/4 v6, 0x0

    .line 53
    move-object v1, p1

    .line 54
    .line 55
    .line 56
    invoke-direct/range {v1 .. v6}, Lcom/airbnb/lottie/animation/content/c;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Ljava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/l;)V

    .line 57
    .line 58
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/n;->contentGroup:Lcom/airbnb/lottie/animation/content/c;

    .line 59
    return-void
.end method

.method public d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/n;->copies:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Float;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 12
    move-result v0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/n;->offset:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Ljava/lang/Float;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 24
    move-result v1

    .line 25
    .line 26
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/n;->transform:Lcom/airbnb/lottie/animation/keyframe/p;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/p;->g()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    check-cast v2, Ljava/lang/Float;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 40
    move-result v2

    .line 41
    .line 42
    const/high16 v3, 0x42c80000    # 100.0f

    .line 43
    div-float/2addr v2, v3

    .line 44
    .line 45
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/n;->transform:Lcom/airbnb/lottie/animation/keyframe/p;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/p;->c()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 53
    move-result-object v4

    .line 54
    .line 55
    check-cast v4, Ljava/lang/Float;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 59
    move-result v4

    .line 60
    div-float/2addr v4, v3

    .line 61
    float-to-int v3, v0

    .line 62
    .line 63
    add-int/lit8 v3, v3, -0x1

    .line 64
    .line 65
    :goto_0
    if-ltz v3, :cond_0

    .line 66
    .line 67
    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/n;->matrix:Landroid/graphics/Matrix;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 71
    .line 72
    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/n;->matrix:Landroid/graphics/Matrix;

    .line 73
    .line 74
    iget-object v6, p0, Lcom/airbnb/lottie/animation/content/n;->transform:Lcom/airbnb/lottie/animation/keyframe/p;

    .line 75
    int-to-float v7, v3

    .line 76
    .line 77
    add-float v8, v7, v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, v8}, Lcom/airbnb/lottie/animation/keyframe/p;->e(F)Landroid/graphics/Matrix;

    .line 81
    move-result-object v6

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 85
    int-to-float v5, p3

    .line 86
    div-float/2addr v7, v0

    .line 87
    .line 88
    .line 89
    invoke-static {v2, v4, v7}, Lcom/airbnb/lottie/utils/e;->h(FFF)F

    .line 90
    move-result v6

    .line 91
    mul-float/2addr v5, v6

    .line 92
    .line 93
    iget-object v6, p0, Lcom/airbnb/lottie/animation/content/n;->contentGroup:Lcom/airbnb/lottie/animation/content/c;

    .line 94
    .line 95
    iget-object v7, p0, Lcom/airbnb/lottie/animation/content/n;->matrix:Landroid/graphics/Matrix;

    .line 96
    float-to-int v5, v5

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, p1, v7, v5}, Lcom/airbnb/lottie/animation/content/c;->d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 100
    .line 101
    add-int/lit8 v3, v3, -0x1

    .line 102
    goto :goto_0

    .line 103
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/n;->lottieDrawable:Lcom/airbnb/lottie/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/f;->invalidateSelf()V

    .line 6
    return-void
.end method

.method public f(Ljava/util/List;Ljava/util/List;)V
    .locals 1
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
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/n;->contentGroup:Lcom/airbnb/lottie/animation/content/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/animation/content/c;->f(Ljava/util/List;Ljava/util/List;)V

    .line 6
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/n;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/n;->contentGroup:Lcom/airbnb/lottie/animation/content/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/content/c;->getPath()Landroid/graphics/Path;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/n;->path:Landroid/graphics/Path;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 12
    .line 13
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/n;->copies:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    check-cast v1, Ljava/lang/Float;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 23
    move-result v1

    .line 24
    .line 25
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/n;->offset:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    check-cast v2, Ljava/lang/Float;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 35
    move-result v2

    .line 36
    float-to-int v1, v1

    .line 37
    .line 38
    add-int/lit8 v1, v1, -0x1

    .line 39
    .line 40
    :goto_0
    if-ltz v1, :cond_0

    .line 41
    .line 42
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/n;->matrix:Landroid/graphics/Matrix;

    .line 43
    .line 44
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/n;->transform:Lcom/airbnb/lottie/animation/keyframe/p;

    .line 45
    int-to-float v5, v1

    .line 46
    add-float/2addr v5, v2

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/p;->e(F)Landroid/graphics/Matrix;

    .line 50
    move-result-object v4

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 54
    .line 55
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/n;->path:Landroid/graphics/Path;

    .line 56
    .line 57
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/n;->matrix:Landroid/graphics/Matrix;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v0, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 61
    .line 62
    add-int/lit8 v1, v1, -0x1

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/n;->path:Landroid/graphics/Path;

    .line 66
    return-object v0
.end method
