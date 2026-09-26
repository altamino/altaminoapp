.class public final Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/interfaces/IVideoServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/SceneEditorFragment;->convertImageToVideo(Ljava/util/List;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $clip:Lcom/narvii/video/model/AVClipInfoPack;

.field final synthetic $errorOccurred:Lkotlin/jvm/internal/k0;

.field final synthetic $outputFile:Ljava/io/File;

.field final synthetic $runningTaskCount:Lkotlin/jvm/internal/n0;

.field final synthetic $runningTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lg7/d;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/video/SceneEditorFragment;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/n0;Lcom/narvii/video/SceneEditorFragment;Ljava/io/File;Lkotlin/jvm/internal/k0;Ljava/util/ArrayList;Lcom/narvii/util/Callback;Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/n0;",
            "Lcom/narvii/video/SceneEditorFragment;",
            "Ljava/io/File;",
            "Lkotlin/jvm/internal/k0;",
            "Ljava/util/ArrayList<",
            "Lg7/d;",
            ">;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$runningTaskCount:Lkotlin/jvm/internal/n0;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$outputFile:Ljava/io/File;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$errorOccurred:Lkotlin/jvm/internal/k0;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$runningTaskList:Ljava/util/ArrayList;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$callback:Lcom/narvii/util/Callback;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$clip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
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
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$outputFile:Ljava/io/File;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$outputFile:Ljava/io/File;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$errorOccurred:Lkotlin/jvm/internal/k0;

    .line 19
    .line 20
    iget-boolean v1, v0, Lkotlin/jvm/internal/k0;->element:Z

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    const/4 v1, 0x1

    .line 24
    .line 25
    iput-boolean v1, v0, Lkotlin/jvm/internal/k0;->element:Z

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$runningTaskList:Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/narvii/video/services/VideoManager;->abortAll(Ljava/util/ArrayList;)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lcom/narvii/video/SceneEditorFragment;->access$getProgress(Lcom/narvii/video/SceneEditorFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$callback:Lcom/narvii/util/Callback;

    .line 48
    .line 49
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 53
    :cond_1
    return-void
.end method

.method public onActionFailed(Ljava/lang/Exception;)V
    .locals 1
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
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$outputFile:Ljava/io/File;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 9
    move-result p1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$outputFile:Ljava/io/File;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$errorOccurred:Lkotlin/jvm/internal/k0;

    .line 19
    .line 20
    iget-boolean v0, p1, Lkotlin/jvm/internal/k0;->element:Z

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    const/4 v0, 0x1

    .line 24
    .line 25
    iput-boolean v0, p1, Lkotlin/jvm/internal/k0;->element:Z

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$runningTaskList:Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/narvii/video/services/VideoManager;->abortAll(Ljava/util/ArrayList;)V

    .line 37
    .line 38
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lcom/narvii/video/SceneEditorFragment;->access$getProgress(Lcom/narvii/video/SceneEditorFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/app/Dialog;->hide()V

    .line 46
    .line 47
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$callback:Lcom/narvii/util/Callback;

    .line 48
    .line 49
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 53
    :cond_1
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
    return-void
.end method

.method public onVideoProcessed(Ljava/lang/String;)V
    .locals 2
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
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$runningTaskCount:Lkotlin/jvm/internal/n0;

    .line 11
    .line 12
    iget v1, v0, Lkotlin/jvm/internal/n0;->element:I

    .line 13
    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    iput v1, v0, Lkotlin/jvm/internal/n0;->element:I

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/narvii/video/services/VideoManager;->fetchStreamInfoSync(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iget p1, p1, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    .line 29
    .line 30
    const/16 v0, 0x3e8

    .line 31
    .line 32
    if-ge p1, v0, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$outputFile:Ljava/io/File;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 38
    move-result p1

    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$outputFile:Ljava/io/File;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 46
    .line 47
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$errorOccurred:Lkotlin/jvm/internal/k0;

    .line 48
    .line 49
    iget-boolean v0, p1, Lkotlin/jvm/internal/k0;->element:Z

    .line 50
    .line 51
    if-nez v0, :cond_2

    .line 52
    const/4 v0, 0x1

    .line 53
    .line 54
    iput-boolean v0, p1, Lkotlin/jvm/internal/k0;->element:Z

    .line 55
    .line 56
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$runningTaskList:Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lcom/narvii/video/services/VideoManager;->abortAll(Ljava/util/ArrayList;)V

    .line 66
    .line 67
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Lcom/narvii/video/SceneEditorFragment;->access$getProgress(Lcom/narvii/video/SceneEditorFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/app/Dialog;->hide()V

    .line 75
    .line 76
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$callback:Lcom/narvii/util/Callback;

    .line 77
    .line 78
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 82
    goto :goto_0

    .line 83
    .line 84
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$clip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 85
    .line 86
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$outputFile:Ljava/io/File;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    iput-object v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 93
    .line 94
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$runningTaskCount:Lkotlin/jvm/internal/n0;

    .line 95
    .line 96
    iget p1, p1, Lkotlin/jvm/internal/n0;->element:I

    .line 97
    .line 98
    if-gtz p1, :cond_2

    .line 99
    .line 100
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Lcom/narvii/video/SceneEditorFragment;->access$getProgress(Lcom/narvii/video/SceneEditorFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/app/Dialog;->hide()V

    .line 108
    .line 109
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$callback:Lcom/narvii/util/Callback;

    .line 110
    .line 111
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 112
    .line 113
    .line 114
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 115
    :cond_2
    :goto_0
    return-void
.end method
