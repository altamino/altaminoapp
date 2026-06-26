.class public Lcom/narvii/media/online/audio/AudioDownloader;
.super Lcom/narvii/util/fileloader/FileLoader;
.source "AudioDownloader.java"


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

    const-string v0, "online_audio"

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/narvii/util/fileloader/FileLoader;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    return-void
.end method

.method private getFileName(Lcom/narvii/media/online/audio/model/Sound;)Ljava/lang/String;
    .locals 2

    .line 106
    invoke-virtual {p1}, Lcom/narvii/media/online/audio/model/Sound;->getMediaUrl()Ljava/lang/String;

    move-result-object v0

    .line 107
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

    .line 143
    iget-object v0, p1, Lcom/narvii/media/online/audio/model/Sound;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 144
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

    .line 111
    invoke-direct {p0, p1}, Lcom/narvii/media/online/audio/AudioDownloader;->getSessionKey(Lcom/narvii/media/online/audio/model/Sound;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/util/fileloader/FileLoader;->getSession(Ljava/lang/String;)Lcom/narvii/util/fileloader/FileLoader$Session;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoader$Session;->getContentLength()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 116
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoader$Session;->getDownloadedByte()I

    move-result p1

    mul-int/lit8 p1, p1, 0x64

    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoader$Session;->getContentLength()I

    move-result v0

    div-int/2addr p1, v0

    return p1

    .line 119
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/util/fileloader/FileLoader;->dir:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/narvii/media/online/audio/AudioDownloader;->getFileName(Lcom/narvii/media/online/audio/model/Sound;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    const/4 p1, -0x2

    return p1
.end method

.method public getDwonloadedFile(Lcom/narvii/media/online/audio/model/Sound;)Ljava/io/File;
    .locals 2

    .line 129
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/util/fileloader/FileLoader;->dir:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/narvii/media/online/audio/AudioDownloader;->getFileName(Lcom/narvii/media/online/audio/model/Sound;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFileName(Lcom/narvii/util/fileloader/FileLoaderRequest;)Ljava/lang/String;
    .locals 2

    .line 98
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest;->getBuilder()Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->getObj()Ljava/lang/Object;

    move-result-object v0

    .line 99
    instance-of v1, v0, Lcom/narvii/media/online/audio/model/Sound;

    if-eqz v1, :cond_0

    .line 100
    check-cast v0, Lcom/narvii/media/online/audio/model/Sound;

    invoke-direct {p0, v0}, Lcom/narvii/media/online/audio/AudioDownloader;->getFileName(Lcom/narvii/media/online/audio/model/Sound;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 102
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/util/fileloader/FileLoader;->getFileName(Lcom/narvii/util/fileloader/FileLoaderRequest;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSessionKey(Lcom/narvii/util/fileloader/FileLoaderRequest;)Ljava/lang/String;
    .locals 2

    .line 135
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest;->getBuilder()Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->getObj()Ljava/lang/Object;

    move-result-object v0

    .line 136
    instance-of v1, v0, Lcom/narvii/media/online/audio/model/Sound;

    if-eqz v1, :cond_0

    .line 137
    check-cast v0, Lcom/narvii/media/online/audio/model/Sound;

    invoke-direct {p0, v0}, Lcom/narvii/media/online/audio/AudioDownloader;->getSessionKey(Lcom/narvii/media/online/audio/model/Sound;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 139
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/util/fileloader/FileLoader;->getSessionKey(Lcom/narvii/util/fileloader/FileLoaderRequest;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public loadAudioFile(Lcom/narvii/media/online/audio/model/Sound;Ljava/lang/Object;Lcom/narvii/media/online/audio/AudioDownloader$AudioDownloaderCallback;)V
    .locals 8

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 51
    new-instance p2, Ljava/io/FileNotFoundException;

    invoke-direct {p2}, Ljava/io/FileNotFoundException;-><init>()V

    invoke-interface {p3, p1, p2}, Lcom/narvii/media/online/audio/AudioDownloader$AudioDownloaderCallback;->onError(Lcom/narvii/media/online/audio/model/Sound;Ljava/lang/Exception;)V

    return-void

    .line 54
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/media/online/audio/model/Sound;->getMediaUrl()Ljava/lang/String;

    move-result-object v4

    .line 57
    new-instance v0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    invoke-direct {v0, v4}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyZipExtract(Z)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyCache(Z)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->attachObject(Ljava/lang/Object;)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->build()Lcom/narvii/util/fileloader/FileLoaderRequest;

    move-result-object v6

    new-instance v7, Lcom/narvii/media/online/audio/AudioDownloader$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/narvii/media/online/audio/AudioDownloader$1;-><init>(Lcom/narvii/media/online/audio/AudioDownloader;Lcom/narvii/media/online/audio/AudioDownloader$AudioDownloaderCallback;Lcom/narvii/media/online/audio/model/Sound;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v6, v7}, Lcom/narvii/util/fileloader/FileLoader;->requireFile(Lcom/narvii/util/fileloader/FileLoaderRequest;Lcom/narvii/util/fileloader/IFileDownloadCallback;)V

    return-void
.end method

.method public provideCache(Ljava/io/File;)Lcom/narvii/util/fileloader/INVFileCache;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public validateCacheFile(Ljava/io/File;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
