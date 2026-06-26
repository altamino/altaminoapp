.class public Lcom/narvii/asset/AssetDownloader;
.super Lcom/narvii/util/fileloader/FileLoader;
.source "AssetDownloader.java"

# interfaces
.implements Lcom/narvii/asset/IAssetDownloader;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/narvii/util/fileloader/FileLoader;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    return-void
.end method

.method private getSessionKey(Lcom/narvii/asset/IAsset;)Ljava/lang/String;
    .locals 0

    .line 121
    invoke-interface {p1}, Lcom/narvii/asset/IAsset;->id()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected applyZipExtract()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public deleteDownloadedFile(Lcom/narvii/asset/IAsset;)V
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lcom/narvii/asset/AssetDownloader;->getDownloadedFile(Lcom/narvii/asset/IAsset;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    return-void
.end method

.method public dispatchToMainThread()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDownloadState(Lcom/narvii/asset/IAsset;)Lcom/narvii/asset/DownloadStatusInfo;
    .locals 2

    .line 125
    invoke-direct {p0, p1}, Lcom/narvii/asset/AssetDownloader;->getSessionKey(Lcom/narvii/asset/IAsset;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/util/fileloader/FileLoader;->getSession(Ljava/lang/String;)Lcom/narvii/util/fileloader/FileLoader$Session;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoader$Session;->getContentLength()I

    move-result p1

    .line 128
    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoader$Session;->getDownloadedByte()I

    move-result v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    int-to-float p1, p1

    div-float p1, v0, p1

    .line 132
    :goto_0
    new-instance v0, Lcom/narvii/asset/DownloadStatusInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/narvii/asset/DownloadStatusInfo;-><init>(IF)V

    return-object v0

    .line 135
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/util/fileloader/FileLoader;->dir:Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/narvii/asset/AssetDownloader;->getFileName(Lcom/narvii/asset/IAsset;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 138
    sget-object p1, Lcom/narvii/asset/DownloadStatusInfo;->READY:Lcom/narvii/asset/DownloadStatusInfo;

    return-object p1

    .line 140
    :cond_2
    sget-object p1, Lcom/narvii/asset/DownloadStatusInfo;->IDLE:Lcom/narvii/asset/DownloadStatusInfo;

    return-object p1
.end method

.method public getDownloadedFile(Lcom/narvii/asset/IAsset;)Ljava/io/File;
    .locals 0

    .line 149
    invoke-virtual {p0, p1}, Lcom/narvii/asset/AssetDownloader;->getFileName(Lcom/narvii/asset/IAsset;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/asset/AssetDownloader;->getDownloadedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadedFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 156
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/util/fileloader/FileLoader;->dir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getFileName(Lcom/narvii/asset/IAsset;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-interface {p1}, Lcom/narvii/asset/IAsset;->id()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFileName(Lcom/narvii/util/fileloader/FileLoaderRequest;)Ljava/lang/String;
    .locals 2

    .line 33
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest;->getBuilder()Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->getObj()Ljava/lang/Object;

    move-result-object v0

    .line 34
    instance-of v1, v0, Lcom/narvii/asset/IAsset;

    if-eqz v1, :cond_0

    .line 35
    check-cast v0, Lcom/narvii/asset/IAsset;

    invoke-virtual {p0, v0}, Lcom/narvii/asset/AssetDownloader;->getFileName(Lcom/narvii/asset/IAsset;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 37
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/util/fileloader/FileLoader;->getFileName(Lcom/narvii/util/fileloader/FileLoaderRequest;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSessionKey(Lcom/narvii/util/fileloader/FileLoaderRequest;)Ljava/lang/String;
    .locals 2

    .line 113
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest;->getBuilder()Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->getObj()Ljava/lang/Object;

    move-result-object v0

    .line 114
    instance-of v1, v0, Lcom/narvii/asset/IAsset;

    if-eqz v1, :cond_0

    .line 115
    check-cast v0, Lcom/narvii/asset/IAsset;

    invoke-direct {p0, v0}, Lcom/narvii/asset/AssetDownloader;->getSessionKey(Lcom/narvii/asset/IAsset;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 117
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/util/fileloader/FileLoader;->getSessionKey(Lcom/narvii/util/fileloader/FileLoaderRequest;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected initCacheDir()Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Lkotlin/Pair;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/narvii/util/fileloader/FileLoader;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0}, Lcom/narvii/util/fileloader/FileLoader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public loadAsset(Lcom/narvii/asset/IAsset;Lcom/narvii/asset/AssetDownloadListener;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 62
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    invoke-interface {p2, p1, v0}, Lcom/narvii/asset/AssetDownloadListener;->onError(Lcom/narvii/asset/IAsset;Ljava/lang/Exception;)V

    return-void

    .line 66
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/asset/AssetDownloader;->getSessionKey(Lcom/narvii/asset/IAsset;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/narvii/util/fileloader/FileLoader;->containsRealCallback(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 70
    :cond_1
    new-instance v0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    invoke-interface {p1}, Lcom/narvii/asset/IAsset;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/narvii/asset/AssetDownloader;->applyZipExtract()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyZipExtract(Z)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyCache(Z)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->attachObject(Ljava/lang/Object;)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->build()Lcom/narvii/util/fileloader/FileLoaderRequest;

    move-result-object v0

    new-instance v1, Lcom/narvii/asset/AssetDownloader$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/narvii/asset/AssetDownloader$1;-><init>(Lcom/narvii/asset/AssetDownloader;Lcom/narvii/asset/AssetDownloadListener;Lcom/narvii/asset/IAsset;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/util/fileloader/FileLoader;->requireFile(Lcom/narvii/util/fileloader/FileLoaderRequest;Lcom/narvii/util/fileloader/IFileDownloadCallback;)V

    return-void
.end method

.method public provideCache(Ljava/io/File;)Lcom/narvii/util/fileloader/INVFileCache;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public removeDownloadListenerByTag(Ljava/lang/Object;)V
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Lcom/narvii/util/fileloader/FileLoader;->removeCallbackByTag(Ljava/lang/Object;)V

    return-void
.end method

.method public validateCacheFile(Ljava/io/File;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
