.class public Lcom/narvii/nested/NVCollapsingFrameLayout;
.super Landroid/widget/FrameLayout;
.source "NVCollapsingFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/nested/NVCollapsingFrameLayout$OffsetUpdateListener;
    }
.end annotation


# instance fields
.field private mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static getViewOffsetHelper(Landroid/view/View;)Lcom/narvii/nested/utils/ViewOffsetHelper;
    .locals 2

    .line 74
    sget v0, Lcom/narvii/lib/R$id;->view_offset_helper:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/nested/utils/ViewOffsetHelper;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/narvii/nested/utils/ViewOffsetHelper;

    invoke-direct {v0, p0}, Lcom/narvii/nested/utils/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    .line 77
    sget v1, Lcom/narvii/lib/R$id;->view_offset_helper:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 34
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 35
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 36
    instance-of v1, v0, Landroid/support/design/widget/AppBarLayout;

    if-eqz v1, :cond_1

    .line 38
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 39
    iget-object v1, p0, Lcom/narvii/nested/NVCollapsingFrameLayout;->mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/narvii/nested/NVCollapsingFrameLayout$OffsetUpdateListener;

    invoke-direct {v1, p0}, Lcom/narvii/nested/NVCollapsingFrameLayout$OffsetUpdateListener;-><init>(Lcom/narvii/nested/NVCollapsingFrameLayout;)V

    iput-object v1, p0, Lcom/narvii/nested/NVCollapsingFrameLayout;->mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    .line 42
    :cond_0
    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iget-object v1, p0, Lcom/narvii/nested/NVCollapsingFrameLayout;->mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 43
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 49
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/narvii/nested/NVCollapsingFrameLayout;->mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    if-eqz v1, :cond_0

    instance-of v2, v0, Landroid/support/design/widget/AppBarLayout;

    if-eqz v2, :cond_0

    .line 51
    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 53
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method
