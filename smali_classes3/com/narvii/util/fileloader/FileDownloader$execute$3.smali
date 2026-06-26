.class final Lcom/narvii/util/fileloader/FileDownloader$execute$3;
.super Ljava/lang/Object;
.source "FileDownloader.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/fileloader/FileDownloader;->execute(Lcom/narvii/util/fileloader/FileLoader$Session;Ljava/io/File;Lcom/narvii/util/fileloader/IFileDownloadCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/util/fileloader/IFileDownloadCallback;

.field final synthetic $session:Lcom/narvii/util/fileloader/FileLoader$Session;


# direct methods
.method constructor <init>(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/util/fileloader/FileDownloader$execute$3;->$callback:Lcom/narvii/util/fileloader/IFileDownloadCallback;

    iput-object p2, p0, Lcom/narvii/util/fileloader/FileDownloader$execute$3;->$session:Lcom/narvii/util/fileloader/FileLoader$Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileDownloader$execute$3;->$callback:Lcom/narvii/util/fileloader/IFileDownloadCallback;

    iget-object v1, p0, Lcom/narvii/util/fileloader/FileDownloader$execute$3;->$session:Lcom/narvii/util/fileloader/FileLoader$Session;

    invoke-virtual {v1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Lcom/narvii/util/fileloader/IFileDownloadCallback;->onPostExecute(Ljava/io/File;)V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0
.end method
