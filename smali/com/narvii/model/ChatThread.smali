.class public Lcom/narvii/model/ChatThread;
.super Lcom/narvii/model/NVObject;
.source "ChatThread.java"

# interfaces
.implements Lcom/narvii/model/AuthorGetter;
.implements Lcom/narvii/influencer/FansOnlyContent;
.implements Lcom/narvii/list/DateCompare;
.implements Lcom/narvii/model/StrategyObject;
.implements Lcom/narvii/model/CommunityObjectInGlobal;
.implements Lcom/narvii/model/Tippable;
.implements Lcom/narvii/model/ExtensionObject;


# static fields
.field public static final CHAT_ALERT_OPTION_OFF:I = 0x0

.field public static final CHAT_ALERT_OPTION_ON:I = 0x1

.field public static final CHAT_ALERT_OPTION_SILENT:I = 0x2

.field public static final CHAT_MEMBERSHIP_STATUS_ACTIVE:I = 0x1

.field public static final CHAT_MEMBERSHIP_STATUS_INVITE_SENT:I = 0x2

.field public static final CHAT_MEMBERSHIP_STATUS_JOIN_REQUESTED:I = 0x3

.field public static final CHAT_MEMBERSHIP_STATUS_NONE:I = 0x0

.field public static final CHAT_THREAD_CONDITION_AUTHORABSENT:I = 0x2

.field public static final CHAT_THREAD_CONDITION_NORMAL:I = 0x0

.field public static final CHAT_THREAD_CONDITION_PUBLIC_OPEN:I = 0x1

.field public static final CHAT_THREAD_TYPE_GROUP:I = 0x1

.field public static final CHAT_THREAD_TYPE_PUBLIC:I = 0x2

.field public static final CHAT_THREAD_TYPE_SINGLE:I = 0x0

.field public static final VV_CHAT_JOIN_TYPE_INVITED_AND_REQUESTED:I = 0x2

.field public static final VV_CHAT_JOIN_TYPE_INVITE_ONLY:I = 0x3

.field public static final VV_CHAT_JOIN_TYPE_OPEN_TO_EVERYONE:I = 0x1


# instance fields
.field public alertOption:I

.field public author:Lcom/narvii/model/User;

.field public chatBubbles:Ljava/util/Map;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/ChatBubble;
        keyAs = Ljava/lang/String;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/narvii/model/ChatBubble;",
            ">;"
        }
    .end annotation
.end field

.field private coHostUidList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public complete:Z

.field public condition:I

.field public content:Ljava/lang/String;

.field public createdTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field public icon:Ljava/lang/String;

.field public isPinned:Z

.field public keywords:Ljava/lang/String;

.field public lastMessageSummary:Lcom/narvii/model/ChatMessage;

.field public lastPinOperationTime:Ljava/util/Date;

.field public lastReadTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public latestActivityTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public latitude:I

.field public longitude:I

.field public membersCount:I

.field public membersQuota:I

.field public membersSummary:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/User;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field public membershipStatus:I

.field public mentionMe:Z

.field public modifiedTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public ndcId:I

.field public needHidden:Z

.field public promotedTopic:Lcom/narvii/model/story/StoryTopic;

.field public publishToGlobal:I

.field public replyMe:Z

.field public status:I

.field public strategyInfo:Ljava/lang/String;

.field public threadId:Ljava/lang/String;

.field public tipInfo:Lcom/narvii/model/TippingInfo;

.field public title:Ljava/lang/String;

.field public type:I

.field public uid:Ljava/lang/String;

.field public userAddedTopicList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/story/StoryTopic;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/story/StoryTopic;",
            ">;"
        }
    .end annotation
.end field

.field private vvChatJoinType:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    const/4 v0, -0x1

    .line 158
    iput v0, p0, Lcom/narvii/model/ChatThread;->vvChatJoinType:I

    return-void
.end method

.method public static isLegalThreadType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public HintTextId()I
    .locals 1

    .line 451
    sget v0, Lcom/narvii/lib/R$string;->some_one_fans_only_hint_chat:I

    return v0
.end method

.method public canMemberInvite()Z
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "membersCanInvite"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 291
    :cond_1
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean(Z)Z

    move-result v0

    return v0
.end method

.method public featureType()I
    .locals 4

    .line 480
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "featuredType"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAnnouncement()Ljava/lang/String;
    .locals 4

    .line 390
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "announcement"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthor()Lcom/narvii/model/User;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    return-object v0
.end method

.method public getBackground()Lcom/narvii/model/Media;
    .locals 4

    const/4 v0, 0x0

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v2, "bm"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    return-object v0

    .line 260
    :cond_1
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v3, Lcom/narvii/model/Media;

    .line 261
    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Media;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string/jumbo v2, "unable to read chat thread background"

    .line 264
    invoke-static {v2, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public getBriefContent()Lcom/narvii/model/ChatThread;
    .locals 2

    .line 540
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    const-string v1, ""

    .line 541
    iput-object v1, v0, Lcom/narvii/model/ChatThread;->content:Ljava/lang/String;

    .line 542
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    .line 543
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/narvii/model/ChatThread;->chatBubbles:Ljava/util/Map;

    .line 544
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/narvii/model/ChatThread;->userAddedTopicList:Ljava/util/List;

    return-object v0
.end method

.method public getCoHostUidList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 499
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->coHostUidList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/model/ChatThread;->coHostUidList:Ljava/util/List;

    .line 501
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "coHost"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->coHostUidList:Ljava/util/List;

    return-object v0

    .line 505
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 506
    iget-object v1, p0, Lcom/narvii/model/ChatThread;->coHostUidList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->coHostUidList:Ljava/util/List;

    return-object v0
.end method

.method public getCompareDate()Ljava/util/Date;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->createdTime:Ljava/util/Date;

    return-object v0
.end method

.method public getCurBubble(Ljava/lang/String;)Lcom/narvii/model/ChatBubble;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->chatBubbles:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatBubble;

    :goto_0
    return-object p1
.end method

.method public getDeepLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "://x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/narvii/model/ChatThread;->ndcId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getExtension()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object v0
.end method

.method public getNdcId()I
    .locals 1

    .line 476
    iget v0, p0, Lcom/narvii/model/ChatThread;->ndcId:I

    return v0
.end method

.method public getOptimizedMembersSummary()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/narvii/model/ChatThread;->getOptimizedMembersSummary(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOptimizedMembersSummary(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 188
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 190
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 192
    iget p1, p0, Lcom/narvii/model/ChatThread;->type:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_3

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v2, :cond_3

    .line 193
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 194
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 195
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/User;

    .line 196
    iget v4, v3, Lcom/narvii/model/User;->role:I

    const/16 v5, 0xfe

    if-ne v4, v5, :cond_2

    iget-object v3, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    iget-object v4, p0, Lcom/narvii/model/ChatThread;->uid:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 197
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 203
    :cond_3
    iget p1, p0, Lcom/narvii/model/ChatThread;->type:I

    if-eq p1, v2, :cond_4

    if-ne p1, v1, :cond_7

    .line 204
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 206
    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 207
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/User;

    .line 208
    iget v4, v3, Lcom/narvii/model/User;->membershipStatus:I

    if-eq v4, v2, :cond_5

    .line 209
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 210
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 213
    :cond_6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 215
    :cond_7
    iget p1, p0, Lcom/narvii/model/ChatThread;->type:I

    if-nez p1, :cond_a

    .line 216
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 217
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 218
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 219
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/User;

    .line 220
    iget-object v3, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    iget-object v4, p0, Lcom/narvii/model/ChatThread;->uid:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 221
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v3, 0x0

    .line 222
    invoke-virtual {p1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 224
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 225
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 228
    :cond_9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_a
    return-object v0
.end method

.method public getOrganizerTransferRequest()Lcom/narvii/model/OrganizerTransferRequest;
    .locals 4

    const/4 v0, 0x0

    .line 275
    :try_start_0
    iget-object v1, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v2, "organizerTransferRequest"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    return-object v0

    .line 279
    :cond_1
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v3, Lcom/narvii/model/OrganizerTransferRequest;

    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/OrganizerTransferRequest;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string/jumbo v2, "unable to read chat thread OrganizerTransferRequest"

    .line 282
    invoke-static {v2, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public getRTCType()I
    .locals 4

    .line 309
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "channelType"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStrategyInfo()Ljava/lang/String;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->strategyInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getTipAuthor()Lcom/narvii/model/User;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    return-object v0
.end method

.method public getTippingInfo()Lcom/narvii/model/TippingInfo;
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->tipInfo:Lcom/narvii/model/TippingInfo;

    return-object v0
.end method

.method public getVvChatJoinType()I
    .locals 4

    .line 521
    iget v0, p0, Lcom/narvii/model/ChatThread;->vvChatJoinType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 522
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "vvChatJoinType"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/model/ChatThread;->vvChatJoinType:I

    .line 524
    :cond_0
    iget v0, p0, Lcom/narvii/model/ChatThread;->vvChatJoinType:I

    return v0
.end method

.method public groupChat()Z
    .locals 2

    .line 375
    iget v0, p0, Lcom/narvii/model/ChatThread;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasEqualId(Lcom/narvii/model/ChatThread;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 242
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasLiveEvents()Z
    .locals 3

    .line 237
    invoke-virtual {p0}, Lcom/narvii/model/ChatThread;->getRTCType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    return-object v0
.end method

.method public influencer()Lcom/narvii/model/User;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    return-object v0
.end method

.method public influencerUid()Ljava/lang/String;
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public isCoHost(Ljava/lang/String;)Z
    .locals 1

    .line 517
    invoke-virtual {p0}, Lcom/narvii/model/ChatThread;->getCoHostUidList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isContentAccessible()Z
    .locals 1

    .line 456
    iget-boolean v0, p0, Lcom/narvii/model/ChatThread;->needHidden:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isCurrentUserEligibleToBeTheOrganizer()Z
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "isCurrentUserEligibleToBeTheOrganizer"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 305
    :cond_1
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean(Z)Z

    move-result v0

    return v0
.end method

.method public isEnableProps()Z
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->tipInfo:Lcom/narvii/model/TippingInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/narvii/model/TippingInfo;->tippable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFansOnly()Z
    .locals 4

    .line 421
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "fansOnly"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isGlobal()Z
    .locals 1

    .line 436
    iget v0, p0, Lcom/narvii/model/ChatThread;->ndcId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGuest()Z
    .locals 1

    .line 355
    iget v0, p0, Lcom/narvii/model/ChatThread;->membershipStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHostOrCoHost(Ljava/lang/String;)Z
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/model/ChatThread;->isCoHost(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isJumpstart()Z
    .locals 4

    .line 246
    iget v0, p0, Lcom/narvii/model/ChatThread;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget v0, v0, Lcom/narvii/model/User;->role:I

    const/16 v3, 0xfe

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isOrganizedByInfluencer()Z
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/model/User;->isInfluencer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPinAnnouncement()Ljava/lang/Boolean;
    .locals 4

    .line 401
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "pinAnnouncement"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isPublishToGlobal()Z
    .locals 2

    .line 432
    iget v0, p0, Lcom/narvii/model/ChatThread;->publishToGlobal:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isValid()Z
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;

    .line 174
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    .line 175
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isViewOnly()Z
    .locals 4

    .line 412
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "viewOnly"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public joined()Z
    .locals 2

    .line 359
    iget v0, p0, Lcom/narvii/model/ChatThread;->membershipStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public notJoined()Z
    .locals 1

    .line 363
    invoke-virtual {p0}, Lcom/narvii/model/ChatThread;->joined()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public objectType()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public organizerLeft()Z
    .locals 2

    .line 270
    iget v0, p0, Lcom/narvii/model/ChatThread;->condition:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/narvii/model/ChatThread;->type:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public owner()Lcom/narvii/model/User;
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 163
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    .line 164
    iget-object v2, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/model/ChatThread;->uid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public publicChat()Z
    .locals 2

    .line 371
    iget v0, p0, Lcom/narvii/model/ChatThread;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAnnouncement(Ljava/lang/String;)V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_0

    .line 384
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v1, "announcement"

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-void
.end method

.method public setBackground(Lcom/narvii/model/Media;)V
    .locals 2

    const-string v0, "bm"

    if-nez p1, :cond_0

    .line 315
    :try_start_0
    iget-object p1, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz p1, :cond_2

    .line 316
    iget-object p1, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    goto :goto_0

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v1, :cond_1

    .line 320
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 322
    :cond_1
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    .line 323
    iget-object v1, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v1, v0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string/jumbo v0, "unable to set chat thread background"

    .line 326
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setCanMemberInvite(Z)V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_0

    .line 296
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v1, "membersCanInvite"

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-void
.end method

.method public setCoHostUidList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 513
    iput-object p1, p0, Lcom/narvii/model/ChatThread;->coHostUidList:Ljava/util/List;

    return-void
.end method

.method public setFansOnly(Z)V
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_0

    .line 426
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v1, "fansOnly"

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-void
.end method

.method public setPinAnnouncement(Z)V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_0

    .line 395
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string/jumbo v1, "pinAnnouncement"

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-void
.end method

.method public setStrategyInfo(Ljava/lang/String;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/narvii/model/ChatThread;->strategyInfo:Ljava/lang/String;

    return-void
.end method

.method public setViewOnly(Z)V
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_0

    .line 406
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string/jumbo v1, "viewOnly"

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-void
.end method

.method public setVvChatJoinType(I)V
    .locals 2

    .line 528
    iput p1, p0, Lcom/narvii/model/ChatThread;->vvChatJoinType:I

    .line 529
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_0

    .line 530
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string/jumbo v1, "vvChatJoinType"

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-void
.end method

.method public singleChat()Z
    .locals 1

    .line 367
    iget v0, p0, Lcom/narvii/model/ChatThread;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public status()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/narvii/model/ChatThread;->status:I

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public updateBubble(Ljava/lang/String;Lcom/narvii/model/ChatBubble;)V
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->chatBubbles:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 339
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/model/ChatThread;->chatBubbles:Ljava/util/Map;

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/narvii/model/ChatThread;->chatBubbles:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method
