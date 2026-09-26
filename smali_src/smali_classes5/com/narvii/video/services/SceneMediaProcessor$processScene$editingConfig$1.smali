.class public final Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/interfaces/IVideoServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/services/SceneMediaProcessor;->processScene(Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Z)Lg7/d;
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$scene:Lcom/narvii/scene/model/SceneInfo;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$orgFile:Ljava/io/File;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$tmpOrgFile:Ljava/io/File;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method private final onFinish()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getInProcessingEditingConfigMap$p()Ljava/util/HashMap;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$scene:Lcom/narvii/scene/model/SceneInfo;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    return-void
.end method


# virtual methods
.method public onActionCancelled()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionCancelled(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onFailed(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProgressMap$p()Ljava/util/HashMap;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iget-object v2, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$scene:Lcom/narvii/scene/model/SceneInfo;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 20
    .line 21
    const-string v3, "id"

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    const/high16 v3, -0x40800000    # -1.0f

    .line 27
    .line 28
    .line 29
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProcessListenerMap$p()Ljava/util/HashMap;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    iget-object v2, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$scene:Lcom/narvii/scene/model/SceneInfo;

    .line 40
    .line 41
    iget-object v2, v2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    check-cast v0, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, v1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onFailed(Z)V

    .line 53
    .line 54
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$tmpOrgFile:Ljava/io/File;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 58
    move-result v0

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$tmpOrgFile:Ljava/io/File;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-direct {p0}, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->onFinish()V

    .line 69
    return-void
.end method

.method public onActionFailed(Ljava/lang/Exception;)V
    .locals 5
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
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v2, v1, v0}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener$DefaultImpls;->onFailed$default(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProgressMap$p()Ljava/util/HashMap;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    iget-object v3, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$scene:Lcom/narvii/scene/model/SceneInfo;

    .line 20
    .line 21
    iget-object v3, v3, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 22
    .line 23
    const-string v4, "id"

    .line 24
    .line 25
    .line 26
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    const/high16 v4, -0x40800000    # -1.0f

    .line 29
    .line 30
    .line 31
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 32
    move-result-object v4

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProcessListenerMap$p()Ljava/util/HashMap;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    iget-object v3, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$scene:Lcom/narvii/scene/model/SceneInfo;

    .line 42
    .line 43
    iget-object v3, v3, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    check-cast p1, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v2, v1, v0}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener$DefaultImpls;->onFailed$default(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V

    .line 55
    .line 56
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$tmpOrgFile:Ljava/io/File;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 60
    move-result p1

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$tmpOrgFile:Ljava/io/File;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-direct {p0}, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->onFinish()V

    .line 71
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
    iget-object p2, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-interface {p2, p1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onProgress(F)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProgressMap$p()Ljava/util/HashMap;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$scene:Lcom/narvii/scene/model/SceneInfo;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "id"

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProcessListenerMap$p()Ljava/util/HashMap;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$scene:Lcom/narvii/scene/model/SceneInfo;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    check-cast p2, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 45
    .line 46
    if-eqz p2, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-interface {p2, p1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onProgress(F)V

    .line 50
    :cond_1
    return-void
.end method

.method public onVideoProcessed(Ljava/lang/String;)V
    .locals 4
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
    new-instance v0, Ljava/io/File;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 17
    move-result p1

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    const/4 p1, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->onActionFailed(Ljava/lang/Exception;)V

    .line 24
    return-void

    .line 25
    .line 26
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProgressMap$p()Ljava/util/HashMap;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    iget-object v2, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$scene:Lcom/narvii/scene/model/SceneInfo;

    .line 36
    .line 37
    iget-object v2, v2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 38
    .line 39
    const-string v3, "id"

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    const/high16 v3, 0x3f800000    # 1.0f

    .line 45
    .line 46
    .line 47
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    .line 51
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$orgFile:Ljava/io/File;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 57
    move-result v1

    .line 58
    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$orgFile:Ljava/io/File;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 65
    .line 66
    :cond_1
    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$orgFile:Ljava/io/File;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$orgFile:Ljava/io/File;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 81
    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    .line 85
    invoke-interface {v0, p1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onSuccess(Ljava/util/ArrayList;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    invoke-static {}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProcessListenerMap$p()Ljava/util/HashMap;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->$scene:Lcom/narvii/scene/model/SceneInfo;

    .line 92
    .line 93
    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    check-cast v0, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 100
    .line 101
    if-eqz v0, :cond_3

    .line 102
    .line 103
    .line 104
    invoke-interface {v0, p1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onSuccess(Ljava/util/ArrayList;)V

    .line 105
    .line 106
    .line 107
    :cond_3
    invoke-direct {p0}, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;->onFinish()V

    .line 108
    return-void
.end method
