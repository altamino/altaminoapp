.class public final Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;
.super Lcom/narvii/util/fileloader/FileLoader;
.source "AvatarFrameLoader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAvatarFrameLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AvatarFrameLoader.kt\ncom/narvii/monetization/avatarframe/loader/AvatarFrameLoader\n*L\n1#1,119:1\n*E\n"
.end annotation


# instance fields
.field private final cachedConfigMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatar_frame"

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/narvii/util/fileloader/FileLoader;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 25
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;->cachedConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static final synthetic access$getCachedConfigMap$p(Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;->cachedConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method


# virtual methods
.method public dispatchToMainThread()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final load(Lcom/narvii/model/User$IAvatarFrame;Ljava/lang/String;Ljava/lang/Object;Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;)V
    .locals 8

    const-string v0, "avatarFrame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackTag"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;->cachedConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/narvii/model/User$IAvatarFrame;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;

    if-eqz v0, :cond_0

    .line 70
    iget-object v1, v0, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->fileFolder:Ljava/io/File;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->fileFolder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->fileFolder:Ljava/io/File;

    const-string v2, "cachedConfig.fileFolder"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;->validateCacheFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    invoke-interface {p4, v0, p2}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;->onPostExecute(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/narvii/util/fileloader/FileLoader;->getCache()Lcom/narvii/util/fileloader/INVFileCache;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, v0, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->fileFolder:Ljava/io/File;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/narvii/util/fileloader/INVFileCache;->touch(Ljava/io/File;)V

    :cond_1
    return-void

    .line 75
    :cond_2
    invoke-interface {p1}, Lcom/narvii/model/User$IAvatarFrame;->getResourceUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string p3, "Url cannot be null"

    invoke-interface {p4, p3, p2, p1}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 79
    :cond_3
    new-instance v0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    invoke-interface {p1}, Lcom/narvii/model/User$IAvatarFrame;->getResourceUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "avatarFrame.resourceUrl"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 80
    invoke-virtual {v0, v1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyZipExtract(Z)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    move-result-object v0

    invoke-interface {p1}, Lcom/narvii/model/User$IAvatarFrame;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->rev(I)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->build()Lcom/narvii/util/fileloader/FileLoaderRequest;

    move-result-object v0

    new-instance v7, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;-><init>(Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;Ljava/lang/String;Lcom/narvii/model/User$IAvatarFrame;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v7}, Lcom/narvii/util/fileloader/FileLoader;->requireFile(Lcom/narvii/util/fileloader/FileLoaderRequest;Lcom/narvii/util/fileloader/IFileDownloadCallback;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 116
    invoke-super {p0}, Lcom/narvii/util/fileloader/FileLoader;->onStop()V

    .line 117
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;->cachedConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public provideCache(Ljava/io/File;)Lcom/narvii/util/fileloader/INVFileCache;
    .locals 1

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameCache;

    invoke-direct {v0, p1}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameCache;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public validateCacheFile(Ljava/io/File;)Z
    .locals 12

    const-string v0, "cache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 50
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 51
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v6, p1, v3

    .line 52
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "file.name"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "config.json"

    .line 53
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-lez v6, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    const/4 v8, 0x2

    const-string v9, ".webp"

    .line 55
    invoke-static {v7, v9, v0, v8, v6}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, ".gif"

    .line 56
    invoke-static {v7, v9, v0, v8, v6}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, ".png"

    .line 57
    invoke-static {v7, v9, v0, v8, v6}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, ".jpg"

    .line 58
    invoke-static {v7, v9, v0, v8, v6}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const/4 v5, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_5
    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method
