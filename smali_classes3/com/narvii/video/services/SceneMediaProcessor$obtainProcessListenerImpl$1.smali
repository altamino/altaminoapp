.class public final Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;
.super Ljava/lang/Object;
.source "SceneMediaProcessor.kt"

# interfaces
.implements Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/services/SceneMediaProcessor;->obtainProcessListenerImpl(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneMediaProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneMediaProcessor.kt\ncom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1\n*L\n1#1,808:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

.field final synthetic $globalMusic:Lcom/narvii/video/model/AVClipInfoPack;

.field final synthetic $outputPathList:Ljava/util/ArrayList;

.field final synthetic $sceneInfoList:Ljava/util/ArrayList;

.field final synthetic $videoManager:Lcom/narvii/video/services/VideoManager;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Lcom/narvii/video/services/VideoManager;)V
    .locals 0

    .line 758
    iput-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$sceneInfoList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$globalMusic:Lcom/narvii/video/model/AVClipInfoPack;

    iput-object p3, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$outputPathList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    iput-object p5, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$videoManager:Lcom/narvii/video/services/VideoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onOverallProgress()V
    .locals 5

    .line 800
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-static {v0}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProgressMap$p(Lcom/narvii/video/services/SceneMediaProcessor;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    const-string v4, "progress"

    .line 801
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float/2addr v2, v3

    goto :goto_0

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$sceneInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 804
    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$sceneInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$globalMusic:Lcom/narvii/video/model/AVClipInfoPack;

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    :goto_1
    int-to-float v3, v3

    mul-float v2, v2, v3

    div-float/2addr v0, v2

    invoke-interface {v1, v0}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onProgress(F)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onFailed(Z)V
    .locals 2

    .line 790
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-static {v0}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getStoryProcessFailureFlag$p(Lcom/narvii/video/services/SceneMediaProcessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 793
    :cond_0
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/video/services/SceneMediaProcessor;->access$setStoryProcessFailureFlag$p(Lcom/narvii/video/services/SceneMediaProcessor;Z)V

    .line 794
    new-instance v0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1$onFailed$1;

    invoke-direct {v0, p0}, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1$onFailed$1;-><init>(Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 795
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onFailed(Z)V

    :cond_1
    return-void
.end method

.method public onProgress(F)V
    .locals 0

    .line 760
    sget-object p1, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-static {p1}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getStoryProcessFailureFlag$p(Lcom/narvii/video/services/SceneMediaProcessor;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 763
    :cond_0
    invoke-direct {p0}, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->onOverallProgress()V

    return-void
.end method

.method public onSuccess(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "outputList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 767
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-static {v0}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getStoryProcessFailureFlag$p(Lcom/narvii/video/services/SceneMediaProcessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 770
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 771
    invoke-static {p0, v2, v1, p1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener$DefaultImpls;->onFailed$default(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V

    return-void

    .line 774
    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "outputList[0]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    .line 775
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    iget-object v2, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$sceneInfoList:Ljava/util/ArrayList;

    invoke-static {v0, v2, p1}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getPathIndexInSceneList(Lcom/narvii/video/services/SceneMediaProcessor;Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result p1

    .line 776
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$sceneInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    if-le v0, p1, :cond_3

    .line 777
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$sceneInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/scene/model/SceneInfo;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lcom/narvii/scene/model/SceneInfo;->currentSceneVideoProgress:F

    .line 779
    :cond_3
    :goto_0
    sget-object p1, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-static {p1}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getCompletedTaskCount$p(Lcom/narvii/video/services/SceneMediaProcessor;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/narvii/video/services/SceneMediaProcessor;->access$setCompletedTaskCount$p(Lcom/narvii/video/services/SceneMediaProcessor;I)V

    .line 780
    sget-object p1, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-static {p1}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getCompletedTaskCount$p(Lcom/narvii/video/services/SceneMediaProcessor;)I

    move-result p1

    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$sceneInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_5

    .line 781
    iget-object v3, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$globalMusic:Lcom/narvii/video/model/AVClipInfoPack;

    if-nez v3, :cond_4

    .line 782
    sget-object p1, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$sceneInfoList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$outputPathList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    invoke-static {p1, v0, v1, v2}, Lcom/narvii/video/services/SceneMediaProcessor;->access$copySceneOrgFileToOutputFile(Lcom/narvii/video/services/SceneMediaProcessor;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    goto :goto_1

    .line 784
    :cond_4
    sget-object v1, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    iget-object v2, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$sceneInfoList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$outputPathList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$videoManager:Lcom/narvii/video/services/VideoManager;

    iget-object v6, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    invoke-static/range {v1 .. v6}, Lcom/narvii/video/services/SceneMediaProcessor;->access$stepIntoBGMMixing(Lcom/narvii/video/services/SceneMediaProcessor;Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    :cond_5
    :goto_1
    return-void
.end method
