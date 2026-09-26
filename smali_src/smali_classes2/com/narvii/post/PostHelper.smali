.class public Lcom/narvii/post/PostHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field api:Lcom/narvii/util/http/ApiService;

.field cancelables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future;",
            ">;"
        }
    .end annotation
.end field

.field canceled:Z

.field context:Lcom/narvii/app/NVContext;

.field defaultPhotoUploadTarget:Ljava/lang/String;

.field listener:Lcom/narvii/post/PostListener;

.field photo:Lcom/narvii/photos/PhotoManager;

.field photoIndex:I

.field photoProgress:I

.field private final photoUploadListener:Lcom/narvii/photos/PhotoUploadListener;

.field photos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected post:Lcom/narvii/post/PostObject;

.field postJson:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field postProgres:I

.field postRequest:Lcom/narvii/util/http/ApiRequest;

.field private final rStep:Ljava/lang/Runnable;

.field request:Lcom/narvii/util/http/ApiRequest;

.field respClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;"
        }
    .end annotation
.end field

.field startTime:J

.field uploadedUrlMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field videoIndex:I

.field private final videoUploadListener:Lcom/narvii/photos/VideoUploadListener;

.field videos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/post/PostHelper$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/post/PostHelper$1;-><init>(Lcom/narvii/post/PostHelper;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/post/PostHelper;->rStep:Ljava/lang/Runnable;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/post/PostHelper$3;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/post/PostHelper$3;-><init>(Lcom/narvii/post/PostHelper;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/post/PostHelper;->photoUploadListener:Lcom/narvii/photos/PhotoUploadListener;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/post/PostHelper$4;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/narvii/post/PostHelper$4;-><init>(Lcom/narvii/post/PostHelper;)V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/post/PostHelper;->videoUploadListener:Lcom/narvii/photos/VideoUploadListener;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/post/PostHelper;->context:Lcom/narvii/app/NVContext;

    .line 27
    .line 28
    const-string v0, "api"

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/post/PostHelper;->api:Lcom/narvii/util/http/ApiService;

    .line 37
    .line 38
    const-string v0, "photo"

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    check-cast p1, Lcom/narvii/photos/PhotoManager;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/narvii/post/PostHelper;->photo:Lcom/narvii/photos/PhotoManager;

    .line 47
    return-void
.end method

.method private handleNullJsonNode()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/PostHelper;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    new-instance v1, Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 20
    .line 21
    iget-object v2, p0, Lcom/narvii/post/PostHelper;->context:Lcom/narvii/app/NVContext;

    .line 22
    .line 23
    const-string v3, "account"

    .line 24
    .line 25
    .line 26
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    check-cast v2, Lcom/narvii/account/AccountService;

    .line 30
    .line 31
    const-string v3, "device_id"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    const-string v2, "null_post_json"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 44
    .line 45
    const-string v0, "PostHelper"

    .line 46
    .line 47
    const-string v1, "null post json"

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method private rReplacePhoto(Lcom/fasterxml/jackson/databind/node/ArrayNode;Ljava/util/Map;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/node/ArrayNode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/node/ArrayNode;"
        }
    .end annotation

    .line 14
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->elements()Ljava/util/Iterator;

    move-result-object p1

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 18
    sget-object v2, Lcom/narvii/post/PostHelper$5;->$SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType:[I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 20
    invoke-static {v2}, Lcom/fasterxml/jackson/databind/node/TextNode;->valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v1

    goto :goto_1

    .line 21
    :cond_1
    instance-of v2, v1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v2, :cond_3

    .line 22
    check-cast v1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-direct {p0, v1, p2}, Lcom/narvii/post/PostHelper;->rReplacePhoto(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/util/Map;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    goto :goto_1

    .line 23
    :cond_2
    instance-of v2, v1, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    if-eqz v2, :cond_3

    .line 24
    check-cast v1, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    invoke-direct {p0, v1, p2}, Lcom/narvii/post/PostHelper;->rReplacePhoto(Lcom/fasterxml/jackson/databind/node/ArrayNode;Ljava/util/Map;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v1

    .line 25
    :cond_3
    :goto_1
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private rReplacePhoto(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/util/Map;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/node/ObjectNode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/node/ObjectNode;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->fields()Ljava/util/Iterator;

    move-result-object p1

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 6
    sget-object v3, Lcom/narvii/post/PostHelper$5;->$SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 8
    invoke-static {v3}, Lcom/fasterxml/jackson/databind/node/TextNode;->valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v2

    goto :goto_1

    .line 9
    :cond_1
    instance-of v3, v2, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v3, :cond_3

    .line 10
    check-cast v2, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-direct {p0, v2, p2}, Lcom/narvii/post/PostHelper;->rReplacePhoto(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/util/Map;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    goto :goto_1

    .line 11
    :cond_2
    instance-of v3, v2, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    if-eqz v3, :cond_3

    .line 12
    check-cast v2, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    invoke-direct {p0, v2, p2}, Lcom/narvii/post/PostHelper;->rReplacePhoto(Lcom/fasterxml/jackson/databind/node/ArrayNode;Ljava/util/Map;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v2

    .line 13
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private rSearchPhoto(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/post/PostHelper;->handleNullJsonNode()V

    .line 6
    return-void

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->elements()Ljava/util/Iterator;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 23
    .line 24
    sget-object v1, Lcom/narvii/post/PostHelper$5;->$SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType:[I

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 32
    move-result v2

    .line 33
    .line 34
    aget v1, v1, v2

    .line 35
    const/4 v2, 0x1

    .line 36
    .line 37
    if-eq v1, v2, :cond_3

    .line 38
    const/4 v2, 0x2

    .line 39
    .line 40
    if-eq v1, v2, :cond_3

    .line 41
    const/4 v2, 0x3

    .line 42
    .line 43
    if-eq v1, v2, :cond_2

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    const-string v2, "photo://"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 54
    move-result v1

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    goto :goto_0

    .line 65
    .line 66
    .line 67
    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/narvii/post/PostHelper;->rSearchPhoto(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/util/List;)V

    .line 68
    goto :goto_0

    .line 69
    :cond_4
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/post/PostHelper;->canceled:Z

    .line 4
    .line 5
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/narvii/post/PostHelper;->rStep:Ljava/lang/Runnable;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/post/PostHelper;->cancelables:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    check-cast v2, Ljava/util/concurrent/Future;

    .line 29
    .line 30
    .line 31
    invoke-interface {v2, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/narvii/post/PostHelper;->api:Lcom/narvii/util/http/ApiService;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/post/PostHelper;->postRequest:Lcom/narvii/util/http/ApiRequest;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 40
    return-void
.end method

.method protected getPhotoUploadTarget(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lcom/narvii/post/PostHelper;->defaultPhotoUploadTarget:Ljava/lang/String;

    return-object p1
.end method

.method public getPost()Lcom/narvii/post/PostObject;
    .locals 1

    iget-object v0, p0, Lcom/narvii/post/PostHelper;->post:Lcom/narvii/post/PostObject;

    return-object v0
.end method

.method public getProgress()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/post/PostHelper;->photoIndex:I

    .line 3
    .line 4
    mul-int/lit8 v0, v0, 0x64

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/post/PostHelper;->videoIndex:I

    .line 7
    .line 8
    mul-int/lit8 v1, v1, 0x64

    .line 9
    add-int/2addr v0, v1

    .line 10
    .line 11
    iget v1, p0, Lcom/narvii/post/PostHelper;->photoProgress:I

    .line 12
    add-int/2addr v0, v1

    .line 13
    .line 14
    iget v1, p0, Lcom/narvii/post/PostHelper;->postProgres:I

    .line 15
    .line 16
    mul-int/lit8 v1, v1, 0x32

    .line 17
    .line 18
    div-int/lit8 v1, v1, 0x64

    .line 19
    add-int/2addr v0, v1

    .line 20
    return v0
.end method

.method public getProgressTotal()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/PostHelper;->photos:Ljava/util/ArrayList;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v0

    .line 12
    .line 13
    :goto_0
    mul-int/lit8 v0, v0, 0x64

    .line 14
    .line 15
    iget-object v2, p0, Lcom/narvii/post/PostHelper;->videos:Ljava/util/ArrayList;

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    goto :goto_1

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 22
    move-result v1

    .line 23
    .line 24
    :goto_1
    mul-int/lit8 v1, v1, 0x64

    .line 25
    add-int/2addr v0, v1

    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x32

    .line 28
    return v0
.end method

.method protected keepPng(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method postStep(I)V
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/post/PostHelper;->rStep:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/post/PostHelper;->rStep:Ljava/lang/Runnable;

    .line 10
    int-to-long v2, p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    return-void
.end method

.method public setDefaultPhotoUploadTarget(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/post/PostHelper;->defaultPhotoUploadTarget:Ljava/lang/String;

    return-void
.end method

.method public setPostListener(Lcom/narvii/post/PostListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/post/PostHelper;->listener:Lcom/narvii/post/PostListener;

    return-void
.end method

.method public startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;)V
    .locals 1

    const-class v0, Lcom/narvii/model/api/ApiResponse;

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    return-void
.end method

.method public startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/post/PostObject;",
            "Lcom/narvii/util/http/ApiRequest;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/narvii/post/PostHelper;->post:Lcom/narvii/post/PostObject;

    iput-object p2, p0, Lcom/narvii/post/PostHelper;->request:Lcom/narvii/util/http/ApiRequest;

    iput-object p3, p0, Lcom/narvii/post/PostHelper;->respClazz:Ljava/lang/Class;

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/post/PostHelper;->cancelables:Ljava/util/List;

    iget-object p2, p0, Lcom/narvii/post/PostHelper;->context:Lcom/narvii/app/NVContext;

    .line 3
    invoke-interface {p1, p2}, Lcom/narvii/post/PostObject;->postBody(Lcom/narvii/app/NVContext;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/post/PostHelper;->postJson:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/post/PostHelper;->photos:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/narvii/post/PostHelper;->postJson:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 5
    invoke-direct {p0, p2, p1}, Lcom/narvii/post/PostHelper;->rSearchPhoto(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/util/List;)V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/post/PostHelper;->videos:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/narvii/post/PostHelper;->photos:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 8
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object p3, p0, Lcom/narvii/post/PostHelper;->photo:Lcom/narvii/photos/PhotoManager;

    .line 10
    invoke-virtual {p3, p2}, Lcom/narvii/photos/PhotoManager;->isVideo(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    iget-object p3, p0, Lcom/narvii/post/PostHelper;->videos:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/narvii/post/PostHelper;->photo:Lcom/narvii/photos/PhotoManager;

    .line 13
    invoke-virtual {p3, p2}, Lcom/narvii/photos/PhotoManager;->isVideoCover(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput p1, p0, Lcom/narvii/post/PostHelper;->photoIndex:I

    iput p1, p0, Lcom/narvii/post/PostHelper;->postProgres:I

    iput p1, p0, Lcom/narvii/post/PostHelper;->photoProgress:I

    .line 15
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/narvii/post/PostHelper;->uploadedUrlMap:Ljava/util/HashMap;

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/narvii/post/PostHelper;->startTime:J

    iget-object p2, p0, Lcom/narvii/post/PostHelper;->listener:Lcom/narvii/post/PostListener;

    if-eqz p2, :cond_3

    .line 17
    invoke-interface {p2, p0}, Lcom/narvii/post/PostListener;->onPostStart(Lcom/narvii/post/PostHelper;)V

    .line 18
    :cond_3
    invoke-virtual {p0, p1}, Lcom/narvii/post/PostHelper;->postStep(I)V

    return-void
.end method

.method step()V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/post/PostHelper;->canceled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget v0, p0, Lcom/narvii/post/PostHelper;->photoIndex:I

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/post/PostHelper;->photos:Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v1

    .line 14
    .line 15
    const/16 v2, 0x64

    .line 16
    .line 17
    if-ge v0, v1, :cond_3

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/post/PostHelper;->photos:Ljava/util/ArrayList;

    .line 20
    .line 21
    iget v1, p0, Lcom/narvii/post/PostHelper;->photoIndex:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Ljava/lang/String;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/post/PostHelper;->photo:Lcom/narvii/photos/PhotoManager;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Lcom/narvii/photos/PhotoManager;->getUploadedUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-object v3, p0, Lcom/narvii/post/PostHelper;->uploadedUrlMap:Ljava/util/HashMap;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    iget v0, p0, Lcom/narvii/post/PostHelper;->photoIndex:I

    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    iput v0, p0, Lcom/narvii/post/PostHelper;->photoIndex:I

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v2}, Lcom/narvii/post/PostHelper;->postStep(I)V

    .line 50
    .line 51
    goto/16 :goto_1

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-virtual {p0, v0}, Lcom/narvii/post/PostHelper;->keepPng(Ljava/lang/String;)Z

    .line 55
    move-result v1

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lcom/narvii/photos/PhotoUploadSpec;->builder(Ljava/lang/String;)Lcom/narvii/photos/PhotoUploadSpec$Builder;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lcom/narvii/post/PostHelper;->getPhotoUploadTarget(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v0}, Lcom/narvii/photos/PhotoUploadSpec$Builder;->target(Ljava/lang/String;)Lcom/narvii/photos/PhotoUploadSpec$Builder;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/narvii/photos/PhotoUploadSpec$Builder;->keepPng()Lcom/narvii/photos/PhotoUploadSpec$Builder;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/narvii/photos/PhotoUploadSpec$Builder;->build()Lcom/narvii/photos/PhotoUploadSpec;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    iget-object v1, p0, Lcom/narvii/post/PostHelper;->photo:Lcom/narvii/photos/PhotoManager;

    .line 80
    .line 81
    iget-object v2, p0, Lcom/narvii/post/PostHelper;->photoUploadListener:Lcom/narvii/photos/PhotoUploadListener;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v0, v2}, Lcom/narvii/photos/PhotoManager;->upload(Lcom/narvii/photos/PhotoUploadSpec;Lcom/narvii/photos/PhotoUploadListener;)V

    .line 85
    .line 86
    goto/16 :goto_1

    .line 87
    .line 88
    :cond_2
    iget-object v1, p0, Lcom/narvii/post/PostHelper;->photo:Lcom/narvii/photos/PhotoManager;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v0}, Lcom/narvii/post/PostHelper;->getPhotoUploadTarget(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    move-result-object v2

    .line 93
    .line 94
    iget-object v3, p0, Lcom/narvii/post/PostHelper;->photoUploadListener:Lcom/narvii/photos/PhotoUploadListener;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v0, v2, v3}, Lcom/narvii/photos/PhotoManager;->upload(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/photos/PhotoUploadListener;)V

    .line 98
    .line 99
    goto/16 :goto_1

    .line 100
    .line 101
    :cond_3
    iget v0, p0, Lcom/narvii/post/PostHelper;->videoIndex:I

    .line 102
    .line 103
    iget-object v1, p0, Lcom/narvii/post/PostHelper;->videos:Ljava/util/ArrayList;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 107
    move-result v1

    .line 108
    .line 109
    if-ge v0, v1, :cond_5

    .line 110
    .line 111
    iget-object v0, p0, Lcom/narvii/post/PostHelper;->videos:Ljava/util/ArrayList;

    .line 112
    .line 113
    iget v1, p0, Lcom/narvii/post/PostHelper;->videoIndex:I

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    check-cast v0, Ljava/lang/String;

    .line 120
    .line 121
    iget-object v1, p0, Lcom/narvii/post/PostHelper;->photo:Lcom/narvii/photos/PhotoManager;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v0}, Lcom/narvii/photos/PhotoManager;->getUploadedUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    move-result-object v1

    .line 126
    .line 127
    if-eqz v1, :cond_4

    .line 128
    .line 129
    iget-object v3, p0, Lcom/narvii/post/PostHelper;->uploadedUrlMap:Ljava/util/HashMap;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    iget v0, p0, Lcom/narvii/post/PostHelper;->videoIndex:I

    .line 135
    .line 136
    add-int/lit8 v0, v0, 0x1

    .line 137
    .line 138
    iput v0, p0, Lcom/narvii/post/PostHelper;->videoIndex:I

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, v2}, Lcom/narvii/post/PostHelper;->postStep(I)V

    .line 142
    .line 143
    goto/16 :goto_1

    .line 144
    .line 145
    .line 146
    :cond_4
    invoke-static {v0}, Lcom/narvii/photos/VideoUploadSpec;->builder(Ljava/lang/String;)Lcom/narvii/photos/VideoUploadSpec$Builder;

    .line 147
    move-result-object v1

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v0}, Lcom/narvii/post/PostHelper;->getPhotoUploadTarget(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    move-result-object v0

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v0}, Lcom/narvii/photos/VideoUploadSpec$Builder;->target(Ljava/lang/String;)Lcom/narvii/photos/VideoUploadSpec$Builder;

    .line 155
    move-result-object v0

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/narvii/photos/VideoUploadSpec$Builder;->build()Lcom/narvii/photos/VideoUploadSpec;

    .line 159
    move-result-object v0

    .line 160
    .line 161
    iget-object v1, p0, Lcom/narvii/post/PostHelper;->photo:Lcom/narvii/photos/PhotoManager;

    .line 162
    .line 163
    iget-object v2, p0, Lcom/narvii/post/PostHelper;->videoUploadListener:Lcom/narvii/photos/VideoUploadListener;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v0, v2}, Lcom/narvii/photos/PhotoManager;->uploadVideo(Lcom/narvii/photos/VideoUploadSpec;Lcom/narvii/photos/VideoUploadListener;)Ljava/util/concurrent/Future;

    .line 167
    move-result-object v0

    .line 168
    .line 169
    if-eqz v0, :cond_a

    .line 170
    .line 171
    iget-object v1, p0, Lcom/narvii/post/PostHelper;->cancelables:Ljava/util/List;

    .line 172
    .line 173
    .line 174
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    goto :goto_1

    .line 176
    .line 177
    :cond_5
    iget-object v0, p0, Lcom/narvii/post/PostHelper;->postJson:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 178
    .line 179
    iget-object v1, p0, Lcom/narvii/post/PostHelper;->uploadedUrlMap:Ljava/util/HashMap;

    .line 180
    .line 181
    .line 182
    invoke-direct {p0, v0, v1}, Lcom/narvii/post/PostHelper;->rReplacePhoto(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/util/Map;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 183
    move-result-object v0

    .line 184
    .line 185
    iget-object v1, p0, Lcom/narvii/post/PostHelper;->context:Lcom/narvii/app/NVContext;

    .line 186
    .line 187
    .line 188
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 189
    move-result-object v1

    .line 190
    .line 191
    instance-of v1, v1, Landroid/app/Activity;

    .line 192
    .line 193
    if-eqz v1, :cond_7

    .line 194
    .line 195
    iget-object v1, p0, Lcom/narvii/post/PostHelper;->context:Lcom/narvii/app/NVContext;

    .line 196
    .line 197
    .line 198
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 199
    move-result-object v1

    .line 200
    .line 201
    check-cast v1, Landroid/app/Activity;

    .line 202
    .line 203
    const-string v2, "loggingSource"

    .line 204
    .line 205
    .line 206
    invoke-static {v1, v2}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    move-result-object v2

    .line 208
    .line 209
    if-eqz v2, :cond_6

    .line 210
    .line 211
    const-string v3, "eventSource"

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v3, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 215
    .line 216
    :cond_6
    const-string v2, "loggingOrigin"

    .line 217
    .line 218
    .line 219
    invoke-static {v1, v2}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    move-result-object v1

    .line 221
    .line 222
    if-eqz v1, :cond_7

    .line 223
    .line 224
    const-string v2, "eventOrigin"

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 228
    .line 229
    :cond_7
    iget-object v1, p0, Lcom/narvii/post/PostHelper;->context:Lcom/narvii/app/NVContext;

    .line 230
    .line 231
    instance-of v2, v1, Lcom/narvii/post/BasePostActivity;

    .line 232
    .line 233
    if-eqz v2, :cond_8

    .line 234
    .line 235
    check-cast v1, Lcom/narvii/post/BasePostActivity;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1}, Lcom/narvii/post/BasePostActivity;->getNdcSubmitToken()Ljava/lang/String;

    .line 239
    move-result-object v1

    .line 240
    goto :goto_0

    .line 241
    :cond_8
    const/4 v1, 0x0

    .line 242
    .line 243
    :goto_0
    iget-object v2, p0, Lcom/narvii/post/PostHelper;->request:Lcom/narvii/util/http/ApiRequest;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest;->edit()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 247
    move-result-object v2

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 251
    .line 252
    if-eqz v1, :cond_9

    .line 253
    .line 254
    const-string v0, "ndc-submit-token"

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->addHeaderField(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 258
    .line 259
    .line 260
    :cond_9
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 261
    move-result-object v0

    .line 262
    .line 263
    iput-object v0, p0, Lcom/narvii/post/PostHelper;->postRequest:Lcom/narvii/util/http/ApiRequest;

    .line 264
    .line 265
    iget-object v1, p0, Lcom/narvii/post/PostHelper;->api:Lcom/narvii/util/http/ApiService;

    .line 266
    .line 267
    new-instance v2, Lcom/narvii/post/PostHelper$2;

    .line 268
    .line 269
    iget-object v3, p0, Lcom/narvii/post/PostHelper;->respClazz:Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    invoke-direct {v2, p0, v3}, Lcom/narvii/post/PostHelper$2;-><init>(Lcom/narvii/post/PostHelper;Ljava/lang/Class;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 276
    :cond_a
    :goto_1
    return-void
.end method
