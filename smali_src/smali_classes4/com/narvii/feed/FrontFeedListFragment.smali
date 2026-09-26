.class public Lcom/narvii/feed/FrontFeedListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;,
        Lcom/narvii/feed/FrontFeedListFragment$LayoutAdapter;,
        Lcom/narvii/feed/FrontFeedListFragment$DividerAdapter;,
        Lcom/narvii/feed/FrontFeedListFragment$NewestAdapter;,
        Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;,
        Lcom/narvii/feed/FrontFeedListFragment$HistoryFeaturedFeedAdapter;,
        Lcom/narvii/feed/FrontFeedListFragment$FitTopAdapter;
    }
.end annotation


# instance fields
.field private cachedNewMemberList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field communityId:I

.field displayMode:I

.field extraHeight:I

.field fitTopAdapter:Lcom/narvii/feed/FrontFeedListFragment$FitTopAdapter;

.field highlightColor:I

.field homeFrame:Lcom/narvii/widget/HomeFrameLayout;

.field mDividerAdapter:Lcom/narvii/feed/FrontFeedListFragment$DividerAdapter;

.field mFeaturedAdapter:Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;

.field mFeaturedLayoutAdapter:Lcom/narvii/feed/FeatureLayoutAdapter;

.field mHistoryFeaturedFeedAdapter:Lcom/narvii/feed/FrontFeedListFragment$HistoryFeaturedFeedAdapter;

.field mNewestAdapter:Lcom/narvii/feed/FrontFeedListFragment$NewestAdapter;

.field newMemberListRow:Lcom/narvii/members/NewMemberListRow;

.field primaryColor:I

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field targetAlpha:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    .line 7
    iput v0, p0, Lcom/narvii/feed/FrontFeedListFragment;->targetAlpha:F

    .line 8
    .line 9
    .line 10
    const v0, -0xff3183

    .line 11
    .line 12
    iput v0, p0, Lcom/narvii/feed/FrontFeedListFragment;->highlightColor:I

    .line 13
    .line 14
    iput v0, p0, Lcom/narvii/feed/FrontFeedListFragment;->primaryColor:I

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment;->cachedNewMemberList:Ljava/util/ArrayList;

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/feed/FrontFeedListFragment$1;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/narvii/feed/FrontFeedListFragment$1;-><init>(Lcom/narvii/feed/FrontFeedListFragment;)V

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 29
    return-void
.end method

.method private applyNewMemberAdapterAsWrapper(Lcom/narvii/list/NVAdapter;)Lcom/narvii/list/NVAdapter;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;

    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p0, p0, v1, v2}, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;-><init>(Lcom/narvii/feed/FrontFeedListFragment;Lcom/narvii/app/NVContext;IZ)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/list/ProxyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 11
    return-object v0
.end method

.method static bridge synthetic t(Lcom/narvii/feed/FrontFeedListFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/feed/FrontFeedListFragment;->cachedNewMemberList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/feed/FrontFeedListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/feed/FrontFeedListFragment;->updateTabLayout()V

    return-void
.end method

.method private updateTabLayout()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/amino/HomeFragment;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/amino/HomeFragment;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/narvii/amino/HomeFragment;->updateTabView(Landroidx/fragment/app/Fragment;)V

    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 6

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;

    .line 3
    .line 4
    iget v0, p0, Lcom/narvii/feed/FrontFeedListFragment;->displayMode:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, p0, v0}, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;-><init>(Lcom/narvii/feed/FrontFeedListFragment;I)V

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedAdapter:Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;

    .line 10
    .line 11
    new-instance p1, Lcom/narvii/feed/FrontFeedListFragment$LayoutAdapter;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedAdapter:Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, p0, v0}, Lcom/narvii/feed/FrontFeedListFragment$LayoutAdapter;-><init>(Lcom/narvii/feed/FrontFeedListFragment;Lcom/narvii/feed/FeaturedFeedAdapter;)V

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedLayoutAdapter:Lcom/narvii/feed/FeatureLayoutAdapter;

    .line 19
    .line 20
    new-instance v0, Lcom/narvii/feed/FrontFeedListFragment$DividerAdapter;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/narvii/feed/FrontFeedListFragment$DividerAdapter;-><init>(Lcom/narvii/feed/FrontFeedListFragment;)V

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment;->mDividerAdapter:Lcom/narvii/feed/FrontFeedListFragment$DividerAdapter;

    .line 26
    .line 27
    new-instance v0, Lcom/narvii/feed/FrontFeedListFragment$NewestAdapter;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/narvii/feed/FrontFeedListFragment$NewestAdapter;-><init>(Lcom/narvii/feed/FrontFeedListFragment;)V

    .line 31
    .line 32
    iput-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment;->mNewestAdapter:Lcom/narvii/feed/FrontFeedListFragment$NewestAdapter;

    .line 33
    .line 34
    new-instance v0, Lcom/narvii/list/DividerAdapter;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, p0}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/feed/FrontFeedListFragment;->mNewestAdapter:Lcom/narvii/feed/FrontFeedListFragment$NewestAdapter;

    .line 40
    .line 41
    .line 42
    const v2, 0x7f120cce

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 47
    const/4 v4, 0x0

    .line 48
    .line 49
    .line 50
    invoke-static {p0, v1, v3, v4}, Lcom/narvii/wallet/optinads/OptinAdsUtil;->setupAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/list/NVAdapter;Ljava/lang/String;Z)Lcom/narvii/list/NVAdapter;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    new-instance v3, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;

    .line 54
    const/4 v4, 0x5

    .line 55
    const/4 v5, 0x1

    .line 56
    .line 57
    .line 58
    invoke-direct {v3, p0, p0, v4, v5}, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;-><init>(Lcom/narvii/feed/FrontFeedListFragment;Lcom/narvii/app/NVContext;IZ)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v1}, Lcom/narvii/list/ProxyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v3}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    .line 66
    new-instance v1, Lcom/narvii/feed/FrontFeedListFragment$HistoryFeaturedFeedAdapter;

    .line 67
    .line 68
    .line 69
    invoke-direct {v1, p0}, Lcom/narvii/feed/FrontFeedListFragment$HistoryFeaturedFeedAdapter;-><init>(Lcom/narvii/feed/FrontFeedListFragment;)V

    .line 70
    .line 71
    iput-object v1, p0, Lcom/narvii/feed/FrontFeedListFragment;->mHistoryFeaturedFeedAdapter:Lcom/narvii/feed/FrontFeedListFragment$HistoryFeaturedFeedAdapter;

    .line 72
    .line 73
    new-instance v1, Lcom/narvii/list/MergeAdapter;

    .line 74
    .line 75
    .line 76
    invoke-direct {v1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 80
    move-result v3

    .line 81
    .line 82
    if-eqz v3, :cond_0

    .line 83
    .line 84
    new-instance v3, Lcom/narvii/feed/FrontFeedListFragment$FitTopAdapter;

    .line 85
    .line 86
    .line 87
    invoke-direct {v3, p0}, Lcom/narvii/feed/FrontFeedListFragment$FitTopAdapter;-><init>(Lcom/narvii/feed/FrontFeedListFragment;)V

    .line 88
    .line 89
    iput-object v3, p0, Lcom/narvii/feed/FrontFeedListFragment;->fitTopAdapter:Lcom/narvii/feed/FrontFeedListFragment$FitTopAdapter;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    .line 94
    .line 95
    :cond_0
    invoke-static {p0, v5}, Lcom/narvii/wallet/optinads/OptinAds;->optin(Lcom/narvii/app/NVContext;I)Z

    .line 96
    move-result v3

    .line 97
    .line 98
    if-eqz v3, :cond_1

    .line 99
    .line 100
    new-instance v3, Lcom/narvii/wallet/optinads/OptinAdsAdapter;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 104
    move-result-object v2

    .line 105
    const/4 v4, 0x3

    .line 106
    .line 107
    .line 108
    invoke-direct {v3, p0, v4, v4, v2}, Lcom/narvii/wallet/optinads/OptinAdsAdapter;-><init>(Lcom/narvii/app/NVContext;IILjava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    .line 112
    move-result v2

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3, v2}, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->setDarkTheme(Z)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, p1}, Lcom/narvii/list/ProxyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    .line 120
    iput-object v3, p1, Lcom/narvii/feed/FrontFeedListFragment$LayoutAdapter;->oaa:Lcom/narvii/wallet/optinads/OptinAdsAdapter;

    .line 121
    .line 122
    .line 123
    invoke-direct {p0, v3}, Lcom/narvii/feed/FrontFeedListFragment;->applyNewMemberAdapterAsWrapper(Lcom/narvii/list/NVAdapter;)Lcom/narvii/list/NVAdapter;

    .line 124
    move-result-object p1

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, p1, v5}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 128
    goto :goto_0

    .line 129
    .line 130
    .line 131
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/feed/FrontFeedListFragment;->applyNewMemberAdapterAsWrapper(Lcom/narvii/list/NVAdapter;)Lcom/narvii/list/NVAdapter;

    .line 132
    move-result-object p1

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, p1, v5}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 136
    .line 137
    :goto_0
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment;->mHistoryFeaturedFeedAdapter:Lcom/narvii/feed/FrontFeedListFragment$HistoryFeaturedFeedAdapter;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    .line 142
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment;->mDividerAdapter:Lcom/narvii/feed/FrontFeedListFragment$DividerAdapter;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    return-object v1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "featured_feed"

    return-object v0
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
    new-instance v0, Lcom/narvii/nvplayer/delegate/NVFeedListVideoDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Lcom/narvii/nvplayer/delegate/NVFeedListVideoDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    .line 10
    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->isActive()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onActiveChanged(Z)V

    .line 4
    .line 5
    const-string v0, "liveLayer"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 12
    .line 13
    const-string v1, "featured"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, p1}, Lcom/narvii/livelayer/LiveLayerService;->reportBrowsing(Ljava/lang/String;Z)V

    .line 17
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0xc9

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    const v1, 0x7f120212

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 30
    return-void
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
    .line 11
    .line 12
    const v0, 0x7f120bdc

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 16
    .line 17
    :cond_0
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 23
    .line 24
    const-string v0, "config"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 34
    move-result v0

    .line 35
    .line 36
    iput v0, p0, Lcom/narvii/feed/FrontFeedListFragment;->communityId:I

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getFeaturedLayout()I

    .line 42
    move-result v0

    .line 43
    .line 44
    iput v0, p0, Lcom/narvii/feed/FrontFeedListFragment;->displayMode:I

    .line 45
    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    const-string p1, "statistics"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 55
    .line 56
    const-string v0, "Featured Page Opened"

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    const-string v0, "Source"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    const-string v0, "Featured Page Opened Total"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 76
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d036a

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
    const p2, 0x7f0d0344

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    .line 10
    const/4 p2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 14
    const/4 p2, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 18
    .line 19
    iget-object p2, p0, Lcom/narvii/feed/FrontFeedListFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 23
    return-void
.end method

.method public onRefresh(Lcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onRefresh(Lcom/narvii/util/Callback;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment;->cachedNewMemberList:Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 9
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a07fe

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/widget/HomeFrameLayout;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment;->homeFrame:Lcom/narvii/widget/HomeFrameLayout;

    .line 15
    .line 16
    const-string p1, "config"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 30
    move-result p1

    .line 31
    const/4 p2, 0x3

    .line 32
    .line 33
    new-array p2, p2, [F

    .line 34
    .line 35
    .line 36
    invoke-static {p1, p2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 37
    const/4 v0, 0x1

    .line 38
    .line 39
    aget v1, p2, v0

    .line 40
    float-to-double v1, v1

    .line 41
    .line 42
    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    .line 43
    mul-double/2addr v1, v3

    .line 44
    double-to-float v1, v1

    .line 45
    .line 46
    aput v1, p2, v0

    .line 47
    const/4 v0, 0x2

    .line 48
    .line 49
    aget v1, p2, v0

    .line 50
    float-to-double v1, v1

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    const-wide v3, 0x3ff199999999999aL    # 1.1

    .line 56
    mul-double/2addr v1, v3

    .line 57
    double-to-float v1, v1

    .line 58
    .line 59
    aput v1, p2, v0

    .line 60
    .line 61
    iput p1, p0, Lcom/narvii/feed/FrontFeedListFragment;->primaryColor:I

    .line 62
    .line 63
    .line 64
    invoke-static {p2}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 65
    move-result p1

    .line 66
    .line 67
    iput p1, p0, Lcom/narvii/feed/FrontFeedListFragment;->highlightColor:I

    .line 68
    return-void
.end method
