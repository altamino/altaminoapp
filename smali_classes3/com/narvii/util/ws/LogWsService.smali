.class public Lcom/narvii/util/ws/LogWsService;
.super Lcom/narvii/util/ws/WsService;
.source "LogWsService.java"


# instance fields
.field private syncTimeDiff:J


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/narvii/util/ws/WsService;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getSyncTimeDiff()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/narvii/util/ws/LogWsService;->syncTimeDiff:J

    return-wide v0
.end method

.method protected getWsHostPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "dead-ws"

    return-object v0
.end method

.method protected onWsOpen(Lokhttp3/Response;)V
    .locals 1

    const-string v0, "Date"

    .line 37
    invoke-virtual {p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p0, p1}, Lcom/narvii/util/ws/LogWsService;->syncTime(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected pingServer()V
    .locals 0

    return-void
.end method

.method syncTime(Ljava/lang/String;)V
    .locals 4

    .line 31
    :try_start_0
    invoke-static {p1}, Lcom/narvii/util/http/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/narvii/util/ws/LogWsService;->syncTimeDiff:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
