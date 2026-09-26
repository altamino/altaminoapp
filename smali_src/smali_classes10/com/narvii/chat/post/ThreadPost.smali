.class public Lcom/narvii/chat/post/ThreadPost;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/narvii/chat/post/ThreadPost;->type:I

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->memberList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/model/ChatThread;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget v0, p1, Lcom/narvii/model/ChatThread;->type:I

    iput v0, p0, Lcom/narvii/chat/post/ThreadPost;->type:I

    .line 5
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->mediaList:Ljava/util/List;

    .line 7
    new-instance v0, Lcom/narvii/model/Media;

    invoke-direct {v0}, Lcom/narvii/model/Media;-><init>()V

    const/16 v1, 0x64

    iput v1, v0, Lcom/narvii/model/Media;->type:I

    .line 8
    iget-object v1, p1, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPost;->mediaList:Ljava/util/List;

    .line 9
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->title:Ljava/lang/String;

    .line 11
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->content:Ljava/lang/String;

    .line 12
    iget v0, p1, Lcom/narvii/model/ChatThread;->latitude:I

    iput v0, p0, Lcom/narvii/chat/post/ThreadPost;->latitude:I

    .line 13
    iget v0, p1, Lcom/narvii/model/ChatThread;->longitude:I

    iput v0, p0, Lcom/narvii/chat/post/ThreadPost;->longitude:I

    .line 14
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getBackground()Lcom/narvii/model/Media;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->backgroundMedia:Lcom/narvii/model/Media;

    .line 15
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->userAddedTopicList:Ljava/util/List;

    iput-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->userAddedTopicList:Ljava/util/List;

    .line 16
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iput-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 17
    iget p1, p1, Lcom/narvii/model/ChatThread;->publishToGlobal:I

    iput p1, p0, Lcom/narvii/chat/post/ThreadPost;->publishToGlobal:I

    return-void
.end method

.method private getLanguage(Lcom/narvii/app/NVContext;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const-string v0, "content_language"

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    .line 29
    :cond_0
    const-string v1, "community"

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    check-cast p1, Lcom/narvii/community/CommunityService;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 39
    move-result v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    iget-object p1, p1, Lcom/narvii/model/Community;->primaryLanguage:Ljava/lang/String;

    .line 48
    return-object p1

    .line 49
    :cond_1
    const/4 p1, 0x0

    .line 50
    return-object p1
.end method


# virtual methods
.method public content()Ljava/lang/String;
    .locals 1

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->mediaList:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->mediaList:Ljava/util/List;

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/model/Media;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 23
    return-object v0

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 25
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->title:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->content:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->mediaList:Ljava/util/List;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->backgroundMedia:Lcom/narvii/model/Media;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->userAddedTopicList:Ljava/util/List;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 38
    move-result v0

    .line 39
    .line 40
    if-nez v0, :cond_2

    .line 41
    :cond_1
    const/4 v0, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 v0, 0x0

    .line 44
    :goto_0
    return v0
.end method

.method public isFansOnly()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    const-string v1, "fansOnly"

    .line 5
    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public isSame(Lcom/narvii/post/PostObject;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/chat/post/ThreadPost;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lcom/narvii/chat/post/ThreadPost;

    .line 8
    .line 9
    iget v0, p0, Lcom/narvii/chat/post/ThreadPost;->type:I

    .line 10
    .line 11
    iget v2, p1, Lcom/narvii/chat/post/ThreadPost;->type:I

    .line 12
    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->title:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v2, p1, Lcom/narvii/chat/post/ThreadPost;->title:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->content:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v2, p1, Lcom/narvii/chat/post/ThreadPost;->content:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->mediaList:Ljava/util/List;

    .line 36
    .line 37
    iget-object v2, p1, Lcom/narvii/chat/post/ThreadPost;->mediaList:Ljava/util/List;

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    iget v0, p0, Lcom/narvii/chat/post/ThreadPost;->latitude:I

    .line 46
    .line 47
    iget v2, p1, Lcom/narvii/chat/post/ThreadPost;->latitude:I

    .line 48
    .line 49
    if-ne v0, v2, :cond_0

    .line 50
    .line 51
    iget v0, p0, Lcom/narvii/chat/post/ThreadPost;->longitude:I

    .line 52
    .line 53
    iget v2, p1, Lcom/narvii/chat/post/ThreadPost;->longitude:I

    .line 54
    .line 55
    if-ne v0, v2, :cond_0

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->backgroundMedia:Lcom/narvii/model/Media;

    .line 58
    .line 59
    iget-object v2, p1, Lcom/narvii/chat/post/ThreadPost;->backgroundMedia:Lcom/narvii/model/Media;

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    move-result v0

    .line 64
    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->userAddedTopicList:Ljava/util/List;

    .line 68
    .line 69
    iget-object p1, p1, Lcom/narvii/chat/post/ThreadPost;->userAddedTopicList:Ljava/util/List;

    .line 70
    .line 71
    .line 72
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    move-result p1

    .line 74
    .line 75
    if-eqz p1, :cond_0

    .line 76
    const/4 v1, 0x1

    .line 77
    :cond_0
    return v1
.end method

.method public postBody(Lcom/narvii/app/NVContext;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 5

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 9
    .line 10
    const-string v1, "memberList"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 14
    .line 15
    const-string v1, "mediaList"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 19
    .line 20
    const-string v1, "icon"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPost;->icon()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 28
    .line 29
    const-string v1, "address"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->putNull(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 33
    .line 34
    const-string v1, "keywords"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->putNull(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPost;->memberList:Ljava/util/ArrayList;

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    const-string v1, "inviteeUids"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->putArray(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    iget-object v2, p0, Lcom/narvii/chat/post/ThreadPost;->memberList:Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v3

    .line 58
    .line 59
    if-eqz v3, :cond_0

    .line 60
    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v3

    .line 64
    .line 65
    check-cast v3, Lcom/narvii/model/User;

    .line 66
    .line 67
    iget-object v3, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_0
    const-string v1, "backgroundUrl"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 83
    .line 84
    iget-object v3, p0, Lcom/narvii/chat/post/ThreadPost;->backgroundMedia:Lcom/narvii/model/Media;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 88
    move-result-object v2

    .line 89
    .line 90
    const-string v3, "bm"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v3, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 94
    .line 95
    iget-object v2, p0, Lcom/narvii/chat/post/ThreadPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 96
    .line 97
    if-eqz v2, :cond_1

    .line 98
    .line 99
    const-string v3, "fansOnly"

    .line 100
    .line 101
    .line 102
    filled-new-array {v3}, [Ljava/lang/String;

    .line 103
    move-result-object v4

    .line 104
    .line 105
    .line 106
    invoke-static {v2, v4}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    .line 107
    move-result v2

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v3, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 111
    .line 112
    .line 113
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/chat/post/ThreadPost;->getLanguage(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    .line 114
    move-result-object v2

    .line 115
    .line 116
    if-eqz v2, :cond_2

    .line 117
    .line 118
    const-string v2, "language"

    .line 119
    .line 120
    .line 121
    invoke-direct {p0, p1}, Lcom/narvii/chat/post/ThreadPost;->getLanguage(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 126
    .line 127
    :cond_2
    const-string p1, "extensions"

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 131
    return-object v0
.end method

.method public setFansOnly(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 13
    .line 14
    const-string v1, "fansOnly"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 18
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/chat/post/ThreadPost;->mediaList:Ljava/util/List;

    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 10
    goto :goto_1

    .line 11
    .line 12
    :cond_0
    new-instance v0, Lcom/narvii/model/Media;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/narvii/model/Media;-><init>()V

    .line 16
    .line 17
    const/16 v1, 0x64

    .line 18
    .line 19
    iput v1, v0, Lcom/narvii/model/Media;->type:I

    .line 20
    .line 21
    iput-object p1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/chat/post/ThreadPost;->mediaList:Ljava/util/List;

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    new-instance p1, Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPost;->mediaList:Ljava/util/List;

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 37
    .line 38
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/post/ThreadPost;->mediaList:Ljava/util/List;

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_2
    :goto_1
    return-void
.end method

.method public title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPost;->title:Ljava/lang/String;

    return-object v0
.end method
