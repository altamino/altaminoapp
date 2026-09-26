.class public Lcom/narvii/feed/BlogFollowingListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/feed/BlogFollowingListFragment$Adapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/feed/BlogFollowingListFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/feed/BlogFollowingListFragment$Adapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    .line 8
    const v0, 0x7f120cce

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1, v0, v1}, Lcom/narvii/wallet/optinads/OptinAdsUtil;->setupAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/list/NVAdapter;Ljava/lang/String;Z)Lcom/narvii/list/NVAdapter;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public getPostEntryLift()I
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x10

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/narvii/wallet/optinads/OptinAdsUtil;->getBannerLift(Lcom/narvii/app/NVContext;I)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected initVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    .line 10
    return-object v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    .line 7
    move-result p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    const p1, 0x7f120bdb

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 16
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 14
    .line 15
    :cond_0
    if-nez p1, :cond_1

    .line 16
    .line 17
    const-string/jumbo p1, "statistics"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 24
    .line 25
    const-string v0, "Following Feed Page Opened"

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    const-string v0, "Source"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    const-string v0, "Following Feed Page Opened Total"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 45
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    .line 7
    move-result p2

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    const/4 p2, 0x0

    .line 11
    .line 12
    .line 13
    const v0, 0x7f120fc9

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    new-instance p2, Lcom/narvii/util/ActionBarIcon;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    const v1, 0x7f120675

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, v0, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 33
    move-result-object p1

    .line 34
    const/4 p2, 0x2

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 38
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d029c

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
    .line 6
    const p1, 0x7f0d05e9

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    .line 10
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f120fc9

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->smoothScrollToTop()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/feed/FeedListAdapter;

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/narvii/feed/BaseFeedListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 27
    move-result p1

    .line 28
    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p2, "account"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    check-cast p2, Lcom/narvii/account/AccountService;

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0a05e9

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    const v1, 0x7f0a05e8

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    check-cast p1, Landroid/widget/Button;

    .line 28
    .line 29
    const-string v1, "config"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-interface {v1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 43
    move-result v1

    .line 44
    const/4 v2, 0x3

    .line 45
    .line 46
    new-array v2, v2, [F

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 50
    const/4 v3, 0x2

    .line 51
    .line 52
    aget v4, v2, v3

    .line 53
    float-to-double v4, v4

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    const-wide v6, 0x3fe999999999999aL    # 0.8

    .line 59
    mul-double/2addr v4, v6

    .line 60
    double-to-float v4, v4

    .line 61
    .line 62
    aput v4, v2, v3

    .line 63
    .line 64
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    .line 65
    .line 66
    .line 67
    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 68
    .line 69
    .line 70
    const v4, 0x10100a7

    .line 71
    .line 72
    .line 73
    filled-new-array {v4}, [I

    .line 74
    move-result-object v4

    .line 75
    .line 76
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    .line 77
    .line 78
    .line 79
    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 80
    move-result v2

    .line 81
    .line 82
    .line 83
    invoke-direct {v5, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 87
    .line 88
    sget-object v2, Landroid/util/StateSet;->WILD_CARD:[I

    .line 89
    .line 90
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    .line 91
    .line 92
    .line 93
    invoke-direct {v4, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 103
    move-result p2

    .line 104
    .line 105
    if-nez p2, :cond_1

    .line 106
    .line 107
    if-eqz v0, :cond_0

    .line 108
    const/4 p2, 0x0

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    :cond_0
    new-instance p2, Lcom/narvii/feed/BlogFollowingListFragment$1;

    .line 114
    .line 115
    .line 116
    invoke-direct {p2, p0}, Lcom/narvii/feed/BlogFollowingListFragment$1;-><init>(Lcom/narvii/feed/BlogFollowingListFragment;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    :cond_1
    return-void
.end method
