.class public Lcom/narvii/media/online/audio/AudioDownloader;
.super Lcom/narvii/util/fileloader/FileLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/online/audio/AudioDownloader$AudioDownloaderCallback;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_STATUS_DOWNLOADED:I = -0x1

.field public static final DOWNLOAD_STATUS_ERROR:I = -0x3

.field public static final DOWNLOAD_STATUS_IDEL:I = -0x2


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "online_audio"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lcom/narvii/util/fileloader/FileLoader;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method private getFileName(Lcom/narvii/media/online/audio/model/Sound;)Ljava/lang/String;
    .locals 2

    .line 5
    invoke-virtual {p1}, Lcom/narvii/media/online/audio/model/Sound;->getMediaUrl()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/narvii/media/online/audio/model/Sound;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSessionKey(Lcom/narvii/media/online/audio/model/Sound;)Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p1, Lcom/narvii/media/online/audio/model/Sound;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/narvii/media/online/audio/model/Sound;->getMediaUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method


# virtual methods
.method public dispatchToMainThread()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDownloadState(Lcom/narvii/media/online/audio/model/Sound;)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/media/online/audio/AudioDownloader;->getSessionKey(Lcom/narvii/media/online/audio/model/Sound;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/util/fileloader/FileLoader;->getSession(Ljava/lang/String;)Lcom/narvii/util/fileloader/FileLoader$Session;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoader$Session;->getContentLength()I

    .line 14
    move-result p1

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoader$Session;->getDownloadedByte()I

    .line 22
    move-result p1

    .line 23
    .line 24
    mul-int/lit8 p1, p1, 0x64

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoader$Session;->getContentLength()I

    .line 28
    move-result v0

    .line 29
    div-int/2addr p1, v0

    .line 30
    return p1

    .line 31
    .line 32
    :cond_1
    new-instance v0, Ljava/io/File;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/util/fileloader/FileLoader;->dir:Ljava/io/File;

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, p1}, Lcom/narvii/media/online/audio/AudioDownloader;->getFileName(Lcom/narvii/media/online/audio/model/Sound;)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 45
    move-result p1

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    const/4 p1, -0x1

    .line 49
    return p1

    .line 50
    :cond_2
    const/4 p1, -0x2

    .line 51
    return p1
.end method

.method public getDwonloadedFile(Lcom/narvii/media/online/audio/model/Sound;)Ljava/io/File;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/util/fileloader/FileLoader;->dir:Ljava/io/File;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/narvii/media/online/audio/AudioDownloader;->getFileName(Lcom/narvii/media/online/audio/model/Sound;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    return-object v0
.end method

.method public getFileName(Lcom/narvii/util/fileloader/FileLoaderRequest;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/narvii/util/fileloader/FileLoaderRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest;->getBuilder()Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->getObj()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/narvii/media/online/audio/model/Sound;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/narvii/media/online/audio/model/Sound;

    invoke-direct {p0, v0}, Lcom/narvii/media/online/audio/AudioDownloader;->getFileName(Lcom/narvii/media/online/audio/model/Sound;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/util/fileloader/FileLoader;->getFileName(Lcom/narvii/util/fileloader/FileLoaderRequest;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSessionKey(Lcom/narvii/util/fileloader/FileLoaderRequest;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/narvii/util/fileloader/FileLoaderRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest;->getBuilder()Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->getObj()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/narvii/media/online/audio/model/Sound;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/narvii/media/online/audio/model/Sound;

    invoke-direct {p0, v0}, Lcom/narvii/media/online/audio/AudioDownloader;->getSessionKey(Lcom/narvii/media/online/audio/model/Sound;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/util/fileloader/FileLoader;->getSessionKey(Lcom/narvii/util/fileloader/FileLoaderRequest;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public loadAudioFile(Lcom/narvii/media/online/audio/model/Sound;Ljava/lang/Object;Lcom/narvii/media/online/audio/AudioDownloader$AudioDownloaderCallback;)V
    .locals 8

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 5
    .line 6
    .line 7
    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-interface {p3, p2, p1}, Lcom/narvii/media/online/audio/AudioDownloader$AudioDownloaderCallback;->onError(Lcom/narvii/media/online/audio/model/Sound;Ljava/lang/Exception;)V

    .line 12
    return-void

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/media/online/audio/model/Sound;->getMediaUrl()Ljava/lang/String;

    .line 16
    move-result-object v4

    .line 17
    .line 18
    new-instance v0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v4}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;-><init>(Ljava/lang/String;)V

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyZipExtract(Z)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyCache(Z)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->attachObject(Ljava/lang/Object;)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->build()Lcom/narvii/util/fileloader/FileLoaderRequest;

    .line 38
    move-result-object v6

    .line 39
    .line 40
    new-instance v7, Lcom/narvii/media/online/audio/AudioDownloader$1;

    .line 41
    move-object v0, v7

    .line 42
    move-object v1, p0

    .line 43
    move-object v2, p3

    .line 44
    move-object v3, p1

    .line 45
    move-object v5, p2

    .line 46
    .line 47
    .line 48
    invoke-direct/range {v0 .. v5}, Lcom/narvii/media/online/audio/AudioDownloader$1;-><init>(Lcom/narvii/media/online/audio/AudioDownloader;Lcom/narvii/media/online/audio/AudioDownloader$AudioDownloaderCallback;Lcom/narvii/media/online/audio/model/Sound;Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v6, v7}, Lcom/narvii/util/fileloader/FileLoader;->requireFile(Lcom/narvii/util/fileloader/FileLoaderRequest;Lcom/narvii/util/fileloader/IFileDownloadCallback;)V

    .line 52
    return-void
.end method

.method public provideCache(Ljava/io/File;)Lcom/narvii/util/fileloader/INVFileCache;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public validateCacheFile(Ljava/io/File;)Z
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method
