.class public Lcom/narvii/headlines/HeadlineListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "HeadlineListResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/model/Feed;",
        ">;"
    }
.end annotation


# instance fields
.field public communityInfoMapping:Ljava/util/Map;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/Community;
        keyAs = Ljava/lang/Integer;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field public headlinePostList:Ljava/util/List;
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

.field public hsid:Ljava/lang/String;

.field public numberOfJoinedCommunities:I

.field public userProfileMapping:Ljava/util/Map;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/User;
        keyAs = Ljava/lang/Integer;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/narvii/model/api/ListResponse;-><init>()V

    return-void
.end method


# virtual methods
.method protected getHeadlinePostList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/headlines/Headline;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/narvii/headlines/HeadlineListResponse;->headlinePostList:Ljava/util/List;

    return-object v0
.end method

.method public list()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Feed;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-virtual {p0}, Lcom/narvii/headlines/HeadlineListResponse;->getHeadlinePostList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/headlines/Headline;

    .line 43
    iget-object v3, v2, Lcom/narvii/headlines/Headline;->refObject:Lcom/narvii/model/Feed;

    if-eqz v3, :cond_3

    .line 45
    iget-object v4, v3, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-nez v4, :cond_1

    iget-object v4, v2, Lcom/narvii/headlines/Headline;->author:Lcom/narvii/model/User;

    if-eqz v4, :cond_1

    .line 46
    iput-object v4, v3, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 48
    :cond_1
    iget v4, v2, Lcom/narvii/headlines/Headline;->ndcId:I

    iput v4, v3, Lcom/narvii/model/Feed;->ndcId:I

    .line 49
    iget-object v4, v3, Lcom/narvii/model/Feed;->strategyInfo:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 50
    iget-object v2, v2, Lcom/narvii/headlines/Headline;->strategyInfo:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/narvii/model/Feed;->setStrategyInfo(Ljava/lang/String;)V

    .line 52
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_3
    iget v3, v2, Lcom/narvii/headlines/Headline;->refObjectType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 54
    new-instance v3, Lcom/narvii/model/Item;

    invoke-direct {v3}, Lcom/narvii/model/Item;-><init>()V

    .line 55
    iget-object v4, v2, Lcom/narvii/headlines/Headline;->refObjectId:Ljava/lang/String;

    iput-object v4, v3, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    .line 56
    iget-object v4, v2, Lcom/narvii/headlines/Headline;->title:Ljava/lang/String;

    iput-object v4, v3, Lcom/narvii/model/Item;->label:Ljava/lang/String;

    .line 57
    iget v4, v2, Lcom/narvii/headlines/Headline;->votedValue:I

    iput v4, v3, Lcom/narvii/model/Feed;->votedValue:I

    .line 58
    iget v4, v2, Lcom/narvii/headlines/Headline;->globalVotedValue:I

    iput v4, v3, Lcom/narvii/model/Feed;->globalVotedValue:I

    .line 59
    iget-object v4, v2, Lcom/narvii/headlines/Headline;->content:Ljava/lang/String;

    iput-object v4, v3, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    .line 60
    iget-object v4, v2, Lcom/narvii/headlines/Headline;->mediaList:Ljava/util/List;

    iput-object v4, v3, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 61
    iget v4, v2, Lcom/narvii/headlines/Headline;->votesCount:I

    iput v4, v3, Lcom/narvii/model/Feed;->votesCount:I

    .line 62
    iget v4, v2, Lcom/narvii/headlines/Headline;->globalVotesCount:I

    iput v4, v3, Lcom/narvii/model/Feed;->globalVotesCount:I

    .line 63
    iget v4, v2, Lcom/narvii/headlines/Headline;->commentsCount:I

    iput v4, v3, Lcom/narvii/model/Feed;->commentsCount:I

    .line 64
    iget v4, v2, Lcom/narvii/headlines/Headline;->globalCommentsCount:I

    iput v4, v3, Lcom/narvii/model/Feed;->globalCommentsCount:I

    .line 65
    iget-object v4, v2, Lcom/narvii/headlines/Headline;->author:Lcom/narvii/model/User;

    iput-object v4, v3, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 66
    iget v4, v2, Lcom/narvii/headlines/Headline;->ndcId:I

    iput v4, v3, Lcom/narvii/model/Feed;->ndcId:I

    .line 67
    iget-object v4, v2, Lcom/narvii/headlines/Headline;->createdTime:Ljava/util/Date;

    iput-object v4, v3, Lcom/narvii/model/Feed;->createdTime:Ljava/util/Date;

    .line 68
    iget-object v4, v3, Lcom/narvii/model/Feed;->strategyInfo:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 69
    iget-object v2, v2, Lcom/narvii/headlines/Headline;->strategyInfo:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/narvii/model/Feed;->setStrategyInfo(Ljava/lang/String;)V

    .line 71
    :cond_4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 73
    new-instance v3, Lcom/narvii/model/Blog;

    invoke-direct {v3}, Lcom/narvii/model/Blog;-><init>()V

    .line 74
    iget-object v4, v2, Lcom/narvii/headlines/Headline;->refObjectId:Ljava/lang/String;

    iput-object v4, v3, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    .line 75
    iget v4, v2, Lcom/narvii/headlines/Headline;->refObjectSubtype:I

    iput v4, v3, Lcom/narvii/model/Blog;->type:I

    .line 76
    iget-object v4, v2, Lcom/narvii/headlines/Headline;->title:Ljava/lang/String;

    iput-object v4, v3, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    .line 77
    iget v4, v2, Lcom/narvii/headlines/Headline;->votedValue:I

    iput v4, v3, Lcom/narvii/model/Feed;->votedValue:I

    .line 78
    iget v4, v2, Lcom/narvii/headlines/Headline;->globalVotedValue:I

    iput v4, v3, Lcom/narvii/model/Feed;->globalVotedValue:I

    .line 79
    iget-object v4, v2, Lcom/narvii/headlines/Headline;->content:Ljava/lang/String;

    iput-object v4, v3, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    .line 80
    iget-object v4, v2, Lcom/narvii/headlines/Headline;->mediaList:Ljava/util/List;

    iput-object v4, v3, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 81
    iget v4, v2, Lcom/narvii/headlines/Headline;->votesCount:I

    iput v4, v3, Lcom/narvii/model/Feed;->votesCount:I

    .line 82
    iget v4, v2, Lcom/narvii/headlines/Headline;->globalVotesCount:I

    iput v4, v3, Lcom/narvii/model/Feed;->globalVotesCount:I

    .line 83
    iget v4, v2, Lcom/narvii/headlines/Headline;->commentsCount:I

    iput v4, v3, Lcom/narvii/model/Feed;->commentsCount:I

    .line 84
    iget v4, v2, Lcom/narvii/headlines/Headline;->globalCommentsCount:I

    iput v4, v3, Lcom/narvii/model/Feed;->globalCommentsCount:I

    .line 85
    iget-object v4, v2, Lcom/narvii/headlines/Headline;->author:Lcom/narvii/model/User;

    iput-object v4, v3, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 86
    iget v4, v2, Lcom/narvii/headlines/Headline;->ndcId:I

    iput v4, v3, Lcom/narvii/model/Feed;->ndcId:I

    .line 87
    iget-object v4, v2, Lcom/narvii/headlines/Headline;->createdTime:Ljava/util/Date;

    iput-object v4, v3, Lcom/narvii/model/Feed;->createdTime:Ljava/util/Date;

    .line 88
    iget-object v4, v3, Lcom/narvii/model/Feed;->strategyInfo:Ljava/lang/String;

    if-nez v4, :cond_6

    .line 89
    iget-object v2, v2, Lcom/narvii/headlines/Headline;->strategyInfo:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/narvii/model/Blog;->setStrategyInfo(Ljava/lang/String;)V

    .line 91
    :cond_6
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    return-object v0
.end method
