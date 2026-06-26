.class public Lcom/narvii/post/PostHelper;
.super Ljava/lang/Object;
.source "PostHelper.java"


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

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Lcom/narvii/post/PostHelper$1;

    invoke-direct {v0, p0}, Lcom/narvii/post/PostHelper$1;-><init>(Lcom/narvii/post/PostHelper;)V

    iput-object v0, p0, Lcom/narvii/post/PostHelper;->rStep:Ljava/lang/Runnable;

    .line 263
    new-instance v0, Lcom/narvii/post/PostHelper$3;

    invoke-direct {v0, p0}, Lcom/narvii/post/PostHelper$3;-><init>(Lcom/narvii/post/PostHelper;)V

    iput-object v0, p0, Lcom/narvii/post/PostHelper;->photoUploadListener:Lcom/narvii/photos/PhotoUploadListener;

    .line 292
    new-instance v0, Lcom/narvii/post/PostHelper$4;

    invoke-direct {v0, p0}, Lcom/narvii/post/PostHelper$4;-><init>(Lcom/narvii/post/PostHelper;)V

    iput-object v0, p0, Lcom/narvii/post/PostHelper;->videoUploadListener:Lcom/narvii/photos/VideoUploadListener;

    .line 64
    iput-object p1, p0, Lcom/narvii/post/PostHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "api"

    .line 65
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    iput-object v0, p0, Lcom/narvii/post/PostHelper;->api:Lcom/narvii/util/http/ApiService;

    const-string v0, "photo"

    .line 66
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/photos/PhotoManager;

    iput-object p1, p0, Lcom/narvii/post/PostHelper;->photo:Lcom/narvii/photos/PhotoManager;

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

    .line 383
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 384
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->elements()Ljava/util/Iterator;

    move-result-object p1

    .line 385
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 386
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 387
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

    .line 399
    :cond_0
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 401
    invoke-static {v2}, Lcom/fasterxml/jackson/databind/node/TextNode;->valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v1

    goto :goto_1

    .line 394
    :cond_1
    instance-of v2, v1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v2, :cond_3

    .line 395
    check-cast v1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-direct {p0, v1, p2}, Lcom/narvii/post/PostHelper;->rReplacePhoto(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/util/Map;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    goto :goto_1

    .line 389
    :cond_2
    instance-of v2, v1, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    if-eqz v2, :cond_3

    .line 390
    check-cast v1, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    invoke-direct {p0, v1, p2}, Lcom/narvii/post/PostHelper;->rReplacePhoto(Lcom/fasterxml/jackson/databind/node/ArrayNode;Ljava/util/Map;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v1

    .line 405
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

    .line 354
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 355
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->fields()Ljava/util/Iterator;

    move-result-object p1

    .line 356
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 357
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 358
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 359
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

    .line 371
    :cond_0
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 373
    invoke-static {v3}, Lcom/fasterxml/jackson/databind/node/TextNode;->valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v2

    goto :goto_1

    .line 366
    :cond_1
    instance-of v3, v2, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v3, :cond_3

    .line 367
    check-cast v2, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-direct {p0, v2, p2}, Lcom/narvii/post/PostHelper;->rReplacePhoto(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/util/Map;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    goto :goto_1

    .line 361
    :cond_2
    instance-of v3, v2, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    if-eqz v3, :cond_3

    .line 362
    check-cast v2, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    invoke-direct {p0, v2, p2}, Lcom/narvii/post/PostHelper;->rReplacePhoto(Lcom/fasterxml/jackson/databind/node/ArrayNode;Ljava/util/Map;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v2

    .line 377
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

    .line 331
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->elements()Ljava/util/Iterator;

    move-result-object p1

    .line 332
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 333
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 334
    sget-object v1, Lcom/narvii/post/PostHelper$5;->$SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 340
    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "photo://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 337
    :cond_2
    invoke-direct {p0, v0, p2}, Lcom/narvii/post/PostHelper;->rSearchPhoto(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/util/List;)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lcom/narvii/post/PostHelper;->canceled:Z

    .line 132
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/narvii/post/PostHelper;->rStep:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 133
    iget-object v1, p0, Lcom/narvii/post/PostHelper;->cancelables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 134
    invoke-interface {v2, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/narvii/post/PostHelper;->api:Lcom/narvii/util/http/ApiService;

    iget-object v1, p0, Lcom/narvii/post/PostHelper;->postRequest:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    return-void
.end method

.method protected getPhotoUploadTarget(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p1, p0, Lcom/narvii/post/PostHelper;->defaultPhotoUploadTarget:Ljava/lang/String;

    return-object p1
.end method

.method public getPost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/narvii/post/PostHelper;->post:Lcom/narvii/post/PostObject;

    return-object v0
.end method

.method public getProgress()I
    .locals 2

    .line 323
    iget v0, p0, Lcom/narvii/post/PostHelper;->photoIndex:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/narvii/post/PostHelper;->videoIndex:I

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    iget v1, p0, Lcom/narvii/post/PostHelper;->photoProgress:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/narvii/post/PostHelper;->postProgres:I

    mul-int/lit8 v1, v1, 0x32

    div-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    return v0
.end method

.method public getProgressTotal()I
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/narvii/post/PostHelper;->photos:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x64

    iget-object v2, p0, Lcom/narvii/post/PostHelper;->videos:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x32

    return v0
.end method

.method protected keepPng(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method postStep(I)V
    .locals 4

    .line 140
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/post/PostHelper;->rStep:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 141
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/post/PostHelper;->rStep:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setDefaultPhotoUploadTarget(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/narvii/post/PostHelper;->defaultPhotoUploadTarget:Ljava/lang/String;

    return-void
.end method

.method public setPostListener(Lcom/narvii/post/PostListener;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/narvii/post/PostHelper;->listener:Lcom/narvii/post/PostListener;

    return-void
.end method

.method public startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;)V
    .locals 1

    .line 82
    const-class v0, Lcom/narvii/model/api/ApiResponse;

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

    .line 94
    iput-object p1, p0, Lcom/narvii/post/PostHelper;->post:Lcom/narvii/post/PostObject;

    .line 95
    iput-object p2, p0, Lcom/narvii/post/PostHelper;->request:Lcom/narvii/util/http/ApiRequest;

    .line 96
    iput-object p3, p0, Lcom/narvii/post/PostHelper;->respClazz:Ljava/lang/Class;

    .line 98
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/post/PostHelper;->cancelables:Ljava/util/List;

    .line 100
    iget-object p2, p0, Lcom/narvii/post/PostHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1, p2}, Lcom/narvii/post/PostObject;->postBody(Lcom/narvii/app/NVContext;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/post/PostHelper;->postJson:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 101
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/post/PostHelper;->photos:Ljava/util/ArrayList;

    .line 102
    iget-object p1, p0, Lcom/narvii/post/PostHelper;->postJson:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget-object p2, p0, Lcom/narvii/post/PostHelper;->photos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/narvii/post/PostHelper;->rSearchPhoto(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/util/List;)V

    .line 104
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/post/PostHelper;->videos:Ljava/util/ArrayList;

    .line 105
    iget-object p1, p0, Lcom/narvii/post/PostHelper;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 106
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 107
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 108
    iget-object p3, p0, Lcom/narvii/post/PostHelper;->photo:Lcom/narvii/photos/PhotoManager;

    invoke-virtual {p3, p2}, Lcom/narvii/photos/PhotoManager;->isVideo(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 109
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 110
    iget-object p3, p0, Lcom/narvii/post/PostHelper;->videos:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_1
    iget-object p3, p0, Lcom/narvii/post/PostHelper;->photo:Lcom/narvii/photos/PhotoManager;

    invoke-virtual {p3, p2}, Lcom/narvii/photos/PhotoManager;->isVideoCover(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 112
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 116
    iput p1, p0, Lcom/narvii/post/PostHelper;->photoIndex:I

    .line 117
    iput p1, p0, Lcom/narvii/post/PostHelper;->postProgres:I

    .line 118
    iput p1, p0, Lcom/narvii/post/PostHelper;->photoProgress:I

    .line 119
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/narvii/post/PostHelper;->uploadedUrlMap:Ljava/util/HashMap;

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/narvii/post/PostHelper;->startTime:J

    .line 122
    iget-object p2, p0, Lcom/narvii/post/PostHelper;->listener:Lcom/narvii/post/PostListener;

    if-eqz p2, :cond_3

    .line 123
    invoke-interface {p2, p0}, Lcom/narvii/post/PostListener;->onPostStart(Lcom/narvii/post/PostHelper;)V

    .line 126
    :cond_3
    invoke-virtual {p0, p1}, Lcom/narvii/post/PostHelper;->postStep(I)V

    return-void
.end method

.method step()V
    .locals 4

    .line 152
    iget-boolean v0, p0, Lcom/narvii/post/PostHelper;->canceled:Z

    if-eqz v0, :cond_0

    return-void

    .line 156
    :cond_0
    iget v0, p0, Lcom/narvii/post/PostHelper;->photoIndex:I

    iget-object v1, p0, Lcom/narvii/post/PostHelper;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-ge v0, v1, :cond_3

    .line 158
    iget-object v0, p0, Lcom/narvii/post/PostHelper;->photos:Ljava/util/ArrayList;

    iget v1, p0, Lcom/narvii/post/PostHelper;->photoIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    iget-object v1, p0, Lcom/narvii/post/PostHelper;->photo:Lcom/narvii/photos/PhotoManager;

    invoke-virtual {v1, v0}, Lcom/narvii/photos/PhotoManager;->getUploadedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 161
    iget-object v3, p0, Lcom/narvii/post/PostHelper;->uploadedUrlMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget v0, p0, Lcom/narvii/post/PostHelper;->photoIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/narvii/post/PostHelper;->photoIndex:I

    .line 163
    invoke-virtual {p0, v2}, Lcom/narvii/post/PostHelper;->postStep(I)V

    goto/16 :goto_0

    .line 165
    :cond_1
    invoke-virtual {p0, v0}, Lcom/narvii/post/PostHelper;->keepPng(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 166
    invoke-static {v0}, Lcom/narvii/photos/PhotoUploadSpec;->builder(Ljava/lang/String;)Lcom/narvii/photos/PhotoUploadSpec$Builder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/narvii/post/PostHelper;->getPhotoUploadTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/photos/PhotoUploadSpec$Builder;->target(Ljava/lang/String;)Lcom/narvii/photos/PhotoUploadSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/photos/PhotoUploadSpec$Builder;->keepPng()Lcom/narvii/photos/PhotoUploadSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/photos/PhotoUploadSpec$Builder;->build()Lcom/narvii/photos/PhotoUploadSpec;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/narvii/post/PostHelper;->photo:Lcom/narvii/photos/PhotoManager;

    iget-object v2, p0, Lcom/narvii/post/PostHelper;->photoUploadListener:Lcom/narvii/photos/PhotoUploadListener;

    invoke-virtual {v1, v0, v2}, Lcom/narvii/photos/PhotoManager;->upload(Lcom/narvii/photos/PhotoUploadSpec;Lcom/narvii/photos/PhotoUploadListener;)V

    goto/16 :goto_0

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/narvii/post/PostHelper;->photo:Lcom/narvii/photos/PhotoManager;

    invoke-virtual {p0, v0}, Lcom/narvii/post/PostHelper;->getPhotoUploadTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/post/PostHelper;->photoUploadListener:Lcom/narvii/photos/PhotoUploadListener;

    invoke-virtual {v1, v0, v2, v3}, Lcom/narvii/photos/PhotoManager;->upload(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/photos/PhotoUploadListener;)V

    goto/16 :goto_0

    .line 173
    :cond_3
    iget v0, p0, Lcom/narvii/post/PostHelper;->videoIndex:I

    iget-object v1, p0, Lcom/narvii/post/PostHelper;->videos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 174
    iget-object v0, p0, Lcom/narvii/post/PostHelper;->videos:Ljava/util/ArrayList;

    iget v1, p0, Lcom/narvii/post/PostHelper;->videoIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 176
    iget-object v1, p0, Lcom/narvii/post/PostHelper;->photo:Lcom/narvii/photos/PhotoManager;

    invoke-virtual {v1, v0}, Lcom/narvii/photos/PhotoManager;->getUploadedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 178
    iget-object v3, p0, Lcom/narvii/post/PostHelper;->uploadedUrlMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget v0, p0, Lcom/narvii/post/PostHelper;->videoIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/narvii/post/PostHelper;->videoIndex:I

    .line 180
    invoke-virtual {p0, v2}, Lcom/narvii/post/PostHelper;->postStep(I)V

    goto/16 :goto_0

    .line 183
    :cond_4
    invoke-static {v0}, Lcom/narvii/photos/VideoUploadSpec;->builder(Ljava/lang/String;)Lcom/narvii/photos/VideoUploadSpec$Builder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/narvii/post/PostHelper;->getPhotoUploadTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/photos/VideoUploadSpec$Builder;->target(Ljava/lang/String;)Lcom/narvii/photos/VideoUploadSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/photos/VideoUploadSpec$Builder;->build()Lcom/narvii/photos/VideoUploadSpec;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/narvii/post/PostHelper;->photo:Lcom/narvii/photos/PhotoManager;

    iget-object v2, p0, Lcom/narvii/post/PostHelper;->videoUploadListener:Lcom/narvii/photos/VideoUploadListener;

    invoke-virtual {v1, v0, v2}, Lcom/narvii/photos/PhotoManager;->uploadVideo(Lcom/narvii/photos/VideoUploadSpec;Lcom/narvii/photos/VideoUploadListener;)Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 186
    iget-object v1, p0, Lcom/narvii/post/PostHelper;->cancelables:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    :cond_5
    iget-object v0, p0, Lcom/narvii/post/PostHelper;->postJson:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget-object v1, p0, Lcom/narvii/post/PostHelper;->uploadedUrlMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1}, Lcom/narvii/post/PostHelper;->rReplacePhoto(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/util/Map;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/narvii/post/PostHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_7

    .line 195
    iget-object v1, p0, Lcom/narvii/post/PostHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const-string v2, "loggingSource"

    .line 196
    invoke-static {v1, v2}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v3, "eventSource"

    .line 198
    invoke-virtual {v0, v3, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :cond_6
    const-string v2, "loggingOrigin"

    .line 200
    invoke-static {v1, v2}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v2, "eventOrigin"

    .line 202
    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :cond_7
    const/4 v1, 0x0

    .line 206
    iget-object v2, p0, Lcom/narvii/post/PostHelper;->context:Lcom/narvii/app/NVContext;

    instance-of v3, v2, Lcom/narvii/post/BasePostActivity;

    if-eqz v3, :cond_8

    .line 207
    check-cast v2, Lcom/narvii/post/BasePostActivity;

    invoke-virtual {v2}, Lcom/narvii/post/BasePostActivity;->getNdcSubmitToken()Ljava/lang/String;

    move-result-object v1

    .line 209
    :cond_8
    iget-object v2, p0, Lcom/narvii/post/PostHelper;->request:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest;->edit()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 210
    invoke-virtual {v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    if-eqz v1, :cond_9

    const-string v0, "ndc-submit-token"

    .line 212
    invoke-virtual {v2, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->addHeaderField(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 214
    :cond_9
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/post/PostHelper;->postRequest:Lcom/narvii/util/http/ApiRequest;

    .line 215
    iget-object v0, p0, Lcom/narvii/post/PostHelper;->api:Lcom/narvii/util/http/ApiService;

    iget-object v1, p0, Lcom/narvii/post/PostHelper;->postRequest:Lcom/narvii/util/http/ApiRequest;

    new-instance v2, Lcom/narvii/post/PostHelper$2;

    iget-object v3, p0, Lcom/narvii/post/PostHelper;->respClazz:Ljava/lang/Class;

    invoke-direct {v2, p0, v3}, Lcom/narvii/post/PostHelper$2;-><init>(Lcom/narvii/post/PostHelper;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_a
    :goto_0
    return-void
.end method
