.class public Lcom/airbnb/lottie/animation/content/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/k;
.implements Lcom/airbnb/lottie/animation/keyframe/a$a;


# static fields
.field private static final ELLIPSE_CONTROL_POINT_PERCENTAGE:F = 0.55228f


# instance fields
.field private isPathValid:Z

.field private final lottieDrawable:Lcom/airbnb/lottie/f;

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private final positionAnimation:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private trimPath:Lcom/airbnb/lottie/animation/content/q;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/a;)V
    .locals 1

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
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/e;->path:Landroid/graphics/Path;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->b()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/e;->name:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/e;->lottieDrawable:Lcom/airbnb/lottie/f;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->d()Lcom/airbnb/lottie/model/animatable/f;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/f;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/e;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->c()Lcom/airbnb/lottie/model/animatable/m;

    .line 32
    move-result-object p3

    .line 33
    .line 34
    .line 35
    invoke-interface {p3}, Lcom/airbnb/lottie/model/animatable/m;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 36
    move-result-object p3

    .line 37
    .line 38
    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/e;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 51
    return-void
.end method

.method private c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/e;->isPathValid:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/e;->lottieDrawable:Lcom/airbnb/lottie/f;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/airbnb/lottie/f;->invalidateSelf()V

    .line 9
    return-void
.end method


# virtual methods
.method public e()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/e;->c()V

    .line 4
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
    const/4 p2, 0x0

    .line 2
    .line 3
    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 5
    move-result v0

    .line 6
    .line 7
    if-ge p2, v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/airbnb/lottie/animation/content/b;

    .line 14
    .line 15
    instance-of v1, v0, Lcom/airbnb/lottie/animation/content/q;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    check-cast v0, Lcom/airbnb/lottie/animation/content/q;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/content/q;->j()Lcom/airbnb/lottie/model/content/q$c;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    sget-object v2, Lcom/airbnb/lottie/model/content/q$c;->Simultaneously:Lcom/airbnb/lottie/model/content/q$c;

    .line 26
    .line 27
    if-ne v1, v2, :cond_0

    .line 28
    .line 29
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/e;->trimPath:Lcom/airbnb/lottie/animation/content/q;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/content/q;->c(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 33
    .line 34
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/e;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 19

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-boolean v1, v0, Lcom/airbnb/lottie/animation/content/e;->isPathValid:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/e;->path:Landroid/graphics/Path;

    .line 9
    return-object v1

    .line 10
    .line 11
    :cond_0
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/e;->path:Landroid/graphics/Path;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 15
    .line 16
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/e;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Landroid/graphics/PointF;

    .line 23
    .line 24
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 25
    .line 26
    const/high16 v3, 0x40000000    # 2.0f

    .line 27
    div-float/2addr v2, v3

    .line 28
    .line 29
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 30
    div-float/2addr v1, v3

    .line 31
    .line 32
    .line 33
    const v3, 0x3f0d6239    # 0.55228f

    .line 34
    .line 35
    mul-float v11, v2, v3

    .line 36
    mul-float/2addr v3, v1

    .line 37
    .line 38
    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/e;->path:Landroid/graphics/Path;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 42
    .line 43
    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/e;->path:Landroid/graphics/Path;

    .line 44
    neg-float v15, v1

    .line 45
    const/4 v12, 0x0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v12, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 49
    .line 50
    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/e;->path:Landroid/graphics/Path;

    .line 51
    .line 52
    add-float v13, v11, v12

    .line 53
    .line 54
    sub-float v14, v12, v3

    .line 55
    const/4 v10, 0x0

    .line 56
    move v5, v13

    .line 57
    move v6, v15

    .line 58
    move v7, v2

    .line 59
    move v8, v14

    .line 60
    move v9, v2

    .line 61
    .line 62
    .line 63
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 64
    .line 65
    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/e;->path:Landroid/graphics/Path;

    .line 66
    add-float/2addr v3, v12

    .line 67
    const/4 v9, 0x0

    .line 68
    move v5, v2

    .line 69
    move v6, v3

    .line 70
    move v7, v13

    .line 71
    move v8, v1

    .line 72
    move v10, v1

    .line 73
    .line 74
    .line 75
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 76
    .line 77
    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/e;->path:Landroid/graphics/Path;

    .line 78
    .line 79
    sub-float v11, v12, v11

    .line 80
    neg-float v13, v2

    .line 81
    const/4 v10, 0x0

    .line 82
    move v5, v11

    .line 83
    move v6, v1

    .line 84
    move v7, v13

    .line 85
    move v8, v3

    .line 86
    move v9, v13

    .line 87
    .line 88
    .line 89
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 90
    .line 91
    iget-object v12, v0, Lcom/airbnb/lottie/animation/content/e;->path:Landroid/graphics/Path;

    .line 92
    .line 93
    const/16 v17, 0x0

    .line 94
    move v1, v15

    .line 95
    move v15, v11

    .line 96
    .line 97
    move/from16 v16, v1

    .line 98
    .line 99
    move/from16 v18, v1

    .line 100
    .line 101
    .line 102
    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 103
    .line 104
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/e;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 108
    move-result-object v1

    .line 109
    .line 110
    check-cast v1, Landroid/graphics/PointF;

    .line 111
    .line 112
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/e;->path:Landroid/graphics/Path;

    .line 113
    .line 114
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 115
    .line 116
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 120
    .line 121
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/e;->path:Landroid/graphics/Path;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 125
    .line 126
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/e;->path:Landroid/graphics/Path;

    .line 127
    .line 128
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/e;->trimPath:Lcom/airbnb/lottie/animation/content/q;

    .line 129
    .line 130
    .line 131
    invoke-static {v1, v2}, Lcom/airbnb/lottie/utils/f;->b(Landroid/graphics/Path;Lcom/airbnb/lottie/animation/content/q;)V

    .line 132
    const/4 v1, 0x1

    .line 133
    .line 134
    iput-boolean v1, v0, Lcom/airbnb/lottie/animation/content/e;->isPathValid:Z

    .line 135
    .line 136
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/e;->path:Landroid/graphics/Path;

    .line 137
    return-object v1
.end method
