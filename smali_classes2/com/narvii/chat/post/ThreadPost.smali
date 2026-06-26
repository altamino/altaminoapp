.class public Lcom/narvii/chat/post/ThreadPost;
.super Ljava/lang/Object;
.source "ThreadPost.java"

# interfaces
.implements Lcom/narvii/post/PostObject;
.implements Lcom/narvii/influencer/FansOnlyPost;


# instance fields
.field public backgroundMedia:Lcom/narvii/model/Media;

.field public content:Ljava/lang/String;

.field public extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field public latitude:I

.field public longitude:I

.field public mediaList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/Media;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field public memberList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field public publishToGlobal:I

.field public title:Ljava/lang/String;

.field public type:I

.field public userAddedTopicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/story/StoryTopic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 28
    iput v0, p0, Lcom/narvii/chat/post/ThreadPost;->type:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->memberList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/model/ChatThread;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iget v0, p1, Lcom/narvii/model/ChatThread;->type:I

    iput v0, p0, Lcom/narvii/chat/post/ThreadPost;->type:I

    .line 34
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->mediaList:Ljava/util/List;

    .line 36
    new-instance v0, Lcom/narvii/model/Media;

    invoke-direct {v0}, Lcom/narvii/model/Media;-><init>()V

    const/16 v1, 0x64

    .line 37
    iput v1, v0, Lcom/narvii/model/Media;->type:I

    .line 38
    iget-object v1, p1, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPost;->mediaList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_0
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->title:Ljava/lang/String;

    .line 42
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->content:Ljava/lang/String;

    .line 43
    iget v0, p1, Lcom/narvii/model/ChatThread;->latitude:I

    iput v0, p0, Lcom/narvii/chat/post/ThreadPost;->latitude:I

    .line 44
    iget v0, p1, Lcom/narvii/model/ChatThread;->longitude:I

    iput v0, p0, Lcom/narvii/chat/post/ThreadPost;->longitude:I

    .line 45
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getBackground()Lcom/narvii/model/Media;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->backgroundMedia:Lcom/narvii/model/Media;

    .line 46
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->userAddedTopicList:Ljava/util/List;

    iput-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->userAddedTopicList:Ljava/util/List;

    .line 47
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iput-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 48
    iget p1, p1, Lcom/narvii/model/ChatThread;->publishToGlobal:I

    iput p1, p0, Lcom/narvii/chat/post/ThreadPost;->publishToGlobal:I

    return-void
.end method

.method private getLanguage(Lcom/narvii/app/NVContext;)Ljava/lang/String;
    .locals 2

    const-string v0, "config"

    .line 141
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 142
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "content_language"

    .line 144
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    .line 145
    invoke-virtual {p1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "community"

    .line 147
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/CommunityService;

    .line 148
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 150
    iget-object p1, p1, Lcom/narvii/model/Community;->primaryLanguage:Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public content()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->content:Ljava/lang/String;

    return-object v0
.end method

.method public hasVideo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public icon()Ljava/lang/String;
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->mediaList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->content:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->backgroundMedia:Lcom/narvii/model/Media;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->userAddedTopicList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFansOnly()Z
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "fansOnly"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSame(Lcom/narvii/post/PostObject;)Z
    .locals 3

    .line 163
    instance-of v0, p1, Lcom/narvii/chat/post/ThreadPost;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 164
    check-cast p1, Lcom/narvii/chat/post/ThreadPost;

    .line 165
    iget v0, p0, Lcom/narvii/chat/post/ThreadPost;->type:I

    iget v2, p1, Lcom/narvii/chat/post/ThreadPost;->type:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->title:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/chat/post/ThreadPost;->title:Ljava/lang/String;

    .line 166
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->content:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/chat/post/ThreadPost;->content:Ljava/lang/String;

    .line 167
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->mediaList:Ljava/util/List;

    iget-object v2, p1, Lcom/narvii/chat/post/ThreadPost;->mediaList:Ljava/util/List;

    .line 168
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/chat/post/ThreadPost;->latitude:I

    iget v2, p1, Lcom/narvii/chat/post/ThreadPost;->latitude:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/narvii/chat/post/ThreadPost;->longitude:I

    iget v2, p1, Lcom/narvii/chat/post/ThreadPost;->longitude:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->backgroundMedia:Lcom/narvii/model/Media;

    iget-object v2, p1, Lcom/narvii/chat/post/ThreadPost;->backgroundMedia:Lcom/narvii/model/Media;

    .line 171
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->userAddedTopicList:Ljava/util/List;

    iget-object p1, p1, Lcom/narvii/chat/post/ThreadPost;->userAddedTopicList:Ljava/util/List;

    .line 172
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public postBody(Lcom/narvii/app/NVContext;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 6

    .line 109
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v1, "memberList"

    .line 111
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    const-string v1, "mediaList"

    .line 112
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 113
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPost;->icon()Ljava/lang/String;

    move-result-object v1

    const-string v2, "icon"

    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v1, "address"

    .line 114
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->putNull(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v1, "keywords"

    .line 115
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->putNull(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 117
    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPost;->memberList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    const-string v1, "inviteeUids"

    .line 118
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->putArray(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v1

    .line 119
    iget-object v2, p0, Lcom/narvii/chat/post/ThreadPost;->memberList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/User;

    .line 120
    iget-object v3, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0

    :cond_0
    const-string v1, "backgroundUrl"

    .line 124
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 125
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    .line 126
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v3, p0, Lcom/narvii/chat/post/ThreadPost;->backgroundMedia:Lcom/narvii/model/Media;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    const-string v3, "bm"

    .line 127
    invoke-virtual {v1, v3, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 128
    iget-object v2, p0, Lcom/narvii/chat/post/ThreadPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "fansOnly"

    aput-object v5, v3, v4

    .line 129
    invoke-static {v2, v3}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v5, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 131
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/chat/post/ThreadPost;->getLanguage(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 132
    invoke-direct {p0, p1}, Lcom/narvii/chat/post/ThreadPost;->getLanguage(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "language"

    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :cond_2
    const-string p1, "extensions"

    .line 134
    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v0
.end method

.method public setFansOnly(Z)V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_0

    .line 190
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v1, "fansOnly"

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/narvii/chat/post/ThreadPost;->mediaList:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 92
    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 95
    :cond_0
    new-instance v0, Lcom/narvii/model/Media;

    invoke-direct {v0}, Lcom/narvii/model/Media;-><init>()V

    const/16 v1, 0x64

    .line 96
    iput v1, v0, Lcom/narvii/model/Media;->type:I

    .line 97
    iput-object p1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 98
    iget-object p1, p0, Lcom/narvii/chat/post/ThreadPost;->mediaList:Ljava/util/List;

    if-nez p1, :cond_1

    .line 99
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPost;->mediaList:Ljava/util/List;

    goto :goto_0

    .line 101
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 103
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/post/ThreadPost;->mediaList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->title:Ljava/lang/String;

    return-object v0
.end method
