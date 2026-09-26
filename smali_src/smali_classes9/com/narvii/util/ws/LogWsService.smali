.class public Lcom/narvii/util/ws/LogWsService;
.super Lcom/narvii/util/ws/WsService;
.source "SourceFile"


# instance fields
.field private syncTimeDiff:J


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/util/ws/WsService;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    return-void
.end method


# virtual methods
.method public getSyncTimeDiff()J
    .locals 2

    iget-wide v0, p0, Lcom/narvii/util/ws/LogWsService;->syncTimeDiff:J

    return-wide v0
.end method

.method protected onWsOpen(Lokhttp3/Response;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "Date"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/narvii/util/ws/LogWsService;->syncTime(Ljava/lang/String;)V

    .line 12
    :cond_0
    return-void
.end method

.method protected pingServer()V
    .locals 0

    return-void
.end method

.method syncTime(Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/narvii/util/http/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    move-result-wide v2

    .line 13
    sub-long/2addr v0, v2

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/narvii/util/ws/LogWsService;->syncTimeDiff:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :catch_0
    return-void
.end method
