.class public Lcom/narvii/livelayer/LiveLayerService;
.super Ljava/lang/Object;
.source "LiveLayerService.java"

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

    .line 65
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    sput-object v0, Lcom/narvii/livelayer/LiveLayerService;->GLOBAL_ENTER:Lcom/narvii/util/statistics/TmpValue;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/narvii/livelayer/LiveLayerService$1;

    invoke-direct {v0, p0}, Lcom/narvii/livelayer/LiveLayerService$1;-><init>(Lcom/narvii/livelayer/LiveLayerService;)V

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->requestRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    .line 60
    iput-wide v0, p0, Lcom/narvii/livelayer/LiveLayerService;->lastRefreshTime:J

    const-string v0, "online-members"

    .line 63
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->topic:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerService;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "liveLayerWS"

    .line 72
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/ws/LiveLayerWsService;

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->wsService:Lcom/narvii/livelayer/ws/LiveLayerWsService;

    const-string v0, "config"

    .line 73
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 74
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    iput v0, p0, Lcom/narvii/livelayer/LiveLayerService;->cid:I

    const-string v0, "affiliations"

    .line 75
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/AffiliationsService;

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 76
    new-instance v0, Lcom/narvii/livelayer/LiveLayerDataSource;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/narvii/livelayer/LiveLayerDataSource;-><init>(Lcom/narvii/app/NVContext;Z)V

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 77
    new-instance v0, Lcom/narvii/livelayer/LiveLayerHelper;

    iget v1, p0, Lcom/narvii/livelayer/LiveLayerService;->cid:I

    invoke-direct {v0, p1, v1}, Lcom/narvii/livelayer/LiveLayerHelper;-><init>(Lcom/narvii/app/NVContext;I)V

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->liveLayerHelper:Lcom/narvii/livelayer/LiveLayerHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/livelayer/LiveLayerService;)V
    .locals 0

    .line 26
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

    .line 199
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ndc://g/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 201
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

    .line 191
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerService;->cid:I

    invoke-static {v0, p1}, Lcom/narvii/livelayer/LiveLayerService;->assembleTarget(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private assembleTopic(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 209
    invoke-virtual {p0, p1}, Lcom/narvii/livelayer/LiveLayerService;->getNdtopic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private requestOnlineMembers()V
    .locals 6

    .line 172
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->liveLayerHelper:Lcom/narvii/livelayer/LiveLayerHelper;

    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerService;->topic:Ljava/lang/String;

    new-instance v5, Lcom/narvii/livelayer/LiveLayerService$2;

    invoke-direct {v5, p0}, Lcom/narvii/livelayer/LiveLayerService$2;-><init>(Lcom/narvii/livelayer/LiveLayerService;)V

    const/16 v2, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/livelayer/LiveLayerHelper;->requestOnlineMembers(Ljava/lang/String;IZZLcom/narvii/util/Callback;)V

    .line 182
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/livelayer/LiveLayerService;->lastRefreshTime:J

    return-void
.end method


# virtual methods
.method public cacheLiveLayerMainData(Lcom/narvii/livelayer/LiveLayerMainData;)V
    .locals 2

    .line 230
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerService;->liveLayerMainData:Lcom/narvii/livelayer/LiveLayerMainData;

    .line 231
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/livelayer/LiveLayerService;->mainDataCacheTime:J

    return-void
.end method

.method public getCachedLiveLayerMainData()Lcom/narvii/livelayer/LiveLayerMainData;
    .locals 5

    .line 235
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/narvii/livelayer/LiveLayerService;->mainDataCacheTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->liveLayerMainData:Lcom/narvii/livelayer/LiveLayerMainData;

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->liveLayerMainData:Lcom/narvii/livelayer/LiveLayerMainData;

    return-object v0
.end method

.method public getDataSource()Lcom/narvii/livelayer/LiveLayerDataSource;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    return-object v0
.end method

.method public getNdtopic(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->liveLayerHelper:Lcom/narvii/livelayer/LiveLayerHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/livelayer/LiveLayerHelper;->getNdtopic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onAffiliationChanged()V
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    iget v1, p0, Lcom/narvii/livelayer/LiveLayerService;->cid:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    sget-object v0, Lcom/narvii/livelayer/LiveLayerService;->ACTION_BROWSING:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {p0, v0, v2, v1}, Lcom/narvii/livelayer/LiveLayerService;->reportActive(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 245
    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerService;->refreshOnlineMembers()V

    .line 246
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {v0, p0}, Lcom/narvii/community/AffiliationsService;->removeAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {v0, p0}, Lcom/narvii/community/AffiliationsService;->removeAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 158
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->topic:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerService;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    invoke-virtual {p0, v0, v1}, Lcom/narvii/livelayer/LiveLayerService;->unsubscribe(Ljava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    .line 159
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerService;->requestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .locals 9

    .line 140
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    iget v1, p0, Lcom/narvii/livelayer/LiveLayerService;->cid:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {v0, p0}, Lcom/narvii/community/AffiliationsService;->addAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 143
    :cond_0
    sget-object v0, Lcom/narvii/livelayer/LiveLayerService;->GLOBAL_ENTER:Lcom/narvii/util/statistics/TmpValue;

    iget v1, p0, Lcom/narvii/livelayer/LiveLayerService;->cid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->compareAndRemove(Ljava/lang/Object;)Z

    move-result v0

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    if-eqz v0, :cond_3

    .line 146
    iget-wide v3, p0, Lcom/narvii/livelayer/LiveLayerService;->lastRefreshTime:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    cmp-long v0, v1, v3

    if-ltz v0, :cond_2

    const-wide/32 v5, 0x2bf20

    add-long v7, v3, v5

    cmp-long v0, v1, v7

    if-lez v0, :cond_1

    goto :goto_0

    .line 149
    :cond_1
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/narvii/livelayer/LiveLayerService;->requestRunnable:Ljava/lang/Runnable;

    add-long/2addr v3, v5

    sub-long/2addr v3, v1

    invoke-virtual {v0, v7, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 147
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->requestRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->requestRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

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

    .line 135
    iput-wide v0, p0, Lcom/narvii/livelayer/LiveLayerService;->mainDataCacheTime:J

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->liveLayerMainData:Lcom/narvii/livelayer/LiveLayerMainData;

    return-void
.end method

.method public refreshOnlineMembers()V
    .locals 2

    .line 167
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerService;->requestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 168
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->requestRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public registerWsListener(Lcom/narvii/util/ws/WsService$WsListener;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->wsService:Lcom/narvii/livelayer/ws/LiveLayerWsService;

    invoke-virtual {v0, p1}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->registerWsListener(Lcom/narvii/util/ws/WsService$WsListener;)V

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

    .line 111
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
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

    .line 103
    invoke-direct {p0, p2}, Lcom/narvii/livelayer/LiveLayerService;->assembleTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 104
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->wsService:Lcom/narvii/livelayer/ws/LiveLayerWsService;

    iget v1, p0, Lcom/narvii/livelayer/LiveLayerService;->cid:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->reportActive(ILjava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public reportBrowsing(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 223
    sget-object p2, Lcom/narvii/livelayer/LiveLayerService;->ACTION_BROWSING:Ljava/lang/String;

    invoke-virtual {p0, p2, p1, v0}, Lcom/narvii/livelayer/LiveLayerService;->reportActive(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 225
    :cond_0
    sget-object p2, Lcom/narvii/livelayer/LiveLayerService;->ACTION_BROWSING:Ljava/lang/String;

    invoke-virtual {p0, p2, p1, v0}, Lcom/narvii/livelayer/LiveLayerService;->reportInactive(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

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

    .line 126
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
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

    .line 117
    invoke-direct {p0, p2}, Lcom/narvii/livelayer/LiveLayerService;->assembleTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 119
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->wsService:Lcom/narvii/livelayer/ws/LiveLayerWsService;

    iget v1, p0, Lcom/narvii/livelayer/LiveLayerService;->cid:I

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

    .line 186
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->liveLayerHelper:Lcom/narvii/livelayer/LiveLayerHelper;

    const/4 v4, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/livelayer/LiveLayerHelper;->requestOnlineMembers(Ljava/lang/String;IZZLcom/narvii/util/Callback;)V

    return-void
.end method

.method public subscribe(Ljava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V
    .locals 2

    .line 81
    sget-boolean v0, Lcom/narvii/livelayer/LiveLayerService;->OPEN:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 87
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerService;->assembleTopic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->wsService:Lcom/narvii/livelayer/ws/LiveLayerWsService;

    iget v1, p0, Lcom/narvii/livelayer/LiveLayerService;->cid:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->subscribe(ILjava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    return-void
.end method

.method public unregisterWsListener(Lcom/narvii/util/ws/WsService$WsListener;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->wsService:Lcom/narvii/livelayer/ws/LiveLayerWsService;

    invoke-virtual {v0, p1}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->unregisterWsListener(Lcom/narvii/util/ws/WsService$WsListener;)V

    return-void
.end method

.method public unsubscribe(Ljava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V
    .locals 2

    .line 92
    sget-boolean v0, Lcom/narvii/livelayer/LiveLayerService;->OPEN:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 98
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerService;->assembleTopic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 99
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService;->wsService:Lcom/narvii/livelayer/ws/LiveLayerWsService;

    iget v1, p0, Lcom/narvii/livelayer/LiveLayerService;->cid:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->unsubscribe(ILjava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    return-void
.end method
