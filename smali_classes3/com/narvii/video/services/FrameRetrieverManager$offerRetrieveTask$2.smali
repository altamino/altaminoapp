.class final Lcom/narvii/video/services/FrameRetrieverManager$offerRetrieveTask$2;
.super Ljava/lang/Object;
.source "FrameRetrieverManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/services/FrameRetrieverManager;->offerRetrieveTask(Lcom/narvii/video/interfaces/IAVClipInfoPack;IIILcom/narvii/video/interfaces/IVideoServiceCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $height:I

.field final synthetic $input:Lcom/narvii/video/interfaces/IAVClipInfoPack;

.field final synthetic $width:I

.field final synthetic this$0:Lcom/narvii/video/services/FrameRetrieverManager;


# direct methods
.method constructor <init>(Lcom/narvii/video/services/FrameRetrieverManager;Lcom/narvii/video/interfaces/IAVClipInfoPack;II)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager$offerRetrieveTask$2;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    iput-object p2, p0, Lcom/narvii/video/services/FrameRetrieverManager$offerRetrieveTask$2;->$input:Lcom/narvii/video/interfaces/IAVClipInfoPack;

    iput p3, p0, Lcom/narvii/video/services/FrameRetrieverManager$offerRetrieveTask$2;->$width:I

    iput p4, p0, Lcom/narvii/video/services/FrameRetrieverManager$offerRetrieveTask$2;->$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$offerRetrieveTask$2;->$input:Lcom/narvii/video/interfaces/IAVClipInfoPack;

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/narvii/video/services/FrameRetrieverManager$offerRetrieveTask$2;->$width:I

    iget v2, p0, Lcom/narvii/video/services/FrameRetrieverManager$offerRetrieveTask$2;->$height:I

    invoke-static {v0, v1, v2}, Lcom/narvii/editors/ffmpeg/FFmpegJni;->executeFrameRetrieving(Ljava/lang/String;II)V

    .line 123
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$offerRetrieveTask$2;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    invoke-static {v0}, Lcom/narvii/video/services/FrameRetrieverManager;->access$getInProcessFiles$p(Lcom/narvii/video/services/FrameRetrieverManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/services/FrameRetrieverManager$offerRetrieveTask$2;->$input:Lcom/narvii/video/interfaces/IAVClipInfoPack;

    invoke-interface {v1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method
