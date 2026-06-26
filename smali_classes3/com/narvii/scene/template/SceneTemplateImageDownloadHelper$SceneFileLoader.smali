.class public final Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileLoader;
.super Lcom/narvii/util/fileloader/FileLoader;
.source "SceneTemplateImageDownloadHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SceneFileLoader"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneTemplateImageDownloadHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneTemplateImageDownloadHelper.kt\ncom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileLoader\n*L\n1#1,151:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;


# direct methods
.method public constructor <init>(Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;Lcom/narvii/app/NVContext;Ljava/lang/String;)V
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

    .line 74
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileLoader;->this$0:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;

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
    .locals 8

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest;->getBuilder()Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 104
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 105
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move v3, v0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    if-eqz v7, :cond_3

    invoke-virtual {v7, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x80

    if-ge v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/narvii/util/Utils;->safeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Utils.safeFilename(if (f\u2026bstring(fn.length - 128))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 90
    invoke-virtual {p0}, Lcom/narvii/util/fileloader/FileLoader;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ctx.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "fail to get external cache dir, using internal cache instead"

    .line 92
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/narvii/util/fileloader/FileLoader;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    .line 96
    :goto_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/narvii/util/fileloader/FileLoader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    new-instance v0, Lkotlin/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public provideCache(Ljava/io/File;)Lcom/narvii/util/fileloader/INVFileCache;
    .locals 2

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance v0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileCache;

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileLoader;->this$0:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;

    invoke-direct {v0, v1, p1}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileCache;-><init>(Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;Ljava/io/File;)V

    return-object v0
.end method

.method public validateCacheFile(Ljava/io/File;)Z
    .locals 1

    const-string v0, "cache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
