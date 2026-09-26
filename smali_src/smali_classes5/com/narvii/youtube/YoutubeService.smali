.class public Lcom/narvii/youtube/YoutubeService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/youtube/YoutubeService$InitTask;,
        Lcom/narvii/youtube/YoutubeService$ExtractWorker;,
        Lcom/narvii/youtube/YoutubeService$Task;
    }
.end annotation


# static fields
.field static final VER:I = 0xb


# instance fields
.field final cache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/youtube/ExtractResult;",
            ">;"
        }
    .end annotation
.end field

.field context:Lcom/narvii/app/NVContext;

.field final executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field extractor:Lcom/narvii/youtube/Extractor;

.field final handler:Landroid/os/Handler;

.field initTask:Lcom/narvii/youtube/YoutubeService$InitTask;

.field inited:Z

.field preloadIndex:I

.field final runnings:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/youtube/YoutubeService$ExtractWorker;",
            ">;"
        }
    .end annotation
.end field

.field stbt:J


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/youtube/YoutubeService;->handler:Landroid/os/Handler;

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/youtube/YoutubeService;->runnings:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/youtube/YoutubeService;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/youtube/YoutubeService;->context:Lcom/narvii/app/NVContext;

    .line 31
    const/4 v0, 0x3

    .line 32
    .line 33
    .line 34
    const-string/jumbo v1, "youtube-dl"

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->createPriorityThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    iput-object v0, p0, Lcom/narvii/youtube/YoutubeService;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 41
    .line 42
    .line 43
    :try_start_0
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    sget v0, Lcom/narvii/lib/R$string;->stbt:I

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 54
    move-result-wide v0

    .line 55
    .line 56
    iput-wide v0, p0, Lcom/narvii/youtube/YoutubeService;->stbt:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :catch_0
    return-void
.end method

.method public static synthetic a(Lcom/narvii/youtube/YoutubeService;Ljava/util/List;Landroidx/collection/ArrayMap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/youtube/YoutubeService;->lambda$preload$0(Ljava/util/List;Landroidx/collection/ArrayMap;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/youtube/YoutubeVideoCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/youtube/YoutubeService;->lambda$exec$1(Lcom/narvii/youtube/YoutubeVideoCallback;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$exec$1(Lcom/narvii/youtube/YoutubeVideoCallback;Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x9

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "videoId is null"

    .line 6
    .line 7
    .line 8
    invoke-interface {p0, p1, v0, v1}, Lcom/narvii/youtube/YoutubeVideoCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    return-void
.end method

.method private synthetic lambda$preload$0(Ljava/util/List;Landroidx/collection/ArrayMap;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    :goto_0
    if-ge v1, v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    check-cast v2, Ljava/lang/String;

    .line 14
    .line 15
    iget v3, p0, Lcom/narvii/youtube/YoutubeService;->preloadIndex:I

    .line 16
    .line 17
    sub-int v4, v0, v1

    .line 18
    add-int/2addr v3, v4

    .line 19
    const/4 v4, 0x0

    .line 20
    .line 21
    if-nez p2, :cond_0

    .line 22
    move-object v5, v4

    .line 23
    goto :goto_1

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p2, v2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v5

    .line 28
    .line 29
    check-cast v5, Lcom/narvii/youtube/YoutubeLoggingStub;

    .line 30
    .line 31
    .line 32
    :goto_1
    invoke-virtual {p0, v2, v5, v4, v3}, Lcom/narvii/youtube/YoutubeService;->exec(Ljava/lang/String;Lcom/narvii/youtube/YoutubeLoggingStub;Lcom/narvii/youtube/YoutubeVideoCallback;I)V

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    iget p1, p0, Lcom/narvii/youtube/YoutubeService;->preloadIndex:I

    .line 38
    add-int/2addr p1, v0

    .line 39
    .line 40
    iput p1, p0, Lcom/narvii/youtube/YoutubeService;->preloadIndex:I

    .line 41
    return-void
.end method


# virtual methods
.method public abort(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoCallback;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService;->runnings:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, v0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->callbacks:Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    move-result p2

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    iget-object p2, v0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->callbacks:Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 24
    move-result p2

    .line 25
    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->a(Lcom/narvii/youtube/YoutubeService$ExtractWorker;)I

    .line 30
    move-result p2

    .line 31
    .line 32
    if-nez p2, :cond_0

    .line 33
    .line 34
    iget-object p2, p0, Lcom/narvii/youtube/YoutubeService;->runnings:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    :cond_0
    return-void
.end method

.method public exec(Ljava/lang/String;Lcom/narvii/youtube/YoutubeLoggingStub;Lcom/narvii/youtube/YoutubeVideoCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/youtube/YoutubeService;->exec(Ljava/lang/String;Lcom/narvii/youtube/YoutubeLoggingStub;Lcom/narvii/youtube/YoutubeVideoCallback;I)V

    return-void
.end method

.method public exec(Ljava/lang/String;Lcom/narvii/youtube/YoutubeLoggingStub;Lcom/narvii/youtube/YoutubeVideoCallback;I)V
    .locals 6

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_b

    .line 3
    new-instance p2, Lcom/narvii/youtube/b;

    invoke-direct {p2, p3, p1}, Lcom/narvii/youtube/b;-><init>(Lcom/narvii/youtube/YoutubeVideoCallback;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/narvii/youtube/YoutubeService;->stbt:J

    const-wide v2, 0x16bef2f8f80L

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/narvii/youtube/YoutubeService;->stbt:J

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    if-eqz p3, :cond_b

    .line 5
    new-instance p2, Lcom/narvii/youtube/YoutubeService$1;

    invoke-direct {p2, p0, p3, p1}, Lcom/narvii/youtube/YoutubeService$1;-><init>(Lcom/narvii/youtube/YoutubeService;Lcom/narvii/youtube/YoutubeVideoCallback;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/narvii/youtube/YoutubeService;->inited:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService;->initTask:Lcom/narvii/youtube/YoutubeService$InitTask;

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Lcom/narvii/youtube/YoutubeService$InitTask;

    invoke-direct {v0, p0}, Lcom/narvii/youtube/YoutubeService$InitTask;-><init>(Lcom/narvii/youtube/YoutubeService;)V

    iput-object v0, p0, Lcom/narvii/youtube/YoutubeService;->initTask:Lcom/narvii/youtube/YoutubeService$InitTask;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService;->initTask:Lcom/narvii/youtube/YoutubeService$InitTask;

    .line 8
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/narvii/youtube/YoutubeService$InitTask;->add(Ljava/lang/String;Lcom/narvii/youtube/YoutubeLoggingStub;Lcom/narvii/youtube/YoutubeVideoCallback;I)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService;->extractor:Lcom/narvii/youtube/Extractor;

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/youtube/ExtractResult;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v0}, Lcom/narvii/youtube/ExtractResult;->isValid()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {v0, p1, p3}, Lcom/narvii/youtube/ExtractResult;->callback(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoCallback;)V

    if-lez p4, :cond_b

    .line 12
    iget-object p2, v0, Lcom/narvii/youtube/ExtractResult;->result:Lcom/narvii/youtube/YoutubeVideoList;

    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/youtube/YoutubeService;->onPreloadFinished(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoList;Z)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService;->runnings:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;

    if-eqz v0, :cond_7

    .line 14
    iget-object v1, v0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->callbacks:Ljava/util/ArrayList;

    if-nez v1, :cond_5

    invoke-static {v0}, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->a(Lcom/narvii/youtube/YoutubeService$ExtractWorker;)I

    move-result v1

    if-lez v1, :cond_7

    :cond_5
    if-eqz p3, :cond_6

    .line 15
    iget-object p1, v0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 16
    iget-object p1, v0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_6
    invoke-static {v0}, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->a(Lcom/narvii/youtube/YoutubeService$ExtractWorker;)I

    move-result p1

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->b(Lcom/narvii/youtube/YoutubeService$ExtractWorker;I)V

    goto :goto_0

    .line 18
    :cond_7
    new-instance v0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/youtube/YoutubeService$ExtractWorker;-><init>(Lcom/narvii/youtube/YoutubeService;Ljava/lang/String;Lcom/narvii/youtube/YoutubeLoggingStub;)V

    if-eqz p3, :cond_8

    iget-object p2, v0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->callbacks:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_8
    invoke-static {v0, p4}, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->b(Lcom/narvii/youtube/YoutubeService$ExtractWorker;I)V

    iget-object p2, p0, Lcom/narvii/youtube/YoutubeService;->runnings:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/narvii/youtube/YoutubeService;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 22
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_9
    const-string p2, "Service not ready"

    const/16 p4, 0x9

    if-eqz p3, :cond_a

    .line 23
    invoke-interface {p3, p1, p4, p2}, Lcom/narvii/youtube/YoutubeVideoCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    :cond_a
    iget-object p3, p0, Lcom/narvii/youtube/YoutubeService;->context:Lcom/narvii/app/NVContext;

    const-string v0, "logging"

    .line 24
    invoke-interface {p3, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/util/logging/LoggingService;

    if-eqz p3, :cond_b

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "videoId"

    aput-object v3, v0, v2

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v1, "parserVersion"

    aput-object v1, v0, p1

    const/16 p1, 0xb

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 p1, 0x4

    const-string v1, "code"

    aput-object v1, v0, p1

    const/4 p1, 0x5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v0, p1

    const/4 p1, 0x6

    const-string p4, "message"

    aput-object p4, v0, p1

    const/4 p1, 0x7

    aput-object p2, v0, p1

    const-string p1, "YoutubeParseError"

    invoke-interface {p3, p1, v0}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    :goto_0
    return-void
.end method

.method onPreloadFinished(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoList;Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "mediapreload"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/video/MediaPreloadService;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/narvii/youtube/YoutubeVideoList;->getUrl()Ljava/lang/String;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1, p2}, Lcom/narvii/video/MediaPreloadService;->preload(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    new-instance p3, Lcom/narvii/youtube/YoutubeService$2;

    .line 27
    .line 28
    .line 29
    invoke-direct {p3, p0, v0, p1, p2}, Lcom/narvii/youtube/YoutubeService$2;-><init>(Lcom/narvii/youtube/YoutubeService;Lcom/narvii/video/MediaPreloadService;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    const-wide/16 p1, 0x1f4

    .line 32
    .line 33
    .line 34
    invoke-static {p3, p1, p2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method public preload(Ljava/util/List;Landroidx/collection/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/youtube/YoutubeLoggingStub;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/youtube/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/youtube/a;-><init>(Lcom/narvii/youtube/YoutubeService;Ljava/util/List;Landroidx/collection/ArrayMap;)V

    .line 6
    .line 7
    const-wide/16 p1, 0x64

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p1, p2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 11
    return-void
.end method
