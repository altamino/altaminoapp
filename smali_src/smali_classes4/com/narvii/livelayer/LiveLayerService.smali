.class public Lcom/narvii/livelayer/LiveLayerService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;


# static fields
.field public static ACTION_BROWSING:Ljava/lang/String; = "Browsing"

.field public static ACTION_CHATTING:Ljava/lang/String; = "Chatting"

.field public static ACTION_COMMENTING:Ljava/lang/String; = "Commenting"

.field public static ACTION_PLAYING:Ljava/lang/String; = "Playing"

.field public static ACTION_POLLING:Ljava/lang/String; = "Polling"

.field public static ACTION_RECORDING:Ljava/lang/String; = "Recording"

.field public static ACTION_TYPING:Ljava/lang/String; = "Typing"

.field public static ACTION_VOTING:Ljava/lang/String; = "Voting"

.field public static final GLOBAL_ENTER:Lcom/narvii/util/statistics/TmpValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/statistics/TmpValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static OPEN:Z = true

.field public static final REFRESH_INTERVAL:J = 0x2bf20L


# instance fields
.field affiliationsService:Lcom/narvii/community/AffiliationsService;

.field public final cid:I

.field dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

.field lastRefreshTime:J

.field private liveLayerHelper:Lcom/narvii/livelayer/LiveLayerHelper;

.field liveLayerMainData:Lcom/narvii/livelayer/LiveLayerMainData;

.field mainDataCacheTime:J

.field nvContext:Lcom/narvii/app/NVContext;

.field onlineHelper:Lcom/narvii/onlinestatus/OnlineHelper;

.field requestRunnable:Ljava/lang/Runnable;

.field topic:Ljava/lang/String;

.field private userIconsPreloadHelper:Lcom/narvii/livelayer/LiveLayerPreloadHelper;

.field wsService:Lcom/narvii/livelayer/ws/LiveLayerWsService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/livelayer/LiveLayerService;->GLOBAL_ENTER:Lcom/narvii/util/statistics/TmpValue;

    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/livelayer/LiveLayerService$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/livelayer/LiveLayerService$1;-><init>(Lcom/narvii/livelayer/LiveLayerService;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->requestRunnable:Ljava/lang/Runnable;

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/narvii/livelayer/LiveLayerService;->lastRefreshTime:J

    .line 15
    .line 16
    const-string v0, "online-members"

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->topic:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerService;->nvContext:Lcom/narvii/app/NVContext;

    .line 21
    .line 22
    const-string v0, "liveLayerWS"

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/livelayer/ws/LiveLayerWsService;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->wsService:Lcom/narvii/livelayer/ws/LiveLayerWsService;

    .line 31
    .line 32
    const-string v0, "config"

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 42
    move-result v0

    .line 43
    .line 44
    iput v0, p0, Lcom/narvii/livelayer/LiveLayerService;->cid:I

    .line 45
    .line 46
    const-string v1, "affiliations"

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    check-cast v1, Lcom/narvii/community/AffiliationsService;

    .line 53
    .line 54
    iput-object v1, p0, Lcom/narvii/livelayer/LiveLayerService;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 55
    .line 56
    new-instance v1, Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 57
    const/4 v2, 0x1

    .line 58
    .line 59
    .line 60
    invoke-direct {v1, p1, v2}, Lcom/narvii/livelayer/LiveLayerDataSource;-><init>(Lcom/narvii/app/NVContext;Z)V

    .line 61
    .line 62
    iput-object v1, p0, Lcom/narvii/livelayer/LiveLayerService;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 63
    .line 64
    new-instance v1, Lcom/narvii/livelayer/LiveLayerHelper;

    .line 65
    .line 66
    .line 67
    invoke-direct {v1, p1, v0}, Lcom/narvii/livelayer/LiveLayerHelper;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 68
    .line 69
    iput-object v1, p0, Lcom/narvii/livelayer/LiveLayerService;->liveLayerHelper:Lcom/narvii/livelayer/LiveLayerHelper;

    .line 70
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/livelayer/LiveLayerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerService;->requestOnlineMembers()V

    return-void
.end method

.method public static assembleTarget(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ndc://g/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ndc://x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private assembleTarget(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/narvii/livelayer/LiveLayerService;->cid:I

    .line 1
    invoke-static {v0, p1}, Lcom/narvii/livelayer/LiveLayerService;->assembleTarget(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private assembleTopic(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/livelayer/LiveLayerService;->getNdtopic(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private requestOnlineMembers()V
    .locals 6

    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->liveLayerHelper:Lcom/narvii/livelayer/LiveLayerHelper;

    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerService;->topic:Ljava/lang/String;

    const/16 v2, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 1
    new-instance v5, Lcom/narvii/livelayer/LiveLayerService$2;

    invoke-direct {v5, p0}, Lcom/narvii/livelayer/LiveLayerService$2;-><init>(Lcom/narvii/livelayer/LiveLayerService;)V

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/livelayer/LiveLayerHelper;->requestOnlineMembers(Ljava/lang/String;IZZLcom/narvii/util/Callback;)V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/livelayer/LiveLayerService;->lastRefreshTime:J

    return-void
.end method


# virtual methods
.method public cacheLiveLayerMainData(Lcom/narvii/livelayer/LiveLayerMainData;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerService;->liveLayerMainData:Lcom/narvii/livelayer/LiveLayerMainData;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/narvii/livelayer/LiveLayerService;->mainDataCacheTime:J

    .line 9
    return-void
.end method

.method public getCachedLiveLayerMainData()Lcom/narvii/livelayer/LiveLayerMainData;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-wide v2, p0, Lcom/narvii/livelayer/LiveLayerService;->mainDataCacheTime:J

    .line 7
    sub-long/2addr v0, v2

    .line 8
    .line 9
    .line 10
    const-wide/32 v2, 0x493e0

    .line 11
    .line 12
    cmp-long v0, v0, v2

    .line 13
    .line 14
    if-lez v0, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->liveLayerMainData:Lcom/narvii/livelayer/LiveLayerMainData;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->liveLayerMainData:Lcom/narvii/livelayer/LiveLayerMainData;

    .line 20
    return-object v0
.end method

.method public getDataSource()Lcom/narvii/livelayer/LiveLayerDataSource;
    .locals 1

    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    return-object v0
.end method

.method public getNdtopic(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->liveLayerHelper:Lcom/narvii/livelayer/LiveLayerHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/livelayer/LiveLayerHelper;->getNdtopic(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public onAffiliationChanged()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerService;->cid:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lcom/narvii/livelayer/LiveLayerService;->ACTION_BROWSING:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, ""

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0, v1, v2}, Lcom/narvii/livelayer/LiveLayerService;->reportActive(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerService;->refreshOnlineMembers()V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Lcom/narvii/community/AffiliationsService;->removeAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 27
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/narvii/community/AffiliationsService;->removeAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->topic:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerService;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/narvii/livelayer/LiveLayerService;->unsubscribe(Ljava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    .line 15
    .line 16
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerService;->requestRunnable:Ljava/lang/Runnable;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    return-void
.end method

.method public onResume()V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerService;->cid:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcom/narvii/community/AffiliationsService;->addAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 16
    .line 17
    :cond_0
    sget-object v0, Lcom/narvii/livelayer/LiveLayerService;->GLOBAL_ENTER:Lcom/narvii/util/statistics/TmpValue;

    .line 18
    .line 19
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerService;->cid:I

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->compareAndRemove(Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 31
    move-result-wide v1

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    iget-wide v3, p0, Lcom/narvii/livelayer/LiveLayerService;->lastRefreshTime:J

    .line 36
    .line 37
    const-wide/16 v5, 0x0

    .line 38
    .line 39
    cmp-long v0, v3, v5

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    cmp-long v0, v1, v3

    .line 44
    .line 45
    if-ltz v0, :cond_2

    .line 46
    .line 47
    .line 48
    const-wide/32 v5, 0x2bf20

    .line 49
    .line 50
    add-long v7, v3, v5

    .line 51
    .line 52
    cmp-long v0, v1, v7

    .line 53
    .line 54
    if-lez v0, :cond_1

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_1
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 58
    .line 59
    iget-object v7, p0, Lcom/narvii/livelayer/LiveLayerService;->requestRunnable:Ljava/lang/Runnable;

    .line 60
    add-long/2addr v3, v5

    .line 61
    sub-long/2addr v3, v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v7, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    goto :goto_1

    .line 66
    .line 67
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->requestRunnable:Ljava/lang/Runnable;

    .line 68
    .line 69
    .line 70
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 71
    goto :goto_1

    .line 72
    .line 73
    :cond_3
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->requestRunnable:Ljava/lang/Runnable;

    .line 74
    .line 75
    .line 76
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 77
    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/narvii/livelayer/LiveLayerService;->mainDataCacheTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->liveLayerMainData:Lcom/narvii/livelayer/LiveLayerMainData;

    return-void
.end method

.method public refreshOnlineMembers()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerService;->requestRunnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->requestRunnable:Ljava/lang/Runnable;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 13
    return-void
.end method

.method public registerWsListener(Lcom/narvii/util/ws/WsService$WsListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->wsService:Lcom/narvii/livelayer/ws/LiveLayerWsService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->registerWsListener(Lcom/narvii/util/ws/WsService$WsListener;)V

    .line 6
    return-void
.end method

.method public reportActive(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0, v0, p2, p3}, Lcom/narvii/livelayer/LiveLayerService;->reportActive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public reportActive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/narvii/livelayer/LiveLayerService;->assembleTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->wsService:Lcom/narvii/livelayer/ws/LiveLayerWsService;

    iget v1, p0, Lcom/narvii/livelayer/LiveLayerService;->cid:I

    .line 2
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->reportActive(ILjava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public reportBrowsing(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    sget-object p2, Lcom/narvii/livelayer/LiveLayerService;->ACTION_BROWSING:Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2, p1, v0}, Lcom/narvii/livelayer/LiveLayerService;->reportActive(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    sget-object p2, Lcom/narvii/livelayer/LiveLayerService;->ACTION_BROWSING:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p2, p1, v0}, Lcom/narvii/livelayer/LiveLayerService;->reportInactive(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 15
    :goto_0
    return-void
.end method

.method public reportInactive(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0, v0, p2, p3}, Lcom/narvii/livelayer/LiveLayerService;->reportInactive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public reportInactive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/narvii/livelayer/LiveLayerService;->assembleTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->wsService:Lcom/narvii/livelayer/ws/LiveLayerWsService;

    iget v1, p0, Lcom/narvii/livelayer/LiveLayerService;->cid:I

    .line 2
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->reportInactive(ILjava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public requestOnlineMembers(Ljava/lang/String;IZLcom/narvii/util/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/api/UserListResponse;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->liveLayerHelper:Lcom/narvii/livelayer/LiveLayerHelper;

    const/4 v4, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/livelayer/LiveLayerHelper;->requestOnlineMembers(Ljava/lang/String;IZZLcom/narvii/util/Callback;)V

    return-void
.end method

.method public subscribe(Ljava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V
    .locals 2

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/livelayer/LiveLayerService;->OPEN:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    if-nez p1, :cond_1

    .line 8
    return-void

    .line 9
    .line 10
    .line 11
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerService;->assembleTopic(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->wsService:Lcom/narvii/livelayer/ws/LiveLayerWsService;

    .line 15
    .line 16
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerService;->cid:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, p1, p2}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->subscribe(ILjava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    .line 20
    return-void
.end method

.method public unregisterWsListener(Lcom/narvii/util/ws/WsService$WsListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->wsService:Lcom/narvii/livelayer/ws/LiveLayerWsService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->unregisterWsListener(Lcom/narvii/util/ws/WsService$WsListener;)V

    .line 6
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V
    .locals 2

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/livelayer/LiveLayerService;->OPEN:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    if-nez p1, :cond_1

    .line 8
    return-void

    .line 9
    .line 10
    .line 11
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerService;->assembleTopic(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->wsService:Lcom/narvii/livelayer/ws/LiveLayerWsService;

    .line 15
    .line 16
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerService;->cid:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, p1, p2}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->unsubscribe(ILjava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    .line 20
    return-void
.end method
