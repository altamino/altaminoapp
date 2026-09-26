.class public Lcom/narvii/theme/TitlebarGifDrawable;
.super Lcom/narvii/util/drawables/gif/WrapGifDrawable;
.source "SourceFile"


# instance fields
.field public invalidateDirectly:Z


# direct methods
.method public constructor <init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/util/drawables/gif/WrapGifDrawable;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V

    .line 4
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/util/drawables/WrapDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    check-cast v1, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->getIntrinsicWidth()I

    .line 12
    move-result v1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/narvii/util/drawables/WrapDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    check-cast v2, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->getIntrinsicHeight()I

    .line 20
    move-result v2

    .line 21
    .line 22
    const/high16 v3, 0x3f800000    # 1.0f

    .line 23
    int-to-float v2, v2

    .line 24
    mul-float/2addr v2, v3

    .line 25
    int-to-float v1, v1

    .line 26
    div-float/2addr v2, v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 30
    move-result v1

    .line 31
    int-to-float v1, v1

    .line 32
    mul-float/2addr v2, v1

    .line 33
    float-to-int v1, v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 37
    move-result v2

    .line 38
    .line 39
    iget-object v3, p0, Lcom/narvii/util/drawables/WrapDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    check-cast v3, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 42
    .line 43
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 44
    .line 45
    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 46
    sub-int/2addr v2, v1

    .line 47
    .line 48
    div-int/lit8 v2, v2, 0x2

    .line 49
    .line 50
    add-int v1, v5, v2

    .line 51
    .line 52
    .line 53
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    .line 54
    move-result v1

    .line 55
    .line 56
    iget v5, v0, Landroid/graphics/Rect;->right:I

    .line 57
    .line 58
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 59
    .line 60
    sub-int v2, v0, v2

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 64
    move-result v0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v4, v1, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 68
    .line 69
    iget-object v0, p0, Lcom/narvii/util/drawables/WrapDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    .line 70
    .line 71
    check-cast v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p1}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 75
    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/theme/TitlebarGifDrawable;->invalidateDirectly:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    instance-of v0, v0, Landroid/view/View;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Landroid/view/View;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 26
    :goto_0
    return-void
.end method
