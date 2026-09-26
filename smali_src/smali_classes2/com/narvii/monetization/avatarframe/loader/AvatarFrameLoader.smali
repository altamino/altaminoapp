.class public final Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;
.super Lcom/narvii/util/fileloader/FileLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;
    }
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
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
    const-string v0, "avatar_frame"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, v0}, Lcom/narvii/util/fileloader/FileLoader;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;->cachedConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    return-void
.end method

.method public static final synthetic access$getCachedConfigMap$p(Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;->cachedConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
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
    .param p1    # Lcom/narvii/model/User$IAvatarFrame;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    .line 2
    const-string v0, "avatarFrame"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "tag"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "callbackTag"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "callback"

    .line 18
    .line 19
    .line 20
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;->cachedConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Lcom/narvii/model/User$IAvatarFrame;->getFrameId()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v1, v0, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->fileFolder:Ljava/io/File;

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v1, 0x0

    .line 39
    .line 40
    :goto_0
    if-eqz v1, :cond_2

    .line 41
    .line 42
    iget-object v1, v0, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->fileFolder:Ljava/io/File;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    iget-object v1, v0, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->fileFolder:Ljava/io/File;

    .line 51
    .line 52
    const-string v2, "fileFolder"

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v1}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;->validateCacheFile(Ljava/io/File;)Z

    .line 59
    move-result v1

    .line 60
    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    .line 64
    invoke-interface {p4, v0, p2}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;->onPostExecute(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/util/fileloader/FileLoader;->getCache()Lcom/narvii/util/fileloader/INVFileCache;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    iget-object p2, v0, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->fileFolder:Ljava/io/File;

    .line 73
    .line 74
    .line 75
    invoke-static {p2, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p1, p2}, Lcom/narvii/util/fileloader/INVFileCache;->touch(Ljava/io/File;)V

    .line 79
    :cond_1
    return-void

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-interface {p1}, Lcom/narvii/model/User$IAvatarFrame;->getResourceUrl()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    move-result v0

    .line 88
    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 92
    .line 93
    .line 94
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 95
    .line 96
    const-string p3, "Url cannot be null"

    .line 97
    .line 98
    .line 99
    invoke-interface {p4, p3, p2, p1}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 100
    return-void

    .line 101
    .line 102
    :cond_3
    new-instance v0, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    .line 103
    .line 104
    .line 105
    invoke-interface {p1}, Lcom/narvii/model/User$IAvatarFrame;->getResourceUrl()Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    const-string v2, "getResourceUrl(...)"

    .line 109
    .line 110
    .line 111
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-direct {v0, v1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;-><init>(Ljava/lang/String;)V

    .line 115
    const/4 v1, 0x1

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->applyZipExtract(Z)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    .line 122
    invoke-interface {p1}, Lcom/narvii/model/User$IAvatarFrame;->getVersion()I

    .line 123
    move-result v1

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->rev(I)Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->build()Lcom/narvii/util/fileloader/FileLoaderRequest;

    .line 131
    move-result-object v0

    .line 132
    .line 133
    new-instance v7, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;

    .line 134
    move-object v1, v7

    .line 135
    move-object v2, p4

    .line 136
    move-object v3, p2

    .line 137
    move-object v4, p0

    .line 138
    move-object v5, p1

    .line 139
    move-object v6, p3

    .line 140
    .line 141
    .line 142
    invoke-direct/range {v1 .. v6}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;-><init>(Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;Ljava/lang/String;Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;Lcom/narvii/model/User$IAvatarFrame;Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v0, v7}, Lcom/narvii/util/fileloader/FileLoader;->requireFile(Lcom/narvii/util/fileloader/FileLoaderRequest;Lcom/narvii/util/fileloader/IFileDownloadCallback;)V

    .line 146
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/util/fileloader/FileLoader;->onStop()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;->cachedConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 9
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

    .line 1
    .line 2
    const-string v0, "dir"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameCache;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameCache;-><init>(Ljava/io/File;)V

    .line 11
    return-object v0
.end method

.method public validateCacheFile(Ljava/io/File;)Z
    .locals 12
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "cache"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    return v1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    if-eqz p1, :cond_4

    .line 21
    array-length v2, p1

    .line 22
    move v3, v0

    .line 23
    move v4, v3

    .line 24
    move v5, v4

    .line 25
    .line 26
    :goto_0
    if-ge v3, v2, :cond_5

    .line 27
    .line 28
    aget-object v6, p1, v3

    .line 29
    .line 30
    .line 31
    invoke-static {v6}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 35
    move-result-object v7

    .line 36
    .line 37
    const-string v8, "getName(...)"

    .line 38
    .line 39
    .line 40
    invoke-static {v7, v8}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    const-string v8, "config.json"

    .line 43
    .line 44
    .line 45
    invoke-static {v8, v7}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    move-result v8

    .line 47
    .line 48
    if-eqz v8, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 52
    move-result-wide v8

    .line 53
    .line 54
    const-wide/16 v10, 0x0

    .line 55
    .line 56
    cmp-long v6, v8, v10

    .line 57
    .line 58
    if-lez v6, :cond_1

    .line 59
    move v4, v1

    .line 60
    goto :goto_1

    .line 61
    .line 62
    :cond_1
    const-string v6, ".webp"

    .line 63
    const/4 v8, 0x2

    .line 64
    const/4 v9, 0x0

    .line 65
    .line 66
    .line 67
    invoke-static {v7, v6, v0, v8, v9}, Lkotlin/text/k;->v(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 68
    move-result v6

    .line 69
    .line 70
    if-nez v6, :cond_2

    .line 71
    .line 72
    const-string v6, ".gif"

    .line 73
    .line 74
    .line 75
    invoke-static {v7, v6, v0, v8, v9}, Lkotlin/text/k;->v(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 76
    move-result v6

    .line 77
    .line 78
    if-nez v6, :cond_2

    .line 79
    .line 80
    const-string v6, ".png"

    .line 81
    .line 82
    .line 83
    invoke-static {v7, v6, v0, v8, v9}, Lkotlin/text/k;->v(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 84
    move-result v6

    .line 85
    .line 86
    if-nez v6, :cond_2

    .line 87
    .line 88
    const-string v6, ".jpg"

    .line 89
    .line 90
    .line 91
    invoke-static {v7, v6, v0, v8, v9}, Lkotlin/text/k;->v(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 92
    move-result v6

    .line 93
    .line 94
    if-eqz v6, :cond_3

    .line 95
    :cond_2
    move v5, v1

    .line 96
    .line 97
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 98
    goto :goto_0

    .line 99
    :cond_4
    move v4, v0

    .line 100
    move v5, v4

    .line 101
    .line 102
    :cond_5
    if-eqz v4, :cond_6

    .line 103
    .line 104
    if-eqz v5, :cond_6

    .line 105
    goto :goto_2

    .line 106
    :cond_6
    move v1, v0

    .line 107
    :goto_2
    return v1
.end method
