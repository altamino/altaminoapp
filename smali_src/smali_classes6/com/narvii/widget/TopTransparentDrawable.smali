.class public Lcom/narvii/widget/TopTransparentDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private color:I

.field public marginBottom:I

.field public paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Paint;

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/widget/TopTransparentDrawable;->paint:Landroid/graphics/Paint;

    .line 12
    .line 13
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    .line 18
    iput p1, p0, Lcom/narvii/widget/TopTransparentDrawable;->color:I

    .line 19
    .line 20
    iput p2, p0, Lcom/narvii/widget/TopTransparentDrawable;->marginBottom:I

    .line 21
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 12
    move-result v0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/narvii/widget/TopTransparentDrawable;->paint:Landroid/graphics/Paint;

    .line 15
    const/4 v3, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    int-to-float v10, v1

    .line 22
    int-to-float v11, v0

    .line 23
    .line 24
    iget-object v9, p0, Lcom/narvii/widget/TopTransparentDrawable;->paint:Landroid/graphics/Paint;

    .line 25
    move-object v4, p1

    .line 26
    move v7, v10

    .line 27
    move v8, v11

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/widget/TopTransparentDrawable;->paint:Landroid/graphics/Paint;

    .line 33
    .line 34
    iget v2, p0, Lcom/narvii/widget/TopTransparentDrawable;->color:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    const/4 v8, 0x0

    .line 39
    .line 40
    iget v1, p0, Lcom/narvii/widget/TopTransparentDrawable;->marginBottom:I

    .line 41
    sub-int/2addr v0, v1

    .line 42
    int-to-float v9, v0

    .line 43
    .line 44
    iget-object v12, p0, Lcom/narvii/widget/TopTransparentDrawable;->paint:Landroid/graphics/Paint;

    .line 45
    move-object v7, p1

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 49
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/TopTransparentDrawable;->paint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/TopTransparentDrawable;->paint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 6
    return-void
.end method

.method public setFillRectMarginBottom(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/TopTransparentDrawable;->marginBottom:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 6
    return-void
.end method
