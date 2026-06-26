.class public Lcom/narvii/blog/post/BlogPost;
.super Lcom/narvii/feed/BackgroundPost;
.source "BlogPost.java"

# interfaces
.implements Lcom/narvii/influencer/FansOnlyPost;
.implements Lcom/narvii/model/api/CoverPost;


# static fields
.field public static FROM_BLOG_PROMOTE:I = 0x2

.field public static FROM_STORY_EDITOR:I = 0x1


# instance fields
.field public address:Ljava/lang/String;

.field public blogCategoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/BlogCategory;",
            ">;"
        }
    .end annotation
.end field

.field public content:Ljava/lang/String;

.field public credits:Ljava/lang/String;

.field public duration:J

.field public durationInDays:I

.field public editSession:Lcom/narvii/logging/PageSession;

.field public endTime:Ljava/util/Date;

.field public extensionMediaList:Ljava/util/List;
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

.field public from:I

.field public itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;"
        }
    .end annotation
.end field

.field public latitude:I

.field public linkDesc:Ljava/lang/String;

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

.field public metadata:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field public oldSceneDraft:Lcom/narvii/scene/model/SceneDraft;

.field public originPublishToGlobal:I

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

.field public promotedFrom:Ljava/lang/String;

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

.field public sceneDraft:Lcom/narvii/scene/model/SceneDraft;

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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/narvii/feed/BackgroundPost;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/model/Blog;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/Blog;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;",
            "Ljava/util/List<",
            "Lcom/narvii/model/BlogCategory;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lcom/narvii/feed/BackgroundPost;-><init>()V

    .line 51
    iget v0, p1, Lcom/narvii/model/Blog;->type:I

    iput v0, p0, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 52
    iget-object v1, p1, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    iput-object v1, p0, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    .line 53
    iget-object v1, p1, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    iput-object v1, p0, Lcom/narvii/blog/post/BlogPost;->content:Ljava/lang/String;

    .line 54
    iget-object v1, p1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    iput-object v1, p0, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 55
    iput-object p2, p0, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    .line 56
    iput-object p3, p0, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 57
    iget-object p2, p1, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iput-object p2, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 58
    iget p2, p1, Lcom/narvii/model/Blog;->publishToGlobal:I

    iput p2, p0, Lcom/narvii/blog/post/BlogPost;->publishToGlobal:I

    .line 59
    iput p2, p0, Lcom/narvii/blog/post/BlogPost;->originPublishToGlobal:I

    const/4 p2, 0x4

    if-ne v0, p2, :cond_1

    .line 61
    iget-object p2, p1, Lcom/narvii/model/Blog;->endTime:Ljava/util/Date;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/Date;

    const-wide/16 v0, 0x0

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    :cond_0
    iput-object p2, p0, Lcom/narvii/blog/post/BlogPost;->endTime:Ljava/util/Date;

    .line 63
    :cond_1
    iget p2, p1, Lcom/narvii/model/Feed;->latitude:I

    iput p2, p0, Lcom/narvii/blog/post/BlogPost;->latitude:I

    .line 64
    iget p2, p1, Lcom/narvii/model/Feed;->longitude:I

    iput p2, p0, Lcom/narvii/blog/post/BlogPost;->longitude:I

    .line 65
    iget-object p2, p1, Lcom/narvii/model/Feed;->address:Ljava/lang/String;

    iput-object p2, p0, Lcom/narvii/blog/post/BlogPost;->address:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object p2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object p2

    iget-object p2, p2, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    :goto_0
    iput-object p2, p0, Lcom/narvii/blog/post/BlogPost;->extensionMediaList:Ljava/util/List;

    .line 67
    iget-object p2, p1, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    iput-object p2, p0, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    .line 68
    iget-object p2, p1, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    iput-object p2, p0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    .line 69
    iget-object p2, p1, Lcom/narvii/model/Blog;->userAddedTopicList:Ljava/util/List;

    iput-object p2, p0, Lcom/narvii/blog/post/BlogPost;->userAddedTopicList:Ljava/util/List;

    .line 70
    iget-object p2, p1, Lcom/narvii/model/Blog;->credits:Ljava/lang/String;

    iput-object p2, p0, Lcom/narvii/blog/post/BlogPost;->credits:Ljava/lang/String;

    .line 71
    iget-object p2, p1, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    iput-object p2, p0, Lcom/narvii/blog/post/BlogPost;->sceneList:Ljava/util/List;

    .line 72
    new-instance p3, Lcom/narvii/scene/model/SceneDraft;

    iget-object v0, p1, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    invoke-direct {p3, v0, p2}, Lcom/narvii/scene/model/SceneDraft;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object p3, p0, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 73
    iget-object p2, p0, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p3

    iput-object p3, p2, Lcom/narvii/scene/model/SceneDraft;->metadata:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 74
    iget-object p2, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz p2, :cond_3

    .line 75
    invoke-static {p2}, Lcom/narvii/post/CoverUtils;->getCoverMedia(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/model/Media;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 76
    invoke-virtual {p2}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 77
    iget-object p3, p0, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {p2}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;

    .line 80
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getStoryLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 81
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getStoryLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/model/LinkSummary;->title:Ljava/lang/String;

    .line 82
    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 83
    iput-object p1, p0, Lcom/narvii/blog/post/BlogPost;->linkDesc:Ljava/lang/String;

    goto :goto_1

    .line 85
    :cond_4
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    const p2, 0x7f0f0d9d

    invoke-virtual {p1, p2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/blog/post/BlogPost;->linkDesc:Ljava/lang/String;

    .line 88
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneDraft;->clone()Lcom/narvii/scene/model/SceneDraft;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/blog/post/BlogPost;->oldSceneDraft:Lcom/narvii/scene/model/SceneDraft;

    return-void
.end method


# virtual methods
.method public content()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->content:Ljava/lang/String;

    return-object v0
.end method

.method public coverMedia()Lcom/narvii/model/Media;
    .locals 1

    .line 265
    invoke-static {p0}, Lcom/narvii/post/CoverUtils;->getCoverMedia(Lcom/narvii/model/api/CoverPost;)Lcom/narvii/model/Media;

    move-result-object v0

    return-object v0
.end method

.method public fromStoryEditor()Z
    .locals 2

    .line 571
    iget v0, p0, Lcom/narvii/blog/post/BlogPost;->from:I

    sget v1, Lcom/narvii/blog/post/BlogPost;->FROM_STORY_EDITOR:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCoverMedia()Lcom/narvii/model/Media;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-static {v0}, Lcom/narvii/post/CoverUtils;->getCoverMedia(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/model/Media;

    move-result-object v0

    return-object v0
.end method

.method public getCoverMediaIndex()I
    .locals 1

    .line 261
    invoke-static {p0}, Lcom/narvii/post/CoverUtils;->getCoverMediaIndex(Lcom/narvii/model/api/CoverPost;)I

    move-result v0

    return v0
.end method

.method public getExtensions()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object v0
.end method

.method public getLinkSummary()Lcom/narvii/model/LinkSummary;
    .locals 3

    .line 386
    iget v0, p0, Lcom/narvii/blog/post/BlogPost;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    return-object v1

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const-string v2, "pageSnippet"

    .line 392
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 393
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isObject()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 396
    :cond_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/LinkSummary;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/LinkSummary;

    return-object v0

    :cond_3
    :goto_0
    return-object v1
.end method

.method public getMediaList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation

    .line 562
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    return-object v0
.end method

.method public getPreviewBlog(Lcom/narvii/model/Blog;Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/model/Blog;
    .locals 7

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 92
    :cond_0
    new-instance v0, Lcom/narvii/model/Blog;

    invoke-direct {v0}, Lcom/narvii/model/Blog;-><init>()V

    .line 93
    :goto_0
    iput-object p3, v0, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    .line 94
    iget p3, p0, Lcom/narvii/blog/post/BlogPost;->type:I

    iput p3, v0, Lcom/narvii/model/Blog;->type:I

    .line 96
    iget-object v1, p0, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcom/narvii/blog/post/BlogPost;->content:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    iput-object v1, v0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    const/4 v1, 0x4

    if-ne p3, v1, :cond_2

    .line 100
    iget-object p3, p0, Lcom/narvii/blog/post/BlogPost;->endTime:Ljava/util/Date;

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget v3, p0, Lcom/narvii/blog/post/BlogPost;->durationInDays:I

    mul-int/lit8 v3, v3, 0x18

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit8 v3, v3, 0x3c

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    add-long/2addr v1, v3

    invoke-direct {p3, v1, v2}, Ljava/util/Date;-><init>(J)V

    :goto_1
    iput-object p3, v0, Lcom/narvii/model/Blog;->endTime:Ljava/util/Date;

    .line 102
    :cond_2
    iget p3, p0, Lcom/narvii/blog/post/BlogPost;->latitude:I

    iput p3, v0, Lcom/narvii/model/Feed;->latitude:I

    .line 103
    iget p3, p0, Lcom/narvii/blog/post/BlogPost;->longitude:I

    iput p3, v0, Lcom/narvii/model/Feed;->longitude:I

    .line 104
    iget-object p3, p0, Lcom/narvii/blog/post/BlogPost;->address:Ljava/lang/String;

    iput-object p3, v0, Lcom/narvii/model/Feed;->address:Ljava/lang/String;

    .line 105
    iget p3, p0, Lcom/narvii/blog/post/BlogPost;->publishToGlobal:I

    iput p3, v0, Lcom/narvii/model/Blog;->publishToGlobal:I

    const-string p3, "account"

    .line 106
    invoke-interface {p2, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/account/AccountService;

    .line 107
    invoke-virtual {p3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p3

    .line 108
    iput-object p3, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 109
    iget-object p3, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iput-object p3, v0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 110
    iget-object v1, p0, Lcom/narvii/blog/post/BlogPost;->extensionMediaList:Ljava/util/List;

    const-string v2, "pageSnippet"

    if-eqz v1, :cond_3

    if-eqz p3, :cond_3

    .line 111
    invoke-virtual {p3, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 112
    iget-object p3, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {p3, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p3

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object p3

    const-class v1, Lcom/narvii/model/LinkSummary;

    invoke-static {p3, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/LinkSummary;

    .line 113
    iget-object v1, p0, Lcom/narvii/blog/post/BlogPost;->extensionMediaList:Ljava/util/List;

    iput-object v1, p3, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    .line 114
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v3, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v1, p3, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 115
    iget-object v1, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v1, v2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 116
    iget-object p3, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iput-object p3, v0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :cond_3
    if-nez p1, :cond_4

    .line 120
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, v0, Lcom/narvii/model/Feed;->createdTime:Ljava/util/Date;

    .line 121
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, v0, Lcom/narvii/model/Feed;->modifiedTime:Ljava/util/Date;

    goto :goto_2

    .line 123
    :cond_4
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, v0, Lcom/narvii/model/Feed;->modifiedTime:Ljava/util/Date;

    .line 127
    :goto_2
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    iput-object p1, v0, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    .line 128
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    iput-object p1, v0, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    .line 131
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPost;->sceneList:Ljava/util/List;

    invoke-static {p1}, Lcom/narvii/scene/helper/SceneUtils;->getAttachPreviewSceneList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    .line 132
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPost;->userAddedTopicList:Ljava/util/List;

    iput-object p1, v0, Lcom/narvii/model/Blog;->userAddedTopicList:Ljava/util/List;

    .line 133
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPost;->credits:Ljava/lang/String;

    iput-object p1, v0, Lcom/narvii/model/Blog;->credits:Ljava/lang/String;

    .line 134
    iget p1, p0, Lcom/narvii/blog/post/BlogPost;->type:I

    const/16 p3, 0x9

    if-ne p1, p3, :cond_9

    .line 135
    iget-object p1, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->deepCopy()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 136
    iget-object p1, v0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz p1, :cond_6

    const-string p3, "style"

    .line 137
    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v1, "coverMediaList"

    .line 139
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    .line 140
    move-object v4, p1

    check-cast v4, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v4, v1, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    const-string v1, "backgroundMediaList"

    .line 141
    invoke-virtual {v4, v1, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 143
    :cond_5
    iget-object v1, v0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v1, p3, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 146
    :cond_6
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPost;->promotedFrom:Ljava/lang/String;

    if-eqz p1, :cond_9

    .line 147
    iget-object p1, v0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    if-nez p1, :cond_9

    :cond_7
    const-string p1, "config"

    .line 148
    invoke-interface {p2, p1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 149
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    if-lez p1, :cond_9

    .line 151
    iget-object p2, v0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez p2, :cond_8

    .line 152
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p2

    iput-object p2, v0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 154
    :cond_8
    new-instance p2, Lcom/narvii/model/LinkSummary;

    invoke-direct {p2}, Lcom/narvii/model/LinkSummary;-><init>()V

    .line 155
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ndc://x"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/blog/"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/narvii/blog/post/BlogPost;->promotedFrom:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/narvii/model/LinkSummary;->deepLink:Ljava/lang/String;

    .line 156
    iget-object p1, v0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    sget-object p3, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v1, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {p3, p2, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {p1, v2, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    :cond_9
    const/4 p1, 0x1

    .line 161
    iput-boolean p1, v0, Lcom/narvii/model/Feed;->_isPreview:Z

    .line 162
    new-instance p1, Lcom/narvii/model/TippingInfo;

    invoke-direct {p1}, Lcom/narvii/model/TippingInfo;-><init>()V

    iput-object p1, v0, Lcom/narvii/model/Feed;->tipInfo:Lcom/narvii/model/TippingInfo;

    return-object v0
.end method

.method public hasVideo()Z
    .locals 3

    .line 541
    iget v0, p0, Lcom/narvii/blog/post/BlogPost;->type:I

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 542
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneDraft;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public icon()Ljava/lang/String;
    .locals 5

    .line 239
    iget v0, p0, Lcom/narvii/blog/post/BlogPost;->type:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, v0, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;

    return-object v0

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPost;->coverMedia()Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 244
    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    return-object v0

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPost;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object v0

    .line 247
    iget v1, p0, Lcom/narvii/blog/post/BlogPost;->type:I

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v1, v2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getMediaList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 248
    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getMediaList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPost;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getMediaList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    iget-object v4, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    :cond_2
    return-object v4

    .line 250
    :cond_3
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    iget-object v4, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    :cond_4
    return-object v4
.end method

.method public isEmpty()Z
    .locals 3

    .line 401
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->content:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 403
    :cond_0
    iget v0, p0, Lcom/narvii/blog/post/BlogPost;->type:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 404
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/QuizQuestion;

    .line 405
    invoke-virtual {v2}, Lcom/narvii/model/QuizQuestion;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 411
    :cond_2
    iget v0, p0, Lcom/narvii/blog/post/BlogPost;->type:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 412
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/PollOption;

    .line 413
    invoke-virtual {v2}, Lcom/narvii/model/PollOption;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 419
    :cond_4
    iget v0, p0, Lcom/narvii/blog/post/BlogPost;->type:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_8

    .line 420
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    return v1

    .line 423
    :cond_5
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->credits:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 426
    :cond_6
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->userAddedTopicList:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 427
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/story/StoryTopic;

    .line 428
    iget-object v2, v2, Lcom/narvii/model/story/StoryTopic;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_8
    const/4 v0, 0x1

    return v0

    :cond_9
    return v1
.end method

.method public isFansOnly()Z
    .locals 4

    .line 549
    iget-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

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
    .locals 9

    .line 444
    instance-of v0, p1, Lcom/narvii/blog/post/BlogPost;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 445
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    .line 446
    iget v0, p0, Lcom/narvii/blog/post/BlogPost;->type:I

    iget v2, p1, Lcom/narvii/blog/post/BlogPost;->type:I

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    .line 447
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->content:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/blog/post/BlogPost;->content:Ljava/lang/String;

    .line 448
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    iget-object v2, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 449
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    iget-object v2, p1, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    .line 450
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    iget-object v2, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 451
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/blog/post/BlogPost;->durationInDays:I

    iget v2, p1, Lcom/narvii/blog/post/BlogPost;->durationInDays:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->endTime:Ljava/util/Date;

    iget-object v2, p1, Lcom/narvii/blog/post/BlogPost;->endTime:Ljava/util/Date;

    .line 453
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/blog/post/BlogPost;->latitude:I

    iget v2, p1, Lcom/narvii/blog/post/BlogPost;->latitude:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/narvii/blog/post/BlogPost;->longitude:I

    iget v2, p1, Lcom/narvii/blog/post/BlogPost;->longitude:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget-object v2, p1, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 456
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_c

    .line 457
    iget v4, p0, Lcom/narvii/blog/post/BlogPost;->type:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_c

    .line 458
    iget-object v4, p0, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    iget-object v5, p1, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    if-ne v4, v5, :cond_1

    goto/16 :goto_6

    :cond_1
    if-eqz v4, :cond_b

    if-eqz v5, :cond_b

    .line 460
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 461
    iget-object v5, p1, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 462
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_3
    move-object v6, v2

    :goto_2
    if-eqz v6, :cond_4

    .line 464
    invoke-virtual {v6}, Lcom/narvii/model/QuizQuestion;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 465
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/model/QuizQuestion;

    goto :goto_2

    :cond_5
    move-object v7, v2

    :goto_3
    if-eqz v7, :cond_6

    .line 468
    invoke-virtual {v7}, Lcom/narvii/model/QuizQuestion;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 469
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/model/QuizQuestion;

    goto :goto_3

    :cond_7
    if-eqz v6, :cond_a

    .line 472
    invoke-virtual {v6}, Lcom/narvii/model/QuizQuestion;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_4

    :cond_8
    if-eqz v7, :cond_b

    .line 479
    invoke-virtual {v7}, Lcom/narvii/model/QuizQuestion;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_5

    .line 482
    :cond_9
    invoke-virtual {v6, v7}, Lcom/narvii/model/QuizQuestion;->isSame(Lcom/narvii/model/QuizQuestion;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_5

    :cond_a
    :goto_4
    if-eqz v7, :cond_2

    .line 473
    invoke-virtual {v7}, Lcom/narvii/model/QuizQuestion;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_1

    :cond_b
    :goto_5
    const/4 v0, 0x0

    :cond_c
    :goto_6
    if-eqz v0, :cond_18

    .line 492
    iget v4, p0, Lcom/narvii/blog/post/BlogPost;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_18

    .line 493
    iget-object v4, p0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    iget-object v5, p1, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    if-ne v4, v5, :cond_d

    goto/16 :goto_c

    :cond_d
    if-eqz v4, :cond_17

    if-eqz v5, :cond_17

    .line 495
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 496
    iget-object v5, p1, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 497
    :cond_e
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    :cond_f
    move-object v6, v2

    :goto_8
    if-eqz v6, :cond_10

    .line 499
    invoke-virtual {v6}, Lcom/narvii/model/PollOption;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_11

    :cond_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 500
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/model/PollOption;

    goto :goto_8

    :cond_11
    move-object v7, v2

    :goto_9
    if-eqz v7, :cond_12

    .line 503
    invoke-virtual {v7}, Lcom/narvii/model/PollOption;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_13

    :cond_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 504
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/model/PollOption;

    goto :goto_9

    :cond_13
    if-eqz v6, :cond_16

    .line 507
    invoke-virtual {v6}, Lcom/narvii/model/PollOption;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_14

    goto :goto_a

    :cond_14
    if-eqz v7, :cond_17

    .line 514
    invoke-virtual {v7}, Lcom/narvii/model/PollOption;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_15

    goto :goto_b

    .line 517
    :cond_15
    invoke-virtual {v6, v7}, Lcom/narvii/model/PollOption;->isSame(Lcom/narvii/model/PollOption;)Z

    move-result v6

    if-nez v6, :cond_e

    goto :goto_b

    :cond_16
    :goto_a
    if-eqz v7, :cond_e

    .line 508
    invoke-virtual {v7}, Lcom/narvii/model/PollOption;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_17

    goto :goto_7

    :cond_17
    :goto_b
    const/4 v0, 0x0

    :cond_18
    :goto_c
    if-eqz v0, :cond_1a

    .line 528
    iget v2, p0, Lcom/narvii/blog/post/BlogPost;->type:I

    const/16 v4, 0x9

    if-ne v2, v4, :cond_1a

    if-eqz v0, :cond_19

    .line 529
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->credits:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/blog/post/BlogPost;->credits:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->userAddedTopicList:Ljava/util/List;

    iget-object v2, p1, Lcom/narvii/blog/post/BlogPost;->userAddedTopicList:Ljava/util/List;

    .line 530
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->sceneList:Ljava/util/List;

    iget-object v2, p1, Lcom/narvii/blog/post/BlogPost;->sceneList:Ljava/util/List;

    .line 531
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v0, :cond_19

    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 532
    invoke-virtual {v0, p1, v1}, Lcom/narvii/scene/model/SceneDraft;->isSame(Ljava/lang/Object;Z)Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 v0, 0x1

    goto :goto_d

    :cond_19
    const/4 v0, 0x0

    :cond_1a
    :goto_d
    return v0

    :cond_1b
    return v1
.end method

.method public postBody(Lcom/narvii/app/NVContext;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 9

    .line 280
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v1, "itemList"

    .line 282
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    const-string v1, "blogCategoryList"

    .line 283
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    const-string v1, "endTime"

    .line 284
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    const-string v1, "extensionMediaList"

    .line 285
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    const-string v1, "sceneDraft"

    .line 286
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    const-string v1, "editSession"

    .line 287
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    const-string v1, "oldSceneDraft"

    .line 288
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    const-string v1, "from"

    .line 289
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    const-string v1, "originPublishToGlobal"

    .line 290
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    const-string v1, "linkDesc"

    .line 291
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 293
    iget v1, p0, Lcom/narvii/blog/post/BlogPost;->type:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const-string v1, "quizQuestionList"

    .line 294
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 296
    :cond_0
    iget v1, p0, Lcom/narvii/blog/post/BlogPost;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "polloptList"

    .line 297
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 300
    :cond_2
    iget v1, p0, Lcom/narvii/blog/post/BlogPost;->type:I

    const-string/jumbo v3, "userAddedTopicList"

    const-string v4, "credits"

    const-string v5, "duration"

    const/16 v6, 0x9

    const-string v7, "metadata"

    const-string v8, "sceneList"

    if-eq v1, v6, :cond_3

    const-string v1, "publishToGlobal"

    .line 301
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 302
    invoke-virtual {v0, v8}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 303
    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 304
    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 305
    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 306
    invoke-virtual {v0, v7}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    goto :goto_2

    .line 308
    :cond_3
    iget-object v1, p0, Lcom/narvii/blog/post/BlogPost;->sceneList:Ljava/util/List;

    if-nez v1, :cond_4

    .line 309
    invoke-virtual {v0, v8}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 310
    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    goto :goto_1

    .line 312
    :cond_4
    invoke-virtual {v0, v8}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 313
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 314
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/JsonNode;

    if-nez v5, :cond_6

    goto :goto_0

    :cond_6
    const-string v8, "pollAttach"

    .line 318
    invoke-virtual {v5, v8}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v5

    .line 319
    instance-of v8, v5, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v8, :cond_5

    .line 320
    check-cast v5, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v8, "isModified"

    invoke-virtual {v5, v8}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    goto :goto_0

    .line 325
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/narvii/blog/post/BlogPost;->credits:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 326
    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 328
    :cond_8
    iget-object v1, p0, Lcom/narvii/blog/post/BlogPost;->userAddedTopicList:Ljava/util/List;

    if-nez v1, :cond_9

    .line 329
    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 331
    :cond_9
    iget-object v1, p0, Lcom/narvii/blog/post/BlogPost;->metadata:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v1, :cond_a

    .line 332
    invoke-virtual {v0, v7}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 336
    :cond_a
    :goto_2
    iget-object v1, p0, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    if-eqz v1, :cond_b

    const-string v1, "taggedObjectInfo"

    .line 337
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->putArray(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v1

    .line 338
    iget-object v3, p0, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Item;

    .line 339
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->addArray()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v5

    .line 340
    iget-object v4, v4, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    const/4 v4, 0x2

    .line 341
    invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(I)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_3

    .line 344
    :cond_b
    iget-object v1, p0, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    if-eqz v1, :cond_c

    const-string v1, "taggedBlogCategoryIdList"

    .line 345
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->putArray(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v1

    .line 346
    iget-object v3, p0, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/BlogCategory;

    .line 347
    invoke-virtual {v4}, Lcom/narvii/model/BlogCategory;->id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_4

    .line 351
    :cond_c
    iget v1, p0, Lcom/narvii/blog/post/BlogPost;->type:I

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lcom/narvii/blog/post/BlogPost;->endTime:Ljava/util/Date;

    if-eqz v1, :cond_e

    :cond_d
    const-string v1, "durationInDays"

    .line 352
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 355
    :cond_e
    iget-object v1, p0, Lcom/narvii/blog/post/BlogPost;->extensionMediaList:Ljava/util/List;

    if-eqz v1, :cond_f

    .line 356
    iget-object v1, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v1, :cond_f

    const-string v2, "pageSnippet"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 357
    iget-object v1, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/narvii/model/LinkSummary;

    invoke-static {v1, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/LinkSummary;

    .line 358
    iget-object v3, p0, Lcom/narvii/blog/post/BlogPost;->extensionMediaList:Ljava/util/List;

    iput-object v3, v1, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    .line 359
    sget-object v3, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v4, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v3, v1, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 360
    iget-object v3, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v3, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 361
    iget-object v1, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v2, "extensions"

    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 365
    :cond_f
    iget v1, p0, Lcom/narvii/blog/post/BlogPost;->type:I

    if-ne v1, v6, :cond_10

    const-string v1, "address"

    .line 366
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 367
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    const-string v1, "latitude"

    .line 368
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    const-string v1, "longitude"

    .line 369
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    const-string v1, "mediaList"

    .line 370
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 372
    iget-object v1, p0, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v1, :cond_10

    .line 373
    invoke-virtual {v1}, Lcom/narvii/scene/model/SceneDraft;->generateMetadata()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    :cond_10
    const-string v1, "content_language"

    .line 377
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    if-eqz p1, :cond_11

    .line 379
    invoke-virtual {p1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object p1

    const-string v1, "contentLanguage"

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :cond_11
    return-object v0
.end method

.method public setCoverMedia(Lcom/narvii/model/Media;)V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_0

    .line 270
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/narvii/model/Media;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/narvii/post/CoverUtils;->setCoverMedia(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/util/List;)V

    return-void
.end method

.method public setCoverMediaIndex(I)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_0

    .line 255
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 257
    :cond_0
    invoke-static {p0, p1}, Lcom/narvii/post/CoverUtils;->setCoverMedia(Lcom/narvii/model/api/CoverPost;I)V

    return-void
.end method

.method public setFansOnly(Z)V
    .locals 2

    .line 554
    iget-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_0

    .line 555
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v1, "fansOnly"

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-void
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    return-object v0
.end method
