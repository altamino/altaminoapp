.class public final Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$scene:Lcom/narvii/scene/model/SceneInfo;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$orgFile:Ljava/io/File;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$tmpOrgFile:Ljava/io/File;

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
    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$scene:Lcom/narvii/scene/model/SceneInfo;

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
.method public onCancel()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onFailed(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProgressMap$p()Ljava/util/HashMap;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$scene:Lcom/narvii/scene/model/SceneInfo;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 17
    .line 18
    const-string v3, "id"

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    const/high16 v3, -0x40800000    # -1.0f

    .line 24
    .line 25
    .line 26
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProcessListenerMap$p()Ljava/util/HashMap;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iget-object v2, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$scene:Lcom/narvii/scene/model/SceneInfo;

    .line 37
    .line 38
    iget-object v2, v2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    check-cast v0, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onFailed(Z)V

    .line 50
    .line 51
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$tmpOrgFile:Ljava/io/File;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 55
    move-result v0

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$tmpOrgFile:Ljava/io/File;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-direct {p0}, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->onFinish()V

    .line 66
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 5
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v2, v1, v0}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener$DefaultImpls;->onFailed$default(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProgressMap$p()Ljava/util/HashMap;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget-object v3, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$scene:Lcom/narvii/scene/model/SceneInfo;

    .line 17
    .line 18
    iget-object v3, v3, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 19
    .line 20
    const-string v4, "id"

    .line 21
    .line 22
    .line 23
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    const/high16 v4, -0x40800000    # -1.0f

    .line 26
    .line 27
    .line 28
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 29
    move-result-object v4

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProcessListenerMap$p()Ljava/util/HashMap;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    iget-object v3, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$scene:Lcom/narvii/scene/model/SceneInfo;

    .line 39
    .line 40
    iget-object v3, v3, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    check-cast p1, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-static {p1, v2, v1, v0}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener$DefaultImpls;->onFailed$default(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V

    .line 52
    .line 53
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$tmpOrgFile:Ljava/io/File;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 57
    move-result p1

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$tmpOrgFile:Ljava/io/File;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-direct {p0}, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->onFinish()V

    .line 68
    return-void
.end method

.method public onProgress(I)V
    .locals 3

    .line 1
    int-to-float p1, p1

    .line 2
    .line 3
    const/high16 v0, 0x42c80000    # 100.0f

    .line 4
    div-float/2addr p1, v0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onProgress(F)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProgressMap$p()Ljava/util/HashMap;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$scene:Lcom/narvii/scene/model/SceneInfo;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 20
    .line 21
    const-string v2, "id"

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProcessListenerMap$p()Ljava/util/HashMap;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$scene:Lcom/narvii/scene/model/SceneInfo;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-interface {v0, p1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onProgress(F)V

    .line 51
    :cond_1
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "outputPath"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Ljava/io/File;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    const/4 p1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->onError(Ljava/lang/Exception;)V

    .line 21
    return-void

    .line 22
    .line 23
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProgressMap$p()Ljava/util/HashMap;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget-object v2, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$scene:Lcom/narvii/scene/model/SceneInfo;

    .line 33
    .line 34
    iget-object v2, v2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 35
    .line 36
    const-string v3, "id"

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    const/high16 v3, 0x3f800000    # 1.0f

    .line 42
    .line 43
    .line 44
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    .line 48
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$orgFile:Ljava/io/File;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 54
    move-result v1

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$orgFile:Ljava/io/File;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 62
    .line 63
    :cond_1
    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$orgFile:Ljava/io/File;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 67
    .line 68
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$orgFile:Ljava/io/File;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$callback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, p1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onSuccess(Ljava/util/ArrayList;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    invoke-static {}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProcessListenerMap$p()Ljava/util/HashMap;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->$scene:Lcom/narvii/scene/model/SceneInfo;

    .line 89
    .line 90
    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    check-cast v0, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 97
    .line 98
    if-eqz v0, :cond_3

    .line 99
    .line 100
    .line 101
    invoke-interface {v0, p1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onSuccess(Ljava/util/ArrayList;)V

    .line 102
    .line 103
    .line 104
    :cond_3
    invoke-direct {p0}, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;->onFinish()V

    .line 105
    return-void
.end method
