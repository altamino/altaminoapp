.class Lcom/narvii/util/ws/WsService$7;
.super Ljava/lang/Object;
.source "WsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/ws/WsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/ws/WsService;


# direct methods
.method constructor <init>(Lcom/narvii/util/ws/WsService;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/narvii/util/ws/WsService$7;->this$0:Lcom/narvii/util/ws/WsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 429
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 432
    iget-object v2, p0, Lcom/narvii/util/ws/WsService$7;->this$0:Lcom/narvii/util/ws/WsService;

    iget-object v2, v2, Lcom/narvii/util/ws/WsService;->pendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    .line 433
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-wide/16 v5, 0x3a98

    if-eqz v4, :cond_3

    .line 434
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/util/ws/WsRequest;

    .line 435
    iget-wide v7, v4, Lcom/narvii/util/ws/WsRequest;->startTime:J

    add-long/2addr v7, v5

    cmp-long v5, v0, v7

    if-ltz v5, :cond_0

    .line 436
    iget-object v5, v4, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    if-eqz v5, :cond_2

    if-nez v3, :cond_1

    .line 438
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 440
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 445
    :cond_3
    iget-object v2, p0, Lcom/narvii/util/ws/WsService$7;->this$0:Lcom/narvii/util/ws/WsService;

    iget-object v2, v2, Lcom/narvii/util/ws/WsService;->runningRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 446
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 447
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/util/ws/WsRequest;

    .line 448
    iget-wide v7, v4, Lcom/narvii/util/ws/WsRequest;->startTime:J

    add-long/2addr v7, v5

    cmp-long v9, v0, v7

    if-ltz v9, :cond_4

    .line 449
    iget-object v7, v4, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    if-eqz v7, :cond_6

    if-nez v3, :cond_5

    .line 451
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 453
    :cond_5
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_8

    .line 459
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/ws/WsRequest;

    .line 460
    iget-object v1, v1, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    sget-object v2, Lcom/narvii/util/ws/WsError;->TIMEOUT:Lcom/narvii/util/ws/WsError;

    invoke-interface {v1, v2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    return-void
.end method
