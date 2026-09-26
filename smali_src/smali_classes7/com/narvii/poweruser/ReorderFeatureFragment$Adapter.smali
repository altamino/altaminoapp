.class Lcom/narvii/poweruser/ReorderFeatureFragment$Adapter;
.super Lcom/narvii/feed/FeedListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poweruser/ReorderFeatureFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/ReorderFeatureFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/poweruser/ReorderFeatureFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/ReorderFeatureFragment$Adapter;->this$0:Lcom/narvii/poweruser/ReorderFeatureFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeedListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string p1, "Reorder Featured Posts"

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public autoLoadNextPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createLoadMoreItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/poweruser/ReorderFeatureFragment$Adapter;->pageSize()I

    .line 18
    move-result v1

    .line 19
    .line 20
    if-ge v0, v1, :cond_0

    .line 21
    .line 22
    new-instance p2, Landroid/view/View;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    return-object p2

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->createLoadMoreItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "/feed/featured"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Feed;",
            ">;I)",
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
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lcom/narvii/model/Feed;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->getRealFeed()Lcom/narvii/model/Feed;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/narvii/model/Feed;->featureType()I

    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x2

    .line 31
    .line 32
    if-eq v2, v3, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-super {p0, v0, p2}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    iget-object p2, p0, Lcom/narvii/poweruser/ReorderFeatureFragment$Adapter;->this$0:Lcom/narvii/poweruser/ReorderFeatureFragment;

    .line 43
    .line 44
    iget-object p2, p2, Lcom/narvii/poweruser/ReorderFeatureFragment;->originalFeeds:Ljava/util/List;

    .line 45
    .line 46
    .line 47
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    return-object p1
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    instance-of p2, p1, Lcom/narvii/model/Feed;

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    .line 8
    :cond_0
    check-cast p1, Lcom/narvii/model/Feed;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getRealFeed()Lcom/narvii/model/Feed;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0d023b

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    .line 26
    move-result-object p3

    .line 27
    .line 28
    .line 29
    const v0, 0x7f0a06d5

    .line 30
    .line 31
    if-nez p3, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object p3

    .line 36
    .line 37
    check-cast p3, Lcom/narvii/widget/ThumbImageView;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/poweruser/ReorderFeatureFragment$Adapter;->this$0:Lcom/narvii/poweruser/ReorderFeatureFragment;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    const v1, 0x7f080474

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    goto :goto_0

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object p3

    .line 59
    .line 60
    check-cast p3, Lcom/narvii/widget/ThumbImageView;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3, v0}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 68
    .line 69
    .line 70
    :goto_0
    const p3, 0x7f0a0e9e

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    move-result-object p3

    .line 75
    .line 76
    check-cast p3, Landroid/widget/TextView;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    const p3, 0x7f0a039d

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    move-result-object p3

    .line 91
    .line 92
    check-cast p3, Landroid/widget/TextView;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    .line 99
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    return-object p2
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "Lcom/narvii/model/api/ListResponse<",
            "+",
            "Lcom/narvii/model/Feed;",
            ">;I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/feed/BaseFeedListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    .line 7
    return-void
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/api/ListResponse<",
            "+",
            "Lcom/narvii/model/Feed;",
            ">;>;"
        }
    .end annotation

    const-class v0, Lcom/narvii/feed/FeaturedResponse;

    return-object v0
.end method
