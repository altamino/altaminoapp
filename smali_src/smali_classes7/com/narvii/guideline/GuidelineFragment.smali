.class public Lcom/narvii/guideline/GuidelineFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;
    }
.end annotation


# static fields
.field static final COMMUNITY_GUIDE_TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final OFFICAL_GUIDE_TITLE:Lcom/narvii/detail/DetailAdapter$CellType;


# instance fields
.field communityGuideAdapter:Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;

.field private communityGuideFinished:Z

.field private communityResponse:Lcom/narvii/guideline/CommunityGuideLineResponse;

.field private mCid:I

.field private onlyShowCommunity:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    .line 4
    const-string v1, "guideline.title"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 9
    .line 10
    sput-object v0, Lcom/narvii/guideline/GuidelineFragment;->COMMUNITY_GUIDE_TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 13
    .line 14
    const-string v1, "official.guideline.title"

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 18
    .line 19
    sput-object v0, Lcom/narvii/guideline/GuidelineFragment;->OFFICAL_GUIDE_TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 20
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

.method private requestCommunityGuideline()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 6
    .line 7
    const-string v1, "/community/guideline"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget v1, p0, Lcom/narvii/guideline/GuidelineFragment;->mCid:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    const-string v1, "api"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 30
    .line 31
    new-instance v2, Lcom/narvii/guideline/GuidelineFragment$1;

    .line 32
    .line 33
    const-class v3, Lcom/narvii/guideline/CommunityGuideLineResponse;

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, p0, v3}, Lcom/narvii/guideline/GuidelineFragment$1;-><init>(Lcom/narvii/guideline/GuidelineFragment;Ljava/lang/Class;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 40
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/guideline/GuidelineFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/guideline/GuidelineFragment;->communityGuideFinished:Z

    return p0
.end method

.method static bridge synthetic u(Lcom/narvii/guideline/GuidelineFragment;)Lcom/narvii/guideline/CommunityGuideLineResponse;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/guideline/GuidelineFragment;->communityResponse:Lcom/narvii/guideline/CommunityGuideLineResponse;

    return-object p0
.end method

.method static bridge synthetic v(Lcom/narvii/guideline/GuidelineFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/guideline/GuidelineFragment;->mCid:I

    return p0
.end method

.method static bridge synthetic w(Lcom/narvii/guideline/GuidelineFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/guideline/GuidelineFragment;->onlyShowCommunity:Z

    return p0
.end method

.method static bridge synthetic x(Lcom/narvii/guideline/GuidelineFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/guideline/GuidelineFragment;->communityGuideFinished:Z

    return-void
.end method

.method static bridge synthetic y(Lcom/narvii/guideline/GuidelineFragment;Lcom/narvii/guideline/CommunityGuideLineResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/guideline/GuidelineFragment;->communityResponse:Lcom/narvii/guideline/CommunityGuideLineResponse;

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;-><init>(Lcom/narvii/guideline/GuidelineFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/guideline/GuidelineFragment;->communityGuideAdapter:Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;

    .line 8
    return-object p1
.end method

.method public getPostEntryLift()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lcom/narvii/wallet/optinads/OptinAdsUtil;->getBannerLift(Lcom/narvii/app/NVContext;I)I

    .line 5
    move-result v0

    .line 6
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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "config"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 15
    move-result v0

    .line 16
    .line 17
    iput v0, p0, Lcom/narvii/guideline/GuidelineFragment;->mCid:I

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const-string v0, "id"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 25
    move-result v0

    .line 26
    .line 27
    iput v0, p0, Lcom/narvii/guideline/GuidelineFragment;->mCid:I

    .line 28
    .line 29
    :cond_0
    const-string v0, "title"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    move-result v1

    .line 38
    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_1
    const v0, 0x7f120bd2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    :goto_0
    const-string v0, "onlyShowCommunity"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 63
    move-result v0

    .line 64
    .line 65
    iput-boolean v0, p0, Lcom/narvii/guideline/GuidelineFragment;->onlyShowCommunity:Z

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/narvii/guideline/GuidelineFragment;->requestCommunityGuideline()V

    .line 69
    .line 70
    if-nez p1, :cond_2

    .line 71
    .line 72
    const-string p1, "statistics"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 79
    .line 80
    const-string v0, "Community Guidelines Page Opened"

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    const-string v0, "Community Guideline Total"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    const-string v0, "Source"

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 100
    :cond_2
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

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
    return-void
.end method
