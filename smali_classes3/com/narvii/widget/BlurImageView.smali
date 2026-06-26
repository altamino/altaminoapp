.class public Lcom/narvii/widget/BlurImageView;
.super Landroid/widget/ImageView;
.source "BlurImageView.java"


# instance fields
.field private blurRadius:I

.field private bmp:Landroid/graphics/Bitmap;

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private ignoreResize:Z

.field private lightenColor:I

.field private origHeight:I

.field private origWidth:I

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    sget-object v0, Lcom/narvii/lib/R$styleable;->BlurImageView:[I

    sget v1, Lcom/narvii/lib/R$style;->BlurImageView:I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 37
    sget p2, Lcom/narvii/lib/R$styleable;->BlurImageView_blurRadius:I

    const/16 v0, 0x8

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/BlurImageView;->blurRadius:I

    .line 38
    sget p2, Lcom/narvii/lib/R$styleable;->BlurImageView_lightenColor:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/BlurImageView;->lightenColor:I

    .line 39
    sget p2, Lcom/narvii/lib/R$styleable;->BlurImageView_ignoreResize:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/widget/BlurImageView;->ignoreResize:Z

    .line 40
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/BlurImageView;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 93
    iget-object v0, p0, Lcom/narvii/widget/BlurImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 94
    :goto_0
    iget v1, p0, Lcom/narvii/widget/BlurImageView;->blurRadius:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-gtz v1, :cond_1

    goto/16 :goto_5

    .line 97
    :cond_1
    iget v1, p0, Lcom/narvii/widget/BlurImageView;->origWidth:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    .line 98
    iget v4, p0, Lcom/narvii/widget/BlurImageView;->origHeight:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v4, v4, 0x2

    .line 100
    iget-object v5, p0, Lcom/narvii/widget/BlurImageView;->bmp:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v5, v1, :cond_2

    iget-object v5, p0, Lcom/narvii/widget/BlurImageView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-eq v5, v4, :cond_8

    :cond_2
    const/4 v5, 0x0

    .line 105
    :try_start_0
    instance-of v6, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_3

    move-object v6, v0

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_1

    :cond_3
    move-object v6, v5

    :goto_1
    if-eqz v6, :cond_4

    .line 108
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 109
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    goto :goto_2

    .line 111
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 112
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    :goto_2
    mul-int v9, v7, v4

    mul-int v10, v1, v8

    const/high16 v11, 0x3f000000    # 0.5f

    if-le v9, v10, :cond_5

    int-to-float v9, v4

    int-to-float v10, v8

    div-float/2addr v9, v10

    int-to-float v10, v1

    int-to-float v12, v7

    mul-float v12, v12, v9

    sub-float/2addr v10, v12

    mul-float v10, v10, v11

    move v11, v9

    const/4 v9, 0x0

    goto :goto_3

    :cond_5
    int-to-float v9, v1

    int-to-float v10, v7

    div-float/2addr v9, v10

    int-to-float v10, v4

    int-to-float v12, v8

    mul-float v12, v12, v9

    sub-float/2addr v10, v12

    mul-float v10, v10, v11

    move v11, v9

    move v9, v10

    const/4 v10, 0x0

    .line 123
    :goto_3
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/widget/BlurImageView;->bmp:Landroid/graphics/Bitmap;

    .line 124
    iget-object v1, p0, Lcom/narvii/widget/BlurImageView;->bmp:Landroid/graphics/Bitmap;

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 125
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v12, p0, Lcom/narvii/widget/BlurImageView;->bmp:Landroid/graphics/Bitmap;

    invoke-direct {v1, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 126
    invoke-virtual {v1, v10, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 127
    invoke-virtual {v1, v11, v11}, Landroid/graphics/Canvas;->scale(FF)V

    if-eqz v6, :cond_6

    .line 129
    iget-object v0, p0, Lcom/narvii/widget/BlurImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    iget-object v0, p0, Lcom/narvii/widget/BlurImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v3, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 132
    :cond_6
    invoke-virtual {v0, v2, v2, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 133
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 136
    :goto_4
    new-instance v0, Lcom/narvii/util/blur/NativeBlurProcess;

    invoke-direct {v0}, Lcom/narvii/util/blur/NativeBlurProcess;-><init>()V

    iget-object v1, p0, Lcom/narvii/widget/BlurImageView;->bmp:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/narvii/widget/BlurImageView;->blurRadius:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v4}, Lcom/narvii/util/blur/NativeBlurProcess;->blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/BlurImageView;->bmp:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    .line 138
    iput-object v5, p0, Lcom/narvii/widget/BlurImageView;->bmp:Landroid/graphics/Bitmap;

    const-string v1, "fail to process blur image"

    .line 139
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 95
    :cond_7
    :goto_5
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 144
    :cond_8
    :goto_6
    iget-object v0, p0, Lcom/narvii/widget/BlurImageView;->bmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_9

    .line 145
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_7

    .line 147
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 148
    iget-object v0, p0, Lcom/narvii/widget/BlurImageView;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/narvii/widget/BlurImageView;->origHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 150
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float v0, v0

    .line 151
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 152
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 153
    iget-object v0, p0, Lcom/narvii/widget/BlurImageView;->bmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/narvii/widget/BlurImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 157
    :goto_7
    iget v0, p0, Lcom/narvii/widget/BlurImageView;->lightenColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-lez v0, :cond_a

    .line 159
    iget-object v0, p0, Lcom/narvii/widget/BlurImageView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/widget/BlurImageView;->lightenColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 160
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/narvii/widget/BlurImageView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_a
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 84
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 85
    iget-boolean p1, p0, Lcom/narvii/widget/BlurImageView;->ignoreResize:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/narvii/widget/BlurImageView;->origWidth:I

    if-nez p1, :cond_1

    .line 86
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/BlurImageView;->origWidth:I

    .line 87
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/BlurImageView;->origHeight:I

    :cond_1
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    iget-object p1, p0, Lcom/narvii/widget/BlurImageView;->bmp:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lcom/narvii/widget/BlurImageView;->bmp:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setImageDrawable2(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 59
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 62
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/narvii/widget/BlurImageView;->drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 64
    :cond_1
    iput-object p1, p0, Lcom/narvii/widget/BlurImageView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 66
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 67
    iget-object p1, p0, Lcom/narvii/widget/BlurImageView;->bmp:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 69
    iput-object v0, p0, Lcom/narvii/widget/BlurImageView;->bmp:Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    iget-object p1, p0, Lcom/narvii/widget/BlurImageView;->bmp:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lcom/narvii/widget/BlurImageView;->bmp:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method
