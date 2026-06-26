.class public final Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3$1;
.super Ljava/lang/Object;
.source "FrameRetrieverManager.kt"

# interfaces
.implements Lffmpeg/base/IEditorExecuteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $dir:Ljava/io/File;

.field final synthetic $output:Ljava/io/File;

.field final synthetic this$0:Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;


# direct methods
.method constructor <init>(Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 388
    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3$1;->this$0:Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;

    iput-object p2, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3$1;->$output:Ljava/io/File;

    iput-object p3, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3$1;->$dir:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .line 388
    invoke-static {p0}, Lffmpeg/base/IEditorExecuteCallback$DefaultImpls;->onCancel(Lffmpeg/base/IEditorExecuteCallback;)V

    return-void
.end method

.method public onFail()V
    .locals 0

    .line 388
    invoke-static {p0}, Lffmpeg/base/IEditorExecuteCallback$DefaultImpls;->onFail(Lffmpeg/base/IEditorExecuteCallback;)V

    return-void
.end method

.method public onProgress(F)V
    .locals 0

    .line 388
    invoke-static {p0, p1}, Lffmpeg/base/IEditorExecuteCallback$DefaultImpls;->onProgress(Lffmpeg/base/IEditorExecuteCallback;F)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 388
    invoke-static {p0}, Lffmpeg/base/IEditorExecuteCallback$DefaultImpls;->onStart(Lffmpeg/base/IEditorExecuteCallback;)V

    return-void
.end method

.method public onSuccess()V
    .locals 4

    .line 390
    invoke-static {p0}, Lffmpeg/base/IEditorExecuteCallback$DefaultImpls;->onSuccess(Lffmpeg/base/IEditorExecuteCallback;)V

    .line 391
    new-instance v0, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-direct {v0}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 392
    iget-object v1, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3$1;->$output:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 393
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3$1;->$dir:Ljava/io/File;

    const-string v3, "wave.jpg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 394
    new-instance v2, Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    const/16 v3, 0x200

    invoke-direct {v2, v0, v1, v3}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;I)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->horizontalFlip(Z)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->build()Lffmpeg/base/MediaEditingConfig;

    move-result-object v0

    .line 395
    iget-object v1, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3$1;->this$0:Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;

    iget-object v1, v1, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    invoke-static {v1}, Lcom/narvii/video/services/FrameRetrieverManager;->access$getMediaRetriever$p(Lcom/narvii/video/services/FrameRetrieverManager;)Lffmpeg/base/IEditor;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3$1;->this$0:Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;

    iget-object v2, v2, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    invoke-static {v2}, Lcom/narvii/video/services/FrameRetrieverManager;->access$getAudioWaveExecutor$p(Lcom/narvii/video/services/FrameRetrieverManager;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lffmpeg/base/IEditor;->execute(Lffmpeg/base/MediaEditingConfig;Ljava/util/concurrent/ExecutorService;Lffmpeg/base/IEditorExecuteCallback;)V

    return-void
.end method
