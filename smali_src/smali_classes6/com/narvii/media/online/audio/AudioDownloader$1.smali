.class Lcom/narvii/media/online/audio/AudioDownloader$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/online/audio/AudioDownloader$1;->this$0:Lcom/narvii/media/online/audio/AudioDownloader;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/media/online/audio/AudioDownloader$1;->val$callback:Lcom/narvii/media/online/audio/AudioDownloader$AudioDownloaderCallback;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/media/online/audio/AudioDownloader$1;->val$sound:Lcom/narvii/media/online/audio/model/Sound;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/media/online/audio/AudioDownloader$1;->val$url:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/narvii/media/online/audio/AudioDownloader$1;->val$callbackTag:Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public getRealCallback()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/media/online/audio/AudioDownloader$1;->val$callbackTag:Ljava/lang/Object;

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
    iget-object p1, p0, Lcom/narvii/media/online/audio/AudioDownloader$1;->val$callback:Lcom/narvii/media/online/audio/AudioDownloader$AudioDownloaderCallback;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/media/online/audio/AudioDownloader$1;->val$sound:Lcom/narvii/media/online/audio/model/Sound;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0, p2}, Lcom/narvii/media/online/audio/AudioDownloader$AudioDownloaderCallback;->onError(Lcom/narvii/media/online/audio/model/Sound;Ljava/lang/Exception;)V

    .line 8
    return-void
.end method

.method public onPostExecute(Ljava/io/File;)V
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/media/online/audio/AudioDownloader$1;->val$url:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v1, Ljava/io/FileNotFoundException;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Ljava/io/FileNotFoundException;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/narvii/media/online/audio/AudioDownloader$1;->onError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/online/audio/AudioDownloader$1;->val$callback:Lcom/narvii/media/online/audio/AudioDownloader$AudioDownloaderCallback;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/media/online/audio/AudioDownloader$1;->val$sound:Lcom/narvii/media/online/audio/model/Sound;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, p1, v1}, Lcom/narvii/media/online/audio/AudioDownloader$AudioDownloaderCallback;->onPostExecute(Ljava/io/File;Lcom/narvii/media/online/audio/model/Sound;)V

    .line 24
    return-void
.end method

.method public onProgressUpdate(II)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/online/audio/AudioDownloader$1;->val$callback:Lcom/narvii/media/online/audio/AudioDownloader$AudioDownloaderCallback;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/media/online/audio/AudioDownloader$1;->val$sound:Lcom/narvii/media/online/audio/model/Sound;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1, p1, p2}, Lcom/narvii/media/online/audio/AudioDownloader$AudioDownloaderCallback;->onProgressUpdate(Lcom/narvii/media/online/audio/model/Sound;II)V

    .line 8
    return-void
.end method
