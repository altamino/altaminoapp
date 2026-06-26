.class public final Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$trimMedia$2;
.super Ljava/lang/Object;
.source "TrimVideoGenerator.kt"

# interfaces
.implements Lcom/narvii/video/interfaces/IVideoServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->trimMedia(Ljava/lang/String;Ljava/lang/String;IIZZLkotlin/jvm/functions/Function1;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrimVideoGenerator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrimVideoGenerator.kt\ncom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$trimMedia$2\n*L\n1#1,496:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $progressCalc:Lkotlin/jvm/functions/Function1;

.field final synthetic $trimSuccess:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;


# direct methods
.method constructor <init>(Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    .line 377
    iput-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$trimMedia$2;->this$0:Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;

    iput-object p2, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$trimMedia$2;->$trimSuccess:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$trimMedia$2;->$progressCalc:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionCancelled()V
    .locals 0

    .line 377
    invoke-static {p0}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionCancelled(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V

    return-void
.end method

.method public onActionFailed(Ljava/lang/Exception;)V
    .locals 1

    .line 388
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionFailed(Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/Exception;)V

    .line 389
    iget-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$trimMedia$2;->$trimSuccess:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 390
    iget-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$trimMedia$2;->this$0:Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;

    invoke-static {p1}, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->access$getLock$p(Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$trimMedia$2;->this$0:Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;

    invoke-static {v0}, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->access$getCondition$p(Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 392
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public onActionStarted()V
    .locals 0

    .line 377
    invoke-static {p0}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionStarted(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V

    return-void
.end method

.method public onExecutingTaskChanged(Lffmpeg/base/MediaEditingConfig;)V
    .locals 1

    const-string v0, "newTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onExecutingTaskChanged(Lcom/narvii/video/interfaces/IVideoServiceCallback;Lffmpeg/base/MediaEditingConfig;)V

    return-void
.end method

.method public onFrameBitmapLoaded(ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 377
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onFrameBitmapLoaded(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public onFramePicturesLoaded(ILjava/io/File;)V
    .locals 0

    .line 377
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onFramePicturesLoaded(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/io/File;)V

    return-void
.end method

.method public onProgress(FLjava/lang/String;)V
    .locals 2

    .line 396
    iget-object p2, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$trimMedia$2;->this$0:Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Float;

    iget-object v1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$trimMedia$2;->$progressCalc:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->access$publishProgress(Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;[Ljava/lang/Float;)V

    return-void
.end method

.method public onVideoProcessed(Ljava/lang/String;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onVideoProcessed(Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;)V

    .line 381
    iget-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$trimMedia$2;->$trimSuccess:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 382
    iget-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$trimMedia$2;->this$0:Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;

    invoke-static {p1}, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->access$getLock$p(Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$trimMedia$2;->this$0:Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;

    invoke-static {v0}, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->access$getCondition$p(Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 384
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
