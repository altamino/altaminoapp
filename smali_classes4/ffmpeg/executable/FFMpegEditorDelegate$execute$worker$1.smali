.class public final Lffmpeg/executable/FFMpegEditorDelegate$execute$worker$1;
.super Ljava/lang/Object;
.source "FFMpegEditorDelegate.kt"

# interfaces
.implements Lffmpeg/base/IEditorExecuteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lffmpeg/executable/FFMpegEditorDelegate;->execute(Lffmpeg/base/MediaEditingConfig;Ljava/util/concurrent/ExecutorService;Lffmpeg/base/IEditorExecuteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lffmpeg/base/IEditorExecuteCallback;

.field final synthetic $config:Lffmpeg/base/MediaEditingConfig;

.field final synthetic this$0:Lffmpeg/executable/FFMpegEditorDelegate;


# direct methods
.method constructor <init>(Lffmpeg/executable/FFMpegEditorDelegate;Lffmpeg/base/IEditorExecuteCallback;Lffmpeg/base/MediaEditingConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lffmpeg/base/IEditorExecuteCallback;",
            "Lffmpeg/base/MediaEditingConfig;",
            ")V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lffmpeg/executable/FFMpegEditorDelegate$execute$worker$1;->this$0:Lffmpeg/executable/FFMpegEditorDelegate;

    iput-object p2, p0, Lffmpeg/executable/FFMpegEditorDelegate$execute$worker$1;->$callback:Lffmpeg/base/IEditorExecuteCallback;

    iput-object p3, p0, Lffmpeg/executable/FFMpegEditorDelegate$execute$worker$1;->$config:Lffmpeg/base/MediaEditingConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 51
    iget-object v0, p0, Lffmpeg/executable/FFMpegEditorDelegate$execute$worker$1;->this$0:Lffmpeg/executable/FFMpegEditorDelegate;

    invoke-static {v0}, Lffmpeg/executable/FFMpegEditorDelegate;->access$getRunningTasks$p(Lffmpeg/executable/FFMpegEditorDelegate;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lffmpeg/executable/FFMpegEditorDelegate$execute$worker$1;->$config:Lffmpeg/base/MediaEditingConfig;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lffmpeg/executable/FFMpegEditorDelegate$execute$worker$1;->$callback:Lffmpeg/base/IEditorExecuteCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lffmpeg/base/IEditorExecuteCallback;->onCancel()V

    :cond_0
    return-void
.end method

.method public onFail()V
    .locals 2

    .line 46
    iget-object v0, p0, Lffmpeg/executable/FFMpegEditorDelegate$execute$worker$1;->this$0:Lffmpeg/executable/FFMpegEditorDelegate;

    invoke-static {v0}, Lffmpeg/executable/FFMpegEditorDelegate;->access$getRunningTasks$p(Lffmpeg/executable/FFMpegEditorDelegate;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lffmpeg/executable/FFMpegEditorDelegate$execute$worker$1;->$config:Lffmpeg/base/MediaEditingConfig;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lffmpeg/executable/FFMpegEditorDelegate$execute$worker$1;->$callback:Lffmpeg/base/IEditorExecuteCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lffmpeg/base/IEditorBaseCallback;->onFail()V

    :cond_0
    return-void
.end method

.method public onProgress(F)V
    .locals 1

    .line 37
    iget-object v0, p0, Lffmpeg/executable/FFMpegEditorDelegate$execute$worker$1;->$callback:Lffmpeg/base/IEditorExecuteCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lffmpeg/base/IEditorExecuteCallback;->onProgress(F)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 33
    iget-object v0, p0, Lffmpeg/executable/FFMpegEditorDelegate$execute$worker$1;->$callback:Lffmpeg/base/IEditorExecuteCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lffmpeg/base/IEditorBaseCallback;->onStart()V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 41
    iget-object v0, p0, Lffmpeg/executable/FFMpegEditorDelegate$execute$worker$1;->this$0:Lffmpeg/executable/FFMpegEditorDelegate;

    invoke-static {v0}, Lffmpeg/executable/FFMpegEditorDelegate;->access$getRunningTasks$p(Lffmpeg/executable/FFMpegEditorDelegate;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lffmpeg/executable/FFMpegEditorDelegate$execute$worker$1;->$config:Lffmpeg/base/MediaEditingConfig;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lffmpeg/executable/FFMpegEditorDelegate$execute$worker$1;->$callback:Lffmpeg/base/IEditorExecuteCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lffmpeg/base/IEditorBaseCallback;->onSuccess()V

    :cond_0
    return-void
.end method
