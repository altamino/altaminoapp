.class public Lcom/narvii/widget/HomeFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field exh:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/HomeFrameLayout;->exh:I

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 8
    move-result v0

    .line 9
    .line 10
    iget v1, p0, Lcom/narvii/widget/HomeFrameLayout;->exh:I

    .line 11
    add-int/2addr v0, v1

    .line 12
    .line 13
    .line 14
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 15
    move-result p2

    .line 16
    .line 17
    .line 18
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 19
    move-result p2

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 23
    return-void
.end method

.method public setExtraHeight(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/HomeFrameLayout;->exh:I

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/widget/HomeFrameLayout;->exh:I

    .line 7
    neg-int p1, p1

    .line 8
    int-to-float p1, p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 15
    :cond_0
    return-void
.end method
