.class public final Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg7/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/services/VideoManager;->mixBGM_Stage2(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;ILcom/narvii/video/interfaces/IVideoServiceCallback;)Lg7/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

.field final synthetic $output:Ljava/io/File;

.field final synthetic $tmpAudioPieceFile:Ljava/io/File;

.field final synthetic $video:Lcom/narvii/video/model/AVClipInfoPack;

.field final synthetic this$0:Lcom/narvii/video/services/VideoManager;


# direct methods
.method constructor <init>(Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/services/VideoManager;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$tmpAudioPieceFile:Ljava/io/File;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$video:Lcom/narvii/video/model/AVClipInfoPack;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$output:Ljava/io/File;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->this$0:Lcom/narvii/video/services/VideoManager;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static final synthetic access$onTaskStopped(Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->onTaskStopped()V

    .line 4
    return-void
.end method

.method private final onTaskStopped()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$tmpAudioPieceFile:Ljava/io/File;

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
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$tmpAudioPieceFile:Ljava/io/File;

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
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$output:Ljava/io/File;

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
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$output:Ljava/io/File;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->onTaskStopped()V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

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
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$output:Ljava/io/File;

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
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$output:Ljava/io/File;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->onTaskStopped()V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

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
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/high16 v1, 0x3f000000    # 0.5f

    .line 7
    mul-float/2addr p1, v1

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1, v1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onProgress(FLjava/lang/String;)V

    .line 12
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
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$tmpAudioPieceFile:Ljava/io/File;

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
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

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
    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$tmpAudioPieceFile:Ljava/io/File;

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
    iget-object v2, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$video:Lcom/narvii/video/model/AVClipInfoPack;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$output:Ljava/io/File;

    .line 37
    .line 38
    const/16 v4, 0x80

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2, v3, v4}, Lg7/d$a$a;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;I)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lkotlin/collections/t;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Lg7/d$a$a;->a(Ljava/util/List;)Lg7/d$a$a;

    .line 49
    move-result-object v0

    .line 50
    const/4 v1, 0x1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lg7/d$a$a;->f(Z)Lg7/d$a$a;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lg7/d$a$a;->c()Lg7/d;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    .line 61
    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    .line 65
    invoke-interface {v1, v0}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onExecutingTaskChanged(Lg7/d;)V

    .line 66
    .line 67
    :cond_1
    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->this$0:Lcom/narvii/video/services/VideoManager;

    .line 68
    .line 69
    .line 70
    invoke-static {v1}, Lcom/narvii/video/services/VideoManager;->access$getDelegate$p(Lcom/narvii/video/services/VideoManager;)Lg7/a;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    iget-object v2, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->this$0:Lcom/narvii/video/services/VideoManager;

    .line 74
    .line 75
    .line 76
    invoke-static {v2}, Lcom/narvii/video/services/VideoManager;->access$getBackgroundTaskExecutor$p(Lcom/narvii/video/services/VideoManager;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 77
    move-result-object v2

    .line 78
    .line 79
    new-instance v3, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1$onSuccess$1;

    .line 80
    .line 81
    iget-object v4, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->this$0:Lcom/narvii/video/services/VideoManager;

    .line 82
    .line 83
    iget-object v5, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    .line 84
    .line 85
    iget-object v6, p0, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;->$output:Ljava/io/File;

    .line 86
    .line 87
    .line 88
    invoke-direct {v3, v4, v5, v6, p0}, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1$onSuccess$1;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {v1, v0, v2, v3}, Lg7/a;->execute(Lg7/d;Ljava/util/concurrent/ExecutorService;Lg7/c;)V

    .line 92
    :cond_2
    :goto_0
    return-void
.end method
