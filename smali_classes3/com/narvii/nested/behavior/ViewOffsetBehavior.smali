.class public Lcom/narvii/nested/behavior/ViewOffsetBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "ViewOffsetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private mTempLeftRightOffset:I

.field private mTempTopBottomOffset:I

.field private mViewOffsetHelper:Lcom/narvii/nested/utils/ViewOffsetHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mTempTopBottomOffset:I

    .line 20
    iput v0, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mTempLeftRightOffset:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mTempTopBottomOffset:I

    .line 20
    iput p1, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mTempLeftRightOffset:I

    return-void
.end method


# virtual methods
.method public getLeftAndRightOffset()I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/narvii/nested/utils/ViewOffsetHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/nested/utils/ViewOffsetHelper;->getLeftAndRightOffset()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTopAndBottomOffset()I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/narvii/nested/utils/ViewOffsetHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/nested/utils/ViewOffsetHelper;->getTopAndBottomOffset()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected layoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)V"
        }
    .end annotation

    .line 52
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    return-void
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->layoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 33
    iget-object p1, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/narvii/nested/utils/ViewOffsetHelper;

    if-nez p1, :cond_0

    .line 34
    new-instance p1, Lcom/narvii/nested/utils/ViewOffsetHelper;

    invoke-direct {p1, p2}, Lcom/narvii/nested/utils/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/narvii/nested/utils/ViewOffsetHelper;

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/narvii/nested/utils/ViewOffsetHelper;

    invoke-virtual {p1}, Lcom/narvii/nested/utils/ViewOffsetHelper;->onViewLayout()V

    .line 38
    iget p1, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mTempTopBottomOffset:I

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 39
    iget-object p3, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/narvii/nested/utils/ViewOffsetHelper;

    invoke-virtual {p3, p1}, Lcom/narvii/nested/utils/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 40
    iput p2, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mTempTopBottomOffset:I

    .line 42
    :cond_1
    iget p1, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mTempLeftRightOffset:I

    if-eqz p1, :cond_2

    .line 43
    iget-object p3, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/narvii/nested/utils/ViewOffsetHelper;

    invoke-virtual {p3, p1}, Lcom/narvii/nested/utils/ViewOffsetHelper;->setLeftAndRightOffset(I)Z

    .line 44
    iput p2, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mTempLeftRightOffset:I

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public setLeftAndRightOffset(I)Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/narvii/nested/utils/ViewOffsetHelper;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0, p1}, Lcom/narvii/nested/utils/ViewOffsetHelper;->setLeftAndRightOffset(I)Z

    move-result p1

    return p1

    .line 68
    :cond_0
    iput p1, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mTempLeftRightOffset:I

    const/4 p1, 0x0

    return p1
.end method

.method public setTopAndBottomOffset(I)Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/narvii/nested/utils/ViewOffsetHelper;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0, p1}, Lcom/narvii/nested/utils/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    move-result p1

    return p1

    .line 59
    :cond_0
    iput p1, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mTempTopBottomOffset:I

    const/4 p1, 0x0

    return p1
.end method
