.class public Lcom/airbnb/lottie/animation/content/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/k;
.implements Lcom/airbnb/lottie/animation/keyframe/a$a;


# instance fields
.field private final cornerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

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

.field private final rect:Landroid/graphics/RectF;

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
.method public constructor <init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/j;)V
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
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/m;->path:Landroid/graphics/Path;

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/RectF;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/m;->rect:Landroid/graphics/RectF;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/j;->c()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/m;->name:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/m;->lottieDrawable:Lcom/airbnb/lottie/f;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/j;->d()Lcom/airbnb/lottie/model/animatable/m;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Lcom/airbnb/lottie/model/animatable/m;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/m;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/j;->e()Lcom/airbnb/lottie/model/animatable/f;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/f;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/m;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/j;->b()Lcom/airbnb/lottie/model/animatable/b;

    .line 49
    move-result-object p3

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/animatable/b;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 53
    move-result-object p3

    .line 54
    .line 55
    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/m;->cornerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 74
    return-void
.end method

.method private c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/m;->isPathValid:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/m;->lottieDrawable:Lcom/airbnb/lottie/f;

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
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/m;->c()V

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
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/m;->trimPath:Lcom/airbnb/lottie/animation/content/q;

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

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/m;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 15

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/m;->isPathValid:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/m;->path:Landroid/graphics/Path;

    .line 7
    return-object v0

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/m;->path:Landroid/graphics/Path;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/m;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Landroid/graphics/PointF;

    .line 21
    .line 22
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 23
    .line 24
    const/high16 v2, 0x40000000    # 2.0f

    .line 25
    div-float/2addr v1, v2

    .line 26
    .line 27
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 28
    div-float/2addr v0, v2

    .line 29
    .line 30
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/m;->cornerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 31
    const/4 v4, 0x0

    .line 32
    .line 33
    if-nez v3, :cond_1

    .line 34
    move v3, v4

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 40
    .line 41
    check-cast v3, Ljava/lang/Float;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 45
    move-result v3

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 49
    move-result v5

    .line 50
    .line 51
    cmpl-float v6, v3, v5

    .line 52
    .line 53
    if-lez v6, :cond_2

    .line 54
    move v3, v5

    .line 55
    .line 56
    :cond_2
    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/m;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 60
    move-result-object v5

    .line 61
    .line 62
    check-cast v5, Landroid/graphics/PointF;

    .line 63
    .line 64
    iget-object v6, p0, Lcom/airbnb/lottie/animation/content/m;->path:Landroid/graphics/Path;

    .line 65
    .line 66
    iget v7, v5, Landroid/graphics/PointF;->x:F

    .line 67
    add-float/2addr v7, v1

    .line 68
    .line 69
    iget v8, v5, Landroid/graphics/PointF;->y:F

    .line 70
    sub-float/2addr v8, v0

    .line 71
    add-float/2addr v8, v3

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 75
    .line 76
    iget-object v6, p0, Lcom/airbnb/lottie/animation/content/m;->path:Landroid/graphics/Path;

    .line 77
    .line 78
    iget v7, v5, Landroid/graphics/PointF;->x:F

    .line 79
    add-float/2addr v7, v1

    .line 80
    .line 81
    iget v8, v5, Landroid/graphics/PointF;->y:F

    .line 82
    add-float/2addr v8, v0

    .line 83
    sub-float/2addr v8, v3

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 87
    .line 88
    cmpl-float v6, v3, v4

    .line 89
    const/4 v7, 0x0

    .line 90
    .line 91
    const/high16 v8, 0x42b40000    # 90.0f

    .line 92
    .line 93
    if-lez v6, :cond_3

    .line 94
    .line 95
    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/m;->rect:Landroid/graphics/RectF;

    .line 96
    .line 97
    iget v10, v5, Landroid/graphics/PointF;->x:F

    .line 98
    .line 99
    add-float v11, v10, v1

    .line 100
    .line 101
    mul-float v12, v3, v2

    .line 102
    sub-float/2addr v11, v12

    .line 103
    .line 104
    iget v13, v5, Landroid/graphics/PointF;->y:F

    .line 105
    .line 106
    add-float v14, v13, v0

    .line 107
    sub-float/2addr v14, v12

    .line 108
    add-float/2addr v10, v1

    .line 109
    add-float/2addr v13, v0

    .line 110
    .line 111
    .line 112
    invoke-virtual {v9, v11, v14, v10, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 113
    .line 114
    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/m;->path:Landroid/graphics/Path;

    .line 115
    .line 116
    iget-object v10, p0, Lcom/airbnb/lottie/animation/content/m;->rect:Landroid/graphics/RectF;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v9, v10, v4, v8, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 120
    .line 121
    :cond_3
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/m;->path:Landroid/graphics/Path;

    .line 122
    .line 123
    iget v9, v5, Landroid/graphics/PointF;->x:F

    .line 124
    sub-float/2addr v9, v1

    .line 125
    add-float/2addr v9, v3

    .line 126
    .line 127
    iget v10, v5, Landroid/graphics/PointF;->y:F

    .line 128
    add-float/2addr v10, v0

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 132
    .line 133
    if-lez v6, :cond_4

    .line 134
    .line 135
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/m;->rect:Landroid/graphics/RectF;

    .line 136
    .line 137
    iget v9, v5, Landroid/graphics/PointF;->x:F

    .line 138
    .line 139
    sub-float v10, v9, v1

    .line 140
    .line 141
    iget v11, v5, Landroid/graphics/PointF;->y:F

    .line 142
    .line 143
    add-float v12, v11, v0

    .line 144
    .line 145
    mul-float v13, v3, v2

    .line 146
    sub-float/2addr v12, v13

    .line 147
    sub-float/2addr v9, v1

    .line 148
    add-float/2addr v9, v13

    .line 149
    add-float/2addr v11, v0

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v10, v12, v9, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 153
    .line 154
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/m;->path:Landroid/graphics/Path;

    .line 155
    .line 156
    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/m;->rect:Landroid/graphics/RectF;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v9, v8, v8, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 160
    .line 161
    :cond_4
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/m;->path:Landroid/graphics/Path;

    .line 162
    .line 163
    iget v9, v5, Landroid/graphics/PointF;->x:F

    .line 164
    sub-float/2addr v9, v1

    .line 165
    .line 166
    iget v10, v5, Landroid/graphics/PointF;->y:F

    .line 167
    sub-float/2addr v10, v0

    .line 168
    add-float/2addr v10, v3

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 172
    .line 173
    if-lez v6, :cond_5

    .line 174
    .line 175
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/m;->rect:Landroid/graphics/RectF;

    .line 176
    .line 177
    iget v9, v5, Landroid/graphics/PointF;->x:F

    .line 178
    .line 179
    sub-float v10, v9, v1

    .line 180
    .line 181
    iget v11, v5, Landroid/graphics/PointF;->y:F

    .line 182
    .line 183
    sub-float v12, v11, v0

    .line 184
    sub-float/2addr v9, v1

    .line 185
    .line 186
    mul-float v13, v3, v2

    .line 187
    add-float/2addr v9, v13

    .line 188
    sub-float/2addr v11, v0

    .line 189
    add-float/2addr v11, v13

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4, v10, v12, v9, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 193
    .line 194
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/m;->path:Landroid/graphics/Path;

    .line 195
    .line 196
    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/m;->rect:Landroid/graphics/RectF;

    .line 197
    .line 198
    const/high16 v10, 0x43340000    # 180.0f

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4, v9, v10, v8, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 202
    .line 203
    :cond_5
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/m;->path:Landroid/graphics/Path;

    .line 204
    .line 205
    iget v9, v5, Landroid/graphics/PointF;->x:F

    .line 206
    add-float/2addr v9, v1

    .line 207
    sub-float/2addr v9, v3

    .line 208
    .line 209
    iget v10, v5, Landroid/graphics/PointF;->y:F

    .line 210
    sub-float/2addr v10, v0

    .line 211
    .line 212
    .line 213
    invoke-virtual {v4, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 214
    .line 215
    if-lez v6, :cond_6

    .line 216
    .line 217
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/m;->rect:Landroid/graphics/RectF;

    .line 218
    .line 219
    iget v6, v5, Landroid/graphics/PointF;->x:F

    .line 220
    .line 221
    add-float v9, v6, v1

    .line 222
    mul-float/2addr v3, v2

    .line 223
    sub-float/2addr v9, v3

    .line 224
    .line 225
    iget v2, v5, Landroid/graphics/PointF;->y:F

    .line 226
    .line 227
    sub-float v5, v2, v0

    .line 228
    add-float/2addr v6, v1

    .line 229
    sub-float/2addr v2, v0

    .line 230
    add-float/2addr v2, v3

    .line 231
    .line 232
    .line 233
    invoke-virtual {v4, v9, v5, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 234
    .line 235
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/m;->path:Landroid/graphics/Path;

    .line 236
    .line 237
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/m;->rect:Landroid/graphics/RectF;

    .line 238
    .line 239
    const/high16 v2, 0x43870000    # 270.0f

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v1, v2, v8, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 243
    .line 244
    :cond_6
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/m;->path:Landroid/graphics/Path;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 248
    .line 249
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/m;->path:Landroid/graphics/Path;

    .line 250
    .line 251
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/m;->trimPath:Lcom/airbnb/lottie/animation/content/q;

    .line 252
    .line 253
    .line 254
    invoke-static {v0, v1}, Lcom/airbnb/lottie/utils/f;->b(Landroid/graphics/Path;Lcom/airbnb/lottie/animation/content/q;)V

    .line 255
    const/4 v0, 0x1

    .line 256
    .line 257
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/m;->isPathValid:Z

    .line 258
    .line 259
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/m;->path:Landroid/graphics/Path;

    .line 260
    return-object v0
.end method
