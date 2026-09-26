.class public Lcom/narvii/theme/ThemeBackgroundGifDrawable;
.super Lcom/narvii/util/drawables/gif/WrapGifDrawable;
.source "SourceFile"


# instance fields
.field private clipPageBackgroundForActionbar:Z

.field public invalidateDirectly:Z


# direct methods
.method public constructor <init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/util/drawables/gif/WrapGifDrawable;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V

    .line 4
    .line 5
    iput-boolean p2, p0, Lcom/narvii/theme/ThemeBackgroundGifDrawable;->clipPageBackgroundForActionbar:Z

    .line 6
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

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
    .line 23
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 24
    move-result v3

    .line 25
    int-to-float v3, v3

    .line 26
    .line 27
    const/high16 v4, 0x3f800000    # 1.0f

    .line 28
    mul-float/2addr v3, v4

    .line 29
    int-to-float v1, v1

    .line 30
    div-float/2addr v3, v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 34
    move-result v5

    .line 35
    int-to-float v5, v5

    .line 36
    mul-float/2addr v5, v4

    .line 37
    int-to-float v2, v2

    .line 38
    div-float/2addr v5, v2

    .line 39
    .line 40
    .line 41
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    .line 42
    move-result v3

    .line 43
    .line 44
    iget-object v4, p0, Lcom/narvii/util/drawables/WrapDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    check-cast v4, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 47
    .line 48
    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 49
    .line 50
    mul-float v6, v1, v3

    .line 51
    sub-float/2addr v6, v1

    .line 52
    .line 53
    const/high16 v1, 0x40000000    # 2.0f

    .line 54
    div-float/2addr v6, v1

    .line 55
    .line 56
    .line 57
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 58
    move-result v1

    .line 59
    sub-int/2addr v5, v1

    .line 60
    .line 61
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 62
    .line 63
    .line 64
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 65
    move-result v1

    .line 66
    add-int/2addr v0, v1

    .line 67
    mul-float/2addr v2, v3

    .line 68
    .line 69
    .line 70
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 71
    move-result v1

    .line 72
    const/4 v2, 0x0

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v5, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 76
    .line 77
    iget-object v0, p0, Lcom/narvii/util/drawables/WrapDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    .line 78
    .line 79
    check-cast v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p1}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 83
    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/theme/ThemeBackgroundGifDrawable;->invalidateDirectly:Z

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
