.class public Lcom/narvii/youtube/ExtractResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public errorCode:I

.field public errorMsg:Ljava/lang/String;

.field public result:Lcom/narvii/youtube/YoutubeVideoList;

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    move-result-wide v0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/narvii/youtube/ExtractResult;->time:J

    .line 10
    return-void
.end method


# virtual methods
.method callback(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoCallback;)V
    .locals 2

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/youtube/ExtractResult;->result:Lcom/narvii/youtube/YoutubeVideoList;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget v0, p0, Lcom/narvii/youtube/ExtractResult;->errorCode:I

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/youtube/ExtractResult;->errorMsg:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-interface {p2, p1, v0, v1}, Lcom/narvii/youtube/YoutubeVideoCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-interface {p2, p1, v0}, Lcom/narvii/youtube/YoutubeVideoCallback;->onFinish(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoList;)V

    .line 19
    :goto_0
    return-void
.end method

.method isValid()Z
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-wide v2, p0, Lcom/narvii/youtube/ExtractResult;->time:J

    .line 7
    sub-long/2addr v0, v2

    .line 8
    .line 9
    iget-object v2, p0, Lcom/narvii/youtube/ExtractResult;->result:Lcom/narvii/youtube/YoutubeVideoList;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    const-wide/16 v2, 0x7530

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    const-wide/32 v2, 0x1499700

    .line 18
    .line 19
    :goto_0
    const-wide/16 v4, 0x0

    .line 20
    .line 21
    cmp-long v4, v0, v4

    .line 22
    .line 23
    if-ltz v4, :cond_1

    .line 24
    .line 25
    cmp-long v0, v0, v2

    .line 26
    .line 27
    if-gez v0, :cond_1

    .line 28
    const/4 v0, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/youtube/ExtractResult;->result:Lcom/narvii/youtube/YoutubeVideoList;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v1}, Lcom/narvii/youtube/YoutubeVideoList;->getUrl(II)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    iget v1, p0, Lcom/narvii/youtube/ExtractResult;->errorCode:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, ", "

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/youtube/ExtractResult;->errorMsg:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
