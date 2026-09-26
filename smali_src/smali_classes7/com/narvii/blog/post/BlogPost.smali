.class public Lcom/narvii/blog/post/BlogPost;
.super Lcom/narvii/feed/BackgroundPost;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/influencer/FansOnlyPost;
.implements Lcom/narvii/model/api/CoverPost;


# static fields
.field public static FROM_BLOG_PROMOTE:I = 0x2


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

    .line 1
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

    .line 2
    invoke-direct {p0}, Lcom/narvii/feed/BackgroundPost;-><init>()V

    .line 3
    iget v0, p1, Lcom/narvii/model/Blog;->type:I

    iput v0, p0, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 4
    iget-object v1, p1, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    iput-object v1, p0, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    .line 5
    iget-object v1, p1, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    iput-object v1, p0, Lcom/narvii/blog/post/BlogPost;->content:Ljava/lang/String;

    .line 6
    iget-object v1, p1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    iput-object v1, p0, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    iput-object p2, p0, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    iput-object p3, p0, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 7
    iget-object p2, p1, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iput-object p2, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 8
    iget p2, p1, Lcom/narvii/model/Blog;->publishToGlobal:I

    iput p2, p0, Lcom/narvii/blog/post/BlogPost;->publishToGlobal:I

    iput p2, p0, Lcom/narvii/blog/post/BlogPost;->originPublishToGlobal:I

    const/4 p2, 0x4

    if-ne v0, p2, :cond_1

    .line 9
    iget-object p2, p1, Lcom/narvii/model/Blog;->endTime:Ljava/util/Date;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/Date;

    const-wide/16 v0, 0x0

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    :cond_0
    iput-object p2, p0, Lcom/narvii/blog/post/BlogPost;->endTime:Ljava/util/Date;

    .line 10
    :cond_1
    iget p2, p1, Lcom/narvii/model/Feed;->latitude:I

    iput p2, p0, Lcom/narvii/blog/post/BlogPost;->latitude:I

    .line 11
    iget p2, p1, Lcom/narvii/model/Feed;->longitude:I

    iput p2, p0, Lcom/narvii/blog/post/BlogPost;->longitude:I

    .line 12
    iget-object p2, p1, Lcom/narvii/model/Feed;->address:Ljava/lang/String;

    iput-object p2, p0, Lcom/narvii/blog/post/BlogPost;->address:Ljava/lang/String;

    .line 13
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

    .line 14
    iget-object p2, p1, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    iput-object p2, p0, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    .line 15
    iget-object p2, p1, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    iput-object p2, p0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    .line 16
    iget-object p2, p1, Lcom/narvii/model/Blog;->userAddedTopicList:Ljava/util/List;

    iput-object p2, p0, Lcom/narvii/blog/post/BlogPost;->userAddedTopicList:Ljava/util/List;

    .line 17
    iget-object p2, p1, Lcom/narvii/model/Blog;->credits:Ljava/lang/String;

    iput-object p2, p0, Lcom/narvii/blog/post/BlogPost;->credits:Ljava/lang/String;

    .line 18
    iget-object p2, p1, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    iput-object p2, p0, Lcom/narvii/blog/post/BlogPost;->sceneList:Ljava/util/List;

    .line 19
    new-instance p2, Lcom/narvii/scene/model/SceneDraft;

    iget-object p3, p1, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    iget-object v0, p1, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    invoke-direct {p2, p3, v0}, Lcom/narvii/scene/model/SceneDraft;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object p2, p0, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 20
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p3

    iput-object p3, p2, Lcom/narvii/scene/model/SceneDraft;->metadata:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget-object p2, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz p2, :cond_3

    .line 21
    invoke-static {p2}, Lcom/narvii/post/CoverUtils;->getCoverMedia(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/model/Media;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 22
    invoke-virtual {p2}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 23
    invoke-virtual {p2}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;

    .line 24
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getStoryLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 25
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getStoryLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/model/LinkSummary;->title:Ljava/lang/String;

    .line 26
    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    iput-object p1, p0, Lcom/narvii/blog/post/BlogPost;->linkDesc:Ljava/lang/String;

    goto :goto_1

    .line 27
    :cond_4
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    const p2, 0x7f120ec9

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/blog/post/BlogPost;->linkDesc:Ljava/lang/String;

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 28
    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneDraft;->clone()Lcom/narvii/scene/model/SceneDraft;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/blog/post/BlogPost;->oldSceneDraft:Lcom/narvii/scene/model/SceneDraft;

    return-void
.end method


# virtual methods
.method public content()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->content:Ljava/lang/String;

    return-object v0
.end method

.method public coverMedia()Lcom/narvii/model/Media;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/post/CoverUtils;->getCoverMedia(Lcom/narvii/model/api/CoverPost;)Lcom/narvii/model/Media;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getCoverMedia()Lcom/narvii/model/Media;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/post/CoverUtils;->getCoverMedia(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/model/Media;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCoverMediaIndex()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/post/CoverUtils;->getCoverMediaIndex(Lcom/narvii/model/api/CoverPost;)I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getExtensions()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    iget-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object v0
.end method

.method public getLinkSummary()Lcom/narvii/model/LinkSummary;
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    return-object v2

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    return-object v2

    .line 13
    .line 14
    :cond_1
    const-string v1, "pageSnippet"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isObject()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    const-class v1, Lcom/narvii/model/LinkSummary;

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    check-cast v0, Lcom/narvii/model/LinkSummary;

    .line 40
    return-object v0

    .line 41
    :cond_3
    :goto_0
    return-object v2
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

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    return-object v0
.end method

.method public getPreviewBlog(Lcom/narvii/model/Blog;Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/model/Blog;
    .locals 7

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    move-object v0, p1

    .line 4
    goto :goto_0

    .line 5
    .line 6
    :cond_0
    new-instance v0, Lcom/narvii/model/Blog;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Lcom/narvii/model/Blog;-><init>()V

    .line 10
    .line 11
    :goto_0
    iput-object p3, v0, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    .line 12
    .line 13
    iget p3, p0, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 14
    .line 15
    iput p3, v0, Lcom/narvii/model/Blog;->type:I

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v1, v0, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/blog/post/BlogPost;->content:Ljava/lang/String;

    .line 22
    .line 23
    iput-object v1, v0, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 26
    .line 27
    iput-object v1, v0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 28
    const/4 v1, 0x4

    .line 29
    .line 30
    if-ne p3, v1, :cond_2

    .line 31
    .line 32
    iget-object p3, p0, Lcom/narvii/blog/post/BlogPost;->endTime:Ljava/util/Date;

    .line 33
    .line 34
    if-eqz p3, :cond_1

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_1
    new-instance p3, Ljava/util/Date;

    .line 38
    .line 39
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    move-result-wide v1

    .line 42
    .line 43
    iget v3, p0, Lcom/narvii/blog/post/BlogPost;->durationInDays:I

    .line 44
    .line 45
    .line 46
    const v4, 0x15180

    .line 47
    mul-int/2addr v3, v4

    .line 48
    int-to-long v3, v3

    .line 49
    .line 50
    const-wide/16 v5, 0x3e8

    .line 51
    mul-long/2addr v3, v5

    .line 52
    add-long/2addr v1, v3

    .line 53
    .line 54
    .line 55
    invoke-direct {p3, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 56
    .line 57
    :goto_1
    iput-object p3, v0, Lcom/narvii/model/Blog;->endTime:Ljava/util/Date;

    .line 58
    .line 59
    :cond_2
    iget p3, p0, Lcom/narvii/blog/post/BlogPost;->latitude:I

    .line 60
    .line 61
    iput p3, v0, Lcom/narvii/model/Feed;->latitude:I

    .line 62
    .line 63
    iget p3, p0, Lcom/narvii/blog/post/BlogPost;->longitude:I

    .line 64
    .line 65
    iput p3, v0, Lcom/narvii/model/Feed;->longitude:I

    .line 66
    .line 67
    iget-object p3, p0, Lcom/narvii/blog/post/BlogPost;->address:Ljava/lang/String;

    .line 68
    .line 69
    iput-object p3, v0, Lcom/narvii/model/Feed;->address:Ljava/lang/String;

    .line 70
    .line 71
    iget p3, p0, Lcom/narvii/blog/post/BlogPost;->publishToGlobal:I

    .line 72
    .line 73
    iput p3, v0, Lcom/narvii/model/Blog;->publishToGlobal:I

    .line 74
    .line 75
    const-string p3, "account"

    .line 76
    .line 77
    .line 78
    invoke-interface {p2, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    move-result-object p2

    .line 80
    .line 81
    check-cast p2, Lcom/narvii/account/AccountService;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 85
    move-result-object p2

    .line 86
    .line 87
    iput-object p2, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 88
    .line 89
    iget-object p2, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 90
    .line 91
    iput-object p2, v0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 92
    .line 93
    iget-object p3, p0, Lcom/narvii/blog/post/BlogPost;->extensionMediaList:Ljava/util/List;

    .line 94
    .line 95
    if-eqz p3, :cond_3

    .line 96
    .line 97
    if-eqz p2, :cond_3

    .line 98
    .line 99
    const-string p3, "pageSnippet"

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 103
    move-result-object p2

    .line 104
    .line 105
    if-eqz p2, :cond_3

    .line 106
    .line 107
    iget-object p2, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 111
    move-result-object p2

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    .line 115
    move-result-object p2

    .line 116
    .line 117
    const-class v1, Lcom/narvii/model/LinkSummary;

    .line 118
    .line 119
    .line 120
    invoke-static {p2, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 121
    move-result-object p2

    .line 122
    .line 123
    check-cast p2, Lcom/narvii/model/LinkSummary;

    .line 124
    .line 125
    iget-object v1, p0, Lcom/narvii/blog/post/BlogPost;->extensionMediaList:Ljava/util/List;

    .line 126
    .line 127
    iput-object v1, p2, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    .line 128
    .line 129
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 130
    .line 131
    const-class v2, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, p2, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 135
    move-result-object p2

    .line 136
    .line 137
    check-cast p2, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 138
    .line 139
    iget-object v1, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, p3, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 143
    .line 144
    iget-object p2, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 145
    .line 146
    iput-object p2, v0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 147
    .line 148
    :cond_3
    if-nez p1, :cond_4

    .line 149
    .line 150
    new-instance p1, Ljava/util/Date;

    .line 151
    .line 152
    .line 153
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 154
    .line 155
    iput-object p1, v0, Lcom/narvii/model/Feed;->createdTime:Ljava/util/Date;

    .line 156
    .line 157
    new-instance p1, Ljava/util/Date;

    .line 158
    .line 159
    .line 160
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 161
    .line 162
    iput-object p1, v0, Lcom/narvii/model/Feed;->modifiedTime:Ljava/util/Date;

    .line 163
    goto :goto_2

    .line 164
    .line 165
    :cond_4
    new-instance p1, Ljava/util/Date;

    .line 166
    .line 167
    .line 168
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 169
    .line 170
    iput-object p1, v0, Lcom/narvii/model/Feed;->modifiedTime:Ljava/util/Date;

    .line 171
    .line 172
    :goto_2
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    .line 173
    .line 174
    iput-object p1, v0, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    .line 175
    .line 176
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    .line 177
    .line 178
    iput-object p1, v0, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    .line 179
    .line 180
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPost;->sceneList:Ljava/util/List;

    .line 181
    .line 182
    .line 183
    invoke-static {p1}, Lcom/narvii/scene/helper/SceneUtils;->getAttachPreviewSceneList(Ljava/util/List;)Ljava/util/List;

    .line 184
    move-result-object p1

    .line 185
    .line 186
    iput-object p1, v0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    .line 187
    .line 188
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPost;->userAddedTopicList:Ljava/util/List;

    .line 189
    .line 190
    iput-object p1, v0, Lcom/narvii/model/Blog;->userAddedTopicList:Ljava/util/List;

    .line 191
    .line 192
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPost;->credits:Ljava/lang/String;

    .line 193
    .line 194
    iput-object p1, v0, Lcom/narvii/model/Blog;->credits:Ljava/lang/String;

    .line 195
    const/4 p1, 0x1

    .line 196
    .line 197
    iput-boolean p1, v0, Lcom/narvii/model/Feed;->_isPreview:Z

    .line 198
    .line 199
    new-instance p1, Lcom/narvii/model/TippingInfo;

    .line 200
    .line 201
    .line 202
    invoke-direct {p1}, Lcom/narvii/model/TippingInfo;-><init>()V

    .line 203
    .line 204
    iput-object p1, v0, Lcom/narvii/model/Feed;->tipInfo:Lcom/narvii/model/TippingInfo;

    .line 205
    return-object v0
.end method

.method public hasVideo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public icon()Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPost;->coverMedia()Lcom/narvii/model/Media;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 17
    return-object v0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPost;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iget v1, p0, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 24
    const/4 v2, 0x5

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    .line 28
    if-ne v1, v2, :cond_2

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getMediaList()Ljava/util/List;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getMediaList()Ljava/util/List;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 44
    move-result v0

    .line 45
    .line 46
    if-lez v0, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPost;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getMediaList()Ljava/util/List;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    check-cast v0, Lcom/narvii/model/Media;

    .line 61
    .line 62
    iget-object v3, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 63
    :cond_1
    return-object v3

    .line 64
    .line 65
    :cond_2
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 71
    move-result v0

    .line 72
    .line 73
    if-lez v0, :cond_3

    .line 74
    .line 75
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 76
    .line 77
    .line 78
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    check-cast v0, Lcom/narvii/model/Media;

    .line 82
    .line 83
    iget-object v3, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 84
    :cond_3
    return-object v3
.end method

.method public isEmpty()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->content:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_5

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 25
    move-result v0

    .line 26
    .line 27
    if-nez v0, :cond_5

    .line 28
    .line 29
    :cond_0
    iget v0, p0, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 30
    const/4 v2, 0x6

    .line 31
    .line 32
    if-ne v0, v2, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v2

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    check-cast v2, Lcom/narvii/model/QuizQuestion;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/narvii/model/QuizQuestion;->isEmpty()Z

    .line 56
    move-result v2

    .line 57
    .line 58
    if-nez v2, :cond_1

    .line 59
    return v1

    .line 60
    .line 61
    :cond_2
    iget v0, p0, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 62
    const/4 v2, 0x4

    .line 63
    .line 64
    if-ne v0, v2, :cond_4

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    move-result v2

    .line 77
    .line 78
    if-eqz v2, :cond_4

    .line 79
    .line 80
    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    move-result-object v2

    .line 83
    .line 84
    check-cast v2, Lcom/narvii/model/PollOption;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Lcom/narvii/model/PollOption;->isEmpty()Z

    .line 88
    move-result v2

    .line 89
    .line 90
    if-nez v2, :cond_3

    .line 91
    return v1

    .line 92
    :cond_4
    const/4 v0, 0x1

    .line 93
    return v0

    .line 94
    :cond_5
    return v1
.end method

.method public isFansOnly()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

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
    .locals 8

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/blog/post/BlogPost;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_18

    .line 6
    .line 7
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    .line 8
    .line 9
    iget v0, p0, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 10
    .line 11
    iget v2, p1, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 12
    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v2, p1, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->content:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v2, p1, Lcom/narvii/blog/post/BlogPost;->content:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 36
    .line 37
    iget-object v2, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

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
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    .line 46
    .line 47
    iget-object v2, p1, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    .line 51
    move-result v0

    .line 52
    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 56
    .line 57
    iget-object v2, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    .line 61
    move-result v0

    .line 62
    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    iget v0, p0, Lcom/narvii/blog/post/BlogPost;->durationInDays:I

    .line 66
    .line 67
    iget v2, p1, Lcom/narvii/blog/post/BlogPost;->durationInDays:I

    .line 68
    .line 69
    if-ne v0, v2, :cond_0

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->endTime:Ljava/util/Date;

    .line 72
    .line 73
    iget-object v2, p1, Lcom/narvii/blog/post/BlogPost;->endTime:Ljava/util/Date;

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    move-result v0

    .line 78
    .line 79
    if-eqz v0, :cond_0

    .line 80
    .line 81
    iget v0, p0, Lcom/narvii/blog/post/BlogPost;->latitude:I

    .line 82
    .line 83
    iget v2, p1, Lcom/narvii/blog/post/BlogPost;->latitude:I

    .line 84
    .line 85
    if-ne v0, v2, :cond_0

    .line 86
    .line 87
    iget v0, p0, Lcom/narvii/blog/post/BlogPost;->longitude:I

    .line 88
    .line 89
    iget v2, p1, Lcom/narvii/blog/post/BlogPost;->longitude:I

    .line 90
    .line 91
    if-ne v0, v2, :cond_0

    .line 92
    .line 93
    iget-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 94
    .line 95
    iget-object v2, p1, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 96
    .line 97
    .line 98
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    move-result v0

    .line 100
    .line 101
    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x1

    .line 103
    goto :goto_0

    .line 104
    :cond_0
    move v0, v1

    .line 105
    :goto_0
    const/4 v2, 0x0

    .line 106
    .line 107
    if-eqz v0, :cond_c

    .line 108
    .line 109
    iget v3, p0, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 110
    const/4 v4, 0x6

    .line 111
    .line 112
    if-ne v3, v4, :cond_c

    .line 113
    .line 114
    iget-object v3, p0, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    .line 115
    .line 116
    iget-object v4, p1, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    .line 117
    .line 118
    if-ne v3, v4, :cond_1

    .line 119
    .line 120
    goto/16 :goto_6

    .line 121
    .line 122
    :cond_1
    if-eqz v3, :cond_b

    .line 123
    .line 124
    if-eqz v4, :cond_b

    .line 125
    .line 126
    .line 127
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 128
    move-result-object v3

    .line 129
    .line 130
    iget-object v4, p1, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    .line 131
    .line 132
    .line 133
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 134
    move-result-object v4

    .line 135
    .line 136
    .line 137
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    move-result v5

    .line 139
    .line 140
    if-nez v5, :cond_3

    .line 141
    .line 142
    .line 143
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    move-result v5

    .line 145
    .line 146
    if-eqz v5, :cond_c

    .line 147
    :cond_3
    move-object v5, v2

    .line 148
    .line 149
    :goto_2
    if-eqz v5, :cond_4

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5}, Lcom/narvii/model/QuizQuestion;->isEmpty()Z

    .line 153
    move-result v6

    .line 154
    .line 155
    if-eqz v6, :cond_5

    .line 156
    .line 157
    .line 158
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    move-result v6

    .line 160
    .line 161
    if-eqz v6, :cond_5

    .line 162
    .line 163
    .line 164
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    move-result-object v5

    .line 166
    .line 167
    check-cast v5, Lcom/narvii/model/QuizQuestion;

    .line 168
    goto :goto_2

    .line 169
    :cond_5
    move-object v6, v2

    .line 170
    .line 171
    :goto_3
    if-eqz v6, :cond_6

    .line 172
    .line 173
    .line 174
    invoke-virtual {v6}, Lcom/narvii/model/QuizQuestion;->isEmpty()Z

    .line 175
    move-result v7

    .line 176
    .line 177
    if-eqz v7, :cond_7

    .line 178
    .line 179
    .line 180
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    move-result v7

    .line 182
    .line 183
    if-eqz v7, :cond_7

    .line 184
    .line 185
    .line 186
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    move-result-object v6

    .line 188
    .line 189
    check-cast v6, Lcom/narvii/model/QuizQuestion;

    .line 190
    goto :goto_3

    .line 191
    .line 192
    :cond_7
    if-eqz v5, :cond_a

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5}, Lcom/narvii/model/QuizQuestion;->isEmpty()Z

    .line 196
    move-result v7

    .line 197
    .line 198
    if-eqz v7, :cond_8

    .line 199
    goto :goto_4

    .line 200
    .line 201
    :cond_8
    if-eqz v6, :cond_b

    .line 202
    .line 203
    .line 204
    invoke-virtual {v6}, Lcom/narvii/model/QuizQuestion;->isEmpty()Z

    .line 205
    move-result v7

    .line 206
    .line 207
    if-eqz v7, :cond_9

    .line 208
    goto :goto_5

    .line 209
    .line 210
    .line 211
    :cond_9
    invoke-virtual {v5, v6}, Lcom/narvii/model/QuizQuestion;->isSame(Lcom/narvii/model/QuizQuestion;)Z

    .line 212
    move-result v5

    .line 213
    .line 214
    if-nez v5, :cond_2

    .line 215
    goto :goto_5

    .line 216
    .line 217
    :cond_a
    :goto_4
    if-eqz v6, :cond_2

    .line 218
    .line 219
    .line 220
    invoke-virtual {v6}, Lcom/narvii/model/QuizQuestion;->isEmpty()Z

    .line 221
    move-result v5

    .line 222
    .line 223
    if-eqz v5, :cond_b

    .line 224
    goto :goto_1

    .line 225
    :cond_b
    :goto_5
    move v0, v1

    .line 226
    .line 227
    :cond_c
    :goto_6
    if-eqz v0, :cond_17

    .line 228
    .line 229
    iget v3, p0, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 230
    const/4 v4, 0x4

    .line 231
    .line 232
    if-ne v3, v4, :cond_17

    .line 233
    .line 234
    iget-object v3, p0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    .line 235
    .line 236
    iget-object v4, p1, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    .line 237
    .line 238
    if-ne v3, v4, :cond_d

    .line 239
    .line 240
    goto/16 :goto_b

    .line 241
    .line 242
    :cond_d
    if-eqz v3, :cond_18

    .line 243
    .line 244
    if-eqz v4, :cond_18

    .line 245
    .line 246
    .line 247
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 248
    move-result-object v3

    .line 249
    .line 250
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    .line 251
    .line 252
    .line 253
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 254
    move-result-object p1

    .line 255
    .line 256
    .line 257
    :cond_e
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 258
    move-result v4

    .line 259
    .line 260
    if-nez v4, :cond_f

    .line 261
    .line 262
    .line 263
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 264
    move-result v4

    .line 265
    .line 266
    if-eqz v4, :cond_17

    .line 267
    :cond_f
    move-object v4, v2

    .line 268
    .line 269
    :goto_8
    if-eqz v4, :cond_10

    .line 270
    .line 271
    .line 272
    invoke-virtual {v4}, Lcom/narvii/model/PollOption;->isEmpty()Z

    .line 273
    move-result v5

    .line 274
    .line 275
    if-eqz v5, :cond_11

    .line 276
    .line 277
    .line 278
    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 279
    move-result v5

    .line 280
    .line 281
    if-eqz v5, :cond_11

    .line 282
    .line 283
    .line 284
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 285
    move-result-object v4

    .line 286
    .line 287
    check-cast v4, Lcom/narvii/model/PollOption;

    .line 288
    goto :goto_8

    .line 289
    :cond_11
    move-object v5, v2

    .line 290
    .line 291
    :goto_9
    if-eqz v5, :cond_12

    .line 292
    .line 293
    .line 294
    invoke-virtual {v5}, Lcom/narvii/model/PollOption;->isEmpty()Z

    .line 295
    move-result v6

    .line 296
    .line 297
    if-eqz v6, :cond_13

    .line 298
    .line 299
    .line 300
    :cond_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 301
    move-result v6

    .line 302
    .line 303
    if-eqz v6, :cond_13

    .line 304
    .line 305
    .line 306
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 307
    move-result-object v5

    .line 308
    .line 309
    check-cast v5, Lcom/narvii/model/PollOption;

    .line 310
    goto :goto_9

    .line 311
    .line 312
    :cond_13
    if-eqz v4, :cond_16

    .line 313
    .line 314
    .line 315
    invoke-virtual {v4}, Lcom/narvii/model/PollOption;->isEmpty()Z

    .line 316
    move-result v6

    .line 317
    .line 318
    if-eqz v6, :cond_14

    .line 319
    goto :goto_a

    .line 320
    .line 321
    :cond_14
    if-eqz v5, :cond_18

    .line 322
    .line 323
    .line 324
    invoke-virtual {v5}, Lcom/narvii/model/PollOption;->isEmpty()Z

    .line 325
    move-result v6

    .line 326
    .line 327
    if-eqz v6, :cond_15

    .line 328
    goto :goto_c

    .line 329
    .line 330
    .line 331
    :cond_15
    invoke-virtual {v4, v5}, Lcom/narvii/model/PollOption;->isSame(Lcom/narvii/model/PollOption;)Z

    .line 332
    move-result v4

    .line 333
    .line 334
    if-nez v4, :cond_e

    .line 335
    goto :goto_c

    .line 336
    .line 337
    :cond_16
    :goto_a
    if-eqz v5, :cond_e

    .line 338
    .line 339
    .line 340
    invoke-virtual {v5}, Lcom/narvii/model/PollOption;->isEmpty()Z

    .line 341
    move-result v4

    .line 342
    .line 343
    if-eqz v4, :cond_18

    .line 344
    goto :goto_7

    .line 345
    :cond_17
    :goto_b
    move v1, v0

    .line 346
    :cond_18
    :goto_c
    return v1
.end method

.method public postBody(Lcom/narvii/app/NVContext;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 6

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
    const-string v1, "itemList"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 14
    .line 15
    const-string v1, "blogCategoryList"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 19
    .line 20
    const-string v1, "endTime"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 24
    .line 25
    const-string v1, "extensionMediaList"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 29
    .line 30
    const-string v1, "sceneDraft"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 34
    .line 35
    const-string v1, "editSession"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 39
    .line 40
    const-string v1, "oldSceneDraft"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 44
    .line 45
    const-string v1, "from"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 49
    .line 50
    const-string v1, "originPublishToGlobal"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 54
    .line 55
    const-string v1, "linkDesc"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 59
    .line 60
    iget v1, p0, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 61
    const/4 v2, 0x6

    .line 62
    .line 63
    if-eq v1, v2, :cond_0

    .line 64
    .line 65
    const-string v1, "quizQuestionList"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 69
    .line 70
    :cond_0
    iget v1, p0, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 71
    const/4 v2, 0x4

    .line 72
    .line 73
    if-ne v1, v2, :cond_1

    .line 74
    .line 75
    iget-object v1, p0, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    .line 76
    .line 77
    if-nez v1, :cond_2

    .line 78
    .line 79
    :cond_1
    const-string v1, "polloptList"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 83
    .line 84
    :cond_2
    iget-object v1, p0, Lcom/narvii/blog/post/BlogPost;->sceneList:Ljava/util/List;

    .line 85
    .line 86
    const-string v3, "sceneList"

    .line 87
    .line 88
    if-nez v1, :cond_3

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 92
    .line 93
    const-string v1, "duration"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 97
    goto :goto_1

    .line 98
    .line 99
    .line 100
    :cond_3
    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    if-eqz v1, :cond_6

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    .line 107
    move-result v3

    .line 108
    .line 109
    if-eqz v3, :cond_6

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->iterator()Ljava/util/Iterator;

    .line 113
    move-result-object v1

    .line 114
    .line 115
    .line 116
    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    move-result v3

    .line 118
    .line 119
    if-eqz v3, :cond_6

    .line 120
    .line 121
    .line 122
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    move-result-object v3

    .line 124
    .line 125
    check-cast v3, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 126
    .line 127
    if-nez v3, :cond_5

    .line 128
    goto :goto_0

    .line 129
    .line 130
    :cond_5
    const-string v4, "pollAttach"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 134
    move-result-object v3

    .line 135
    .line 136
    instance-of v4, v3, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 137
    .line 138
    if-eqz v4, :cond_4

    .line 139
    .line 140
    check-cast v3, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 141
    .line 142
    const-string v4, "isModified"

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 146
    goto :goto_0

    .line 147
    .line 148
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/narvii/blog/post/BlogPost;->credits:Ljava/lang/String;

    .line 149
    .line 150
    if-nez v1, :cond_7

    .line 151
    .line 152
    const-string v1, "credits"

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 156
    .line 157
    :cond_7
    iget-object v1, p0, Lcom/narvii/blog/post/BlogPost;->userAddedTopicList:Ljava/util/List;

    .line 158
    .line 159
    if-nez v1, :cond_8

    .line 160
    .line 161
    const-string v1, "userAddedTopicList"

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 165
    .line 166
    :cond_8
    iget-object v1, p0, Lcom/narvii/blog/post/BlogPost;->metadata:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 167
    .line 168
    if-nez v1, :cond_9

    .line 169
    .line 170
    const-string v1, "metadata"

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 174
    .line 175
    :cond_9
    iget-object v1, p0, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    .line 176
    .line 177
    if-eqz v1, :cond_a

    .line 178
    .line 179
    const-string v1, "taggedObjectInfo"

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->putArray(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 183
    move-result-object v1

    .line 184
    .line 185
    iget-object v3, p0, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    .line 186
    .line 187
    .line 188
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 189
    move-result-object v3

    .line 190
    .line 191
    .line 192
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    move-result v4

    .line 194
    .line 195
    if-eqz v4, :cond_a

    .line 196
    .line 197
    .line 198
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    move-result-object v4

    .line 200
    .line 201
    check-cast v4, Lcom/narvii/model/Item;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->addArray()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 205
    move-result-object v5

    .line 206
    .line 207
    iget-object v4, v4, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 211
    const/4 v4, 0x2

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(I)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 215
    goto :goto_2

    .line 216
    .line 217
    :cond_a
    iget-object v1, p0, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 218
    .line 219
    if-eqz v1, :cond_b

    .line 220
    .line 221
    const-string v1, "taggedBlogCategoryIdList"

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->putArray(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 225
    move-result-object v1

    .line 226
    .line 227
    iget-object v3, p0, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 228
    .line 229
    .line 230
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 231
    move-result-object v3

    .line 232
    .line 233
    .line 234
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    move-result v4

    .line 236
    .line 237
    if-eqz v4, :cond_b

    .line 238
    .line 239
    .line 240
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 241
    move-result-object v4

    .line 242
    .line 243
    check-cast v4, Lcom/narvii/model/BlogCategory;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4}, Lcom/narvii/model/BlogCategory;->id()Ljava/lang/String;

    .line 247
    move-result-object v4

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 251
    goto :goto_3

    .line 252
    .line 253
    :cond_b
    iget v1, p0, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 254
    .line 255
    if-ne v1, v2, :cond_c

    .line 256
    .line 257
    iget-object v1, p0, Lcom/narvii/blog/post/BlogPost;->endTime:Ljava/util/Date;

    .line 258
    .line 259
    if-eqz v1, :cond_d

    .line 260
    .line 261
    :cond_c
    const-string v1, "durationInDays"

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 265
    .line 266
    :cond_d
    iget-object v1, p0, Lcom/narvii/blog/post/BlogPost;->extensionMediaList:Ljava/util/List;

    .line 267
    .line 268
    if-eqz v1, :cond_e

    .line 269
    .line 270
    iget-object v1, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 271
    .line 272
    if-eqz v1, :cond_e

    .line 273
    .line 274
    const-string v2, "pageSnippet"

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 278
    move-result-object v1

    .line 279
    .line 280
    if-eqz v1, :cond_e

    .line 281
    .line 282
    iget-object v1, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 286
    move-result-object v1

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    .line 290
    move-result-object v1

    .line 291
    .line 292
    const-class v3, Lcom/narvii/model/LinkSummary;

    .line 293
    .line 294
    .line 295
    invoke-static {v1, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 296
    move-result-object v1

    .line 297
    .line 298
    check-cast v1, Lcom/narvii/model/LinkSummary;

    .line 299
    .line 300
    iget-object v3, p0, Lcom/narvii/blog/post/BlogPost;->extensionMediaList:Ljava/util/List;

    .line 301
    .line 302
    iput-object v3, v1, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    .line 303
    .line 304
    sget-object v3, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 305
    .line 306
    const-class v4, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v3, v1, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 310
    move-result-object v1

    .line 311
    .line 312
    check-cast v1, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 313
    .line 314
    iget-object v3, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v3, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 318
    .line 319
    const-string v1, "extensions"

    .line 320
    .line 321
    iget-object v2, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 325
    .line 326
    :cond_e
    const-string v1, "content_language"

    .line 327
    .line 328
    .line 329
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 330
    move-result-object p1

    .line 331
    .line 332
    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    .line 333
    .line 334
    if-eqz p1, :cond_f

    .line 335
    .line 336
    const-string v1, "contentLanguage"

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 340
    move-result-object p1

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 344
    :cond_f
    return-object v0
.end method

.method public setCoverMedia(Lcom/narvii/model/Media;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

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
    iput-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 13
    const/4 v1, 0x1

    .line 14
    .line 15
    new-array v1, v1, [Lcom/narvii/model/Media;

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    aput-object p1, v1, v2

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-static {v0, p1}, Lcom/narvii/post/CoverUtils;->setCoverMedia(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/util/List;)V

    .line 26
    return-void
.end method

.method public setCoverMediaIndex(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

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
    iput-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {p0, p1}, Lcom/narvii/post/CoverUtils;->setCoverMedia(Lcom/narvii/model/api/CoverPost;I)V

    .line 14
    return-void
.end method

.method public setFansOnly(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

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
    iput-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

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

.method public title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    return-object v0
.end method
