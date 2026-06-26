.class public Lcom/narvii/widget/RoundedRealtimeBlurView;
.super Lcom/github/mmin18/widget/RealtimeBlurView;
.source "RoundedRealtimeBlurView.java"


# instance fields
.field private colorPaint:Landroid/graphics/Paint;

.field mPath:Landroid/graphics/Path;

.field private mRectDst:Landroid/graphics/RectF;

.field private matrix:Landroid/graphics/Matrix;

.field private paint:Landroid/graphics/Paint;

.field private radius:I

.field radiusArray:[F

.field private shader:Landroid/graphics/BitmapShader;

.field private shaderBitmapRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/github/mmin18/widget/RealtimeBlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->mRectDst:Landroid/graphics/RectF;

    .line 36
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->mPath:Landroid/graphics/Path;

    .line 41
    sget-object v0, Lcom/narvii/amino/R$styleable;->RoundedRealtimeBlurView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 42
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->radius:I

    .line 43
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->paint:Landroid/graphics/Paint;

    .line 46
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->colorPaint:Landroid/graphics/Paint;

    .line 47
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->matrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method protected drawBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V
    .locals 4

    .line 58
    iget v0, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->radius:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->radiusArray:[F

    if-nez v0, :cond_0

    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/github/mmin18/widget/RealtimeBlurView;->drawBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V

    return-void

    .line 63
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->mRectDst:Landroid/graphics/RectF;

    .line 65
    iget-object v0, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->shaderBitmapRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_0
    if-eq v0, p2, :cond_2

    .line 67
    iput-object v1, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->shader:Landroid/graphics/BitmapShader;

    .line 68
    iput-object v1, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->shaderBitmapRef:Ljava/lang/ref/WeakReference;

    :cond_2
    if-eqz p2, :cond_5

    .line 71
    iget-object v0, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 72
    iget-object v0, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->shader:Landroid/graphics/BitmapShader;

    if-nez v0, :cond_3

    .line 73
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p2, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->shader:Landroid/graphics/BitmapShader;

    .line 74
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->shaderBitmapRef:Ljava/lang/ref/WeakReference;

    .line 76
    :cond_3
    iget-object p2, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->shader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 77
    iget-object p2, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->shader:Landroid/graphics/BitmapShader;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 78
    iget-object p2, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->radiusArray:[F

    if-eqz p2, :cond_4

    .line 79
    iget-object p2, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 80
    iget-object p2, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->mRectDst:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->radiusArray:[F

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 81
    iget-object p2, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 83
    :cond_4
    iget-object p2, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->mRectDst:Landroid/graphics/RectF;

    iget v0, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->radius:I

    int-to-float v1, v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 86
    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->colorPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object p2, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->radiusArray:[F

    if-eqz p2, :cond_6

    .line 88
    iget-object p2, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 89
    iget-object p2, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->mPath:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->mRectDst:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->radiusArray:[F

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p3, v0, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 90
    iget-object p2, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->mPath:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->colorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 92
    :cond_6
    iget-object p2, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->mRectDst:Landroid/graphics/RectF;

    iget p3, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->radius:I

    int-to-float v0, p3

    int-to-float p3, p3

    iget-object v1, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->colorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_2
    return-void
.end method

.method public setRadiusArray([F)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->radiusArray:[F

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
