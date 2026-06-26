.class public final Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;
.super Landroid/os/AsyncTask;
.source "FFMpegEditorDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lffmpeg/executable/FFMpegEditorDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StreamingExecutor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Float;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFFMpegEditorDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FFMpegEditorDelegate.kt\nffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,691:1\n37#2,2:692\n*E\n*S KotlinDebug\n*F\n+ 1 FFMpegEditorDelegate.kt\nffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor\n*L\n529#1,2:692\n*E\n"
.end annotation


# instance fields
.field private callback:Lffmpeg/base/IEditorExecuteCallback;

.field private final config:Lffmpeg/base/MediaEditingConfig;

.field final synthetic this$0:Lffmpeg/executable/FFMpegEditorDelegate;

.field private threadId:J


# direct methods
.method public constructor <init>(Lffmpeg/executable/FFMpegEditorDelegate;Lffmpeg/base/MediaEditingConfig;Lffmpeg/base/IEditorExecuteCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lffmpeg/base/MediaEditingConfig;",
            "Lffmpeg/base/IEditorExecuteCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    iput-object p1, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->this$0:Lffmpeg/executable/FFMpegEditorDelegate;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->config:Lffmpeg/base/MediaEditingConfig;

    iput-object p3, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->callback:Lffmpeg/base/IEditorExecuteCallback;

    const-wide/16 p1, -0x1

    .line 509
    iput-wide p1, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->threadId:J

    return-void
.end method


# virtual methods
.method public final abort()V
    .locals 2

    .line 554
    iget-object v0, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->callback:Lffmpeg/base/IEditorExecuteCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lffmpeg/base/IEditorExecuteCallback;->onCancel()V

    :cond_0
    const/4 v0, 0x0

    .line 555
    iput-object v0, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->callback:Lffmpeg/base/IEditorExecuteCallback;

    .line 556
    iget-wide v0, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->threadId:J

    invoke-static {v0, v1}, Lcom/narvii/editors/ffmpeg/FFmpegJni;->removeProgressCallback(J)V

    const/4 v0, 0x1

    .line 557
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 558
    iget-wide v0, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->threadId:J

    invoke-static {v0, v1}, Lcom/narvii/editors/ffmpeg/FFmpegJni;->abort(J)V

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "CountTest"

    const-string v0, "1"

    .line 516
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 518
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 519
    iget-object v1, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->config:Lffmpeg/base/MediaEditingConfig;

    invoke-virtual {v1}, Lffmpeg/base/MediaEditingConfig;->getInputClipList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 520
    iget-object v3, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->this$0:Lffmpeg/executable/FFMpegEditorDelegate;

    iget-object v2, v2, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    const-string v4, "clip.inputPath"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lffmpeg/executable/FFMpegEditorDelegate;->fetchStreamingInfo(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 522
    :cond_0
    iget-object v1, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->this$0:Lffmpeg/executable/FFMpegEditorDelegate;

    iget-object v2, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->config:Lffmpeg/base/MediaEditingConfig;

    invoke-static {v1, v2, v0}, Lffmpeg/executable/FFMpegEditorDelegate;->access$updateExecuteConfig(Lffmpeg/executable/FFMpegEditorDelegate;Lffmpeg/base/MediaEditingConfig;Ljava/util/ArrayList;)V

    .line 523
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Thread.currentThread()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->threadId:J

    .line 524
    iget-object v0, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->callback:Lffmpeg/base/IEditorExecuteCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->config:Lffmpeg/base/MediaEditingConfig;

    invoke-virtual {v0}, Lffmpeg/base/MediaEditingConfig;->getNeedProgressCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    iget-wide v0, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->threadId:J

    new-instance v2, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor$doInBackground$1;

    invoke-direct {v2, p0}, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor$doInBackground$1;-><init>(Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;)V

    invoke-static {v0, v1, v2}, Lcom/narvii/editors/ffmpeg/FFmpegJni;->addProgressCallback(JLcom/narvii/editors/ffmpeg/FFmpegJni$IFFMpegExecProgressCallback;)V

    .line 529
    :cond_1
    iget-object v0, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->this$0:Lffmpeg/executable/FFMpegEditorDelegate;

    iget-object v1, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->config:Lffmpeg/base/MediaEditingConfig;

    invoke-static {v0, v1}, Lffmpeg/executable/FFMpegEditorDelegate;->access$parseCommand(Lffmpeg/executable/FFMpegEditorDelegate;Lffmpeg/base/MediaEditingConfig;)Ljava/util/List;

    move-result-object v0

    new-array v1, p1, [Ljava/lang/String;

    .line 693
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, [Ljava/lang/String;

    .line 529
    iget-wide v1, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->threadId:J

    iget-object v3, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->config:Lffmpeg/base/MediaEditingConfig;

    invoke-virtual {v3}, Lffmpeg/base/MediaEditingConfig;->getDuration()I

    move-result v3

    iget-object v4, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->config:Lffmpeg/base/MediaEditingConfig;

    invoke-virtual {v4}, Lffmpeg/base/MediaEditingConfig;->getNeedProgressCallback()Z

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/narvii/editors/ffmpeg/FFmpegJni;->run([Ljava/lang/String;JIZ)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    iget-wide v0, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->threadId:J

    invoke-static {v0, v1}, Lcom/narvii/editors/ffmpeg/FFmpegJni;->removeProgressCallback(J)V

    return-object p1

    .line 693
    :cond_3
    :try_start_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 533
    iget-wide v0, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->threadId:J

    invoke-static {v0, v1}, Lcom/narvii/editors/ffmpeg/FFmpegJni;->removeProgressCallback(J)V

    throw p1

    :catch_0
    iget-wide v0, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->threadId:J

    invoke-static {v0, v1}, Lcom/narvii/editors/ffmpeg/FFmpegJni;->removeProgressCallback(J)V

    .line 535
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 508
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final getCallback()Lffmpeg/base/IEditorExecuteCallback;
    .locals 1

    .line 508
    iget-object v0, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->callback:Lffmpeg/base/IEditorExecuteCallback;

    return-object v0
.end method

.method protected onCancelled(Ljava/lang/Boolean;)V
    .locals 2

    .line 549
    iget-object p1, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->callback:Lffmpeg/base/IEditorExecuteCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lffmpeg/base/IEditorExecuteCallback;->onCancel()V

    .line 550
    :cond_0
    iget-wide v0, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->threadId:J

    invoke-static {v0, v1}, Lcom/narvii/editors/ffmpeg/FFmpegJni;->removeProgressCallback(J)V

    return-void
.end method

.method public bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 508
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->onCancelled(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 539
    iget-object v0, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->callback:Lffmpeg/base/IEditorExecuteCallback;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 540
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 541
    invoke-interface {v0}, Lffmpeg/base/IEditorBaseCallback;->onSuccess()V

    goto :goto_0

    .line 543
    :cond_0
    invoke-interface {v0}, Lffmpeg/base/IEditorBaseCallback;->onFail()V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 508
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 512
    iget-object v0, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->callback:Lffmpeg/base/IEditorExecuteCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lffmpeg/base/IEditorBaseCallback;->onStart()V

    :cond_0
    return-void
.end method
