.class public final Lcom/narvii/video/services/SceneMediaProcessor$getSceneCoverImage$1;
.super Ljava/lang/Object;
.source "SceneMediaProcessor.kt"

# interfaces
.implements Lcom/narvii/video/interfaces/IVideoServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/services/SceneMediaProcessor;->getSceneCoverImage(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)Lffmpeg/base/MediaEditingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

.field final synthetic $outputFile:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$getSceneCoverImage$1;->$outputFile:Ljava/io/File;

    iput-object p2, p0, Lcom/narvii/video/services/SceneMediaProcessor$getSceneCoverImage$1;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionCancelled()V
    .locals 2

    .line 110
    invoke-static {p0}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionCancelled(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V

    .line 111
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$getSceneCoverImage$1;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onFailed(Z)V

    :cond_0
    return-void
.end method

.method public onActionFailed(Ljava/lang/Exception;)V
    .locals 3

    .line 115
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionFailed(Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/Exception;)V

    .line 116
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$getSceneCoverImage$1;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener$DefaultImpls;->onFailed$default(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onActionStarted()V
    .locals 0

    .line 101
    invoke-static {p0}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionStarted(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V

    return-void
.end method

.method public onExecutingTaskChanged(Lffmpeg/base/MediaEditingConfig;)V
    .locals 1

    const-string v0, "newTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onExecutingTaskChanged(Lcom/narvii/video/interfaces/IVideoServiceCallback;Lffmpeg/base/MediaEditingConfig;)V

    return-void
.end method

.method public onFrameBitmapLoaded(ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 101
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onFrameBitmapLoaded(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public onFramePicturesLoaded(ILjava/io/File;)V
    .locals 0

    .line 103
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onFramePicturesLoaded(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/io/File;)V

    .line 104
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    iget-object p2, p0, Lcom/narvii/video/services/SceneMediaProcessor$getSceneCoverImage$1;->$outputFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object p2, p0, Lcom/narvii/video/services/SceneMediaProcessor$getSceneCoverImage$1;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onSuccess(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public onProgress(FLjava/lang/String;)V
    .locals 0

    .line 101
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onProgress(Lcom/narvii/video/interfaces/IVideoServiceCallback;FLjava/lang/String;)V

    return-void
.end method

.method public onVideoProcessed(Ljava/lang/String;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onVideoProcessed(Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;)V

    return-void
.end method
