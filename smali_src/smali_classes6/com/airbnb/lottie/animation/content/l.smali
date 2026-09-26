.class public Lcom/airbnb/lottie/animation/content/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/k;
.implements Lcom/airbnb/lottie/animation/keyframe/a$a;


# static fields
.field private static final POLYGON_MAGIC_NUMBER:F = 0.25f

.field private static final POLYSTAR_MAGIC_NUMBER:F = 0.47829f


# instance fields
.field private final innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/a;
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

.field private final innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/a;
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

.field private isPathValid:Z

.field private final lottieDrawable:Lcom/airbnb/lottie/f;

.field private final name:Ljava/lang/String;

.field private final outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;

.field private final pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

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

.field private final rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private trimPath:Lcom/airbnb/lottie/animation/content/q;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final type:Lcom/airbnb/lottie/model/content/i$c;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/i;)V
    .locals 7

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
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/l;->path:Landroid/graphics/Path;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/l;->lottieDrawable:Lcom/airbnb/lottie/f;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/i;->d()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/l;->name:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/i;->j()Lcom/airbnb/lottie/model/content/i$c;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/l;->type:Lcom/airbnb/lottie/model/content/i$c;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/i;->g()Lcom/airbnb/lottie/model/animatable/b;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/b;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/l;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/i;->h()Lcom/airbnb/lottie/model/animatable/m;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-interface {v1}, Lcom/airbnb/lottie/model/animatable/m;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/l;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/i;->i()Lcom/airbnb/lottie/model/animatable/b;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/animatable/b;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    iput-object v2, p0, Lcom/airbnb/lottie/animation/content/l;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/i;->e()Lcom/airbnb/lottie/model/animatable/b;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/b;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 62
    move-result-object v3

    .line 63
    .line 64
    iput-object v3, p0, Lcom/airbnb/lottie/animation/content/l;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/i;->f()Lcom/airbnb/lottie/model/animatable/b;

    .line 68
    move-result-object v4

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/animatable/b;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 72
    move-result-object v4

    .line 73
    .line 74
    iput-object v4, p0, Lcom/airbnb/lottie/animation/content/l;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 75
    .line 76
    sget-object v5, Lcom/airbnb/lottie/model/content/i$c;->Star:Lcom/airbnb/lottie/model/content/i$c;

    .line 77
    .line 78
    if-ne p1, v5, :cond_0

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/i;->b()Lcom/airbnb/lottie/model/animatable/b;

    .line 82
    move-result-object v6

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6}, Lcom/airbnb/lottie/model/animatable/b;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 86
    move-result-object v6

    .line 87
    .line 88
    iput-object v6, p0, Lcom/airbnb/lottie/animation/content/l;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/i;->c()Lcom/airbnb/lottie/model/animatable/b;

    .line 92
    move-result-object p3

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/animatable/b;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 96
    move-result-object p3

    .line 97
    .line 98
    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/l;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 99
    goto :goto_0

    .line 100
    :cond_0
    const/4 p3, 0x0

    .line 101
    .line 102
    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/l;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 103
    .line 104
    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/l;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 105
    .line 106
    .line 107
    :goto_0
    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, v2}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, v3}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, v4}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 120
    .line 121
    if-ne p1, v5, :cond_1

    .line 122
    .line 123
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/l;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 127
    .line 128
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/l;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 132
    .line 133
    .line 134
    :cond_1
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 147
    .line 148
    if-ne p1, v5, :cond_2

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 155
    :cond_2
    return-void
.end method

.method private c()V
    .locals 31

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/l;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    check-cast v1, Ljava/lang/Float;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 14
    move-result v1

    .line 15
    float-to-double v1, v1

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    .line 19
    move-result-wide v1

    .line 20
    double-to-int v1, v1

    .line 21
    .line 22
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/l;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    const-wide/16 v2, 0x0

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    check-cast v2, Ljava/lang/Float;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 37
    move-result v2

    .line 38
    float-to-double v2, v2

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    :goto_0
    const-wide v4, 0x4056800000000000L    # 90.0

    .line 44
    sub-double/2addr v2, v4

    .line 45
    .line 46
    .line 47
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    .line 48
    move-result-wide v2

    .line 49
    int-to-double v4, v1

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    .line 55
    div-double/2addr v6, v4

    .line 56
    double-to-float v1, v6

    .line 57
    .line 58
    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/l;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 62
    move-result-object v6

    .line 63
    .line 64
    check-cast v6, Ljava/lang/Float;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 68
    move-result v6

    .line 69
    .line 70
    const/high16 v7, 0x42c80000    # 100.0f

    .line 71
    div-float/2addr v6, v7

    .line 72
    .line 73
    iget-object v7, v0, Lcom/airbnb/lottie/animation/content/l;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 77
    move-result-object v7

    .line 78
    .line 79
    check-cast v7, Ljava/lang/Float;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 83
    move-result v7

    .line 84
    float-to-double v8, v7

    .line 85
    .line 86
    .line 87
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 88
    move-result-wide v10

    .line 89
    mul-double/2addr v10, v8

    .line 90
    double-to-float v10, v10

    .line 91
    .line 92
    .line 93
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 94
    move-result-wide v11

    .line 95
    mul-double/2addr v11, v8

    .line 96
    double-to-float v11, v11

    .line 97
    .line 98
    iget-object v12, v0, Lcom/airbnb/lottie/animation/content/l;->path:Landroid/graphics/Path;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v12, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 102
    float-to-double v12, v1

    .line 103
    add-double/2addr v2, v12

    .line 104
    .line 105
    .line 106
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 107
    move-result-wide v4

    .line 108
    const/4 v1, 0x0

    .line 109
    :goto_1
    int-to-double v14, v1

    .line 110
    .line 111
    cmpg-double v14, v14, v4

    .line 112
    .line 113
    if-gez v14, :cond_2

    .line 114
    .line 115
    .line 116
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 117
    move-result-wide v14

    .line 118
    mul-double/2addr v14, v8

    .line 119
    double-to-float v14, v14

    .line 120
    .line 121
    .line 122
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 123
    move-result-wide v15

    .line 124
    .line 125
    move-wide/from16 v23, v4

    .line 126
    .line 127
    mul-double v4, v8, v15

    .line 128
    double-to-float v4, v4

    .line 129
    const/4 v5, 0x0

    .line 130
    .line 131
    cmpl-float v5, v6, v5

    .line 132
    .line 133
    if-eqz v5, :cond_1

    .line 134
    .line 135
    move-wide/from16 v25, v8

    .line 136
    float-to-double v8, v11

    .line 137
    move v5, v1

    .line 138
    .line 139
    move-wide/from16 v27, v2

    .line 140
    float-to-double v1, v10

    .line 141
    .line 142
    .line 143
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    .line 144
    move-result-wide v1

    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 150
    sub-double/2addr v1, v8

    .line 151
    double-to-float v1, v1

    .line 152
    float-to-double v1, v1

    .line 153
    .line 154
    .line 155
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 156
    move-result-wide v8

    .line 157
    double-to-float v3, v8

    .line 158
    .line 159
    .line 160
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 161
    move-result-wide v1

    .line 162
    double-to-float v1, v1

    .line 163
    float-to-double v8, v4

    .line 164
    .line 165
    move-wide/from16 v29, v12

    .line 166
    float-to-double v12, v14

    .line 167
    .line 168
    .line 169
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    .line 170
    move-result-wide v8

    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    const-wide v12, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 176
    sub-double/2addr v8, v12

    .line 177
    double-to-float v2, v8

    .line 178
    float-to-double v8, v2

    .line 179
    .line 180
    .line 181
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    .line 182
    move-result-wide v12

    .line 183
    double-to-float v2, v12

    .line 184
    .line 185
    .line 186
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    .line 187
    move-result-wide v8

    .line 188
    double-to-float v8, v8

    .line 189
    .line 190
    mul-float v9, v7, v6

    .line 191
    .line 192
    const/high16 v12, 0x3e800000    # 0.25f

    .line 193
    mul-float/2addr v9, v12

    .line 194
    mul-float/2addr v3, v9

    .line 195
    mul-float/2addr v1, v9

    .line 196
    mul-float/2addr v2, v9

    .line 197
    mul-float/2addr v9, v8

    .line 198
    .line 199
    iget-object v8, v0, Lcom/airbnb/lottie/animation/content/l;->path:Landroid/graphics/Path;

    .line 200
    .line 201
    sub-float v17, v10, v3

    .line 202
    .line 203
    sub-float v18, v11, v1

    .line 204
    .line 205
    add-float v19, v14, v2

    .line 206
    .line 207
    add-float v20, v4, v9

    .line 208
    .line 209
    move-object/from16 v16, v8

    .line 210
    .line 211
    move/from16 v21, v14

    .line 212
    .line 213
    move/from16 v22, v4

    .line 214
    .line 215
    .line 216
    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 217
    goto :goto_2

    .line 218
    :cond_1
    move v5, v1

    .line 219
    .line 220
    move-wide/from16 v27, v2

    .line 221
    .line 222
    move-wide/from16 v25, v8

    .line 223
    .line 224
    move-wide/from16 v29, v12

    .line 225
    .line 226
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/l;->path:Landroid/graphics/Path;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1, v14, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 230
    .line 231
    :goto_2
    add-double v2, v27, v29

    .line 232
    .line 233
    add-int/lit8 v1, v5, 0x1

    .line 234
    move v11, v4

    .line 235
    move v10, v14

    .line 236
    .line 237
    move-wide/from16 v4, v23

    .line 238
    .line 239
    move-wide/from16 v8, v25

    .line 240
    .line 241
    move-wide/from16 v12, v29

    .line 242
    .line 243
    goto/16 :goto_1

    .line 244
    .line 245
    :cond_2
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/l;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 249
    move-result-object v1

    .line 250
    .line 251
    check-cast v1, Landroid/graphics/PointF;

    .line 252
    .line 253
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/l;->path:Landroid/graphics/Path;

    .line 254
    .line 255
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 256
    .line 257
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 261
    .line 262
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/l;->path:Landroid/graphics/Path;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 266
    return-void
.end method

.method private g()V
    .locals 45

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/l;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    check-cast v1, Ljava/lang/Float;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 14
    move-result v1

    .line 15
    .line 16
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/l;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    const-wide/16 v2, 0x0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    check-cast v2, Ljava/lang/Float;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 31
    move-result v2

    .line 32
    float-to-double v2, v2

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    :goto_0
    const-wide v4, 0x4056800000000000L    # 90.0

    .line 38
    sub-double/2addr v2, v4

    .line 39
    .line 40
    .line 41
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    .line 42
    move-result-wide v2

    .line 43
    float-to-double v4, v1

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    .line 49
    div-double/2addr v6, v4

    .line 50
    double-to-float v6, v6

    .line 51
    .line 52
    const/high16 v7, 0x40000000    # 2.0f

    .line 53
    .line 54
    div-float v8, v6, v7

    .line 55
    float-to-int v9, v1

    .line 56
    int-to-float v9, v9

    .line 57
    sub-float/2addr v1, v9

    .line 58
    const/4 v9, 0x0

    .line 59
    .line 60
    cmpl-float v10, v1, v9

    .line 61
    .line 62
    if-eqz v10, :cond_1

    .line 63
    .line 64
    const/high16 v11, 0x3f800000    # 1.0f

    .line 65
    sub-float/2addr v11, v1

    .line 66
    mul-float/2addr v11, v8

    .line 67
    float-to-double v11, v11

    .line 68
    add-double/2addr v2, v11

    .line 69
    .line 70
    :cond_1
    iget-object v11, v0, Lcom/airbnb/lottie/animation/content/l;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v11}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 74
    move-result-object v11

    .line 75
    .line 76
    check-cast v11, Ljava/lang/Float;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    .line 80
    move-result v11

    .line 81
    .line 82
    iget-object v12, v0, Lcom/airbnb/lottie/animation/content/l;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v12}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 86
    move-result-object v12

    .line 87
    .line 88
    check-cast v12, Ljava/lang/Float;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    .line 92
    move-result v12

    .line 93
    .line 94
    iget-object v13, v0, Lcom/airbnb/lottie/animation/content/l;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 95
    .line 96
    const/high16 v14, 0x42c80000    # 100.0f

    .line 97
    .line 98
    if-eqz v13, :cond_2

    .line 99
    .line 100
    .line 101
    invoke-virtual {v13}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 102
    move-result-object v13

    .line 103
    .line 104
    check-cast v13, Ljava/lang/Float;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    .line 108
    move-result v13

    .line 109
    div-float/2addr v13, v14

    .line 110
    goto :goto_1

    .line 111
    :cond_2
    move v13, v9

    .line 112
    .line 113
    :goto_1
    iget-object v15, v0, Lcom/airbnb/lottie/animation/content/l;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 114
    .line 115
    if-eqz v15, :cond_3

    .line 116
    .line 117
    .line 118
    invoke-virtual {v15}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 119
    move-result-object v15

    .line 120
    .line 121
    check-cast v15, Ljava/lang/Float;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    .line 125
    move-result v15

    .line 126
    div-float/2addr v15, v14

    .line 127
    goto :goto_2

    .line 128
    :cond_3
    move v15, v9

    .line 129
    .line 130
    :goto_2
    if-eqz v10, :cond_4

    .line 131
    .line 132
    sub-float v14, v11, v12

    .line 133
    mul-float/2addr v14, v1

    .line 134
    add-float/2addr v14, v12

    .line 135
    .line 136
    move/from16 v17, v10

    .line 137
    float-to-double v9, v14

    .line 138
    .line 139
    .line 140
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 141
    move-result-wide v18

    .line 142
    .line 143
    move/from16 v21, v8

    .line 144
    .line 145
    mul-double v7, v9, v18

    .line 146
    double-to-float v7, v7

    .line 147
    .line 148
    .line 149
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 150
    move-result-wide v18

    .line 151
    .line 152
    mul-double v9, v9, v18

    .line 153
    double-to-float v8, v9

    .line 154
    .line 155
    iget-object v9, v0, Lcom/airbnb/lottie/animation/content/l;->path:Landroid/graphics/Path;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v9, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 159
    .line 160
    mul-float v9, v6, v1

    .line 161
    .line 162
    const/high16 v10, 0x40000000    # 2.0f

    .line 163
    div-float/2addr v9, v10

    .line 164
    float-to-double v9, v9

    .line 165
    add-double/2addr v2, v9

    .line 166
    move v10, v7

    .line 167
    .line 168
    move/from16 v7, v21

    .line 169
    goto :goto_3

    .line 170
    .line 171
    :cond_4
    move/from16 v21, v8

    .line 172
    .line 173
    move/from16 v17, v10

    .line 174
    float-to-double v7, v11

    .line 175
    .line 176
    .line 177
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 178
    move-result-wide v9

    .line 179
    mul-double/2addr v9, v7

    .line 180
    double-to-float v9, v9

    .line 181
    .line 182
    .line 183
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 184
    move-result-wide v18

    .line 185
    .line 186
    mul-double v7, v7, v18

    .line 187
    double-to-float v8, v7

    .line 188
    .line 189
    iget-object v7, v0, Lcom/airbnb/lottie/animation/content/l;->path:Landroid/graphics/Path;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v7, v9, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 193
    move v14, v8

    .line 194
    move v10, v9

    .line 195
    .line 196
    move/from16 v7, v21

    .line 197
    float-to-double v8, v7

    .line 198
    add-double/2addr v2, v8

    .line 199
    move v8, v14

    .line 200
    const/4 v14, 0x0

    .line 201
    .line 202
    .line 203
    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 204
    move-result-wide v4

    .line 205
    .line 206
    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    .line 207
    .line 208
    mul-double v4, v4, v18

    .line 209
    const/4 v9, 0x0

    .line 210
    .line 211
    move/from16 v21, v7

    .line 212
    move v7, v10

    .line 213
    .line 214
    move/from16 v22, v11

    .line 215
    .line 216
    move/from16 v23, v12

    .line 217
    move v10, v9

    .line 218
    :goto_4
    int-to-double v11, v9

    .line 219
    .line 220
    cmpg-double v24, v11, v4

    .line 221
    .line 222
    if-gez v24, :cond_f

    .line 223
    .line 224
    if-eqz v10, :cond_5

    .line 225
    .line 226
    move/from16 v24, v22

    .line 227
    .line 228
    :goto_5
    const/16 v16, 0x0

    .line 229
    goto :goto_6

    .line 230
    .line 231
    :cond_5
    move/from16 v24, v23

    .line 232
    goto :goto_5

    .line 233
    .line 234
    :goto_6
    cmpl-float v25, v14, v16

    .line 235
    .line 236
    if-eqz v25, :cond_6

    .line 237
    .line 238
    sub-double v26, v4, v18

    .line 239
    .line 240
    cmpl-double v26, v11, v26

    .line 241
    .line 242
    if-nez v26, :cond_6

    .line 243
    .line 244
    mul-float v26, v6, v1

    .line 245
    .line 246
    const/high16 v20, 0x40000000    # 2.0f

    .line 247
    .line 248
    div-float v26, v26, v20

    .line 249
    .line 250
    move/from16 v44, v26

    .line 251
    .line 252
    move/from16 v26, v6

    .line 253
    .line 254
    move/from16 v6, v44

    .line 255
    goto :goto_7

    .line 256
    .line 257
    :cond_6
    const/high16 v20, 0x40000000    # 2.0f

    .line 258
    .line 259
    move/from16 v26, v6

    .line 260
    .line 261
    move/from16 v6, v21

    .line 262
    .line 263
    :goto_7
    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    .line 264
    .line 265
    if-eqz v25, :cond_7

    .line 266
    .line 267
    sub-double v29, v4, v27

    .line 268
    .line 269
    cmpl-double v25, v11, v29

    .line 270
    .line 271
    if-nez v25, :cond_7

    .line 272
    .line 273
    move-wide/from16 v29, v11

    .line 274
    .line 275
    move/from16 v25, v14

    .line 276
    goto :goto_8

    .line 277
    .line 278
    :cond_7
    move-wide/from16 v29, v11

    .line 279
    .line 280
    move/from16 v25, v14

    .line 281
    .line 282
    move/from16 v14, v24

    .line 283
    :goto_8
    float-to-double v11, v14

    .line 284
    .line 285
    .line 286
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 287
    move-result-wide v31

    .line 288
    .line 289
    move-wide/from16 v33, v4

    .line 290
    .line 291
    mul-double v4, v11, v31

    .line 292
    double-to-float v4, v4

    .line 293
    .line 294
    .line 295
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 296
    move-result-wide v31

    .line 297
    .line 298
    mul-double v11, v11, v31

    .line 299
    double-to-float v5, v11

    .line 300
    const/4 v11, 0x0

    .line 301
    .line 302
    cmpl-float v12, v13, v11

    .line 303
    .line 304
    if-nez v12, :cond_8

    .line 305
    .line 306
    cmpl-float v12, v15, v11

    .line 307
    .line 308
    if-nez v12, :cond_8

    .line 309
    .line 310
    iget-object v7, v0, Lcom/airbnb/lottie/animation/content/l;->path:Landroid/graphics/Path;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v7, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 314
    .line 315
    move-wide/from16 v42, v2

    .line 316
    .line 317
    move/from16 v24, v13

    .line 318
    move v12, v15

    .line 319
    .line 320
    goto/16 :goto_e

    .line 321
    :cond_8
    float-to-double v11, v8

    .line 322
    .line 323
    move/from16 v24, v13

    .line 324
    float-to-double v13, v7

    .line 325
    .line 326
    .line 327
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    .line 328
    move-result-wide v11

    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    const-wide v13, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 334
    sub-double/2addr v11, v13

    .line 335
    double-to-float v11, v11

    .line 336
    float-to-double v11, v11

    .line 337
    .line 338
    .line 339
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    .line 340
    move-result-wide v13

    .line 341
    double-to-float v13, v13

    .line 342
    .line 343
    .line 344
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    .line 345
    move-result-wide v11

    .line 346
    double-to-float v11, v11

    .line 347
    move v12, v15

    .line 348
    float-to-double v14, v5

    .line 349
    .line 350
    move-wide/from16 v42, v2

    .line 351
    float-to-double v2, v4

    .line 352
    .line 353
    .line 354
    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    .line 355
    move-result-wide v2

    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    const-wide v14, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 361
    sub-double/2addr v2, v14

    .line 362
    double-to-float v2, v2

    .line 363
    float-to-double v2, v2

    .line 364
    .line 365
    .line 366
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 367
    move-result-wide v14

    .line 368
    double-to-float v14, v14

    .line 369
    .line 370
    .line 371
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 372
    move-result-wide v2

    .line 373
    double-to-float v2, v2

    .line 374
    .line 375
    if-eqz v10, :cond_9

    .line 376
    .line 377
    move/from16 v3, v24

    .line 378
    goto :goto_9

    .line 379
    :cond_9
    move v3, v12

    .line 380
    .line 381
    :goto_9
    if-eqz v10, :cond_a

    .line 382
    move v15, v12

    .line 383
    goto :goto_a

    .line 384
    .line 385
    :cond_a
    move/from16 v15, v24

    .line 386
    .line 387
    :goto_a
    if-eqz v10, :cond_b

    .line 388
    .line 389
    move/from16 v31, v23

    .line 390
    goto :goto_b

    .line 391
    .line 392
    :cond_b
    move/from16 v31, v22

    .line 393
    .line 394
    :goto_b
    if-eqz v10, :cond_c

    .line 395
    .line 396
    move/from16 v32, v22

    .line 397
    goto :goto_c

    .line 398
    .line 399
    :cond_c
    move/from16 v32, v23

    .line 400
    .line 401
    :goto_c
    mul-float v31, v31, v3

    .line 402
    .line 403
    .line 404
    const v3, 0x3ef4e26d    # 0.47829f

    .line 405
    .line 406
    mul-float v31, v31, v3

    .line 407
    .line 408
    mul-float v13, v13, v31

    .line 409
    .line 410
    mul-float v31, v31, v11

    .line 411
    .line 412
    mul-float v32, v32, v15

    .line 413
    .line 414
    mul-float v32, v32, v3

    .line 415
    .line 416
    mul-float v14, v14, v32

    .line 417
    .line 418
    mul-float v32, v32, v2

    .line 419
    .line 420
    if-eqz v17, :cond_e

    .line 421
    .line 422
    if-nez v9, :cond_d

    .line 423
    mul-float/2addr v13, v1

    .line 424
    .line 425
    mul-float v31, v31, v1

    .line 426
    goto :goto_d

    .line 427
    .line 428
    :cond_d
    sub-double v2, v33, v27

    .line 429
    .line 430
    cmpl-double v2, v29, v2

    .line 431
    .line 432
    if-nez v2, :cond_e

    .line 433
    mul-float/2addr v14, v1

    .line 434
    .line 435
    mul-float v32, v32, v1

    .line 436
    .line 437
    :cond_e
    :goto_d
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/l;->path:Landroid/graphics/Path;

    .line 438
    .line 439
    sub-float v36, v7, v13

    .line 440
    .line 441
    sub-float v37, v8, v31

    .line 442
    .line 443
    add-float v38, v4, v14

    .line 444
    .line 445
    add-float v39, v5, v32

    .line 446
    .line 447
    move-object/from16 v35, v2

    .line 448
    .line 449
    move/from16 v40, v4

    .line 450
    .line 451
    move/from16 v41, v5

    .line 452
    .line 453
    .line 454
    invoke-virtual/range {v35 .. v41}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 455
    :goto_e
    float-to-double v2, v6

    .line 456
    .line 457
    add-double v2, v42, v2

    .line 458
    .line 459
    xor-int/lit8 v10, v10, 0x1

    .line 460
    .line 461
    add-int/lit8 v9, v9, 0x1

    .line 462
    move v7, v4

    .line 463
    move v8, v5

    .line 464
    move v15, v12

    .line 465
    .line 466
    move/from16 v13, v24

    .line 467
    .line 468
    move/from16 v14, v25

    .line 469
    .line 470
    move/from16 v6, v26

    .line 471
    .line 472
    move-wide/from16 v4, v33

    .line 473
    .line 474
    goto/16 :goto_4

    .line 475
    .line 476
    :cond_f
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/l;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 480
    move-result-object v1

    .line 481
    .line 482
    check-cast v1, Landroid/graphics/PointF;

    .line 483
    .line 484
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/l;->path:Landroid/graphics/Path;

    .line 485
    .line 486
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 487
    .line 488
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 489
    .line 490
    .line 491
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 492
    .line 493
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/l;->path:Landroid/graphics/Path;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 497
    return-void
.end method

.method private h()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/l;->isPathValid:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/l;->lottieDrawable:Lcom/airbnb/lottie/f;

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
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/l;->h()V

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
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/l;->trimPath:Lcom/airbnb/lottie/animation/content/q;

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

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/l;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/l;->isPathValid:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/l;->path:Landroid/graphics/Path;

    .line 7
    return-object v0

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/l;->path:Landroid/graphics/Path;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 13
    .line 14
    sget-object v0, Lcom/airbnb/lottie/animation/content/l$a;->$SwitchMap$com$airbnb$lottie$model$content$PolystarShape$Type:[I

    .line 15
    .line 16
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/l;->type:Lcom/airbnb/lottie/model/content/i$c;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 20
    move-result v1

    .line 21
    .line 22
    aget v0, v0, v1

    .line 23
    const/4 v1, 0x1

    .line 24
    .line 25
    if-eq v0, v1, :cond_2

    .line 26
    const/4 v2, 0x2

    .line 27
    .line 28
    if-eq v0, v2, :cond_1

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/l;->c()V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/l;->g()V

    .line 37
    .line 38
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/l;->path:Landroid/graphics/Path;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 42
    .line 43
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/l;->path:Landroid/graphics/Path;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/l;->trimPath:Lcom/airbnb/lottie/animation/content/q;

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v2}, Lcom/airbnb/lottie/utils/f;->b(Landroid/graphics/Path;Lcom/airbnb/lottie/animation/content/q;)V

    .line 49
    .line 50
    iput-boolean v1, p0, Lcom/airbnb/lottie/animation/content/l;->isPathValid:Z

    .line 51
    .line 52
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/l;->path:Landroid/graphics/Path;

    .line 53
    return-object v0
.end method
