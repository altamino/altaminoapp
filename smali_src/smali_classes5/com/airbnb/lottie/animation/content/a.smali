.class public abstract Lcom/airbnb/lottie/animation/content/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/d;
.implements Lcom/airbnb/lottie/animation/keyframe/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/animation/content/a$b;
    }
.end annotation


# instance fields
.field private final dashPatternAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "*",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/a;
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

.field private final dashPatternValues:[F

.field private final lottieDrawable:Lcom/airbnb/lottie/f;

.field private final opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final pathGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final pm:Landroid/graphics/PathMeasure;

.field private final rect:Landroid/graphics/RectF;

.field private final trimPathPath:Landroid/graphics/Path;

.field private final widthAnimation:Lcom/airbnb/lottie/animation/keyframe/a;
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
.method constructor <init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;Lcom/airbnb/lottie/model/animatable/d;Lcom/airbnb/lottie/model/animatable/b;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/f;",
            "Lcom/airbnb/lottie/model/layer/a;",
            "Landroid/graphics/Paint$Cap;",
            "Landroid/graphics/Paint$Join;",
            "Lcom/airbnb/lottie/model/animatable/d;",
            "Lcom/airbnb/lottie/model/animatable/b;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/animatable/b;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/b;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/PathMeasure;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/a;->pm:Landroid/graphics/PathMeasure;

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/Path;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/a;->path:Landroid/graphics/Path;

    .line 18
    .line 19
    new-instance v0, Landroid/graphics/Path;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/a;->trimPathPath:Landroid/graphics/Path;

    .line 25
    .line 26
    new-instance v0, Landroid/graphics/RectF;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/a;->rect:Landroid/graphics/RectF;

    .line 32
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/a;->pathGroups:Ljava/util/List;

    .line 39
    .line 40
    new-instance v0, Landroid/graphics/Paint;

    .line 41
    const/4 v1, 0x1

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 45
    .line 46
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/a;->paint:Landroid/graphics/Paint;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/a;->lottieDrawable:Lcom/airbnb/lottie/f;

    .line 49
    .line 50
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p5}, Lcom/airbnb/lottie/model/animatable/d;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/a;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p6}, Lcom/airbnb/lottie/model/animatable/b;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/a;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 72
    .line 73
    if-nez p8, :cond_0

    .line 74
    const/4 p1, 0x0

    .line 75
    .line 76
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/a;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 77
    goto :goto_0

    .line 78
    .line 79
    .line 80
    :cond_0
    invoke-virtual {p8}, Lcom/airbnb/lottie/model/animatable/b;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/a;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 84
    .line 85
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    .line 86
    .line 87
    .line 88
    invoke-interface {p7}, Ljava/util/List;->size()I

    .line 89
    move-result p3

    .line 90
    .line 91
    .line 92
    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    .line 94
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/a;->dashPatternAnimations:Ljava/util/List;

    .line 95
    .line 96
    .line 97
    invoke-interface {p7}, Ljava/util/List;->size()I

    .line 98
    move-result p1

    .line 99
    .line 100
    new-array p1, p1, [F

    .line 101
    .line 102
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/a;->dashPatternValues:[F

    .line 103
    const/4 p1, 0x0

    .line 104
    move p3, p1

    .line 105
    .line 106
    .line 107
    :goto_1
    invoke-interface {p7}, Ljava/util/List;->size()I

    .line 108
    move-result p4

    .line 109
    .line 110
    if-ge p3, p4, :cond_1

    .line 111
    .line 112
    iget-object p4, p0, Lcom/airbnb/lottie/animation/content/a;->dashPatternAnimations:Ljava/util/List;

    .line 113
    .line 114
    .line 115
    invoke-interface {p7, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    move-result-object p5

    .line 117
    .line 118
    check-cast p5, Lcom/airbnb/lottie/model/animatable/b;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p5}, Lcom/airbnb/lottie/model/animatable/b;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 122
    move-result-object p5

    .line 123
    .line 124
    .line 125
    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    add-int/lit8 p3, p3, 0x1

    .line 128
    goto :goto_1

    .line 129
    .line 130
    :cond_1
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/a;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 134
    .line 135
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/a;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 139
    move p3, p1

    .line 140
    .line 141
    :goto_2
    iget-object p4, p0, Lcom/airbnb/lottie/animation/content/a;->dashPatternAnimations:Ljava/util/List;

    .line 142
    .line 143
    .line 144
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 145
    move-result p4

    .line 146
    .line 147
    if-ge p3, p4, :cond_2

    .line 148
    .line 149
    iget-object p4, p0, Lcom/airbnb/lottie/animation/content/a;->dashPatternAnimations:Ljava/util/List;

    .line 150
    .line 151
    .line 152
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 153
    move-result-object p4

    .line 154
    .line 155
    check-cast p4, Lcom/airbnb/lottie/animation/keyframe/a;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2, p4}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 159
    .line 160
    add-int/lit8 p3, p3, 0x1

    .line 161
    goto :goto_2

    .line 162
    .line 163
    :cond_2
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/a;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 164
    .line 165
    if-eqz p3, :cond_3

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 169
    .line 170
    :cond_3
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/a;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 174
    .line 175
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/a;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 179
    .line 180
    .line 181
    :goto_3
    invoke-interface {p7}, Ljava/util/List;->size()I

    .line 182
    move-result p2

    .line 183
    .line 184
    if-ge p1, p2, :cond_4

    .line 185
    .line 186
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/a;->dashPatternAnimations:Ljava/util/List;

    .line 187
    .line 188
    .line 189
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 190
    move-result-object p2

    .line 191
    .line 192
    check-cast p2, Lcom/airbnb/lottie/animation/keyframe/a;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 196
    .line 197
    add-int/lit8 p1, p1, 0x1

    .line 198
    goto :goto_3

    .line 199
    .line 200
    :cond_4
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/a;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 201
    .line 202
    if-eqz p1, :cond_5

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 206
    :cond_5
    return-void
.end method

.method private c(Landroid/graphics/Matrix;)V
    .locals 5

    .line 1
    .line 2
    const-string v0, "StrokeContent#applyDashPattern"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/a;->dashPatternAnimations:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 17
    return-void

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-static {p1}, Lcom/airbnb/lottie/utils/f;->f(Landroid/graphics/Matrix;)F

    .line 21
    move-result p1

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    :goto_0
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/a;->dashPatternAnimations:Ljava/util/List;

    .line 25
    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 28
    move-result v2

    .line 29
    .line 30
    if-ge v1, v2, :cond_3

    .line 31
    .line 32
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/a;->dashPatternValues:[F

    .line 33
    .line 34
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/a;->dashPatternAnimations:Ljava/util/List;

    .line 35
    .line 36
    .line 37
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    check-cast v3, Lcom/airbnb/lottie/animation/keyframe/a;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    check-cast v3, Ljava/lang/Float;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 50
    move-result v3

    .line 51
    .line 52
    aput v3, v2, v1

    .line 53
    .line 54
    rem-int/lit8 v2, v1, 0x2

    .line 55
    .line 56
    if-nez v2, :cond_1

    .line 57
    .line 58
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/a;->dashPatternValues:[F

    .line 59
    .line 60
    aget v3, v2, v1

    .line 61
    .line 62
    const/high16 v4, 0x3f800000    # 1.0f

    .line 63
    .line 64
    cmpg-float v3, v3, v4

    .line 65
    .line 66
    if-gez v3, :cond_2

    .line 67
    .line 68
    aput v4, v2, v1

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_1
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/a;->dashPatternValues:[F

    .line 72
    .line 73
    aget v3, v2, v1

    .line 74
    .line 75
    .line 76
    const v4, 0x3dcccccd    # 0.1f

    .line 77
    .line 78
    cmpg-float v3, v3, v4

    .line 79
    .line 80
    if-gez v3, :cond_2

    .line 81
    .line 82
    aput v4, v2, v1

    .line 83
    .line 84
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/a;->dashPatternValues:[F

    .line 85
    .line 86
    aget v3, v2, v1

    .line 87
    mul-float/2addr v3, p1

    .line 88
    .line 89
    aput v3, v2, v1

    .line 90
    .line 91
    add-int/lit8 v1, v1, 0x1

    .line 92
    goto :goto_0

    .line 93
    .line 94
    :cond_3
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/a;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 95
    .line 96
    if-nez p1, :cond_4

    .line 97
    const/4 p1, 0x0

    .line 98
    goto :goto_2

    .line 99
    .line 100
    .line 101
    :cond_4
    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    check-cast p1, Ljava/lang/Float;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 108
    move-result p1

    .line 109
    .line 110
    :goto_2
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/a;->paint:Landroid/graphics/Paint;

    .line 111
    .line 112
    new-instance v2, Landroid/graphics/DashPathEffect;

    .line 113
    .line 114
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/a;->dashPatternValues:[F

    .line 115
    .line 116
    .line 117
    invoke-direct {v2, v3, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 121
    .line 122
    .line 123
    invoke-static {v0}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 124
    return-void
.end method

.method private g(Landroid/graphics/Canvas;Lcom/airbnb/lottie/animation/content/a$b;Landroid/graphics/Matrix;)V
    .locals 12

    .line 1
    .line 2
    const-string v0, "StrokeContent#applyTrimPath"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/a$b;->b(Lcom/airbnb/lottie/animation/content/a$b;)Lcom/airbnb/lottie/animation/content/q;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/a;->path:Landroid/graphics/Path;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/a$b;->a(Lcom/airbnb/lottie/animation/content/a$b;)Ljava/util/List;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 28
    move-result v1

    .line 29
    .line 30
    add-int/lit8 v1, v1, -0x1

    .line 31
    .line 32
    :goto_0
    if-ltz v1, :cond_1

    .line 33
    .line 34
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/a;->path:Landroid/graphics/Path;

    .line 35
    .line 36
    .line 37
    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/a$b;->a(Lcom/airbnb/lottie/animation/content/a$b;)Ljava/util/List;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    .line 41
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    check-cast v3, Lcom/airbnb/lottie/animation/content/k;

    .line 45
    .line 46
    .line 47
    invoke-interface {v3}, Lcom/airbnb/lottie/animation/content/k;->getPath()Landroid/graphics/Path;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 52
    .line 53
    add-int/lit8 v1, v1, -0x1

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/a;->pm:Landroid/graphics/PathMeasure;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/a;->path:Landroid/graphics/Path;

    .line 59
    const/4 v3, 0x0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 63
    .line 64
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/a;->pm:Landroid/graphics/PathMeasure;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    .line 68
    move-result v1

    .line 69
    .line 70
    :goto_1
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/a;->pm:Landroid/graphics/PathMeasure;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->nextContour()Z

    .line 74
    move-result v2

    .line 75
    .line 76
    if-eqz v2, :cond_2

    .line 77
    .line 78
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/a;->pm:Landroid/graphics/PathMeasure;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    .line 82
    move-result v2

    .line 83
    add-float/2addr v1, v2

    .line 84
    goto :goto_1

    .line 85
    .line 86
    .line 87
    :cond_2
    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/a$b;->b(Lcom/airbnb/lottie/animation/content/a$b;)Lcom/airbnb/lottie/animation/content/q;

    .line 88
    move-result-object v2

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/content/q;->h()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 92
    move-result-object v2

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 96
    move-result-object v2

    .line 97
    .line 98
    check-cast v2, Ljava/lang/Float;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 102
    move-result v2

    .line 103
    mul-float/2addr v2, v1

    .line 104
    .line 105
    const/high16 v4, 0x43b40000    # 360.0f

    .line 106
    div-float/2addr v2, v4

    .line 107
    .line 108
    .line 109
    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/a$b;->b(Lcom/airbnb/lottie/animation/content/a$b;)Lcom/airbnb/lottie/animation/content/q;

    .line 110
    move-result-object v4

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/content/q;->i()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 114
    move-result-object v4

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 118
    move-result-object v4

    .line 119
    .line 120
    check-cast v4, Ljava/lang/Float;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 124
    move-result v4

    .line 125
    mul-float/2addr v4, v1

    .line 126
    .line 127
    const/high16 v5, 0x42c80000    # 100.0f

    .line 128
    div-float/2addr v4, v5

    .line 129
    add-float/2addr v4, v2

    .line 130
    .line 131
    .line 132
    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/a$b;->b(Lcom/airbnb/lottie/animation/content/a$b;)Lcom/airbnb/lottie/animation/content/q;

    .line 133
    move-result-object v6

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/content/q;->g()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 137
    move-result-object v6

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 141
    move-result-object v6

    .line 142
    .line 143
    check-cast v6, Ljava/lang/Float;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 147
    move-result v6

    .line 148
    mul-float/2addr v6, v1

    .line 149
    div-float/2addr v6, v5

    .line 150
    add-float/2addr v6, v2

    .line 151
    .line 152
    .line 153
    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/a$b;->a(Lcom/airbnb/lottie/animation/content/a$b;)Ljava/util/List;

    .line 154
    move-result-object v2

    .line 155
    .line 156
    .line 157
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 158
    move-result v2

    .line 159
    .line 160
    add-int/lit8 v2, v2, -0x1

    .line 161
    const/4 v5, 0x0

    .line 162
    move v7, v5

    .line 163
    .line 164
    :goto_2
    if-ltz v2, :cond_a

    .line 165
    .line 166
    iget-object v8, p0, Lcom/airbnb/lottie/animation/content/a;->trimPathPath:Landroid/graphics/Path;

    .line 167
    .line 168
    .line 169
    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/a$b;->a(Lcom/airbnb/lottie/animation/content/a$b;)Ljava/util/List;

    .line 170
    move-result-object v9

    .line 171
    .line 172
    .line 173
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 174
    move-result-object v9

    .line 175
    .line 176
    check-cast v9, Lcom/airbnb/lottie/animation/content/k;

    .line 177
    .line 178
    .line 179
    invoke-interface {v9}, Lcom/airbnb/lottie/animation/content/k;->getPath()Landroid/graphics/Path;

    .line 180
    move-result-object v9

    .line 181
    .line 182
    .line 183
    invoke-virtual {v8, v9}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 184
    .line 185
    iget-object v8, p0, Lcom/airbnb/lottie/animation/content/a;->trimPathPath:Landroid/graphics/Path;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v8, p3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 189
    .line 190
    iget-object v8, p0, Lcom/airbnb/lottie/animation/content/a;->pm:Landroid/graphics/PathMeasure;

    .line 191
    .line 192
    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/a;->trimPathPath:Landroid/graphics/Path;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v8, v9, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 196
    .line 197
    iget-object v8, p0, Lcom/airbnb/lottie/animation/content/a;->pm:Landroid/graphics/PathMeasure;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->getLength()F

    .line 201
    move-result v8

    .line 202
    .line 203
    cmpl-float v9, v6, v1

    .line 204
    .line 205
    const/high16 v10, 0x3f800000    # 1.0f

    .line 206
    .line 207
    if-lez v9, :cond_4

    .line 208
    .line 209
    sub-float v9, v6, v1

    .line 210
    .line 211
    add-float v11, v7, v8

    .line 212
    .line 213
    cmpg-float v11, v9, v11

    .line 214
    .line 215
    if-gez v11, :cond_4

    .line 216
    .line 217
    cmpg-float v11, v7, v9

    .line 218
    .line 219
    if-gez v11, :cond_4

    .line 220
    .line 221
    cmpl-float v11, v4, v1

    .line 222
    .line 223
    if-lez v11, :cond_3

    .line 224
    .line 225
    sub-float v11, v4, v1

    .line 226
    div-float/2addr v11, v8

    .line 227
    goto :goto_3

    .line 228
    :cond_3
    move v11, v5

    .line 229
    :goto_3
    div-float/2addr v9, v8

    .line 230
    .line 231
    .line 232
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    .line 233
    move-result v9

    .line 234
    .line 235
    iget-object v10, p0, Lcom/airbnb/lottie/animation/content/a;->trimPathPath:Landroid/graphics/Path;

    .line 236
    .line 237
    .line 238
    invoke-static {v10, v11, v9, v5}, Lcom/airbnb/lottie/utils/f;->a(Landroid/graphics/Path;FFF)V

    .line 239
    .line 240
    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/a;->trimPathPath:Landroid/graphics/Path;

    .line 241
    .line 242
    iget-object v10, p0, Lcom/airbnb/lottie/animation/content/a;->paint:Landroid/graphics/Paint;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 246
    goto :goto_6

    .line 247
    .line 248
    :cond_4
    add-float v9, v7, v8

    .line 249
    .line 250
    cmpg-float v11, v9, v4

    .line 251
    .line 252
    if-ltz v11, :cond_9

    .line 253
    .line 254
    cmpl-float v11, v7, v6

    .line 255
    .line 256
    if-lez v11, :cond_5

    .line 257
    goto :goto_6

    .line 258
    .line 259
    :cond_5
    cmpg-float v11, v9, v6

    .line 260
    .line 261
    if-gtz v11, :cond_6

    .line 262
    .line 263
    cmpg-float v11, v4, v7

    .line 264
    .line 265
    if-gez v11, :cond_6

    .line 266
    .line 267
    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/a;->trimPathPath:Landroid/graphics/Path;

    .line 268
    .line 269
    iget-object v10, p0, Lcom/airbnb/lottie/animation/content/a;->paint:Landroid/graphics/Paint;

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 273
    goto :goto_6

    .line 274
    .line 275
    :cond_6
    cmpg-float v11, v4, v7

    .line 276
    .line 277
    if-gez v11, :cond_7

    .line 278
    move v11, v5

    .line 279
    goto :goto_4

    .line 280
    .line 281
    :cond_7
    sub-float v11, v4, v7

    .line 282
    div-float/2addr v11, v8

    .line 283
    .line 284
    :goto_4
    cmpl-float v9, v6, v9

    .line 285
    .line 286
    if-lez v9, :cond_8

    .line 287
    goto :goto_5

    .line 288
    .line 289
    :cond_8
    sub-float v9, v6, v7

    .line 290
    .line 291
    div-float v10, v9, v8

    .line 292
    .line 293
    :goto_5
    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/a;->trimPathPath:Landroid/graphics/Path;

    .line 294
    .line 295
    .line 296
    invoke-static {v9, v11, v10, v5}, Lcom/airbnb/lottie/utils/f;->a(Landroid/graphics/Path;FFF)V

    .line 297
    .line 298
    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/a;->trimPathPath:Landroid/graphics/Path;

    .line 299
    .line 300
    iget-object v10, p0, Lcom/airbnb/lottie/animation/content/a;->paint:Landroid/graphics/Paint;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 304
    :cond_9
    :goto_6
    add-float/2addr v7, v8

    .line 305
    .line 306
    add-int/lit8 v2, v2, -0x1

    .line 307
    .line 308
    goto/16 :goto_2

    .line 309
    .line 310
    .line 311
    :cond_a
    invoke-static {v0}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 312
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 7

    .line 1
    .line 2
    const-string v0, "StrokeContent#getBounds"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/a;->path:Landroid/graphics/Path;

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
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/a;->pathGroups:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 18
    move-result v3

    .line 19
    .line 20
    if-ge v2, v3, :cond_1

    .line 21
    .line 22
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/a;->pathGroups:Ljava/util/List;

    .line 23
    .line 24
    .line 25
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    check-cast v3, Lcom/airbnb/lottie/animation/content/a$b;

    .line 29
    move v4, v1

    .line 30
    .line 31
    .line 32
    :goto_1
    invoke-static {v3}, Lcom/airbnb/lottie/animation/content/a$b;->a(Lcom/airbnb/lottie/animation/content/a$b;)Ljava/util/List;

    .line 33
    move-result-object v5

    .line 34
    .line 35
    .line 36
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 37
    move-result v5

    .line 38
    .line 39
    if-ge v4, v5, :cond_0

    .line 40
    .line 41
    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/a;->path:Landroid/graphics/Path;

    .line 42
    .line 43
    .line 44
    invoke-static {v3}, Lcom/airbnb/lottie/animation/content/a$b;->a(Lcom/airbnb/lottie/animation/content/a$b;)Ljava/util/List;

    .line 45
    move-result-object v6

    .line 46
    .line 47
    .line 48
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v6

    .line 50
    .line 51
    check-cast v6, Lcom/airbnb/lottie/animation/content/k;

    .line 52
    .line 53
    .line 54
    invoke-interface {v6}, Lcom/airbnb/lottie/animation/content/k;->getPath()Landroid/graphics/Path;

    .line 55
    move-result-object v6

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v6, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 59
    .line 60
    add-int/lit8 v4, v4, 0x1

    .line 61
    goto :goto_1

    .line 62
    .line 63
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_1
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/a;->path:Landroid/graphics/Path;

    .line 67
    .line 68
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/a;->rect:Landroid/graphics/RectF;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 72
    .line 73
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/a;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 77
    move-result-object p2

    .line 78
    .line 79
    check-cast p2, Ljava/lang/Float;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 83
    move-result p2

    .line 84
    .line 85
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/a;->rect:Landroid/graphics/RectF;

    .line 86
    .line 87
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 88
    .line 89
    const/high16 v3, 0x40000000    # 2.0f

    .line 90
    div-float/2addr p2, v3

    .line 91
    sub-float/2addr v2, p2

    .line 92
    .line 93
    iget v3, v1, Landroid/graphics/RectF;->top:F

    .line 94
    sub-float/2addr v3, p2

    .line 95
    .line 96
    iget v4, v1, Landroid/graphics/RectF;->right:F

    .line 97
    add-float/2addr v4, p2

    .line 98
    .line 99
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    .line 100
    add-float/2addr v5, p2

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 104
    .line 105
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/a;->rect:Landroid/graphics/RectF;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 109
    .line 110
    iget p2, p1, Landroid/graphics/RectF;->left:F

    .line 111
    .line 112
    const/high16 v1, 0x3f800000    # 1.0f

    .line 113
    sub-float/2addr p2, v1

    .line 114
    .line 115
    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 116
    sub-float/2addr v2, v1

    .line 117
    .line 118
    iget v3, p1, Landroid/graphics/RectF;->right:F

    .line 119
    add-float/2addr v3, v1

    .line 120
    .line 121
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    .line 122
    add-float/2addr v4, v1

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 126
    .line 127
    .line 128
    invoke-static {v0}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 129
    return-void
.end method

.method public d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    .line 1
    .line 2
    const-string v0, "StrokeContent#draw"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    .line 6
    int-to-float p3, p3

    .line 7
    .line 8
    const/high16 v1, 0x437f0000    # 255.0f

    .line 9
    div-float/2addr p3, v1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/a;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    check-cast v2, Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result v2

    .line 22
    int-to-float v2, v2

    .line 23
    mul-float/2addr p3, v2

    .line 24
    .line 25
    const/high16 v2, 0x42c80000    # 100.0f

    .line 26
    div-float/2addr p3, v2

    .line 27
    mul-float/2addr p3, v1

    .line 28
    float-to-int p3, p3

    .line 29
    .line 30
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/a;->paint:Landroid/graphics/Paint;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 34
    .line 35
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/a;->paint:Landroid/graphics/Paint;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/a;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    check-cast v1, Ljava/lang/Float;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 47
    move-result v1

    .line 48
    .line 49
    .line 50
    invoke-static {p2}, Lcom/airbnb/lottie/utils/f;->f(Landroid/graphics/Matrix;)F

    .line 51
    move-result v2

    .line 52
    mul-float/2addr v1, v2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    .line 57
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/a;->paint:Landroid/graphics/Paint;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 61
    move-result p3

    .line 62
    const/4 v1, 0x0

    .line 63
    .line 64
    cmpg-float p3, p3, v1

    .line 65
    .line 66
    if-gtz p3, :cond_0

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 70
    return-void

    .line 71
    .line 72
    .line 73
    :cond_0
    invoke-direct {p0, p2}, Lcom/airbnb/lottie/animation/content/a;->c(Landroid/graphics/Matrix;)V

    .line 74
    const/4 p3, 0x0

    .line 75
    .line 76
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/a;->pathGroups:Ljava/util/List;

    .line 77
    .line 78
    .line 79
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 80
    move-result v1

    .line 81
    .line 82
    if-ge p3, v1, :cond_3

    .line 83
    .line 84
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/a;->pathGroups:Ljava/util/List;

    .line 85
    .line 86
    .line 87
    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    check-cast v1, Lcom/airbnb/lottie/animation/content/a$b;

    .line 91
    .line 92
    .line 93
    invoke-static {v1}, Lcom/airbnb/lottie/animation/content/a$b;->b(Lcom/airbnb/lottie/animation/content/a$b;)Lcom/airbnb/lottie/animation/content/q;

    .line 94
    move-result-object v2

    .line 95
    .line 96
    if-eqz v2, :cond_1

    .line 97
    .line 98
    .line 99
    invoke-direct {p0, p1, v1, p2}, Lcom/airbnb/lottie/animation/content/a;->g(Landroid/graphics/Canvas;Lcom/airbnb/lottie/animation/content/a$b;Landroid/graphics/Matrix;)V

    .line 100
    goto :goto_2

    .line 101
    .line 102
    :cond_1
    const-string v2, "StrokeContent#buildPath"

    .line 103
    .line 104
    .line 105
    invoke-static {v2}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    .line 106
    .line 107
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/a;->path:Landroid/graphics/Path;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 111
    .line 112
    .line 113
    invoke-static {v1}, Lcom/airbnb/lottie/animation/content/a$b;->a(Lcom/airbnb/lottie/animation/content/a$b;)Ljava/util/List;

    .line 114
    move-result-object v3

    .line 115
    .line 116
    .line 117
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 118
    move-result v3

    .line 119
    .line 120
    add-int/lit8 v3, v3, -0x1

    .line 121
    .line 122
    :goto_1
    if-ltz v3, :cond_2

    .line 123
    .line 124
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/a;->path:Landroid/graphics/Path;

    .line 125
    .line 126
    .line 127
    invoke-static {v1}, Lcom/airbnb/lottie/animation/content/a$b;->a(Lcom/airbnb/lottie/animation/content/a$b;)Ljava/util/List;

    .line 128
    move-result-object v5

    .line 129
    .line 130
    .line 131
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 132
    move-result-object v5

    .line 133
    .line 134
    check-cast v5, Lcom/airbnb/lottie/animation/content/k;

    .line 135
    .line 136
    .line 137
    invoke-interface {v5}, Lcom/airbnb/lottie/animation/content/k;->getPath()Landroid/graphics/Path;

    .line 138
    move-result-object v5

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, v5, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 142
    .line 143
    add-int/lit8 v3, v3, -0x1

    .line 144
    goto :goto_1

    .line 145
    .line 146
    .line 147
    :cond_2
    invoke-static {v2}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 148
    .line 149
    const-string v1, "StrokeContent#drawPath"

    .line 150
    .line 151
    .line 152
    invoke-static {v1}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    .line 153
    .line 154
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/a;->path:Landroid/graphics/Path;

    .line 155
    .line 156
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/a;->paint:Landroid/graphics/Paint;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 160
    .line 161
    .line 162
    invoke-static {v1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 163
    .line 164
    :goto_2
    add-int/lit8 p3, p3, 0x1

    .line 165
    goto :goto_0

    .line 166
    .line 167
    .line 168
    :cond_3
    invoke-static {v0}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 169
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/a;->lottieDrawable:Lcom/airbnb/lottie/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/f;->invalidateSelf()V

    .line 6
    return-void
.end method

.method public f(Ljava/util/List;Ljava/util/List;)V
    .locals 7
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
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    move-object v2, v1

    .line 9
    .line 10
    :goto_0
    if-ltz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    check-cast v3, Lcom/airbnb/lottie/animation/content/b;

    .line 17
    .line 18
    instance-of v4, v3, Lcom/airbnb/lottie/animation/content/q;

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    check-cast v3, Lcom/airbnb/lottie/animation/content/q;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/content/q;->j()Lcom/airbnb/lottie/model/content/q$c;

    .line 26
    move-result-object v4

    .line 27
    .line 28
    sget-object v5, Lcom/airbnb/lottie/model/content/q$c;->Individually:Lcom/airbnb/lottie/model/content/q$c;

    .line 29
    .line 30
    if-ne v4, v5, :cond_0

    .line 31
    move-object v2, v3

    .line 32
    .line 33
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_1
    if-eqz v2, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/animation/content/q;->c(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 43
    move-result p1

    .line 44
    .line 45
    add-int/lit8 p1, p1, -0x1

    .line 46
    move-object v0, v1

    .line 47
    .line 48
    :goto_1
    if-ltz p1, :cond_7

    .line 49
    .line 50
    .line 51
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    check-cast v3, Lcom/airbnb/lottie/animation/content/b;

    .line 55
    .line 56
    instance-of v4, v3, Lcom/airbnb/lottie/animation/content/q;

    .line 57
    .line 58
    if-eqz v4, :cond_4

    .line 59
    move-object v4, v3

    .line 60
    .line 61
    check-cast v4, Lcom/airbnb/lottie/animation/content/q;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/content/q;->j()Lcom/airbnb/lottie/model/content/q$c;

    .line 65
    move-result-object v5

    .line 66
    .line 67
    sget-object v6, Lcom/airbnb/lottie/model/content/q$c;->Individually:Lcom/airbnb/lottie/model/content/q$c;

    .line 68
    .line 69
    if-ne v5, v6, :cond_4

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/a;->pathGroups:Ljava/util/List;

    .line 74
    .line 75
    .line 76
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    :cond_3
    new-instance v0, Lcom/airbnb/lottie/animation/content/a$b;

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, v4, v1}, Lcom/airbnb/lottie/animation/content/a$b;-><init>(Lcom/airbnb/lottie/animation/content/q;Lcom/airbnb/lottie/animation/content/a$a;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, p0}, Lcom/airbnb/lottie/animation/content/q;->c(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 85
    goto :goto_2

    .line 86
    .line 87
    :cond_4
    instance-of v4, v3, Lcom/airbnb/lottie/animation/content/k;

    .line 88
    .line 89
    if-eqz v4, :cond_6

    .line 90
    .line 91
    if-nez v0, :cond_5

    .line 92
    .line 93
    new-instance v0, Lcom/airbnb/lottie/animation/content/a$b;

    .line 94
    .line 95
    .line 96
    invoke-direct {v0, v2, v1}, Lcom/airbnb/lottie/animation/content/a$b;-><init>(Lcom/airbnb/lottie/animation/content/q;Lcom/airbnb/lottie/animation/content/a$a;)V

    .line 97
    .line 98
    .line 99
    :cond_5
    invoke-static {v0}, Lcom/airbnb/lottie/animation/content/a$b;->a(Lcom/airbnb/lottie/animation/content/a$b;)Ljava/util/List;

    .line 100
    move-result-object v4

    .line 101
    .line 102
    check-cast v3, Lcom/airbnb/lottie/animation/content/k;

    .line 103
    .line 104
    .line 105
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    :cond_6
    :goto_2
    add-int/lit8 p1, p1, -0x1

    .line 108
    goto :goto_1

    .line 109
    .line 110
    :cond_7
    if-eqz v0, :cond_8

    .line 111
    .line 112
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/a;->pathGroups:Ljava/util/List;

    .line 113
    .line 114
    .line 115
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_8
    return-void
.end method
