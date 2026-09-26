.class public Lcom/narvii/model/Blog;
.super Lcom/narvii/model/Feed;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/model/RefHost;
.implements Lcom/narvii/util/FeedBriefContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/model/Blog$BlogDeserializer;
    }
.end annotation


# static fields
.field public static final KEY_DEFAULT_STORY_TOPIC:Ljava/lang/String; = "default_story_topic"

.field public static final TYPE_CROSSPOST:I = 0x1

.field public static final TYPE_EXTERNAL_POST:I = 0x8

.field public static final TYPE_IMAGE:I = 0x7

.field public static final TYPE_LINK:I = 0x5

.field public static final TYPE_NORMAL:I = 0x0

.field public static final TYPE_POLL:I = 0x4

.field public static final TYPE_QA:I = 0x3

.field public static final TYPE_QUIZ:I = 0x6

.field public static final TYPE_REPOST:I = 0x2


# instance fields
.field public blogId:Ljava/lang/String;

.field public credits:Ljava/lang/String;

.field public currentWindowIndex:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field public endTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public externalSource:Lcom/narvii/model/ExternalSource;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/ExternalSource;
    .end annotation
.end field

.field public isGlobalAnnouncement:Z

.field public polloptList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/PollOption;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/PollOption;",
            ">;"
        }
    .end annotation
.end field

.field public promotedTopic:Lcom/narvii/model/story/StoryTopic;

.field public publishToGlobal:I

.field public quizQuestionList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/QuizQuestion;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/QuizQuestion;",
            ">;"
        }
    .end annotation
.end field

.field public quizResultOfCurrentUser:Lcom/narvii/model/CurrentQuizzesResult;

.field public refObject:Lcom/narvii/model/Feed;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/model/Feed$FeedDeserializer;
    .end annotation
.end field

.field public refObjectId:Ljava/lang/String;

.field public refObjectType:I

.field public sceneList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/Scene;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Scene;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;

.field public totalPollVoteCount:I

.field public totalQuizPlayCount:I

.field public type:I

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

.field public widgetDisplayInterval:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/Feed;-><init>()V

    .line 4
    return-void
.end method

.method private pageSnippet()Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    return-object v2

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    return-object v2

    .line 17
    .line 18
    .line 19
    :cond_1
    const-string/jumbo v1, "pageSnippet"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method


# virtual methods
.method public containsPollOrQuiz()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public containsScenePoll()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public containsSceneQuiz()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public content()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    return-object v0
.end method

.method public firstMedia()Lcom/narvii/model/Media;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->getLinkSummaryMedia()Lcom/narvii/model/Media;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    return-object v1

    .line 14
    .line 15
    :cond_0
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    .line 23
    move-result-object v0

    .line 24
    :cond_1
    return-object v0
.end method

.method public firstMediaIncludePromote()Lcom/narvii/model/Media;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->getPromoteInfo()Lcom/narvii/model/PromoteInfo;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v1, v0, Lcom/narvii/model/PromoteInfo;->mediaList:Ljava/util/List;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 14
    move-result v1

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object v0, v0, Lcom/narvii/model/PromoteInfo;->mediaList:Ljava/util/List;

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Lcom/narvii/model/Media;

    .line 27
    return-object v0

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->firstMedia()Lcom/narvii/model/Media;

    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method public getBriefContent()Lcom/narvii/model/Feed;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/model/Blog;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/model/Blog;-><init>()V

    .line 6
    .line 7
    iget v1, p0, Lcom/narvii/model/Feed;->ndcId:I

    .line 8
    .line 9
    iput v1, v0, Lcom/narvii/model/Feed;->ndcId:I

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v1, v0, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v1, v0, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v1, v0, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    const/4 v1, 0x0

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    check-cast v1, Lcom/narvii/model/User;

    .line 34
    .line 35
    :goto_0
    iput-object v1, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 36
    .line 37
    iget v1, p0, Lcom/narvii/model/Blog;->type:I

    .line 38
    .line 39
    iput v1, v0, Lcom/narvii/model/Blog;->type:I

    .line 40
    return-object v0
.end method

.method public getCommunityBlogId()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/model/Blog;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/model/Blog;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    .line 14
    :goto_0
    return-object v0
.end method

.method public getDisplayNickname(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/model/Blog;->externalSource:Lcom/narvii/model/ExternalSource;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/narvii/model/ExternalSource;->getFeedShowTitle(Landroid/content/Context;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    const/4 p1, 0x0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    :goto_0
    return-object p1
.end method

.method public getExternalOriginDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/model/Blog;->externalSource:Lcom/narvii/model/ExternalSource;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/narvii/model/ExternalSource;->getOriginDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method public getExtraCoverMedia()Lcom/narvii/model/Media;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "style"

    .line 6
    .line 7
    const-string v2, "coverMediaList"

    .line 8
    .line 9
    .line 10
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    return-object v1

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    .line 23
    move-result v2

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    :try_start_0
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 28
    .line 29
    const-class v3, [Lcom/narvii/model/Media;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    check-cast v0, [Lcom/narvii/model/Media;

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    return-object v1

    .line 39
    :cond_1
    array-length v2, v0

    .line 40
    .line 41
    if-lez v2, :cond_2

    .line 42
    const/4 v2, 0x0

    .line 43
    .line 44
    aget-object v0, v0, v2
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    return-object v0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    :cond_2
    return-object v1
.end method

.method public getFeedPreviewMediaList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/model/Feed;->getFeedPreviewMediaList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getLinkSummary()Lcom/narvii/model/LinkSummary;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/Blog;->pageSnippet()Lcom/fasterxml/jackson/databind/JsonNode;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-class v1, Lcom/narvii/model/LinkSummary;

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/model/LinkSummary;

    .line 21
    return-object v0
.end method

.method public getLinkSummaryMedia()Lcom/narvii/model/Media;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v1, v0, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object v0, v0, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Lcom/narvii/model/Media;

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 29
    :goto_1
    return-object v0
.end method

.method public getLinkedBlogId()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    const-string/jumbo v1, "promotedTo"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_1
    const-string v0, ""

    .line 23
    :goto_0
    return-object v0
.end method

.method public getPreviewVideoList(Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/model/Feed;->getPreviewVideoList(Z)Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getPrivilegeOfCommentOnPost()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "privilegeOfCommentOnPost"

    .line 6
    .line 7
    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public getPromotedTopic()Lcom/narvii/model/story/StoryTopic;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/Blog;->promotedTopic:Lcom/narvii/model/story/StoryTopic;

    return-object v0
.end method

.method public getPublishNdcId()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, v0, Lcom/narvii/model/Feed;->ndcId:I

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->getNdcId()I

    .line 11
    move-result v0

    .line 12
    :goto_0
    return v0
.end method

.method public getQuizPlayedTimes()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "quizPlayedTimes"

    .line 6
    .line 7
    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public getQuizQuestionCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "quizTotalQuestionCount"

    .line 6
    .line 7
    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public getRealFeed()Lcom/narvii/model/Feed;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lcom/narvii/model/Feed;->getRealFeed()Lcom/narvii/model/Feed;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public getShowContent()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    .line 3
    const/4 v1, 0x5

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getBody()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getBody()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getBody()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    return-object v0

    .line 57
    .line 58
    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    move-result v0

    .line 65
    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    move-result v0

    .line 79
    .line 80
    if-nez v0, :cond_1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    return-object v0

    .line 86
    .line 87
    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getLink()Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 100
    goto :goto_0

    .line 101
    :cond_2
    const/4 v0, 0x0

    .line 102
    :goto_0
    return-object v0
.end method

.method public getShowTitle()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    .line 11
    const/4 v1, 0x5

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getTitle()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getTitle()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    return-object v0

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-super {p0}, Lcom/narvii/model/Feed;->getShowTitle()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method

.method public getSortedMediaList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/model/Feed;->getSortedMediaList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v1

    .line 11
    .line 12
    if-lez v1, :cond_0

    .line 13
    return-object v0

    .line 14
    .line 15
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    iget v1, p0, Lcom/narvii/model/Blog;->type:I

    .line 21
    const/4 v2, 0x5

    .line 22
    .line 23
    if-ne v1, v2, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-object v1, v1, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41
    :cond_1
    return-object v0
.end method

.method public getStoryLinkSummary()Lcom/narvii/model/LinkSummary;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "pageSnippet"

    .line 6
    .line 7
    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    return-object v1

    .line 18
    .line 19
    :cond_0
    :try_start_0
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 20
    .line 21
    const-class v3, Lcom/narvii/model/LinkSummary;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Lcom/narvii/model/LinkSummary;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return-object v0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    return-object v1
.end method

.method public getStoryPollCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStoryQuizCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStrategyInfo()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/model/StrategyObject;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/model/Feed;->strategyInfo:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return-object v0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0}, Lcom/narvii/model/Feed;->getStrategyInfo()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getTotalCommentsCount()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/model/Feed;->getTotalCommentsCount()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getTotalVotesCount()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    return-object v0
.end method

.method public invisibleBecauseOfClosed()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x3

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget v0, v0, Lcom/narvii/model/Feed;->status:I

    .line 10
    .line 11
    if-ne v0, v3, :cond_0

    .line 12
    move v1, v2

    .line 13
    :cond_0
    return v1

    .line 14
    .line 15
    :cond_1
    iget v0, p0, Lcom/narvii/model/Feed;->status:I

    .line 16
    .line 17
    if-ne v0, v3, :cond_2

    .line 18
    move v1, v2

    .line 19
    :cond_2
    return v1
.end method

.method public invisibleBecauseOfDeleted()Z
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->invisibleBecauseOfDeleted()Z

    .line 13
    move-result v0

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v2, 0x2

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    if-ne v0, v2, :cond_3

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 21
    .line 22
    if-eqz v2, :cond_3

    .line 23
    .line 24
    .line 25
    invoke-super {p0}, Lcom/narvii/model/NVObject;->invisibleBecauseOfDeleted()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->invisibleBecauseOfDeleted()Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v1, v3

    .line 39
    :cond_2
    :goto_0
    return v1

    .line 40
    .line 41
    :cond_3
    const/16 v2, 0x8

    .line 42
    .line 43
    if-ne v0, v2, :cond_6

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/model/Blog;->externalSource:Lcom/narvii/model/ExternalSource;

    .line 46
    .line 47
    if-eqz v0, :cond_6

    .line 48
    .line 49
    .line 50
    invoke-super {p0}, Lcom/narvii/model/NVObject;->invisibleBecauseOfDeleted()Z

    .line 51
    move-result v0

    .line 52
    .line 53
    if-nez v0, :cond_5

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/model/Blog;->externalSource:Lcom/narvii/model/ExternalSource;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->invisibleBecauseOfDeleted()Z

    .line 59
    move-result v0

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    goto :goto_1

    .line 63
    :cond_4
    move v1, v3

    .line 64
    :cond_5
    :goto_1
    return v1

    .line 65
    .line 66
    .line 67
    :cond_6
    invoke-super {p0}, Lcom/narvii/model/NVObject;->invisibleBecauseOfDeleted()Z

    .line 68
    move-result v0

    .line 69
    return v0
.end method

.method public isAccessibleByUser(Lcom/narvii/model/User;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->invisibleBecauseOfClosed()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    .line 11
    const/4 v2, 0x1

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    iget-object v3, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 16
    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, p1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_1
    const/4 v3, 0x2

    .line 24
    .line 25
    if-ne v0, v3, :cond_5

    .line 26
    .line 27
    iget-object v3, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 28
    .line 29
    if-eqz v3, :cond_5

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->uid()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    iget-object v3, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-super {p0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 47
    move-result p1

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->invisibleBecauseOfDeleted()Z

    .line 55
    move-result p1

    .line 56
    .line 57
    if-nez p1, :cond_2

    .line 58
    move v1, v2

    .line 59
    :cond_2
    return v1

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-super {p0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 63
    move-result v0

    .line 64
    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    iget-object v0, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 71
    move-result p1

    .line 72
    .line 73
    if-eqz p1, :cond_4

    .line 74
    move v1, v2

    .line 75
    :cond_4
    return v1

    .line 76
    .line 77
    :cond_5
    const/16 v3, 0x8

    .line 78
    .line 79
    if-ne v0, v3, :cond_7

    .line 80
    .line 81
    iget-object v0, p0, Lcom/narvii/model/Blog;->externalSource:Lcom/narvii/model/ExternalSource;

    .line 82
    .line 83
    if-eqz v0, :cond_7

    .line 84
    .line 85
    .line 86
    invoke-super {p0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 87
    move-result v0

    .line 88
    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    iget-object v0, p0, Lcom/narvii/model/Blog;->externalSource:Lcom/narvii/model/ExternalSource;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, p1}, Lcom/narvii/model/ExternalSource;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 95
    move-result p1

    .line 96
    .line 97
    if-eqz p1, :cond_6

    .line 98
    move v1, v2

    .line 99
    :cond_6
    return v1

    .line 100
    .line 101
    .line 102
    :cond_7
    invoke-super {p0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 103
    move-result p1

    .line 104
    return p1
.end method

.method public isAccessibleByUserIgnoreRefObject(Lcom/narvii/model/User;)Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/model/Blog;->externalSource:Lcom/narvii/model/ExternalSource;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/model/Blog;->externalSource:Lcom/narvii/model/ExternalSource;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/narvii/model/ExternalSource;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 22
    move-result p1

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    return p1

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method public isGlobalAnnouncement()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/model/Blog;->isGlobalAnnouncement:Z

    return v0
.end method

.method public isInBestQuiz()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "quizInBestQuizzes"

    .line 6
    .line 7
    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public isPollEnded()Z
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/Blog;->endTime:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPollVoted()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/model/PollOption;

    .line 21
    .line 22
    iget v1, v1, Lcom/narvii/model/PollOption;->votedValue:I

    .line 23
    .line 24
    if-lez v1, :cond_0

    .line 25
    const/4 v0, 0x1

    .line 26
    return v0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    return v0
.end method

.method public isiModeDisableForUser(Lcom/narvii/model/User;)Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/narvii/model/Feed;->isiModeDisableForUser(Lcom/narvii/model/User;)Z

    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/model/Feed;->isiModeDisableForUser(Lcom/narvii/model/User;)Z

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public isknownType()Z
    .locals 2

    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public objectType()I
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/model/Blog;->isGlobalAnnouncement:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x83

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public refId()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    :goto_0
    return-object v0
.end method

.method public setLinkedBlogId(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 20
    .line 21
    .line 22
    const-string/jumbo v1, "promotedTo"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 26
    return-void
.end method

.method public setStrategyInfo(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/model/Feed;->setStrategyInfo(Ljava/lang/String;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/model/Feed;->setStrategyInfo(Ljava/lang/String;)V

    .line 11
    :cond_0
    return-void
.end method

.method public shouldShowWebPreview()Z
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    return v2

    .line 9
    :cond_0
    const/4 v1, 0x5

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    const-string v1, "News Feed"

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    return v2

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    return v0
.end method

.method public status()I
    .locals 1

    iget v0, p0, Lcom/narvii/model/Feed;->status:I

    return v0
.end method

.method public title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    return-object v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

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
    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 9
    :goto_0
    return-object v0
.end method

.method public updatePollOptions(Lcom/narvii/model/PollOption;Z)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    .line 17
    :goto_0
    iget-object v1, p0, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 21
    move-result v1

    .line 22
    .line 23
    if-ge v0, v1, :cond_3

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    check-cast v1, Lcom/narvii/model/PollOption;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget-object v1, v1, Lcom/narvii/model/PollOption;->polloptId:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v2, p1, Lcom/narvii/model/PollOption;->polloptId:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 41
    move-result v1

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    goto :goto_1

    .line 45
    .line 46
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    const/4 v0, -0x1

    .line 49
    .line 50
    :goto_1
    if-ltz v0, :cond_4

    .line 51
    .line 52
    iget-object v1, p0, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    .line 53
    .line 54
    .line 55
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 56
    .line 57
    :cond_4
    if-eqz p2, :cond_6

    .line 58
    .line 59
    if-ltz v0, :cond_5

    .line 60
    .line 61
    iget-object p2, p0, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    .line 62
    .line 63
    .line 64
    invoke-interface {p2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 65
    goto :goto_2

    .line 66
    .line 67
    :cond_5
    iget-object p2, p0, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    .line 68
    .line 69
    .line 70
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_6
    :goto_2
    return-void
.end method
