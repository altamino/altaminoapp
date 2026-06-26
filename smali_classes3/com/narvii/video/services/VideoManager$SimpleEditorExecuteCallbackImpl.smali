.class Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;
.super Ljava/lang/Object;
.source "VideoManager.kt"

# interfaces
.implements Lffmpeg/base/IEditorExecuteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/services/VideoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleEditorExecuteCallbackImpl"
.end annotation


# instance fields
.field private final callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

.field private final output:Ljava/io/File;

.field private final progressProportion:F

.field private final tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/video/services/VideoManager;


# direct methods
.method public constructor <init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Ljava/lang/String;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/interfaces/IVideoServiceCallback;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "F)V"
        }
    .end annotation

    const-string v0, "output"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    iput-object p1, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->this$0:Lcom/narvii/video/services/VideoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    iput-object p3, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->output:Ljava/io/File;

    iput-object p4, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->tag:Ljava/lang/String;

    iput p5, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->progressProportion:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Ljava/lang/String;FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    const/high16 p5, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    move v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 461
    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Ljava/lang/String;F)V

    return-void
.end method


# virtual methods
.method public final getCallback()Lcom/narvii/video/interfaces/IVideoServiceCallback;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    return-object v0
.end method

.method public final getOutput()Ljava/io/File;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->output:Ljava/io/File;

    return-object v0
.end method

.method public final getProgressProportion()F
    .locals 1

    .line 461
    iget v0, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->progressProportion:F

    return v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public onCancel()V
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->output:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->output:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onActionCancelled()V

    .line 492
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->onFinish()V

    return-void
.end method

.method public onFail()V
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->output:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->output:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onActionFailed(Ljava/lang/Exception;)V

    .line 484
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->onFinish()V

    return-void
.end method

.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onProgress(F)V
    .locals 2

    .line 467
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->progressProportion:F

    mul-float p1, p1, v1

    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->tag:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onProgress(FLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onActionStarted()V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 471
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->output:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onActionFailed(Ljava/lang/Exception;)V

    goto :goto_0

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->output:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "output.absolutePath"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onVideoProcessed(Ljava/lang/String;)V

    .line 475
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->onFinish()V

    :cond_2
    :goto_0
    return-void
.end method
