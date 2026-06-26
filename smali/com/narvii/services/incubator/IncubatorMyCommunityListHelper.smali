.class public Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;
.super Ljava/lang/Object;
.source "IncubatorMyCommunityListHelper.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;
.implements Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;"
    }
.end annotation


# instance fields
.field autoUpdateCid:I

.field communityService:Lcom/narvii/community/CommunityService;

.field context:Lcom/narvii/app/NVContext;

.field private final downloadThemePackRunnable:Ljava/lang/Runnable;

.field isResumed:Z

.field localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field myCommunityListService:Lcom/narvii/community/MyCommunityListService;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field themePackService:Lcom/narvii/theme/ThemePackService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper$1;

    invoke-direct {v0, p0}, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper$1;-><init>(Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;)V

    iput-object v0, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->downloadThemePackRunnable:Ljava/lang/Runnable;

    .line 89
    new-instance v0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper$2;

    invoke-direct {v0, p0}, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper$2;-><init>(Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;)V

    iput-object v0, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;)Ljava/lang/Runnable;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->downloadThemePackRunnable:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 1

    .line 50
    iput-object p1, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "myCommunityList"

    .line 51
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/MyCommunityListService;

    iput-object v0, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    const-string v0, "community"

    .line 52
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/CommunityService;

    iput-object v0, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->communityService:Lcom/narvii/community/CommunityService;

    const-string/jumbo v0, "themePack"

    .line 53
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/theme/ThemePackService;

    iput-object v0, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->themePackService:Lcom/narvii/theme/ThemePackService;

    .line 54
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    return-object p0
.end method

.method public destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method downloadThemePack()V
    .locals 7

    .line 98
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 102
    iget-object v2, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v2}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Community;

    .line 103
    iget-object v4, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->themePackService:Lcom/narvii/theme/ThemePackService;

    iget v5, v3, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v3}, Lcom/narvii/model/Community;->themePackRevision()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/narvii/theme/ThemePackService;->getStatus(II)I

    move-result v4

    if-nez v4, :cond_2

    if-nez v0, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    if-ne v4, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    .line 114
    iget-object v1, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->themePackService:Lcom/narvii/theme/ThemePackService;

    iget v2, v0, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0}, Lcom/narvii/model/Community;->themePackRevision()I

    move-result v3

    invoke-virtual {v0}, Lcom/narvii/model/Community;->themePackUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/narvii/theme/ThemePackService;->require(IILjava/lang/String;)V

    .line 115
    iget v0, v0, Lcom/narvii/model/Community;->id:I

    iput v0, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->autoUpdateCid:I

    :cond_4
    return-void
.end method

.method public onListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method public onReminderChanged(Lcom/narvii/community/MyCommunityListService;)V
    .locals 0

    return-void
.end method

.method public onSuggestListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/master/CommunityListResponse;)V
    .locals 0

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->isResumed:Z

    .line 73
    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object p2, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 74
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->downloadThemePackRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 75
    iget p1, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->autoUpdateCid:I

    if-eqz p1, :cond_0

    .line 76
    iget-object p2, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->themePackService:Lcom/narvii/theme/ThemePackService;

    invoke-virtual {p2, p1}, Lcom/narvii/theme/ThemePackService;->cancel(I)V

    :cond_0
    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 2

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->isResumed:Z

    .line 66
    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object p2, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.THEME_PACK_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 67
    invoke-virtual {p0}, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->downloadThemePack()V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 60
    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {p1, p0}, Lcom/narvii/community/MyCommunityListService;->addObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 82
    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {p1, p0}, Lcom/narvii/community/MyCommunityListService;->removeObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    return-void
.end method
