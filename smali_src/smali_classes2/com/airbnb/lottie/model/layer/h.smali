.class public Lcom/airbnb/lottie/model/layer/h;
.super Lcom/airbnb/lottie/model/layer/a;
.source "SourceFile"


# instance fields
.field private colorAnimation:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final composition:Lcom/airbnb/lottie/e;

.field private final contentsForCharacter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/airbnb/lottie/model/g;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private final fillPaint:Landroid/graphics/Paint;

.field private final lottieDrawable:Lcom/airbnb/lottie/f;

.field private final matrix:Landroid/graphics/Matrix;

.field private final rectF:Landroid/graphics/RectF;

.field private strokeAnimation:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final strokePaint:Landroid/graphics/Paint;

.field private strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/a;
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

.field private final tempCharArray:[C

.field private final textAnimation:Lcom/airbnb/lottie/animation/keyframe/o;

.field private trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/a;
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
.method constructor <init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/d;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/a;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/d;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    new-array v1, v0, [C

    .line 7
    .line 8
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/h;->tempCharArray:[C

    .line 9
    .line 10
    new-instance v1, Landroid/graphics/RectF;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 14
    .line 15
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/h;->rectF:Landroid/graphics/RectF;

    .line 16
    .line 17
    new-instance v1, Landroid/graphics/Matrix;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 21
    .line 22
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/h;->matrix:Landroid/graphics/Matrix;

    .line 23
    .line 24
    new-instance v1, Lcom/airbnb/lottie/model/layer/h$a;

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, p0, v0}, Lcom/airbnb/lottie/model/layer/h$a;-><init>(Lcom/airbnb/lottie/model/layer/h;I)V

    .line 28
    .line 29
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/h;->fillPaint:Landroid/graphics/Paint;

    .line 30
    .line 31
    new-instance v1, Lcom/airbnb/lottie/model/layer/h$b;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, p0, v0}, Lcom/airbnb/lottie/model/layer/h$b;-><init>(Lcom/airbnb/lottie/model/layer/h;I)V

    .line 35
    .line 36
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/h;->strokePaint:Landroid/graphics/Paint;

    .line 37
    .line 38
    new-instance v0, Ljava/util/HashMap;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/h;->contentsForCharacter:Ljava/util/Map;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/h;->lottieDrawable:Lcom/airbnb/lottie/f;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/d;->a()Lcom/airbnb/lottie/e;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/h;->composition:Lcom/airbnb/lottie/e;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/d;->q()Lcom/airbnb/lottie/model/animatable/j;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/j;->e()Lcom/airbnb/lottie/animation/keyframe/o;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/h;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/o;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/d;->r()Lcom/airbnb/lottie/model/animatable/k;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    if-eqz p1, :cond_0

    .line 74
    .line 75
    iget-object p2, p1, Lcom/airbnb/lottie/model/animatable/k;->color:Lcom/airbnb/lottie/model/animatable/a;

    .line 76
    .line 77
    if-eqz p2, :cond_0

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/a;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 81
    move-result-object p2

    .line 82
    .line 83
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/h;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 87
    .line 88
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/h;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 92
    .line 93
    :cond_0
    if-eqz p1, :cond_1

    .line 94
    .line 95
    iget-object p2, p1, Lcom/airbnb/lottie/model/animatable/k;->stroke:Lcom/airbnb/lottie/model/animatable/a;

    .line 96
    .line 97
    if-eqz p2, :cond_1

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/a;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 101
    move-result-object p2

    .line 102
    .line 103
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/h;->strokeAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 107
    .line 108
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/h;->strokeAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 112
    .line 113
    :cond_1
    if-eqz p1, :cond_2

    .line 114
    .line 115
    iget-object p2, p1, Lcom/airbnb/lottie/model/animatable/k;->strokeWidth:Lcom/airbnb/lottie/model/animatable/b;

    .line 116
    .line 117
    if-eqz p2, :cond_2

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/b;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 121
    move-result-object p2

    .line 122
    .line 123
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/h;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 127
    .line 128
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/h;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 132
    .line 133
    :cond_2
    if-eqz p1, :cond_3

    .line 134
    .line 135
    iget-object p1, p1, Lcom/airbnb/lottie/model/animatable/k;->tracking:Lcom/airbnb/lottie/model/animatable/b;

    .line 136
    .line 137
    if-eqz p1, :cond_3

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/b;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 141
    move-result-object p1

    .line 142
    .line 143
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/h;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 147
    .line 148
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/h;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 152
    :cond_3
    return-void
.end method

.method private A(CLcom/airbnb/lottie/model/d;Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/h;->tempCharArray:[C

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    aput-char p1, v0, v1

    .line 6
    .line 7
    iget-boolean p1, p2, Lcom/airbnb/lottie/model/d;->strokeOverFill:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/h;->fillPaint:Landroid/graphics/Paint;

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0, p1, p3}, Lcom/airbnb/lottie/model/layer/h;->y([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/h;->tempCharArray:[C

    .line 17
    .line 18
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/h;->strokePaint:Landroid/graphics/Paint;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/h;->y([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/h;->strokePaint:Landroid/graphics/Paint;

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0, p1, p3}, Lcom/airbnb/lottie/model/layer/h;->y([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 28
    .line 29
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/h;->tempCharArray:[C

    .line 30
    .line 31
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/h;->fillPaint:Landroid/graphics/Paint;

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/h;->y([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 35
    :goto_0
    return-void
.end method

.method private B(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 14
    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    cmpl-float v0, v0, v1

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    return-void

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 29
    return-void
.end method

.method private C(Lcom/airbnb/lottie/model/d;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/f;Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    .line 2
    iget v0, p1, Lcom/airbnb/lottie/model/d;->size:I

    .line 3
    int-to-float v0, v0

    .line 4
    .line 5
    const/high16 v1, 0x42c80000    # 100.0f

    .line 6
    div-float/2addr v0, v1

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Lcom/airbnb/lottie/utils/f;->f(Landroid/graphics/Matrix;)F

    .line 10
    move-result v1

    .line 11
    .line 12
    iget-object v8, p1, Lcom/airbnb/lottie/model/d;->text:Ljava/lang/String;

    .line 13
    const/4 v2, 0x0

    .line 14
    move v9, v2

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 18
    move-result v2

    .line 19
    .line 20
    if-ge v9, v2, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    .line 24
    move-result v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/f;->a()Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/f;->c()Ljava/lang/String;

    .line 32
    move-result-object v4

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v3, v4}, Lcom/airbnb/lottie/model/g;->c(CLjava/lang/String;Ljava/lang/String;)I

    .line 36
    move-result v2

    .line 37
    .line 38
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/h;->composition:Lcom/airbnb/lottie/e;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/airbnb/lottie/e;->i()Landroidx/collection/SparseArrayCompat;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v2}, Landroidx/collection/SparseArrayCompat;->j(I)Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 47
    move-object v10, v2

    .line 48
    .line 49
    check-cast v10, Lcom/airbnb/lottie/model/g;

    .line 50
    .line 51
    if-nez v10, :cond_0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    move-object v2, p0

    .line 54
    move-object v3, v10

    .line 55
    move-object v4, p2

    .line 56
    move v5, v0

    .line 57
    move-object v6, p1

    .line 58
    move-object v7, p4

    .line 59
    .line 60
    .line 61
    invoke-direct/range {v2 .. v7}, Lcom/airbnb/lottie/model/layer/h;->z(Lcom/airbnb/lottie/model/g;Landroid/graphics/Matrix;FLcom/airbnb/lottie/model/d;Landroid/graphics/Canvas;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v10}, Lcom/airbnb/lottie/model/g;->b()D

    .line 65
    move-result-wide v2

    .line 66
    double-to-float v2, v2

    .line 67
    mul-float/2addr v2, v0

    .line 68
    .line 69
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/h;->composition:Lcom/airbnb/lottie/e;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Lcom/airbnb/lottie/e;->j()F

    .line 73
    move-result v3

    .line 74
    mul-float/2addr v2, v3

    .line 75
    mul-float/2addr v2, v1

    .line 76
    .line 77
    iget v3, p1, Lcom/airbnb/lottie/model/d;->tracking:I

    .line 78
    int-to-float v3, v3

    .line 79
    .line 80
    const/high16 v4, 0x41200000    # 10.0f

    .line 81
    div-float/2addr v3, v4

    .line 82
    .line 83
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/h;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 84
    .line 85
    if-eqz v4, :cond_1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 89
    move-result-object v4

    .line 90
    .line 91
    check-cast v4, Ljava/lang/Float;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 95
    move-result v4

    .line 96
    add-float/2addr v3, v4

    .line 97
    :cond_1
    mul-float/2addr v3, v1

    .line 98
    add-float/2addr v2, v3

    .line 99
    const/4 v3, 0x0

    .line 100
    .line 101
    .line 102
    invoke-virtual {p4, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 103
    .line 104
    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 105
    goto :goto_0

    .line 106
    :cond_2
    return-void
.end method

.method private D(Lcom/airbnb/lottie/model/d;Lcom/airbnb/lottie/model/f;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {p3}, Lcom/airbnb/lottie/utils/f;->f(Landroid/graphics/Matrix;)F

    .line 4
    move-result p3

    .line 5
    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/h;->lottieDrawable:Lcom/airbnb/lottie/f;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/f;->a()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/f;->c()Ljava/lang/String;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, p2}, Lcom/airbnb/lottie/f;->w(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    if-nez p2, :cond_0

    .line 21
    return-void

    .line 22
    .line 23
    :cond_0
    iget-object v0, p1, Lcom/airbnb/lottie/model/d;->text:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/h;->lottieDrawable:Lcom/airbnb/lottie/f;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/airbnb/lottie/f;->v()Lcom/airbnb/lottie/l;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/l;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/h;->fillPaint:Landroid/graphics/Paint;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 41
    .line 42
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/h;->fillPaint:Landroid/graphics/Paint;

    .line 43
    .line 44
    iget v1, p1, Lcom/airbnb/lottie/model/d;->size:I

    .line 45
    int-to-float v1, v1

    .line 46
    .line 47
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/h;->composition:Lcom/airbnb/lottie/e;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/airbnb/lottie/e;->j()F

    .line 51
    move-result v2

    .line 52
    mul-float/2addr v1, v2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 56
    .line 57
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/h;->strokePaint:Landroid/graphics/Paint;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/h;->fillPaint:Landroid/graphics/Paint;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 67
    .line 68
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/h;->strokePaint:Landroid/graphics/Paint;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/h;->fillPaint:Landroid/graphics/Paint;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    .line 74
    move-result v1

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 78
    const/4 p2, 0x0

    .line 79
    move v1, p2

    .line 80
    .line 81
    .line 82
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 83
    move-result v2

    .line 84
    .line 85
    if-ge v1, v2, :cond_3

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 89
    move-result v2

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, v2, p1, p4}, Lcom/airbnb/lottie/model/layer/h;->A(CLcom/airbnb/lottie/model/d;Landroid/graphics/Canvas;)V

    .line 93
    .line 94
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/h;->tempCharArray:[C

    .line 95
    .line 96
    aput-char v2, v3, p2

    .line 97
    .line 98
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/h;->fillPaint:Landroid/graphics/Paint;

    .line 99
    const/4 v4, 0x1

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v3, p2, v4}, Landroid/graphics/Paint;->measureText([CII)F

    .line 103
    move-result v2

    .line 104
    .line 105
    iget v3, p1, Lcom/airbnb/lottie/model/d;->tracking:I

    .line 106
    int-to-float v3, v3

    .line 107
    .line 108
    const/high16 v4, 0x41200000    # 10.0f

    .line 109
    div-float/2addr v3, v4

    .line 110
    .line 111
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/h;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 112
    .line 113
    if-eqz v4, :cond_2

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 117
    move-result-object v4

    .line 118
    .line 119
    check-cast v4, Ljava/lang/Float;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 123
    move-result v4

    .line 124
    add-float/2addr v3, v4

    .line 125
    :cond_2
    mul-float/2addr v3, p3

    .line 126
    add-float/2addr v2, v3

    .line 127
    const/4 v3, 0x0

    .line 128
    .line 129
    .line 130
    invoke-virtual {p4, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 131
    .line 132
    add-int/lit8 v1, v1, 0x1

    .line 133
    goto :goto_0

    .line 134
    :cond_3
    return-void
.end method

.method private E(Lcom/airbnb/lottie/model/g;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/g;",
            ")",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/c;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/h;->contentsForCharacter:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/h;->contentsForCharacter:Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Ljava/util/List;

    .line 17
    return-object p1

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/g;->a()Ljava/util/List;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 25
    move-result v1

    .line 26
    .line 27
    new-instance v2, Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    const/4 v3, 0x0

    .line 32
    .line 33
    :goto_0
    if-ge v3, v1, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v4

    .line 38
    .line 39
    check-cast v4, Lcom/airbnb/lottie/model/content/n;

    .line 40
    .line 41
    new-instance v5, Lcom/airbnb/lottie/animation/content/c;

    .line 42
    .line 43
    iget-object v6, p0, Lcom/airbnb/lottie/model/layer/h;->lottieDrawable:Lcom/airbnb/lottie/f;

    .line 44
    .line 45
    .line 46
    invoke-direct {v5, v6, p0, v4}, Lcom/airbnb/lottie/animation/content/c;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/n;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    add-int/lit8 v3, v3, 0x1

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/h;->contentsForCharacter:Ljava/util/Map;

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-object v2
.end method

.method private y([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 14
    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    cmpl-float v0, v0, v1

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    return-void

    .line 26
    :cond_1
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x1

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    move-object v1, p3

    .line 31
    move-object v2, p1

    .line 32
    move-object v7, p2

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 36
    return-void
.end method

.method private z(Lcom/airbnb/lottie/model/g;Landroid/graphics/Matrix;FLcom/airbnb/lottie/model/d;Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/h;->E(Lcom/airbnb/lottie/model/g;)Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    move-result v2

    .line 11
    .line 12
    if-ge v1, v2, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    check-cast v2, Lcom/airbnb/lottie/animation/content/c;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/content/c;->getPath()Landroid/graphics/Path;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/h;->rectF:Landroid/graphics/RectF;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 28
    .line 29
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/h;->matrix:Landroid/graphics/Matrix;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 33
    .line 34
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/h;->matrix:Landroid/graphics/Matrix;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, p3, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 38
    .line 39
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/h;->matrix:Landroid/graphics/Matrix;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 43
    .line 44
    iget-boolean v3, p4, Lcom/airbnb/lottie/model/d;->strokeOverFill:Z

    .line 45
    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/h;->fillPaint:Landroid/graphics/Paint;

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, v2, v3, p5}, Lcom/airbnb/lottie/model/layer/h;->B(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 52
    .line 53
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/h;->strokePaint:Landroid/graphics/Paint;

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, v2, v3, p5}, Lcom/airbnb/lottie/model/layer/h;->B(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_0
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/h;->strokePaint:Landroid/graphics/Paint;

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, v2, v3, p5}, Lcom/airbnb/lottie/model/layer/h;->B(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 63
    .line 64
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/h;->fillPaint:Landroid/graphics/Paint;

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, v2, v3, p5}, Lcom/airbnb/lottie/model/layer/h;->B(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 68
    .line 69
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    return-void
.end method


# virtual methods
.method k(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    .line 5
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/h;->lottieDrawable:Lcom/airbnb/lottie/f;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3}, Lcom/airbnb/lottie/f;->T()Z

    .line 9
    move-result p3

    .line 10
    .line 11
    if-nez p3, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 15
    .line 16
    :cond_0
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/h;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/o;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 20
    move-result-object p3

    .line 21
    .line 22
    check-cast p3, Lcom/airbnb/lottie/model/d;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/h;->composition:Lcom/airbnb/lottie/e;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/airbnb/lottie/e;->n()Ljava/util/Map;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iget-object v1, p3, Lcom/airbnb/lottie/model/d;->fontName:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    check-cast v0, Lcom/airbnb/lottie/model/f;

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 42
    return-void

    .line 43
    .line 44
    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/h;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/h;->fillPaint:Landroid/graphics/Paint;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    check-cast v1, Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 58
    move-result v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_2
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/h;->fillPaint:Landroid/graphics/Paint;

    .line 65
    .line 66
    iget v2, p3, Lcom/airbnb/lottie/model/d;->color:I

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    .line 71
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/h;->strokeAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/h;->strokePaint:Landroid/graphics/Paint;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    check-cast v1, Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 85
    move-result v1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    goto :goto_1

    .line 90
    .line 91
    :cond_3
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/h;->strokePaint:Landroid/graphics/Paint;

    .line 92
    .line 93
    iget v2, p3, Lcom/airbnb/lottie/model/d;->strokeColor:I

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    .line 98
    :goto_1
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->transform:Lcom/airbnb/lottie/animation/keyframe/p;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/p;->f()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    check-cast v1, Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 112
    move-result v1

    .line 113
    .line 114
    mul-int/lit16 v1, v1, 0xff

    .line 115
    .line 116
    div-int/lit8 v1, v1, 0x64

    .line 117
    .line 118
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/h;->fillPaint:Landroid/graphics/Paint;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 122
    .line 123
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/h;->strokePaint:Landroid/graphics/Paint;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 127
    .line 128
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/h;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 129
    .line 130
    if-eqz v1, :cond_4

    .line 131
    .line 132
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/h;->strokePaint:Landroid/graphics/Paint;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 136
    move-result-object v1

    .line 137
    .line 138
    check-cast v1, Ljava/lang/Float;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 142
    move-result v1

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 146
    goto :goto_2

    .line 147
    .line 148
    .line 149
    :cond_4
    invoke-static {p2}, Lcom/airbnb/lottie/utils/f;->f(Landroid/graphics/Matrix;)F

    .line 150
    move-result v1

    .line 151
    .line 152
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/h;->strokePaint:Landroid/graphics/Paint;

    .line 153
    .line 154
    iget v3, p3, Lcom/airbnb/lottie/model/d;->strokeWidth:I

    .line 155
    int-to-float v3, v3

    .line 156
    .line 157
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/h;->composition:Lcom/airbnb/lottie/e;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4}, Lcom/airbnb/lottie/e;->j()F

    .line 161
    move-result v4

    .line 162
    mul-float/2addr v3, v4

    .line 163
    mul-float/2addr v3, v1

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 167
    .line 168
    :goto_2
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/h;->lottieDrawable:Lcom/airbnb/lottie/f;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Lcom/airbnb/lottie/f;->T()Z

    .line 172
    move-result v1

    .line 173
    .line 174
    if-eqz v1, :cond_5

    .line 175
    .line 176
    .line 177
    invoke-direct {p0, p3, p2, v0, p1}, Lcom/airbnb/lottie/model/layer/h;->C(Lcom/airbnb/lottie/model/d;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/f;Landroid/graphics/Canvas;)V

    .line 178
    goto :goto_3

    .line 179
    .line 180
    .line 181
    :cond_5
    invoke-direct {p0, p3, v0, p2, p1}, Lcom/airbnb/lottie/model/layer/h;->D(Lcom/airbnb/lottie/model/d;Lcom/airbnb/lottie/model/f;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V

    .line 182
    .line 183
    .line 184
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 185
    return-void
.end method
