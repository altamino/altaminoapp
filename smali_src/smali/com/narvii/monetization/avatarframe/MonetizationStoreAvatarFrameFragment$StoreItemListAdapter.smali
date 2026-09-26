.class Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/monetization/store/StoreHelper;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, p2}, Lcom/narvii/monetization/store/StoreHelper;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->storeHelper:Lcom/narvii/monetization/store/StoreHelper;

    .line 17
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
    const-string v0, "/store/items"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string/jumbo v0, "sectionGroupId"

    .line 13
    .line 14
    const-string v1, "avatar-frame"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1

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

    .line 1
    .line 2
    new-instance p2, Lcom/narvii/monetization/store/StoreItemView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p3

    .line 7
    .line 8
    .line 9
    invoke-direct {p2, p3}, Lcom/narvii/monetization/store/StoreItemView;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/monetization/store/data/StoreItem;

    .line 12
    .line 13
    iget-object p3, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {p3}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->z(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/wallet/MembershipService;

    .line 17
    move-result-object p3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 21
    move-result p3

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p1, p3}, Lcom/narvii/monetization/store/StoreItemView;->setStoreItem(Lcom/narvii/monetization/store/data/StoreItem;Z)V

    .line 25
    .line 26
    iget-object p3, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    .line 27
    .line 28
    .line 29
    invoke-static {p3}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->A(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/monetization/store/data/StoreItem;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-static {p3, v0, p1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->E(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;Lcom/narvii/monetization/store/data/StoreItem;Lcom/narvii/monetization/store/data/StoreItem;)Z

    .line 34
    move-result p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p1}, Lcom/narvii/monetization/store/StoreItemView;->setIsSelected(Z)V

    .line 38
    .line 39
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 40
    const/4 p3, -0x1

    .line 41
    .line 42
    .line 43
    invoke-direct {p1, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
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

    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->dataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    iput-object v1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->dataList:Ljava/util/ArrayList;

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->dataList:Ljava/util/ArrayList;

    .line 18
    .line 19
    :goto_0
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->dataList:Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->y(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/monetization/store/data/StoreItem;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->dataList:Ljava/util/ArrayList;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->y(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/monetization/store/data/StoreItem;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/narvii/monetization/store/data/StoreItem;->id()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->dataList:Ljava/util/ArrayList;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    .line 50
    .line 51
    .line 52
    invoke-static {v1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->y(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/monetization/store/data/StoreItem;

    .line 53
    move-result-object v1

    .line 54
    const/4 v2, 0x0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 61
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/monetization/store/data/StoreItem;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/monetization/store/data/StoreItem;

    .line 8
    .line 9
    iget v1, v0, Lcom/narvii/monetization/store/data/StoreItem;->refObjectType:I

    .line 10
    .line 11
    const/16 v2, 0x7a

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->H(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;Lcom/narvii/monetization/store/data/StoreItem;)V

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$StoreItemListAdapter;->storeHelper:Lcom/narvii/monetization/store/StoreHelper;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lcom/narvii/monetization/store/StoreHelper;->openStoreItemDetail(Lcom/narvii/monetization/store/data/StoreItem;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0

    .line 1
    .line 2
    or-int/lit16 p1, p1, 0x200

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 6
    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/narvii/monetization/store/data/StoreItemListResponse;

    return-object v0
.end method
