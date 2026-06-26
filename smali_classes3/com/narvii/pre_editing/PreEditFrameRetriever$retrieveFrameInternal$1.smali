.class final Lcom/narvii/pre_editing/PreEditFrameRetriever$retrieveFrameInternal$1;
.super Ljava/lang/Object;
.source "PreEditFrameRetriever.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pre_editing/PreEditFrameRetriever;->retrieveFrameInternal(Ljava/util/List;Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreEditFrameRetriever.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreEditFrameRetriever.kt\ncom/narvii/pre_editing/PreEditFrameRetriever$retrieveFrameInternal$1\n*L\n1#1,59:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;

.field final synthetic $timeMsList:Ljava/util/List;

.field final synthetic this$0:Lcom/narvii/pre_editing/PreEditFrameRetriever;


# direct methods
.method constructor <init>(Lcom/narvii/pre_editing/PreEditFrameRetriever;Ljava/util/List;Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever$retrieveFrameInternal$1;->this$0:Lcom/narvii/pre_editing/PreEditFrameRetriever;

    iput-object p2, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever$retrieveFrameInternal$1;->$timeMsList:Ljava/util/List;

    iput-object p3, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever$retrieveFrameInternal$1;->$callback:Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever$retrieveFrameInternal$1;->this$0:Lcom/narvii/pre_editing/PreEditFrameRetriever;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever$retrieveFrameInternal$1;->this$0:Lcom/narvii/pre_editing/PreEditFrameRetriever;

    invoke-static {v1}, Lcom/narvii/pre_editing/PreEditFrameRetriever;->access$getReaderList$p(Lcom/narvii/pre_editing/PreEditFrameRetriever;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/narvii/pre_editing/frame/VideoFrameReader;

    invoke-virtual {v3}, Lcom/narvii/pre_editing/frame/VideoFrameReader;->isWorking()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Lcom/narvii/pre_editing/frame/VideoFrameReader;

    .line 55
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit v0

    if-eqz v2, :cond_2

    .line 56
    iget-object v0, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever$retrieveFrameInternal$1;->$timeMsList:Ljava/util/List;

    iget-object v1, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever$retrieveFrameInternal$1;->$callback:Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;

    invoke-virtual {v2, v0, v1}, Lcom/narvii/pre_editing/frame/VideoFrameReader;->start(Ljava/util/List;Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 53
    monitor-exit v0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
