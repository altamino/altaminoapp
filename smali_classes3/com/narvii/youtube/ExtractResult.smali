.class public Lcom/narvii/youtube/ExtractResult;
.super Ljava/lang/Object;
.source "ExtractResult.java"


# instance fields
.field public errorCode:I

.field public errorMsg:Ljava/lang/String;

.field public result:Lcom/narvii/youtube/YoutubeVideoList;

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/youtube/ExtractResult;->time:J

    return-void
.end method


# virtual methods
.method callback(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoCallback;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/narvii/youtube/ExtractResult;->result:Lcom/narvii/youtube/YoutubeVideoList;

    if-nez v0, :cond_1

    .line 30
    iget v0, p0, Lcom/narvii/youtube/ExtractResult;->errorCode:I

    iget-object v1, p0, Lcom/narvii/youtube/ExtractResult;->errorMsg:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1}, Lcom/narvii/youtube/YoutubeVideoCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_1
    invoke-interface {p2, p1, v0}, Lcom/narvii/youtube/YoutubeVideoCallback;->onFinish(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoList;)V

    :goto_0
    return-void
.end method

.method isValid()Z
    .locals 7

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/narvii/youtube/ExtractResult;->time:J

    sub-long/2addr v0, v2

    .line 21
    iget-object v2, p0, Lcom/narvii/youtube/ExtractResult;->result:Lcom/narvii/youtube/YoutubeVideoList;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x7530

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x1499700

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_1

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/narvii/youtube/ExtractResult;->result:Lcom/narvii/youtube/YoutubeVideoList;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1, v1}, Lcom/narvii/youtube/YoutubeVideoList;->getUrl(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/narvii/youtube/ExtractResult;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/youtube/ExtractResult;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
