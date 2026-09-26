.class Lcom/narvii/feed/FrontFeedListFragment$NewestAdapter;
.super Lcom/narvii/feed/FeedListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/FrontFeedListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NewestAdapter"
.end annotation


# instance fields
.field pendingForFeatured:Z

.field final synthetic this$0:Lcom/narvii/feed/FrontFeedListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/feed/FrontFeedListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$NewestAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeedListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string p1, "Front Page Feed"

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    .line 10
    const/4 p1, 0x1

    .line 11
    .line 12
    iput p1, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    .line 13
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$NewestAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedAdapter:Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-boolean p1, p1, Lcom/narvii/feed/FeaturedFeedAdapter;->featureLoadFinished:Z

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/narvii/feed/FrontFeedListFragment$NewestAdapter;->pendingForFeatured:Z

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    const-string v0, "/feed/blog-all"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 31
    .line 32
    iput-boolean p1, p0, Lcom/narvii/feed/FrontFeedListFragment$NewestAdapter;->pendingForFeatured:Z

    .line 33
    const/4 p1, 0x0

    .line 34
    return-object p1
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 1
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
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$NewestAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedAdapter:Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result p2

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    check-cast p2, Lcom/narvii/model/Feed;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    .line 40
    invoke-static {v0, p2}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "LatestList"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$NewestAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedAdapter:Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, v0, Lcom/narvii/feed/FeaturedFeedAdapter;->featureLoadFinished:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/feed/BaseFeedListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    .line 4
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    return-object v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/BlogListResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/api/BlogListResponse;

    return-object v0
.end method
