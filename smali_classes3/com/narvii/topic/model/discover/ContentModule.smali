.class public Lcom/narvii/topic/model/discover/ContentModule;
.super Lcom/narvii/model/NVObject;
.source "ContentModule.java"


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

.field public static final STYLE_GENERAL_STORY_CARD:Ljava/lang/String; = "GeneralStoryCard"

.field public static final STYLE_GENERAL_TOPIC_CARD:Ljava/lang/String; = "GeneralTopicCard"

.field public static final STYLE_GRID_COMMUNITY_CARD:Ljava/lang/String; = "GridCommunityCard"

.field public static final STYLE_GRID_TOPIC_CARD:Ljava/lang/String; = "GridTopicCard"

.field public static final STYLE_HEADERLINE_POST:Ljava/lang/String; = "HeadlinePost"

.field public static final STYLE_POLL_STORY_CARD:Ljava/lang/String; = "PollStoryCard"

.field public static final STYLE_QUIZ_STORY_CARD:Ljava/lang/String; = "QuizStoryCard"

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

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/narvii/topic/model/discover/ContentModule;->supportedStyle:Ljava/util/List;

    .line 64
    sget-object v0, Lcom/narvii/topic/model/discover/ContentModule;->supportedStyle:Ljava/util/List;

    const-string v1, "GeneralTopicCard"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/narvii/topic/model/discover/ContentModule;->supportedStyle:Ljava/util/List;

    const-string v1, "GridTopicCard"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/narvii/topic/model/discover/ContentModule;->supportedStyle:Ljava/util/List;

    const-string v1, "GeneralStoryCard"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/narvii/topic/model/discover/ContentModule;->supportedStyle:Ljava/util/List;

    const-string v1, "QuizStoryCard"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/narvii/topic/model/discover/ContentModule;->supportedStyle:Ljava/util/List;

    const-string v1, "PollStoryCard"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/narvii/topic/model/discover/ContentModule;->supportedStyle:Ljava/util/List;

    const-string v1, "GeneralCommunityCard"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/narvii/topic/model/discover/ContentModule;->supportedStyle:Ljava/util/List;

    const-string v1, "GeneralChatCard"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/narvii/topic/model/discover/ContentModule;->supportedStyle:Ljava/util/List;

    const-string v1, "BannerSizeMedium"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/narvii/topic/model/discover/ContentModule;->supportedStyle:Ljava/util/List;

    const-string v1, "BannerSizeTop"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/narvii/topic/model/discover/ContentModule;->supportedStyle:Ljava/util/List;

    const-string v1, "DiscoverTopicsButton"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/narvii/topic/model/discover/ContentModule;->supportedStyle:Ljava/util/List;

    const-string v1, "HeadlinePost"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/narvii/topic/model/discover/ContentModule;->supportedStyle:Ljava/util/List;

    const-string v1, "CommunityThumbnailLine"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/narvii/topic/model/discover/ContentModule;->supportedStyle:Ljava/util/List;

    const-string v1, "CreateCommunityButton"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    const/4 v0, -0x1

    .line 132
    iput v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->linkedIntId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 227
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 234
    :cond_1
    instance-of v2, p1, Lcom/narvii/topic/model/discover/ContentModule;

    if-eqz v2, :cond_3

    .line 235
    check-cast p1, Lcom/narvii/topic/model/discover/ContentModule;

    .line 236
    iget-object v2, p0, Lcom/narvii/topic/model/discover/ContentModule;->moduleId:Ljava/lang/String;

    iget-object v3, p1, Lcom/narvii/topic/model/discover/ContentModule;->moduleId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/narvii/topic/model/discover/ContentModule;->style:Ljava/lang/String;

    iget-object v3, p1, Lcom/narvii/topic/model/discover/ContentModule;->style:Ljava/lang/String;

    .line 237
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    iget-object v3, p1, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    .line 238
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/narvii/topic/model/discover/ContentModule;->dataUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/narvii/topic/model/discover/ContentModule;->dataUrl:Ljava/lang/String;

    .line 239
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/narvii/topic/model/discover/ContentModule;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/narvii/topic/model/discover/ContentModule;->displayName:Ljava/lang/String;

    .line 240
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/narvii/topic/model/discover/ContentModule;->userRemovable:Z

    iget-boolean p1, p1, Lcom/narvii/topic/model/discover/ContentModule;->userRemovable:Z

    if-ne v2, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 244
    :cond_3
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public getDisplayStyle()Ljava/lang/String;
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->style:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/narvii/topic/model/discover/ContentModule;->supportedStyle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->style:Ljava/lang/String;

    return-object v0

    .line 177
    :cond_0
    iget v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->contentObjectType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    const-string v0, "GeneralCommunityCard"

    return-object v0

    :cond_1
    const/16 v1, 0x80

    if-ne v0, v1, :cond_2

    const-string v0, "GeneralTopicCard"

    return-object v0

    :cond_2
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 182
    iget v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->contentObjectSubtype:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    const-string v2, "GeneralStoryCard"

    :cond_3
    return-object v2

    :cond_4
    const/16 v1, 0xc

    if-ne v0, v1, :cond_5

    const-string v0, "GeneralChatCard"

    return-object v0

    :cond_5
    return-object v2
.end method

.method public getInterestId()Ljava/lang/String;
    .locals 4

    .line 190
    iget-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->linkedId:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->linkedId:Ljava/lang/String;

    return-object v0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->linkedObject:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "interestId"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->linkedId:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->linkedId:Ljava/lang/String;

    return-object v0
.end method

.method public getInterestName()Ljava/lang/String;
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->interestName:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->interestName:Ljava/lang/String;

    return-object v0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->linkedObject:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "name"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->interestName:Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->interestName:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestFromModule()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->dataUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/Utils;->getApiRequestFromPath(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getTopicId()I
    .locals 5

    .line 206
    iget v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->linkedIntId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->linkedObject:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "topicId"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;I[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->linkedIntId:I

    .line 210
    iget v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->linkedIntId:I

    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->moduleId:Ljava/lang/String;

    return-object v0
.end method

.method public isJoinedCommunity()Z
    .locals 4

    .line 222
    iget-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "contentTypeJoinedCommunities"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRecommendModule()Z
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    const-string v1, "RecommendedStories"

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    const-string v1, "TopicBasedLatestStories"

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method public isStory()Z
    .locals 2

    .line 218
    iget v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->contentObjectType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isStoryTopic()Z
    .locals 2

    .line 214
    iget v0, p0, Lcom/narvii/topic/model/discover/ContentModule;->linkedObjectType:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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
