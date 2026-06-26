.class public Lcom/narvii/widget/TopTransparentDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TopTransparentDrawable.java"


# instance fields
.field private color:I

.field public marginBottom:I

.field public paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 23
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/widget/TopTransparentDrawable;->paint:Landroid/graphics/Paint;

    .line 25
    iget-object v0, p0, Lcom/narvii/widget/TopTransparentDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    iput p1, p0, Lcom/narvii/widget/TopTransparentDrawable;->color:I

    .line 27
    iput p2, p0, Lcom/narvii/widget/TopTransparentDrawable;->marginBottom:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 32
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 34
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 35
    iget-object v2, p0, Lcom/narvii/widget/TopTransparentDrawable;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v1

    int-to-float v2, v0

    .line 36
    iget-object v9, p0, Lcom/narvii/widget/TopTransparentDrawable;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    move v7, v1

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 37
    iget-object v3, p0, Lcom/narvii/widget/TopTransparentDrawable;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/narvii/widget/TopTransparentDrawable;->color:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget v3, p0, Lcom/narvii/widget/TopTransparentDrawable;->marginBottom:I

    sub-int/2addr v0, v3

    int-to-float v6, v0

    iget-object v9, p0, Lcom/narvii/widget/TopTransparentDrawable;->paint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/narvii/widget/TopTransparentDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/narvii/widget/TopTransparentDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setFillRectMarginBottom(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/narvii/widget/TopTransparentDrawable;->marginBottom:I

    .line 54
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
