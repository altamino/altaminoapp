.class public Lcom/narvii/achievements/AchievementsFragment;
.super Lcom/narvii/achievements/ProfileDarkFragment;
.source "AchievementsFragment.java"


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

    .line 68
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "achievement"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/narvii/achievements/AchievementsFragment;->ACHIEVEMENTS:Lcom/narvii/detail/DetailAdapter$CellType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/narvii/achievements/ProfileDarkFragment;-><init>()V

    .line 78
    new-instance v0, Lcom/narvii/achievements/AchievementsFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/achievements/AchievementsFragment$1;-><init>(Lcom/narvii/achievements/AchievementsFragment;)V

    iput-object v0, p0, Lcom/narvii/achievements/AchievementsFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/achievements/AchievementsFragment;)Lcom/narvii/checkin/CheckInHistoryAdapter;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/narvii/achievements/AchievementsFragment;->checkInHistoryAdapter:Lcom/narvii/checkin/CheckInHistoryAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/achievements/AchievementsFragment;)Z
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/narvii/achievements/AchievementsFragment;->isMe()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/narvii/achievements/AchievementsFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/achievements/AchievementsFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/achievements/AchievementsFragment;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/narvii/achievements/AchievementsFragment;->updateBackground()V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/achievements/AchievementsFragment;)Lcom/narvii/list/MergeAdapter;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/narvii/achievements/AchievementsFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object p0
.end method

.method private fetchUserProfile(Ljava/lang/String;)V
    .locals 3

    .line 177
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/user-profile/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const-string v0, "api"

    .line 178
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 179
    new-instance v1, Lcom/narvii/achievements/AchievementsFragment$3;

    const-class v2, Lcom/narvii/model/api/UserResponse;

    invoke-direct {v1, p0, v2}, Lcom/narvii/achievements/AchievementsFragment$3;-><init>(Lcom/narvii/achievements/AchievementsFragment;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private isMe()Z
    .locals 2

    const-string v0, "account"

    .line 353
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    const-string v1, "id"

    .line 354
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private updateBackground()V
    .locals 4

    .line 219
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f090a50

    .line 223
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/SlideshowView;

    const/4 v2, 0x0

    .line 224
    iput-boolean v2, v1, Lcom/narvii/widget/SlideshowView;->noSlide:Z

    .line 225
    iget-object v3, p0, Lcom/narvii/achievements/AchievementsFragment;->mediaList:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/narvii/widget/SlideshowView;->setMediaList(Ljava/util/List;)V

    const v1, 0x7f09012c

    .line 227
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/narvii/achievements/AchievementsFragment;->mediaList:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :cond_2
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 5

    .line 233
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/achievements/AchievementsFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 235
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 236
    new-instance p1, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {p1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    .line 237
    new-instance v3, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    aput-object v3, v1, v2

    invoke-virtual {p1, v1}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 238
    iget-object v1, p0, Lcom/narvii/achievements/AchievementsFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 241
    :cond_0
    invoke-direct {p0}, Lcom/narvii/achievements/AchievementsFragment;->isMe()Z

    move-result p1

    .line 243
    new-instance v1, Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter;

    invoke-direct {v1, p0, p0}, Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter;-><init>(Lcom/narvii/achievements/AchievementsFragment;Lcom/narvii/app/NVContext;)V

    iput-object v1, p0, Lcom/narvii/achievements/AchievementsFragment;->achievementAdapter:Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter;

    .line 244
    iget-object v1, p0, Lcom/narvii/achievements/AchievementsFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    iget-object v2, p0, Lcom/narvii/achievements/AchievementsFragment;->achievementAdapter:Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter;

    invoke-virtual {v1, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    if-eqz p1, :cond_1

    .line 247
    new-instance v1, Lcom/narvii/checkin/CheckInHistoryAdapter;

    invoke-direct {v1, p0, v0}, Lcom/narvii/checkin/CheckInHistoryAdapter;-><init>(Lcom/narvii/app/NVContext;Z)V

    iput-object v1, p0, Lcom/narvii/achievements/AchievementsFragment;->checkInHistoryAdapter:Lcom/narvii/checkin/CheckInHistoryAdapter;

    .line 248
    new-instance v1, Lcom/narvii/achievements/AchievementsFragment$CheckInHistoryHeaderAdapter;

    invoke-direct {v1, p0, p0}, Lcom/narvii/achievements/AchievementsFragment$CheckInHistoryHeaderAdapter;-><init>(Lcom/narvii/achievements/AchievementsFragment;Lcom/narvii/app/NVContext;)V

    .line 249
    iget-object v2, p0, Lcom/narvii/achievements/AchievementsFragment;->checkInHistoryAdapter:Lcom/narvii/checkin/CheckInHistoryAdapter;

    invoke-virtual {v1, v2}, Lcom/narvii/list/HeaderAdapter;->setAttachedAdapter(Lcom/narvii/list/NVAdapter;)V

    .line 250
    iget-object v2, p0, Lcom/narvii/achievements/AchievementsFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {v2, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 251
    iget-object v1, p0, Lcom/narvii/achievements/AchievementsFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    iget-object v2, p0, Lcom/narvii/achievements/AchievementsFragment;->checkInHistoryAdapter:Lcom/narvii/checkin/CheckInHistoryAdapter;

    invoke-virtual {v1, v2, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 253
    :cond_1
    new-instance v1, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;

    invoke-direct {v1, p0, p0}, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;-><init>(Lcom/narvii/achievements/AchievementsFragment;Lcom/narvii/app/NVContext;)V

    iput-object v1, p0, Lcom/narvii/achievements/AchievementsFragment;->circleAdapter:Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;

    .line 254
    iget-object v1, p0, Lcom/narvii/achievements/AchievementsFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    iget-object v2, p0, Lcom/narvii/achievements/AchievementsFragment;->circleAdapter:Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;

    xor-int/2addr p1, v0

    invoke-virtual {v1, v2, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 255
    iget-object p1, p0, Lcom/narvii/achievements/AchievementsFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object p1
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 4

    .line 167
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onActiveChanged(Z)V

    const-string v0, "id"

    .line 169
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "liveLayer"

    .line 171
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/livelayer/LiveLayerService;

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "achievement/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/narvii/livelayer/LiveLayerService;->reportBrowsing(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 94
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/achievements/AchievementsFragment;->numberFormat:Ljava/text/NumberFormat;

    .line 96
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v0, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/achievements/AchievementsFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    const v0, 0x7f0f0060

    .line 97
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const/4 v0, 0x1

    .line 98
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 99
    iget-object v0, p0, Lcom/narvii/achievements/AchievementsFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isRankingModuleEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/achievements/AchievementsFragment;->isRankingEnabled:Z

    const-string/jumbo v0, "user"

    .line 100
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/User;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    iput-object v0, p0, Lcom/narvii/achievements/AchievementsFragment;->user:Lcom/narvii/model/User;

    const-string v0, "mediaList"

    .line 101
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/Media;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/achievements/AchievementsFragment;->mediaList:Ljava/util/List;

    const-string v0, "needFetchData"

    .line 102
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "id"

    .line 104
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/narvii/achievements/AchievementsFragment;->user:Lcom/narvii/model/User;

    if-nez v0, :cond_1

    .line 106
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    invoke-direct {p0, v1}, Lcom/narvii/achievements/AchievementsFragment;->fetchUserProfile(Ljava/lang/String;)V

    .line 111
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void

    .line 121
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    .line 122
    iget-object v0, p0, Lcom/narvii/achievements/AchievementsFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.ACTION_STREAK_REPAIR_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b048b

    const/4 v0, 0x0

    .line 203
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/narvii/achievements/AchievementsFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 129
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    return-void
.end method

.method protected onErrorRetry()V
    .locals 0

    .line 197
    invoke-virtual {p0}, Lcom/narvii/achievements/AchievementsFragment;->onRefresh()V

    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 139
    new-instance v0, Lcom/narvii/achievements/AchievementsFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/achievements/AchievementsFragment$2;-><init>(Lcom/narvii/achievements/AchievementsFragment;)V

    .line 151
    iget-object v1, p0, Lcom/narvii/achievements/AchievementsFragment;->checkInHistoryAdapter:Lcom/narvii/checkin/CheckInHistoryAdapter;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {v1, v2, v0}, Lcom/narvii/checkin/CheckInHistoryAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/narvii/achievements/AchievementsFragment;->circleAdapter:Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;

    invoke-virtual {v1, v2, v0}, Lcom/narvii/detail/DetailAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 155
    iget-object v0, p0, Lcom/narvii/achievements/AchievementsFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isRankingModuleEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/achievements/AchievementsFragment;->isRankingEnabled:Z

    .line 156
    iget-object v0, p0, Lcom/narvii/achievements/AchievementsFragment;->achievementAdapter:Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter;

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/narvii/achievements/AchievementsFragment;->user:Lcom/narvii/model/User;

    if-nez v0, :cond_2

    const-string v0, "id"

    .line 161
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/achievements/AchievementsFragment;->fetchUserProfile(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 208
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 209
    invoke-direct {p0}, Lcom/narvii/achievements/AchievementsFragment;->updateBackground()V

    return-void
.end method
