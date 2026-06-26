.class public final Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;
.super Ljava/lang/Object;
.source "SceneMediaProcessor.kt"

# interfaces
.implements Lcom/narvii/video/interfaces/IVideoServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/services/SceneMediaProcessor;->mixBGM_stage2(Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneMediaProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneMediaProcessor.kt\ncom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1\n*L\n1#1,808:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $completedTaskCount:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

.field final synthetic $failureFlag:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $mixedAudio:Ljava/io/File;

.field final synthetic $outputPathList:Ljava/util/ArrayList;

.field final synthetic $progressMap:Ljava/util/HashMap;

.field final synthetic $sceneInfo:Lcom/narvii/scene/model/SceneInfo;

.field final synthetic $sceneMediaList:Ljava/util/ArrayList;

.field final synthetic $videoManager:Lcom/narvii/video/services/VideoManager;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/HashMap;Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/io/File;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$failureFlag:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$progressMap:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    iput-object p4, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$videoManager:Lcom/narvii/video/services/VideoManager;

    iput-object p5, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    iput-object p6, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$completedTaskCount:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p7, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$sceneMediaList:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$outputPathList:Ljava/util/ArrayList;

    iput-object p9, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$mixedAudio:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$deleteTmpFiles(Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;)V
    .locals 0

    .line 660
    invoke-direct {p0}, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->deleteTmpFiles()V

    return-void
.end method

.method private final deleteTmpFiles()V
    .locals 1

    .line 725
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$mixedAudio:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private final onOverallProgress()V
    .locals 7

    .line 717
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$progressMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    const-string v3, "progress"

    .line 718
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    goto :goto_0

    .line 720
    :cond_0
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-static {v0}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getSceneInfoList$p(Lcom/narvii/video/services/SceneMediaProcessor;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 721
    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    if-eqz v1, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x4

    int-to-float v5, v5

    sget-object v6, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-static {v6}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getSceneInfoList$p(Lcom/narvii/video/services/SceneMediaProcessor;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-float v2, v2

    mul-float v5, v5, v2

    div-float/2addr v0, v5

    add-float/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-interface {v1, v0}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onProgress(F)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_2
    :goto_1
    return-void

    .line 720
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public onActionCancelled()V
    .locals 2

    .line 671
    invoke-static {p0}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionCancelled(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V

    .line 672
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$failureFlag:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 675
    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 676
    new-instance v0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1$onActionCancelled$1;

    invoke-direct {v0, p0}, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1$onActionCancelled$1;-><init>(Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 680
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onFailed(Z)V

    :cond_1
    return-void
.end method

.method public onActionFailed(Ljava/lang/Exception;)V
    .locals 3

    .line 684
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionFailed(Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/Exception;)V

    .line 685
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$failureFlag:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 688
    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 689
    new-instance p1, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1$onActionFailed$1;

    invoke-direct {p1, p0}, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1$onActionFailed$1;-><init>(Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 693
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener$DefaultImpls;->onFailed$default(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onActionStarted()V
    .locals 0

    .line 660
    invoke-static {p0}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionStarted(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V

    return-void
.end method

.method public onExecutingTaskChanged(Lffmpeg/base/MediaEditingConfig;)V
    .locals 3

    const-string v0, "newTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 711
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onExecutingTaskChanged(Lcom/narvii/video/interfaces/IVideoServiceCallback;Lffmpeg/base/MediaEditingConfig;)V

    .line 712
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-static {v0}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getInProcessingEditingConfigMap$p(Lcom/narvii/video/services/SceneMediaProcessor;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    const-string v2, "sceneInfo.id"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onFrameBitmapLoaded(ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 660
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onFrameBitmapLoaded(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public onFramePicturesLoaded(ILjava/io/File;)V
    .locals 0

    .line 660
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onFramePicturesLoaded(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/io/File;)V

    return-void
.end method

.method public onProgress(FLjava/lang/String;)V
    .locals 2

    .line 662
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onProgress(Lcom/narvii/video/interfaces/IVideoServiceCallback;FLjava/lang/String;)V

    .line 663
    iget-object p2, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$failureFlag:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p2, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p2, :cond_0

    return-void

    .line 666
    :cond_0
    iget-object p2, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$progressMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    iget-object v0, v0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    const-string v1, "sceneInfo.id"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    invoke-direct {p0}, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->onOverallProgress()V

    return-void
.end method

.method public onVideoProcessed(Ljava/lang/String;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 697
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onVideoProcessed(Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;)V

    .line 698
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$failureFlag:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_0

    return-void

    .line 701
    :cond_0
    sget-object p1, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-static {p1}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getInProcessingEditingConfigMap$p(Lcom/narvii/video/services/SceneMediaProcessor;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    iget-object v0, v0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$completedTaskCount:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 703
    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$sceneMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 704
    invoke-direct {p0}, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->deleteTmpFiles()V

    .line 705
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onProgress(F)V

    .line 706
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$outputPathList:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onSuccess(Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method
