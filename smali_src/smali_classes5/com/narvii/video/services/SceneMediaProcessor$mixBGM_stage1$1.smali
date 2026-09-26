.class public final Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;
.super Ljava/lang/Object;
.source "SourceFile"

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


# instance fields
.field final synthetic $externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

.field final synthetic $outputPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $sceneMediaList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tmpFileForMixedAudio:Ljava/io/File;

.field final synthetic $totalProgress:Lkotlin/jvm/internal/m0;

.field final synthetic $videoManager:Lcom/narvii/video/services/VideoManager;


# direct methods
.method constructor <init>(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Lkotlin/jvm/internal/m0;Ljava/io/File;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;",
            "Lkotlin/jvm/internal/m0;",
            "Ljava/io/File;",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/narvii/video/services/VideoManager;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$totalProgress:Lkotlin/jvm/internal/m0;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$tmpFileForMixedAudio:Ljava/io/File;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$sceneMediaList:Ljava/util/ArrayList;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$outputPathList:Ljava/util/ArrayList;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$videoManager:Lcom/narvii/video/services/VideoManager;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public onActionCancelled()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionCancelled(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/video/services/SceneMediaProcessor;->access$setInProcessingGlobalMusicMixingTask$p(Lg7/d;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$tmpFileForMixedAudio:Ljava/io/File;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    const/4 v1, 0x1

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onFailed(Z)V

    .line 21
    :cond_0
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
    const/4 p1, 0x0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/video/services/SceneMediaProcessor;->access$setInProcessingGlobalMusicMixingTask$p(Lg7/d;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$tmpFileForMixedAudio:Ljava/io/File;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x1

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1, v2, p1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener$DefaultImpls;->onFailed$default(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V

    .line 22
    :cond_0
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
    .locals 1
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
    invoke-static {p1}, Lcom/narvii/video/services/SceneMediaProcessor;->access$setInProcessingGlobalMusicMixingTask$p(Lg7/d;)V

    .line 12
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
    iget-object p2, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$totalProgress:Lkotlin/jvm/internal/m0;

    .line 10
    .line 11
    iget v0, v0, Lkotlin/jvm/internal/m0;->element:F

    .line 12
    .line 13
    const/high16 v1, 0x40800000    # 4.0f

    .line 14
    div-float/2addr p1, v1

    .line 15
    add-float/2addr v0, p1

    .line 16
    .line 17
    const/high16 p1, 0x3f400000    # 0.75f

    .line 18
    .line 19
    .line 20
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    .line 21
    move-result p1

    .line 22
    .line 23
    .line 24
    invoke-interface {p2, p1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onProgress(F)V

    .line 25
    :cond_0
    return-void
.end method

.method public onVideoProcessed(Ljava/lang/String;)V
    .locals 7
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
    const/4 p1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/narvii/video/services/SceneMediaProcessor;->access$setInProcessingGlobalMusicMixingTask$p(Lg7/d;)V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const/high16 v0, 0x3f400000    # 0.75f

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onProgress(F)V

    .line 22
    .line 23
    :cond_0
    sget-object v1, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$sceneMediaList:Ljava/util/ArrayList;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$tmpFileForMixedAudio:Ljava/io/File;

    .line 28
    .line 29
    iget-object v4, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$outputPathList:Ljava/util/ArrayList;

    .line 30
    .line 31
    iget-object v5, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$videoManager:Lcom/narvii/video/services/VideoManager;

    .line 32
    .line 33
    iget-object v6, p0, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 34
    .line 35
    .line 36
    invoke-static/range {v1 .. v6}, Lcom/narvii/video/services/SceneMediaProcessor;->access$mixBGM_stage2(Lcom/narvii/video/services/SceneMediaProcessor;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    .line 37
    return-void
.end method
