.class Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;
.super Lcom/narvii/feed/FeedListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/item/detail/ItemDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TagRelatedAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/item/detail/ItemDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/item/detail/ItemDetailFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeedListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string p1, "Favorite Related Pages"

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v1, "/item/"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "/tag-related"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->access$3100(Lcom/narvii/item/detail/ItemDetailFragment;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 3
    .line 4
    if-ne p3, v0, :cond_0

    .line 5
    const/4 p1, 0x1

    .line 6
    return p1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/feed/BaseFeedListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public onLoginResult(ZLandroid/content/Intent;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->onLoginResult(ZLandroid/content/Intent;)V

    .line 4
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 2
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
    iget v0, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    .line 3
    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->O(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/item/detail/ItemDetailFragment$RelatedBlogHeaderAdapter;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->O(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/item/detail/ItemDetailFragment$RelatedBlogHeaderAdapter;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 32
    move-result v1

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v1, 0x0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 39
    .line 40
    .line 41
    :goto_1
    invoke-virtual {v0, v1}, Lcom/narvii/item/detail/ItemDetailFragment$RelatedBlogHeaderAdapter;->setListEmpty(Z)V

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/feed/BaseFeedListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 45
    return-void
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

    const-class v0, Lcom/narvii/item/detail/TagRelatedListResponse;

    return-object v0
.end method

.method public showListEnd(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
