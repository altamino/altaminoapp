.class public final Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg7/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/services/VideoManager;->mixBGM_Stage1(Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;)Lg7/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

.field final synthetic $output:Ljava/io/File;

.field final synthetic $sceneVideoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tmpSilentAudioFile:Ljava/io/File;

.field final synthetic this$0:Lcom/narvii/video/services/VideoManager;


# direct methods
.method constructor <init>(Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Ljava/io/File;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/interfaces/IVideoServiceCallback;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;",
            "Lcom/narvii/video/services/VideoManager;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;->$callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;->$tmpSilentAudioFile:Ljava/io/File;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;->$output:Ljava/io/File;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;->$sceneVideoList:Ljava/util/ArrayList;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;->this$0:Lcom/narvii/video/services/VideoManager;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static final synthetic access$onTaskStopped(Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;->onTaskStopped()V

    .line 4
    return-void
.end method

.method private final onTaskStopped()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;->$tmpSilentAudioFile:Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;->$tmpSilentAudioFile:Ljava/io/File;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;->$output:Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;->$output:Ljava/io/File;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;->onTaskStopped()V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;->$callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onActionCancelled()V

    .line 24
    :cond_1
    return-void
.end method

.method public onFail()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;->$output:Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;->$output:Ljava/io/File;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;->onTaskStopped()V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;->$callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onActionFailed(Ljava/lang/Exception;)V

    .line 25
    :cond_1
    return-void
.end method

.method public onProgress(F)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;->$callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    const v1, 0x3e99999a    # 0.3f

    .line 8
    mul-float/2addr p1, v1

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, p1, v1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onProgress(FLjava/lang/String;)V

    .line 13
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lg7/c$a;->d(Lg7/c;)V

    .line 4
    return-void
.end method

.method public onSuccess()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;->$tmpSilentAudioFile:Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;->$callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onActionFailed(Ljava/lang/Exception;)V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    new-instance v0, Lcom/narvii/video/model/AVClipInfoPack;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;->$tmpSilentAudioFile:Ljava/io/File;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    iput-object v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 31
    .line 32
    new-instance v1, Lg7/d$a$a;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;->$output:Ljava/io/File;

    .line 35
    .line 36
    const/16 v3, 0x20

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, v0, v2, v3}, Lg7/d$a$a;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;I)V

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;->$sceneVideoList:Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0}, Lg7/d$a$a;->a(Ljava/util/List;)Lg7/d$a$a;

    .line 45
    move-result-object v0

    .line 46
    const/4 v1, 0x1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lg7/d$a$a;->b(Z)Lg7/d$a$a;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lg7/d$a$a;->c()Lg7/d;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lg7/d;->L(Z)V

    .line 58
    .line 59
    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;->$callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    .line 60
    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    .line 64
    invoke-interface {v1, v0}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onExecutingTaskChanged(Lg7/d;)V

    .line 65
    .line 66
    :cond_1
    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;->this$0:Lcom/narvii/video/services/VideoManager;

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Lcom/narvii/video/services/VideoManager;->access$getDelegate$p(Lcom/narvii/video/services/VideoManager;)Lg7/a;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    iget-object v2, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;->this$0:Lcom/narvii/video/services/VideoManager;

    .line 73
    .line 74
    .line 75
    invoke-static {v2}, Lcom/narvii/video/services/VideoManager;->access$getBackgroundTaskExecutor$p(Lcom/narvii/video/services/VideoManager;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 76
    move-result-object v2

    .line 77
    .line 78
    new-instance v3, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1$onSuccess$1;

    .line 79
    .line 80
    iget-object v4, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;->this$0:Lcom/narvii/video/services/VideoManager;

    .line 81
    .line 82
    iget-object v5, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;->$callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    .line 83
    .line 84
    iget-object v6, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;->$output:Ljava/io/File;

    .line 85
    .line 86
    .line 87
    invoke-direct {v3, v4, v5, v6, p0}, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1$onSuccess$1;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;)V

    .line 88
    .line 89
    .line 90
    invoke-interface {v1, v0, v2, v3}, Lg7/a;->execute(Lg7/d;Ljava/util/concurrent/ExecutorService;Lg7/c;)V

    .line 91
    :cond_2
    :goto_0
    return-void
.end method
