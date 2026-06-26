.class Lcom/narvii/media/online/audio/AudioDownloader$1;
.super Ljava/lang/Object;
.source "AudioDownloader.java"

# interfaces
.implements Lcom/narvii/util/fileloader/IFileDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/online/audio/AudioDownloader;->loadAudioFile(Lcom/narvii/media/online/audio/model/Sound;Ljava/lang/Object;Lcom/narvii/media/online/audio/AudioDownloader$AudioDownloaderCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/online/audio/AudioDownloader;

.field final synthetic val$callback:Lcom/narvii/media/online/audio/AudioDownloader$AudioDownloaderCallback;

.field final synthetic val$callbackTag:Ljava/lang/Object;

.field final synthetic val$sound:Lcom/narvii/media/online/audio/model/Sound;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/media/online/audio/AudioDownloader;Lcom/narvii/media/online/audio/AudioDownloader$AudioDownloaderCallback;Lcom/narvii/media/online/audio/model/Sound;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/narvii/media/online/audio/AudioDownloader$1;->this$0:Lcom/narvii/media/online/audio/AudioDownloader;

    iput-object p2, p0, Lcom/narvii/media/online/audio/AudioDownloader$1;->val$callback:Lcom/narvii/media/online/audio/AudioDownloader$AudioDownloaderCallback;

    iput-object p3, p0, Lcom/narvii/media/online/audio/AudioDownloader$1;->val$sound:Lcom/narvii/media/online/audio/model/Sound;

    iput-object p4, p0, Lcom/narvii/media/online/audio/AudioDownloader$1;->val$url:Ljava/lang/String;

    iput-object p5, p0, Lcom/narvii/media/online/audio/AudioDownloader$1;->val$callbackTag:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRealCallback()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/narvii/media/online/audio/AudioDownloader$1;->val$callbackTag:Ljava/lang/Object;

    return-object v0
.end method

.method public onError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 83
    iget-object p1, p0, Lcom/narvii/media/online/audio/AudioDownloader$1;->val$callback:Lcom/narvii/media/online/audio/AudioDownloader$AudioDownloaderCallback;

    iget-object v0, p0, Lcom/narvii/media/online/audio/AudioDownloader$1;->val$sound:Lcom/narvii/media/online/audio/model/Sound;

    invoke-interface {p1, v0, p2}, Lcom/narvii/media/online/audio/AudioDownloader$AudioDownloaderCallback;->onError(Lcom/narvii/media/online/audio/model/Sound;Ljava/lang/Exception;)V

    return-void
.end method

.method public onPostExecute(Ljava/io/File;)V
    .locals 2

    .line 74
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/narvii/media/online/audio/AudioDownloader$1;->val$url:Ljava/lang/String;

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1}, Ljava/io/FileNotFoundException;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/media/online/audio/AudioDownloader$1;->onError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/online/audio/AudioDownloader$1;->val$callback:Lcom/narvii/media/online/audio/AudioDownloader$AudioDownloaderCallback;

    iget-object v1, p0, Lcom/narvii/media/online/audio/AudioDownloader$1;->val$sound:Lcom/narvii/media/online/audio/model/Sound;

    invoke-interface {v0, p1, v1}, Lcom/narvii/media/online/audio/AudioDownloader$AudioDownloaderCallback;->onPostExecute(Ljava/io/File;Lcom/narvii/media/online/audio/model/Sound;)V

    return-void
.end method

.method public onProgressUpdate(II)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/narvii/media/online/audio/AudioDownloader$1;->val$callback:Lcom/narvii/media/online/audio/AudioDownloader$AudioDownloaderCallback;

    iget-object v1, p0, Lcom/narvii/media/online/audio/AudioDownloader$1;->val$sound:Lcom/narvii/media/online/audio/model/Sound;

    invoke-interface {v0, v1, p1, p2}, Lcom/narvii/media/online/audio/AudioDownloader$AudioDownloaderCallback;->onProgressUpdate(Lcom/narvii/media/online/audio/model/Sound;II)V

    return-void
.end method
