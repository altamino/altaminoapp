.class public Lcom/airbnb/lottie/animation/content/h;
.super Lcom/airbnb/lottie/animation/content/a;
.source "SourceFile"


# static fields
.field private static final CACHE_STEPS_MS:I = 0x20


# instance fields
.field private final boundsRect:Landroid/graphics/RectF;

.field private final cacheSteps:I

.field private final colorAnimation:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "Lcom/airbnb/lottie/model/content/c;",
            "Lcom/airbnb/lottie/model/content/c;",
            ">;"
        }
    .end annotation
.end field

.field private final endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final linearGradientCache:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final radialGradientCache:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/airbnb/lottie/model/content/f;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/e;)V
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/e;->b()Lcom/airbnb/lottie/model/content/p$c;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/p$c;->a()Landroid/graphics/Paint$Cap;

    .line 8
    move-result-object v4

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/e;->g()Lcom/airbnb/lottie/model/content/p$d;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/p$d;->a()Landroid/graphics/Paint$Join;

    .line 16
    move-result-object v5

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/e;->j()Lcom/airbnb/lottie/model/animatable/d;

    .line 20
    move-result-object v6

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/e;->l()Lcom/airbnb/lottie/model/animatable/b;

    .line 24
    move-result-object v7

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/e;->h()Ljava/util/List;

    .line 28
    move-result-object v8

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/e;->c()Lcom/airbnb/lottie/model/animatable/b;

    .line 32
    move-result-object v9

    .line 33
    move-object v1, p0

    .line 34
    move-object v2, p1

    .line 35
    move-object v3, p2

    .line 36
    .line 37
    .line 38
    invoke-direct/range {v1 .. v9}, Lcom/airbnb/lottie/animation/content/a;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;Lcom/airbnb/lottie/model/animatable/d;Lcom/airbnb/lottie/model/animatable/b;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/b;)V

    .line 39
    .line 40
    new-instance v0, Landroidx/collection/LongSparseArray;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 44
    .line 45
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/h;->linearGradientCache:Landroidx/collection/LongSparseArray;

    .line 46
    .line 47
    new-instance v0, Landroidx/collection/LongSparseArray;

    .line 48
    .line 49
    .line 50
    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 51
    .line 52
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/h;->radialGradientCache:Landroidx/collection/LongSparseArray;

    .line 53
    .line 54
    new-instance v0, Landroid/graphics/RectF;

    .line 55
    .line 56
    .line 57
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 58
    .line 59
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/h;->boundsRect:Landroid/graphics/RectF;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/e;->i()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/h;->name:Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/e;->f()Lcom/airbnb/lottie/model/content/f;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/h;->type:Lcom/airbnb/lottie/model/content/f;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/airbnb/lottie/f;->l()Lcom/airbnb/lottie/e;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/airbnb/lottie/e;->k()J

    .line 79
    move-result-wide v0

    .line 80
    .line 81
    const-wide/16 v2, 0x20

    .line 82
    div-long/2addr v0, v2

    .line 83
    long-to-int p1, v0

    .line 84
    .line 85
    iput p1, p0, Lcom/airbnb/lottie/animation/content/h;->cacheSteps:I

    .line 86
    .line 87
    .line 88
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/e;->e()Lcom/airbnb/lottie/model/animatable/c;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/c;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/h;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/e;->k()Lcom/airbnb/lottie/model/animatable/f;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/f;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/h;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/e;->d()Lcom/airbnb/lottie/model/animatable/f;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/f;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/h;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 134
    return-void
.end method

.method private h()I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/h;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/a;->e()F

    .line 6
    move-result v0

    .line 7
    .line 8
    iget v1, p0, Lcom/airbnb/lottie/animation/content/h;->cacheSteps:I

    .line 9
    int-to-float v1, v1

    .line 10
    mul-float/2addr v0, v1

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 14
    move-result v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/h;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/a;->e()F

    .line 20
    move-result v1

    .line 21
    .line 22
    iget v2, p0, Lcom/airbnb/lottie/animation/content/h;->cacheSteps:I

    .line 23
    int-to-float v2, v2

    .line 24
    mul-float/2addr v1, v2

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 28
    move-result v1

    .line 29
    .line 30
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/h;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/a;->e()F

    .line 34
    move-result v2

    .line 35
    .line 36
    iget v3, p0, Lcom/airbnb/lottie/animation/content/h;->cacheSteps:I

    .line 37
    int-to-float v3, v3

    .line 38
    mul-float/2addr v2, v3

    .line 39
    .line 40
    .line 41
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 42
    move-result v2

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    const/16 v3, 0x20f

    .line 47
    mul-int/2addr v3, v0

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_0
    const/16 v3, 0x11

    .line 51
    .line 52
    :goto_0
    if-eqz v1, :cond_1

    .line 53
    .line 54
    mul-int/lit8 v3, v3, 0x1f

    .line 55
    mul-int/2addr v3, v1

    .line 56
    .line 57
    :cond_1
    if-eqz v2, :cond_2

    .line 58
    .line 59
    mul-int/lit8 v3, v3, 0x1f

    .line 60
    mul-int/2addr v3, v2

    .line 61
    :cond_2
    return v3
.end method

.method private i()Landroid/graphics/LinearGradient;
    .locals 14

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/h;->h()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/h;->linearGradientCache:Landroidx/collection/LongSparseArray;

    .line 7
    int-to-long v2, v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->h(J)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Landroid/graphics/LinearGradient;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    return-object v0

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/h;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Landroid/graphics/PointF;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/h;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    check-cast v1, Landroid/graphics/PointF;

    .line 33
    .line 34
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/h;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 38
    move-result-object v4

    .line 39
    .line 40
    check-cast v4, Lcom/airbnb/lottie/model/content/c;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/c;->a()[I

    .line 44
    move-result-object v10

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/c;->b()[F

    .line 48
    move-result-object v11

    .line 49
    .line 50
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/h;->boundsRect:Landroid/graphics/RectF;

    .line 51
    .line 52
    iget v5, v4, Landroid/graphics/RectF;->left:F

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 56
    move-result v4

    .line 57
    .line 58
    const/high16 v6, 0x40000000    # 2.0f

    .line 59
    div-float/2addr v4, v6

    .line 60
    add-float/2addr v5, v4

    .line 61
    .line 62
    iget v4, v0, Landroid/graphics/PointF;->x:F

    .line 63
    add-float/2addr v5, v4

    .line 64
    float-to-int v4, v5

    .line 65
    .line 66
    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/h;->boundsRect:Landroid/graphics/RectF;

    .line 67
    .line 68
    iget v7, v5, Landroid/graphics/RectF;->top:F

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    .line 72
    move-result v5

    .line 73
    div-float/2addr v5, v6

    .line 74
    add-float/2addr v7, v5

    .line 75
    .line 76
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 77
    add-float/2addr v7, v0

    .line 78
    float-to-int v0, v7

    .line 79
    .line 80
    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/h;->boundsRect:Landroid/graphics/RectF;

    .line 81
    .line 82
    iget v7, v5, Landroid/graphics/RectF;->left:F

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    .line 86
    move-result v5

    .line 87
    div-float/2addr v5, v6

    .line 88
    add-float/2addr v7, v5

    .line 89
    .line 90
    iget v5, v1, Landroid/graphics/PointF;->x:F

    .line 91
    add-float/2addr v7, v5

    .line 92
    float-to-int v5, v7

    .line 93
    .line 94
    iget-object v7, p0, Lcom/airbnb/lottie/animation/content/h;->boundsRect:Landroid/graphics/RectF;

    .line 95
    .line 96
    iget v8, v7, Landroid/graphics/RectF;->top:F

    .line 97
    .line 98
    .line 99
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    .line 100
    move-result v7

    .line 101
    div-float/2addr v7, v6

    .line 102
    add-float/2addr v8, v7

    .line 103
    .line 104
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 105
    add-float/2addr v8, v1

    .line 106
    float-to-int v1, v8

    .line 107
    .line 108
    new-instance v13, Landroid/graphics/LinearGradient;

    .line 109
    int-to-float v6, v4

    .line 110
    int-to-float v7, v0

    .line 111
    int-to-float v8, v5

    .line 112
    int-to-float v9, v1

    .line 113
    .line 114
    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 115
    move-object v5, v13

    .line 116
    .line 117
    .line 118
    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 119
    .line 120
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/h;->linearGradientCache:Landroidx/collection/LongSparseArray;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v2, v3, v13}, Landroidx/collection/LongSparseArray;->m(JLjava/lang/Object;)V

    .line 124
    return-object v13
.end method

.method private j()Landroid/graphics/RadialGradient;
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/h;->h()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/h;->radialGradientCache:Landroidx/collection/LongSparseArray;

    .line 7
    int-to-long v2, v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->h(J)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Landroid/graphics/RadialGradient;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    return-object v0

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/h;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Landroid/graphics/PointF;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/h;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    check-cast v1, Landroid/graphics/PointF;

    .line 33
    .line 34
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/h;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 38
    move-result-object v4

    .line 39
    .line 40
    check-cast v4, Lcom/airbnb/lottie/model/content/c;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/c;->a()[I

    .line 44
    move-result-object v9

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/c;->b()[F

    .line 48
    move-result-object v10

    .line 49
    .line 50
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/h;->boundsRect:Landroid/graphics/RectF;

    .line 51
    .line 52
    iget v5, v4, Landroid/graphics/RectF;->left:F

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 56
    move-result v4

    .line 57
    .line 58
    const/high16 v6, 0x40000000    # 2.0f

    .line 59
    div-float/2addr v4, v6

    .line 60
    add-float/2addr v5, v4

    .line 61
    .line 62
    iget v4, v0, Landroid/graphics/PointF;->x:F

    .line 63
    add-float/2addr v5, v4

    .line 64
    float-to-int v4, v5

    .line 65
    .line 66
    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/h;->boundsRect:Landroid/graphics/RectF;

    .line 67
    .line 68
    iget v7, v5, Landroid/graphics/RectF;->top:F

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    .line 72
    move-result v5

    .line 73
    div-float/2addr v5, v6

    .line 74
    add-float/2addr v7, v5

    .line 75
    .line 76
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 77
    add-float/2addr v7, v0

    .line 78
    float-to-int v0, v7

    .line 79
    .line 80
    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/h;->boundsRect:Landroid/graphics/RectF;

    .line 81
    .line 82
    iget v7, v5, Landroid/graphics/RectF;->left:F

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    .line 86
    move-result v5

    .line 87
    div-float/2addr v5, v6

    .line 88
    add-float/2addr v7, v5

    .line 89
    .line 90
    iget v5, v1, Landroid/graphics/PointF;->x:F

    .line 91
    add-float/2addr v7, v5

    .line 92
    float-to-int v5, v7

    .line 93
    .line 94
    iget-object v7, p0, Lcom/airbnb/lottie/animation/content/h;->boundsRect:Landroid/graphics/RectF;

    .line 95
    .line 96
    iget v8, v7, Landroid/graphics/RectF;->top:F

    .line 97
    .line 98
    .line 99
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    .line 100
    move-result v7

    .line 101
    div-float/2addr v7, v6

    .line 102
    add-float/2addr v8, v7

    .line 103
    .line 104
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 105
    add-float/2addr v8, v1

    .line 106
    float-to-int v1, v8

    .line 107
    sub-int/2addr v5, v4

    .line 108
    int-to-double v5, v5

    .line 109
    sub-int/2addr v1, v0

    .line 110
    int-to-double v7, v1

    .line 111
    .line 112
    .line 113
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    .line 114
    move-result-wide v5

    .line 115
    double-to-float v8, v5

    .line 116
    .line 117
    new-instance v1, Landroid/graphics/RadialGradient;

    .line 118
    int-to-float v6, v4

    .line 119
    int-to-float v7, v0

    .line 120
    .line 121
    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 122
    move-object v5, v1

    .line 123
    .line 124
    .line 125
    invoke-direct/range {v5 .. v11}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 126
    .line 127
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/h;->radialGradientCache:Landroidx/collection/LongSparseArray;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v2, v3, v1}, Landroidx/collection/LongSparseArray;->m(JLjava/lang/Object;)V

    .line 131
    return-object v1
.end method


# virtual methods
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
    return-void
.end method

.method public d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/h;->boundsRect:Landroid/graphics/RectF;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/airbnb/lottie/animation/content/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/h;->type:Lcom/airbnb/lottie/model/content/f;

    .line 8
    .line 9
    sget-object v1, Lcom/airbnb/lottie/model/content/f;->Linear:Lcom/airbnb/lottie/model/content/f;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/a;->paint:Landroid/graphics/Paint;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/h;->i()Landroid/graphics/LinearGradient;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/a;->paint:Landroid/graphics/Paint;

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/h;->j()Landroid/graphics/RadialGradient;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/animation/content/a;->d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 34
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/h;->name:Ljava/lang/String;

    return-object v0
.end method
