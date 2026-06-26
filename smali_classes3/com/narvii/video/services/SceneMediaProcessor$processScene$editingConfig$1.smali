.class public final Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;
.super Ljava/lang/Object;
.source "SceneMediaProcessor.kt"

# interfaces
.implements Lcom/narvii/video/interfaces/IVideoServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/services/SceneMediaProcessor;->processScene(Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Z)Lffmpeg/base/MediaEditingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

.field final synthetic $orgFile:Ljava/io/File;

.field final synthetic $scene:Lcom/narvii/scene/model/SceneInfo;

.field final synthetic $tmpOrgFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Lcom/narvii/scene/model/SceneInfo;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    iput-object p2, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$scene:Lcom/narvii/scene/model/SceneInfo;

    iput-object p3, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$orgFile:Ljava/io/File;

    iput-object p4, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$tmpOrgFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onFinish()V
    .locals 2

    .line 403
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-static {v0}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getInProcessingEditingConfigMap$p(Lcom/narvii/video/services/SceneMediaProcessor;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$scene:Lcom/narvii/scene/model/SceneInfo;

    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onActionCancelled()V
    .locals 4

    .line 381
    invoke-static {p0}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionCancelled(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V

    .line 382
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onFailed(Z)V

    .line 383
    :cond_0
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-static {v0}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProgressMap$p(Lcom/narvii/video/services/SceneMediaProcessor;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$scene:Lcom/narvii/scene/model/SceneInfo;

    iget-object v2, v2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    const-string v3, "scene.id"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-static {v0}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProcessListenerMap$p(Lcom/narvii/video/services/SceneMediaProcessor;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$scene:Lcom/narvii/scene/model/SceneInfo;

    iget-object v2, v2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onFailed(Z)V

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$tmpOrgFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 386
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$tmpOrgFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 388
    :cond_2
    invoke-direct {p0}, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->onFinish()V

    return-void
.end method

.method public onActionFailed(Ljava/lang/Exception;)V
    .locals 5

    .line 392
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionFailed(Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/Exception;)V

    .line 393
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1, v2, v1, v0}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener$DefaultImpls;->onFailed$default(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V

    .line 394
    :cond_0
    sget-object p1, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-static {p1}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProgressMap$p(Lcom/narvii/video/services/SceneMediaProcessor;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v3, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$scene:Lcom/narvii/scene/model/SceneInfo;

    iget-object v3, v3, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    const-string v4, "scene.id"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object p1, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-static {p1}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProcessListenerMap$p(Lcom/narvii/video/services/SceneMediaProcessor;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v3, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$scene:Lcom/narvii/scene/model/SceneInfo;

    iget-object v3, v3, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    if-eqz p1, :cond_1

    invoke-static {p1, v2, v1, v0}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener$DefaultImpls;->onFailed$default(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V

    .line 396
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$tmpOrgFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 397
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$tmpOrgFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 399
    :cond_2
    invoke-direct {p0}, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->onFinish()V

    return-void
.end method

.method public onActionStarted()V
    .locals 0

    .line 353
    invoke-static {p0}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionStarted(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V

    return-void
.end method

.method public onExecutingTaskChanged(Lffmpeg/base/MediaEditingConfig;)V
    .locals 1

    const-string v0, "newTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onExecutingTaskChanged(Lcom/narvii/video/interfaces/IVideoServiceCallback;Lffmpeg/base/MediaEditingConfig;)V

    return-void
.end method

.method public onFrameBitmapLoaded(ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 353
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onFrameBitmapLoaded(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public onFramePicturesLoaded(ILjava/io/File;)V
    .locals 0

    .line 353
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onFramePicturesLoaded(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/io/File;)V

    return-void
.end method

.method public onProgress(FLjava/lang/String;)V
    .locals 2

    .line 355
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onProgress(Lcom/narvii/video/interfaces/IVideoServiceCallback;FLjava/lang/String;)V

    .line 356
    iget-object p2, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onProgress(F)V

    .line 357
    :cond_0
    sget-object p2, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-static {p2}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProgressMap$p(Lcom/narvii/video/services/SceneMediaProcessor;)Ljava/util/HashMap;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$scene:Lcom/narvii/scene/model/SceneInfo;

    iget-object v0, v0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    const-string v1, "scene.id"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object p2, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-static {p2}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProcessListenerMap$p(Lcom/narvii/video/services/SceneMediaProcessor;)Ljava/util/HashMap;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$scene:Lcom/narvii/scene/model/SceneInfo;

    iget-object v0, v0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onProgress(F)V

    :cond_1
    return-void
.end method

.method public onVideoProcessed(Ljava/lang/String;)V
    .locals 4

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onVideoProcessed(Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;)V

    .line 363
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 365
    invoke-virtual {p0, p1}, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->onActionFailed(Ljava/lang/Exception;)V

    return-void

    .line 368
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 369
    sget-object v1, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-static {v1}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProgressMap$p(Lcom/narvii/video/services/SceneMediaProcessor;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$scene:Lcom/narvii/scene/model/SceneInfo;

    iget-object v2, v2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    const-string v3, "scene.id"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$orgFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$orgFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 373
    :cond_1
    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$orgFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 374
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$orgFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onSuccess(Ljava/util/ArrayList;)V

    .line 376
    :cond_2
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-static {v0}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProcessListenerMap$p(Lcom/narvii/video/services/SceneMediaProcessor;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$scene:Lcom/narvii/scene/model/SceneInfo;

    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onSuccess(Ljava/util/ArrayList;)V

    .line 377
    :cond_3
    invoke-direct {p0}, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->onFinish()V

    return-void
.end method
