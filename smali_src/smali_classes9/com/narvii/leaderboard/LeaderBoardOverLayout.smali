.class public Lcom/narvii/leaderboard/LeaderBoardOverLayout;
.super Lcom/narvii/list/overlay/OverlayLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/leaderboard/LeaderBoardOverLayout$SavedState;
    }
.end annotation


# instance fields
.field listView:Lcom/narvii/widget/NVListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/list/overlay/OverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method


# virtual methods
.method public attach(Lcom/narvii/widget/NVListView;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/overlay/OverlayLayout;->attach(Lcom/narvii/widget/NVListView;)V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/leaderboard/LeaderBoardOverLayout;->listView:Lcom/narvii/widget/NVListView;

    .line 6
    return-void
.end method

.method public getListView()Lcom/narvii/widget/NVListView;
    .locals 1

    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardOverLayout;->listView:Lcom/narvii/widget/NVListView;

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    .line 2
    check-cast p1, Lcom/narvii/leaderboard/LeaderBoardOverLayout$SavedState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 10
    .line 11
    iget p1, p1, Lcom/narvii/leaderboard/LeaderBoardOverLayout$SavedState;->height1:I

    .line 12
    .line 13
    iput p1, p0, Lcom/narvii/list/overlay/OverlayLayout;->height1:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 17
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/narvii/leaderboard/LeaderBoardOverLayout$SavedState;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0}, Lcom/narvii/leaderboard/LeaderBoardOverLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 10
    .line 11
    iget v0, p0, Lcom/narvii/list/overlay/OverlayLayout;->height1:I

    .line 12
    .line 13
    iput v0, v1, Lcom/narvii/leaderboard/LeaderBoardOverLayout$SavedState;->height1:I

    .line 14
    return-object v1
.end method

.method public removeAttach(Lcom/narvii/widget/NVListView;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p1, p0}, Lcom/narvii/widget/NVListView;->removeOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p0}, Lcom/narvii/widget/NVListView;->removeOnOverscrollListener(Lcom/narvii/widget/NVListView$OnOverscrollListener;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setOnLayoutListener(Lcom/narvii/widget/NVListView$OnLayoutListener;)V

    .line 14
    return-void
.end method
