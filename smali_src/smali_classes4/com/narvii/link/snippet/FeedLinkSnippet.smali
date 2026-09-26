.class public Lcom/narvii/link/snippet/FeedLinkSnippet;
.super Lcom/narvii/link/snippet/NVLinkSnippet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/link/snippet/NVLinkSnippet<",
        "Lcom/narvii/model/Feed;",
        "Lcom/narvii/model/api/FeedResponse<",
        "+",
        "Lcom/narvii/model/Feed;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/link/snippet/NVLinkSnippet;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V

    .line 4
    return-void
.end method

.method private getFeedLayoutId(Lcom/narvii/model/Feed;)I
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/Blog;

    .line 3
    .line 4
    .line 5
    const v1, 0x7f0d0476

    .line 6
    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    check-cast p1, Lcom/narvii/model/Blog;

    .line 10
    .line 11
    iget v0, p1, Lcom/narvii/model/Blog;->type:I

    .line 12
    .line 13
    if-eqz v0, :cond_4

    .line 14
    const/4 v2, 0x1

    .line 15
    .line 16
    if-eq v0, v2, :cond_3

    .line 17
    const/4 v2, 0x3

    .line 18
    .line 19
    if-eq v0, v2, :cond_4

    .line 20
    const/4 v2, 0x4

    .line 21
    .line 22
    if-eq v0, v2, :cond_2

    .line 23
    const/4 v2, 0x5

    .line 24
    .line 25
    if-eq v0, v2, :cond_1

    .line 26
    const/4 p1, 0x6

    .line 27
    .line 28
    if-eq v0, p1, :cond_0

    .line 29
    const/4 p1, 0x7

    .line 30
    .line 31
    if-eq v0, p1, :cond_4

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_0
    const p1, 0x7f0d06eb

    .line 36
    return p1

    .line 37
    .line 38
    :cond_1
    iget-object p1, p1, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 39
    .line 40
    if-eqz p1, :cond_6

    .line 41
    return v1

    .line 42
    .line 43
    .line 44
    :cond_2
    const p1, 0x7f0d06ea

    .line 45
    return p1

    .line 46
    .line 47
    :cond_3
    iget-object p1, p1, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 48
    .line 49
    instance-of p1, p1, Lcom/narvii/model/Item;

    .line 50
    .line 51
    if-eqz p1, :cond_6

    .line 52
    return v1

    .line 53
    .line 54
    .line 55
    :cond_4
    const p1, 0x7f0d0475

    .line 56
    return p1

    .line 57
    .line 58
    :cond_5
    instance-of p1, p1, Lcom/narvii/model/Item;

    .line 59
    .line 60
    if-eqz p1, :cond_6

    .line 61
    return v1

    .line 62
    :cond_6
    :goto_0
    const/4 p1, 0x0

    .line 63
    return p1
.end method


# virtual methods
.method protected getDetailView()Landroid/view/View;
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->shareObject:Lcom/narvii/model/NVObject;

    .line 3
    move-object v1, v0

    .line 4
    .line 5
    check-cast v1, Lcom/narvii/model/Feed;

    .line 6
    .line 7
    instance-of v2, v0, Lcom/narvii/model/Blog;

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    move-object v2, v0

    .line 13
    .line 14
    check-cast v2, Lcom/narvii/model/Blog;

    .line 15
    .line 16
    iget v2, v2, Lcom/narvii/model/Blog;->type:I

    .line 17
    const/4 v5, 0x2

    .line 18
    .line 19
    if-ne v2, v5, :cond_0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/model/Blog;

    .line 22
    .line 23
    iget-object v1, v0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 24
    move v0, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v0, v4

    .line 27
    :goto_0
    const/4 v2, 0x0

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    return-object v2

    .line 31
    .line 32
    :cond_1
    instance-of v5, v1, Lcom/narvii/model/Blog;

    .line 33
    .line 34
    if-eqz v5, :cond_2

    .line 35
    move-object v5, v1

    .line 36
    .line 37
    check-cast v5, Lcom/narvii/model/Blog;

    .line 38
    .line 39
    iget v5, v5, Lcom/narvii/model/Blog;->type:I

    .line 40
    .line 41
    const/16 v6, 0x8

    .line 42
    .line 43
    if-ne v5, v6, :cond_2

    .line 44
    move v5, v3

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move v5, v4

    .line 47
    .line 48
    :goto_1
    if-nez v5, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, v1}, Lcom/narvii/link/snippet/FeedLinkSnippet;->getFeedLayoutId(Lcom/narvii/model/Feed;)I

    .line 52
    move-result v6

    .line 53
    .line 54
    if-nez v6, :cond_4

    .line 55
    return-object v2

    .line 56
    :cond_3
    move v6, v4

    .line 57
    .line 58
    .line 59
    :cond_4
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    check-cast v1, Lcom/narvii/model/Feed;

    .line 63
    .line 64
    if-nez v5, :cond_e

    .line 65
    .line 66
    iget-object v5, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->inflater:Landroid/view/LayoutInflater;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, v6, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 70
    move-result-object v5

    .line 71
    .line 72
    check-cast v5, Lcom/narvii/feed/FeedListItem;

    .line 73
    .line 74
    iget-object v6, v5, Lcom/narvii/feed/FeedListItem;->toolbar:Lcom/narvii/feed/FeedToolbarLayout;

    .line 75
    .line 76
    .line 77
    const v7, 0x7f0a058c

    .line 78
    .line 79
    .line 80
    invoke-static {v6, v7, v4}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 81
    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    iget-object v0, v5, Lcom/narvii/feed/FeedListItem;->toolbar:Lcom/narvii/feed/FeedToolbarLayout;

    .line 85
    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    .line 89
    const v6, 0x7f0a0cfb

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    check-cast v0, Landroid/view/ViewStub;

    .line 96
    .line 97
    if-eqz v0, :cond_5

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 101
    .line 102
    :cond_5
    iget-object v0, p0, Lcom/narvii/link/snippet/LinkSnippet;->nvContext:Lcom/narvii/app/NVContext;

    .line 103
    .line 104
    .line 105
    invoke-static {v0}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    .line 106
    move-result v0

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v0, v4}, Lcom/narvii/model/Feed;->setVotedValue(ZI)V

    .line 110
    .line 111
    instance-of v0, v1, Lcom/narvii/model/Blog;

    .line 112
    .line 113
    if-eqz v0, :cond_8

    .line 114
    move-object v6, v1

    .line 115
    .line 116
    check-cast v6, Lcom/narvii/model/Blog;

    .line 117
    .line 118
    iget v7, v6, Lcom/narvii/model/Blog;->type:I

    .line 119
    const/4 v8, 0x4

    .line 120
    .line 121
    if-ne v7, v8, :cond_7

    .line 122
    .line 123
    iget-object v7, v6, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    .line 124
    .line 125
    if-eqz v7, :cond_6

    .line 126
    .line 127
    .line 128
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 129
    move-result-object v7

    .line 130
    .line 131
    .line 132
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    move-result v8

    .line 134
    .line 135
    if-eqz v8, :cond_6

    .line 136
    .line 137
    .line 138
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    move-result-object v8

    .line 140
    .line 141
    check-cast v8, Lcom/narvii/model/PollOption;

    .line 142
    .line 143
    iput v4, v8, Lcom/narvii/model/PollOption;->votedValue:I

    .line 144
    goto :goto_2

    .line 145
    :cond_6
    move v7, v3

    .line 146
    goto :goto_3

    .line 147
    :cond_7
    move v7, v4

    .line 148
    .line 149
    :goto_3
    iput-object v2, v6, Lcom/narvii/model/Blog;->quizResultOfCurrentUser:Lcom/narvii/model/CurrentQuizzesResult;

    .line 150
    .line 151
    if-eqz v7, :cond_8

    .line 152
    .line 153
    .line 154
    const v2, 0x7f0a0b17

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 158
    move-result-object v2

    .line 159
    .line 160
    const/high16 v6, 0x8000000

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 164
    .line 165
    :cond_8
    if-eqz v0, :cond_9

    .line 166
    move-object v0, v1

    .line 167
    .line 168
    check-cast v0, Lcom/narvii/model/Blog;

    .line 169
    .line 170
    iget v0, v0, Lcom/narvii/model/Blog;->type:I

    .line 171
    const/4 v2, 0x7

    .line 172
    .line 173
    if-ne v0, v2, :cond_9

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->isFansOnly()Z

    .line 177
    move-result v0

    .line 178
    .line 179
    if-eqz v0, :cond_9

    .line 180
    .line 181
    iput-boolean v3, v1, Lcom/narvii/model/Feed;->needHidden:Z

    .line 182
    .line 183
    .line 184
    :cond_9
    invoke-virtual {v5, v1}, Lcom/narvii/feed/FeedListItem;->setFeed(Lcom/narvii/model/Feed;)V

    .line 185
    .line 186
    new-instance v0, Lcom/narvii/image/ImageLoadTracker;

    .line 187
    .line 188
    .line 189
    invoke-direct {v0}, Lcom/narvii/image/ImageLoadTracker;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v5, v0}, Lcom/narvii/feed/FeedListItem;->setUpSnippetImageLoadTracker(Lcom/narvii/image/ImageLoadTracker;)V

    .line 193
    .line 194
    iget-object v0, v5, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    .line 195
    .line 196
    if-eqz v0, :cond_a

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 200
    move-result v0

    .line 201
    .line 202
    if-eqz v0, :cond_c

    .line 203
    .line 204
    :cond_a
    iget-object v0, v5, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    .line 205
    .line 206
    if-eqz v0, :cond_b

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 210
    move-result v0

    .line 211
    .line 212
    if-eqz v0, :cond_c

    .line 213
    .line 214
    .line 215
    :cond_b
    const v0, 0x7f0a0d45

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 219
    move-result-object v0

    .line 220
    .line 221
    .line 222
    invoke-static {v0, v4}, Lcom/narvii/util/ViewUtils;->setMarginTop(Landroid/view/View;I)V

    .line 223
    .line 224
    :cond_c
    iget-object v0, v5, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    .line 225
    .line 226
    if-eqz v0, :cond_d

    .line 227
    const/4 v1, 0x5

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v1}, Landroid/view/View;->setTextAlignment(I)V

    .line 231
    :cond_d
    return-object v5

    .line 232
    .line 233
    :cond_e
    new-instance v0, Lcom/narvii/link/view/ExternalLinkSnippetView;

    .line 234
    .line 235
    iget-object v2, p0, Lcom/narvii/link/snippet/LinkSnippet;->context:Landroid/content/Context;

    .line 236
    .line 237
    .line 238
    invoke-direct {v0, v2}, Lcom/narvii/link/view/ExternalLinkSnippetView;-><init>(Landroid/content/Context;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v1}, Lcom/narvii/link/view/ExternalLinkSnippetView;->setExternalFeed(Lcom/narvii/model/Feed;)V

    .line 242
    return-object v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/api/FeedResponse<",
            "+",
            "Lcom/narvii/model/Feed;",
            ">;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->linkInfo:Lcom/narvii/share/LinkInfo;

    .line 3
    .line 4
    iget v0, v0, Lcom/narvii/share/LinkInfo;->objectType:I

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    const/4 v1, 0x2

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    const/16 v1, 0x83

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    const/4 v0, 0x0

    .line 16
    return-object v0

    .line 17
    .line 18
    :cond_0
    const-class v0, Lcom/narvii/model/api/ItemResponse;

    .line 19
    return-object v0

    .line 20
    .line 21
    :cond_1
    const-class v0, Lcom/narvii/model/api/BlogResponse;

    .line 22
    return-object v0
.end method
