.class public Lcom/narvii/achievements/AchievementsFragment;
.super Lcom/narvii/achievements/ProfileDarkFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;,
        Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter;,
        Lcom/narvii/achievements/AchievementsFragment$CheckInHistoryHeaderAdapter;
    }
.end annotation


# static fields
.field static final ACHIEVEMENTS:Lcom/narvii/detail/DetailAdapter$CellType;


# instance fields
.field public achievementAdapter:Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter;

.field private checkInHistoryAdapter:Lcom/narvii/checkin/CheckInHistoryAdapter;

.field private circleAdapter:Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;

.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field public isRankingEnabled:Z

.field mediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field private mergeAdapter:Lcom/narvii/list/MergeAdapter;

.field numberFormat:Ljava/text/NumberFormat;

.field receiver:Landroid/content/BroadcastReceiver;

.field user:Lcom/narvii/model/User;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    .line 4
    const-string v1, "achievement"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 9
    .line 10
    sput-object v0, Lcom/narvii/achievements/AchievementsFragment;->ACHIEVEMENTS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/achievements/ProfileDarkFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/achievements/AchievementsFragment$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/achievements/AchievementsFragment$1;-><init>(Lcom/narvii/achievements/AchievementsFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/achievements/AchievementsFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 11
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/achievements/AchievementsFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/achievements/AchievementsFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 3
    return-object p0
.end method

.method private fetchUserProfile(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "/user-profile/"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    const-string v0, "api"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 38
    .line 39
    new-instance v1, Lcom/narvii/achievements/AchievementsFragment$3;

    .line 40
    .line 41
    const-class v2, Lcom/narvii/model/api/UserResponse;

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, p0, v2}, Lcom/narvii/achievements/AchievementsFragment$3;-><init>(Lcom/narvii/achievements/AchievementsFragment;Ljava/lang/Class;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 48
    return-void
.end method

.method private isMe()Z
    .locals 2

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    const-string v1, "id"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    return v0
.end method

.method static bridge synthetic t(Lcom/narvii/achievements/AchievementsFragment;)Lcom/narvii/checkin/CheckInHistoryAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/achievements/AchievementsFragment;->checkInHistoryAdapter:Lcom/narvii/checkin/CheckInHistoryAdapter;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/achievements/AchievementsFragment;)Lcom/narvii/list/MergeAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/achievements/AchievementsFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object p0
.end method

.method private updateBackground()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    const v1, 0x7f0a0d25

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcom/narvii/widget/SlideshowView;

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    iput-boolean v2, v1, Lcom/narvii/widget/SlideshowView;->noSlide:Z

    .line 20
    .line 21
    iget-object v3, p0, Lcom/narvii/achievements/AchievementsFragment;->mediaList:Ljava/util/List;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v3}, Lcom/narvii/widget/SlideshowView;->setMediaList(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    const v1, 0x7f0a01c8

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/achievements/AchievementsFragment;->mediaList:Ljava/util/List;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 39
    move-result v1

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    const/16 v2, 0x8

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 48
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/achievements/AchievementsFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/achievements/AchievementsFragment;->isMe()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic w(Lcom/narvii/achievements/AchievementsFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/achievements/AchievementsFragment;->updateBackground()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/achievements/AchievementsFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x1

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    new-instance p1, Lcom/narvii/list/StaticViewAdapter;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 20
    .line 21
    new-array v1, v0, [Landroid/view/View;

    .line 22
    .line 23
    new-instance v2, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v3}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v3, 0x0

    .line 32
    .line 33
    aput-object v2, v1, v3

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/achievements/AchievementsFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-direct {p0}, Lcom/narvii/achievements/AchievementsFragment;->isMe()Z

    .line 45
    move-result p1

    .line 46
    .line 47
    new-instance v1, Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter;

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, p0, p0}, Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter;-><init>(Lcom/narvii/achievements/AchievementsFragment;Lcom/narvii/app/NVContext;)V

    .line 51
    .line 52
    iput-object v1, p0, Lcom/narvii/achievements/AchievementsFragment;->achievementAdapter:Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter;

    .line 53
    .line 54
    iget-object v2, p0, Lcom/narvii/achievements/AchievementsFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    new-instance v1, Lcom/narvii/checkin/CheckInHistoryAdapter;

    .line 62
    .line 63
    .line 64
    invoke-direct {v1, p0, v0}, Lcom/narvii/checkin/CheckInHistoryAdapter;-><init>(Lcom/narvii/app/NVContext;Z)V

    .line 65
    .line 66
    iput-object v1, p0, Lcom/narvii/achievements/AchievementsFragment;->checkInHistoryAdapter:Lcom/narvii/checkin/CheckInHistoryAdapter;

    .line 67
    .line 68
    new-instance v1, Lcom/narvii/achievements/AchievementsFragment$CheckInHistoryHeaderAdapter;

    .line 69
    .line 70
    .line 71
    invoke-direct {v1, p0, p0}, Lcom/narvii/achievements/AchievementsFragment$CheckInHistoryHeaderAdapter;-><init>(Lcom/narvii/achievements/AchievementsFragment;Lcom/narvii/app/NVContext;)V

    .line 72
    .line 73
    iget-object v2, p0, Lcom/narvii/achievements/AchievementsFragment;->checkInHistoryAdapter:Lcom/narvii/checkin/CheckInHistoryAdapter;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Lcom/narvii/list/HeaderAdapter;->setAttachedAdapter(Lcom/narvii/list/NVAdapter;)V

    .line 77
    .line 78
    iget-object v2, p0, Lcom/narvii/achievements/AchievementsFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    .line 83
    iget-object v1, p0, Lcom/narvii/achievements/AchievementsFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 84
    .line 85
    iget-object v2, p0, Lcom/narvii/achievements/AchievementsFragment;->checkInHistoryAdapter:Lcom/narvii/checkin/CheckInHistoryAdapter;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 89
    .line 90
    :cond_1
    new-instance v1, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;

    .line 91
    .line 92
    .line 93
    invoke-direct {v1, p0, p0}, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;-><init>(Lcom/narvii/achievements/AchievementsFragment;Lcom/narvii/app/NVContext;)V

    .line 94
    .line 95
    iput-object v1, p0, Lcom/narvii/achievements/AchievementsFragment;->circleAdapter:Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;

    .line 96
    .line 97
    iget-object v2, p0, Lcom/narvii/achievements/AchievementsFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 98
    xor-int/2addr p1, v0

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 102
    .line 103
    iget-object p1, p0, Lcom/narvii/achievements/AchievementsFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 104
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

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onActiveChanged(Z)V

    .line 4
    .line 5
    const-string v0, "id"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v1, "liveLayer"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    check-cast v1, Lcom/narvii/livelayer/LiveLayerService;

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    const-string v3, "achievement/"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0, p1}, Lcom/narvii/livelayer/LiveLayerService;->reportBrowsing(Ljava/lang/String;Z)V

    .line 40
    :cond_0
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
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/achievements/AchievementsFragment;->numberFormat:Ljava/text/NumberFormat;

    .line 12
    .line 13
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/achievements/AchievementsFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 19
    .line 20
    .line 21
    const v0, 0x7f120067

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 25
    const/4 v0, 0x1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/achievements/AchievementsFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isRankingModuleEnabled()Z

    .line 34
    move-result v0

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/narvii/achievements/AchievementsFragment;->isRankingEnabled:Z

    .line 37
    .line 38
    const-string v0, "user"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    const-class v1, Lcom/narvii/model/User;

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    check-cast v0, Lcom/narvii/model/User;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/narvii/achievements/AchievementsFragment;->user:Lcom/narvii/model/User;

    .line 53
    .line 54
    const-string v0, "mediaList"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    const-class v1, Lcom/narvii/model/Media;

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    iput-object v0, p0, Lcom/narvii/achievements/AchievementsFragment;->mediaList:Ljava/util/List;

    .line 67
    .line 68
    const-string v0, "needFetchData"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 72
    move-result v0

    .line 73
    .line 74
    const-string v1, "id"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    if-nez v0, :cond_0

    .line 81
    .line 82
    iget-object v0, p0, Lcom/narvii/achievements/AchievementsFragment;->user:Lcom/narvii/model/User;

    .line 83
    .line 84
    if-nez v0, :cond_1

    .line 85
    .line 86
    .line 87
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    move-result v0

    .line 89
    .line 90
    if-nez v0, :cond_1

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, v1}, Lcom/narvii/achievements/AchievementsFragment;->fetchUserProfile(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    move-result v0

    .line 98
    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 103
    return-void

    .line 104
    .line 105
    :cond_2
    if-nez p1, :cond_3

    .line 106
    .line 107
    const-string p1, "statistics"

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 114
    .line 115
    const-string v0, "My Achievements Page Opened"

    .line 116
    .line 117
    .line 118
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    const-string v0, "Source"

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    const-string v0, "My Achievements Page Opened Total"

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 135
    .line 136
    .line 137
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 138
    move-result-object p1

    .line 139
    .line 140
    .line 141
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 142
    move-result-object p1

    .line 143
    .line 144
    iget-object v0, p0, Lcom/narvii/achievements/AchievementsFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 145
    .line 146
    new-instance v1, Landroid/content/IntentFilter;

    .line 147
    .line 148
    const-string v2, "com.narvii.action.ACTION_STREAK_REPAIR_CHANGED"

    .line 149
    .line 150
    .line 151
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 155
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d04b9

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

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/achievements/AchievementsFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 17
    return-void
.end method

.method protected onErrorRetry()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/achievements/AchievementsFragment;->onRefresh()V

    .line 4
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/achievements/AchievementsFragment$2;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/achievements/AchievementsFragment$2;-><init>(Lcom/narvii/achievements/AchievementsFragment;)V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/achievements/AchievementsFragment;->checkInHistoryAdapter:Lcom/narvii/checkin/CheckInHistoryAdapter;

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2, v0}, Lcom/narvii/checkin/CheckInHistoryAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lcom/narvii/achievements/AchievementsFragment;->circleAdapter:Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2, v0}, Lcom/narvii/detail/DetailAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/achievements/AchievementsFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isRankingModuleEnabled()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/narvii/achievements/AchievementsFragment;->isRankingEnabled:Z

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/achievements/AchievementsFragment;->achievementAdapter:Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/narvii/achievements/AchievementsFragment;->user:Lcom/narvii/model/User;

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    const-string v0, "id"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v0}, Lcom/narvii/achievements/AchievementsFragment;->fetchUserProfile(Ljava/lang/String;)V

    .line 47
    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/achievements/AchievementsFragment;->updateBackground()V

    .line 7
    return-void
.end method
