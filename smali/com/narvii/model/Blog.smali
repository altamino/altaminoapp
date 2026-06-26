.class public Lcom/narvii/model/Blog;
.super Lcom/narvii/model/Feed;
.source "Blog.java"

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

.field public static final TYPE_STORY:I = 0x9

.field public static final TYPE_STORY_CROSSPOST:I = 0xa


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

    .line 29
    invoke-direct {p0}, Lcom/narvii/model/Feed;-><init>()V

    return-void
.end method

.method public static deserilizeStory(Lcom/narvii/model/Blog;)Lcom/narvii/model/Blog;
    .locals 3

    .line 573
    iget-object v0, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    .line 575
    iget v1, v0, Lcom/narvii/model/Blog;->type:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 576
    iget v1, p0, Lcom/narvii/model/Feed;->ndcId:I

    iput v1, v0, Lcom/narvii/model/Feed;->ndcId:I

    .line 577
    iget-object v1, p0, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    .line 578
    iget-object v1, p0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    iput-object v1, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 579
    iget-object v1, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    iput-object v1, v0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 580
    iget-object p0, p0, Lcom/narvii/model/Feed;->tipInfo:Lcom/narvii/model/TippingInfo;

    iput-object p0, v0, Lcom/narvii/model/Feed;->tipInfo:Lcom/narvii/model/TippingInfo;

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method private pageSnippet()Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 3

    .line 125
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    return-object v1

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const-string/jumbo v1, "pageSnippet"

    .line 131
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public containsPollOrQuiz()Z
    .locals 2

    .line 453
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->isStory()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 454
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Scene;

    .line 455
    invoke-virtual {v1}, Lcom/narvii/model/Scene;->containsPollOrQuiz()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public containsScenePoll()Z
    .locals 2

    .line 488
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->isStory()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 489
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Scene;

    .line 490
    invoke-virtual {v1}, Lcom/narvii/model/Scene;->getPoll()Lcom/narvii/model/PollAttach;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public containsSceneQuiz()Z
    .locals 2

    .line 499
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->isStory()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 500
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Scene;

    .line 501
    invoke-virtual {v1}, Lcom/narvii/model/Scene;->getQuizQuestion()Lcom/narvii/model/QuizQuestion;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public content()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    return-object v0
.end method

.method public firstMedia()Lcom/narvii/model/Media;
    .locals 2

    .line 88
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->getExtraCoverMedia()Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 94
    :cond_0
    invoke-super {p0}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->getLinkSummaryMedia()Lcom/narvii/model/Media;

    move-result-object v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    if-nez v0, :cond_2

    .line 98
    iget-object v1, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public firstMediaIncludePromote()Lcom/narvii/model/Media;
    .locals 2

    .line 110
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->getPromoteInfo()Lcom/narvii/model/PromoteInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v1, v0, Lcom/narvii/model/PromoteInfo;->mediaList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 113
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, v0, Lcom/narvii/model/PromoteInfo;->mediaList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    return-object v0

    .line 114
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v0

    return-object v0
.end method

.method public getBriefContent()Lcom/narvii/model/Feed;
    .locals 3

    .line 664
    new-instance v0, Lcom/narvii/model/Blog;

    invoke-direct {v0}, Lcom/narvii/model/Blog;-><init>()V

    .line 665
    iget v1, p0, Lcom/narvii/model/Feed;->ndcId:I

    iput v1, v0, Lcom/narvii/model/Feed;->ndcId:I

    .line 666
    iget-object v1, p0, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    .line 667
    iget-object v1, p0, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    .line 668
    iget-object v1, p0, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    .line 669
    iget-object v1, p0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    :goto_0
    iput-object v1, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 670
    iget v1, p0, Lcom/narvii/model/Blog;->type:I

    iput v1, v0, Lcom/narvii/model/Blog;->type:I

    .line 671
    iget v1, v0, Lcom/narvii/model/Blog;->type:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 672
    iget-object v1, p0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/narvii/model/Scene;

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    :cond_1
    return-object v0
.end method

.method public getCommunityBlogId()Ljava/lang/String;
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    instance-of v1, v0, Lcom/narvii/model/Blog;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/narvii/model/Blog;

    iget-object v0, v0, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getDisplayNickname(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 381
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/model/Blog;->externalSource:Lcom/narvii/model/ExternalSource;

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {v0, p1}, Lcom/narvii/model/ExternalSource;->getFeedShowTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 384
    :cond_0
    iget-object p1, p0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getExternalOriginDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 389
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/model/Blog;->externalSource:Lcom/narvii/model/ExternalSource;

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v0, p1}, Lcom/narvii/model/ExternalSource;->getOriginDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getExtraCoverMedia()Lcom/narvii/model/Media;
    .locals 5

    .line 360
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "style"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "coverMediaList"

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 364
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 366
    :try_start_0
    sget-object v3, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v4, [Lcom/narvii/model/Media;

    invoke-virtual {v3, v0, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/narvii/model/Media;

    if-nez v0, :cond_1

    return-object v1

    .line 370
    :cond_1
    array-length v3, v0

    if-lez v3, :cond_2

    .line 371
    aget-object v0, v0, v2
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 374
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    return-object v1
.end method

.method public getFeedPreviewMediaList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation

    .line 425
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 426
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->getExtraCoverMedia()Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 428
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->getExtraCoverMedia()Lcom/narvii/model/Media;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 431
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 432
    iget-object v1, p0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Scene;

    iget-object v1, v1, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    if-eqz v1, :cond_1

    .line 433
    iget-object v1, p0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Scene;

    iget-object v1, v1, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0

    .line 437
    :cond_2
    invoke-super {p0}, Lcom/narvii/model/Feed;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLinkSummary()Lcom/narvii/model/LinkSummary;
    .locals 2

    .line 158
    invoke-direct {p0}, Lcom/narvii/model/Blog;->pageSnippet()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 160
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/LinkSummary;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/LinkSummary;

    return-object v0
.end method

.method public getLinkSummaryMedia()Lcom/narvii/model/Media;
    .locals 2

    .line 411
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 412
    iget-object v1, v0, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getLinkedBlogId()Ljava/lang/String;
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string/jumbo v1, "promotedTo"

    .line 143
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getPreviewVideoList(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation

    .line 442
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 443
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 444
    iget-object v0, p0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Scene;

    .line 445
    iget-object v1, v1, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1

    .line 449
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/model/Feed;->getPreviewVideoList(Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPrivilegeOfCommentOnPost()I
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "privilegeOfCommentOnPost"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPromotedTopic()Lcom/narvii/model/story/StoryTopic;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/narvii/model/Blog;->promotedTopic:Lcom/narvii/model/story/StoryTopic;

    return-object v0
.end method

.method public getPublishNdcId()I
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/narvii/model/Feed;->ndcId:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->getNdcId()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getQuizPlayedTimes()I
    .locals 4

    .line 171
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "quizPlayedTimes"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getQuizQuestionCount()I
    .locals 4

    .line 356
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "quizTotalQuestionCount"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getRealFeed()Lcom/narvii/model/Feed;
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v0, :cond_0

    return-object v0

    .line 420
    :cond_0
    invoke-super {p0}, Lcom/narvii/model/Feed;->getRealFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    return-object v0
.end method

.method public getShowContent()Ljava/lang/String;
    .locals 2

    .line 307
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getBody()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 315
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getLink()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getShowTitle()Ljava/lang/String;
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 303
    :cond_0
    invoke-super {p0}, Lcom/narvii/model/Feed;->getShowTitle()Ljava/lang/String;

    move-result-object v0

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

    .line 511
    invoke-super {p0}, Lcom/narvii/model/Feed;->getSortedMediaList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 512
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0

    .line 515
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 516
    iget v1, p0, Lcom/narvii/model/Blog;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 517
    iget-object v1, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v1, :cond_2

    .line 518
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 519
    iget-object v1, v1, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 520
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    .line 524
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getStoryLinkSummary()Lcom/narvii/model/LinkSummary;
    .locals 4

    .line 649
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "pageSnippet"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 654
    :cond_0
    :try_start_0
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v3, Lcom/narvii/model/LinkSummary;

    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/LinkSummary;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 656
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method public getStoryPollCount()I
    .locals 3

    .line 465
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->isStory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 466
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Scene;

    .line 467
    invoke-virtual {v2}, Lcom/narvii/model/Scene;->getPoll()Lcom/narvii/model/PollAttach;

    move-result-object v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getStoryQuizCount()I
    .locals 3

    .line 477
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->isStory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 478
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Scene;

    .line 479
    invoke-virtual {v2}, Lcom/narvii/model/Scene;->getQuizQuestion()Lcom/narvii/model/QuizQuestion;

    move-result-object v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getStrategyInfo()Ljava/lang/String;
    .locals 2

    .line 618
    iget-object v0, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    instance-of v1, v0, Lcom/narvii/model/StrategyObject;

    if-eqz v1, :cond_0

    .line 619
    iget-object v0, v0, Lcom/narvii/model/Feed;->strategyInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 624
    :cond_0
    invoke-super {p0}, Lcom/narvii/model/Feed;->getStrategyInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalCommentsCount()I
    .locals 2

    .line 638
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 639
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->getPublishNdcId()I

    move-result v0

    if-nez v0, :cond_0

    .line 640
    iget v0, p0, Lcom/narvii/model/Feed;->globalCommentsCount:I

    return v0

    .line 642
    :cond_0
    iget v0, p0, Lcom/narvii/model/Feed;->commentsCount:I

    iget v1, p0, Lcom/narvii/model/Feed;->globalCommentsCount:I

    add-int/2addr v0, v1

    return v0

    .line 644
    :cond_1
    invoke-super {p0}, Lcom/narvii/model/Feed;->getTotalCommentsCount()I

    move-result v0

    return v0
.end method

.method public getTotalVotesCount()I
    .locals 2

    .line 589
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 590
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->getPublishNdcId()I

    move-result v0

    if-nez v0, :cond_0

    .line 591
    iget v0, p0, Lcom/narvii/model/Feed;->globalVotesCount:I

    return v0

    .line 593
    :cond_0
    iget v0, p0, Lcom/narvii/model/Feed;->votesCount:I

    iget v1, p0, Lcom/narvii/model/Feed;->globalVotesCount:I

    add-int/2addr v0, v1

    return v0

    .line 595
    :cond_1
    invoke-super {p0}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    move-result v0

    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    return-object v0
.end method

.method public invisibleBecauseOfClosed()Z
    .locals 4

    .line 290
    iget-object v0, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz v0, :cond_1

    .line 291
    iget v0, v0, Lcom/narvii/model/Feed;->status:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 293
    :cond_1
    iget v0, p0, Lcom/narvii/model/Feed;->status:I

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public invisibleBecauseOfDeleted()Z
    .locals 4

    .line 274
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->invisibleBecauseOfDeleted()Z

    move-result v0

    return v0

    .line 278
    :cond_0
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v0, :cond_3

    .line 279
    invoke-super {p0}, Lcom/narvii/model/NVObject;->invisibleBecauseOfDeleted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->invisibleBecauseOfDeleted()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    .line 282
    :cond_3
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/narvii/model/Blog;->externalSource:Lcom/narvii/model/ExternalSource;

    if-eqz v0, :cond_6

    .line 283
    invoke-super {p0}, Lcom/narvii/model/NVObject;->invisibleBecauseOfDeleted()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/narvii/model/Blog;->externalSource:Lcom/narvii/model/ExternalSource;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->invisibleBecauseOfDeleted()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_1
    return v1

    .line 285
    :cond_6
    invoke-super {p0}, Lcom/narvii/model/NVObject;->invisibleBecauseOfDeleted()Z

    move-result v0

    return v0
.end method

.method public isAccessibleByUser(Lcom/narvii/model/User;)Z
    .locals 4

    .line 242
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->invisibleBecauseOfClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 246
    :cond_0
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {v0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result p1

    return p1

    .line 250
    :cond_1
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_3

    .line 251
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->uid()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    invoke-super {p0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->invisibleBecauseOfDeleted()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 254
    :cond_3
    invoke-super {p0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    invoke-virtual {v0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    .line 257
    :cond_5
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lcom/narvii/model/Blog;->externalSource:Lcom/narvii/model/ExternalSource;

    if-eqz v0, :cond_7

    .line 258
    invoke-super {p0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/narvii/model/Blog;->externalSource:Lcom/narvii/model/ExternalSource;

    invoke-virtual {v0, p1}, Lcom/narvii/model/ExternalSource;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1

    .line 261
    :cond_7
    invoke-super {p0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result p1

    return p1
.end method

.method public isAccessibleByUserIgnoreRefObject(Lcom/narvii/model/User;)Z
    .locals 2

    .line 266
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/narvii/model/Blog;->externalSource:Lcom/narvii/model/ExternalSource;

    if-eqz v0, :cond_1

    .line 267
    invoke-super {p0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/model/Blog;->externalSource:Lcom/narvii/model/ExternalSource;

    invoke-virtual {v0, p1}, Lcom/narvii/model/ExternalSource;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 269
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result p1

    return p1
.end method

.method public isGlobalAnnouncement()Z
    .locals 1

    .line 535
    iget-boolean v0, p0, Lcom/narvii/model/Blog;->isGlobalAnnouncement:Z

    return v0
.end method

.method public isInBestQuiz()Z
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "quizInBestQuizzes"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPollEnded()Z
    .locals 1

    .line 186
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

    .line 190
    iget-object v0, p0, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 191
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/PollOption;

    .line 192
    iget v1, v1, Lcom/narvii/model/PollOption;->votedValue:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isStory()Z
    .locals 2

    .line 407
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isiModeDisableForUser(Lcom/narvii/model/User;)Z
    .locals 2

    .line 349
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0, p1}, Lcom/narvii/model/Feed;->isiModeDisableForUser(Lcom/narvii/model/User;)Z

    move-result p1

    return p1

    .line 352
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/model/Feed;->isiModeDisableForUser(Lcom/narvii/model/User;)Z

    move-result p1

    return p1
.end method

.method public isknownType()Z
    .locals 2

    .line 531
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    const/16 v1, 0x9

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

    .line 217
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

    .line 548
    iget-object v0, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public setLinkedBlogId(Ljava/lang/String;)V
    .locals 2

    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_1

    .line 152
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string/jumbo v1, "promotedTo"

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-void
.end method

.method public setStrategyInfo(Ljava/lang/String;)V
    .locals 1

    .line 630
    invoke-super {p0, p1}, Lcom/narvii/model/Feed;->setStrategyInfo(Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {v0, p1}, Lcom/narvii/model/Feed;->setStrategyInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public shouldShowWebPreview()Z
    .locals 3

    .line 397
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 400
    iget-object v0, p0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v0

    const-string v2, "News Feed"

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public shuffleSceneQuizOptions()V
    .locals 6

    .line 600
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->isStory()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 602
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Scene;

    .line 603
    invoke-virtual {v1}, Lcom/narvii/model/Scene;->getQuizQuestion()Lcom/narvii/model/QuizQuestion;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 607
    :cond_1
    invoke-virtual {v1}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 609
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-static {v2, v3}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 610
    invoke-virtual {v1, v2}, Lcom/narvii/model/QuizQuestion;->setQuizOptions(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public status()I
    .locals 1

    .line 236
    iget v0, p0, Lcom/narvii/model/Feed;->status:I

    return v0
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    return-object v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public updatePollOptions(Lcom/narvii/model/PollOption;Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    :cond_1
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 327
    :goto_0
    iget-object v2, p0, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 328
    iget-object v2, p0, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/PollOption;

    if-eqz v2, :cond_2

    .line 329
    iget-object v2, v2, Lcom/narvii/model/PollOption;->polloptId:Ljava/lang/String;

    iget-object v3, p1, Lcom/narvii/model/PollOption;->polloptId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-ltz v0, :cond_4

    .line 335
    iget-object v1, p0, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    if-eqz p2, :cond_6

    if-ltz v0, :cond_5

    .line 339
    iget-object p2, p0, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    invoke-interface {p2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 341
    :cond_5
    iget-object p2, p0, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    return-void
.end method
