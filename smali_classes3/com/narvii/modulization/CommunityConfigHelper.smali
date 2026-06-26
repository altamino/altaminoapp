.class public Lcom/narvii/modulization/CommunityConfigHelper;
.super Ljava/lang/Object;
.source "CommunityConfigHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/modulization/CommunityConfigHelper$InlineMapping;
    }
.end annotation


# static fields
.field public static final INVITE_PERMISSION_EVERYONE:I = 0x1

.field public static final INVITE_PERMISSION_LEADERS:I = 0x2


# instance fields
.field cid:I

.field communityService:Lcom/narvii/community/CommunityService;

.field context:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;I)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/narvii/modulization/CommunityConfigHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "config"

    .line 48
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    if-lez p2, :cond_0

    .line 50
    iput p2, p0, Lcom/narvii/modulization/CommunityConfigHelper;->cid:I

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p2

    iput p2, p0, Lcom/narvii/modulization/CommunityConfigHelper;->cid:I

    :goto_0
    const-string p2, "community"

    .line 54
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/CommunityService;

    iput-object p1, p0, Lcom/narvii/modulization/CommunityConfigHelper;->communityService:Lcom/narvii/community/CommunityService;

    return-void
.end method

.method private buildPageList(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ")",
            "Ljava/util/List<",
            "Lcom/narvii/modulization/page/Page;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 131
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 134
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getDefaultPageList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getDefaultPageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/modulization/page/Page;

    .line 136
    iget-object v4, v3, Lcom/narvii/modulization/page/Page;->id:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getCustomPageList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getCustomPageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/modulization/page/Page;

    .line 142
    iget-object v4, v3, Lcom/narvii/modulization/page/Page;->id:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 146
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result v3

    const/4 v4, 0x0

    move-object v5, v4

    :goto_2
    if-ge v2, v3, :cond_4

    .line 150
    :try_start_0
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v6

    const-string v7, "id"

    .line 151
    invoke-virtual {v6, v7}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :try_start_1
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/modulization/page/Page;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_0
    move-object v6, v4

    :catch_1
    move-object v7, v4

    :goto_3
    if-eqz v7, :cond_2

    .line 156
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_2
    if-eqz v6, :cond_3

    move-object v5, v6

    :cond_3
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_5

    .line 162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "missing pageId in community "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/modulization/CommunityConfigHelper;->cid:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_5
    return-object v0

    .line 166
    :cond_6
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method private isFeaturedEnabled()Z
    .locals 5

    .line 439
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 442
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "featured"

    aput-object v4, v2, v3

    const-string v3, "enabled"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getCustomPageList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/modulization/page/Page;",
            ">;"
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "page"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "customList"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/modulization/page/Page;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCustomPageUrlSet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 180
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getCustomPageList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 182
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/modulization/page/Page;

    .line 183
    iget-object v2, v2, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 184
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getDefaultPageList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/modulization/page/Page;",
            ">;"
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "page"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "defaultList"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/modulization/page/Page;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getFeaturedLayout()I
    .locals 1

    .line 387
    sget-object v0, Lcom/narvii/modulization/ConfigPath;->FEATURED_LAYOUT:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleInt([Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getHomePageList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/modulization/page/Page;",
            ">;"
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "appearance"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "homePage"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "navigation"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/modulization/CommunityConfigHelper;->buildPageList(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInvitePermissionType()I
    .locals 5

    .line 534
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "general"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "invitePermission"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 535
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getJoinedMainTopicIdList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 412
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "general"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "joinedTopicIdList"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 416
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getLeaderBoardList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/LeaderBoardItem;",
            ">;"
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "module"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "ranking"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "leaderboardList"

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 71
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result v4

    if-le v4, v3, :cond_3

    .line 72
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 73
    :goto_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 75
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    const-string v5, "enabled"

    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 79
    :cond_0
    :try_start_0
    sget-object v4, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v5

    const-class v6, Lcom/narvii/model/LeaderBoardItem;

    invoke-virtual {v4, v5, v6}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/LeaderBoardItem;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 81
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v1

    :goto_1
    if-eqz v4, :cond_1

    .line 84
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v3

    :cond_3
    return-object v1
.end method

.method public getLeaderboadBackground(I)Lcom/narvii/model/Media;
    .locals 4

    .line 343
    invoke-virtual {p0, p1}, Lcom/narvii/modulization/CommunityConfigHelper;->getLeaderboardRankingNode(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "style"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "backgroundMediaList"

    aput-object v3, v0, v2

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 347
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 349
    :try_start_0
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v3, [Lcom/narvii/model/Media;

    invoke-virtual {v2, p1, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/narvii/model/Media;

    if-nez p1, :cond_1

    return-object v0

    .line 353
    :cond_1
    array-length v2, p1

    if-lez v2, :cond_2

    .line 354
    aget-object p1, p1, v1
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 357
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    return-object v0
.end method

.method public getLeaderboardRankingNode(I)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 6

    .line 365
    sget-object v0, Lcom/narvii/modulization/ConfigPath;->RANKING_LEADERBOARD_LIST_PATH:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode([Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 366
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    :try_start_0
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v2, [Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/JsonNode;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 370
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 371
    aget-object v3, v0, v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "type"

    aput-object v5, v4, v1

    .line 372
    invoke-static {v3, v4}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 379
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLeftSideColor()I
    .locals 5

    .line 192
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "appearance"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "leftSidePanel"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "style"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string v4, "iconColor"

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 194
    :try_start_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/StringUtils;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v2
.end method

.method public getLeftSidePanelLv1List()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/modulization/page/Page;",
            ">;"
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "appearance"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "leftSidePanel"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "navigation"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "level1"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/modulization/CommunityConfigHelper;->buildPageList(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLeftSidePanelLv2List()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/modulization/page/Page;",
            ">;"
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "appearance"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "leftSidePanel"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "navigation"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "level2"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/modulization/CommunityConfigHelper;->buildPageList(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs getModuleBoolean(Z[Ljava/lang/String;)Z
    .locals 1

    .line 290
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 291
    invoke-static {v0, p1, p2}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;Z[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public varargs getModuleBoolean([Ljava/lang/String;)Z
    .locals 1

    .line 285
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 286
    invoke-static {v0, p1}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public varargs getModuleInt([Ljava/lang/String;)I
    .locals 1

    .line 312
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 313
    invoke-static {v0, p1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getModuleNode()Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 4

    .line 335
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "module"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public varargs getModuleNode([Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 5

    .line 323
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "module"

    aput-object v4, v2, v3

    .line 327
    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 331
    :cond_1
    invoke-static {v0, p1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    return-object p1
.end method

.method public varargs getModuleString([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 302
    invoke-static {v0, p1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/narvii/modulization/CommunityConfigHelper;->communityService:Lcom/narvii/community/CommunityService;

    iget v1, p0, Lcom/narvii/modulization/CommunityConfigHelper;->cid:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_0
    iget-object v0, v0, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object v0
.end method

.method public varargs getPrivilege([Ljava/lang/String;)Lcom/narvii/modulization/entry/Privilege;
    .locals 3

    .line 495
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    .line 496
    new-instance v0, Lcom/narvii/modulization/entry/Privilege;

    invoke-direct {v0}, Lcom/narvii/modulization/entry/Privilege;-><init>()V

    if-eqz p1, :cond_0

    .line 499
    :try_start_0
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v2, Lcom/narvii/modulization/entry/Privilege;

    invoke-virtual {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/modulization/entry/Privilege;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 501
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonProcessingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_0
    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public getStartPageIndex()Ljava/lang/Integer;
    .locals 6

    .line 101
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "appearance"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "homePage"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "navigation"

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 103
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    .line 105
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    const-string v5, "isStartPage"

    .line 106
    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 107
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JsonNode;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "id"

    .line 108
    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getHomePageList()Ljava/util/List;

    move-result-object v5

    .line 110
    invoke-static {v5, v4}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_0

    goto :goto_1

    .line 111
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v1

    :catch_0
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getWelcomeMessageText()Ljava/lang/String;
    .locals 4

    .line 408
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "general"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "welcomeMessage"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "text"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public inlineMapping(Ljava/lang/String;)Lcom/narvii/modulization/CommunityConfigHelper$InlineMapping;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "ndc://"

    .line 214
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "navigator"

    const-string v4, "fail to inline mapping "

    const-string v5, "__communityId"

    const-string v6, "fragment"

    if-eqz v1, :cond_2

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/narvii/modulization/CommunityConfigHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/navigator/Navigator;

    .line 217
    new-instance v3, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 218
    invoke-interface {v1, v3}, Lcom/narvii/navigator/Navigator;->intentMapping(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 219
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/narvii/modulization/CommunityConfigHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 220
    invoke-virtual {v1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget v3, p0, Lcom/narvii/modulization/CommunityConfigHelper;->cid:I

    if-eq v2, v3, :cond_1

    const-string v1, "inline mapping to another community is not supported"

    .line 221
    invoke-static {v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    return-object v0

    .line 224
    :cond_1
    iget-object v2, p0, Lcom/narvii/modulization/CommunityConfigHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 225
    const-class v3, Lcom/narvii/app/NVFragment;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 226
    new-instance v3, Lcom/narvii/modulization/CommunityConfigHelper$InlineMapping;

    invoke-direct {v3}, Lcom/narvii/modulization/CommunityConfigHelper$InlineMapping;-><init>()V

    .line 227
    iput-object v2, v3, Lcom/narvii/modulization/CommunityConfigHelper$InlineMapping;->component:Ljava/lang/Class;

    .line 228
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v3, Lcom/narvii/modulization/CommunityConfigHelper$InlineMapping;->args:Landroid/os/Bundle;

    .line 229
    iget-object v1, v3, Lcom/narvii/modulization/CommunityConfigHelper$InlineMapping;->args:Landroid/os/Bundle;

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 230
    iget-object v1, v3, Lcom/narvii/modulization/CommunityConfigHelper$InlineMapping;->args:Landroid/os/Bundle;

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_2
    const-string v1, "http://"

    .line 238
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "https://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 256
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_4
    return-object v0

    .line 240
    :cond_5
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/narvii/modulization/CommunityConfigHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/navigator/Navigator;

    .line 241
    new-instance v3, Landroid/content/Intent;

    const-string v7, "http://www.google.com/"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 242
    invoke-interface {v1, v3}, Lcom/narvii/navigator/Navigator;->intentMapping(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 243
    iget-object v2, p0, Lcom/narvii/modulization/CommunityConfigHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 244
    new-instance v3, Lcom/narvii/modulization/CommunityConfigHelper$InlineMapping;

    invoke-direct {v3}, Lcom/narvii/modulization/CommunityConfigHelper$InlineMapping;-><init>()V

    .line 245
    iput-object v2, v3, Lcom/narvii/modulization/CommunityConfigHelper$InlineMapping;->component:Ljava/lang/Class;

    .line 246
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v3, Lcom/narvii/modulization/CommunityConfigHelper$InlineMapping;->args:Landroid/os/Bundle;

    .line 247
    iget-object v1, v3, Lcom/narvii/modulization/CommunityConfigHelper$InlineMapping;->args:Landroid/os/Bundle;

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 248
    iget-object v1, v3, Lcom/narvii/modulization/CommunityConfigHelper$InlineMapping;->args:Landroid/os/Bundle;

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 249
    iget-object v1, v3, Lcom/narvii/modulization/CommunityConfigHelper$InlineMapping;->args:Landroid/os/Bundle;

    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    :catch_1
    move-exception v1

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public isAudio2ChatEnable()Z
    .locals 2

    .line 514
    sget-object v0, Lcom/narvii/modulization/Module;->isAudio2ChatEnabledPath:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleBoolean(Z[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAvChatProtectionEnabled()Z
    .locals 1

    .line 530
    sget-object v0, Lcom/narvii/modulization/Module;->avChatProtectionEnablePath:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleBoolean([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAvatarChatEnable()Z
    .locals 1

    .line 522
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->isAvatarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->isAudio2ChatEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAvatarEnabled()Z
    .locals 4

    .line 539
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "general"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "avatarEnabled"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isCatalogCutaionEnable()Z
    .locals 5

    .line 488
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "catalog"

    aput-object v4, v2, v3

    const-string v3, "curationEnabled"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isCatalogEnable()Z
    .locals 5

    .line 481
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 484
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "catalog"

    aput-object v4, v2, v3

    const-string v3, "enabled"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isChatEnabled()Z
    .locals 5

    .line 432
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 435
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "chat"

    aput-object v4, v2, v3

    const-string v3, "enabled"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isChatSpamProtectionEnabled()Z
    .locals 1

    .line 391
    sget-object v0, Lcom/narvii/modulization/ConfigPath;->CHAT_SPAM_PROTECTION:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleBoolean([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFeaturedChatThreadEnabled()Z
    .locals 5

    .line 460
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 463
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "featured"

    aput-object v4, v2, v3

    const-string v4, "publicChatRoomEnabled"

    aput-object v4, v2, v1

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->isFeaturedEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFeaturedMemberEnabled()Z
    .locals 5

    .line 453
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 456
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "featured"

    aput-object v4, v2, v3

    const-string v4, "memberEnabled"

    aput-object v4, v2, v1

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->isFeaturedEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFeaturedPostEnabled()Z
    .locals 5

    .line 446
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 449
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "featured"

    aput-object v4, v2, v3

    const-string v4, "postEnabled"

    aput-object v4, v2, v1

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->isFeaturedEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isLeaderBoardEnable()Z
    .locals 4

    .line 274
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "module"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "ranking"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "leaderboardEnabled"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isLeaderboardEnabled(I)Z
    .locals 3

    .line 339
    invoke-virtual {p0, p1}, Lcom/narvii/modulization/CommunityConfigHelper;->getLeaderboardRankingNode(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "enabled"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isModuleEnabled(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    const-string v1, "enabled"

    aput-object v1, v0, p1

    .line 266
    invoke-virtual {p0, v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleBoolean([Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isPostBlogEnabled()Z
    .locals 5

    .line 467
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 470
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "post"

    aput-object v4, v2, v3

    const-string v3, "postType"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "blog"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "enabled"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPostEnabled()Z
    .locals 5

    .line 425
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 428
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "post"

    aput-object v4, v2, v3

    const-string v3, "enabled"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPostStoryEnabled()Z
    .locals 4

    .line 547
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "post"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "postType"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "story"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "enabled"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPremiumFeatureEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPublicChatEnabled()Z
    .locals 5

    .line 474
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 477
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "post"

    aput-object v4, v2, v3

    const-string v3, "postType"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "publicChatRooms"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "enabled"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRankingModuleEnabled()Z
    .locals 1

    const-string v0, "ranking"

    .line 270
    invoke-virtual {p0, v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isModuleEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isScreenRoomEnable()Z
    .locals 1

    .line 526
    iget v0, p0, Lcom/narvii/modulization/CommunityConfigHelper;->cid:I

    if-eqz v0, :cond_1

    sget-object v0, Lcom/narvii/modulization/Module;->isScreenRoomEnabledPath:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleBoolean([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSpeedDialDisabled()Z
    .locals 5

    .line 395
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "general"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "speedDialDisabled"

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v2

    :goto_0
    return v2
.end method

.method public isTopicCategoryEnabled()Z
    .locals 4

    .line 421
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "topicCategories"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "enabled"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVideoChatEnable()Z
    .locals 1

    .line 518
    sget-object v0, Lcom/narvii/modulization/Module;->isVideoChatEnabledPath:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleBoolean([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVideoUploadEnabled()Z
    .locals 5

    .line 400
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "general"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "videoUploadPolicy"

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public isVoiceChatEnable()Z
    .locals 1

    .line 508
    iget v0, p0, Lcom/narvii/modulization/CommunityConfigHelper;->cid:I

    if-eqz v0, :cond_1

    sget-object v0, Lcom/narvii/modulization/Module;->isAudioChatEnabledPath:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleBoolean([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public welcomeMessageEnabled()Z
    .locals 4

    .line 404
    invoke-virtual {p0}, Lcom/narvii/modulization/CommunityConfigHelper;->getNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "general"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "welcomeMessage"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "enabled"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
