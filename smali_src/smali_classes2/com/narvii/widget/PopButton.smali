.class public Lcom/narvii/widget/PopButton;
.super Lcom/narvii/widget/TintButton;
.source "SourceFile"


# static fields
.field private static final MIN:F = 0.85f

.field private static final STEP:F = 0.035f


# instance fields
.field private scale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/TintButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    const/high16 p1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    iput p1, p0, Lcom/narvii/widget/PopButton;->scale:F

    .line 8
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/widget/TintButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    .line 7
    move-result p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget p1, p0, Lcom/narvii/widget/PopButton;->scale:F

    .line 12
    .line 13
    .line 14
    const v0, 0x3f59999a    # 0.85f

    .line 15
    .line 16
    cmpl-float v1, p1, v0

    .line 17
    .line 18
    if-lez v1, :cond_1

    .line 19
    .line 20
    .line 21
    const v1, 0x3d0f5c29    # 0.035f

    .line 22
    sub-float/2addr p1, v1

    .line 23
    .line 24
    .line 25
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 26
    move-result p1

    .line 27
    .line 28
    iput p1, p0, Lcom/narvii/widget/PopButton;->scale:F

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 32
    .line 33
    iget p1, p0, Lcom/narvii/widget/PopButton;->scale:F

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_0
    iget p1, p0, Lcom/narvii/widget/PopButton;->scale:F

    .line 43
    .line 44
    const/high16 v0, 0x3f800000    # 1.0f

    .line 45
    .line 46
    cmpg-float v1, p1, v0

    .line 47
    .line 48
    if-gez v1, :cond_1

    .line 49
    .line 50
    .line 51
    const v1, 0x3d8f5c29    # 0.07f

    .line 52
    add-float/2addr p1, v1

    .line 53
    .line 54
    .line 55
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    .line 56
    move-result p1

    .line 57
    .line 58
    iput p1, p0, Lcom/narvii/widget/PopButton;->scale:F

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 62
    .line 63
    iget p1, p0, Lcom/narvii/widget/PopButton;->scale:F

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 70
    :cond_1
    :goto_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/widget/TintButton;->setPressed(Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    return-void
.end method
