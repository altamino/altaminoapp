.class public final Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

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


# instance fields
.field final synthetic $externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

.field final synthetic $globalMusic:Lcom/narvii/video/model/AVClipInfoPack;

.field final synthetic $outputPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $sceneInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $videoManager:Lcom/narvii/video/services/VideoManager;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Lcom/narvii/video/services/VideoManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;",
            "Lcom/narvii/video/services/VideoManager;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$sceneInfoList:Ljava/util/ArrayList;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$globalMusic:Lcom/narvii/video/model/AVClipInfoPack;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$outputPathList:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$videoManager:Lcom/narvii/video/services/VideoManager;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static synthetic a(Lcom/narvii/video/services/VideoManager;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->onFailed$lambda$0(Lcom/narvii/video/services/VideoManager;)V

    return-void
.end method

.method private static final onFailed$lambda$0(Lcom/narvii/video/services/VideoManager;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$videoManager"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/narvii/video/services/SceneMediaProcessor;->terminateAll(Lcom/narvii/video/services/VideoManager;)V

    .line 11
    return-void
.end method

.method private final onOverallProgress()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getProgressMap$p()Ljava/util/HashMap;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    move v2, v1

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v3

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    check-cast v3, Ljava/lang/Float;

    .line 27
    .line 28
    .line 29
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 33
    move-result v3

    .line 34
    .line 35
    .line 36
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    .line 37
    move-result v3

    .line 38
    add-float/2addr v2, v3

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$sceneInfoList:Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 45
    move-result v0

    .line 46
    int-to-float v0, v0

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 50
    move-result v0

    .line 51
    .line 52
    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    iget-object v2, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$sceneInfoList:Ljava/util/ArrayList;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 60
    move-result v2

    .line 61
    int-to-float v2, v2

    .line 62
    .line 63
    iget-object v3, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$globalMusic:Lcom/narvii/video/model/AVClipInfoPack;

    .line 64
    .line 65
    if-nez v3, :cond_1

    .line 66
    const/4 v3, 0x1

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/4 v3, 0x2

    .line 69
    :goto_1
    int-to-float v3, v3

    .line 70
    mul-float/2addr v2, v3

    .line 71
    div-float/2addr v0, v2

    .line 72
    .line 73
    .line 74
    invoke-interface {v1, v0}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onProgress(F)V

    .line 75
    :cond_2
    return-void
.end method


# virtual methods
.method public onFailed(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getStoryProcessFailureFlag$p()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/video/services/SceneMediaProcessor;->access$setStoryProcessFailureFlag$p(Z)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$videoManager:Lcom/narvii/video/services/VideoManager;

    .line 14
    .line 15
    new-instance v1, Lcom/narvii/video/services/l;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v0}, Lcom/narvii/video/services/l;-><init>(Lcom/narvii/video/services/VideoManager;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, p1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onFailed(Z)V

    .line 29
    :cond_1
    return-void
.end method

.method public onProgress(F)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getStoryProcessFailureFlag$p()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->onOverallProgress()V

    .line 11
    return-void
.end method

.method public onSuccess(Ljava/util/ArrayList;)V
    .locals 8
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "outputList"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getStoryProcessFailureFlag$p()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    const/4 p1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v2, v1, p1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener$DefaultImpls;->onFailed$default(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V

    .line 25
    return-void

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    const-string v0, "get(...)"

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    check-cast p1, Ljava/lang/String;

    .line 37
    .line 38
    sget-object v2, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$sceneInfoList:Ljava/util/ArrayList;

    .line 41
    .line 42
    .line 43
    invoke-static {v2, v0, p1}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getPathIndexInSceneList(Lcom/narvii/video/services/SceneMediaProcessor;Ljava/util/ArrayList;Ljava/lang/String;)I

    .line 44
    move-result p1

    .line 45
    .line 46
    if-ltz p1, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$sceneInfoList:Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 52
    move-result v0

    .line 53
    .line 54
    if-ge p1, v0, :cond_2

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$sceneInfoList:Ljava/util/ArrayList;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    check-cast p1, Lcom/narvii/scene/model/SceneInfo;

    .line 63
    .line 64
    const/high16 v0, 0x3f800000    # 1.0f

    .line 65
    .line 66
    iput v0, p1, Lcom/narvii/scene/model/SceneInfo;->currentSceneVideoProgress:F

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-static {}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getCompletedTaskCount$p()I

    .line 70
    move-result p1

    .line 71
    add-int/2addr p1, v1

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Lcom/narvii/video/services/SceneMediaProcessor;->access$setCompletedTaskCount$p(I)V

    .line 75
    .line 76
    .line 77
    invoke-static {}, Lcom/narvii/video/services/SceneMediaProcessor;->access$getCompletedTaskCount$p()I

    .line 78
    move-result p1

    .line 79
    .line 80
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$sceneInfoList:Ljava/util/ArrayList;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 84
    move-result v0

    .line 85
    .line 86
    if-lt p1, v0, :cond_4

    .line 87
    .line 88
    iget-object v4, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$globalMusic:Lcom/narvii/video/model/AVClipInfoPack;

    .line 89
    .line 90
    if-nez v4, :cond_3

    .line 91
    .line 92
    iget-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$sceneInfoList:Ljava/util/ArrayList;

    .line 93
    .line 94
    iget-object v0, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$outputPathList:Ljava/util/ArrayList;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 97
    .line 98
    .line 99
    invoke-static {v2, p1, v0, v1}, Lcom/narvii/video/services/SceneMediaProcessor;->access$copySceneOrgFileToOutputFile(Lcom/narvii/video/services/SceneMediaProcessor;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    .line 100
    goto :goto_0

    .line 101
    .line 102
    :cond_3
    iget-object v3, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$sceneInfoList:Ljava/util/ArrayList;

    .line 103
    .line 104
    iget-object v5, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$outputPathList:Ljava/util/ArrayList;

    .line 105
    .line 106
    iget-object v6, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$videoManager:Lcom/narvii/video/services/VideoManager;

    .line 107
    .line 108
    iget-object v7, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$externalCallback:Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 109
    .line 110
    .line 111
    invoke-static/range {v2 .. v7}, Lcom/narvii/video/services/SceneMediaProcessor;->access$stepIntoBGMMixing(Lcom/narvii/video/services/SceneMediaProcessor;Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    .line 112
    :cond_4
    :goto_0
    return-void
.end method
