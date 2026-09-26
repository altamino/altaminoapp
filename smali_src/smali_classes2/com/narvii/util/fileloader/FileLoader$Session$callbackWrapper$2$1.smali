.class public final Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
.field final synthetic this$0:Lcom/narvii/util/fileloader/FileLoader$Session;


# direct methods
.method constructor <init>(Lcom/narvii/util/fileloader/FileLoader$Session;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;->this$0:Lcom/narvii/util/fileloader/FileLoader$Session;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/narvii/util/fileloader/IFileDownloadCallback;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;->onProgressUpdate$lambda$0(Lcom/narvii/util/fileloader/IFileDownloadCallback;II)V

    return-void
.end method

.method private static final onProgressUpdate$lambda$0(Lcom/narvii/util/fileloader/IFileDownloadCallback;II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/narvii/util/fileloader/IFileDownloadCallback;->onProgressUpdate(II)V

    .line 4
    return-void
.end method


# virtual methods
.method public getRealCallback()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/util/fileloader/IFileDownloadCallback$DefaultImpls;->getRealCallback(Lcom/narvii/util/fileloader/IFileDownloadCallback;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/util/fileloader/IFileDownloadCallback$DefaultImpls;->getTag(Lcom/narvii/util/fileloader/IFileDownloadCallback;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "url"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;->this$0:Lcom/narvii/util/fileloader/FileLoader$Session;

    .line 9
    const/4 v0, -0x1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/narvii/util/fileloader/FileLoader$Session;->setStatus(I)V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;->this$0:Lcom/narvii/util/fileloader/FileLoader$Session;

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p2}, Lcom/narvii/util/fileloader/FileLoader$Session;->access$dispatchResult(Lcom/narvii/util/fileloader/FileLoader$Session;Ljava/lang/Exception;)V

    .line 18
    return-void
.end method

.method public onPostExecute(Ljava/io/File;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "file"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;->this$0:Lcom/narvii/util/fileloader/FileLoader$Session;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getRequest()Lcom/narvii/util/fileloader/FileLoaderRequest;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest;->applyZipExtract()Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    return-void

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;->this$0:Lcom/narvii/util/fileloader/FileLoader$Session;

    .line 21
    const/4 v0, 0x2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/narvii/util/fileloader/FileLoader$Session;->setStatus(I)V

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;->this$0:Lcom/narvii/util/fileloader/FileLoader$Session;

    .line 27
    const/4 v0, 0x0

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v0}, Lcom/narvii/util/fileloader/FileLoader$Session;->access$dispatchResult(Lcom/narvii/util/fileloader/FileLoader$Session;Ljava/lang/Exception;)V

    .line 31
    return-void
.end method

.method public onProgressUpdate(II)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;->this$0:Lcom/narvii/util/fileloader/FileLoader$Session;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/fileloader/FileLoader$Session;->access$getCallbacks$p(Lcom/narvii/util/fileloader/FileLoader$Session;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/narvii/util/fileloader/IFileDownloadCallback;

    .line 23
    .line 24
    new-instance v2, Lcom/narvii/util/fileloader/h;

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, v1, p1, p2}, Lcom/narvii/util/fileloader/h;-><init>(Lcom/narvii/util/fileloader/IFileDownloadCallback;II)V

    .line 28
    .line 29
    .line 30
    invoke-static {v2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method
