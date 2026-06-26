.class public final Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;
.super Ljava/lang/Object;
.source "AvatarFrameLoader.kt"

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
.method constructor <init>(Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;Ljava/lang/String;Lcom/narvii/model/User$IAvatarFrame;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/User$IAvatarFrame;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->this$0:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    iput-object p2, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->$callback:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;

    iput-object p3, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->$tag:Ljava/lang/String;

    iput-object p4, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->$avatarFrame:Lcom/narvii/model/User$IAvatarFrame;

    iput-object p5, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->$callbackTag:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRealCallback()Ljava/lang/Object;
    .locals 1

    .line 81
    invoke-static {p0}, Lcom/narvii/util/fileloader/IFileDownloadCallback$DefaultImpls;->getRealCallback(Lcom/narvii/util/fileloader/IFileDownloadCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->$callbackTag:Ljava/lang/Object;

    return-object v0
.end method

.method public onError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    new-instance v0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1$onError$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1$onError$1;-><init>(Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPostExecute(Ljava/io/File;)V
    .locals 5

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Ljava/io/File;

    const-string v1, "config.json"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    :try_start_0
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v2, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;

    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;

    .line 92
    invoke-virtual {v1, p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->setFileFolder(Ljava/io/File;)V

    .line 93
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->this$0:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;->access$getCachedConfigMap$p(Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v2, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->$avatarFrame:Lcom/narvii/model/User$IAvatarFrame;

    invoke-interface {v2}, Lcom/narvii/model/User$IAvatarFrame;->getFrameId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "avatarFrame.frameId"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->clone()Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;

    move-result-object v3

    const-string v4, "config.clone()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance p1, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1$onPostExecute$1;

    invoke-direct {p1, p0, v1}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1$onPostExecute$1;-><init>(Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 97
    :catch_0
    invoke-static {v0}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->$avatarFrame:Lcom/narvii/model/User$IAvatarFrame;

    invoke-interface {p1}, Lcom/narvii/model/User$IAvatarFrame;->getResourceUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "avatarFrame.resourceUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;->onError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onProgressUpdate(II)V
    .locals 1

    .line 83
    new-instance v0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1$onProgressUpdate$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1$onProgressUpdate$1;-><init>(Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$load$1;II)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method
