.class final Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter$run$1;
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
.field final synthetic $bitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;


# direct methods
.method constructor <init>(Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter$run$1;->this$0:Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;

    iput-object p2, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter$run$1;->$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 440
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter$run$1;->this$0:Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;

    invoke-static {v0}, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->access$getPrey$p(Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter$run$1;->this$0:Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;

    invoke-virtual {v0}, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->getBitmapDecoding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter$run$1;->this$0:Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;

    invoke-virtual {v0}, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->getCallback()Lcom/narvii/video/interfaces/IVideoServiceCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter$run$1;->this$0:Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;

    invoke-virtual {v1}, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->getFrameTime()I

    move-result v1

    iget-object v2, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter$run$1;->$bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onFrameBitmapLoaded(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter$run$1;->this$0:Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;

    invoke-virtual {v0}, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->getCallback()Lcom/narvii/video/interfaces/IVideoServiceCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter$run$1;->this$0:Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;

    invoke-virtual {v1}, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->getFrameTime()I

    move-result v1

    iget-object v2, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter$run$1;->this$0:Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;

    invoke-static {v2}, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->access$getPrey$p(Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;)Ljava/io/File;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onFramePicturesLoaded(ILjava/io/File;)V

    goto :goto_0

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter$run$1;->this$0:Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;

    invoke-virtual {v0}, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->getCallback()Lcom/narvii/video/interfaces/IVideoServiceCallback;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Failed to get frame screenshot"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onActionFailed(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
