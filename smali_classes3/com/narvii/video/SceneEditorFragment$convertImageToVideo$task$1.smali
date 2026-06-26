.class public final Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;
.super Ljava/lang/Object;
.source "SceneEditorFragment.kt"

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

.field final synthetic $clip:Lcom/narvii/video/model/AVClipInfoPack;

.field final synthetic $errorOccurred:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $outputFile:Ljava/io/File;

.field final synthetic $runningTaskCount:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $runningTaskList:Ljava/util/ArrayList;

.field final synthetic this$0:Lcom/narvii/video/SceneEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/SceneEditorFragment;Lkotlin/jvm/internal/Ref$IntRef;Ljava/io/File;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/ArrayList;Lcom/narvii/util/Callback;Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Ljava/io/File;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Ljava/util/ArrayList;",
            "Lcom/narvii/util/Callback;",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ")V"
        }
    .end annotation

    .line 822
    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    iput-object p2, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$runningTaskCount:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p3, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$outputFile:Ljava/io/File;

    iput-object p4, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$errorOccurred:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p5, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$runningTaskList:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$callback:Lcom/narvii/util/Callback;

    iput-object p7, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$clip:Lcom/narvii/video/model/AVClipInfoPack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionCancelled()V
    .locals 2

    .line 859
    invoke-static {p0}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionCancelled(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V

    .line 860
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$outputFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$outputFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$errorOccurred:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 864
    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 865
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$runningTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/narvii/video/services/VideoManager;->abortAll(Ljava/util/ArrayList;)V

    .line 866
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-static {v0}, Lcom/narvii/video/SceneEditorFragment;->access$getProgress$p(Lcom/narvii/video/SceneEditorFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 867
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$callback:Lcom/narvii/util/Callback;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onActionFailed(Ljava/lang/Exception;)V
    .locals 1

    .line 846
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionFailed(Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/Exception;)V

    .line 847
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$outputFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 848
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$outputFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 850
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$errorOccurred:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 851
    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 852
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$runningTaskList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/narvii/video/services/VideoManager;->abortAll(Ljava/util/ArrayList;)V

    .line 853
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-static {p1}, Lcom/narvii/video/SceneEditorFragment;->access$getProgress$p(Lcom/narvii/video/SceneEditorFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->hide()V

    .line 854
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$callback:Lcom/narvii/util/Callback;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onActionStarted()V
    .locals 0

    .line 822
    invoke-static {p0}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionStarted(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V

    return-void
.end method

.method public onExecutingTaskChanged(Lffmpeg/base/MediaEditingConfig;)V
    .locals 1

    const-string v0, "newTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 822
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onExecutingTaskChanged(Lcom/narvii/video/interfaces/IVideoServiceCallback;Lffmpeg/base/MediaEditingConfig;)V

    return-void
.end method

.method public onFrameBitmapLoaded(ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 822
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onFrameBitmapLoaded(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public onFramePicturesLoaded(ILjava/io/File;)V
    .locals 0

    .line 822
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onFramePicturesLoaded(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/io/File;)V

    return-void
.end method

.method public onProgress(FLjava/lang/String;)V
    .locals 0

    .line 822
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onProgress(Lcom/narvii/video/interfaces/IVideoServiceCallback;FLjava/lang/String;)V

    return-void
.end method

.method public onVideoProcessed(Ljava/lang/String;)V
    .locals 2

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 824
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onVideoProcessed(Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$runningTaskCount:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 826
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/video/services/VideoManager;->fetchStreamInfoSync(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;

    move-result-object p1

    iget p1, p1, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-ge p1, v1, :cond_1

    .line 827
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$outputFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 828
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$outputFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 830
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$errorOccurred:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v1, :cond_2

    .line 831
    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 832
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$runningTaskList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/narvii/video/services/VideoManager;->abortAll(Ljava/util/ArrayList;)V

    .line 833
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-static {p1}, Lcom/narvii/video/SceneEditorFragment;->access$getProgress$p(Lcom/narvii/video/SceneEditorFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->hide()V

    .line 834
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$callback:Lcom/narvii/util/Callback;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    goto :goto_0

    .line 837
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$clip:Lcom/narvii/video/model/AVClipInfoPack;

    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$outputFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 838
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$runningTaskCount:Lkotlin/jvm/internal/Ref$IntRef;

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-gtz p1, :cond_2

    .line 839
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-static {p1}, Lcom/narvii/video/SceneEditorFragment;->access$getProgress$p(Lcom/narvii/video/SceneEditorFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->hide()V

    .line 840
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;->$callback:Lcom/narvii/util/Callback;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
