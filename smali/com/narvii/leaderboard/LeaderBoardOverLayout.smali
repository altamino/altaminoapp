.class public Lcom/narvii/leaderboard/LeaderBoardOverLayout;
.super Lcom/narvii/list/overlay/OverlayLayout;
.source "LeaderBoardOverLayout.java"


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

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/narvii/list/overlay/OverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public attach(Lcom/narvii/widget/NVListView;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/narvii/list/overlay/OverlayLayout;->attach(Lcom/narvii/widget/NVListView;)V

    .line 26
    iput-object p1, p0, Lcom/narvii/leaderboard/LeaderBoardOverLayout;->listView:Lcom/narvii/widget/NVListView;

    return-void
.end method

.method public getListView()Lcom/narvii/widget/NVListView;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardOverLayout;->listView:Lcom/narvii/widget/NVListView;

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 50
    check-cast p1, Lcom/narvii/leaderboard/LeaderBoardOverLayout$SavedState;

    .line 51
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 52
    iget p1, p1, Lcom/narvii/leaderboard/LeaderBoardOverLayout$SavedState;->height1:I

    iput p1, p0, Lcom/narvii/list/overlay/OverlayLayout;->height1:I

    .line 53
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 42
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/narvii/leaderboard/LeaderBoardOverLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/narvii/leaderboard/LeaderBoardOverLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 44
    iget v0, p0, Lcom/narvii/list/overlay/OverlayLayout;->height1:I

    iput v0, v1, Lcom/narvii/leaderboard/LeaderBoardOverLayout$SavedState;->height1:I

    return-object v1
.end method

.method public removeAttach(Lcom/narvii/widget/NVListView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-virtual {p1, p0}, Lcom/narvii/widget/NVListView;->removeOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 36
    invoke-virtual {p1, p0}, Lcom/narvii/widget/NVListView;->removeOnOverscrollListener(Lcom/narvii/widget/NVListView$OnOverscrollListener;)V

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setOnLayoutListener(Lcom/narvii/widget/NVListView$OnLayoutListener;)V

    return-void
.end method
