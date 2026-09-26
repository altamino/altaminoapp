.class public Lcom/airbnb/lottie/model/layer/b;
.super Lcom/airbnb/lottie/model/layer/a;
.source "SourceFile"


# instance fields
.field private hasMasks:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private hasMatte:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/a;",
            ">;"
        }
    .end annotation
.end field

.field private final newClipRect:Landroid/graphics/RectF;

.field private final rect:Landroid/graphics/RectF;

.field private final timeRemapping:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/d;Ljava/util/List;Lcom/airbnb/lottie/e;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/f;",
            "Lcom/airbnb/lottie/model/layer/d;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/d;",
            ">;",
            "Lcom/airbnb/lottie/e;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/a;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/d;)V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->layers:Ljava/util/List;

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/RectF;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->rect:Landroid/graphics/RectF;

    .line 18
    .line 19
    new-instance v0, Landroid/graphics/RectF;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->newClipRect:Landroid/graphics/RectF;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/d;->s()Lcom/airbnb/lottie/model/animatable/b;

    .line 28
    move-result-object p2

    .line 29
    const/4 v0, 0x0

    .line 30
    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/b;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/b;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_0
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 47
    .line 48
    :goto_0
    new-instance p2, Landroidx/collection/LongSparseArray;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p4}, Lcom/airbnb/lottie/e;->p()Ljava/util/List;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 56
    move-result v1

    .line 57
    .line 58
    .line 59
    invoke-direct {p2, v1}, Landroidx/collection/LongSparseArray;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 63
    move-result v1

    .line 64
    const/4 v2, 0x1

    .line 65
    sub-int/2addr v1, v2

    .line 66
    move-object v3, v0

    .line 67
    :goto_1
    const/4 v4, 0x0

    .line 68
    .line 69
    if-ltz v1, :cond_4

    .line 70
    .line 71
    .line 72
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v5

    .line 74
    .line 75
    check-cast v5, Lcom/airbnb/lottie/model/layer/d;

    .line 76
    .line 77
    .line 78
    invoke-static {v5, p1, p4}, Lcom/airbnb/lottie/model/layer/a;->l(Lcom/airbnb/lottie/model/layer/d;Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/layer/a;

    .line 79
    move-result-object v6

    .line 80
    .line 81
    if-nez v6, :cond_1

    .line 82
    goto :goto_2

    .line 83
    .line 84
    .line 85
    :cond_1
    invoke-virtual {v6}, Lcom/airbnb/lottie/model/layer/a;->m()Lcom/airbnb/lottie/model/layer/d;

    .line 86
    move-result-object v7

    .line 87
    .line 88
    .line 89
    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/d;->b()J

    .line 90
    move-result-wide v7

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, v7, v8, v6}, Landroidx/collection/LongSparseArray;->m(JLjava/lang/Object;)V

    .line 94
    .line 95
    if-eqz v3, :cond_2

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v6}, Lcom/airbnb/lottie/model/layer/a;->t(Lcom/airbnb/lottie/model/layer/a;)V

    .line 99
    move-object v3, v0

    .line 100
    goto :goto_2

    .line 101
    .line 102
    :cond_2
    iget-object v7, p0, Lcom/airbnb/lottie/model/layer/b;->layers:Ljava/util/List;

    .line 103
    .line 104
    .line 105
    invoke-interface {v7, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 106
    .line 107
    sget-object v4, Lcom/airbnb/lottie/model/layer/b$a;->$SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType:[I

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5}, Lcom/airbnb/lottie/model/layer/d;->f()Lcom/airbnb/lottie/model/layer/d$d;

    .line 111
    move-result-object v5

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 115
    move-result v5

    .line 116
    .line 117
    aget v4, v4, v5

    .line 118
    .line 119
    if-eq v4, v2, :cond_3

    .line 120
    const/4 v5, 0x2

    .line 121
    .line 122
    if-eq v4, v5, :cond_3

    .line 123
    goto :goto_2

    .line 124
    :cond_3
    move-object v3, v6

    .line 125
    .line 126
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 127
    goto :goto_1

    .line 128
    .line 129
    .line 130
    :cond_4
    :goto_3
    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->p()I

    .line 131
    move-result p1

    .line 132
    .line 133
    if-ge v4, p1, :cond_6

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2, v4}, Landroidx/collection/LongSparseArray;->l(I)J

    .line 137
    move-result-wide p3

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, p3, p4}, Landroidx/collection/LongSparseArray;->h(J)Ljava/lang/Object;

    .line 141
    move-result-object p1

    .line 142
    .line 143
    check-cast p1, Lcom/airbnb/lottie/model/layer/a;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/layer/a;->m()Lcom/airbnb/lottie/model/layer/d;

    .line 147
    move-result-object p3

    .line 148
    .line 149
    .line 150
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/layer/d;->h()J

    .line 151
    move-result-wide p3

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, p3, p4}, Landroidx/collection/LongSparseArray;->h(J)Ljava/lang/Object;

    .line 155
    move-result-object p3

    .line 156
    .line 157
    check-cast p3, Lcom/airbnb/lottie/model/layer/a;

    .line 158
    .line 159
    if-eqz p3, :cond_5

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, p3}, Lcom/airbnb/lottie/model/layer/a;->u(Lcom/airbnb/lottie/model/layer/a;)V

    .line 163
    .line 164
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 165
    goto :goto_3

    .line 166
    :cond_6
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 4
    .line 5
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/b;->rect:Landroid/graphics/RectF;

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 10
    .line 11
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/b;->layers:Ljava/util/List;

    .line 12
    .line 13
    .line 14
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 15
    move-result p2

    .line 16
    .line 17
    add-int/lit8 p2, p2, -0x1

    .line 18
    .line 19
    :goto_0
    if-ltz p2, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->layers:Ljava/util/List;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Lcom/airbnb/lottie/model/layer/a;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/b;->rect:Landroid/graphics/RectF;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->boundsMatrix:Landroid/graphics/Matrix;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/airbnb/lottie/model/layer/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->rect:Landroid/graphics/RectF;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 46
    goto :goto_1

    .line 47
    .line 48
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 49
    .line 50
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/b;->rect:Landroid/graphics/RectF;

    .line 51
    .line 52
    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 56
    move-result v0

    .line 57
    .line 58
    iget v1, p1, Landroid/graphics/RectF;->top:F

    .line 59
    .line 60
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/b;->rect:Landroid/graphics/RectF;

    .line 61
    .line 62
    iget v2, v2, Landroid/graphics/RectF;->top:F

    .line 63
    .line 64
    .line 65
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 66
    move-result v1

    .line 67
    .line 68
    iget v2, p1, Landroid/graphics/RectF;->right:F

    .line 69
    .line 70
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/b;->rect:Landroid/graphics/RectF;

    .line 71
    .line 72
    iget v3, v3, Landroid/graphics/RectF;->right:F

    .line 73
    .line 74
    .line 75
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 76
    move-result v2

    .line 77
    .line 78
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    .line 79
    .line 80
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/b;->rect:Landroid/graphics/RectF;

    .line 81
    .line 82
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    .line 83
    .line 84
    .line 85
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    .line 86
    move-result v3

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 90
    .line 91
    :goto_1
    add-int/lit8 p2, p2, -0x1

    .line 92
    goto :goto_0

    .line 93
    :cond_1
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
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/b;->layers:Ljava/util/List;

    .line 4
    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-ge v0, v1, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/b;->layers:Ljava/util/List;

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    check-cast v1, Lcom/airbnb/lottie/model/layer/a;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/a;->m()Lcom/airbnb/lottie/model/layer/d;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/d;->g()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    const/4 v2, 0x0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2, v2, p3}, Lcom/airbnb/lottie/model/layer/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 32
    goto :goto_1

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v2

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 42
    .line 43
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return-void
.end method

.method k(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5

    .line 1
    .line 2
    const-string v0, "CompositionLayer#draw"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 9
    .line 10
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/b;->newClipRect:Landroid/graphics/RectF;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->layerModel:Lcom/airbnb/lottie/model/layer/d;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/d;->j()I

    .line 16
    move-result v2

    .line 17
    int-to-float v2, v2

    .line 18
    .line 19
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/a;->layerModel:Lcom/airbnb/lottie/model/layer/d;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/airbnb/lottie/model/layer/d;->i()I

    .line 23
    move-result v3

    .line 24
    int-to-float v3, v3

    .line 25
    const/4 v4, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 29
    .line 30
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/b;->newClipRect:Landroid/graphics/RectF;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 34
    .line 35
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/b;->layers:Ljava/util/List;

    .line 36
    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 39
    move-result v1

    .line 40
    .line 41
    add-int/lit8 v1, v1, -0x1

    .line 42
    .line 43
    :goto_0
    if-ltz v1, :cond_2

    .line 44
    .line 45
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/b;->newClipRect:Landroid/graphics/RectF;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    .line 49
    move-result v2

    .line 50
    .line 51
    if-nez v2, :cond_0

    .line 52
    .line 53
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/b;->newClipRect:Landroid/graphics/RectF;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 57
    move-result v2

    .line 58
    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    :cond_0
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/b;->layers:Ljava/util/List;

    .line 62
    .line 63
    .line 64
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    check-cast v2, Lcom/airbnb/lottie/model/layer/a;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/a;->d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 71
    .line 72
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 73
    goto :goto_0

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 77
    .line 78
    .line 79
    invoke-static {v0}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 80
    return-void
.end method

.method public v(F)V
    .locals 4
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->v(F)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/a;->lottieDrawable:Lcom/airbnb/lottie/f;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/airbnb/lottie/f;->l()Lcom/airbnb/lottie/e;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/airbnb/lottie/e;->k()J

    .line 17
    move-result-wide v0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/b;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Ljava/lang/Float;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 29
    move-result p1

    .line 30
    .line 31
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 32
    mul-float/2addr p1, v2

    .line 33
    float-to-long v2, p1

    .line 34
    long-to-float p1, v2

    .line 35
    long-to-float v0, v0

    .line 36
    div-float/2addr p1, v0

    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->layerModel:Lcom/airbnb/lottie/model/layer/d;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/d;->t()F

    .line 42
    move-result v0

    .line 43
    const/4 v1, 0x0

    .line 44
    .line 45
    cmpl-float v0, v0, v1

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->layerModel:Lcom/airbnb/lottie/model/layer/d;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/d;->t()F

    .line 53
    move-result v0

    .line 54
    div-float/2addr p1, v0

    .line 55
    .line 56
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->layerModel:Lcom/airbnb/lottie/model/layer/d;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/d;->p()F

    .line 60
    move-result v0

    .line 61
    sub-float/2addr p1, v0

    .line 62
    .line 63
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->layers:Ljava/util/List;

    .line 64
    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 67
    move-result v0

    .line 68
    .line 69
    add-int/lit8 v0, v0, -0x1

    .line 70
    .line 71
    :goto_0
    if-ltz v0, :cond_2

    .line 72
    .line 73
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/b;->layers:Ljava/util/List;

    .line 74
    .line 75
    .line 76
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    check-cast v1, Lcom/airbnb/lottie/model/layer/a;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/model/layer/a;->v(F)V

    .line 83
    .line 84
    add-int/lit8 v0, v0, -0x1

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    return-void
.end method
