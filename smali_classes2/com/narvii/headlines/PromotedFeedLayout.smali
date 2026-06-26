.class public Lcom/narvii/headlines/PromotedFeedLayout;
.super Landroid/widget/FrameLayout;
.source "PromotedFeedLayout.java"


# instance fields
.field maxHeight:F

.field minHeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/narvii/headlines/PromotedFeedLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x43960000    # 300.0f

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    iput p2, p0, Lcom/narvii/headlines/PromotedFeedLayout;->minHeight:F

    .line 18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x43fa0000    # 500.0f

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    iput p2, p0, Lcom/narvii/headlines/PromotedFeedLayout;->maxHeight:F

    .line 26
    invoke-static {p1}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_0

    int-to-float p1, p1

    const p2, 0x3ecccccd    # 0.4f

    mul-float p2, p2, p1

    .line 28
    iput p2, p0, Lcom/narvii/headlines/PromotedFeedLayout;->minHeight:F

    const p2, 0x3f19999a    # 0.6f

    mul-float p1, p1, p2

    .line 29
    iput p1, p0, Lcom/narvii/headlines/PromotedFeedLayout;->maxHeight:F

    :cond_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    .line 36
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/narvii/headlines/PromotedFeedLayout;->minHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    float-to-int p2, v1

    .line 37
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 39
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/narvii/headlines/PromotedFeedLayout;->maxHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    float-to-int p2, v1

    .line 40
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 42
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
