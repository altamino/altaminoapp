.class public Lcom/narvii/headlines/HeadlineListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/api/ListResponse;-><init>()V

    .line 4
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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/headlines/HeadlineListResponse;->getHeadlinePostList()Ljava/util/List;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    .line 19
    if-eqz v2, :cond_7

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    check-cast v2, Lcom/narvii/headlines/Headline;

    .line 26
    .line 27
    iget-object v3, v2, Lcom/narvii/headlines/Headline;->refObject:Lcom/narvii/model/Feed;

    .line 28
    .line 29
    if-eqz v3, :cond_3

    .line 30
    .line 31
    iget-object v4, v3, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 32
    .line 33
    if-nez v4, :cond_1

    .line 34
    .line 35
    iget-object v4, v2, Lcom/narvii/headlines/Headline;->author:Lcom/narvii/model/User;

    .line 36
    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    iput-object v4, v3, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 40
    .line 41
    :cond_1
    iget v4, v2, Lcom/narvii/headlines/Headline;->ndcId:I

    .line 42
    .line 43
    iput v4, v3, Lcom/narvii/model/Feed;->ndcId:I

    .line 44
    .line 45
    iget-object v4, v3, Lcom/narvii/model/Feed;->strategyInfo:Ljava/lang/String;

    .line 46
    .line 47
    if-nez v4, :cond_2

    .line 48
    .line 49
    iget-object v2, v2, Lcom/narvii/headlines/Headline;->strategyInfo:Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v2}, Lcom/narvii/model/Feed;->setStrategyInfo(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_3
    iget v3, v2, Lcom/narvii/headlines/Headline;->refObjectType:I

    .line 59
    const/4 v4, 0x2

    .line 60
    .line 61
    if-ne v3, v4, :cond_5

    .line 62
    .line 63
    new-instance v3, Lcom/narvii/model/Item;

    .line 64
    .line 65
    .line 66
    invoke-direct {v3}, Lcom/narvii/model/Item;-><init>()V

    .line 67
    .line 68
    iget-object v4, v2, Lcom/narvii/headlines/Headline;->refObjectId:Ljava/lang/String;

    .line 69
    .line 70
    iput-object v4, v3, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v4, v2, Lcom/narvii/headlines/Headline;->title:Ljava/lang/String;

    .line 73
    .line 74
    iput-object v4, v3, Lcom/narvii/model/Item;->label:Ljava/lang/String;

    .line 75
    .line 76
    iget v4, v2, Lcom/narvii/headlines/Headline;->votedValue:I

    .line 77
    .line 78
    iput v4, v3, Lcom/narvii/model/Feed;->votedValue:I

    .line 79
    .line 80
    iget v4, v2, Lcom/narvii/headlines/Headline;->globalVotedValue:I

    .line 81
    .line 82
    iput v4, v3, Lcom/narvii/model/Feed;->globalVotedValue:I

    .line 83
    .line 84
    iget-object v4, v2, Lcom/narvii/headlines/Headline;->content:Ljava/lang/String;

    .line 85
    .line 86
    iput-object v4, v3, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v4, v2, Lcom/narvii/headlines/Headline;->mediaList:Ljava/util/List;

    .line 89
    .line 90
    iput-object v4, v3, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 91
    .line 92
    iget v4, v2, Lcom/narvii/headlines/Headline;->votesCount:I

    .line 93
    .line 94
    iput v4, v3, Lcom/narvii/model/Feed;->votesCount:I

    .line 95
    .line 96
    iget v4, v2, Lcom/narvii/headlines/Headline;->globalVotesCount:I

    .line 97
    .line 98
    iput v4, v3, Lcom/narvii/model/Feed;->globalVotesCount:I

    .line 99
    .line 100
    iget v4, v2, Lcom/narvii/headlines/Headline;->commentsCount:I

    .line 101
    .line 102
    iput v4, v3, Lcom/narvii/model/Feed;->commentsCount:I

    .line 103
    .line 104
    iget v4, v2, Lcom/narvii/headlines/Headline;->globalCommentsCount:I

    .line 105
    .line 106
    iput v4, v3, Lcom/narvii/model/Feed;->globalCommentsCount:I

    .line 107
    .line 108
    iget-object v4, v2, Lcom/narvii/headlines/Headline;->author:Lcom/narvii/model/User;

    .line 109
    .line 110
    iput-object v4, v3, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 111
    .line 112
    iget v4, v2, Lcom/narvii/headlines/Headline;->ndcId:I

    .line 113
    .line 114
    iput v4, v3, Lcom/narvii/model/Feed;->ndcId:I

    .line 115
    .line 116
    iget-object v4, v2, Lcom/narvii/headlines/Headline;->createdTime:Ljava/util/Date;

    .line 117
    .line 118
    iput-object v4, v3, Lcom/narvii/model/Feed;->createdTime:Ljava/util/Date;

    .line 119
    .line 120
    iget-object v4, v3, Lcom/narvii/model/Feed;->strategyInfo:Ljava/lang/String;

    .line 121
    .line 122
    if-nez v4, :cond_4

    .line 123
    .line 124
    iget-object v2, v2, Lcom/narvii/headlines/Headline;->strategyInfo:Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v2}, Lcom/narvii/model/Feed;->setStrategyInfo(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    goto :goto_0

    .line 132
    :cond_5
    const/4 v4, 0x1

    .line 133
    .line 134
    if-ne v3, v4, :cond_0

    .line 135
    .line 136
    new-instance v3, Lcom/narvii/model/Blog;

    .line 137
    .line 138
    .line 139
    invoke-direct {v3}, Lcom/narvii/model/Blog;-><init>()V

    .line 140
    .line 141
    iget-object v4, v2, Lcom/narvii/headlines/Headline;->refObjectId:Ljava/lang/String;

    .line 142
    .line 143
    iput-object v4, v3, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    .line 144
    .line 145
    iget v4, v2, Lcom/narvii/headlines/Headline;->refObjectSubtype:I

    .line 146
    .line 147
    iput v4, v3, Lcom/narvii/model/Blog;->type:I

    .line 148
    .line 149
    iget-object v4, v2, Lcom/narvii/headlines/Headline;->title:Ljava/lang/String;

    .line 150
    .line 151
    iput-object v4, v3, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    .line 152
    .line 153
    iget v4, v2, Lcom/narvii/headlines/Headline;->votedValue:I

    .line 154
    .line 155
    iput v4, v3, Lcom/narvii/model/Feed;->votedValue:I

    .line 156
    .line 157
    iget v4, v2, Lcom/narvii/headlines/Headline;->globalVotedValue:I

    .line 158
    .line 159
    iput v4, v3, Lcom/narvii/model/Feed;->globalVotedValue:I

    .line 160
    .line 161
    iget-object v4, v2, Lcom/narvii/headlines/Headline;->content:Ljava/lang/String;

    .line 162
    .line 163
    iput-object v4, v3, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    .line 164
    .line 165
    iget-object v4, v2, Lcom/narvii/headlines/Headline;->mediaList:Ljava/util/List;

    .line 166
    .line 167
    iput-object v4, v3, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 168
    .line 169
    iget v4, v2, Lcom/narvii/headlines/Headline;->votesCount:I

    .line 170
    .line 171
    iput v4, v3, Lcom/narvii/model/Feed;->votesCount:I

    .line 172
    .line 173
    iget v4, v2, Lcom/narvii/headlines/Headline;->globalVotesCount:I

    .line 174
    .line 175
    iput v4, v3, Lcom/narvii/model/Feed;->globalVotesCount:I

    .line 176
    .line 177
    iget v4, v2, Lcom/narvii/headlines/Headline;->commentsCount:I

    .line 178
    .line 179
    iput v4, v3, Lcom/narvii/model/Feed;->commentsCount:I

    .line 180
    .line 181
    iget v4, v2, Lcom/narvii/headlines/Headline;->globalCommentsCount:I

    .line 182
    .line 183
    iput v4, v3, Lcom/narvii/model/Feed;->globalCommentsCount:I

    .line 184
    .line 185
    iget-object v4, v2, Lcom/narvii/headlines/Headline;->author:Lcom/narvii/model/User;

    .line 186
    .line 187
    iput-object v4, v3, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 188
    .line 189
    iget v4, v2, Lcom/narvii/headlines/Headline;->ndcId:I

    .line 190
    .line 191
    iput v4, v3, Lcom/narvii/model/Feed;->ndcId:I

    .line 192
    .line 193
    iget-object v4, v2, Lcom/narvii/headlines/Headline;->createdTime:Ljava/util/Date;

    .line 194
    .line 195
    iput-object v4, v3, Lcom/narvii/model/Feed;->createdTime:Ljava/util/Date;

    .line 196
    .line 197
    iget-object v4, v3, Lcom/narvii/model/Feed;->strategyInfo:Ljava/lang/String;

    .line 198
    .line 199
    if-nez v4, :cond_6

    .line 200
    .line 201
    iget-object v2, v2, Lcom/narvii/headlines/Headline;->strategyInfo:Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3, v2}, Lcom/narvii/model/Blog;->setStrategyInfo(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    :cond_6
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    :cond_7
    return-object v0
.end method
