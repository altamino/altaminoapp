.class public Lcom/narvii/nested/behavior/ViewOffsetBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
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

    .line 1
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mTempTopBottomOffset:I

    iput v0, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mTempLeftRightOffset:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mTempTopBottomOffset:I

    iput p1, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mTempLeftRightOffset:I

    return-void
.end method


# virtual methods
.method public getLeftAndRightOffset()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/narvii/nested/utils/ViewOffsetHelper;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/nested/utils/ViewOffsetHelper;->getLeftAndRightOffset()I

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public getTopAndBottomOffset()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/narvii/nested/utils/ViewOffsetHelper;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/nested/utils/ViewOffsetHelper;->getTopAndBottomOffset()I

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method protected layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 4
    return-void
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/narvii/nested/utils/ViewOffsetHelper;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/nested/utils/ViewOffsetHelper;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p2}, Lcom/narvii/nested/utils/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/narvii/nested/utils/ViewOffsetHelper;

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/narvii/nested/utils/ViewOffsetHelper;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/nested/utils/ViewOffsetHelper;->onViewLayout()V

    .line 20
    .line 21
    iget p1, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mTempTopBottomOffset:I

    .line 22
    const/4 p2, 0x0

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p3, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/narvii/nested/utils/ViewOffsetHelper;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3, p1}, Lcom/narvii/nested/utils/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 30
    .line 31
    iput p2, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mTempTopBottomOffset:I

    .line 32
    .line 33
    :cond_1
    iget p1, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mTempLeftRightOffset:I

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget-object p3, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/narvii/nested/utils/ViewOffsetHelper;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, p1}, Lcom/narvii/nested/utils/ViewOffsetHelper;->setLeftAndRightOffset(I)Z

    .line 41
    .line 42
    iput p2, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mTempLeftRightOffset:I

    .line 43
    :cond_2
    const/4 p1, 0x1

    .line 44
    return p1
.end method

.method public setLeftAndRightOffset(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/narvii/nested/utils/ViewOffsetHelper;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/nested/utils/ViewOffsetHelper;->setLeftAndRightOffset(I)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    .line 11
    :cond_0
    iput p1, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mTempLeftRightOffset:I

    .line 12
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public setTopAndBottomOffset(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/narvii/nested/utils/ViewOffsetHelper;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/nested/utils/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    .line 11
    :cond_0
    iput p1, p0, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->mTempTopBottomOffset:I

    .line 12
    const/4 p1, 0x0

    .line 13
    return p1
.end method
