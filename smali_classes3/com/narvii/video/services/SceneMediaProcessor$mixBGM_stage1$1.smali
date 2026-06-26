.class public final Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;
.super Ljava/lang/Object;
.source "SceneMediaProcessor.kt"

# interfaces
.implements Lcom/narvii/video/interfaces/IVideoServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/services/SceneMediaProcessor;->mixBGM_stage1(Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneMediaProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneMediaProcessor.kt\ncom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1\n*L\n1#1,808:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

.field final synthetic $outputPathList:Ljava/util/ArrayList;

.field final synthetic $sceneMediaList:Ljava/util/ArrayList;

.field final synthetic $tmpFileForMixedAudio:Ljava/io/File;

.field final synthetic $totalProgress:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $videoManager:Lcom/narvii/video/services/VideoManager;


# direct methods
.method constructor <init>(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Lkotlin/jvm/internal/Ref$FloatRef;Ljava/io/File;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;)V
    .locals 0

    .line 612
    iput-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    iput-object p2, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$totalProgress:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p3, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$tmpFileForMixedAudio:Ljava/io/File;

    iput-object p4, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$sceneMediaList:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$outputPathList:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$videoManager:Lcom/narvii/video/services/VideoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionCancelled()V
    .locals 2

    .line 619
    invoke-static {p0}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionCancelled(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V

    .line 620
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/video/services/SceneMediaProcessor;->access$setInProcessingGlobalMusicMixingTask$p(Lcom/narvii/video/services/SceneMediaProcessor;Lffmpeg/base/MediaEditingConfig;)V

    .line 621
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$tmpFileForMixedAudio:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 622
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onFailed(Z)V

    :cond_0
    return-void
.end method

.method public onActionFailed(Ljava/lang/Exception;)V
    .locals 3

    .line 626
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionFailed(Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/Exception;)V

    .line 627
    sget-object p1, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/video/services/SceneMediaProcessor;->access$setInProcessingGlobalMusicMixingTask$p(Lcom/narvii/video/services/SceneMediaProcessor;Lffmpeg/base/MediaEditingConfig;)V

    .line 628
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$tmpFileForMixedAudio:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 629
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v0}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener$DefaultImpls;->onFailed$default(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onActionStarted()V
    .locals 0

    .line 612
    invoke-static {p0}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionStarted(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V

    return-void
.end method

.method public onExecutingTaskChanged(Lffmpeg/base/MediaEditingConfig;)V
    .locals 1

    const-string v0, "newTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 640
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onExecutingTaskChanged(Lcom/narvii/video/interfaces/IVideoServiceCallback;Lffmpeg/base/MediaEditingConfig;)V

    .line 641
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-static {v0, p1}, Lcom/narvii/video/services/SceneMediaProcessor;->access$setInProcessingGlobalMusicMixingTask$p(Lcom/narvii/video/services/SceneMediaProcessor;Lffmpeg/base/MediaEditingConfig;)V

    return-void
.end method

.method public onFrameBitmapLoaded(ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 612
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onFrameBitmapLoaded(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public onFramePicturesLoaded(ILjava/io/File;)V
    .locals 0

    .line 612
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onFramePicturesLoaded(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/io/File;)V

    return-void
.end method

.method public onProgress(FLjava/lang/String;)V
    .locals 2

    .line 614
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onProgress(Lcom/narvii/video/interfaces/IVideoServiceCallback;FLjava/lang/String;)V

    .line 615
    iget-object p2, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$totalProgress:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr p1, v1

    add-float/2addr v0, p1

    const/high16 p1, 0x3f400000    # 0.75f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-interface {p2, p1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onProgress(F)V

    :cond_0
    return-void
.end method

.method public onVideoProcessed(Ljava/lang/String;)V
    .locals 7

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onVideoProcessed(Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;)V

    .line 634
    sget-object p1, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/video/services/SceneMediaProcessor;->access$setInProcessingGlobalMusicMixingTask$p(Lcom/narvii/video/services/SceneMediaProcessor;Lffmpeg/base/MediaEditingConfig;)V

    .line 635
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-interface {p1, v0}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onProgress(F)V

    .line 636
    :cond_0
    sget-object v1, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    iget-object v2, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$sceneMediaList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$tmpFileForMixedAudio:Ljava/io/File;

    iget-object v4, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$outputPathList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$videoManager:Lcom/narvii/video/services/VideoManager;

    iget-object v6, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    invoke-static/range {v1 .. v6}, Lcom/narvii/video/services/SceneMediaProcessor;->access$mixBGM_stage2(Lcom/narvii/video/services/SceneMediaProcessor;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    return-void
.end method
