.class public abstract Lcom/narvii/leaderboard/ShareHeaderFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/leaderboard/ShareHeaderFragment$BottomAdapter;,
        Lcom/narvii/leaderboard/ShareHeaderFragment$DescriptionAdapter;
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/leaderboard/ShareHeaderFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->bottomHeightSet:Z

    return p0
.end method

.method static bridge synthetic u(Lcom/narvii/leaderboard/ShareHeaderFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->bottomOffsetHeight:I

    return p0
.end method

.method private updateListMargin()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    sget v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->childMarginTopHeight:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    check-cast v1, Lcom/narvii/widget/NVListView;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 26
    .line 27
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 28
    :cond_1
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/leaderboard/ShareHeaderFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->firstVisiblePosition:I

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/leaderboard/ShareHeaderFragment;->mainAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVAdapter;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->mainAdapter:Lcom/narvii/list/NVAdapter;

    .line 12
    .line 13
    new-instance p1, Lcom/narvii/leaderboard/ShareHeaderFragment$BottomAdapter;

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, p0}, Lcom/narvii/leaderboard/ShareHeaderFragment$BottomAdapter;-><init>(Lcom/narvii/leaderboard/ShareHeaderFragment;)V

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->bottomAdapter:Lcom/narvii/leaderboard/ShareHeaderFragment$BottomAdapter;

    .line 19
    .line 20
    new-instance p1, Lcom/narvii/leaderboard/ShareHeaderFragment$DescriptionAdapter;

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, p0}, Lcom/narvii/leaderboard/ShareHeaderFragment$DescriptionAdapter;-><init>(Lcom/narvii/leaderboard/ShareHeaderFragment;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->mainAdapter:Lcom/narvii/list/NVAdapter;

    .line 29
    const/4 v1, 0x1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->bottomAdapter:Lcom/narvii/leaderboard/ShareHeaderFragment$BottomAdapter;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 38
    return-object v0
.end method

.method protected errorViewLayoutId()I
    .locals 1

    const v0, 0x7f0d04cd

    return v0
.end method

.method public getBaseHeaderHeight()I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 8
    move-result v1

    .line 9
    add-int/2addr v0, v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    const v2, 0x7f07045c

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    move-result v1

    .line 21
    add-int/2addr v0, v1

    .line 22
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onAttach(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "ranking_mode"

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    sget-object v2, Lcom/narvii/leaderboard/ShareHeaderFragment;->STATE_CUR_SCROLL_OFFSET:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 14
    move-result v2

    .line 15
    .line 16
    iput v2, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->preOffset:I

    .line 17
    .line 18
    const-string v2, "ready_to_load"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 22
    move-result v2

    .line 23
    .line 24
    iput-boolean v2, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->readyToLoad:Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 28
    move-result p1

    .line 29
    .line 30
    iput p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->rankingMode:I

    .line 31
    .line 32
    iput-boolean v1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->isRecoveryMode:Z

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    .line 37
    move-result p1

    .line 38
    .line 39
    iput p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->rankingMode:I

    .line 40
    const/4 p1, 0x0

    .line 41
    .line 42
    iput-boolean p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->isRecoveryMode:Z

    .line 43
    .line 44
    :goto_0
    iput-boolean v1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->isFirstInited:Z

    .line 45
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d0692

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    .line 5
    instance-of p2, p1, Lcom/narvii/widget/NVListView;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 10
    .line 11
    new-instance p2, Lcom/narvii/leaderboard/ShareHeaderFragment$1;

    .line 12
    .line 13
    .line 14
    invoke-direct {p2, p0}, Lcom/narvii/leaderboard/ShareHeaderFragment$1;-><init>(Lcom/narvii/leaderboard/ShareHeaderFragment;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 18
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/leaderboard/ShareHeaderFragment;->STATE_CUR_SCROLL_OFFSET:Ljava/lang/String;

    .line 6
    .line 7
    iget v1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->preOffset:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    .line 12
    const-string v0, "ready_to_load"

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->readyToLoad:Z

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18
    .line 19
    const-string v0, "ranking_mode"

    .line 20
    .line 21
    iget v1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->rankingMode:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 25
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 7
    move-result p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/leaderboard/ShareHeaderFragment;->updateListMargin()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 16
    move-result-object p1

    .line 17
    const/4 p2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 21
    const/4 p2, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 25
    .line 26
    const/16 p1, 0x10

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p1}, Lcom/narvii/wallet/optinads/OptinAdsUtil;->getBannerLift(Lcom/narvii/app/NVContext;I)I

    .line 30
    move-result p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    const/high16 v0, 0x41a00000    # 20.0f

    .line 37
    .line 38
    .line 39
    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 40
    move-result p2

    .line 41
    add-int/2addr p1, p2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/narvii/leaderboard/ShareHeaderFragment;->setBottomOffsetHeight(I)V

    .line 45
    return-void
.end method

.method public setBottomOffsetHeight(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->bottomOffsetHeight:I

    .line 3
    const/4 p1, 0x1

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->bottomHeightSet:Z

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->bottomAdapter:Lcom/narvii/leaderboard/ShareHeaderFragment$BottomAdapter;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 13
    :cond_0
    return-void
.end method

.method public setCurrentOffset(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/leaderboard/ShareHeaderFragment;->setCurrentOffset(IZ)V

    return-void
.end method

.method public setCurrentOffset(IZ)V
    .locals 2

    iget-boolean p2, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->isFirstInited:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    neg-int v1, p1

    invoke-virtual {p2, v0, v1}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    iput-boolean v0, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->isFirstInited:Z

    :cond_0
    iget p2, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->preOffset:I

    if-ne p1, p2, :cond_1

    return-void

    :cond_1
    const-string v1, "baseOffset"

    .line 3
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    if-ne p2, v1, :cond_2

    iget p2, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->preOffset:I

    if-ge p1, p2, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    neg-int v1, p1

    invoke-virtual {p2, v0, v1}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    iget v0, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->preOffset:I

    sub-int v0, p1, v0

    invoke-static {p2, v0}, Landroidx/core/widget/ListViewCompat;->b(Landroid/widget/ListView;I)V

    :goto_0
    iput p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->preOffset:I

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->setErrorMessage(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public setPreOffset(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->preOffset:I

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->setUserVisibleHint(Z)V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    const/4 p1, 0x1

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->readyToLoad:Z

    .line 9
    :cond_0
    return-void
.end method
