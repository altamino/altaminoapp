.class public Lh0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static a(I)Ljava/lang/ref/WeakReference;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Lh0/a$a;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Lh0/a$a;->d()Landroidx/collection/SparseArrayCompat;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p0}, Landroidx/collection/SparseArrayCompat;->j(I)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public static b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;FLcom/airbnb/lottie/model/animatable/m$a;)Lh0/a;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Lcom/airbnb/lottie/e;",
            "F",
            "Lcom/airbnb/lottie/model/animatable/m$a<",
            "TT;>;)",
            "Lh0/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "t"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    if-eqz v1, :cond_8

    .line 11
    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 16
    move-result-wide v0

    .line 17
    double-to-float v0, v0

    .line 18
    .line 19
    .line 20
    const-string/jumbo v1, "s"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-interface {p3, v1, p2}, Lcom/airbnb/lottie/model/animatable/m$a;->a(Ljava/lang/Object;F)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v1, v2

    .line 33
    .line 34
    :goto_0
    const-string v3, "e"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-interface {p3, v3, p2}, Lcom/airbnb/lottie/model/animatable/m$a;->a(Ljava/lang/Object;F)Ljava/lang/Object;

    .line 44
    move-result-object p3

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move-object p3, v2

    .line 47
    .line 48
    .line 49
    :goto_1
    const-string/jumbo v3, "o"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    const-string v4, "i"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 59
    move-result-object v4

    .line 60
    .line 61
    if-eqz v3, :cond_2

    .line 62
    .line 63
    if-eqz v4, :cond_2

    .line 64
    .line 65
    .line 66
    invoke-static {v3, p2}, Lcom/airbnb/lottie/utils/b;->b(Lorg/json/JSONObject;F)Landroid/graphics/PointF;

    .line 67
    move-result-object v3

    .line 68
    .line 69
    .line 70
    invoke-static {v4, p2}, Lcom/airbnb/lottie/utils/b;->b(Lorg/json/JSONObject;F)Landroid/graphics/PointF;

    .line 71
    move-result-object v4

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    move-object v3, v2

    .line 74
    move-object v4, v3

    .line 75
    .line 76
    :goto_2
    const-string v5, "h"

    .line 77
    const/4 v6, 0x0

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 81
    move-result p0

    .line 82
    const/4 v5, 0x1

    .line 83
    .line 84
    if-ne p0, v5, :cond_3

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lh0/a;->a()Landroid/view/animation/Interpolator;

    .line 88
    move-result-object p0

    .line 89
    move-object v2, p0

    .line 90
    move-object p3, v1

    .line 91
    goto :goto_3

    .line 92
    .line 93
    :cond_3
    if-eqz v3, :cond_6

    .line 94
    .line 95
    iget p0, v3, Landroid/graphics/PointF;->x:F

    .line 96
    neg-float v5, p2

    .line 97
    .line 98
    .line 99
    invoke-static {p0, v5, p2}, Lcom/airbnb/lottie/utils/e;->b(FFF)F

    .line 100
    move-result p0

    .line 101
    .line 102
    iput p0, v3, Landroid/graphics/PointF;->x:F

    .line 103
    .line 104
    iget p0, v3, Landroid/graphics/PointF;->y:F

    .line 105
    .line 106
    const/high16 v6, -0x3d380000    # -100.0f

    .line 107
    .line 108
    const/high16 v7, 0x42c80000    # 100.0f

    .line 109
    .line 110
    .line 111
    invoke-static {p0, v6, v7}, Lcom/airbnb/lottie/utils/e;->b(FFF)F

    .line 112
    move-result p0

    .line 113
    .line 114
    iput p0, v3, Landroid/graphics/PointF;->y:F

    .line 115
    .line 116
    iget p0, v4, Landroid/graphics/PointF;->x:F

    .line 117
    .line 118
    .line 119
    invoke-static {p0, v5, p2}, Lcom/airbnb/lottie/utils/e;->b(FFF)F

    .line 120
    move-result p0

    .line 121
    .line 122
    iput p0, v4, Landroid/graphics/PointF;->x:F

    .line 123
    .line 124
    iget p0, v4, Landroid/graphics/PointF;->y:F

    .line 125
    .line 126
    .line 127
    invoke-static {p0, v6, v7}, Lcom/airbnb/lottie/utils/e;->b(FFF)F

    .line 128
    move-result p0

    .line 129
    .line 130
    iput p0, v4, Landroid/graphics/PointF;->y:F

    .line 131
    .line 132
    iget v5, v3, Landroid/graphics/PointF;->x:F

    .line 133
    .line 134
    iget v6, v3, Landroid/graphics/PointF;->y:F

    .line 135
    .line 136
    iget v7, v4, Landroid/graphics/PointF;->x:F

    .line 137
    .line 138
    .line 139
    invoke-static {v5, v6, v7, p0}, Lcom/airbnb/lottie/utils/f;->g(FFFF)I

    .line 140
    move-result p0

    .line 141
    .line 142
    .line 143
    invoke-static {p0}, Lh0/a$a;->a(I)Ljava/lang/ref/WeakReference;

    .line 144
    move-result-object v5

    .line 145
    .line 146
    if-eqz v5, :cond_4

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 150
    move-result-object v2

    .line 151
    .line 152
    check-cast v2, Landroid/view/animation/Interpolator;

    .line 153
    .line 154
    :cond_4
    if-eqz v5, :cond_5

    .line 155
    .line 156
    if-nez v2, :cond_7

    .line 157
    .line 158
    :cond_5
    iget v2, v3, Landroid/graphics/PointF;->x:F

    .line 159
    div-float/2addr v2, p2

    .line 160
    .line 161
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 162
    div-float/2addr v3, p2

    .line 163
    .line 164
    iget v5, v4, Landroid/graphics/PointF;->x:F

    .line 165
    div-float/2addr v5, p2

    .line 166
    .line 167
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 168
    div-float/2addr v4, p2

    .line 169
    .line 170
    .line 171
    invoke-static {v2, v3, v5, v4}, Landroidx/core/view/animation/PathInterpolatorCompat;->a(FFFF)Landroid/view/animation/Interpolator;

    .line 172
    move-result-object v2

    .line 173
    .line 174
    :try_start_0
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 175
    .line 176
    .line 177
    invoke-direct {p2, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    invoke-static {p0, p2}, Lh0/a$a;->e(ILjava/lang/ref/WeakReference;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    goto :goto_3

    .line 182
    .line 183
    .line 184
    :cond_6
    invoke-static {}, Lh0/a;->a()Landroid/view/animation/Interpolator;

    .line 185
    move-result-object p0

    .line 186
    move-object v2, p0

    .line 187
    :catch_0
    :cond_7
    :goto_3
    move-object v6, p3

    .line 188
    move v8, v0

    .line 189
    move-object v5, v1

    .line 190
    :goto_4
    move-object v7, v2

    .line 191
    goto :goto_5

    .line 192
    .line 193
    .line 194
    :cond_8
    invoke-interface {p3, p0, p2}, Lcom/airbnb/lottie/model/animatable/m$a;->a(Ljava/lang/Object;F)Ljava/lang/Object;

    .line 195
    move-result-object v1

    .line 196
    const/4 v0, 0x0

    .line 197
    move v8, v0

    .line 198
    move-object v5, v1

    .line 199
    move-object v6, v5

    .line 200
    goto :goto_4

    .line 201
    .line 202
    :goto_5
    new-instance p0, Lh0/a;

    .line 203
    const/4 v9, 0x0

    .line 204
    move-object v3, p0

    .line 205
    move-object v4, p1

    .line 206
    .line 207
    .line 208
    invoke-direct/range {v3 .. v9}, Lh0/a;-><init>(Lcom/airbnb/lottie/e;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 209
    return-object p0
.end method

.method public static c(Lorg/json/JSONArray;Lcom/airbnb/lottie/e;FLcom/airbnb/lottie/model/animatable/m$a;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            "Lcom/airbnb/lottie/e;",
            "F",
            "Lcom/airbnb/lottie/model/animatable/m$a<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lh0/a<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    .line 13
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    :goto_0
    if-ge v2, v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    .line 26
    invoke-static {v3, p1, p2, p3}, Lh0/a$a;->b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;FLcom/airbnb/lottie/model/animatable/m$a;)Lh0/a;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    .line 30
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-static {v1}, Lh0/a;->f(Ljava/util/List;)V

    .line 37
    return-object v1
.end method

.method private static d()Landroidx/collection/SparseArrayCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lh0/a$a;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    .line 10
    .line 11
    sput-object v0, Lh0/a$a;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lh0/a$a;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    .line 14
    return-object v0
.end method

.method private static e(ILjava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Lh0/a$a;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Lh0/a$a;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p0, p1}, Landroidx/collection/SparseArrayCompat;->o(ILjava/lang/Object;)V

    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method
