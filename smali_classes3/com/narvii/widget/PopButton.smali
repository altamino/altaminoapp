.class public Lcom/narvii/widget/PopButton;
.super Lcom/narvii/widget/TintButton;
.source "PopButton.java"


# static fields
.field private static final MIN:F = 0.85f

.field private static final STEP:F = 0.035f


# instance fields
.field private scale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/TintButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 12
    iput p1, p0, Lcom/narvii/widget/PopButton;->scale:F

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 26
    invoke-super {p0, p1}, Lcom/narvii/widget/TintButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 27
    invoke-virtual {p0}, Landroid/widget/ImageView;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 28
    iget p1, p0, Lcom/narvii/widget/PopButton;->scale:F

    const v0, 0x3f59999a    # 0.85f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const v1, 0x3d0f5c29    # 0.035f

    sub-float/2addr p1, v1

    .line 29
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/narvii/widget/PopButton;->scale:F

    .line 30
    iget p1, p0, Lcom/narvii/widget/PopButton;->scale:F

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 31
    iget p1, p0, Lcom/narvii/widget/PopButton;->scale:F

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 32
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0

    .line 35
    :cond_0
    iget p1, p0, Lcom/narvii/widget/PopButton;->scale:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    const v1, 0x3d8f5c29    # 0.07f

    add-float/2addr p1, v1

    .line 36
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/narvii/widget/PopButton;->scale:F

    .line 37
    iget p1, p0, Lcom/narvii/widget/PopButton;->scale:F

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 38
    iget p1, p0, Lcom/narvii/widget/PopButton;->scale:F

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 39
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    .line 20
    invoke-super {p0, p1}, Lcom/narvii/widget/TintButton;->setPressed(Z)V

    .line 21
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
