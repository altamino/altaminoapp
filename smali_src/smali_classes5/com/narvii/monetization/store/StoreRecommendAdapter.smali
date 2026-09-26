.class public Lcom/narvii/monetization/store/StoreRecommendAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"


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
.field private lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

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

    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    new-instance v0, Lcom/narvii/monetization/store/StoreRecommendAdapter$1;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/store/StoreRecommendAdapter$1;-><init>(Lcom/narvii/monetization/store/StoreRecommendAdapter;)V

    iput-object v0, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->receiver:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->sectionGroupId:Ljava/lang/String;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->objectId:Ljava/lang/String;

    const/4 p2, -0x1

    iput p2, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->objectType:I

    const-string p2, "membership"

    .line 7
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/wallet/MembershipService;

    iput-object p2, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->membership:Lcom/narvii/wallet/MembershipService;

    .line 8
    new-instance p2, Lcom/narvii/monetization/store/StoreHelper;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/narvii/monetization/store/StoreHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->storeHelper:Lcom/narvii/monetization/store/StoreHelper;

    const-string p1, "Recommended"

    iput-object p1, p2, Lcom/narvii/monetization/store/StoreHelper;->source:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 2
    new-instance v0, Lcom/narvii/monetization/store/StoreRecommendAdapter$1;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/store/StoreRecommendAdapter$1;-><init>(Lcom/narvii/monetization/store/StoreRecommendAdapter;)V

    iput-object v0, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->receiver:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->sectionGroupId:Ljava/lang/String;

    iput-object p4, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->objectId:Ljava/lang/String;

    iput p3, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->objectType:I

    const-string p2, "membership"

    .line 3
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/wallet/MembershipService;

    iput-object p2, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->membership:Lcom/narvii/wallet/MembershipService;

    .line 4
    new-instance p2, Lcom/narvii/monetization/store/StoreHelper;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/narvii/monetization/store/StoreHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->storeHelper:Lcom/narvii/monetization/store/StoreHelper;

    const-string p1, "Recommended"

    iput-object p1, p2, Lcom/narvii/monetization/store/StoreHelper;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "/store/recommend-items"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string v0, "sectionGroupId"

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->sectionGroupId:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->objectId:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget v1, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->objectType:I

    .line 25
    const/4 v2, -0x1

    .line 26
    .line 27
    if-eq v1, v2, :cond_0

    .line 28
    .line 29
    const-string v1, "objectId"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    iget v1, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->objectType:I

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    const-string v2, "objectType"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 48
    move-result-object p1

    .line 49
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
    instance-of v0, p1, Lcom/narvii/monetization/store/data/StoreItem;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/monetization/store/data/StoreItem;

    .line 7
    .line 8
    .line 9
    const v0, 0x7f0d009f

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    check-cast p2, Lcom/narvii/monetization/store/StoreItemView;

    .line 16
    .line 17
    iget-object p3, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->membership:Lcom/narvii/wallet/MembershipService;

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
    return-object p2

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    return-object p1
.end method

.method public onAttach()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->receiver:Landroid/content/BroadcastReceiver;

    .line 16
    .line 17
    new-instance v2, Landroid/content/IntentFilter;

    .line 18
    .line 19
    const-string v3, "com.narvii.action.MEMBERSHIP_CHANGED"

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 26
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->receiver:Landroid/content/BroadcastReceiver;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onDetach()V

    .line 11
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/monetization/store/data/StoreItem;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->preview:Z

    .line 7
    const/4 p2, 0x1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    const p3, 0x7f1211ac

    .line 17
    const/4 p4, 0x0

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p3, p4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 25
    return p2

    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->storeHelper:Lcom/narvii/monetization/store/StoreHelper;

    .line 28
    .line 29
    check-cast p3, Lcom/narvii/monetization/store/data/StoreItem;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p3}, Lcom/narvii/monetization/store/StoreHelper;->openStoreItemDetail(Lcom/narvii/monetization/store/data/StoreItem;)V

    .line 33
    return p2

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 37
    move-result p1

    .line 38
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

    const-class v0, Lcom/narvii/monetization/store/data/RecommendStoreItemListResponse;

    return-object v0
.end method

.method public setPreview(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/monetization/store/StoreRecommendAdapter;->preview:Z

    return-void
.end method
