.class public final Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;
.super Ljava/lang/Object;
.source "FileLoader.kt"

# interfaces
.implements Lcom/narvii/util/fileloader/IFileDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2;->invoke()Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2;


# direct methods
.method constructor <init>(Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;->this$0:Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRealCallback()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-static {p0}, Lcom/narvii/util/fileloader/IFileDownloadCallback$DefaultImpls;->getRealCallback(Lcom/narvii/util/fileloader/IFileDownloadCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-static {p0}, Lcom/narvii/util/fileloader/IFileDownloadCallback$DefaultImpls;->getTag(Lcom/narvii/util/fileloader/IFileDownloadCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;->this$0:Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2;

    iget-object p1, p1, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2;->this$0:Lcom/narvii/util/fileloader/FileLoader$Session;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/narvii/util/fileloader/FileLoader$Session;->setStatus(I)V

    .line 54
    iget-object p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;->this$0:Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2;

    iget-object p1, p1, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2;->this$0:Lcom/narvii/util/fileloader/FileLoader$Session;

    invoke-static {p1, p2}, Lcom/narvii/util/fileloader/FileLoader$Session;->access$dispatchResult(Lcom/narvii/util/fileloader/FileLoader$Session;Ljava/lang/Exception;)V

    return-void
.end method

.method public onPostExecute(Ljava/io/File;)V
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;->this$0:Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2;

    iget-object p1, p1, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2;->this$0:Lcom/narvii/util/fileloader/FileLoader$Session;

    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getRequest()Lcom/narvii/util/fileloader/FileLoaderRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest;->applyZipExtract()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;->this$0:Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2;

    iget-object p1, p1, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2;->this$0:Lcom/narvii/util/fileloader/FileLoader$Session;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/narvii/util/fileloader/FileLoader$Session;->setStatus(I)V

    .line 49
    iget-object p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;->this$0:Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2;

    iget-object p1, p1, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2;->this$0:Lcom/narvii/util/fileloader/FileLoader$Session;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/util/fileloader/FileLoader$Session;->access$dispatchResult(Lcom/narvii/util/fileloader/FileLoader$Session;Ljava/lang/Exception;)V

    return-void
.end method

.method public onProgressUpdate(II)V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;->this$0:Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2;

    iget-object v0, v0, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2;->this$0:Lcom/narvii/util/fileloader/FileLoader$Session;

    invoke-static {v0}, Lcom/narvii/util/fileloader/FileLoader$Session;->access$getCallbacks$p(Lcom/narvii/util/fileloader/FileLoader$Session;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/fileloader/IFileDownloadCallback;

    .line 40
    new-instance v2, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1$onProgressUpdate$1;

    invoke-direct {v2, v1, p1, p2}, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1$onProgressUpdate$1;-><init>(Lcom/narvii/util/fileloader/IFileDownloadCallback;II)V

    invoke-static {v2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
