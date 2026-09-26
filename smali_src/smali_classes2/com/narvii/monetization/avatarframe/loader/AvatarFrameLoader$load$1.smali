.class public final Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/fileloader/IFileDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;->load(Lcom/narvii/model/User$IAvatarFrame;Ljava/lang/String;Ljava/lang/Object;Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $avatarFrame:Lcom/narvii/model/User$IAvatarFrame;

.field final synthetic $callback:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;

.field final synthetic $callbackTag:Ljava/lang/Object;

.field final synthetic $tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;Ljava/lang/String;Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;Lcom/narvii/model/User$IAvatarFrame;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->$callback:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->$tag:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->this$0:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->$avatarFrame:Lcom/narvii/model/User$IAvatarFrame;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->$callbackTag:Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static synthetic a(Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->onError$lambda$2(Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->onProgressUpdate$lambda$0(Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->onPostExecute$lambda$1(Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;Ljava/lang/String;)V

    return-void
.end method

.method private static final onError$lambda$2(Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$callback"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "$url"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "$tag"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p0, p1, p2, p3}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 19
    return-void
.end method

.method private static final onPostExecute$lambda$1(Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$callback"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "$tag"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, p1, p2}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;->onPostExecute(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method private static final onProgressUpdate$lambda$0(Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;IILjava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$callback"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "$tag"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, p1, p2, p3}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;->onProgressUpdate(IILjava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getRealCallback()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/util/fileloader/IFileDownloadCallback$DefaultImpls;->getRealCallback(Lcom/narvii/util/fileloader/IFileDownloadCallback;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->$callbackTag:Ljava/lang/Object;

    return-object v0
.end method

.method public onError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
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
    const-string v0, "url"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->$callback:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->$tag:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v2, Lcom/narvii/monetization/avatarframe/loader/b;

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, v0, p1, v1, p2}, Lcom/narvii/monetization/avatarframe/loader/b;-><init>(Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 18
    return-void
.end method

.method public onPostExecute(Ljava/io/File;)V
    .locals 5
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "file"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/io/File;

    .line 14
    .line 15
    const-string v1, "config.json"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    :try_start_0
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 27
    .line 28
    const-class v2, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    check-cast v1, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->setFileFolder(Ljava/io/File;)V

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->this$0:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;->access$getCachedConfigMap$p(Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    iget-object v2, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->$avatarFrame:Lcom/narvii/model/User$IAvatarFrame;

    .line 46
    .line 47
    .line 48
    invoke-interface {v2}, Lcom/narvii/model/User$IAvatarFrame;->getFrameId()Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    const-string v3, "getFrameId(...)"

    .line 52
    .line 53
    .line 54
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->clone()Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    const-string v4, "clone(...)"

    .line 61
    .line 62
    .line 63
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->$callback:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->$tag:Ljava/lang/String;

    .line 71
    .line 72
    new-instance v3, Lcom/narvii/monetization/avatarframe/loader/a;

    .line 73
    .line 74
    .line 75
    invoke-direct {v3, p1, v1, v2}, Lcom/narvii/monetization/avatarframe/loader/a;-><init>(Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v3}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    return-void

    .line 80
    .line 81
    .line 82
    :catch_0
    invoke-static {v0}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 83
    .line 84
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->$avatarFrame:Lcom/narvii/model/User$IAvatarFrame;

    .line 85
    .line 86
    .line 87
    invoke-interface {p1}, Lcom/narvii/model/User$IAvatarFrame;->getResourceUrl()Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    const-string v0, "getResourceUrl(...)"

    .line 91
    .line 92
    .line 93
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 96
    .line 97
    .line 98
    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p1, v0}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->onError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 102
    return-void
.end method

.method public onProgressUpdate(II)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->$callback:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->$tag:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v2, Lcom/narvii/monetization/avatarframe/loader/c;

    .line 7
    .line 8
    .line 9
    invoke-direct {v2, v0, p1, p2, v1}, Lcom/narvii/monetization/avatarframe/loader/c;-><init>(Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;IILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 13
    return-void
.end method
