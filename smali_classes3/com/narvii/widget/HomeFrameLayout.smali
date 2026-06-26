.class public Lcom/narvii/widget/HomeFrameLayout;
.super Landroid/widget/FrameLayout;
.source "HomeFrameLayout.java"


# instance fields
.field exh:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 24
    iget v0, p0, Lcom/narvii/widget/HomeFrameLayout;->exh:I

    if-eqz v0, :cond_0

    .line 25
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/narvii/widget/HomeFrameLayout;->exh:I

    add-int/2addr v0, v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 27
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setExtraHeight(I)V
    .locals 1

    .line 31
    iget v0, p0, Lcom/narvii/widget/HomeFrameLayout;->exh:I

    if-eq v0, p1, :cond_0

    .line 32
    iput p1, p0, Lcom/narvii/widget/HomeFrameLayout;->exh:I

    neg-int p1, p1

    int-to-float p1, p1

    .line 33
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 34
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method
