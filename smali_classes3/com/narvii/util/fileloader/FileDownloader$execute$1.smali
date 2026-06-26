.class final Lcom/narvii/util/fileloader/FileDownloader$execute$1;
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

.field final synthetic $dir:Ljava/io/File;

.field final synthetic $session:Lcom/narvii/util/fileloader/FileLoader$Session;


# direct methods
.method constructor <init>(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/util/fileloader/FileDownloader$execute$1;->$callback:Lcom/narvii/util/fileloader/IFileDownloadCallback;

    iput-object p2, p0, Lcom/narvii/util/fileloader/FileDownloader$execute$1;->$session:Lcom/narvii/util/fileloader/FileLoader$Session;

    iput-object p3, p0, Lcom/narvii/util/fileloader/FileDownloader$execute$1;->$dir:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 32
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileDownloader$execute$1;->$callback:Lcom/narvii/util/fileloader/IFileDownloadCallback;

    iget-object v1, p0, Lcom/narvii/util/fileloader/FileDownloader$execute$1;->$session:Lcom/narvii/util/fileloader/FileLoader$Session;

    invoke-virtual {v1}, Lcom/narvii/util/fileloader/FileLoader$Session;->getRequest()Lcom/narvii/util/fileloader/FileLoaderRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/fileloader/FileLoaderRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cache dir "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/narvii/util/fileloader/FileDownloader$execute$1;->$dir:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " not available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/narvii/util/fileloader/IFileDownloadCallback;->onError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
