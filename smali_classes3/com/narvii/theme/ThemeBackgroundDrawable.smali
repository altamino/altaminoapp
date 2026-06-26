.class public Lcom/narvii/theme/ThemeBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ThemeBackgroundDrawable.java"


# instance fields
.field private alpha:I

.field private bitmap:Landroid/graphics/Bitmap;

.field private clipPageBackgroundForActionbar:Z

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    .line 22
    iput v0, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->alpha:I

    .line 25
    iput-object p1, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->paint:Landroid/graphics/Paint;

    .line 27
    iget-object p1, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 28
    iget-object p1, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 29
    iget-object p1, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 30
    iget-object p1, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    iput-boolean p2, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->clipPageBackgroundForActionbar:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 60
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 61
    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 68
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 69
    iget-object v2, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 70
    iget-object v3, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int v4, v2, v1

    mul-int v5, v0, v3

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    if-le v4, v5, :cond_1

    int-to-float v1, v1

    int-to-float v3, v3

    div-float/2addr v1, v3

    int-to-float v0, v0

    int-to-float v2, v2

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    mul-float v0, v0, v8

    move v11, v0

    move v10, v1

    goto :goto_0

    :cond_1
    int-to-float v0, v0

    int-to-float v1, v2

    div-float v1, v0, v1

    move v10, v1

    const/4 v11, 0x0

    .line 80
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 81
    iget v5, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->alpha:I

    const/16 v0, 0xff

    if-ge v5, v0, :cond_2

    .line 82
    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 84
    :cond_2
    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, v7, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    add-float/2addr v11, v8

    float-to-int v0, v11

    int-to-float v0, v0

    float-to-int v1, v8

    int-to-float v1, v1

    .line 85
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 86
    invoke-virtual {p1, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 87
    iget-object v0, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v9, v9, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->alpha:I

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x3

    :goto_1
    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->alpha:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
