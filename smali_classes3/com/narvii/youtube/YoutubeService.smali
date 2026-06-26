.class public Lcom/narvii/youtube/YoutubeService;
.super Ljava/lang/Object;
.source "YoutubeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/youtube/YoutubeService$Task;,
        Lcom/narvii/youtube/YoutubeService$InitTask;,
        Lcom/narvii/youtube/YoutubeService$ExtractWorker;
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

.field dexDir:Ljava/io/File;

.field dexFile:Ljava/io/File;

.field final executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field extractor:Lcom/narvii/youtube/Extractor;

.field final handler:Landroid/os/Handler;

.field initTask:Lcom/narvii/youtube/YoutubeService$InitTask;

.field inited:Z

.field optDir:Ljava/io/File;

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
    .locals 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/narvii/youtube/YoutubeService;->handler:Landroid/os/Handler;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/youtube/YoutubeService;->runnings:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/youtube/YoutubeService;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 64
    iput-object p1, p0, Lcom/narvii/youtube/YoutubeService;->context:Lcom/narvii/app/NVContext;

    .line 65
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/youtube/YoutubeService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "dex"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/youtube/YoutubeService;->dexDir:Ljava/io/File;

    .line 66
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/youtube/YoutubeService;->dexDir:Ljava/io/File;

    const-string v2, "yt11.apk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/youtube/YoutubeService;->dexFile:Ljava/io/File;

    .line 67
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/youtube/YoutubeService;->dexDir:Ljava/io/File;

    const-string v2, "opt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/youtube/YoutubeService;->optDir:Ljava/io/File;

    const/4 v0, 0x3

    const-string v1, "youtube-dl"

    .line 68
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->createPriorityThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/youtube/YoutubeService;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 70
    :try_start_0
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$string;->stbt:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/youtube/YoutubeService;->stbt:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public abort(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoCallback;)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService;->runnings:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;

    if-eqz v0, :cond_0

    .line 172
    iget-object v1, v0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, v0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {v0}, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->access$000(Lcom/narvii/youtube/YoutubeService$ExtractWorker;)I

    move-result p2

    if-nez p2, :cond_0

    .line 173
    iget-object p2, p0, Lcom/narvii/youtube/YoutubeService;->runnings:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public exec(Ljava/lang/String;Lcom/narvii/youtube/YoutubeLoggingStub;Lcom/narvii/youtube/YoutubeVideoCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/youtube/YoutubeService;->exec(Ljava/lang/String;Lcom/narvii/youtube/YoutubeLoggingStub;Lcom/narvii/youtube/YoutubeVideoCallback;I)V

    return-void
.end method

.method public exec(Ljava/lang/String;Lcom/narvii/youtube/YoutubeLoggingStub;Lcom/narvii/youtube/YoutubeVideoCallback;I)V
    .locals 6

    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_b

    .line 99
    new-instance p2, Lcom/narvii/youtube/YoutubeService$2;

    invoke-direct {p2, p0, p3, p1}, Lcom/narvii/youtube/YoutubeService$2;-><init>(Lcom/narvii/youtube/YoutubeService;Lcom/narvii/youtube/YoutubeVideoCallback;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 107
    :cond_0
    iget-wide v0, p0, Lcom/narvii/youtube/YoutubeService;->stbt:J

    const-wide v2, 0x16bef2f8f80L

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/narvii/youtube/YoutubeService;->stbt:J

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    if-eqz p3, :cond_b

    .line 110
    new-instance p2, Lcom/narvii/youtube/YoutubeService$3;

    invoke-direct {p2, p0, p3, p1}, Lcom/narvii/youtube/YoutubeService$3;-><init>(Lcom/narvii/youtube/YoutubeService;Lcom/narvii/youtube/YoutubeVideoCallback;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 118
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/youtube/YoutubeService;->inited:Z

    if-nez v0, :cond_3

    .line 120
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService;->initTask:Lcom/narvii/youtube/YoutubeService$InitTask;

    if-nez v0, :cond_2

    .line 121
    new-instance v0, Lcom/narvii/youtube/YoutubeService$InitTask;

    invoke-direct {v0, p0}, Lcom/narvii/youtube/YoutubeService$InitTask;-><init>(Lcom/narvii/youtube/YoutubeService;)V

    iput-object v0, p0, Lcom/narvii/youtube/YoutubeService;->initTask:Lcom/narvii/youtube/YoutubeService$InitTask;

    .line 122
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService;->initTask:Lcom/narvii/youtube/YoutubeService$InitTask;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService;->initTask:Lcom/narvii/youtube/YoutubeService$InitTask;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/narvii/youtube/YoutubeService$InitTask;->add(Ljava/lang/String;Lcom/narvii/youtube/YoutubeLoggingStub;Lcom/narvii/youtube/YoutubeVideoCallback;I)V

    goto/16 :goto_0

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService;->extractor:Lcom/narvii/youtube/Extractor;

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    .line 128
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/youtube/ExtractResult;

    if-eqz v0, :cond_4

    .line 129
    invoke-virtual {v0}, Lcom/narvii/youtube/ExtractResult;->isValid()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 131
    invoke-virtual {v0, p1, p3}, Lcom/narvii/youtube/ExtractResult;->callback(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoCallback;)V

    if-lez p4, :cond_b

    .line 134
    iget-object p2, v0, Lcom/narvii/youtube/ExtractResult;->result:Lcom/narvii/youtube/YoutubeVideoList;

    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/youtube/YoutubeService;->onPreloadFinished(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoList;Z)V

    goto/16 :goto_0

    .line 139
    :cond_4
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService;->runnings:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;

    if-eqz v0, :cond_7

    .line 140
    iget-object v1, v0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->callbacks:Ljava/util/ArrayList;

    if-nez v1, :cond_5

    invoke-static {v0}, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->access$000(Lcom/narvii/youtube/YoutubeService$ExtractWorker;)I

    move-result v1

    if-lez v1, :cond_7

    :cond_5
    if-eqz p3, :cond_6

    .line 141
    iget-object p1, v0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 142
    iget-object p1, v0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_6
    invoke-static {v0}, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->access$000(Lcom/narvii/youtube/YoutubeService$ExtractWorker;)I

    move-result p1

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->access$002(Lcom/narvii/youtube/YoutubeService$ExtractWorker;I)I

    goto :goto_0

    .line 146
    :cond_7
    new-instance v0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/youtube/YoutubeService$ExtractWorker;-><init>(Lcom/narvii/youtube/YoutubeService;Ljava/lang/String;Lcom/narvii/youtube/YoutubeLoggingStub;)V

    if-eqz p3, :cond_8

    .line 148
    iget-object p2, v0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_8
    invoke-static {v0, p4}, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->access$002(Lcom/narvii/youtube/YoutubeService$ExtractWorker;I)I

    .line 151
    iget-object p2, p0, Lcom/narvii/youtube/YoutubeService;->runnings:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object p1, p0, Lcom/narvii/youtube/YoutubeService;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_9
    const-string p2, "Service not ready"

    const/16 p4, 0x9

    if-eqz p3, :cond_a

    .line 160
    invoke-interface {p3, p1, p4, p2}, Lcom/narvii/youtube/YoutubeVideoCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    .line 163
    :cond_a
    iget-object p3, p0, Lcom/narvii/youtube/YoutubeService;->context:Lcom/narvii/app/NVContext;

    const-string v0, "logging"

    invoke-interface {p3, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/util/logging/LoggingService;

    if-eqz p3, :cond_b

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "videoId"

    aput-object v3, v0, v2

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v1, "parserVersion"

    aput-object v1, v0, p1

    const/4 p1, 0x3

    const/16 v1, 0xb

    .line 165
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

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

    .line 178
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService;->context:Lcom/narvii/app/NVContext;

    const-string v1, "mediapreload"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/MediaPreloadService;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 180
    invoke-virtual {p2}, Lcom/narvii/youtube/YoutubeVideoList;->getUrl()Ljava/lang/String;

    move-result-object p2

    if-eqz p3, :cond_0

    .line 182
    invoke-virtual {v0, p1, p2}, Lcom/narvii/video/MediaPreloadService;->preload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_0
    new-instance p3, Lcom/narvii/youtube/YoutubeService$4;

    invoke-direct {p3, p0, v0, p1, p2}, Lcom/narvii/youtube/YoutubeService$4;-><init>(Lcom/narvii/youtube/YoutubeService;Lcom/narvii/video/MediaPreloadService;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x1f4

    invoke-static {p3, p1, p2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public preload(Ljava/util/List;Landroid/support/v4/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/youtube/YoutubeLoggingStub;",
            ">;)V"
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/narvii/youtube/YoutubeService$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/youtube/YoutubeService$1;-><init>(Lcom/narvii/youtube/YoutubeService;Ljava/util/List;Landroid/support/v4/util/ArrayMap;)V

    const-wide/16 p1, 0x64

    invoke-static {v0, p1, p2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
