.class Lcom/narvii/youtube/YoutubeService$ExtractWorker;
.super Ljava/lang/Object;
.source "YoutubeService.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/youtube/YoutubeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExtractWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lcom/narvii/youtube/YoutubeService$ExtractWorker;",
        ">;"
    }
.end annotation


# instance fields
.field final callbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/youtube/YoutubeVideoCallback;",
            ">;"
        }
    .end annotation
.end field

.field loggingStub:Lcom/narvii/youtube/YoutubeLoggingStub;

.field private preloadOrder:I

.field result:Lcom/narvii/youtube/ExtractResult;

.field final synthetic this$0:Lcom/narvii/youtube/YoutubeService;

.field final videoId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/youtube/YoutubeService;Ljava/lang/String;Lcom/narvii/youtube/YoutubeLoggingStub;)V
    .locals 1

    .line 201
    iput-object p1, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->this$0:Lcom/narvii/youtube/YoutubeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->callbacks:Ljava/util/ArrayList;

    .line 202
    iput-object p2, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->videoId:Ljava/lang/String;

    .line 203
    iput-object p3, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->loggingStub:Lcom/narvii/youtube/YoutubeLoggingStub;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/youtube/YoutubeService$ExtractWorker;)I
    .locals 0

    .line 194
    iget p0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->preloadOrder:I

    return p0
.end method

.method static synthetic access$002(Lcom/narvii/youtube/YoutubeService$ExtractWorker;I)I
    .locals 0

    .line 194
    iput p1, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->preloadOrder:I

    return p1
.end method


# virtual methods
.method public compareTo(Lcom/narvii/youtube/YoutubeService$ExtractWorker;)I
    .locals 4

    .line 285
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 286
    iget-object v0, p1, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 287
    iget v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->preloadOrder:I

    iget p1, p1, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->preloadOrder:I

    if-le v0, p1, :cond_0

    return v1

    :cond_0
    if-ge v0, p1, :cond_1

    return v3

    :cond_1
    return v2

    :cond_2
    return v3

    .line 298
    :cond_3
    iget-object p1, p1, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 194
    check-cast p1, Lcom/narvii/youtube/YoutubeService$ExtractWorker;

    invoke-virtual {p0, p1}, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->compareTo(Lcom/narvii/youtube/YoutubeService$ExtractWorker;)I

    move-result p1

    return p1
.end method

.method public run()V
    .locals 8

    .line 208
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->result:Lcom/narvii/youtube/ExtractResult;

    if-eqz v0, :cond_7

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_7

    .line 209
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->result:Lcom/narvii/youtube/ExtractResult;

    iget-object v1, v0, Lcom/narvii/youtube/ExtractResult;->result:Lcom/narvii/youtube/YoutubeVideoList;

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->this$0:Lcom/narvii/youtube/YoutubeService;

    iget-object v1, v1, Lcom/narvii/youtube/YoutubeService;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->videoId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->this$0:Lcom/narvii/youtube/YoutubeService;

    iget-object v0, v0, Lcom/narvii/youtube/YoutubeService;->runnings:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->result:Lcom/narvii/youtube/ExtractResult;

    iget v0, v0, Lcom/narvii/youtube/ExtractResult;->errorCode:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->this$0:Lcom/narvii/youtube/YoutubeService;

    iget-object v0, v0, Lcom/narvii/youtube/YoutubeService;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->videoId:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->result:Lcom/narvii/youtube/ExtractResult;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/youtube/YoutubeVideoCallback;

    if-eqz v1, :cond_2

    .line 220
    iget-object v2, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->result:Lcom/narvii/youtube/ExtractResult;

    iget-object v3, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->videoId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/narvii/youtube/ExtractResult;->callback(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoCallback;)V

    goto :goto_0

    .line 224
    :cond_3
    iget v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->preloadOrder:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->result:Lcom/narvii/youtube/ExtractResult;

    iget-object v0, v0, Lcom/narvii/youtube/ExtractResult;->result:Lcom/narvii/youtube/YoutubeVideoList;

    if-eqz v0, :cond_4

    .line 225
    iget-object v1, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->this$0:Lcom/narvii/youtube/YoutubeService;

    iget-object v2, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->videoId:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/narvii/youtube/YoutubeService;->onPreloadFinished(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoList;Z)V

    .line 228
    :cond_4
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->result:Lcom/narvii/youtube/ExtractResult;

    iget-object v0, v0, Lcom/narvii/youtube/ExtractResult;->result:Lcom/narvii/youtube/YoutubeVideoList;

    const-string v1, "Result"

    const-string v2, "YoutubeResult"

    const-string v3, "statistics"

    if-nez v0, :cond_6

    .line 229
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->this$0:Lcom/narvii/youtube/YoutubeService;

    iget-object v0, v0, Lcom/narvii/youtube/YoutubeService;->context:Lcom/narvii/app/NVContext;

    const-string v4, "logging"

    invoke-interface {v0, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    if-eqz v0, :cond_b

    .line 231
    iget-object v4, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->loggingStub:Lcom/narvii/youtube/YoutubeLoggingStub;

    if-nez v4, :cond_5

    .line 232
    new-instance v4, Lcom/narvii/youtube/YoutubeLoggingStub;

    invoke-direct {v4}, Lcom/narvii/youtube/YoutubeLoggingStub;-><init>()V

    iput-object v4, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->loggingStub:Lcom/narvii/youtube/YoutubeLoggingStub;

    .line 233
    iget-object v4, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->loggingStub:Lcom/narvii/youtube/YoutubeLoggingStub;

    iget-object v5, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->videoId:Ljava/lang/String;

    iput-object v5, v4, Lcom/narvii/youtube/YoutubeLoggingStub;->videoId:Ljava/lang/String;

    .line 235
    :cond_5
    iget-object v4, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->loggingStub:Lcom/narvii/youtube/YoutubeLoggingStub;

    iget-object v5, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->result:Lcom/narvii/youtube/ExtractResult;

    iget v6, v5, Lcom/narvii/youtube/ExtractResult;->errorCode:I

    iput v6, v4, Lcom/narvii/youtube/YoutubeLoggingStub;->errorCode:I

    .line 236
    iget-object v5, v5, Lcom/narvii/youtube/ExtractResult;->errorMsg:Ljava/lang/String;

    iput-object v5, v4, Lcom/narvii/youtube/YoutubeLoggingStub;->message:Ljava/lang/String;

    .line 237
    invoke-virtual {v4}, Lcom/narvii/youtube/YoutubeLoggingStub;->buildYoutubeParseErrorParams()[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "YoutubeParseError"

    invoke-interface {v0, v5, v4}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->this$0:Lcom/narvii/youtube/YoutubeService;

    iget-object v0, v0, Lcom/narvii/youtube/YoutubeService;->context:Lcom/narvii/app/NVContext;

    :cond_6
    goto/16 :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_9

    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->preloadOrder:I

    if-nez v1, :cond_8

    return-void

    :cond_8
    const-wide/16 v1, 0x64

    .line 257
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    nop

    .line 261
    :cond_9
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->preloadOrder:I

    if-nez v0, :cond_a

    return-void

    :cond_a
    const/4 v0, 0x0

    .line 266
    :try_start_1
    iget-object v1, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->this$0:Lcom/narvii/youtube/YoutubeService;

    iget-object v1, v1, Lcom/narvii/youtube/YoutubeService;->extractor:Lcom/narvii/youtube/Extractor;

    iget-object v2, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->videoId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/narvii/youtube/Extractor;->extract(Ljava/lang/String;)Lcom/narvii/youtube/ExtractResult;

    move-result-object v0

    const-string v1, "youtube"

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extract result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/narvii/youtube/ExtractResult;->result:Lcom/narvii/youtube/YoutubeVideoList;

    invoke-virtual {v3}, Lcom/narvii/youtube/YoutubeVideoList;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    iput-object v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->result:Lcom/narvii/youtube/ExtractResult;

    goto :goto_3

    .line 273
    :catchall_0
    :try_start_2
    new-instance v1, Lcom/narvii/youtube/ExtractResult;

    invoke-direct {v1}, Lcom/narvii/youtube/ExtractResult;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v0, 0x1

    .line 274
    :try_start_3
    iput v0, v1, Lcom/narvii/youtube/ExtractResult;->errorCode:I

    const-string v0, "Error"

    .line 275
    iput-object v0, v1, Lcom/narvii/youtube/ExtractResult;->errorMsg:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 269
    :catch_1
    :try_start_4
    new-instance v1, Lcom/narvii/youtube/ExtractResult;

    invoke-direct {v1}, Lcom/narvii/youtube/ExtractResult;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v0, 0x2

    .line 270
    :try_start_5
    iput v0, v1, Lcom/narvii/youtube/ExtractResult;->errorCode:I

    const-string v0, "Network error"

    .line 271
    iput-object v0, v1, Lcom/narvii/youtube/ExtractResult;->errorMsg:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 277
    :goto_2
    iput-object v1, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->result:Lcom/narvii/youtube/ExtractResult;

    .line 278
    :goto_3
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->this$0:Lcom/narvii/youtube/YoutubeService;

    iget-object v0, v0, Lcom/narvii/youtube/YoutubeService;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_b
    :goto_4
    return-void

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 277
    :goto_5
    iput-object v1, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->result:Lcom/narvii/youtube/ExtractResult;

    .line 278
    iget-object v1, p0, Lcom/narvii/youtube/YoutubeService$ExtractWorker;->this$0:Lcom/narvii/youtube/YoutubeService;

    iget-object v1, v1, Lcom/narvii/youtube/YoutubeService;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method
