.class public Lcom/narvii/services/DraftManagerProvider;
.super Ljava/lang/Object;
.source "DraftManagerProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/post/DraftManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertOldDrafts(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/narvii/post/DraftManager;)V
    .locals 11

    .line 64
    const-class v0, Lcom/narvii/model/Media;

    const-string v1, "item"

    const-string/jumbo v2, "post"

    invoke-interface {p0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "convert"

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_b

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 66
    :try_start_0
    invoke-interface {p0, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "http://"

    const-string v9, "mediaList"

    if-eqz v7, :cond_4

    .line 69
    :try_start_1
    invoke-virtual {v2, v9}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v7

    .line 70
    invoke-virtual {v2, v9}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 71
    instance-of v10, v7, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    if-eqz v10, :cond_3

    .line 72
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 74
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/model/Media;

    iget-object v7, v7, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 75
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "icon"

    .line 76
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/narvii/model/Media;

    iget-object v10, v10, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {v2, v7, v10}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 78
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 79
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 80
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 81
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/narvii/model/Media;

    iget-object v10, v10, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 82
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 85
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 86
    sget-object v7, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v7, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 87
    invoke-virtual {v2, v9, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 91
    :cond_3
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/narvii/item/post/ItemPost;

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/post/PostObject;

    goto :goto_2

    .line 93
    :cond_4
    invoke-virtual {v2, v9}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v7

    .line 94
    invoke-virtual {v2, v9}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 95
    instance-of v10, v7, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    if-eqz v10, :cond_7

    .line 96
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 98
    :cond_5
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 99
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/narvii/model/Media;

    iget-object v10, v10, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 100
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 103
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 104
    sget-object v7, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v7, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 105
    invoke-virtual {v2, v9, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 108
    :cond_7
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/narvii/blog/post/BlogPost;

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/post/PostObject;

    :goto_2
    const-string v2, "id"

    .line 111
    invoke-interface {p0, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 114
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v6

    .line 115
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, "|"

    .line 116
    invoke-static {v2, v1}, Lcom/narvii/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "itemId"

    .line 117
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v2, v7}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 118
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "fork"

    if-le v2, v5, :cond_8

    :try_start_2
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v4, 0x1

    :cond_8
    invoke-virtual {v6, v7, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_3

    :cond_9
    const-string v1, "blogId"

    .line 120
    invoke-virtual {v6, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 124
    :cond_a
    :goto_3
    invoke-virtual {p2, p1, v6, v0}, Lcom/narvii/post/DraftManager;->createDraft(Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/narvii/post/PostObject;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to convert old draft "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    :goto_4
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_b
    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/post/DraftManager;
    .locals 4

    .line 30
    new-instance v0, Lcom/narvii/post/DraftManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/narvii/post/DraftManager;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 31
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v2, "post_blog"

    .line 32
    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "blog"

    invoke-static {v2, v3, v0}, Lcom/narvii/services/DraftManagerProvider;->convertOldDrafts(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/narvii/post/DraftManager;)V

    const-string/jumbo v2, "post_item"

    .line 33
    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "item"

    invoke-static {v2, v3, v0}, Lcom/narvii/services/DraftManagerProvider;->convertOldDrafts(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/narvii/post/DraftManager;)V

    const-string/jumbo v2, "post_topic"

    .line 34
    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string/jumbo v1, "topic"

    invoke-static {p1, v1, v0}, Lcom/narvii/services/DraftManagerProvider;->convertOldDrafts(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/narvii/post/DraftManager;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/narvii/services/DraftManagerProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/post/DraftManager;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/post/DraftManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Lcom/narvii/post/DraftManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DraftManagerProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/post/DraftManager;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/post/DraftManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Lcom/narvii/post/DraftManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DraftManagerProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/post/DraftManager;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/post/DraftManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Lcom/narvii/post/DraftManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DraftManagerProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/post/DraftManager;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/post/DraftManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Lcom/narvii/post/DraftManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DraftManagerProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/post/DraftManager;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/post/DraftManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Lcom/narvii/post/DraftManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DraftManagerProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/post/DraftManager;)V

    return-void
.end method
