.class public Lcom/narvii/master/search/StorySearchListResponse;
.super Lcom/narvii/model/api/BlogListResponse;
.source "StorySearchListResponse.java"


# instance fields
.field public postList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/headlines/Headline;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/headlines/Headline;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/narvii/model/api/BlogListResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public list()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Blog;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iget-object v1, p0, Lcom/narvii/master/search/StorySearchListResponse;->postList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/headlines/Headline;

    .line 24
    iget-object v3, v2, Lcom/narvii/headlines/Headline;->refObject:Lcom/narvii/model/Feed;

    instance-of v4, v3, Lcom/narvii/model/Blog;

    if-eqz v4, :cond_3

    .line 25
    check-cast v3, Lcom/narvii/model/Blog;

    .line 26
    iget-object v4, v3, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-nez v4, :cond_1

    iget-object v4, v2, Lcom/narvii/headlines/Headline;->author:Lcom/narvii/model/User;

    if-eqz v4, :cond_1

    .line 27
    iput-object v4, v3, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 29
    :cond_1
    iget v4, v2, Lcom/narvii/headlines/Headline;->ndcId:I

    iput v4, v3, Lcom/narvii/model/Feed;->ndcId:I

    .line 30
    iget-object v4, v3, Lcom/narvii/model/Feed;->strategyInfo:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 31
    iget-object v2, v2, Lcom/narvii/headlines/Headline;->strategyInfo:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/narvii/model/Blog;->setStrategyInfo(Ljava/lang/String;)V

    .line 33
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :cond_3
    iget v3, v2, Lcom/narvii/headlines/Headline;->refObjectType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 35
    new-instance v3, Lcom/narvii/model/Blog;

    invoke-direct {v3}, Lcom/narvii/model/Blog;-><init>()V

    .line 36
    iget-object v4, v2, Lcom/narvii/headlines/Headline;->refObjectId:Ljava/lang/String;

    iput-object v4, v3, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    .line 37
    iget v4, v2, Lcom/narvii/headlines/Headline;->refObjectSubtype:I

    iput v4, v3, Lcom/narvii/model/Blog;->type:I

    .line 38
    iget-object v4, v2, Lcom/narvii/headlines/Headline;->title:Ljava/lang/String;

    iput-object v4, v3, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    .line 39
    iget v4, v2, Lcom/narvii/headlines/Headline;->votedValue:I

    iput v4, v3, Lcom/narvii/model/Feed;->votedValue:I

    .line 40
    iget v4, v2, Lcom/narvii/headlines/Headline;->globalVotedValue:I

    iput v4, v3, Lcom/narvii/model/Feed;->globalVotedValue:I

    .line 41
    iget-object v4, v2, Lcom/narvii/headlines/Headline;->content:Ljava/lang/String;

    iput-object v4, v3, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    .line 42
    iget-object v4, v2, Lcom/narvii/headlines/Headline;->mediaList:Ljava/util/List;

    iput-object v4, v3, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 43
    iget v4, v2, Lcom/narvii/headlines/Headline;->votesCount:I

    iput v4, v3, Lcom/narvii/model/Feed;->votesCount:I

    .line 44
    iget v4, v2, Lcom/narvii/headlines/Headline;->globalVotesCount:I

    iput v4, v3, Lcom/narvii/model/Feed;->globalVotesCount:I

    .line 45
    iget v4, v2, Lcom/narvii/headlines/Headline;->commentsCount:I

    iput v4, v3, Lcom/narvii/model/Feed;->commentsCount:I

    .line 46
    iget v4, v2, Lcom/narvii/headlines/Headline;->globalCommentsCount:I

    iput v4, v3, Lcom/narvii/model/Feed;->globalCommentsCount:I

    .line 47
    iget-object v4, v2, Lcom/narvii/headlines/Headline;->author:Lcom/narvii/model/User;

    iput-object v4, v3, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 48
    iget v4, v2, Lcom/narvii/headlines/Headline;->ndcId:I

    iput v4, v3, Lcom/narvii/model/Feed;->ndcId:I

    .line 49
    iget-object v4, v2, Lcom/narvii/headlines/Headline;->createdTime:Ljava/util/Date;

    iput-object v4, v3, Lcom/narvii/model/Feed;->createdTime:Ljava/util/Date;

    .line 50
    iget-object v4, v3, Lcom/narvii/model/Feed;->strategyInfo:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 51
    iget-object v2, v2, Lcom/narvii/headlines/Headline;->strategyInfo:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/narvii/model/Blog;->setStrategyInfo(Ljava/lang/String;)V

    .line 53
    :cond_4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0
.end method
