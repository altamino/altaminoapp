.class Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "MonetizationStoreAvatarFrameFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreItemListAdapter"
.end annotation


# instance fields
.field private dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/monetization/store/data/StoreItem;",
            ">;"
        }
    .end annotation
.end field

.field storeHelper:Lcom/narvii/monetization/store/StoreHelper;

.field final synthetic this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    .line 425
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 426
    new-instance p1, Lcom/narvii/monetization/store/StoreHelper;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/monetization/store/StoreHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->storeHelper:Lcom/narvii/monetization/store/StoreHelper;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 446
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/store/items"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "sectionGroupId"

    const-string v1, "avatar-frame"

    .line 447
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 448
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1

    .line 431
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
    .locals 1

    .line 492
    new-instance p2, Lcom/narvii/monetization/store/StoreItemView;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/narvii/monetization/store/StoreItemView;-><init>(Landroid/content/Context;)V

    .line 493
    check-cast p1, Lcom/narvii/monetization/store/data/StoreItem;

    .line 494
    iget-object p3, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    invoke-static {p3}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->access$1100(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/wallet/MembershipService;

    move-result-object p3

    invoke-virtual {p3}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/narvii/monetization/store/StoreItemView;->setStoreItem(Lcom/narvii/monetization/store/data/StoreItem;Z)V

    .line 495
    iget-object p3, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    invoke-static {p3}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->access$500(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/monetization/store/data/StoreItem;

    move-result-object v0

    invoke-static {p3, v0, p1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->access$1200(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;Lcom/narvii/monetization/store/data/StoreItem;Lcom/narvii/monetization/store/data/StoreItem;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/narvii/monetization/store/StoreItemView;->setIsSelected(Z)V

    .line 496
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p1, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->dataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .line 453
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 455
    iput-object v1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->dataList:Ljava/util/ArrayList;

    goto :goto_0

    .line 457
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->dataList:Ljava/util/ArrayList;

    .line 460
    :goto_0
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 461
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    invoke-static {v0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->access$400(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/monetization/store/data/StoreItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->dataList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    invoke-static {v1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->access$400(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/monetization/store/data/StoreItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/monetization/store/data/StoreItem;->id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 463
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->dataList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    invoke-static {v2}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->access$400(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/monetization/store/data/StoreItem;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 466
    :cond_1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 502
    instance-of v0, p3, Lcom/narvii/monetization/store/data/StoreItem;

    if-eqz v0, :cond_1

    .line 503
    move-object v0, p3

    check-cast v0, Lcom/narvii/monetization/store/data/StoreItem;

    iget v1, v0, Lcom/narvii/monetization/store/data/StoreItem;->refObjectType:I

    const/16 v2, 0x7a

    if-ne v1, v2, :cond_0

    .line 504
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    invoke-static {v1, v0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->access$600(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;Lcom/narvii/monetization/store/data/StoreItem;)V

    goto :goto_0

    .line 506
    :cond_0
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->storeHelper:Lcom/narvii/monetization/store/StoreHelper;

    invoke-virtual {v1, v0}, Lcom/narvii/monetization/store/StoreHelper;->openStoreItemDetail(Lcom/narvii/monetization/store/data/StoreItem;)V

    .line 510
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0

    or-int/lit16 p1, p1, 0x200

    .line 441
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1

    .line 436
    const-class v0, Lcom/narvii/monetization/store/data/StoreItemListResponse;

    return-object v0
.end method
