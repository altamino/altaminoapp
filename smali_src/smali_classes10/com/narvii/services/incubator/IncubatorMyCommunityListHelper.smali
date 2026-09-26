.class public Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;
.super Ljava/lang/Object;
.source "SourceFile"

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

.field localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field myCommunityListService:Lcom/narvii/community/MyCommunityListService;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field themePackService:Lcom/narvii/theme/ThemePackService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper$1;-><init>(Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->downloadThemePackRunnable:Ljava/lang/Runnable;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper$2;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper$2;-><init>(Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->receiver:Landroid/content/BroadcastReceiver;

    .line 18
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->downloadThemePackRunnable:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v0, "myCommunityList"

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/community/MyCommunityListService;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 13
    .line 14
    const-string v0, "community"

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/community/CommunityService;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->communityService:Lcom/narvii/community/CommunityService;

    .line 23
    .line 24
    .line 25
    const-string/jumbo v0, "themePack"

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Lcom/narvii/theme/ThemePackService;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->themePackService:Lcom/narvii/theme/ThemePackService;

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    iput-object p1, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 44
    return-object p0
.end method

.method public destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method downloadThemePack()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v3

    .line 30
    .line 31
    if-eqz v3, :cond_3

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    check-cast v3, Lcom/narvii/model/Community;

    .line 38
    .line 39
    iget-object v4, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->themePackService:Lcom/narvii/theme/ThemePackService;

    .line 40
    .line 41
    iget v5, v3, Lcom/narvii/model/Community;->id:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/narvii/model/Community;->themePackRevision()I

    .line 45
    move-result v6

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v5, v6}, Lcom/narvii/theme/ThemePackService;->getStatus(II)I

    .line 49
    move-result v4

    .line 50
    .line 51
    if-nez v4, :cond_2

    .line 52
    .line 53
    if-nez v1, :cond_1

    .line 54
    move-object v1, v3

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const/4 v3, 0x1

    .line 57
    .line 58
    if-ne v4, v3, :cond_1

    .line 59
    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_3
    if-nez v2, :cond_4

    .line 64
    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->themePackService:Lcom/narvii/theme/ThemePackService;

    .line 68
    .line 69
    iget v2, v1, Lcom/narvii/model/Community;->id:I

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/narvii/model/Community;->themePackRevision()I

    .line 73
    move-result v3

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/narvii/model/Community;->themePackUrl()Ljava/lang/String;

    .line 77
    move-result-object v4

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v2, v3, v4}, Lcom/narvii/theme/ThemePackService;->require(IILjava/lang/String;)V

    .line 81
    .line 82
    iget v0, v1, Lcom/narvii/model/Community;->id:I

    .line 83
    .line 84
    iput v0, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->autoUpdateCid:I

    .line 85
    :cond_4
    return-void
.end method

.method public onListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V
    .locals 3

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    if-eqz p3, :cond_1

    .line 6
    .line 7
    iget-object p3, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->themePackService:Lcom/narvii/theme/ThemePackService;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3}, Lcom/narvii/theme/ThemePackService;->clearErrors()V

    .line 11
    .line 12
    :cond_1
    iget-boolean p3, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->isResumed:Z

    .line 13
    .line 14
    if-eqz p3, :cond_2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->downloadThemePack()V

    .line 18
    .line 19
    :cond_2
    iget-boolean p3, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->isResumed:Z

    .line 20
    .line 21
    if-eqz p3, :cond_3

    .line 22
    .line 23
    iget-object p3, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-static {p3}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    .line 27
    move-result-object p3

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->communityService:Lcom/narvii/community/CommunityService;

    .line 30
    .line 31
    iget-object p2, p2, Lcom/narvii/master/CommunityListResponse;->communityList:Ljava/util/List;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    .line 35
    move-result-wide v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p2, v1, v2}, Lcom/narvii/community/CommunityService;->batchUpdateCommunity(Ljava/util/List;J)V

    .line 39
    .line 40
    .line 41
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->isEnd()Z

    .line 42
    move-result p2

    .line 43
    .line 44
    if-eqz p2, :cond_6

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 52
    move-result p2

    .line 53
    .line 54
    new-array p3, p2, [I

    .line 55
    const/4 v0, 0x0

    .line 56
    .line 57
    :goto_0
    if-ge v0, p2, :cond_5

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    instance-of v2, v1, Lcom/narvii/model/Community;

    .line 64
    .line 65
    if-eqz v2, :cond_4

    .line 66
    .line 67
    check-cast v1, Lcom/narvii/model/Community;

    .line 68
    .line 69
    iget v1, v1, Lcom/narvii/model/Community;->id:I

    .line 70
    .line 71
    aput v1, p3, v0

    .line 72
    .line 73
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 74
    goto :goto_0

    .line 75
    .line 76
    .line 77
    :cond_5
    invoke-static {p3}, Ljava/util/Arrays;->sort([I)V

    .line 78
    .line 79
    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->context:Lcom/narvii/app/NVContext;

    .line 80
    .line 81
    const-string v0, "statistics"

    .line 82
    .line 83
    .line 84
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 88
    const/4 v0, 0x0

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    const-string v0, "Communities Joined Total"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    const-string p2, "Communities Joined"

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;[I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 104
    :cond_6
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

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->isResumed:Z

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 6
    .line 7
    iget-object p2, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->receiver:Landroid/content/BroadcastReceiver;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 11
    .line 12
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 13
    .line 14
    iget-object p2, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->downloadThemePackRunnable:Ljava/lang/Runnable;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    iget p1, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->autoUpdateCid:I

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p2, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->themePackService:Lcom/narvii/theme/ThemePackService;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p1}, Lcom/narvii/theme/ThemePackService;->cancel(I)V

    .line 27
    :cond_0
    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 2

    .line 1
    const/4 p1, 0x1

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->isResumed:Z

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 6
    .line 7
    iget-object p2, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->receiver:Landroid/content/BroadcastReceiver;

    .line 8
    .line 9
    new-instance v0, Landroid/content/IntentFilter;

    .line 10
    .line 11
    const-string v1, "com.narvii.action.THEME_PACK_CHANGED"

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->downloadThemePack()V

    .line 21
    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p0}, Lcom/narvii/community/MyCommunityListService;->addObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    .line 6
    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p0}, Lcom/narvii/community/MyCommunityListService;->removeObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    .line 6
    return-void
.end method
