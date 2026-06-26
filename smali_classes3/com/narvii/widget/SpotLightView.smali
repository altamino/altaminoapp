.class public Lcom/narvii/widget/SpotLightView;
.super Landroid/view/View;
.source "SpotLightView.java"


# instance fields
.field private blurRadius:I

.field private cache:Landroid/graphics/Bitmap;

.field private color:I

.field private paint:Landroid/graphics/Paint;

.field private rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    sget-object v0, Lcom/narvii/lib/R$styleable;->SpotLightView:[I

    sget v1, Lcom/narvii/lib/R$style;->SpotLightView:I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 36
    sget p2, Lcom/narvii/lib/R$styleable;->SpotLightView_spotBlurRadius:I

    const/16 v0, 0x14

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/SpotLightView;->blurRadius:I

    .line 37
    sget p2, Lcom/narvii/lib/R$styleable;->SpotLightView_spotShadowColor:I

    const v0, -0x19cccccd

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/SpotLightView;->color:I

    .line 38
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/SpotLightView;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method private static generate(IIII)Landroid/graphics/Bitmap;
    .locals 5

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 74
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    mul-int/lit8 v1, p3, 0x2

    add-int v2, p0, v1

    add-int/2addr v1, p1

    .line 77
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 79
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 80
    invoke-virtual {v2, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    const/high16 p2, -0x1000000

    .line 81
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    new-instance p2, Landroid/graphics/BlurMaskFilter;

    int-to-float v3, p3

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p2, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 83
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 84
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 85
    iput v3, p2, Landroid/graphics/RectF;->left:F

    .line 86
    iput v3, p2, Landroid/graphics/RectF;->top:F

    add-int/2addr p0, p3

    int-to-float p0, p0

    .line 87
    iput p0, p2, Landroid/graphics/RectF;->right:F

    add-int/2addr p1, p3

    int-to-float p0, p1

    .line 88
    iput p0, p2, Landroid/graphics/RectF;->bottom:F

    .line 89
    invoke-virtual {v2, p2, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-object v1
.end method

.method private prepare()Landroid/graphics/Bitmap;
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/narvii/widget/SpotLightView;->rect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/narvii/widget/SpotLightView;->cache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 97
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/narvii/widget/SpotLightView;->cache:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/SpotLightView;->cache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/widget/SpotLightView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/narvii/widget/SpotLightView;->cache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/widget/SpotLightView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/SpotLightView;->cache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/SpotLightView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/widget/SpotLightView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lcom/narvii/widget/SpotLightView;->color:I

    iget v3, p0, Lcom/narvii/widget/SpotLightView;->blurRadius:I

    invoke-static {v0, v1, v2, v3}, Lcom/narvii/widget/SpotLightView;->generate(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/SpotLightView;->cache:Landroid/graphics/Bitmap;

    .line 108
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/SpotLightView;->cache:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 113
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 115
    iget-object v0, p0, Lcom/narvii/widget/SpotLightView;->rect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/widget/SpotLightView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/narvii/widget/SpotLightView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/widget/SpotLightView;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 118
    iget v2, p0, Lcom/narvii/widget/SpotLightView;->blurRadius:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 119
    iget-object v3, p0, Lcom/narvii/widget/SpotLightView;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v2

    int-to-float v6, v3

    int-to-float v1, v1

    iget-object v8, p0, Lcom/narvii/widget/SpotLightView;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    move v7, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 120
    iget-object v3, p0, Lcom/narvii/widget/SpotLightView;->rect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v2

    int-to-float v6, v4

    const/4 v7, 0x0

    iget v4, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v2

    int-to-float v8, v4

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v2

    int-to-float v9, v3

    iget-object v10, p0, Lcom/narvii/widget/SpotLightView;->paint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 121
    iget-object v3, p0, Lcom/narvii/widget/SpotLightView;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v2

    int-to-float v8, v3

    const/4 v9, 0x0

    int-to-float v10, v0

    iget-object v12, p0, Lcom/narvii/widget/SpotLightView;->paint:Landroid/graphics/Paint;

    move-object v7, p1

    move v11, v1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 122
    iget-object v0, p0, Lcom/narvii/widget/SpotLightView;->rect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v2

    int-to-float v8, v3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v2

    int-to-float v9, v3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    int-to-float v10, v0

    iget-object v12, p0, Lcom/narvii/widget/SpotLightView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 123
    iget-object v0, p0, Lcom/narvii/widget/SpotLightView;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    invoke-direct {p0}, Lcom/narvii/widget/SpotLightView;->prepare()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/widget/SpotLightView;->rect:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v2

    int-to-float v3, v3

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/narvii/widget/SpotLightView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setSpotBlurRadius(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/narvii/widget/SpotLightView;->blurRadius:I

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSpotRect(IIII)V
    .locals 1

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcom/narvii/widget/SpotLightView;->rect:Landroid/graphics/Rect;

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/SpotLightView;->rect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/SpotLightView;->rect:Landroid/graphics/Rect;

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/SpotLightView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 59
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSpotRect(Landroid/graphics/Rect;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/narvii/widget/SpotLightView;->setSpotRect(IIII)V

    goto :goto_0

    .line 47
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/narvii/widget/SpotLightView;->setSpotRect(IIII)V

    :goto_0
    return-void
.end method

.method public setSpotShadowColor(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/narvii/widget/SpotLightView;->color:I

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
