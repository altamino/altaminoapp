.class public Lcom/airbnb/lottie/animation/content/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/d;
.implements Lcom/airbnb/lottie/animation/keyframe/a$a;


# instance fields
.field private final colorAnimation:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final lottieDrawable:Lcom/airbnb/lottie/f;

.field private final name:Ljava/lang/String;

.field private final opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/m;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Path;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/f;->path:Landroid/graphics/Path;

    .line 11
    .line 12
    new-instance v1, Landroid/graphics/Paint;

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 17
    .line 18
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/f;->paint:Landroid/graphics/Paint;

    .line 19
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/f;->paths:Ljava/util/List;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/m;->d()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/f;->name:Ljava/lang/String;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/f;->lottieDrawable:Lcom/airbnb/lottie/f;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/m;->b()Lcom/airbnb/lottie/model/animatable/a;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/m;->e()Lcom/airbnb/lottie/model/animatable/d;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    if-nez p1, :cond_0

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/m;->c()Landroid/graphics/Path$FillType;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/m;->b()Lcom/airbnb/lottie/model/animatable/a;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/a;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/f;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/m;->e()Lcom/airbnb/lottie/model/animatable/d;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/d;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/f;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 86
    return-void

    .line 87
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 88
    .line 89
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/f;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 90
    .line 91
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/f;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 92
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/f;->path:Landroid/graphics/Path;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 6
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    .line 9
    :goto_0
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/f;->paths:Ljava/util/List;

    .line 10
    .line 11
    .line 12
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 13
    move-result v2

    .line 14
    .line 15
    if-ge v1, v2, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/f;->path:Landroid/graphics/Path;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/f;->paths:Ljava/util/List;

    .line 20
    .line 21
    .line 22
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    check-cast v3, Lcom/airbnb/lottie/animation/content/k;

    .line 26
    .line 27
    .line 28
    invoke-interface {v3}, Lcom/airbnb/lottie/animation/content/k;->getPath()Landroid/graphics/Path;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/f;->path:Landroid/graphics/Path;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 41
    .line 42
    iget p2, p1, Landroid/graphics/RectF;->left:F

    .line 43
    .line 44
    const/high16 v0, 0x3f800000    # 1.0f

    .line 45
    sub-float/2addr p2, v0

    .line 46
    .line 47
    iget v1, p1, Landroid/graphics/RectF;->top:F

    .line 48
    sub-float/2addr v1, v0

    .line 49
    .line 50
    iget v2, p1, Landroid/graphics/RectF;->right:F

    .line 51
    add-float/2addr v2, v0

    .line 52
    .line 53
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    .line 54
    add-float/2addr v3, v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 58
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 0
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
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/f;->paint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 6
    return-void
.end method

.method public d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 3

    .line 1
    .line 2
    const-string v0, "FillContent#draw"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/f;->paint:Landroid/graphics/Paint;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/f;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    check-cast v2, Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 19
    move-result v2

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    int-to-float p3, p3

    .line 24
    .line 25
    const/high16 v1, 0x437f0000    # 255.0f

    .line 26
    div-float/2addr p3, v1

    .line 27
    .line 28
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/f;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    check-cast v2, Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 38
    move-result v2

    .line 39
    int-to-float v2, v2

    .line 40
    mul-float/2addr p3, v2

    .line 41
    .line 42
    const/high16 v2, 0x42c80000    # 100.0f

    .line 43
    div-float/2addr p3, v2

    .line 44
    mul-float/2addr p3, v1

    .line 45
    float-to-int p3, p3

    .line 46
    .line 47
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/f;->paint:Landroid/graphics/Paint;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 51
    .line 52
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/f;->path:Landroid/graphics/Path;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 56
    const/4 p3, 0x0

    .line 57
    .line 58
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/f;->paths:Ljava/util/List;

    .line 59
    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 62
    move-result v1

    .line 63
    .line 64
    if-ge p3, v1, :cond_0

    .line 65
    .line 66
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/f;->path:Landroid/graphics/Path;

    .line 67
    .line 68
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/f;->paths:Ljava/util/List;

    .line 69
    .line 70
    .line 71
    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v2

    .line 73
    .line 74
    check-cast v2, Lcom/airbnb/lottie/animation/content/k;

    .line 75
    .line 76
    .line 77
    invoke-interface {v2}, Lcom/airbnb/lottie/animation/content/k;->getPath()Landroid/graphics/Path;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 82
    .line 83
    add-int/lit8 p3, p3, 0x1

    .line 84
    goto :goto_0

    .line 85
    .line 86
    :cond_0
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/f;->path:Landroid/graphics/Path;

    .line 87
    .line 88
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/f;->paint:Landroid/graphics/Paint;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 95
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/f;->lottieDrawable:Lcom/airbnb/lottie/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/f;->invalidateSelf()V

    .line 6
    return-void
.end method

.method public f(Ljava/util/List;Ljava/util/List;)V
    .locals 2
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
    const/4 p1, 0x0

    .line 2
    .line 3
    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 5
    move-result v0

    .line 6
    .line 7
    if-ge p1, v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/airbnb/lottie/animation/content/b;

    .line 14
    .line 15
    instance-of v1, v0, Lcom/airbnb/lottie/animation/content/k;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/f;->paths:Ljava/util/List;

    .line 20
    .line 21
    check-cast v0, Lcom/airbnb/lottie/animation/content/k;

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/f;->name:Ljava/lang/String;

    return-object v0
.end method
