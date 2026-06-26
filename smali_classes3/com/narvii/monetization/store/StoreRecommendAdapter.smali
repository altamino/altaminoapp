.class public Lcom/narvii/monetization/store/StoreRecommendAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "StoreRecommendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/monetization/store/data/StoreItem;",
        "Lcom/narvii/monetization/store/data/RecommendStoreItemListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private lbm:Landroid/support/v4/content/LocalBroadcastManager;

.field private membership:Lcom/narvii/wallet/MembershipService;

.field public objectId:Ljava/lang/String;

.field public objectType:I

.field preview:Z

.field private receiver:Landroid/content/BroadcastReceiver;

.field public sectionGroupId:Ljava/lang/String;

.field storeHelper:Lcom/narvii/monetization/store/StoreHelper;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 36
    new-instance v0, Lcom/narvii/monetization/store/StoreRecommendAdapter$1;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/store/StoreRecommendAdapter$1;-><init>(Lcom/narvii/monetization/store/StoreRecommendAdapter;)V

    iput-object v0, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->receiver:Landroid/content/BroadcastReceiver;

    .line 57
    iput-object p2, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->sectionGroupId:Ljava/lang/String;

    const/4 p2, 0x0

    .line 58
    iput-object p2, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->objectId:Ljava/lang/String;

    const/4 p2, -0x1

    .line 59
    iput p2, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->objectType:I

    const-string p2, "membership"

    .line 60
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/wallet/MembershipService;

    iput-object p2, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->membership:Lcom/narvii/wallet/MembershipService;

    .line 61
    new-instance p2, Lcom/narvii/monetization/store/StoreHelper;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/narvii/monetization/store/StoreHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->storeHelper:Lcom/narvii/monetization/store/StoreHelper;

    .line 62
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->storeHelper:Lcom/narvii/monetization/store/StoreHelper;

    const-string p2, "Recommended"

    iput-object p2, p1, Lcom/narvii/monetization/store/StoreHelper;->source:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 36
    new-instance v0, Lcom/narvii/monetization/store/StoreRecommendAdapter$1;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/store/StoreRecommendAdapter$1;-><init>(Lcom/narvii/monetization/store/StoreRecommendAdapter;)V

    iput-object v0, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->receiver:Landroid/content/BroadcastReceiver;

    .line 47
    iput-object p2, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->sectionGroupId:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->objectId:Ljava/lang/String;

    .line 49
    iput p3, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->objectType:I

    const-string p2, "membership"

    .line 50
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/wallet/MembershipService;

    iput-object p2, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->membership:Lcom/narvii/wallet/MembershipService;

    .line 51
    new-instance p2, Lcom/narvii/monetization/store/StoreHelper;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/narvii/monetization/store/StoreHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->storeHelper:Lcom/narvii/monetization/store/StoreHelper;

    .line 52
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->storeHelper:Lcom/narvii/monetization/store/StoreHelper;

    const-string p2, "Recommended"

    iput-object p2, p1, Lcom/narvii/monetization/store/StoreHelper;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 95
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/store/recommend-items"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->sectionGroupId:Ljava/lang/String;

    const-string v1, "sectionGroupId"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 96
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->objectId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->objectType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, "objectId"

    .line 97
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget v1, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->objectType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "objectType"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 99
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/monetization/store/data/StoreItem;",
            ">;"
        }
    .end annotation

    .line 85
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

    .line 127
    instance-of v0, p1, Lcom/narvii/monetization/store/data/StoreItem;

    if-eqz v0, :cond_0

    .line 128
    check-cast p1, Lcom/narvii/monetization/store/data/StoreItem;

    const v0, 0x7f0b0089

    .line 129
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/monetization/store/StoreItemView;

    .line 130
    iget-object p3, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->membership:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {p3}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/narvii/monetization/store/StoreItemView;->setStoreItem(Lcom/narvii/monetization/store/data/StoreItem;Z)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onAttach()V
    .locals 4

    .line 67
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 69
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    .line 70
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.MEMBERSHIP_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 76
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onDetach()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 114
    instance-of v0, p3, Lcom/narvii/monetization/store/data/StoreItem;

    if-eqz v0, :cond_1

    .line 115
    iget-boolean p1, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->preview:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const p3, 0x7f0f10b1

    const/4 p4, 0x0

    invoke-static {p1, p3, p4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return p2

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->storeHelper:Lcom/narvii/monetization/store/StoreHelper;

    check-cast p3, Lcom/narvii/monetization/store/data/StoreItem;

    invoke-virtual {p1, p3}, Lcom/narvii/monetization/store/StoreHelper;->openStoreItemDetail(Lcom/narvii/monetization/store/data/StoreItem;)V

    return p2

    .line 122
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/monetization/store/data/RecommendStoreItemListResponse;",
            ">;"
        }
    .end annotation

    .line 90
    const-class v0, Lcom/narvii/monetization/store/data/RecommendStoreItemListResponse;

    return-object v0
.end method

.method public setPreview(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->preview:Z

    return-void
.end method
