.class public Lcom/airbnb/lottie/utils/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/PointF;

    .line 3
    .line 4
    iget v1, p0, Landroid/graphics/PointF;->x:F

    .line 5
    .line 6
    iget v2, p1, Landroid/graphics/PointF;->x:F

    .line 7
    add-float/2addr v1, v2

    .line 8
    .line 9
    iget p0, p0, Landroid/graphics/PointF;->y:F

    .line 10
    .line 11
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 12
    add-float/2addr p0, p1

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 16
    return-object v0
.end method

.method public static b(FFF)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private static c(II)I
    .locals 2

    .line 1
    .line 2
    div-int v0, p0, p1

    .line 3
    .line 4
    xor-int v1, p0, p1

    .line 5
    .line 6
    if-gez v1, :cond_0

    .line 7
    mul-int/2addr p1, v0

    .line 8
    .line 9
    if-eq p1, p0, :cond_0

    .line 10
    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    :cond_0
    return v0
.end method

.method public static d(FF)I
    .locals 0

    .line 1
    float-to-int p0, p0

    .line 2
    float-to-int p1, p1

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/airbnb/lottie/utils/e;->e(II)I

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static e(II)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/airbnb/lottie/utils/e;->c(II)I

    .line 4
    move-result v0

    .line 5
    mul-int/2addr v0, p1

    .line 6
    sub-int/2addr p0, v0

    .line 7
    return p0
.end method

.method public static f(Lcom/airbnb/lottie/model/content/l;Landroid/graphics/Path;)V
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/content/l;->b()Landroid/graphics/PointF;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 10
    .line 11
    iget v2, v0, Landroid/graphics/PointF;->y:F

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 15
    .line 16
    new-instance v1, Landroid/graphics/PointF;

    .line 17
    .line 18
    iget v2, v0, Landroid/graphics/PointF;->x:F

    .line 19
    .line 20
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 24
    const/4 v0, 0x0

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/content/l;->a()Ljava/util/List;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 32
    move-result v2

    .line 33
    .line 34
    if-ge v0, v2, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/content/l;->a()Ljava/util/List;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    .line 41
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    check-cast v2, Lcom/airbnb/lottie/model/c;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/c;->a()Landroid/graphics/PointF;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/c;->b()Landroid/graphics/PointF;

    .line 52
    move-result-object v4

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/c;->c()Landroid/graphics/PointF;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v1}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v5

    .line 61
    .line 62
    if-eqz v5, :cond_0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v2}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result v5

    .line 67
    .line 68
    if-eqz v5, :cond_0

    .line 69
    .line 70
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 71
    .line 72
    iget v4, v2, Landroid/graphics/PointF;->y:F

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 76
    goto :goto_1

    .line 77
    .line 78
    :cond_0
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 79
    .line 80
    iget v7, v3, Landroid/graphics/PointF;->y:F

    .line 81
    .line 82
    iget v8, v4, Landroid/graphics/PointF;->x:F

    .line 83
    .line 84
    iget v9, v4, Landroid/graphics/PointF;->y:F

    .line 85
    .line 86
    iget v10, v2, Landroid/graphics/PointF;->x:F

    .line 87
    .line 88
    iget v11, v2, Landroid/graphics/PointF;->y:F

    .line 89
    move-object v5, p1

    .line 90
    .line 91
    .line 92
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 93
    .line 94
    :goto_1
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 95
    .line 96
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v3, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 100
    .line 101
    add-int/lit8 v0, v0, 0x1

    .line 102
    goto :goto_0

    .line 103
    .line 104
    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/content/l;->d()Z

    .line 106
    move-result p0

    .line 107
    .line 108
    if-eqz p0, :cond_2

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 112
    :cond_2
    return-void
.end method

.method public static g(DDD)D
    .locals 0
    .param p4    # D
        .annotation build Landroidx/annotation/FloatRange;
        .end annotation
    .end param

    .line 1
    sub-double/2addr p2, p0

    mul-double/2addr p4, p2

    add-double/2addr p0, p4

    return-wide p0
.end method

.method public static h(FFF)F
    .locals 0
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
        .end annotation
    .end param

    .line 1
    sub-float/2addr p1, p0

    mul-float/2addr p2, p1

    add-float/2addr p0, p2

    return p0
.end method

.method public static i(IIF)I
    .locals 1
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
        .end annotation
    .end param

    .line 1
    int-to-float v0, p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p2, p0

    add-float/2addr v0, p2

    float-to-int p0, v0

    return p0
.end method
