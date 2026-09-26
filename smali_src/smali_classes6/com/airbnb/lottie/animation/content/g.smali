.class public Lcom/airbnb/lottie/animation/content/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/d;
.implements Lcom/airbnb/lottie/animation/keyframe/a$a;


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

.field private final radialGradientCache:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final shaderMatrix:Landroid/graphics/Matrix;

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
.method public constructor <init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/d;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/collection/LongSparseArray;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/g;->linearGradientCache:Landroidx/collection/LongSparseArray;

    .line 11
    .line 12
    new-instance v0, Landroidx/collection/LongSparseArray;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/g;->radialGradientCache:Landroidx/collection/LongSparseArray;

    .line 18
    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/g;->shaderMatrix:Landroid/graphics/Matrix;

    .line 25
    .line 26
    new-instance v0, Landroid/graphics/Path;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/g;->path:Landroid/graphics/Path;

    .line 32
    .line 33
    new-instance v1, Landroid/graphics/Paint;

    .line 34
    const/4 v2, 0x1

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 38
    .line 39
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/g;->paint:Landroid/graphics/Paint;

    .line 40
    .line 41
    new-instance v1, Landroid/graphics/RectF;

    .line 42
    .line 43
    .line 44
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 45
    .line 46
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/g;->boundsRect:Landroid/graphics/RectF;

    .line 47
    .line 48
    new-instance v1, Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/g;->paths:Ljava/util/List;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/d;->f()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/g;->name:Ljava/lang/String;

    .line 60
    .line 61
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/g;->lottieDrawable:Lcom/airbnb/lottie/f;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/d;->e()Lcom/airbnb/lottie/model/content/f;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/g;->type:Lcom/airbnb/lottie/model/content/f;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/d;->c()Landroid/graphics/Path$FillType;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/airbnb/lottie/f;->l()Lcom/airbnb/lottie/e;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/airbnb/lottie/e;->k()J

    .line 82
    move-result-wide v0

    .line 83
    .line 84
    const-wide/16 v2, 0x20

    .line 85
    div-long/2addr v0, v2

    .line 86
    long-to-int p1, v0

    .line 87
    .line 88
    iput p1, p0, Lcom/airbnb/lottie/animation/content/g;->cacheSteps:I

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/d;->d()Lcom/airbnb/lottie/model/animatable/c;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/c;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/g;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/d;->g()Lcom/airbnb/lottie/model/animatable/d;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/d;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/g;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/d;->h()Lcom/airbnb/lottie/model/animatable/f;

    .line 124
    move-result-object p1

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/f;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 128
    move-result-object p1

    .line 129
    .line 130
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/g;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/d;->b()Lcom/airbnb/lottie/model/animatable/f;

    .line 140
    move-result-object p1

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/f;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 144
    move-result-object p1

    .line 145
    .line 146
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/g;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 153
    return-void
.end method

.method private c()I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/g;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/a;->e()F

    .line 6
    move-result v0

    .line 7
    .line 8
    iget v1, p0, Lcom/airbnb/lottie/animation/content/g;->cacheSteps:I

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
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/g;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/a;->e()F

    .line 20
    move-result v1

    .line 21
    .line 22
    iget v2, p0, Lcom/airbnb/lottie/animation/content/g;->cacheSteps:I

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
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/g;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/a;->e()F

    .line 34
    move-result v2

    .line 35
    .line 36
    iget v3, p0, Lcom/airbnb/lottie/animation/content/g;->cacheSteps:I

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

.method private g()Landroid/graphics/LinearGradient;
    .locals 13

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/g;->c()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/g;->linearGradientCache:Landroidx/collection/LongSparseArray;

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
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/g;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

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
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/g;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

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
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/g;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

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
    new-instance v4, Landroid/graphics/LinearGradient;

    .line 51
    .line 52
    iget v6, v0, Landroid/graphics/PointF;->x:F

    .line 53
    .line 54
    iget v7, v0, Landroid/graphics/PointF;->y:F

    .line 55
    .line 56
    iget v8, v1, Landroid/graphics/PointF;->x:F

    .line 57
    .line 58
    iget v9, v1, Landroid/graphics/PointF;->y:F

    .line 59
    .line 60
    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 61
    move-object v5, v4

    .line 62
    .line 63
    .line 64
    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 65
    .line 66
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/g;->linearGradientCache:Landroidx/collection/LongSparseArray;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2, v3, v4}, Landroidx/collection/LongSparseArray;->m(JLjava/lang/Object;)V

    .line 70
    return-object v4
.end method

.method private h()Landroid/graphics/RadialGradient;
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/g;->c()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/g;->radialGradientCache:Landroidx/collection/LongSparseArray;

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
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/g;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

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
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/g;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

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
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/g;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

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
    iget v6, v0, Landroid/graphics/PointF;->x:F

    .line 51
    .line 52
    iget v7, v0, Landroid/graphics/PointF;->y:F

    .line 53
    .line 54
    iget v0, v1, Landroid/graphics/PointF;->x:F

    .line 55
    .line 56
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 57
    sub-float/2addr v0, v6

    .line 58
    float-to-double v4, v0

    .line 59
    sub-float/2addr v1, v7

    .line 60
    float-to-double v0, v1

    .line 61
    .line 62
    .line 63
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    .line 64
    move-result-wide v0

    .line 65
    double-to-float v8, v0

    .line 66
    .line 67
    new-instance v0, Landroid/graphics/RadialGradient;

    .line 68
    .line 69
    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 70
    move-object v5, v0

    .line 71
    .line 72
    .line 73
    invoke-direct/range {v5 .. v11}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 74
    .line 75
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/g;->radialGradientCache:Landroidx/collection/LongSparseArray;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2, v3, v0}, Landroidx/collection/LongSparseArray;->m(JLjava/lang/Object;)V

    .line 79
    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/g;->path:Landroid/graphics/Path;

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
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/g;->paths:Ljava/util/List;

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
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/g;->path:Landroid/graphics/Path;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/g;->paths:Ljava/util/List;

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
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/g;->path:Landroid/graphics/Path;

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
    return-void
.end method

.method public d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5

    .line 1
    .line 2
    const-string v0, "GradientFillContent#draw"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/g;->path:Landroid/graphics/Path;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    .line 14
    :goto_0
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/g;->paths:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 18
    move-result v3

    .line 19
    .line 20
    if-ge v2, v3, :cond_0

    .line 21
    .line 22
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/g;->path:Landroid/graphics/Path;

    .line 23
    .line 24
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/g;->paths:Ljava/util/List;

    .line 25
    .line 26
    .line 27
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v4

    .line 29
    .line 30
    check-cast v4, Lcom/airbnb/lottie/animation/content/k;

    .line 31
    .line 32
    .line 33
    invoke-interface {v4}, Lcom/airbnb/lottie/animation/content/k;->getPath()Landroid/graphics/Path;

    .line 34
    move-result-object v4

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_0
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/g;->path:Landroid/graphics/Path;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/g;->boundsRect:Landroid/graphics/RectF;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 48
    .line 49
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/g;->type:Lcom/airbnb/lottie/model/content/f;

    .line 50
    .line 51
    sget-object v2, Lcom/airbnb/lottie/model/content/f;->Linear:Lcom/airbnb/lottie/model/content/f;

    .line 52
    .line 53
    if-ne v1, v2, :cond_1

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/g;->g()Landroid/graphics/LinearGradient;

    .line 57
    move-result-object v1

    .line 58
    goto :goto_1

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/g;->h()Landroid/graphics/RadialGradient;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    :goto_1
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/g;->shaderMatrix:Landroid/graphics/Matrix;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 68
    .line 69
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/g;->shaderMatrix:Landroid/graphics/Matrix;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 73
    .line 74
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/g;->paint:Landroid/graphics/Paint;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 78
    int-to-float p2, p3

    .line 79
    .line 80
    const/high16 p3, 0x437f0000    # 255.0f

    .line 81
    div-float/2addr p2, p3

    .line 82
    .line 83
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/g;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    check-cast v1, Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 93
    move-result v1

    .line 94
    int-to-float v1, v1

    .line 95
    mul-float/2addr p2, v1

    .line 96
    .line 97
    const/high16 v1, 0x42c80000    # 100.0f

    .line 98
    div-float/2addr p2, v1

    .line 99
    mul-float/2addr p2, p3

    .line 100
    float-to-int p2, p2

    .line 101
    .line 102
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/g;->paint:Landroid/graphics/Paint;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 106
    .line 107
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/g;->path:Landroid/graphics/Path;

    .line 108
    .line 109
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/g;->paint:Landroid/graphics/Paint;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v0}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 116
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/g;->lottieDrawable:Lcom/airbnb/lottie/f;

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
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/g;->paths:Ljava/util/List;

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

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/g;->name:Ljava/lang/String;

    return-object v0
.end method
