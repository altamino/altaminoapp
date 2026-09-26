.class Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg7/c;


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
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final output:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final progressProportion:F

.field private final tag:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/video/services/VideoManager;


# direct methods
.method public constructor <init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Ljava/lang/String;F)V
    .locals 1
    .param p1    # Lcom/narvii/video/services/VideoManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/video/interfaces/IVideoServiceCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->this$0:Lcom/narvii/video/services/VideoManager;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    iput-object p3, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->output:Ljava/io/File;

    iput-object p4, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->tag:Ljava/lang/String;

    iput p5, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->progressProportion:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Ljava/lang/String;FILkotlin/jvm/internal/k;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    const/high16 p5, 0x3f800000    # 1.0f

    :cond_1
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Ljava/lang/String;F)V

    return-void
.end method


# virtual methods
.method public final getCallback()Lcom/narvii/video/interfaces/IVideoServiceCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    return-object v0
.end method

.method public final getOutput()Ljava/io/File;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->output:Ljava/io/File;

    return-object v0
.end method

.method public final getProgressProportion()F
    .locals 1

    iget v0, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->progressProportion:F

    return v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public onCancel()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->output:Ljava/io/File;

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
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->output:Ljava/io/File;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onActionCancelled()V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->onFinish()V

    .line 24
    return-void
.end method

.method public onFail()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->output:Ljava/io/File;

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
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->output:Ljava/io/File;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onActionFailed(Ljava/lang/Exception;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->onFinish()V

    .line 25
    return-void
.end method

.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onProgress(F)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->progressProportion:F

    .line 7
    mul-float/2addr p1, v1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->tag:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, p1, v1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onProgress(FLjava/lang/String;)V

    .line 13
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onActionStarted()V

    .line 8
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->output:Ljava/io/File;

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
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

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
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->output:Ljava/io/File;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    const-string v2, "getAbsolutePath(...)"

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onVideoProcessed(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;->onFinish()V

    .line 39
    :cond_2
    :goto_0
    return-void
.end method
