.class public Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;,
        Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;
    }
.end annotation


# instance fields
.field private dateFmt:Ljava/text/DateFormat;

.field private fanClubHeaderAdapter:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;

.field private item:Lcom/narvii/monetization/store/data/StoreItem;

.field private membershipService:Lcom/narvii/wallet/MembershipService;

.field private purchaseHelper:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

.field private renewAdapter:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method

.method private changeAutoRenewRequest(Z)V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    const-string v2, "isAutoRenew"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    const-string v3, "store/subscription/config/"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    const-string v3, "paymentContext"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->item:Lcom/narvii/monetization/store/data/StoreItem;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/narvii/monetization/store/data/StoreItem;->objectType()I

    .line 50
    move-result v1

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    const-string v3, "objectType"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->item:Lcom/narvii/monetization/store/data/StoreItem;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/narvii/monetization/store/data/StoreItem;->id()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    const-string v3, "objectId"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 71
    .line 72
    const-string v1, "api"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 82
    move-result-object v2

    .line 83
    .line 84
    new-instance v3, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$1;

    .line 85
    .line 86
    const-class v4, Lcom/narvii/model/api/ApiResponse;

    .line 87
    .line 88
    .line 89
    invoke-direct {v3, p0, v4, p1, v0}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$1;-><init>(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;Ljava/lang/Class;ZLcom/narvii/util/dialog/ProgressDialog;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 93
    return-void
.end method

.method private deleteWhenClosed()V
    .locals 0

    return-void
.end method

.method private refreshViews()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->renewAdapter:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->fanClubHeaderAdapter:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 15
    :cond_1
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)Ljava/text/DateFormat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->dateFmt:Ljava/text/DateFormat;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)Lcom/narvii/monetization/store/data/StoreItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->item:Lcom/narvii/monetization/store/data/StoreItem;

    return-object p0
.end method

.method static bridge synthetic v(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)Lcom/narvii/wallet/MembershipService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)Lcom/narvii/monetization/store/StoreItemPurchaseHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->purchaseHelper:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;Ljava/text/DateFormat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->dateFmt:Ljava/text/DateFormat;

    return-void
.end method

.method static bridge synthetic y(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->changeAutoRenewRequest(Z)V

    return-void
.end method

.method static bridge synthetic z(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->refreshViews()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;-><init>(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->fanClubHeaderAdapter:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 16
    .line 17
    new-instance v0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;-><init>(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->renewAdapter:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 26
    .line 27
    new-instance v0, Lcom/narvii/list/DividerAdapter;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    return-object v0
.end method

.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    .line 4
    .line 5
    const v1, -0xd25b19

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 9
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    const-class v0, Lcom/narvii/monetization/store/data/StoreItem;

    .line 10
    .line 11
    const-string v1, "storeItem"

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/monetization/store/data/StoreItem;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->item:Lcom/narvii/monetization/store/data/StoreItem;

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    check-cast p1, Lcom/narvii/monetization/store/data/StoreItem;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->item:Lcom/narvii/monetization/store/data/StoreItem;

    .line 39
    .line 40
    :goto_0
    iget-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->item:Lcom/narvii/monetization/store/data/StoreItem;

    .line 41
    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 46
    return-void

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    instance-of v0, p1, Lcom/narvii/model/StoreItemBaseObject;

    .line 53
    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 58
    return-void

    .line 59
    .line 60
    :cond_2
    const-string v0, "membership"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 67
    .line 68
    iput-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 69
    .line 70
    new-instance v0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 71
    .line 72
    .line 73
    invoke-direct {v0, p0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 74
    .line 75
    iput-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->purchaseHelper:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 76
    .line 77
    check-cast p1, Lcom/narvii/model/StoreItemBaseObject;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 81
    .line 82
    iget-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->purchaseHelper:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->setPurchaseEventListener(Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;)V

    .line 86
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2}, Lcom/narvii/util/ViewUtils;->setTopBottomPrefColor(Landroid/widget/ListView;Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "update"

    .line 5
    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 9
    .line 10
    instance-of v0, v0, Lcom/narvii/model/StoreItemBaseObject;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->item:Lcom/narvii/monetization/store/data/StoreItem;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/monetization/store/data/StoreItem;->id()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lcom/narvii/model/StoreItemBaseObject;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->item:Lcom/narvii/monetization/store/data/StoreItem;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lcom/narvii/model/StoreItemBaseObject;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/store/data/StoreItem;->setChangedRefObject(Lcom/narvii/model/NVObject;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-direct {p0}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->refreshViews()V

    .line 47
    :cond_1
    return-void
.end method

.method public onPurchaseCanceled()V
    .locals 0

    return-void
.end method

.method public onPurchaseFailed()V
    .locals 0

    return-void
.end method

.method public onPurchaseStart()V
    .locals 0

    return-void
.end method

.method public onPurchaseSuccessful(Lcom/narvii/model/NVObject;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    .line 7
    .line 8
    .line 9
    const v1, 0x7f120402

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v0

    .line 16
    move-object v2, v0

    .line 17
    .line 18
    check-cast v2, Lcom/narvii/app/NVActivity;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    const v3, 0x7f0801d7

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 37
    move-result-object v4

    .line 38
    .line 39
    .line 40
    const v5, 0x7f01006a

    .line 41
    .line 42
    const-wide/16 v6, 0x258

    .line 43
    .line 44
    .line 45
    invoke-virtual/range {v2 .. v7}, Lcom/narvii/app/NVActivity;->toastImageWithText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IJ)V

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 50
    move-result-object v0

    .line 51
    const/4 v2, 0x1

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 59
    .line 60
    :goto_0
    instance-of v0, p1, Lcom/narvii/model/IStoreItem;

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->item:Lcom/narvii/monetization/store/data/StoreItem;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/store/data/StoreItem;->setChangedRefObject(Lcom/narvii/model/NVObject;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->refreshViews()V

    .line 71
    .line 72
    :cond_1
    if-eqz p1, :cond_2

    .line 73
    .line 74
    new-instance v0, Lcom/narvii/notification/Notification;

    .line 75
    .line 76
    const-string v1, "update"

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 80
    .line 81
    const-string p1, "notification"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 91
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->item:Lcom/narvii/monetization/store/data/StoreItem;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "storeItem"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public onShowPurchaseDialog()V
    .locals 0

    return-void
.end method
