.class public final Lcom/narvii/video/services/SceneMediaProcessor$getPreviewMedia$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/interfaces/IVideoServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/services/SceneMediaProcessor;->getPreviewMedia(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)Lg7/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;


# direct methods
.method constructor <init>(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$getPreviewMedia$2;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
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
    .line 5
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$getPreviewMedia$2;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onFailed(Z)V

    .line 12
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
    .line 5
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$getPreviewMedia$2;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v2, v0, v1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener$DefaultImpls;->onFailed$default(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V

    .line 14
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
    .locals 0
    .param p1    # Lg7/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onExecutingTaskChanged(Lcom/narvii/video/interfaces/IVideoServiceCallback;Lg7/d;)V

    .line 4
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
    .locals 0
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
    iget-object p2, p0, Lcom/narvii/video/services/SceneMediaProcessor$getPreviewMedia$2;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-interface {p2, p1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onProgress(F)V

    .line 11
    :cond_0
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
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$getPreviewMedia$2;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v0}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onSuccess(Ljava/util/ArrayList;)V

    .line 24
    :cond_0
    return-void
.end method
