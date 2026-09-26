.class public final Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$muxAVFile$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/interfaces/IVideoServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->muxAVFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le8/l;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $muxSuccess:Lkotlin/jvm/internal/k0;

.field final synthetic $progressCalc:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/k0;Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;Le8/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/k0;",
            "Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;",
            "Le8/l<",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$muxAVFile$1;->$muxSuccess:Lkotlin/jvm/internal/k0;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$muxAVFile$1;->this$0:Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$muxAVFile$1;->$progressCalc:Le8/l;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onActionCancelled()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionCancelled(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V

    .line 4
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
    iget-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$muxAVFile$1;->$muxSuccess:Lkotlin/jvm/internal/k0;

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    iput-boolean v0, p1, Lkotlin/jvm/internal/k0;->element:Z

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$muxAVFile$1;->this$0:Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->access$getLock$p(Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;)Ljava/util/concurrent/locks/ReentrantLock;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$muxAVFile$1;->this$0:Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-static {v0}, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->access$getCondition$p(Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;)Ljava/util/concurrent/locks/Condition;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 27
    .line 28
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 37
    throw v0
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
    iget-object p2, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$muxAVFile$1;->this$0:Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    new-array v0, v0, [Ljava/lang/Float;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$muxAVFile$1;->$progressCalc:Le8/l;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    aput-object p1, v0, v1

    .line 19
    .line 20
    .line 21
    invoke-static {p2, v0}, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->access$publishProgress(Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;[Ljava/lang/Float;)V

    .line 22
    return-void
.end method

.method public onVideoProcessed(Ljava/lang/String;)V
    .locals 1
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
    iget-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$muxAVFile$1;->$muxSuccess:Lkotlin/jvm/internal/k0;

    .line 11
    const/4 v0, 0x1

    .line 12
    .line 13
    iput-boolean v0, p1, Lkotlin/jvm/internal/k0;->element:Z

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$muxAVFile$1;->this$0:Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->access$getLock$p(Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;)Ljava/util/concurrent/locks/ReentrantLock;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$muxAVFile$1;->this$0:Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 25
    .line 26
    .line 27
    :try_start_0
    invoke-static {v0}, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->access$getCondition$p(Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;)Ljava/util/concurrent/locks/Condition;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 32
    .line 33
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 42
    throw v0
.end method
