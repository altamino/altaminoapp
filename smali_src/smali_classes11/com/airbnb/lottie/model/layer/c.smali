.class public Lcom/airbnb/lottie/model/layer/c;
.super Lcom/airbnb/lottie/model/layer/a;
.source "SourceFile"


# instance fields
.field private final density:F

.field private final dst:Landroid/graphics/Rect;

.field private final paint:Landroid/graphics/Paint;

.field private final src:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/d;F)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/a;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/d;)V

    .line 4
    .line 5
    new-instance p1, Landroid/graphics/Paint;

    .line 6
    const/4 p2, 0x3

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 10
    .line 11
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/c;->paint:Landroid/graphics/Paint;

    .line 12
    .line 13
    new-instance p1, Landroid/graphics/Rect;

    .line 14
    .line 15
    .line 16
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 17
    .line 18
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/c;->src:Landroid/graphics/Rect;

    .line 19
    .line 20
    new-instance p1, Landroid/graphics/Rect;

    .line 21
    .line 22
    .line 23
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 24
    .line 25
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/c;->dst:Landroid/graphics/Rect;

    .line 26
    .line 27
    iput p3, p0, Lcom/airbnb/lottie/model/layer/c;->density:F

    .line 28
    return-void
.end method

.method private y()Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->layerModel:Lcom/airbnb/lottie/model/layer/d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/d;->k()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->lottieDrawable:Lcom/airbnb/lottie/f;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/f;->o(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/c;->y()Landroid/graphics/Bitmap;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 12
    .line 13
    iget v1, p1, Landroid/graphics/RectF;->top:F

    .line 14
    .line 15
    iget v2, p1, Landroid/graphics/RectF;->right:F

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 19
    move-result v3

    .line 20
    int-to-float v3, v3

    .line 21
    .line 22
    .line 23
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 24
    move-result v2

    .line 25
    .line 26
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 30
    move-result p2

    .line 31
    int-to-float p2, p2

    .line 32
    .line 33
    .line 34
    invoke-static {v3, p2}, Ljava/lang/Math;->min(FF)F

    .line 35
    move-result p2

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 39
    .line 40
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->boundsMatrix:Landroid/graphics/Matrix;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 44
    :cond_0
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
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/c;->paint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 6
    return-void
.end method

.method public k(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/c;->y()Landroid/graphics/Bitmap;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/c;->paint:Landroid/graphics/Paint;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 19
    .line 20
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/c;->src:Landroid/graphics/Rect;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 24
    move-result p3

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v2, v2, p3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 33
    .line 34
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/c;->dst:Landroid/graphics/Rect;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 38
    move-result p3

    .line 39
    int-to-float p3, p3

    .line 40
    .line 41
    iget v1, p0, Lcom/airbnb/lottie/model/layer/c;->density:F

    .line 42
    mul-float/2addr p3, v1

    .line 43
    float-to-int p3, p3

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 47
    move-result v1

    .line 48
    int-to-float v1, v1

    .line 49
    .line 50
    iget v3, p0, Lcom/airbnb/lottie/model/layer/c;->density:F

    .line 51
    mul-float/2addr v1, v3

    .line 52
    float-to-int v1, v1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v2, v2, p3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 56
    .line 57
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/c;->src:Landroid/graphics/Rect;

    .line 58
    .line 59
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/c;->dst:Landroid/graphics/Rect;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/c;->paint:Landroid/graphics/Paint;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 68
    return-void
.end method
