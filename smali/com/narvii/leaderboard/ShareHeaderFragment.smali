.class public abstract Lcom/narvii/leaderboard/ShareHeaderFragment;
.super Lcom/narvii/list/NVListFragment;
.source "ShareHeaderFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/leaderboard/ShareHeaderFragment$DescriptionAdapter;,
        Lcom/narvii/leaderboard/ShareHeaderFragment$BottomAdapter;
    }
.end annotation


# static fields
.field private static final KEY_LOAD:Ljava/lang/String; = "ready_to_load"

.field private static STATE_CUR_SCROLL_OFFSET:Ljava/lang/String; = "cur_scroll_offset"

.field public static final STATE_RANKING_MODE:Ljava/lang/String; = "ranking_mode"


# instance fields
.field bottomAdapter:Lcom/narvii/leaderboard/ShareHeaderFragment$BottomAdapter;

.field private bottomHeightSet:Z

.field private bottomOffsetHeight:I

.field private firstVisiblePosition:I

.field private isFirstInited:Z

.field private isRecoveryMode:Z

.field mainAdapter:Lcom/narvii/list/NVAdapter;

.field protected preOffset:I

.field protected rankingMode:I

.field protected readyToLoad:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/leaderboard/ShareHeaderFragment;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->firstVisiblePosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/narvii/leaderboard/ShareHeaderFragment;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->bottomHeightSet:Z

    return p0
.end method

.method static synthetic access$200(Lcom/narvii/leaderboard/ShareHeaderFragment;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->bottomOffsetHeight:I

    return p0
.end method

.method private updateListMargin()V
    .locals 3

    .line 115
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    sget v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->childMarginTopHeight:I

    .line 119
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVListView;

    .line 120
    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 121
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    .line 122
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_1
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 151
    new-instance v0, Lcom/narvii/list/MergeAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 152
    invoke-virtual {p0, p1}, Lcom/narvii/leaderboard/ShareHeaderFragment;->mainAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->mainAdapter:Lcom/narvii/list/NVAdapter;

    .line 153
    new-instance p1, Lcom/narvii/leaderboard/ShareHeaderFragment$BottomAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/leaderboard/ShareHeaderFragment$BottomAdapter;-><init>(Lcom/narvii/leaderboard/ShareHeaderFragment;)V

    iput-object p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->bottomAdapter:Lcom/narvii/leaderboard/ShareHeaderFragment$BottomAdapter;

    .line 154
    new-instance p1, Lcom/narvii/leaderboard/ShareHeaderFragment$DescriptionAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/leaderboard/ShareHeaderFragment$DescriptionAdapter;-><init>(Lcom/narvii/leaderboard/ShareHeaderFragment;)V

    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 155
    iget-object p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->mainAdapter:Lcom/narvii/list/NVAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 156
    iget-object p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->bottomAdapter:Lcom/narvii/leaderboard/ShareHeaderFragment$BottomAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object v0
.end method

.method protected errorViewLayoutId()I
    .locals 1

    const v0, 0x7f0b04a1

    return v0
.end method

.method public getBaseHeaderHeight()I
    .locals 3

    .line 284
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07023f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract mainAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVAdapter;
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 111
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 51
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "ranking_mode"

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 53
    sget-object v2, Lcom/narvii/leaderboard/ShareHeaderFragment;->STATE_CUR_SCROLL_OFFSET:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->preOffset:I

    const-string/jumbo v2, "ready_to_load"

    .line 54
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->readyToLoad:Z

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->rankingMode:I

    .line 56
    iput-boolean v1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->isRecoveryMode:Z

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->rankingMode:I

    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->isRecoveryMode:Z

    .line 61
    :goto_0
    iput-boolean v1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->isFirstInited:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b05db

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 80
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 81
    instance-of p2, p1, Lcom/narvii/widget/NVListView;

    if-eqz p2, :cond_0

    .line 82
    check-cast p1, Lcom/narvii/widget/NVListView;

    new-instance p2, Lcom/narvii/leaderboard/ShareHeaderFragment$1;

    invoke-direct {p2, p0}, Lcom/narvii/leaderboard/ShareHeaderFragment$1;-><init>(Lcom/narvii/leaderboard/ShareHeaderFragment;)V

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 143
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 144
    sget-object v0, Lcom/narvii/leaderboard/ShareHeaderFragment;->STATE_CUR_SCROLL_OFFSET:Ljava/lang/String;

    iget v1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->preOffset:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    iget-boolean v0, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->readyToLoad:Z

    const-string/jumbo v1, "ready_to_load"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 146
    iget v0, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->rankingMode:I

    const-string/jumbo v1, "ranking_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 99
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/narvii/leaderboard/ShareHeaderFragment;->updateListMargin()V

    .line 103
    :cond_0
    nop

    return-void
.end method

.method public setBottomOffsetHeight(I)V
    .locals 0

    .line 276
    iput p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->bottomOffsetHeight:I

    const/4 p1, 0x1

    .line 277
    iput-boolean p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->bottomHeightSet:Z

    .line 278
    iget-object p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->bottomAdapter:Lcom/narvii/leaderboard/ShareHeaderFragment$BottomAdapter;

    if-eqz p1, :cond_0

    .line 279
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setCurrentOffset(I)V
    .locals 1

    const/4 v0, 0x0

    .line 256
    invoke-virtual {p0, p1, v0}, Lcom/narvii/leaderboard/ShareHeaderFragment;->setCurrentOffset(IZ)V

    return-void
.end method

.method public setCurrentOffset(IZ)V
    .locals 2

    .line 260
    iget-boolean p2, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->isFirstInited:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    neg-int v1, p1

    invoke-virtual {p2, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 262
    iput-boolean v0, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->isFirstInited:Z

    .line 264
    :cond_0
    iget p2, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->preOffset:I

    if-ne p1, p2, :cond_1

    return-void

    :cond_1
    const-string v1, "baseOffset"

    .line 267
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    if-ne p2, v1, :cond_2

    iget p2, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->preOffset:I

    if-ge p1, p2, :cond_2

    .line 268
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    neg-int v1, p1

    invoke-virtual {p2, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0

    .line 270
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    iget v0, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->preOffset:I

    sub-int v0, p1, v0

    invoke-static {p2, v0}, Landroid/support/v4/widget/ListViewCompat;->scrollListBy(Landroid/widget/ListView;I)V

    .line 272
    :goto_0
    iput p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->preOffset:I

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 133
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->setErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setPreOffset(I)V
    .locals 0

    .line 252
    iput p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->preOffset:I

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->readyToLoad:Z

    :cond_0
    return-void
.end method
