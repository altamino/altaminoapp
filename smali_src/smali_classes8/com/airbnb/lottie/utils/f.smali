.class public final Lcom/airbnb/lottie/utils/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SQRT_2:F

.field private static displayMetrics:Landroid/util/DisplayMetrics;

.field private static final pathMeasure:Landroid/graphics/PathMeasure;

.field private static final points:[F

.field private static final tempPath:Landroid/graphics/Path;

.field private static final tempPath2:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/PathMeasure;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/airbnb/lottie/utils/f;->pathMeasure:Landroid/graphics/PathMeasure;

    .line 8
    .line 9
    new-instance v0, Landroid/graphics/Path;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/airbnb/lottie/utils/f;->tempPath:Landroid/graphics/Path;

    .line 15
    .line 16
    new-instance v0, Landroid/graphics/Path;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 20
    .line 21
    sput-object v0, Lcom/airbnb/lottie/utils/f;->tempPath2:Landroid/graphics/Path;

    .line 22
    const/4 v0, 0x4

    .line 23
    .line 24
    new-array v0, v0, [F

    .line 25
    .line 26
    sput-object v0, Lcom/airbnb/lottie/utils/f;->points:[F

    .line 27
    .line 28
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 32
    move-result-wide v0

    .line 33
    double-to-float v0, v0

    .line 34
    .line 35
    sput v0, Lcom/airbnb/lottie/utils/f;->SQRT_2:F

    .line 36
    return-void
.end method

.method public static a(Landroid/graphics/Path;FFF)V
    .locals 8

    .line 1
    .line 2
    const-string v0, "applyTrimPathIfNeeded"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v1, Lcom/airbnb/lottie/utils/f;->pathMeasure:Landroid/graphics/PathMeasure;

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p0, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    .line 15
    move-result v2

    .line 16
    .line 17
    const/high16 v3, 0x3f800000    # 1.0f

    .line 18
    .line 19
    cmpl-float v4, p1, v3

    .line 20
    const/4 v5, 0x0

    .line 21
    .line 22
    if-nez v4, :cond_0

    .line 23
    .line 24
    cmpl-float v4, p2, v5

    .line 25
    .line 26
    if-nez v4, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 30
    return-void

    .line 31
    .line 32
    :cond_0
    cmpg-float v4, v2, v3

    .line 33
    .line 34
    if-ltz v4, :cond_9

    .line 35
    .line 36
    sub-float v4, p2, p1

    .line 37
    sub-float/2addr v4, v3

    .line 38
    .line 39
    .line 40
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 41
    move-result v3

    .line 42
    float-to-double v3, v3

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    .line 48
    .line 49
    cmpg-double v3, v3, v6

    .line 50
    .line 51
    if-gez v3, :cond_1

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    mul-float/2addr p1, v2

    .line 54
    mul-float/2addr p2, v2

    .line 55
    .line 56
    .line 57
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    .line 58
    move-result v3

    .line 59
    .line 60
    .line 61
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    .line 62
    move-result p1

    .line 63
    mul-float/2addr p3, v2

    .line 64
    add-float/2addr v3, p3

    .line 65
    add-float/2addr p1, p3

    .line 66
    .line 67
    cmpl-float p2, v3, v2

    .line 68
    .line 69
    if-ltz p2, :cond_2

    .line 70
    .line 71
    cmpl-float p2, p1, v2

    .line 72
    .line 73
    if-ltz p2, :cond_2

    .line 74
    .line 75
    .line 76
    invoke-static {v3, v2}, Lcom/airbnb/lottie/utils/e;->d(FF)I

    .line 77
    move-result p2

    .line 78
    int-to-float v3, p2

    .line 79
    .line 80
    .line 81
    invoke-static {p1, v2}, Lcom/airbnb/lottie/utils/e;->d(FF)I

    .line 82
    move-result p1

    .line 83
    int-to-float p1, p1

    .line 84
    .line 85
    :cond_2
    cmpg-float p2, v3, v5

    .line 86
    .line 87
    if-gez p2, :cond_3

    .line 88
    .line 89
    .line 90
    invoke-static {v3, v2}, Lcom/airbnb/lottie/utils/e;->d(FF)I

    .line 91
    move-result p2

    .line 92
    int-to-float v3, p2

    .line 93
    .line 94
    :cond_3
    cmpg-float p2, p1, v5

    .line 95
    .line 96
    if-gez p2, :cond_4

    .line 97
    .line 98
    .line 99
    invoke-static {p1, v2}, Lcom/airbnb/lottie/utils/e;->d(FF)I

    .line 100
    move-result p1

    .line 101
    int-to-float p1, p1

    .line 102
    .line 103
    :cond_4
    cmpl-float p2, v3, p1

    .line 104
    .line 105
    if-nez p2, :cond_5

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    .line 109
    .line 110
    .line 111
    invoke-static {v0}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 112
    return-void

    .line 113
    .line 114
    :cond_5
    if-ltz p2, :cond_6

    .line 115
    sub-float/2addr v3, v2

    .line 116
    .line 117
    :cond_6
    sget-object p2, Lcom/airbnb/lottie/utils/f;->tempPath:Landroid/graphics/Path;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 121
    const/4 p3, 0x1

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v3, p1, p2, p3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 125
    .line 126
    cmpl-float v4, p1, v2

    .line 127
    .line 128
    if-lez v4, :cond_7

    .line 129
    .line 130
    sget-object v3, Lcom/airbnb/lottie/utils/f;->tempPath2:Landroid/graphics/Path;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 134
    rem-float/2addr p1, v2

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v5, p1, v3, p3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 141
    goto :goto_0

    .line 142
    .line 143
    :cond_7
    cmpg-float p1, v3, v5

    .line 144
    .line 145
    if-gez p1, :cond_8

    .line 146
    .line 147
    sget-object p1, Lcom/airbnb/lottie/utils/f;->tempPath2:Landroid/graphics/Path;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 151
    add-float/2addr v3, v2

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v3, v2, p1, p3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 158
    .line 159
    .line 160
    :cond_8
    :goto_0
    invoke-virtual {p0, p2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 161
    .line 162
    .line 163
    invoke-static {v0}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 164
    return-void

    .line 165
    .line 166
    .line 167
    :cond_9
    :goto_1
    invoke-static {v0}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 168
    return-void
.end method

.method public static b(Landroid/graphics/Path;Lcom/airbnb/lottie/animation/content/q;)V
    .locals 3
    .param p1    # Lcom/airbnb/lottie/animation/content/q;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/content/q;->i()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Ljava/lang/Float;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 17
    move-result v0

    .line 18
    .line 19
    const/high16 v1, 0x42c80000    # 100.0f

    .line 20
    div-float/2addr v0, v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/content/q;->g()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    check-cast v2, Ljava/lang/Float;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 34
    move-result v2

    .line 35
    div-float/2addr v2, v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/content/q;->h()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    check-cast p1, Ljava/lang/Float;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 49
    move-result p1

    .line 50
    .line 51
    const/high16 v1, 0x43b40000    # 360.0f

    .line 52
    div-float/2addr p1, v1

    .line 53
    .line 54
    .line 55
    invoke-static {p0, v0, v2, p1}, Lcom/airbnb/lottie/utils/f;->a(Landroid/graphics/Path;FFF)V

    .line 56
    return-void
.end method

.method public static c(Ljava/io/Closeable;)V
    .locals 0

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    throw p0

    .line 9
    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method public static d(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;
    .locals 8

    .line 1
    .line 2
    new-instance v7, Landroid/graphics/Path;

    .line 3
    .line 4
    .line 5
    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 6
    .line 7
    iget v0, p0, Landroid/graphics/PointF;->x:F

    .line 8
    .line 9
    iget v1, p0, Landroid/graphics/PointF;->y:F

    .line 10
    .line 11
    .line 12
    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    if-eqz p3, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/graphics/PointF;->length()F

    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    cmpl-float v0, v0, v1

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3}, Landroid/graphics/PointF;->length()F

    .line 29
    move-result v0

    .line 30
    .line 31
    cmpl-float v0, v0, v1

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    :cond_0
    iget v0, p0, Landroid/graphics/PointF;->x:F

    .line 36
    .line 37
    iget v1, p2, Landroid/graphics/PointF;->x:F

    .line 38
    add-float/2addr v1, v0

    .line 39
    .line 40
    iget p0, p0, Landroid/graphics/PointF;->y:F

    .line 41
    .line 42
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 43
    .line 44
    add-float v2, p0, p2

    .line 45
    .line 46
    iget v5, p1, Landroid/graphics/PointF;->x:F

    .line 47
    .line 48
    iget p0, p3, Landroid/graphics/PointF;->x:F

    .line 49
    .line 50
    add-float v3, v5, p0

    .line 51
    .line 52
    iget v6, p1, Landroid/graphics/PointF;->y:F

    .line 53
    .line 54
    iget p0, p3, Landroid/graphics/PointF;->y:F

    .line 55
    .line 56
    add-float v4, v6, p0

    .line 57
    move-object v0, v7

    .line 58
    .line 59
    .line 60
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_1
    iget p0, p1, Landroid/graphics/PointF;->x:F

    .line 64
    .line 65
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7, p0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 69
    :goto_0
    return-object v7
.end method

.method public static e(Landroid/content/Context;)F
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    const-string v0, "animator_duration_scale"

    .line 7
    .line 8
    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static f(Landroid/graphics/Matrix;)F
    .locals 6

    .line 1
    .line 2
    sget-object v0, Lcom/airbnb/lottie/utils/f;->points:[F

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    aput v2, v0, v1

    .line 7
    const/4 v3, 0x1

    .line 8
    .line 9
    aput v2, v0, v3

    .line 10
    .line 11
    sget v2, Lcom/airbnb/lottie/utils/f;->SQRT_2:F

    .line 12
    const/4 v4, 0x2

    .line 13
    .line 14
    aput v2, v0, v4

    .line 15
    const/4 v5, 0x3

    .line 16
    .line 17
    aput v2, v0, v5

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 21
    .line 22
    aget p0, v0, v4

    .line 23
    .line 24
    aget v1, v0, v1

    .line 25
    sub-float/2addr p0, v1

    .line 26
    .line 27
    aget v1, v0, v5

    .line 28
    .line 29
    aget v0, v0, v3

    .line 30
    sub-float/2addr v1, v0

    .line 31
    float-to-double v2, p0

    .line 32
    float-to-double v0, v1

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    .line 36
    move-result-wide v0

    .line 37
    double-to-float p0, v0

    .line 38
    .line 39
    const/high16 v0, 0x40000000    # 2.0f

    .line 40
    div-float/2addr p0, v0

    .line 41
    return p0
.end method

.method public static g(FFFF)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-eqz v1, :cond_0

    const/16 v1, 0x20f

    int-to-float v1, v1

    mul-float/2addr v1, p0

    float-to-int p0, v1

    goto :goto_0

    :cond_0
    const/16 p0, 0x11

    :goto_0
    cmpl-float v1, p1, v0

    if-eqz v1, :cond_1

    mul-int/lit8 p0, p0, 0x1f

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    :cond_1
    cmpl-float p1, p2, v0

    if-eqz p1, :cond_2

    mul-int/lit8 p0, p0, 0x1f

    int-to-float p0, p0

    mul-float/2addr p0, p2

    float-to-int p0, p0

    :cond_2
    cmpl-float p1, p3, v0

    if-eqz p1, :cond_3

    mul-int/lit8 p0, p0, 0x1f

    int-to-float p0, p0

    mul-float/2addr p0, p3

    float-to-int p0, p0

    :cond_3
    return p0
.end method

.method public static h(Lcom/airbnb/lottie/e;III)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/airbnb/lottie/e;->q()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-ge v0, p1, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/e;->q()I

    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    if-le v0, p1, :cond_1

    .line 16
    return v2

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/e;->r()I

    .line 20
    move-result p1

    .line 21
    .line 22
    if-ge p1, p2, :cond_2

    .line 23
    return v1

    .line 24
    .line 25
    .line 26
    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/e;->r()I

    .line 27
    move-result p1

    .line 28
    .line 29
    if-le p1, p2, :cond_3

    .line 30
    return v2

    .line 31
    .line 32
    .line 33
    :cond_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/e;->s()I

    .line 34
    move-result p0

    .line 35
    .line 36
    if-lt p0, p3, :cond_4

    .line 37
    move v1, v2

    .line 38
    :cond_4
    return v1
.end method
