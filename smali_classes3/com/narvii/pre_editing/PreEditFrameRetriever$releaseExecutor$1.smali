.class final Lcom/narvii/pre_editing/PreEditFrameRetriever$releaseExecutor$1;
.super Ljava/lang/Object;
.source "PreEditFrameRetriever.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pre_editing/PreEditFrameRetriever;->releaseExecutor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/pre_editing/PreEditFrameRetriever;


# direct methods
.method constructor <init>(Lcom/narvii/pre_editing/PreEditFrameRetriever;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever$releaseExecutor$1;->this$0:Lcom/narvii/pre_editing/PreEditFrameRetriever;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever$releaseExecutor$1;->this$0:Lcom/narvii/pre_editing/PreEditFrameRetriever;

    invoke-static {v0}, Lcom/narvii/pre_editing/PreEditFrameRetriever;->access$getReaderList$p(Lcom/narvii/pre_editing/PreEditFrameRetriever;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/pre_editing/frame/VideoFrameReader;

    .line 44
    invoke-virtual {v1}, Lcom/narvii/pre_editing/frame/VideoFrameReader;->clear()V

    goto :goto_0

    :cond_0
    return-void
.end method
