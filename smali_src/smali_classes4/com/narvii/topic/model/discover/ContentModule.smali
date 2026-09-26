.class public Lcom/narvii/topic/model/discover/ContentModule;
.super Lcom/narvii/model/NVObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/topic/model/discover/ContentModule$TYPE;,
        Lcom/narvii/topic/model/discover/ContentModule$STYLE;
    }
.end annotation


# static fields
.field public static final STYLE_BANNER_SIZE_MEDIUM:Ljava/lang/String; = "BannerSizeMedium"

.field public static final STYLE_BANNER_SIZE_TOP:Ljava/lang/String; = "BannerSizeTop"

.field public static final STYLE_COMMUNITY_THUMBNAIL_LINE:Ljava/lang/String; = "CommunityThumbnailLine"

.field public static final STYLE_CREATE_COMMUNITY_BUTTON:Ljava/lang/String; = "CreateCommunityButton"

.field public static final STYLE_DISCOVER_TOPICS_BUTTON:Ljava/lang/String; = "DiscoverTopicsButton"

.field public static final STYLE_GENERAL_CHAT_CARD:Ljava/lang/String; = "GeneralChatCard"

.field public static final STYLE_GENERAL_COMMUNITY_CARD:Ljava/lang/String; = "GeneralCommunityCard"

.field public static final STYLE_GENERAL_TOPIC_CARD:Ljava/lang/String; = "GeneralTopicCard"

.field public static final STYLE_GRID_COMMUNITY_CARD:Ljava/lang/String; = "GridCommunityCard"

.field public static final STYLE_GRID_TOPIC_CARD:Ljava/lang/String; = "GridTopicCard"

.field public static final STYLE_HEADERLINE_POST:Ljava/lang/String; = "HeadlinePost"

.field public static final TYPE_BOOKMARKED_TOPICS:Ljava/lang/String; = "BookmarkedTopics"

.field public static final TYPE_CUSTOMIZED_BANNER_ADS:Ljava/lang/String; = "CustomizedBannerAds"

.field public static final TYPE_CUSTOMIZED_POST_FEED:Ljava/lang/String; = "CustomizedPostFeed"

.field public static final TYPE_FEATURE_TOPIC:Ljava/lang/String; = "FeaturedTopics"

.field public static final TYPE_INTEREST_BASED_POPULAR_STORIES:Ljava/lang/String; = "InterestBasedPopularStories"

.field public static final TYPE_INTEREST_RECOMMENDED_QUIZZES:Ljava/lang/String; = "InterestRecommendedQuizzes"

.field public static final TYPE_POPULAR_STORIES:Ljava/lang/String; = "PopularStories"

.field public static final TYPE_RECENT_POPULAR_STORIES:Ljava/lang/String; = "RecentPopularStories"

.field public static final TYPE_RECOMMENDED_COMMUNITIES:Ljava/lang/String; = "RecommendedCommunities"

.field public static final TYPE_RECOMMENDED_STORIES:Ljava/lang/String; = "RecommendedStories"

.field public static final TYPE_TOPIC_BASED_LATEST_STORIES:Ljava/lang/String; = "TopicBasedLatestStories"

.field public static final TYPE_TOPIC_BASED_POPULAR_STORIES:Ljava/lang/String; = "TopicBasedPopularStories"

.field public static final TYPE_TOPIC_BASED_RECOMMENDED_COMMUNITIES:Ljava/lang/String; = "TopicBasedRecommendedCommunities"

.field public static final TYPE_TOPIC_BASED_RECOMMENDED_POLL_STORIES:Ljava/lang/String; = "TopicBasedRecommendedPollStories"

.field public static final TYPE_TOPIC_BASED_RECOMMENDED_QUIZ_STORIES:Ljava/lang/String; = "TopicBasedRecommendedQuizStories"

.field public static final TYPE_TOPIC_BASED_RECOMMENDED_STORIES:Ljava/lang/String; = "TopicBasedRecommendedStories"

.field public static final TYPE_TOPIC_BASED_TRENDING_TOPICS:Ljava/lang/String; = "TopicBasedTrendingTopics"

.field public static final TYPE_TRENDING_TOPIC:Ljava/lang/String; = "TrendingTopic"

.field public static final supportedStyle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public contentObjectSubtype:I

.field public contentObjectType:I

.field public contentVariety:I

.field public dataUrl:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field public extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field private interestName:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    .end annotation
.end field

.field private linkedId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    .end annotation
.end field

.field private linkedIntId:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    .end annotation
.end field

.field public linkedObject:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field public linkedObjectType:I

.field public moduleId:Ljava/lang/String;

.field public moduleType:Ljava/lang/String;

.field public style:Ljava/lang/String;

.field public topicLocked:Z

.field public userRemovable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/topic/model/discover/ContentModule;->supportedStyle:Ljava/util/List;

    .line 8
    .line 9
    const-string v1, "GeneralTopicCard"

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    const-string v1, "GridTopicCard"

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    const-string v1, "GeneralCommunityCard"

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    const-string v1, "GeneralChatCard"

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    const-string v1, "BannerSizeMedium"

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    const-string v1, "BannerSizeTop"

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    const-string v1, "DiscoverTopicsButton"

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    const-string v1, "HeadlinePost"

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    const-string v1, "CommunityThumbnailLine"

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    const-string v1, "CreateCommunityButton"

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->linkedIntId:I

    .line 7
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

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
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->hashCode()I

    .line 11
    move-result v2

    .line 12
    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x1

    .line 16
    .line 17
    if-ne p1, p0, :cond_1

    .line 18
    return v1

    .line 19
    .line 20
    :cond_1
    instance-of v2, p1, Lcom/narvii/topic/model/discover/ContentModule;

    .line 21
    .line 22
    if-eqz v2, :cond_3

    .line 23
    .line 24
    check-cast p1, Lcom/narvii/topic/model/discover/ContentModule;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/narvii/topic/model/discover/ContentModule;->moduleId:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v3, p1, Lcom/narvii/topic/model/discover/ContentModule;->moduleId:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    move-result v2

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    iget-object v2, p0, Lcom/narvii/topic/model/discover/ContentModule;->style:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v3, p1, Lcom/narvii/topic/model/discover/ContentModule;->style:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    move-result v2

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    iget-object v2, p0, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    move-result v2

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    iget-object v2, p0, Lcom/narvii/topic/model/discover/ContentModule;->dataUrl:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v3, p1, Lcom/narvii/topic/model/discover/ContentModule;->dataUrl:Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    move-result v2

    .line 63
    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    iget-object v2, p0, Lcom/narvii/topic/model/discover/ContentModule;->displayName:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v3, p1, Lcom/narvii/topic/model/discover/ContentModule;->displayName:Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    move-result v2

    .line 73
    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    iget-boolean v2, p0, Lcom/narvii/topic/model/discover/ContentModule;->userRemovable:Z

    .line 77
    .line 78
    iget-boolean p1, p1, Lcom/narvii/topic/model/discover/ContentModule;->userRemovable:Z

    .line 79
    .line 80
    if-ne v2, p1, :cond_2

    .line 81
    move v0, v1

    .line 82
    :cond_2
    return v0

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 86
    move-result p1

    .line 87
    return p1

    .line 88
    :cond_4
    :goto_0
    return v0
.end method

.method public getDisplayStyle()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->style:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v1, Lcom/narvii/topic/model/discover/ContentModule;->supportedStyle:Ljava/util/List;

    .line 7
    .line 8
    .line 9
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->style:Ljava/lang/String;

    .line 15
    return-object v0

    .line 16
    .line 17
    :cond_0
    iget v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->contentObjectType:I

    .line 18
    .line 19
    const/16 v1, 0x10

    .line 20
    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    const-string v0, "GeneralCommunityCard"

    .line 24
    return-object v0

    .line 25
    .line 26
    :cond_1
    const/16 v1, 0x80

    .line 27
    .line 28
    if-ne v0, v1, :cond_2

    .line 29
    .line 30
    const-string v0, "GeneralTopicCard"

    .line 31
    return-object v0

    .line 32
    .line 33
    :cond_2
    const/16 v1, 0xc

    .line 34
    .line 35
    if-ne v0, v1, :cond_3

    .line 36
    .line 37
    const-string v0, "GeneralChatCard"

    .line 38
    return-object v0

    .line 39
    :cond_3
    const/4 v0, 0x0

    .line 40
    return-object v0
.end method

.method public getInterestId()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->linkedId:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->linkedId:Ljava/lang/String;

    .line 11
    return-object v0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->linkedObject:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 14
    .line 15
    const-string v1, "interestId"

    .line 16
    .line 17
    .line 18
    filled-new-array {v1}, [Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->linkedId:Ljava/lang/String;

    .line 26
    return-object v0
.end method

.method public getInterestName()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->interestName:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->interestName:Ljava/lang/String;

    .line 11
    return-object v0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->linkedObject:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 14
    .line 15
    const-string v1, "name"

    .line 16
    .line 17
    .line 18
    filled-new-array {v1}, [Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->interestName:Ljava/lang/String;

    .line 26
    return-object v0
.end method

.method public getRequestFromModule()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->dataUrl:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/Utils;->getApiRequestFromPath(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTopicId()I
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->linkedIntId:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    return v0

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->linkedObject:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 9
    .line 10
    .line 11
    const-string/jumbo v2, "topicId"

    .line 12
    .line 13
    .line 14
    filled-new-array {v2}, [Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;I[Ljava/lang/String;)I

    .line 19
    move-result v0

    .line 20
    .line 21
    iput v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->linkedIntId:I

    .line 22
    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->moduleId:Ljava/lang/String;

    return-object v0
.end method

.method public isJoinedCommunity()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    const-string v1, "contentTypeJoinedCommunities"

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

.method public isRecommendModule()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "RecommendedStories"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "TopicBasedLatestStories"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    return v0
.end method

.method public objectType()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
