.class Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;
.super Lcom/narvii/feed/FeedListAdapter;
.source "ItemDetailFragment.java"


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

    .line 1678
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 1679
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeedListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "Favorite Related Pages"

    .line 1680
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 1703
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/item/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 1704
    invoke-virtual {v1}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/tag-related"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 1705
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 1695
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->access$3600(Lcom/narvii/item/detail/ItemDetailFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1698
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1724
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    if-ne p3, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1727
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/feed/BaseFeedListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onLoginResult(ZLandroid/content/Intent;)V
    .locals 0

    .line 1719
    invoke-super {p0, p1, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->onLoginResult(ZLandroid/content/Intent;)V

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

    .line 1711
    iget v0, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->access$3700(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/item/detail/ItemDetailFragment$RelatedBlogHeaderAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1712
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$TagRelatedAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->access$3700(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/item/detail/ItemDetailFragment$RelatedBlogHeaderAdapter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/narvii/item/detail/ItemDetailFragment$RelatedBlogHeaderAdapter;->setListEmpty(Z)V

    .line 1714
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/feed/BaseFeedListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

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

    .line 1685
    const-class v0, Lcom/narvii/item/detail/TagRelatedListResponse;

    return-object v0
.end method

.method public showListEnd(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
