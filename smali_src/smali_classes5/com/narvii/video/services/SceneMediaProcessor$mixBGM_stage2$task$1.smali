.class public final Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;
.super Ljava/lang/Object;
.source "SourceFile"

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


# instance fields
.field final synthetic $completedTaskCount:Lkotlin/jvm/internal/n0;

.field final synthetic $externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

.field final synthetic $failureFlag:Lkotlin/jvm/internal/k0;

.field final synthetic $mixedAudio:Ljava/io/File;

.field final synthetic $outputPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $progressMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $sceneInfo:Lcom/narvii/scene/model/SceneInfo;

.field final synthetic $sceneMediaList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $videoManager:Lcom/narvii/video/services/VideoManager;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/k0;Ljava/util/HashMap;Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Lcom/narvii/video/services/VideoManager;Lkotlin/jvm/internal/n0;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/k0;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/narvii/scene/model/SceneInfo;",
            "Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;",
            "Lcom/narvii/video/services/VideoManager;",
            "Lkotlin/jvm/internal/n0;",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$failureFlag:Lkotlin/jvm/internal/k0;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$progressMap:Ljava/util/HashMap;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$videoManager:Lcom/narvii/video/services/VideoManager;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$completedTaskCount:Lkotlin/jvm/internal/n0;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$sceneMediaList:Ljava/util/ArrayList;

    .line 15
    .line 16
    iput-object p8, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$outputPathList:Ljava/util/ArrayList;

    .line 17
    .line 18
    iput-object p9, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$mixedAudio:Ljava/io/File;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static synthetic a(Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;Lcom/narvii/video/services/VideoManager;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->onActionFailed$lambda$1(Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;Lcom/narvii/video/services/VideoManager;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;Lcom/narvii/video/services/VideoManager;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->onActionCancelled$lambda$0(Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;Lcom/narvii/video/services/VideoManager;)V

    return-void
.end method

.method private final deleteTmpFiles()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$mixedAudio:Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 6
    return-void
.end method

.method private static final onActionCancelled$lambda$0(Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;Lcom/narvii/video/services/VideoManager;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "$videoManager"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->deleteTmpFiles()V

    .line 15
    .line 16
    sget-object p0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/video/services/SceneMediaProcessor;->terminateAll(Lcom/narvii/video/services/VideoManager;)V

    .line 20
    return-void
.end method

.method private static final onActionFailed$lambda$1(Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;Lcom/narvii/video/services/VideoManager;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "$videoManager"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->deleteTmpFiles()V

    .line 15
    .line 16
    sget-object p0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/video/services/SceneMediaProcessor;->terminateAll(Lcom/narvii/video/services/VideoManager;)V

    .line 20
    return-void
.end method

.method private final onOverallProgress()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$progressMap:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Ljava/lang/Float;

    .line 24
    .line 25
    .line 26
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 30
    move-result v2

    .line 31
    add-float/2addr v1, v2

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-static {}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getSceneInfoList$p()Ljava/util/ArrayList;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 43
    move-result v0

    .line 44
    int-to-float v0, v0

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 48
    move-result v0

    .line 49
    .line 50
    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    const/4 v2, 0x4

    .line 54
    int-to-float v2, v2

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getSceneInfoList$p()Ljava/util/ArrayList;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    .line 61
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 65
    move-result v3

    .line 66
    int-to-float v3, v3

    .line 67
    mul-float/2addr v2, v3

    .line 68
    div-float/2addr v0, v2

    .line 69
    .line 70
    const/high16 v2, 0x3f400000    # 0.75f

    .line 71
    add-float/2addr v0, v2

    .line 72
    .line 73
    const/high16 v2, 0x3f800000    # 1.0f

    .line 74
    .line 75
    .line 76
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    .line 77
    move-result v0

    .line 78
    .line 79
    .line 80
    invoke-interface {v1, v0}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onProgress(F)V

    .line 81
    :cond_1
    return-void
.end method


# virtual methods
.method public onActionCancelled()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionCancelled(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$failureFlag:Lkotlin/jvm/internal/k0;

    .line 6
    .line 7
    iget-boolean v1, v0, Lkotlin/jvm/internal/k0;->element:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v1, 0x1

    .line 12
    .line 13
    iput-boolean v1, v0, Lkotlin/jvm/internal/k0;->element:Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$videoManager:Lcom/narvii/video/services/VideoManager;

    .line 16
    .line 17
    new-instance v2, Lcom/narvii/video/services/j;

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, p0, v0}, Lcom/narvii/video/services/j;-><init>(Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;Lcom/narvii/video/services/VideoManager;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onFailed(Z)V

    .line 31
    :cond_1
    return-void
.end method

.method public onActionFailed(Ljava/lang/Exception;)V
    .locals 3
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionFailed(Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/Exception;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$failureFlag:Lkotlin/jvm/internal/k0;

    .line 6
    .line 7
    iget-boolean v0, p1, Lkotlin/jvm/internal/k0;->element:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    .line 13
    iput-boolean v0, p1, Lkotlin/jvm/internal/k0;->element:Z

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$videoManager:Lcom/narvii/video/services/VideoManager;

    .line 16
    .line 17
    new-instance v1, Lcom/narvii/video/services/k;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, p0, p1}, Lcom/narvii/video/services/k;-><init>(Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;Lcom/narvii/video/services/VideoManager;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    const/4 v1, 0x0

    .line 29
    const/4 v2, 0x0

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v1, v0, v2}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener$DefaultImpls;->onFailed$default(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V

    .line 33
    :cond_1
    return-void
.end method

.method public onActionStarted()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionStarted(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V

    .line 4
    return-void
.end method

.method public onExecutingTaskChanged(Lg7/d;)V
    .locals 3
    .param p1    # Lg7/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "newTask"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onExecutingTaskChanged(Lcom/narvii/video/interfaces/IVideoServiceCallback;Lg7/d;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getInProcessingEditingConfigMap$p()Ljava/util/HashMap;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 17
    .line 18
    const-string v2, "id"

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-void
.end method

.method public onFrameBitmapLoaded(ILandroid/graphics/Bitmap;)V
    .locals 0
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onFrameBitmapLoaded(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILandroid/graphics/Bitmap;)V

    .line 4
    return-void
.end method

.method public onFramePicturesLoaded(ILjava/io/File;)V
    .locals 0
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onFramePicturesLoaded(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/io/File;)V

    .line 4
    return-void
.end method

.method public onProgress(FLjava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onProgress(Lcom/narvii/video/interfaces/IVideoServiceCallback;FLjava/lang/String;)V

    .line 4
    .line 5
    iget-object p2, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$failureFlag:Lkotlin/jvm/internal/k0;

    .line 6
    .line 7
    iget-boolean p2, p2, Lkotlin/jvm/internal/k0;->element:Z

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    iget-object p2, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$progressMap:Ljava/util/HashMap;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "id"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->onOverallProgress()V

    .line 32
    return-void
.end method

.method public onVideoProcessed(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "path"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onVideoProcessed(Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;)V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$failureFlag:Lkotlin/jvm/internal/k0;

    .line 11
    .line 12
    iget-boolean p1, p1, Lkotlin/jvm/internal/k0;->element:Z

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    return-void

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getInProcessingEditingConfigMap$p()Ljava/util/HashMap;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$completedTaskCount:Lkotlin/jvm/internal/n0;

    .line 29
    .line 30
    iget v0, p1, Lkotlin/jvm/internal/n0;->element:I

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    iput v0, p1, Lkotlin/jvm/internal/n0;->element:I

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$sceneMediaList:Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 40
    move-result p1

    .line 41
    .line 42
    if-lt v0, p1, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->deleteTmpFiles()V

    .line 46
    .line 47
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    const/high16 v0, 0x3f800000    # 1.0f

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, v0}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onProgress(F)V

    .line 55
    .line 56
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;->$outputPathList:Ljava/util/ArrayList;

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, v0}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onSuccess(Ljava/util/ArrayList;)V

    .line 64
    :cond_2
    return-void
.end method
