.class public final Lcom/narvii/story/StoryDownloadHelper$StorySceneDownloader;
.super Lcom/narvii/util/fileloader/FileLoader;
.source "StoryDownloadHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/StoryDownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StorySceneDownloader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/StoryDownloadHelper;


# direct methods
.method public constructor <init>(Lcom/narvii/story/StoryDownloadHelper;Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    iput-object p1, p0, Lcom/narvii/story/StoryDownloadHelper$StorySceneDownloader;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    invoke-direct {p0, p2, p3}, Lcom/narvii/util/fileloader/FileLoader;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

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

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest;->getBuilder()Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->getObj()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/String;

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "story_scene_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".mp4"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 292
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected initCacheDir()Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 288
    new-instance v0, Lkotlin/Pair;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/narvii/util/fileloader/FileLoader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final loadSceneFile(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/fileloader/IFileDownloadCallback;)V
    .locals 1

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    new-instance v0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    invoke-direct {v0, p2}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 283
    invoke-virtual {v0, p2}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyZipExtract(Z)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyCache(Z)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->attachObject(Ljava/lang/Object;)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    move-result-object p1

    .line 284
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->build()Lcom/narvii/util/fileloader/FileLoaderRequest;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/narvii/util/fileloader/FileLoader;->requireFile(Lcom/narvii/util/fileloader/FileLoaderRequest;Lcom/narvii/util/fileloader/IFileDownloadCallback;)V

    return-void
.end method

.method public provideCache(Ljava/io/File;)Lcom/narvii/util/fileloader/INVFileCache;
    .locals 1

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public validateCacheFile(Ljava/io/File;)Z
    .locals 1

    const-string v0, "cache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
