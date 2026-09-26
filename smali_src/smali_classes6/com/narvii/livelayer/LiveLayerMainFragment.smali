.class public Lcom/narvii/livelayer/LiveLayerMainFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;
    }
.end annotation


# instance fields
.field public allOnline:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private emptyViewAdapter:Lcom/narvii/adapter/NVPagerStatusAdapter;

.field offline:Z

.field public onlineCategoryAdapter:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

.field public pageOnline:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

.field private peopleListAdapter:Lcom/narvii/members/PeopleListAdapter;

.field wsListener:Lcom/narvii/util/ws/WsService$WsListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->offline:Z

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/livelayer/LiveLayerMainFragment$1;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/narvii/livelayer/LiveLayerMainFragment$1;-><init>(Lcom/narvii/livelayer/LiveLayerMainFragment;)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->wsListener:Lcom/narvii/util/ws/WsService$WsListener;

    .line 14
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/livelayer/LiveLayerMainFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/livelayer/LiveLayerMainFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 3
    return-object p0
.end method

.method private blockClickEvent()Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->shouldShowLoginPage()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    const-string v0, "affiliations"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/community/AffiliationsService;

    .line 17
    .line 18
    const-string v2, "config"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    check-cast v2, Lcom/narvii/config/ConfigService;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 28
    move-result v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isInVisitorMode()Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-static {p0}, Lcom/narvii/community/JoinCommunityDialog;->showInnerJoinDialog(Lcom/narvii/app/NVContext;)Landroid/app/Dialog;

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_1
    new-instance v0, Lcom/narvii/model/Community;

    .line 47
    .line 48
    .line 49
    invoke-direct {v0}, Lcom/narvii/model/Community;-><init>()V

    .line 50
    .line 51
    iput v2, v0, Lcom/narvii/model/Community;->id:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 55
    move-result-object v3

    .line 56
    .line 57
    new-instance v4, Lcom/narvii/livelayer/LiveLayerMainFragment$9;

    .line 58
    .line 59
    .line 60
    invoke-direct {v4, p0, v2}, Lcom/narvii/livelayer/LiveLayerMainFragment$9;-><init>(Lcom/narvii/livelayer/LiveLayerMainFragment;I)V

    .line 61
    .line 62
    .line 63
    invoke-static {v3, v0, v4}, Lcom/narvii/community/JoinCommunityDialog;->join(Landroid/content/Context;Lcom/narvii/model/Community;Lcom/narvii/util/Callback;)Lcom/narvii/community/JoinCommunityDialog;

    .line 64
    :goto_0
    return v1

    .line 65
    :cond_2
    const/4 v0, 0x0

    .line 66
    return v0
.end method

.method private resetBlurColor()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0a0e6d

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/github/mmin18/widget/RealtimeBlurLayout;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/high16 v1, -0x4d000000

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->setOverlayColor(I)V

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    :cond_0
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/livelayer/LiveLayerMainFragment;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private tryBindSwipeView()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    const v1, 0x7f0a05ff

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/widget/SwipeableLayout;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    check-cast v1, Lcom/narvii/widget/NVListView;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/narvii/widget/SwipeableLayout;->bindListView(Landroid/widget/AbsListView;)V

    .line 31
    :cond_0
    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/livelayer/LiveLayerMainFragment;)Lcom/narvii/members/PeopleListAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->peopleListAdapter:Lcom/narvii/members/PeopleListAdapter;

    return-object p0
.end method

.method static bridge synthetic v(Lcom/narvii/livelayer/LiveLayerMainFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerMainFragment;->blockClickEvent()Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 5

    .line 1
    .line 2
    const-string p1, "liveLayer"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/livelayer/LiveLayerService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/livelayer/LiveLayerService;->getCachedLiveLayerMainData()Lcom/narvii/livelayer/LiveLayerMainData;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/livelayer/LiveLayerMainFragment$3;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0, p0}, Lcom/narvii/livelayer/LiveLayerMainFragment$3;-><init>(Lcom/narvii/livelayer/LiveLayerMainFragment;Lcom/narvii/app/NVContext;)V

    .line 18
    .line 19
    const-string v1, "pageTopic"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    const-string v2, "Live Layer (Home)"

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    new-instance v1, Lcom/narvii/livelayer/LiveLayerMainFragment$4;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, p0, p0}, Lcom/narvii/livelayer/LiveLayerMainFragment$4;-><init>(Lcom/narvii/livelayer/LiveLayerMainFragment;Lcom/narvii/app/NVContext;)V

    .line 33
    .line 34
    iput-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->pageOnline:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 35
    .line 36
    iput-object v2, v1, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->source:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    .line 41
    :cond_0
    new-instance v1, Lcom/narvii/livelayer/LiveLayerMainFragment$5;

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, p0, p0, p1}, Lcom/narvii/livelayer/LiveLayerMainFragment$5;-><init>(Lcom/narvii/livelayer/LiveLayerMainFragment;Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerMainData;)V

    .line 45
    .line 46
    iput-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->allOnline:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 47
    const/4 v3, 0x0

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    iget-object v4, p1, Lcom/narvii/livelayer/LiveLayerMainData;->userListResponse:Lcom/narvii/model/api/UserListResponse;

    .line 52
    .line 53
    if-eqz v4, :cond_1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v4}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->setCachedUserListResponse(Lcom/narvii/model/api/UserListResponse;)V

    .line 57
    .line 58
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->allOnline:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 59
    const/4 v4, 0x0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v3, v4}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 63
    .line 64
    :cond_1
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->allOnline:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 65
    .line 66
    iput-object v2, v1, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->source:Ljava/lang/String;

    .line 67
    const/4 v2, 0x1

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 71
    .line 72
    new-instance v1, Lcom/narvii/adapter/MarginAdapter;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 76
    move-result-object v2

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 80
    move-result-object v2

    .line 81
    .line 82
    .line 83
    const v4, 0x7f070427

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 87
    move-result v2

    .line 88
    .line 89
    .line 90
    invoke-direct {v1, p0, v2}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    .line 95
    new-instance v1, Lcom/narvii/livelayer/LiveLayerMainFragment$6;

    .line 96
    .line 97
    .line 98
    invoke-direct {v1, p0, p0, p1}, Lcom/narvii/livelayer/LiveLayerMainFragment$6;-><init>(Lcom/narvii/livelayer/LiveLayerMainFragment;Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerMainData;)V

    .line 99
    .line 100
    iput-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->onlineCategoryAdapter:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    .line 101
    .line 102
    if-eqz p1, :cond_2

    .line 103
    .line 104
    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerMainData;->onlineCategoryList:Ljava/util/List;

    .line 105
    .line 106
    if-eqz p1, :cond_2

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, p1}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->setCachedListData(Ljava/util/List;)V

    .line 110
    .line 111
    :cond_2
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->onlineCategoryAdapter:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    .line 116
    new-instance p1, Lcom/narvii/adapter/MarginAdapter;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 120
    move-result-object v1

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 124
    move-result-object v1

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 128
    move-result v1

    .line 129
    .line 130
    .line 131
    invoke-direct {p1, p0, v1}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 135
    .line 136
    new-instance p1, Lcom/narvii/livelayer/LiveLayerMainFragment$7;

    .line 137
    .line 138
    .line 139
    invoke-direct {p1, p0, p0}, Lcom/narvii/livelayer/LiveLayerMainFragment$7;-><init>(Lcom/narvii/livelayer/LiveLayerMainFragment;Lcom/narvii/app/NVContext;)V

    .line 140
    .line 141
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->emptyViewAdapter:Lcom/narvii/adapter/NVPagerStatusAdapter;

    .line 142
    .line 143
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->onlineCategoryAdapter:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v1}, Lcom/narvii/adapter/NVPagerStatusAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    .line 148
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->emptyViewAdapter:Lcom/narvii/adapter/NVPagerStatusAdapter;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    .line 153
    const-string p1, "fromCommunityDetail"

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 157
    move-result p1

    .line 158
    .line 159
    if-nez p1, :cond_3

    .line 160
    .line 161
    new-instance p1, Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;

    .line 162
    .line 163
    .line 164
    invoke-direct {p1, p0, p0}, Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;-><init>(Lcom/narvii/livelayer/LiveLayerMainFragment;Lcom/narvii/app/NVContext;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 168
    .line 169
    new-instance v1, Lcom/narvii/livelayer/LiveLayerMainFragment$8;

    .line 170
    .line 171
    .line 172
    invoke-direct {v1, p0, p0, v3, p1}, Lcom/narvii/livelayer/LiveLayerMainFragment$8;-><init>(Lcom/narvii/livelayer/LiveLayerMainFragment;Lcom/narvii/app/NVContext;ZLcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;)V

    .line 173
    .line 174
    iput-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->peopleListAdapter:Lcom/narvii/members/PeopleListAdapter;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 178
    :cond_3
    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method protected getFrameDarkBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 7
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "live_layer"

    return-object v0
.end method

.method public hasOnlineBar()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 7
    move-result p1

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 21
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Lcom/narvii/chat/invite/ChatInviteFragment;-><init>()V

    .line 11
    .line 12
    new-instance v0, Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    const-string v1, "chatInvite"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 36
    .line 37
    :cond_0
    const-string p1, "liveLayer"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    check-cast p1, Lcom/narvii/livelayer/LiveLayerService;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->wsListener:Lcom/narvii/util/ws/WsService$WsListener;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/narvii/livelayer/LiveLayerService;->registerWsListener(Lcom/narvii/util/ws/WsService$WsListener;)V

    .line 49
    const/4 p1, 0x1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setShowScrollBarOnlyWhenScroll(Z)V

    .line 53
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d0503

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/narvii/livelayer/BackgroundHelper;->getDynamicBackground()Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerMainFragment;->resetBlurColor()V

    .line 18
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "liveLayer"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->wsListener:Lcom/narvii/util/ws/WsService$WsListener;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/LiveLayerService;->unregisterWsListener(Lcom/narvii/util/ws/WsService$WsListener;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 17
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onHiddenChanged(Z)V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerMainFragment;->tryBindSwipeView()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerMainFragment;->resetBlurColor()V

    .line 12
    :cond_0
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 12
    .line 13
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    .line 14
    .line 15
    .line 16
    const v0, -0x669f9fa0    # -1.1599991E-23f

    .line 17
    .line 18
    .line 19
    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 23
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onPause()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/livelayer/LiveLayerMainData;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Lcom/narvii/livelayer/LiveLayerMainData;-><init>()V

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->allOnline:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->getUserListResponse()Lcom/narvii/model/api/UserListResponse;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    iput-object v1, v0, Lcom/narvii/livelayer/LiveLayerMainData;->userListResponse:Lcom/narvii/model/api/UserListResponse;

    .line 25
    .line 26
    :cond_0
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->onlineCategoryAdapter:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->getLiveLayerList()Ljava/util/List;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    iput-object v1, v0, Lcom/narvii/livelayer/LiveLayerMainData;->onlineCategoryList:Ljava/util/List;

    .line 35
    .line 36
    :cond_1
    const-string v1, "liveLayer"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    check-cast v1, Lcom/narvii/livelayer/LiveLayerService;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Lcom/narvii/livelayer/LiveLayerService;->cacheLiveLayerMainData(Lcom/narvii/livelayer/LiveLayerMainData;)V

    .line 48
    :cond_2
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/livelayer/LiveLayerMainFragment$10;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/livelayer/LiveLayerMainFragment$10;-><init>(Lcom/narvii/livelayer/LiveLayerMainFragment;)V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->pageOnline:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 8
    .line 9
    const/16 v2, 0x200

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2, v0}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->allOnline:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2, v0}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->onlineCategoryAdapter:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    .line 22
    const/4 v2, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2, v0}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 26
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->offline:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->offline:Z

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->onlineCategoryAdapter:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0, v2}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 17
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a0842

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    const v1, 0x7f0a0805

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    check-cast v1, Landroid/widget/TextView;

    .line 20
    .line 21
    .line 22
    const v2, 0x7f120bad

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 36
    move-result v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object p2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 44
    move-result-object p2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 48
    move-result v2

    .line 49
    const/4 v3, 0x0

    .line 50
    .line 51
    if-eqz v2, :cond_0

    .line 52
    move v1, v3

    .line 53
    .line 54
    :cond_0
    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 58
    move-result p2

    .line 59
    .line 60
    if-eqz p2, :cond_1

    .line 61
    .line 62
    const/16 v3, 0x8

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerMainFragment;->tryBindSwipeView()V

    .line 69
    .line 70
    .line 71
    const p2, 0x7f0a097a

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 81
    move-result-object p2

    .line 82
    .line 83
    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 87
    move-result v0

    .line 88
    .line 89
    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 90
    sub-int/2addr v0, v1

    .line 91
    .line 92
    div-int/lit8 v0, v0, 0x2

    .line 93
    .line 94
    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    .line 99
    new-instance p2, Lcom/narvii/livelayer/LiveLayerMainFragment$2;

    .line 100
    .line 101
    .line 102
    invoke-direct {p2, p0}, Lcom/narvii/livelayer/LiveLayerMainFragment$2;-><init>(Lcom/narvii/livelayer/LiveLayerMainFragment;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    :cond_2
    return-void
.end method
