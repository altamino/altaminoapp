.class public final Lcom/narvii/master/home/discover/FollowingFeedListFragment;
.super Lcom/narvii/paging/NVRecyclerViewFragment;
.source "FollowingFeedListFragment.kt"

# interfaces
.implements Lcom/narvii/master/MasterTopBarAvailable;
.implements Lcom/narvii/master/home/story/CommentSheetDisplayHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/discover/FollowingFeedListFragment$MyAdapter;,
        Lcom/narvii/master/home/discover/FollowingFeedListFragment$DataSource;
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public accountService:Lcom/narvii/account/AccountService;

.field private bottomSheetLayout:Landroid/widget/FrameLayout;

.field private loginLayout:Landroid/view/View;

.field private showMasterTopBar:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;-><init>()V

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/narvii/master/home/discover/FollowingFeedListFragment;->showMasterTopBar:Z

    return-void
.end method

.method private final updateMasterTopBar(Z)V
    .locals 1

    .line 152
    iput-boolean p1, p0, Lcom/narvii/master/home/discover/FollowingFeedListFragment;->showMasterTopBar:Z

    .line 153
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    if-eqz p1, :cond_3

    .line 154
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.narvii.master.home.discover.DiscoverTabFragment"

    if-eqz p1, :cond_2

    check-cast p1, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/master/MasterTabFragment;

    if-eqz p1, :cond_3

    .line 155
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/narvii/master/MasterTabFragment;

    invoke-virtual {p1}, Lcom/narvii/master/MasterTabFragment;->updateTopbar()V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.master.MasterTabFragment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 154
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/home/discover/FollowingFeedListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/master/home/discover/FollowingFeedListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/home/discover/FollowingFeedListFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/discover/FollowingFeedListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/home/discover/FollowingFeedListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 3

    .line 65
    new-instance v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 66
    new-instance v1, Lcom/narvii/master/home/discover/FollowingFeedListFragment$MyAdapter;

    invoke-direct {v1, p0, p0}, Lcom/narvii/master/home/discover/FollowingFeedListFragment$MyAdapter;-><init>(Lcom/narvii/master/home/discover/FollowingFeedListFragment;Lcom/narvii/app/NVContext;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Z)V

    .line 67
    new-instance v1, Lcom/narvii/master/widget/MasterBottomOffsetAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/master/widget/MasterBottomOffsetAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    return-object v0
.end method

.method public final getAccountService()Lcom/narvii/account/AccountService;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/narvii/master/home/discover/FollowingFeedListFragment;->accountService:Lcom/narvii/account/AccountService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "accountService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getLoginLayout()Landroid/view/View;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/narvii/master/home/discover/FollowingFeedListFragment;->loginLayout:Landroid/view/View;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Following"

    return-object v0
.end method

.method public final getShowMasterTopBar()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcom/narvii/master/home/discover/FollowingFeedListFragment;->showMasterTopBar:Z

    return v0
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected initVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 2

    .line 140
    new-instance v0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    return-object v0
.end method

.method public isTopBarAvailable()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/narvii/master/home/discover/FollowingFeedListFragment;->showMasterTopBar:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "account"

    .line 47
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getService(\"account\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/master/home/discover/FollowingFeedListFragment;->accountService:Lcom/narvii/account/AccountService;

    if-eqz p1, :cond_0

    const-string v0, "showMasterTopBar"

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/master/home/discover/FollowingFeedListFragment;->showMasterTopBar:Z

    :cond_0
    const p1, 0x7f0f0b18

    .line 52
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b02a2

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/master/home/discover/FollowingFeedListFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 61
    iget-boolean v0, p0, Lcom/narvii/master/home/discover/FollowingFeedListFragment;->showMasterTopBar:Z

    const-string v1, "showMasterTopBar"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 77
    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    const v0, 0x7f0b01f3

    invoke-virtual {p2, v0}, Lcom/narvii/paging/state/PageStatusView;->setEmptyView(I)Landroid/view/View;

    .line 78
    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    const v0, 0x7f0f0710

    invoke-virtual {p2, v0}, Lcom/narvii/paging/state/PageStatusView;->setEmptyMessage(I)V

    .line 79
    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    invoke-virtual {p2}, Lcom/narvii/paging/state/PageStatusView;->getTvEmpty()Landroid/widget/TextView;

    move-result-object p2

    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 80
    :cond_0
    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    invoke-virtual {p2}, Lcom/narvii/paging/state/PageStatusView;->getBtnEmptyRetry()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    const p2, 0x7f0906a5

    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/master/home/discover/FollowingFeedListFragment;->loginLayout:Landroid/view/View;

    const p2, 0x7f0906a2

    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Lcom/narvii/master/home/discover/FollowingFeedListFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lcom/narvii/master/home/discover/FollowingFeedListFragment$onViewCreated$1;-><init>(Lcom/narvii/master/home/discover/FollowingFeedListFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/FollowingFeedListFragment;->updateViews()V

    return-void
.end method

.method public final setAccountService(Lcom/narvii/account/AccountService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/narvii/master/home/discover/FollowingFeedListFragment;->accountService:Lcom/narvii/account/AccountService;

    return-void
.end method

.method public setBottomSheetLayout(Landroid/widget/FrameLayout;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/narvii/master/home/discover/FollowingFeedListFragment;->bottomSheetLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method public final setLoginLayout(Landroid/view/View;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/narvii/master/home/discover/FollowingFeedListFragment;->loginLayout:Landroid/view/View;

    return-void
.end method

.method public final setShowMasterTopBar(Z)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/narvii/master/home/discover/FollowingFeedListFragment;->showMasterTopBar:Z

    return-void
.end method

.method public updateViews()V
    .locals 6

    .line 164
    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->updateViews()V

    .line 165
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    const-string v1, "pageStatusView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/narvii/master/home/discover/FollowingFeedListFragment;->accountService:Lcom/narvii/account/AccountService;

    const/4 v3, 0x0

    const-string v4, "accountService"

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v2

    const/16 v5, 0x8

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    const-string v1, "recyclerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/narvii/master/home/discover/FollowingFeedListFragment;->accountService:Lcom/narvii/account/AccountService;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/narvii/master/home/discover/FollowingFeedListFragment;->loginLayout:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/narvii/master/home/discover/FollowingFeedListFragment;->accountService:Lcom/narvii/account/AccountService;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_4
    :goto_3
    return-void

    .line 166
    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 165
    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method
