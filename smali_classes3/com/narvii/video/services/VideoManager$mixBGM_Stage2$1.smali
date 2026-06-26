.class public final Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;
.super Ljava/lang/Object;
.source "VideoManager.kt"

# interfaces
.implements Lffmpeg/base/IEditorExecuteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/services/VideoManager;->mixBGM_Stage2(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;ILcom/narvii/video/interfaces/IVideoServiceCallback;)Lffmpeg/base/MediaEditingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

.field final synthetic $output:Ljava/io/File;

.field final synthetic $tmpAudioPieceFile:Ljava/io/File;

.field final synthetic $video:Lcom/narvii/video/model/AVClipInfoPack;

.field final synthetic this$0:Lcom/narvii/video/services/VideoManager;


# direct methods
.method constructor <init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/interfaces/IVideoServiceCallback;",
            "Ljava/io/File;",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 244
    iput-object p1, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->this$0:Lcom/narvii/video/services/VideoManager;

    iput-object p2, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    iput-object p3, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$tmpAudioPieceFile:Ljava/io/File;

    iput-object p4, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$video:Lcom/narvii/video/model/AVClipInfoPack;

    iput-object p5, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$output:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$onTaskStopped(Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;)V
    .locals 0

    .line 244
    invoke-direct {p0}, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->onTaskStopped()V

    return-void
.end method

.method private final onTaskStopped()V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$tmpAudioPieceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$tmpAudioPieceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$output:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$output:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 283
    :cond_0
    invoke-direct {p0}, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->onTaskStopped()V

    .line 284
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onActionCancelled()V

    :cond_1
    return-void
.end method

.method public onFail()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$output:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$output:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->onTaskStopped()V

    .line 276
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onActionFailed(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public onProgress(F)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float p1, p1, v1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onProgress(FLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 244
    invoke-static {p0}, Lffmpeg/base/IEditorExecuteCallback$DefaultImpls;->onStart(Lffmpeg/base/IEditorExecuteCallback;)V

    return-void
.end method

.method public onSuccess()V
    .locals 7

    .line 250
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$tmpAudioPieceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onActionFailed(Ljava/lang/Exception;)V

    goto :goto_0

    .line 253
    :cond_0
    new-instance v0, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-direct {v0}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 254
    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$tmpAudioPieceFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 255
    new-instance v1, Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    iget-object v2, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$video:Lcom/narvii/video/model/AVClipInfoPack;

    iget-object v3, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$output:Ljava/io/File;

    const/16 v4, 0x80

    invoke-direct {v1, v2, v3, v4}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;I)V

    .line 256
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->additionalAudioInputList(Ljava/util/List;)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->forceAudioCodecCopy(Z)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->build()Lffmpeg/base/MediaEditingConfig;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onExecutingTaskChanged(Lffmpeg/base/MediaEditingConfig;)V

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->this$0:Lcom/narvii/video/services/VideoManager;

    invoke-static {v1}, Lcom/narvii/video/services/VideoManager;->access$getDelegate$p(Lcom/narvii/video/services/VideoManager;)Lffmpeg/base/IEditor;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->this$0:Lcom/narvii/video/services/VideoManager;

    invoke-static {v2}, Lcom/narvii/video/services/VideoManager;->access$getBackgroundTaskExecutor$p(Lcom/narvii/video/services/VideoManager;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    new-instance v3, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1$onSuccess$1;

    iget-object v4, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    iget-object v5, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$output:Ljava/io/File;

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1$onSuccess$1;-><init>(Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;F)V

    invoke-interface {v1, v0, v2, v3}, Lffmpeg/base/IEditor;->execute(Lffmpeg/base/MediaEditingConfig;Ljava/util/concurrent/ExecutorService;Lffmpeg/base/IEditorExecuteCallback;)V

    :cond_2
    :goto_0
    return-void
.end method
