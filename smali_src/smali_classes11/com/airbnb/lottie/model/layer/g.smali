.class public Lcom/airbnb/lottie/model/layer/g;
.super Lcom/airbnb/lottie/model/layer/a;
.source "SourceFile"


# instance fields
.field private final layerModel:Lcom/airbnb/lottie/model/layer/d;

.field private final paint:Landroid/graphics/Paint;

.field private final rect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/d;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/a;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/d;)V

    .line 4
    .line 5
    new-instance p1, Landroid/graphics/RectF;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->rect:Landroid/graphics/RectF;

    .line 11
    .line 12
    new-instance p1, Landroid/graphics/Paint;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->paint:Landroid/graphics/Paint;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->layerModel:Lcom/airbnb/lottie/model/layer/d;

    .line 20
    const/4 v0, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 24
    .line 25
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/d;->m()I

    .line 32
    move-result p2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    return-void
.end method

.method private y(Landroid/graphics/Matrix;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->rect:Landroid/graphics/RectF;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->layerModel:Lcom/airbnb/lottie/model/layer/d;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/d;->o()I

    .line 8
    move-result v1

    .line 9
    int-to-float v1, v1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/g;->layerModel:Lcom/airbnb/lottie/model/layer/d;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/d;->n()I

    .line 15
    move-result v2

    .line 16
    int-to-float v2, v2

    .line 17
    const/4 v3, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->rect:Landroid/graphics/RectF;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 26
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 4
    .line 5
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->boundsMatrix:Landroid/graphics/Matrix;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p2}, Lcom/airbnb/lottie/model/layer/g;->y(Landroid/graphics/Matrix;)V

    .line 9
    .line 10
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->rect:Landroid/graphics/RectF;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 14
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
    .line 2
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->paint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 6
    return-void
.end method

.method public k(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->layerModel:Lcom/airbnb/lottie/model/layer/d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/d;->m()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    int-to-float p3, p3

    .line 15
    .line 16
    const/high16 v1, 0x437f0000    # 255.0f

    .line 17
    div-float/2addr p3, v1

    .line 18
    int-to-float v0, v0

    .line 19
    div-float/2addr v0, v1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->transform:Lcom/airbnb/lottie/animation/keyframe/p;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/p;->f()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    check-cast v2, Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 35
    move-result v2

    .line 36
    int-to-float v2, v2

    .line 37
    mul-float/2addr v0, v2

    .line 38
    .line 39
    const/high16 v2, 0x42c80000    # 100.0f

    .line 40
    div-float/2addr v0, v2

    .line 41
    mul-float/2addr p3, v0

    .line 42
    mul-float/2addr p3, v1

    .line 43
    float-to-int p3, p3

    .line 44
    .line 45
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->paint:Landroid/graphics/Paint;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 49
    .line 50
    if-lez p3, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p2}, Lcom/airbnb/lottie/model/layer/g;->y(Landroid/graphics/Matrix;)V

    .line 54
    .line 55
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->rect:Landroid/graphics/RectF;

    .line 56
    .line 57
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/g;->paint:Landroid/graphics/Paint;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 61
    :cond_1
    return-void
.end method
