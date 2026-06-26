.class public final Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;
.super Ljava/lang/Object;
.source "SceneMediaProcessor.kt"

# interfaces
.implements Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/services/SceneMediaProcessor;->processScene(Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Z)V
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
.method constructor <init>(Lcom/narvii/scene/model/SceneInfo;Ljava/io/File;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Ljava/io/File;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$scene:Lcom/narvii/scene/model/SceneInfo;

    iput-object p2, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$orgFile:Ljava/io/File;

    iput-object p3, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    iput-object p4, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$tmpOrgFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onFinish()V
    .locals 2

    .line 474
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-static {v0}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getInProcessingEditingConfigMap$p(Lcom/narvii/video/services/SceneMediaProcessor;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$scene:Lcom/narvii/scene/model/SceneInfo;

    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    .line 464
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onFailed(Z)V

    .line 465
    :cond_0
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-static {v0}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProgressMap$p(Lcom/narvii/video/services/SceneMediaProcessor;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$scene:Lcom/narvii/scene/model/SceneInfo;

    iget-object v2, v2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    const-string v3, "scene.id"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-static {v0}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProcessListenerMap$p(Lcom/narvii/video/services/SceneMediaProcessor;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$scene:Lcom/narvii/scene/model/SceneInfo;

    iget-object v2, v2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onFailed(Z)V

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$tmpOrgFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 468
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$tmpOrgFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 470
    :cond_2
    invoke-direct {p0}, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->onFinish()V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 5

    .line 447
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1, v2, v1, v0}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener$DefaultImpls;->onFailed$default(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V

    .line 448
    :cond_0
    sget-object p1, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-static {p1}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProgressMap$p(Lcom/narvii/video/services/SceneMediaProcessor;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v3, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$scene:Lcom/narvii/scene/model/SceneInfo;

    iget-object v3, v3, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    const-string v4, "scene.id"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object p1, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-static {p1}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProcessListenerMap$p(Lcom/narvii/video/services/SceneMediaProcessor;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v3, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$scene:Lcom/narvii/scene/model/SceneInfo;

    iget-object v3, v3, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    if-eqz p1, :cond_1

    invoke-static {p1, v2, v1, v0}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener$DefaultImpls;->onFailed$default(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V

    .line 450
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$tmpOrgFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 451
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$tmpOrgFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 453
    :cond_2
    invoke-direct {p0}, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->onFinish()V

    return-void
.end method

.method public onProgress(I)V
    .locals 3

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 458
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onProgress(F)V

    .line 459
    :cond_0
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-static {v0}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProgressMap$p(Lcom/narvii/video/services/SceneMediaProcessor;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$scene:Lcom/narvii/scene/model/SceneInfo;

    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    const-string v2, "scene.id"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-static {v0}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProcessListenerMap$p(Lcom/narvii/video/services/SceneMediaProcessor;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$scene:Lcom/narvii/scene/model/SceneInfo;

    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onProgress(F)V

    :cond_1
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4

    const-string v0, "outputPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 431
    invoke-virtual {p0, p1}, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->onError(Ljava/lang/Exception;)V

    return-void

    .line 434
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 435
    sget-object v1, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-static {v1}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProgressMap$p(Lcom/narvii/video/services/SceneMediaProcessor;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$scene:Lcom/narvii/scene/model/SceneInfo;

    iget-object v2, v2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    const-string v3, "scene.id"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$orgFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 437
    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$orgFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 439
    :cond_1
    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$orgFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 440
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$orgFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onSuccess(Ljava/util/ArrayList;)V

    .line 442
    :cond_2
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-static {v0}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProcessListenerMap$p(Lcom/narvii/video/services/SceneMediaProcessor;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$scene:Lcom/narvii/scene/model/SceneInfo;

    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onSuccess(Ljava/util/ArrayList;)V

    .line 443
    :cond_3
    invoke-direct {p0}, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->onFinish()V

    return-void
.end method
