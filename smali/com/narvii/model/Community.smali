.class public Lcom/narvii/model/Community;
.super Lcom/narvii/model/NVObject;
.source "Community.java"

# interfaces
.implements Lcom/narvii/model/StrategyObject;
.implements Lcom/narvii/util/LenientObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/model/Community$LaunchPage;
    }
.end annotation


# static fields
.field public static final COMMUNITY_JOIN_TYPE_INVITE:I = 0x2

.field public static final COMMUNITY_JOIN_TYPE_OPEN:I = 0x0

.field public static final COMMUNITY_JOIN_TYPE_REQUESTED:I = 0x1

.field public static final LISTED_STATUS_LISTED:I = 0x2

.field public static final LISTED_STATUS_NONE:I = 0x0

.field public static final LISTED_STATUS_UNLISTED:I = 0x1


# instance fields
.field public _isFaked:Z

.field public activeInfo:Lcom/narvii/model/ActiveInfo;

.field public agent:Lcom/narvii/model/User;

.field public communityHeadList:Ljava/util/List;
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

.field public communityHeat:F

.field public communityMembersSummary:Lcom/narvii/model/CommunityMemberSummary;

.field public configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field public content:Ljava/lang/String;

.field public createdTime:Ljava/lang/String;

.field public endpoint:Ljava/lang/String;

.field public extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field public icon:Ljava/lang/String;

.field public id:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "ndcId"
    .end annotation
.end field

.field public influencerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field public isStandaloneAppDeprecated:Z

.field public joinType:I

.field public launchPage:Lcom/narvii/model/Community$LaunchPage;

.field public link:Ljava/lang/String;

.field public listedStatus:I

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

.field public membersCount:I

.field public modifiedTime:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public primaryLanguage:Ljava/lang/String;

.field public probationStatus:I

.field public promotionalMediaList:Ljava/util/List;
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

.field public searchable:Z

.field public status:I

.field public strategyInfo:Ljava/lang/String;

.field public tagline:Ljava/lang/String;

.field public templateId:I

.field public themePack:Lcom/narvii/model/ThemePack;

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public checkEqual(Ljava/lang/Object;)I
    .locals 1

    .line 153
    invoke-virtual {p0, p1}, Lcom/narvii/model/Community;->isNormalPartEqual(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x2

    return p1

    .line 157
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/model/Community;->checkLenientPart(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public checkLenientPart(Ljava/lang/Object;)I
    .locals 5

    const/4 v0, 0x2

    if-eqz p1, :cond_4

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/model/Community;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    return v1

    .line 107
    :cond_1
    instance-of v2, p1, Lcom/narvii/model/Community;

    if-eqz v2, :cond_4

    .line 108
    check-cast p1, Lcom/narvii/model/Community;

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 110
    iget-object v3, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    iget-object v4, p0, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->compareLenientObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v3, p1, Lcom/narvii/model/Community;->promotionalMediaList:Ljava/util/List;

    iget-object v4, p0, Lcom/narvii/model/Community;->promotionalMediaList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->compareLenientObjectList(Ljava/util/List;Ljava/util/List;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v3, p1, Lcom/narvii/model/Community;->mediaList:Ljava/util/List;

    iget-object v4, p0, Lcom/narvii/model/Community;->mediaList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->compareLenientObjectList(Ljava/util/List;Ljava/util/List;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v3, p1, Lcom/narvii/model/Community;->agent:Lcom/narvii/model/User;

    iget-object v4, p0, Lcom/narvii/model/Community;->agent:Lcom/narvii/model/User;

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->compareLenientObject(Lcom/narvii/util/LenientObject;Lcom/narvii/util/LenientObject;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object p1, p1, Lcom/narvii/model/Community;->influencerList:Ljava/util/List;

    iget-object v3, p0, Lcom/narvii/model/Community;->influencerList:Ljava/util/List;

    invoke-static {p1, v3}, Lcom/narvii/util/Utils;->compareLenientObjectList(Ljava/util/List;Ljava/util/List;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    .line 117
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return p1

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lcom/narvii/model/Community;->checkEqual(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getCommunityStyle()Lcom/narvii/model/CommunityStyle;
    .locals 4

    .line 261
    iget-object v0, p0, Lcom/narvii/model/Community;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "communityStyle"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 266
    :cond_0
    :try_start_0
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v3, Lcom/narvii/model/CommunityStyle;

    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/CommunityStyle;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method public getInfluencer()Lcom/narvii/model/User;
    .locals 4

    .line 279
    iget-object v0, p0, Lcom/narvii/model/Community;->influencerList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/Community;->influencerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/User;

    if-nez v2, :cond_2

    goto :goto_0

    .line 286
    :cond_2
    invoke-virtual {v2}, Lcom/narvii/model/User;->isPinnedInfluencer()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_3
    :goto_1
    return-object v1
.end method

.method public getLaunchImage()Lcom/narvii/model/Media;
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/narvii/model/Community;->promotionalMediaList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/narvii/model/Community;->promotionalMediaList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMemberCount()Ljava/lang/String;
    .locals 6

    .line 227
    iget v0, p0, Lcom/narvii/model/Community;->membersCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 228
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$string;->member_1:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 232
    :try_start_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    iget v3, p0, Lcom/narvii/model/Community;->membersCount:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v3

    sget v4, Lcom/narvii/lib/R$string;->members_n:I

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v2

    sget v3, Lcom/narvii/lib/R$string;->members_n:I

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/narvii/model/Community;->membersCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getStrategyInfo()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/narvii/model/Community;->strategyInfo:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 91
    iget v0, p0, Lcom/narvii/model/Community;->id:I

    const v1, 0x342f88e

    xor-int/2addr v0, v1

    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNormalPartEqual(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 127
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/model/Community;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 131
    :cond_1
    instance-of v2, p1, Lcom/narvii/model/Community;

    if-eqz v2, :cond_2

    .line 132
    check-cast p1, Lcom/narvii/model/Community;

    .line 133
    iget v2, p1, Lcom/narvii/model/Community;->id:I

    iget v3, p0, Lcom/narvii/model/Community;->id:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/narvii/model/Community;->status:I

    iget v3, p0, Lcom/narvii/model/Community;->status:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/narvii/model/Community;->joinType:I

    iget v3, p0, Lcom/narvii/model/Community;->joinType:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/narvii/model/Community;->listedStatus:I

    iget v3, p0, Lcom/narvii/model/Community;->listedStatus:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/narvii/model/Community;->probationStatus:I

    iget v3, p0, Lcom/narvii/model/Community;->probationStatus:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p1, Lcom/narvii/model/Community;->isStandaloneAppDeprecated:Z

    iget-boolean v3, p0, Lcom/narvii/model/Community;->isStandaloneAppDeprecated:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 139
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/narvii/model/Community;->themePack:Lcom/narvii/model/ThemePack;

    iget-object v3, p0, Lcom/narvii/model/Community;->themePack:Lcom/narvii/model/ThemePack;

    .line 140
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/narvii/model/Community;->primaryLanguage:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/model/Community;->primaryLanguage:Ljava/lang/String;

    .line 141
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/narvii/model/Community;->modifiedTime:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/model/Community;->modifiedTime:Ljava/lang/String;

    .line 142
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/narvii/model/Community;->createdTime:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/model/Community;->createdTime:Ljava/lang/String;

    .line 143
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/narvii/model/Community;->content:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/model/Community;->content:Ljava/lang/String;

    .line 144
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/narvii/model/Community;->userAddedTopicList:Ljava/util/List;

    iget-object v3, p0, Lcom/narvii/model/Community;->userAddedTopicList:Ljava/util/List;

    .line 145
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p1, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget-object v2, p0, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 146
    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public objectType()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public objectTypeName()Ljava/lang/String;
    .locals 1

    const-string v0, "community"

    return-object v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setStrategyInfo(Ljava/lang/String;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/narvii/model/Community;->strategyInfo:Ljava/lang/String;

    return-void
.end method

.method public shouldShowLock()Z
    .locals 1

    .line 257
    iget v0, p0, Lcom/narvii/model/Community;->joinType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public status()I
    .locals 1

    .line 187
    iget v0, p0, Lcom/narvii/model/Community;->status:I

    return v0
.end method

.method public themeColor()I
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/narvii/model/Community;->themePack:Lcom/narvii/model/ThemePack;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/narvii/model/ThemePack;->themeColor:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$color;->color_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 218
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/narvii/model/Community;->themePack:Lcom/narvii/model/ThemePack;

    iget-object v0, v0, Lcom/narvii/model/ThemePack;->themeColor:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/StringUtils;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 220
    :catch_0
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$color;->color_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 212
    :cond_2
    :goto_0
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$color;->color_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public themePackRevision()I
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/narvii/model/Community;->themePack:Lcom/narvii/model/ThemePack;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/narvii/model/ThemePack;->themePackRevision:I

    :goto_0
    return v0
.end method

.method public themePackUrl()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/narvii/model/Community;->themePack:Lcom/narvii/model/ThemePack;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/narvii/model/ThemePack;->themePackUrl:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
