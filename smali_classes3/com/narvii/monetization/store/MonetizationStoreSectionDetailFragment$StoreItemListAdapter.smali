.class Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$StoreItemListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "MonetizationStoreSectionDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreItemListAdapter"
.end annotation


# instance fields
.field storeHelper:Lcom/narvii/monetization/store/StoreHelper;

.field final synthetic this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$StoreItemListAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

    .line 309
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 310
    new-instance p1, Lcom/narvii/monetization/store/StoreHelper;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/monetization/store/StoreHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$StoreItemListAdapter;->storeHelper:Lcom/narvii/monetization/store/StoreHelper;

    .line 311
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$StoreItemListAdapter;->storeHelper:Lcom/narvii/monetization/store/StoreHelper;

    const-string p2, "Category"

    iput-object p2, p1, Lcom/narvii/monetization/store/StoreHelper;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 331
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$StoreItemListAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

    const-string v1, "sectionGroupId"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "/store/items"

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 333
    invoke-virtual {v2, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    if-eqz p1, :cond_0

    const-string p1, "sticker"

    .line 334
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "start0"

    .line 335
    invoke-virtual {v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 337
    :cond_0
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1

    .line 316
    const-class v0, Lcom/narvii/monetization/store/data/StoreItem;

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 370
    new-instance p2, Lcom/narvii/monetization/store/StoreItemView;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/narvii/monetization/store/StoreItemView;-><init>(Landroid/content/Context;)V

    .line 371
    check-cast p1, Lcom/narvii/monetization/store/data/StoreItem;

    iget-object p3, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$StoreItemListAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

    invoke-static {p3}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->access$500(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)Lcom/narvii/wallet/MembershipService;

    move-result-object p3

    invoke-virtual {p3}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/narvii/monetization/store/StoreItemView;->setStoreItem(Lcom/narvii/monetization/store/data/StoreItem;Z)V

    .line 372
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p1, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 378
    instance-of v0, p3, Lcom/narvii/monetization/store/data/StoreItem;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$StoreItemListAdapter;->storeHelper:Lcom/narvii/monetization/store/StoreHelper;

    move-object v1, p3

    check-cast v1, Lcom/narvii/monetization/store/data/StoreItem;

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/store/StoreHelper;->openStoreItemDetail(Lcom/narvii/monetization/store/data/StoreItem;)V

    .line 381
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 4

    .line 342
    instance-of v0, p2, Lcom/narvii/monetization/store/data/StoreItemListResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "start0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    move-object v1, p2

    check-cast v1, Lcom/narvii/monetization/store/data/StoreItemListResponse;

    iget-object v1, v1, Lcom/narvii/monetization/store/data/StoreItemListResponse;->storeItemList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 344
    new-instance v2, Lcom/narvii/monetization/store/data/StoreItemStubStickCollection;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/monetization/store/data/StoreItemStubStickCollection;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    if-eqz v0, :cond_1

    .line 349
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$StoreItemListAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

    check-cast p2, Lcom/narvii/monetization/store/data/StoreItemListResponse;

    iget-object p2, p2, Lcom/narvii/monetization/store/data/StoreItemListResponse;->storeSection:Lcom/narvii/monetization/store/data/StoreSectionMini;

    invoke-static {p1, p2}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->access$400(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;Lcom/narvii/monetization/store/data/StoreSectionMini;)V

    :cond_1
    return-void
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0

    or-int/lit16 p1, p1, 0x200

    .line 326
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1

    .line 321
    const-class v0, Lcom/narvii/monetization/store/data/StoreItemListResponse;

    return-object v0
.end method
