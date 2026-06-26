.class public Lcom/narvii/link/snippet/FeedLinkSnippet;
.super Lcom/narvii/link/snippet/NVLinkSnippet;
.source "FeedLinkSnippet.java"


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

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/narvii/link/snippet/NVLinkSnippet;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V

    return-void
.end method

.method private getFeedLayoutId(Lcom/narvii/model/Feed;)I
    .locals 3

    .line 138
    instance-of v0, p1, Lcom/narvii/model/Blog;

    const v1, 0x7f0b0441

    if-eqz v0, :cond_6

    .line 139
    check-cast p1, Lcom/narvii/model/Blog;

    .line 140
    iget v0, p1, Lcom/narvii/model/Blog;->type:I

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 p1, 0x6

    if-eq v0, p1, :cond_1

    const/4 p1, 0x7

    if-eq v0, p1, :cond_0

    const/16 p1, 0x9

    if-eq v0, p1, :cond_5

    goto :goto_0

    :cond_0
    const p1, 0x7f0b0440

    return p1

    :cond_1
    const p1, 0x7f0b0633

    return p1

    .line 153
    :cond_2
    iget-object p1, p1, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz p1, :cond_7

    return v1

    :cond_3
    const p1, 0x7f0b0632

    return p1

    .line 148
    :cond_4
    iget-object p1, p1, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    instance-of p1, p1, Lcom/narvii/model/Item;

    if-eqz p1, :cond_7

    :cond_5
    return v1

    .line 162
    :cond_6
    instance-of p1, p1, Lcom/narvii/model/Item;

    if-eqz p1, :cond_7

    return v1

    :cond_7
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected getDetailView()Landroid/view/View;
    .locals 9

    .line 34
    iget-object v0, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->shareObject:Lcom/narvii/model/NVObject;

    move-object v1, v0

    check-cast v1, Lcom/narvii/model/Feed;

    .line 35
    instance-of v2, v0, Lcom/narvii/model/Blog;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 36
    move-object v2, v0

    check-cast v2, Lcom/narvii/model/Blog;

    .line 37
    iget v2, v2, Lcom/narvii/model/Blog;->type:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    .line 39
    check-cast v0, Lcom/narvii/model/Blog;

    iget-object v1, v0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    .line 49
    :cond_1
    instance-of v5, v1, Lcom/narvii/model/Blog;

    if-eqz v5, :cond_2

    .line 50
    move-object v5, v1

    check-cast v5, Lcom/narvii/model/Blog;

    .line 51
    iget v5, v5, Lcom/narvii/model/Blog;->type:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_3

    .line 58
    invoke-direct {p0, v1}, Lcom/narvii/link/snippet/FeedLinkSnippet;->getFeedLayoutId(Lcom/narvii/model/Feed;)I

    move-result v6

    if-nez v6, :cond_4

    return-object v2

    :cond_3
    const/4 v6, 0x0

    .line 63
    :cond_4
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Feed;

    if-nez v5, :cond_f

    .line 66
    iget-object v5, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v5, v6, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/narvii/feed/FeedListItem;

    .line 68
    iget-object v6, v5, Lcom/narvii/feed/FeedListItem;->toolbar:Lcom/narvii/feed/FeedToolbarLayout;

    const v7, 0x7f090455

    invoke-static {v6, v7, v4}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    if-eqz v0, :cond_5

    .line 69
    iget-object v0, v5, Lcom/narvii/feed/FeedListItem;->toolbar:Lcom/narvii/feed/FeedToolbarLayout;

    if-eqz v0, :cond_5

    const v6, 0x7f090a34

    .line 70
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_5

    .line 72
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 77
    :cond_5
    iget-object v0, p0, Lcom/narvii/link/snippet/LinkSnippet;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v0}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result v0

    invoke-virtual {v1, v0, v4}, Lcom/narvii/model/Feed;->setVotedValue(ZI)V

    .line 79
    instance-of v0, v1, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_8

    .line 80
    move-object v6, v1

    check-cast v6, Lcom/narvii/model/Blog;

    .line 81
    iget v7, v6, Lcom/narvii/model/Blog;->type:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_7

    .line 83
    iget-object v7, v6, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    if-eqz v7, :cond_6

    .line 84
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/model/PollOption;

    .line 85
    iput v4, v8, Lcom/narvii/model/PollOption;->votedValue:I

    goto :goto_2

    :cond_6
    const/4 v7, 0x1

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    .line 90
    :goto_3
    iput-object v2, v6, Lcom/narvii/model/Blog;->quizResultOfCurrentUser:Lcom/narvii/model/CurrentQuizzesResult;

    goto :goto_4

    :cond_8
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_9

    const v2, 0x7f09085d

    .line 94
    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/high16 v6, 0x8000000

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_9
    if-eqz v0, :cond_a

    .line 96
    move-object v0, v1

    check-cast v0, Lcom/narvii/model/Blog;

    iget v0, v0, Lcom/narvii/model/Blog;->type:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_a

    invoke-virtual {v1}, Lcom/narvii/model/Feed;->isFansOnly()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 97
    iput-boolean v3, v1, Lcom/narvii/model/Feed;->needHidden:Z

    .line 99
    :cond_a
    invoke-virtual {v5, v1}, Lcom/narvii/feed/FeedListItem;->setFeed(Lcom/narvii/model/Feed;)V

    .line 101
    new-instance v0, Lcom/narvii/image/ImageLoadTracker;

    invoke-direct {v0}, Lcom/narvii/image/ImageLoadTracker;-><init>()V

    invoke-virtual {v5, v0}, Lcom/narvii/feed/FeedListItem;->setUpSnippetImageLoadTracker(Lcom/narvii/image/ImageLoadTracker;)V

    .line 104
    iget-object v0, v5, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_d

    .line 105
    :cond_b
    iget-object v0, v5, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    const v0, 0x7f090a5c

    .line 106
    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 107
    invoke-static {v0, v4}, Lcom/narvii/util/ViewUtils;->setMarginTop(Landroid/view/View;I)V

    .line 111
    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_e

    .line 112
    iget-object v0, v5, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    const/4 v1, 0x5

    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    :cond_e
    return-object v5

    .line 119
    :cond_f
    new-instance v0, Lcom/narvii/link/view/ExternalLinkSnippetView;

    iget-object v2, p0, Lcom/narvii/link/snippet/LinkSnippet;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/narvii/link/view/ExternalLinkSnippetView;-><init>(Landroid/content/Context;)V

    .line 120
    invoke-virtual {v0, v1}, Lcom/narvii/link/view/ExternalLinkSnippetView;->setExternalFeed(Lcom/narvii/model/Feed;)V

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

    .line 127
    iget-object v0, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->linkInfo:Lcom/narvii/share/LinkInfo;

    iget v0, v0, Lcom/narvii/share/LinkInfo;->objectType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v1, 0x83

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 132
    :cond_0
    const-class v0, Lcom/narvii/model/api/ItemResponse;

    return-object v0

    .line 130
    :cond_1
    const-class v0, Lcom/narvii/model/api/BlogResponse;

    return-object v0
.end method
