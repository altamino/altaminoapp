.class final Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter$run$2;
.super Ljava/lang/Object;
.source "FrameRetrieverManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;


# direct methods
.method constructor <init>(Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter$run$2;->this$0:Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 459
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter$run$2;->this$0:Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;

    invoke-virtual {v0}, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->getCallback()Lcom/narvii/video/interfaces/IVideoServiceCallback;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Failed to get frame screenshot"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onActionFailed(Ljava/lang/Exception;)V

    return-void
.end method
