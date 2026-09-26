.class Lcom/narvii/theme/ThemePackService$UploadTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/theme/ThemePackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field background:Lcom/narvii/theme/ThemeImage;

.field bgRemoved:Z

.field cid:I

.field listener:Lcom/narvii/theme/ThemePackService$ThemePackUploadListener;

.field logo:Lcom/narvii/theme/ThemeImage;

.field logoRemoved:Z

.field request:Lcom/narvii/util/http/ApiRequest;

.field tbRemoved:Z

.field themeColor:I

.field final synthetic this$0:Lcom/narvii/theme/ThemePackService;

.field titleBar:Lcom/narvii/theme/ThemeImage;


# direct methods
.method constructor <init>(Lcom/narvii/theme/ThemePackService;Lcom/narvii/theme/ThemePackUploadSpec;Lcom/narvii/theme/ThemePackService$ThemePackUploadListener;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->this$0:Lcom/narvii/theme/ThemePackService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    .line 7
    iget p1, p2, Lcom/narvii/theme/ThemePackUploadSpec;->cid:I

    .line 8
    .line 9
    iput p1, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->cid:I

    .line 10
    .line 11
    iget p1, p2, Lcom/narvii/theme/ThemePackUploadSpec;->themeColor:I

    .line 12
    .line 13
    iput p1, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->themeColor:I

    .line 14
    .line 15
    iget-object p1, p2, Lcom/narvii/theme/ThemePackUploadSpec;->background:Lcom/narvii/theme/ThemeImage;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/theme/ThemeImage;->clone()Lcom/narvii/theme/ThemeImage;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->background:Lcom/narvii/theme/ThemeImage;

    .line 24
    .line 25
    :cond_0
    iget-object p1, p2, Lcom/narvii/theme/ThemePackUploadSpec;->titleBar:Lcom/narvii/theme/ThemeImage;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/theme/ThemeImage;->clone()Lcom/narvii/theme/ThemeImage;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iput-object p1, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->titleBar:Lcom/narvii/theme/ThemeImage;

    .line 34
    .line 35
    :cond_1
    iget-object p1, p2, Lcom/narvii/theme/ThemePackUploadSpec;->logo:Lcom/narvii/theme/ThemeImage;

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/narvii/theme/ThemeImage;->clone()Lcom/narvii/theme/ThemeImage;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    iput-object p1, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->logo:Lcom/narvii/theme/ThemeImage;

    .line 44
    .line 45
    :cond_2
    iput-object p3, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->listener:Lcom/narvii/theme/ThemePackService$ThemePackUploadListener;

    .line 46
    .line 47
    iget-boolean p1, p2, Lcom/narvii/theme/ThemePackUploadSpec;->bgRemoved:Z

    .line 48
    .line 49
    iput-boolean p1, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->bgRemoved:Z

    .line 50
    .line 51
    iget-boolean p1, p2, Lcom/narvii/theme/ThemePackUploadSpec;->tbRemoved:Z

    .line 52
    .line 53
    iput-boolean p1, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->tbRemoved:Z

    .line 54
    .line 55
    iget-boolean p1, p2, Lcom/narvii/theme/ThemePackUploadSpec;->logoRemoved:Z

    .line 56
    .line 57
    iput-boolean p1, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->logoRemoved:Z

    .line 58
    return-void
.end method

.method private getArrayNode(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 18
    .line 19
    :cond_1
    instance-of p1, v1, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    check-cast v1, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 24
    return-object v1

    .line 25
    :cond_2
    return-object v0
.end method


# virtual methods
.method public cancelUpload()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->request:Lcom/narvii/util/http/ApiRequest;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->this$0:Lcom/narvii/theme/ThemePackService;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/theme/ThemePackService;->b(Lcom/narvii/theme/ThemePackService;)Lcom/narvii/app/NVContext;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "api"

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->request:Lcom/narvii/util/http/ApiRequest;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 28
    const/4 v0, 0x0

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->request:Lcom/narvii/util/http/ApiRequest;

    .line 31
    :cond_0
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/io/File;
    .locals 14

    :try_start_0
    iget-object p1, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->this$0:Lcom/narvii/theme/ThemePackService;

    iget v0, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->cid:I

    .line 2
    invoke-virtual {p1, v0}, Lcom/narvii/theme/ThemePackService;->removeUploadDir(I)V

    iget-object p1, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->this$0:Lcom/narvii/theme/ThemePackService;

    iget v0, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->cid:I

    .line 3
    invoke-virtual {p1, v0}, Lcom/narvii/theme/ThemePackService;->getUploadDir(I)Ljava/io/File;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    iget-object v0, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->this$0:Lcom/narvii/theme/ThemePackService;

    iget v1, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->cid:I

    .line 5
    invoke-virtual {v0, v1}, Lcom/narvii/theme/ThemePackService;->getDir(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->copyFolder(Ljava/io/File;Ljava/io/File;)V

    iget-object p1, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->this$0:Lcom/narvii/theme/ThemePackService;

    iget v0, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->cid:I

    .line 6
    invoke-virtual {p1, v0}, Lcom/narvii/theme/ThemePackService;->getThemeJsonInfo(I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p1

    const-string/jumbo v0, "theme-color"

    iget v1, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->themeColor:I

    .line 7
    invoke-static {v1}, Lcom/narvii/util/StringUtils;->formatColor(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget-object v2, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->this$0:Lcom/narvii/theme/ThemePackService;

    iget-boolean v3, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->bgRemoved:Z

    iget-object v4, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->background:Lcom/narvii/theme/ThemeImage;

    const-string v0, "background-image"

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/narvii/theme/ThemePackService$UploadTask;->getArrayNode(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v5

    const-string v6, "images/background"

    iget v7, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->cid:I

    invoke-virtual/range {v2 .. v7}, Lcom/narvii/theme/ThemePackService;->changeThemeImage(ZLcom/narvii/theme/ThemeImage;Lcom/fasterxml/jackson/databind/node/ArrayNode;Ljava/lang/String;I)V

    iget-object v8, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->this$0:Lcom/narvii/theme/ThemePackService;

    iget-boolean v9, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->tbRemoved:Z

    iget-object v10, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->titleBar:Lcom/narvii/theme/ThemeImage;

    const-string/jumbo v0, "titlebar-background-image"

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/narvii/theme/ThemePackService$UploadTask;->getArrayNode(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v11

    const-string v12, "images/titlebarBackground"

    iget v13, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->cid:I

    invoke-virtual/range {v8 .. v13}, Lcom/narvii/theme/ThemePackService;->changeThemeImage(ZLcom/narvii/theme/ThemeImage;Lcom/fasterxml/jackson/databind/node/ArrayNode;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->this$0:Lcom/narvii/theme/ThemePackService;

    iget-boolean v1, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->logoRemoved:Z

    iget-object v2, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->logo:Lcom/narvii/theme/ThemeImage;

    const-string v3, "logo"

    .line 10
    invoke-direct {p0, p1, v3}, Lcom/narvii/theme/ThemePackService$UploadTask;->getArrayNode(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v3

    const-string v4, "images/logo"

    iget v5, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->cid:I

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/theme/ThemePackService;->changeThemeImage(ZLcom/narvii/theme/ThemeImage;Lcom/fasterxml/jackson/databind/node/ArrayNode;Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->tbRemoved:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->this$0:Lcom/narvii/theme/ThemePackService;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "titlebar-image"

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/narvii/theme/ThemePackService$UploadTask;->getArrayNode(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v4

    const-string v5, "images/titlebar"

    iget v6, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->cid:I

    invoke-virtual/range {v1 .. v6}, Lcom/narvii/theme/ThemePackService;->changeThemeImage(ZLcom/narvii/theme/ThemeImage;Lcom/fasterxml/jackson/databind/node/ArrayNode;Ljava/lang/String;I)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->this$0:Lcom/narvii/theme/ThemePackService;

    iget v1, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->cid:I

    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/theme/ThemePackService;->getUploadJsonFile(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->writeToFile(Ljava/io/File;Ljava/lang/String;)Z

    const-string/jumbo v0, "themeInfo"

    .line 14
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->this$0:Lcom/narvii/theme/ThemePackService;

    iget v1, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->cid:I

    invoke-virtual {v0, v1}, Lcom/narvii/theme/ThemePackService;->getUploadDir(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const-string v1, "publish.zip"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 17
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    :cond_1
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->this$0:Lcom/narvii/theme/ThemePackService;

    iget v1, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->cid:I

    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/theme/ThemePackService;->getUploadDir(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/util/ZipUtils;->compressedFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 19
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/narvii/theme/ThemePackService$UploadTask;->doInBackground([Ljava/lang/Void;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/io/File;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->this$0:Lcom/narvii/theme/ThemePackService;

    .line 2
    invoke-static {v0}, Lcom/narvii/theme/ThemePackService;->b(Lcom/narvii/theme/ThemePackService;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    iget v2, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->cid:I

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/media/upload/target/community-theme-pack"

    .line 4
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Ljava/io/File;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->request:Lcom/narvii/util/http/ApiRequest;

    .line 5
    new-instance v1, Lcom/narvii/theme/ThemePackService$UploadTask$1;

    const-class v2, Lcom/narvii/photos/PhotoUploadResponse;

    invoke-direct {v1, p0, v2}, Lcom/narvii/theme/ThemePackService$UploadTask$1;-><init>(Lcom/narvii/theme/ThemePackService$UploadTask;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/theme/ThemePackService$UploadTask;->listener:Lcom/narvii/theme/ThemePackService$ThemePackUploadListener;

    .line 6
    invoke-interface {p1}, Lcom/narvii/theme/ThemePackService$ThemePackUploadListener;->onZIPFail()V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/narvii/theme/ThemePackService$UploadTask;->onPostExecute(Ljava/io/File;)V

    return-void
.end method
