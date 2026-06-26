.class public Lcom/narvii/feed/FrontFeedListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "FrontFeedListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/feed/FrontFeedListFragment$NewestAdapter;,
        Lcom/narvii/feed/FrontFeedListFragment$HistoryFeaturedFeedAdapter;,
        Lcom/narvii/feed/FrontFeedListFragment$DividerAdapter;,
        Lcom/narvii/feed/FrontFeedListFragment$FitTopAdapter;,
        Lcom/narvii/feed/FrontFeedListFragment$LayoutAdapter;,
        Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;,
        Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;
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

    .line 64
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 75
    iput v0, p0, Lcom/narvii/feed/FrontFeedListFragment;->targetAlpha:F

    const v0, -0xff3183

    .line 77
    iput v0, p0, Lcom/narvii/feed/FrontFeedListFragment;->highlightColor:I

    .line 78
    iput v0, p0, Lcom/narvii/feed/FrontFeedListFragment;->primaryColor:I

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment;->cachedNewMemberList:Ljava/util/ArrayList;

    .line 151
    new-instance v0, Lcom/narvii/feed/FrontFeedListFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/feed/FrontFeedListFragment$1;-><init>(Lcom/narvii/feed/FrontFeedListFragment;)V

    iput-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/feed/FrontFeedListFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/narvii/feed/FrontFeedListFragment;->cachedNewMemberList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/feed/FrontFeedListFragment;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/narvii/feed/FrontFeedListFragment;->updateTabLayout()V

    return-void
.end method

.method private applyNewMemberAdapterAsWrapper(Lcom/narvii/list/NVAdapter;)Lcom/narvii/list/NVAdapter;
    .locals 3

    .line 209
    new-instance v0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;-><init>(Lcom/narvii/feed/FrontFeedListFragment;Lcom/narvii/app/NVContext;IZ)V

    .line 210
    invoke-virtual {v0, p1}, Lcom/narvii/list/ProxyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object v0
.end method

.method private updateTabLayout()V
    .locals 1

    .line 675
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/amino/HomeFragment;

    if-eqz v0, :cond_0

    .line 676
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/amino/HomeFragment;

    invoke-virtual {v0, p0}, Lcom/narvii/amino/HomeFragment;->updateTabView(Landroid/support/v4/app/Fragment;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 12

    .line 178
    new-instance p1, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;

    iget v0, p0, Lcom/narvii/feed/FrontFeedListFragment;->displayMode:I

    invoke-direct {p1, p0, v0}, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;-><init>(Lcom/narvii/feed/FrontFeedListFragment;I)V

    iput-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedAdapter:Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;

    .line 179
    new-instance p1, Lcom/narvii/feed/FrontFeedListFragment$LayoutAdapter;

    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedAdapter:Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;

    invoke-direct {p1, p0, v0}, Lcom/narvii/feed/FrontFeedListFragment$LayoutAdapter;-><init>(Lcom/narvii/feed/FrontFeedListFragment;Lcom/narvii/feed/FeaturedFeedAdapter;)V

    .line 180
    iput-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedLayoutAdapter:Lcom/narvii/feed/FeatureLayoutAdapter;

    .line 181
    new-instance v0, Lcom/narvii/feed/FrontFeedListFragment$DividerAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/feed/FrontFeedListFragment$DividerAdapter;-><init>(Lcom/narvii/feed/FrontFeedListFragment;)V

    iput-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment;->mDividerAdapter:Lcom/narvii/feed/FrontFeedListFragment$DividerAdapter;

    .line 182
    new-instance v0, Lcom/narvii/feed/FrontFeedListFragment$NewestAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/feed/FrontFeedListFragment$NewestAdapter;-><init>(Lcom/narvii/feed/FrontFeedListFragment;)V

    iput-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment;->mNewestAdapter:Lcom/narvii/feed/FrontFeedListFragment$NewestAdapter;

    .line 183
    new-instance v0, Lcom/narvii/list/DividerAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 184
    iget-object v1, p0, Lcom/narvii/feed/FrontFeedListFragment;->mNewestAdapter:Lcom/narvii/feed/FrontFeedListFragment$NewestAdapter;

    .line 185
    new-instance v3, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;

    const/4 v5, 0x1

    const/4 v6, 0x5

    invoke-direct {v3, p0, p0, v6, v5}, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;-><init>(Lcom/narvii/feed/FrontFeedListFragment;Lcom/narvii/app/NVContext;IZ)V

    .line 186
    invoke-virtual {v3, v1}, Lcom/narvii/list/ProxyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 187
    invoke-virtual {v0, v3}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    new-instance v1, Lcom/narvii/feed/FrontFeedListFragment$HistoryFeaturedFeedAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/feed/FrontFeedListFragment$HistoryFeaturedFeedAdapter;-><init>(Lcom/narvii/feed/FrontFeedListFragment;)V

    iput-object v1, p0, Lcom/narvii/feed/FrontFeedListFragment;->mHistoryFeaturedFeedAdapter:Lcom/narvii/feed/FrontFeedListFragment$HistoryFeaturedFeedAdapter;

    .line 189
    new-instance v1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 190
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    new-instance v3, Lcom/narvii/feed/FrontFeedListFragment$FitTopAdapter;

    invoke-direct {v3, p0}, Lcom/narvii/feed/FrontFeedListFragment$FitTopAdapter;-><init>(Lcom/narvii/feed/FrontFeedListFragment;)V

    iput-object v3, p0, Lcom/narvii/feed/FrontFeedListFragment;->fitTopAdapter:Lcom/narvii/feed/FrontFeedListFragment$FitTopAdapter;

    invoke-virtual {v1, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 193
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/feed/FrontFeedListFragment;->applyNewMemberAdapterAsWrapper(Lcom/narvii/list/NVAdapter;)Lcom/narvii/list/NVAdapter;

    move-result-object p1

    invoke-virtual {v1, p1, v5}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 202
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment;->mHistoryFeaturedFeedAdapter:Lcom/narvii/feed/FrontFeedListFragment$HistoryFeaturedFeedAdapter;

    invoke-virtual {v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 203
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment;->mDividerAdapter:Lcom/narvii/feed/FrontFeedListFragment$DividerAdapter;

    invoke-virtual {v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 204
    invoke-virtual {v1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object v1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Featured"

    return-object v0
.end method

.method public getPostEntryLift()I
    .locals 1

    const/16 v0, 0x10

    .line 138
    invoke-static {p0, v0}, Lcom/narvii/util/ViewUtils;->getBannerLift(Lcom/narvii/app/NVContext;I)I

    move-result v0

    return v0
.end method

.method protected initVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 2

    .line 697
    new-instance v0, Lcom/narvii/nvplayer/delegate/NVFeedListVideoDelegate;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/nvplayer/delegate/NVFeedListVideoDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 671
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result v0

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 2

    .line 682
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onActiveChanged(Z)V

    const-string v0, "liveLayer"

    .line 683
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    const-string v1, "featured"

    .line 684
    invoke-virtual {v0, v1, p1}, Lcom/narvii/livelayer/LiveLayerService;->reportBrowsing(Ljava/lang/String;Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/16 v0, 0xc9

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 690
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f01c3

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 692
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 113
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f0b19

    .line 95
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 97
    :cond_0
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v0, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    const-string v0, "config"

    .line 98
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    iput v0, p0, Lcom/narvii/feed/FrontFeedListFragment;->communityId:I

    .line 99
    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getFeaturedLayout()I

    move-result v0

    iput v0, p0, Lcom/narvii/feed/FrontFeedListFragment;->displayMode:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0338

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 143
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const p2, 0x7f0b0311

    .line 144
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    const/4 p2, 0x0

    .line 145
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 146
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 147
    iget-object p2, p0, Lcom/narvii/feed/FrontFeedListFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

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

    .line 167
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onRefresh(Lcom/narvii/util/Callback;)V

    .line 168
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment;->cachedNewMemberList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 173
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 123
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090678

    .line 125
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/HomeFrameLayout;

    iput-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment;->homeFrame:Lcom/narvii/widget/HomeFrameLayout;

    const-string p1, "config"

    .line 126
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 127
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result p1

    const/4 p2, 0x3

    new-array p2, p2, [F

    .line 129
    invoke-static {p1, p2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v0, 0x1

    .line 130
    aget v1, p2, v0

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-float v1, v1

    aput v1, p2, v0

    const/4 v0, 0x2

    .line 131
    aget v1, p2, v0

    float-to-double v1, v1

    const-wide v3, 0x3ff199999999999aL    # 1.1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-float v1, v1

    aput v1, p2, v0

    .line 132
    iput p1, p0, Lcom/narvii/feed/FrontFeedListFragment;->primaryColor:I

    .line 133
    invoke-static {p2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    iput p1, p0, Lcom/narvii/feed/FrontFeedListFragment;->highlightColor:I

    return-void
.end method
