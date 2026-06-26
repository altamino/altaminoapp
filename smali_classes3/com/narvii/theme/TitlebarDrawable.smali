.class public Lcom/narvii/theme/TitlebarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TitlebarDrawable.java"


# instance fields
.field private alpha:I

.field private bitmap:Landroid/graphics/Bitmap;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    .line 18
    iput v0, p0, Lcom/narvii/theme/TitlebarDrawable;->alpha:I

    .line 21
    iput-object p1, p0, Lcom/narvii/theme/TitlebarDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 22
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/theme/TitlebarDrawable;->paint:Landroid/graphics/Paint;

    .line 23
    iget-object p1, p0, Lcom/narvii/theme/TitlebarDrawable;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    iget-object p1, p0, Lcom/narvii/theme/TitlebarDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 25
    iget-object p1, p0, Lcom/narvii/theme/TitlebarDrawable;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    iget-object p1, p0, Lcom/narvii/theme/TitlebarDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v8, p1

    .line 55
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 56
    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 63
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 64
    iget-object v3, v0, Lcom/narvii/theme/TitlebarDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 65
    iget-object v4, v0, Lcom/narvii/theme/TitlebarDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int v5, v3, v2

    mul-int v6, v1, v4

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x0

    if-le v5, v6, :cond_1

    int-to-float v2, v2

    int-to-float v4, v4

    div-float/2addr v2, v4

    int-to-float v1, v1

    int-to-float v3, v3

    mul-float v3, v3, v2

    sub-float/2addr v1, v3

    mul-float v1, v1, v10

    move v13, v1

    move v12, v2

    const/4 v14, 0x0

    goto :goto_0

    :cond_1
    int-to-float v1, v1

    int-to-float v3, v3

    div-float/2addr v1, v3

    int-to-float v2, v2

    int-to-float v3, v4

    mul-float v3, v3, v1

    sub-float/2addr v2, v3

    mul-float v2, v2, v10

    move v12, v1

    move v14, v2

    const/4 v13, 0x0

    .line 75
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 76
    iget v6, v0, Lcom/narvii/theme/TitlebarDrawable;->alpha:I

    const/16 v1, 0xff

    if-ge v6, v1, :cond_2

    .line 77
    iget v1, v9, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget v1, v9, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    iget v1, v9, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    iget v1, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v1

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 79
    :cond_2
    iget v1, v9, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    add-float/2addr v13, v10

    float-to-int v1, v13

    int-to-float v1, v1

    add-float/2addr v14, v10

    float-to-int v2, v14

    int-to-float v2, v2

    .line 80
    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 81
    invoke-virtual {v8, v12, v12}, Landroid/graphics/Canvas;->scale(FF)V

    .line 82
    iget-object v1, v0, Lcom/narvii/theme/TitlebarDrawable;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lcom/narvii/theme/TitlebarDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v11, v11, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/narvii/theme/TitlebarDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/narvii/theme/TitlebarDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/narvii/theme/TitlebarDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/narvii/theme/TitlebarDrawable;->alpha:I

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

    .line 41
    iput p1, p0, Lcom/narvii/theme/TitlebarDrawable;->alpha:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
