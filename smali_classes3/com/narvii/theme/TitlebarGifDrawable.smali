.class public Lcom/narvii/theme/TitlebarGifDrawable;
.super Lcom/narvii/util/drawables/gif/WrapGifDrawable;
.source "TitlebarGifDrawable.java"


# instance fields
.field public invalidateDirectly:Z


# direct methods
.method public constructor <init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/narvii/util/drawables/gif/WrapGifDrawable;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 23
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/narvii/util/drawables/WrapDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    invoke-virtual {v1}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 25
    iget-object v2, p0, Lcom/narvii/util/drawables/WrapDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    check-cast v2, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    invoke-virtual {v2}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 27
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float v2, v2, v1

    float-to-int v1, v2

    .line 28
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 30
    iget-object v3, p0, Lcom/narvii/util/drawables/WrapDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    check-cast v3, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    add-int v1, v5, v2

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v0, v2

    .line 31
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 30
    invoke-virtual {v3, v4, v1, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 32
    iget-object v0, p0, Lcom/narvii/util/drawables/WrapDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    invoke-virtual {v0, p1}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/narvii/theme/TitlebarGifDrawable;->invalidateDirectly:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 40
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_0
    return-void
.end method
