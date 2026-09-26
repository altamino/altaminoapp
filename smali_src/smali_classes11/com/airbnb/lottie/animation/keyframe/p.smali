.class public Lcom/airbnb/lottie/animation/keyframe/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final anchorPoint:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final endOpacity:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final matrix:Landroid/graphics/Matrix;

.field private final opacity:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final position:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final rotation:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final scale:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "Lcom/airbnb/lottie/model/k;",
            "Lcom/airbnb/lottie/model/k;",
            ">;"
        }
    .end annotation
.end field

.field private final startOpacity:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/animatable/l;)V
    .locals 2

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
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->matrix:Landroid/graphics/Matrix;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/l;->c()Lcom/airbnb/lottie/model/animatable/e;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/e;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/l;->f()Lcom/airbnb/lottie/model/animatable/m;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Lcom/airbnb/lottie/model/animatable/m;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->position:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/l;->h()Lcom/airbnb/lottie/model/animatable/g;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/g;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->scale:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/l;->g()Lcom/airbnb/lottie/model/animatable/b;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/b;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->rotation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/l;->e()Lcom/airbnb/lottie/model/animatable/d;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/d;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->opacity:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/l;->i()Lcom/airbnb/lottie/model/animatable/b;

    .line 64
    move-result-object v0

    .line 65
    const/4 v1, 0x0

    .line 66
    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/l;->i()Lcom/airbnb/lottie/model/animatable/b;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/b;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 78
    goto :goto_0

    .line 79
    .line 80
    :cond_0
    iput-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 81
    .line 82
    .line 83
    :goto_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/l;->d()Lcom/airbnb/lottie/model/animatable/b;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    if-eqz v0, :cond_1

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/l;->d()Lcom/airbnb/lottie/model/animatable/b;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/b;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 97
    goto :goto_1

    .line 98
    .line 99
    :cond_1
    iput-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 100
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/model/layer/a;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->position:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->scale:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->rotation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->opacity:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 40
    :cond_1
    return-void
.end method

.method public b(Lcom/airbnb/lottie/animation/keyframe/a$a;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->position:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->scale:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->rotation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->opacity:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 40
    :cond_1
    return-void
.end method

.method public c()Lcom/airbnb/lottie/animation/keyframe/a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/a;

    return-object v0
.end method

.method public d()Landroid/graphics/Matrix;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->matrix:Landroid/graphics/Matrix;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->position:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Landroid/graphics/PointF;

    .line 14
    .line 15
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    cmpl-float v3, v1, v2

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    iget v3, v0, Landroid/graphics/PointF;->y:F

    .line 23
    .line 24
    cmpl-float v3, v3, v2

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    :cond_0
    iget-object v3, p0, Lcom/airbnb/lottie/animation/keyframe/p;->matrix:Landroid/graphics/Matrix;

    .line 29
    .line 30
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v1, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->rotation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Ljava/lang/Float;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 45
    move-result v0

    .line 46
    .line 47
    cmpl-float v1, v0, v2

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->matrix:Landroid/graphics/Matrix;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 55
    .line 56
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->scale:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    check-cast v0, Lcom/airbnb/lottie/model/k;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/k;->a()F

    .line 66
    move-result v1

    .line 67
    .line 68
    const/high16 v3, 0x3f800000    # 1.0f

    .line 69
    .line 70
    cmpl-float v1, v1, v3

    .line 71
    .line 72
    if-nez v1, :cond_3

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/k;->b()F

    .line 76
    move-result v1

    .line 77
    .line 78
    cmpl-float v1, v1, v3

    .line 79
    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    :cond_3
    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->matrix:Landroid/graphics/Matrix;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/k;->a()F

    .line 86
    move-result v3

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/k;->b()F

    .line 90
    move-result v0

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v3, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 94
    .line 95
    :cond_4
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    check-cast v0, Landroid/graphics/PointF;

    .line 102
    .line 103
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 104
    .line 105
    cmpl-float v3, v1, v2

    .line 106
    .line 107
    if-nez v3, :cond_5

    .line 108
    .line 109
    iget v3, v0, Landroid/graphics/PointF;->y:F

    .line 110
    .line 111
    cmpl-float v2, v3, v2

    .line 112
    .line 113
    if-eqz v2, :cond_6

    .line 114
    .line 115
    :cond_5
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/p;->matrix:Landroid/graphics/Matrix;

    .line 116
    neg-float v1, v1

    .line 117
    .line 118
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 119
    neg-float v0, v0

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 123
    .line 124
    :cond_6
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->matrix:Landroid/graphics/Matrix;

    .line 125
    return-object v0
.end method

.method public e(F)Landroid/graphics/Matrix;
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->position:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/graphics/PointF;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Landroid/graphics/PointF;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/p;->scale:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    check-cast v2, Lcom/airbnb/lottie/model/k;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/airbnb/lottie/animation/keyframe/p;->rotation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    check-cast v3, Ljava/lang/Float;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 36
    move-result v3

    .line 37
    .line 38
    iget-object v4, p0, Lcom/airbnb/lottie/animation/keyframe/p;->matrix:Landroid/graphics/Matrix;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 42
    .line 43
    iget-object v4, p0, Lcom/airbnb/lottie/animation/keyframe/p;->matrix:Landroid/graphics/Matrix;

    .line 44
    .line 45
    iget v5, v0, Landroid/graphics/PointF;->x:F

    .line 46
    mul-float/2addr v5, p1

    .line 47
    .line 48
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 49
    mul-float/2addr v0, p1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v5, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 53
    .line 54
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->matrix:Landroid/graphics/Matrix;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/k;->a()F

    .line 58
    move-result v4

    .line 59
    float-to-double v4, v4

    .line 60
    float-to-double v6, p1

    .line 61
    .line 62
    .line 63
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 64
    move-result-wide v4

    .line 65
    double-to-float v4, v4

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/k;->b()F

    .line 69
    move-result v2

    .line 70
    float-to-double v8, v2

    .line 71
    .line 72
    .line 73
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 74
    move-result-wide v5

    .line 75
    double-to-float v2, v5

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v4, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 79
    .line 80
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->matrix:Landroid/graphics/Matrix;

    .line 81
    mul-float/2addr v3, p1

    .line 82
    .line 83
    iget p1, v1, Landroid/graphics/PointF;->x:F

    .line 84
    .line 85
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v3, p1, v1}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 89
    .line 90
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/p;->matrix:Landroid/graphics/Matrix;

    .line 91
    return-object p1
.end method

.method public f()Lcom/airbnb/lottie/animation/keyframe/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->opacity:Lcom/airbnb/lottie/animation/keyframe/a;

    return-object v0
.end method

.method public g()Lcom/airbnb/lottie/animation/keyframe/a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/p;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/a;

    return-object v0
.end method
