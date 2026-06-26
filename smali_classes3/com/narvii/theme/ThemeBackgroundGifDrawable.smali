.class public Lcom/narvii/theme/ThemeBackgroundGifDrawable;
.super Lcom/narvii/util/drawables/gif/WrapGifDrawable;
.source "ThemeBackgroundGifDrawable.java"


# instance fields
.field private clipPageBackgroundForActionbar:Z

.field public invalidateDirectly:Z


# direct methods
.method public constructor <init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;Z)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/narvii/util/drawables/gif/WrapGifDrawable;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V

    .line 20
    iput-boolean p2, p0, Lcom/narvii/theme/ThemeBackgroundGifDrawable;->clipPageBackgroundForActionbar:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 25
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/narvii/util/drawables/WrapDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    invoke-virtual {v1}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 27
    iget-object v2, p0, Lcom/narvii/util/drawables/WrapDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    check-cast v2, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    invoke-virtual {v2}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->getIntrinsicHeight()I

    move-result v2

    .line 29
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v3, v3, v4

    int-to-float v1, v1

    div-float/2addr v3, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v4

    int-to-float v2, v2

    div-float/2addr v5, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 31
    iget-object v4, p0, Lcom/narvii/util/drawables/WrapDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    check-cast v4, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    mul-float v6, v1, v3

    sub-float/2addr v6, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr v5, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 32
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    .line 31
    invoke-virtual {v4, v5, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 33
    iget-object v0, p0, Lcom/narvii/util/drawables/WrapDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    invoke-virtual {v0, p1}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/narvii/theme/ThemeBackgroundGifDrawable;->invalidateDirectly:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 41
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_0
    return-void
.end method
