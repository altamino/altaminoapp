.class public final Lcom/narvii/pre_editing/YtbFileLoader;
.super Lcom/narvii/util/fileloader/FileLoader;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "path"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/narvii/util/fileloader/FileLoader;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public dispatchToMainThread()Z
    .locals 1

    const/4 v0, 0x1

    return v0
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
    .line 2
    const-string v0, "request"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest;->getBuilder()Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->getObj()Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    move-result-wide v0

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    :cond_0
    const-string v0, "null cannot be cast to non-null type kotlin.String"

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    check-cast p1, Ljava/lang/String;

    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    const-string v1, "ytb_download_"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string p1, ".mp4"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    return-object p1
.end method

.method protected initCacheDir()Lw7/u;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw7/u<",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lw7/u;

    .line 3
    .line 4
    new-instance v1, Ljava/io/File;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/util/fileloader/FileLoader;->getPath()Ljava/lang/String;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1, v2}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    return-object v0
.end method

.method public final loadYtbFile(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/fileloader/IFileDownloadCallback;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/util/fileloader/IFileDownloadCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "url"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "ytbId"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "callback"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string v0, "url is empty"

    .line 26
    .line 27
    .line 28
    invoke-direct {p2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p3, p1, p2}, Lcom/narvii/util/fileloader/IFileDownloadCallback;->onError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 32
    return-void

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-static {p2}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    const-string v0, "ytb id is empty"

    .line 43
    .line 44
    .line 45
    invoke-direct {p2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p3, p1, p2}, Lcom/narvii/util/fileloader/IFileDownloadCallback;->onError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 49
    return-void

    .line 50
    .line 51
    :cond_1
    new-instance v0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, p1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;-><init>(Ljava/lang/String;)V

    .line 55
    const/4 p1, 0x0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyZipExtract(Z)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyCache(Z)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->attachObject(Ljava/lang/Object;)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->build()Lcom/narvii/util/fileloader/FileLoaderRequest;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1, p3}, Lcom/narvii/util/fileloader/FileLoader;->requireFile(Lcom/narvii/util/fileloader/FileLoaderRequest;Lcom/narvii/util/fileloader/IFileDownloadCallback;)V

    .line 75
    return-void
.end method

.method public provideCache(Ljava/io/File;)Lcom/narvii/util/fileloader/INVFileCache;
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public validateCacheFile(Ljava/io/File;)Z
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
