.class public Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;
.super Lcom/narvii/list/NVListFragment;
.source "StoreItemSubscriptionDetailFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;,
        Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;
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

    .line 63
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)Lcom/narvii/monetization/store/data/StoreItem;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->item:Lcom/narvii/monetization/store/data/StoreItem;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->refreshViews()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)Ljava/text/DateFormat;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->dateFmt:Ljava/text/DateFormat;

    return-object p0
.end method

.method static synthetic access$202(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;Ljava/text/DateFormat;)Ljava/text/DateFormat;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->dateFmt:Ljava/text/DateFormat;

    return-object p1
.end method

.method static synthetic access$300(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)Lcom/narvii/wallet/MembershipService;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)Lcom/narvii/monetization/store/StoreItemPurchaseHelper;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->purchaseHelper:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->changeAutoRenewRequest(Z)V

    return-void
.end method

.method private changeAutoRenewRequest(Z)V
    .locals 5

    .line 186
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 187
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 188
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    const-string v2, "isAutoRenew"

    .line 189
    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 191
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "store/subscription/config/"

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "paymentContext"

    .line 193
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 194
    iget-object v1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->item:Lcom/narvii/monetization/store/data/StoreItem;

    invoke-virtual {v1}, Lcom/narvii/monetization/store/data/StoreItem;->objectType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "objectType"

    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 195
    iget-object v1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->item:Lcom/narvii/monetization/store/data/StoreItem;

    invoke-virtual {v1}, Lcom/narvii/monetization/store/data/StoreItem;->id()Ljava/lang/String;

    move-result-object v1

    const-string v3, "objectId"

    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v1, "api"

    .line 198
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 199
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v2

    new-instance v3, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$1;

    const-class v4, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v3, p0, v4, p1, v0}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$1;-><init>(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;Ljava/lang/Class;ZLcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private deleteWhenClosed()V
    .locals 0

    return-void
.end method

.method private refreshViews()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->renewAdapter:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->fanClubHeaderAdapter:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 1

    .line 121
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 122
    new-instance v0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;-><init>(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->fanClubHeaderAdapter:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;

    .line 123
    iget-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->fanClubHeaderAdapter:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    new-instance v0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;-><init>(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->renewAdapter:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;

    .line 125
    iget-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->renewAdapter:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    new-instance v0, Lcom/narvii/list/DividerAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 127
    invoke-virtual {v0, p1}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object v0
.end method

.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 102
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xd25b19

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "storeItem"

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/monetization/store/data/StoreItem;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/store/data/StoreItem;

    iput-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->item:Lcom/narvii/monetization/store/data/StoreItem;

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/monetization/store/data/StoreItem;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/store/data/StoreItem;

    iput-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->item:Lcom/narvii/monetization/store/data/StoreItem;

    .line 82
    :goto_0
    iget-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->item:Lcom/narvii/monetization/store/data/StoreItem;

    if-nez p1, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void

    .line 87
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    .line 88
    instance-of v0, p1, Lcom/narvii/model/StoreItemBaseObject;

    if-nez v0, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void

    :cond_2
    const-string v0, "membership"

    .line 92
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/MembershipService;

    iput-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 94
    new-instance v0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->purchaseHelper:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 95
    iget-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->purchaseHelper:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    check-cast p1, Lcom/narvii/model/StoreItemBaseObject;

    invoke-virtual {v0, p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 96
    iget-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->purchaseHelper:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-virtual {p1, p0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->setPurchaseEventListener(Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;)V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 113
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 114
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    const/4 p2, 0x0

    .line 115
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 116
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/util/ViewUtils;->setTopBottomPrefColor(Landroid/widget/ListView;Landroid/content/Context;)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 142
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "update"

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/StoreItemBaseObject;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->item:Lcom/narvii/monetization/store/data/StoreItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/monetization/store/data/StoreItem;->id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/narvii/model/StoreItemBaseObject;

    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->item:Lcom/narvii/monetization/store/data/StoreItem;

    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/narvii/model/StoreItemBaseObject;

    invoke-virtual {v0, p1}, Lcom/narvii/monetization/store/data/StoreItem;->setChangedRefObject(Lcom/narvii/model/NVObject;)V

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->refreshViews()V

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

    .line 244
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    const v1, 0x7f0f03aa

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/narvii/app/NVActivity;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f080148

    invoke-static {v0, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f01004c

    const-wide/16 v6, 0x258

    invoke-virtual/range {v2 .. v7}, Lcom/narvii/app/NVActivity;->toastImageWithText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 249
    :goto_0
    instance-of v0, p1, Lcom/narvii/model/IStoreItem;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->item:Lcom/narvii/monetization/store/data/StoreItem;

    invoke-virtual {v0, p1}, Lcom/narvii/monetization/store/data/StoreItem;->setChangedRefObject(Lcom/narvii/model/NVObject;)V

    .line 251
    invoke-direct {p0}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->refreshViews()V

    :cond_1
    if-eqz p1, :cond_2

    .line 255
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string v1, "update"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    const-string p1, "notification"

    .line 256
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 257
    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 107
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 108
    iget-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->item:Lcom/narvii/monetization/store/data/StoreItem;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "storeItem"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onShowPurchaseDialog()V
    .locals 0

    return-void
.end method
