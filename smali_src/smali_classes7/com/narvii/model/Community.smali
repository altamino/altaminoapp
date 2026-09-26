.class public Lcom/narvii/model/Community;
.super Lcom/narvii/model/NVObject;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public checkEqual(Ljava/lang/Object;)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/model/Community;->isNormalPartEqual(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 p1, 0x2

    .line 8
    return p1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/model/Community;->checkLenientPart(Ljava/lang/Object;)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public checkLenientPart(Ljava/lang/Object;)I
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 7
    move-result v1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/model/Community;->hashCode()I

    .line 11
    move-result v2

    .line 12
    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    .line 17
    if-ne p1, p0, :cond_1

    .line 18
    return v1

    .line 19
    .line 20
    :cond_1
    instance-of v2, p1, Lcom/narvii/model/Community;

    .line 21
    .line 22
    if-eqz v2, :cond_4

    .line 23
    .line 24
    check-cast p1, Lcom/narvii/model/Community;

    .line 25
    .line 26
    new-instance v2, Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    iget-object v3, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v4, p0, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->compareLenientObject(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    move-result v3

    .line 38
    .line 39
    .line 40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    .line 44
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    iget-object v3, p1, Lcom/narvii/model/Community;->promotionalMediaList:Ljava/util/List;

    .line 47
    .line 48
    iget-object v4, p0, Lcom/narvii/model/Community;->promotionalMediaList:Ljava/util/List;

    .line 49
    .line 50
    .line 51
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->compareLenientObjectList(Ljava/util/List;Ljava/util/List;)I

    .line 52
    move-result v3

    .line 53
    .line 54
    .line 55
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v3

    .line 57
    .line 58
    .line 59
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    iget-object v3, p1, Lcom/narvii/model/Community;->mediaList:Ljava/util/List;

    .line 62
    .line 63
    iget-object v4, p0, Lcom/narvii/model/Community;->mediaList:Ljava/util/List;

    .line 64
    .line 65
    .line 66
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->compareLenientObjectList(Ljava/util/List;Ljava/util/List;)I

    .line 67
    move-result v3

    .line 68
    .line 69
    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v3

    .line 72
    .line 73
    .line 74
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    iget-object v3, p1, Lcom/narvii/model/Community;->agent:Lcom/narvii/model/User;

    .line 77
    .line 78
    iget-object v4, p0, Lcom/narvii/model/Community;->agent:Lcom/narvii/model/User;

    .line 79
    .line 80
    .line 81
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->compareLenientObject(Lcom/narvii/util/LenientObject;Lcom/narvii/util/LenientObject;)I

    .line 82
    move-result v3

    .line 83
    .line 84
    .line 85
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object v3

    .line 87
    .line 88
    .line 89
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    iget-object p1, p1, Lcom/narvii/model/Community;->influencerList:Ljava/util/List;

    .line 92
    .line 93
    iget-object v3, p0, Lcom/narvii/model/Community;->influencerList:Ljava/util/List;

    .line 94
    .line 95
    .line 96
    invoke-static {p1, v3}, Lcom/narvii/util/Utils;->compareLenientObjectList(Ljava/util/List;Ljava/util/List;)I

    .line 97
    move-result p1

    .line 98
    .line 99
    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    .line 104
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    .line 111
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 112
    move-result p1

    .line 113
    .line 114
    if-eqz p1, :cond_2

    .line 115
    return v0

    .line 116
    :cond_2
    const/4 p1, 0x1

    .line 117
    .line 118
    .line 119
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    .line 123
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 124
    move-result v0

    .line 125
    .line 126
    if-eqz v0, :cond_3

    .line 127
    return p1

    .line 128
    :cond_3
    return v1

    .line 129
    :cond_4
    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/model/Community;->checkEqual(Ljava/lang/Object;)I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public getCommunityStyle()Lcom/narvii/model/CommunityStyle;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Community;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    const-string v1, "communityStyle"

    .line 5
    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    return-object v1

    .line 17
    .line 18
    :cond_0
    :try_start_0
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 19
    .line 20
    const-class v3, Lcom/narvii/model/CommunityStyle;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Lcom/narvii/model/CommunityStyle;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return-object v0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    return-object v1
.end method

.method public getInfluencer()Lcom/narvii/model/User;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Community;->influencerList:Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    goto :goto_1

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/Community;->influencerList:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    check-cast v2, Lcom/narvii/model/User;

    .line 31
    .line 32
    if-nez v2, :cond_2

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-virtual {v2}, Lcom/narvii/model/User;->isPinnedInfluencer()Z

    .line 37
    move-result v3

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    return-object v2

    .line 41
    :cond_3
    :goto_1
    return-object v1
.end method

.method public getLaunchImage()Lcom/narvii/model/Media;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Community;->promotionalMediaList:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/model/Community;->promotionalMediaList:Ljava/util/List;

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/model/Media;

    .line 20
    return-object v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return-object v0
.end method

.method public getMemberCount()Ljava/lang/String;
    .locals 6

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/model/Community;->membersCount:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sget v1, Lcom/narvii/lib/R$string;->member_1:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    .line 19
    :try_start_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    iget v3, p0, Lcom/narvii/model/Community;->membersCount:I

    .line 26
    int-to-long v3, v3

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    sget v4, Lcom/narvii/lib/R$string;->members_n:I

    .line 37
    .line 38
    new-array v5, v1, [Ljava/lang/Object;

    .line 39
    .line 40
    aput-object v2, v5, v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :catch_0
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    sget v3, Lcom/narvii/lib/R$string;->members_n:I

    .line 52
    .line 53
    new-array v1, v1, [Ljava/lang/Object;

    .line 54
    .line 55
    iget v4, p0, Lcom/narvii/model/Community;->membersCount:I

    .line 56
    .line 57
    .line 58
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 59
    move-result-object v4

    .line 60
    .line 61
    aput-object v4, v1, v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    :goto_0
    return-object v0
.end method

.method public getStrategyInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/Community;->strategyInfo:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    const v0, 0x342f88e

    iget v1, p0, Lcom/narvii/model/Community;->id:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v1, p0, Lcom/narvii/model/Community;->id:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public isNormalPartEqual(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 7
    move-result v1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/model/Community;->hashCode()I

    .line 11
    move-result v2

    .line 12
    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x1

    .line 17
    .line 18
    if-ne p1, p0, :cond_1

    .line 19
    return v1

    .line 20
    .line 21
    :cond_1
    instance-of v2, p1, Lcom/narvii/model/Community;

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/model/Community;

    .line 26
    .line 27
    iget v2, p1, Lcom/narvii/model/Community;->id:I

    .line 28
    .line 29
    iget v3, p0, Lcom/narvii/model/Community;->id:I

    .line 30
    .line 31
    if-ne v2, v3, :cond_2

    .line 32
    .line 33
    iget v2, p1, Lcom/narvii/model/Community;->status:I

    .line 34
    .line 35
    iget v3, p0, Lcom/narvii/model/Community;->status:I

    .line 36
    .line 37
    if-ne v2, v3, :cond_2

    .line 38
    .line 39
    iget v2, p1, Lcom/narvii/model/Community;->joinType:I

    .line 40
    .line 41
    iget v3, p0, Lcom/narvii/model/Community;->joinType:I

    .line 42
    .line 43
    if-ne v2, v3, :cond_2

    .line 44
    .line 45
    iget v2, p1, Lcom/narvii/model/Community;->listedStatus:I

    .line 46
    .line 47
    iget v3, p0, Lcom/narvii/model/Community;->listedStatus:I

    .line 48
    .line 49
    if-ne v2, v3, :cond_2

    .line 50
    .line 51
    iget v2, p1, Lcom/narvii/model/Community;->probationStatus:I

    .line 52
    .line 53
    iget v3, p0, Lcom/narvii/model/Community;->probationStatus:I

    .line 54
    .line 55
    if-ne v2, v3, :cond_2

    .line 56
    .line 57
    iget-boolean v2, p1, Lcom/narvii/model/Community;->isStandaloneAppDeprecated:Z

    .line 58
    .line 59
    iget-boolean v3, p0, Lcom/narvii/model/Community;->isStandaloneAppDeprecated:Z

    .line 60
    .line 61
    if-ne v2, v3, :cond_2

    .line 62
    .line 63
    iget-object v2, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v3, p0, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    move-result v2

    .line 70
    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    iget-object v2, p1, Lcom/narvii/model/Community;->themePack:Lcom/narvii/model/ThemePack;

    .line 74
    .line 75
    iget-object v3, p0, Lcom/narvii/model/Community;->themePack:Lcom/narvii/model/ThemePack;

    .line 76
    .line 77
    .line 78
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    move-result v2

    .line 80
    .line 81
    if-eqz v2, :cond_2

    .line 82
    .line 83
    iget-object v2, p1, Lcom/narvii/model/Community;->primaryLanguage:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v3, p0, Lcom/narvii/model/Community;->primaryLanguage:Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    move-result v2

    .line 90
    .line 91
    if-eqz v2, :cond_2

    .line 92
    .line 93
    iget-object v2, p1, Lcom/narvii/model/Community;->modifiedTime:Ljava/lang/String;

    .line 94
    .line 95
    iget-object v3, p0, Lcom/narvii/model/Community;->modifiedTime:Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    move-result v2

    .line 100
    .line 101
    if-eqz v2, :cond_2

    .line 102
    .line 103
    iget-object v2, p1, Lcom/narvii/model/Community;->createdTime:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v3, p0, Lcom/narvii/model/Community;->createdTime:Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    move-result v2

    .line 110
    .line 111
    if-eqz v2, :cond_2

    .line 112
    .line 113
    iget-object v2, p1, Lcom/narvii/model/Community;->content:Ljava/lang/String;

    .line 114
    .line 115
    iget-object v3, p0, Lcom/narvii/model/Community;->content:Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    move-result v2

    .line 120
    .line 121
    if-eqz v2, :cond_2

    .line 122
    .line 123
    iget-object v2, p1, Lcom/narvii/model/Community;->userAddedTopicList:Ljava/util/List;

    .line 124
    .line 125
    iget-object v3, p0, Lcom/narvii/model/Community;->userAddedTopicList:Ljava/util/List;

    .line 126
    .line 127
    .line 128
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    .line 129
    move-result v2

    .line 130
    .line 131
    if-eqz v2, :cond_2

    .line 132
    .line 133
    iget-object p1, p1, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 134
    .line 135
    iget-object v2, p0, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 136
    .line 137
    .line 138
    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    move-result p1

    .line 140
    .line 141
    if-eqz p1, :cond_2

    .line 142
    move v0, v1

    .line 143
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

    iput-object p1, p0, Lcom/narvii/model/Community;->strategyInfo:Ljava/lang/String;

    return-void
.end method

.method public shouldShowLock()Z
    .locals 1

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

    iget v0, p0, Lcom/narvii/model/Community;->status:I

    return v0
.end method

.method public themeColor()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Community;->themePack:Lcom/narvii/model/ThemePack;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/model/ThemePack;->themeColor:Ljava/lang/String;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    sget v1, Lcom/narvii/lib/R$color;->color_default:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 29
    move-result v0

    .line 30
    return v0

    .line 31
    .line 32
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/narvii/model/Community;->themePack:Lcom/narvii/model/ThemePack;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/narvii/model/ThemePack;->themeColor:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/narvii/util/StringUtils;->parseColor(Ljava/lang/String;)I

    .line 38
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return v0

    .line 40
    .line 41
    .line 42
    :catch_0
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    sget v1, Lcom/narvii/lib/R$color;->color_default:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 53
    move-result v0

    .line 54
    return v0

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    sget v1, Lcom/narvii/lib/R$color;->color_default:I

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 68
    move-result v0

    .line 69
    return v0
.end method

.method public themePackRevision()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Community;->themePack:Lcom/narvii/model/ThemePack;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    iget v0, v0, Lcom/narvii/model/ThemePack;->themePackRevision:I

    .line 9
    :goto_0
    return v0
.end method

.method public themePackUrl()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Community;->themePack:Lcom/narvii/model/ThemePack;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    iget-object v0, v0, Lcom/narvii/model/ThemePack;->themePackUrl:Ljava/lang/String;

    .line 9
    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    iget v1, p0, Lcom/narvii/model/Community;->id:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, ": "

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
