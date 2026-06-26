.class public abstract Lcom/narvii/monetization/StoreItemOwnStatusController;
.super Ljava/lang/Object;
.source "StoreItemOwnStatusController.java"

# interfaces
.implements Lcom/narvii/monetization/StoreItemStatusView$ViewClickListener;
.implements Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;


# instance fields
.field bigStyle:Z

.field protected iStoreItem:Lcom/narvii/model/IStoreItem;

.field ignoreGlobalSope:Z

.field protected final isGlobalSpace:Z

.field private localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private membershipService:Lcom/narvii/wallet/MembershipService;

.field nvContext:Lcom/narvii/app/NVContext;

.field private receiver:Landroid/content/BroadcastReceiver;

.field public source:Ljava/lang/String;

.field private storeItemPurchaseHelper:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

.field protected storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;)V
    .locals 1

    const/4 v0, 0x1

    .line 118
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/monetization/StoreItemOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/narvii/monetization/StoreItemOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;ZZ)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Store Product Detail Page"

    .line 61
    iput-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->source:Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/narvii/monetization/StoreItemOwnStatusController$1;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/StoreItemOwnStatusController$1;-><init>(Lcom/narvii/monetization/StoreItemOwnStatusController;)V

    iput-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->receiver:Landroid/content/BroadcastReceiver;

    .line 80
    iput-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    .line 81
    iput-object p2, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 82
    iput-boolean p3, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->bigStyle:Z

    .line 83
    iput-boolean p4, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->ignoreGlobalSope:Z

    .line 85
    invoke-direct {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->updateViewStyle()V

    .line 87
    invoke-virtual {p2, p0}, Lcom/narvii/monetization/StoreItemStatusView;->setViewClickListener(Lcom/narvii/monetization/StoreItemStatusView$ViewClickListener;)V

    const-string p3, "membership"

    .line 88
    invoke-interface {p1, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/wallet/MembershipService;

    iput-object p3, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->membershipService:Lcom/narvii/wallet/MembershipService;

    const-string p3, "config"

    .line 90
    invoke-interface {p1, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/config/ConfigService;

    .line 91
    invoke-virtual {p3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->isGlobalSpace:Z

    .line 93
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p3

    iput-object p3, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 94
    invoke-virtual {p2, p0}, Lcom/narvii/monetization/StoreItemStatusView;->setController(Lcom/narvii/monetization/StoreItemOwnStatusController;)V

    .line 96
    new-instance p2, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-direct {p2, p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemPurchaseHelper:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 97
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemPurchaseHelper:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    iget-object p2, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->source:Ljava/lang/String;

    iput-object p2, p1, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->source:Ljava/lang/String;

    .line 98
    invoke-virtual {p1, p0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->setPurchaseEventListener(Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;)V

    return-void
.end method

.method private needLogin()Z
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 207
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 208
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 210
    :try_start_0
    iget-object v2, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    instance-of v2, v2, Lcom/narvii/app/NVFragment;

    if-eqz v2, :cond_0

    .line 211
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    check-cast v1, Lcom/narvii/app/NVFragment;

    invoke-virtual {v1, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object v2, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    instance-of v2, v2, Lcom/narvii/app/NVActivity;

    if-eqz v2, :cond_1

    .line 213
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    check-cast v1, Lcom/narvii/app/NVActivity;

    invoke-virtual {v1, v0}, Lcom/narvii/app/NVActivity;->ensureLogin(Landroid/content/Intent;)V

    goto :goto_0

    .line 215
    :cond_1
    iget-object v2, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v2, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    .line 216
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f0b08

    invoke-static {v0, v2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "login"

    .line 219
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private showExpireDialog()V
    .locals 2

    .line 194
    new-instance v0, Lcom/narvii/membership/MembershipExpireDialog;

    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 195
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->source:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/membership/MembershipExpireDialog;->source:Ljava/lang/String;

    .line 196
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private showMembershipDialog()V
    .locals 2

    .line 200
    new-instance v0, Lcom/narvii/membership/MembershipHintDialog;

    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 201
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->source:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/membership/MembershipHintDialog;->source:Ljava/lang/String;

    .line 202
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private statistics(Lcom/narvii/model/IStoreItem;)V
    .locals 0

    return-void
.end method

.method private updateViewStyle()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    iget-boolean v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->bigStyle:Z

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemStatusView;->setBigStyle(Z)V

    .line 103
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    iget-boolean v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->bigStyle:Z

    invoke-virtual {p0, v1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getActivatedStrId(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemStatusView;->setActivatedStrId(I)V

    .line 104
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    iget-boolean v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->bigStyle:Z

    invoke-virtual {p0, v1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getGetStrId(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemStatusView;->setGetStrId(I)V

    .line 105
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    iget-boolean v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->bigStyle:Z

    invoke-virtual {p0, v1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getActivateStrId(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemStatusView;->setActivateStrId(I)V

    .line 108
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getActivatedDrawableId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemStatusView;->setActivatedDrawableId(I)V

    .line 109
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getActivateDrawableId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemStatusView;->setActivateDrawableId(I)V

    .line 110
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getGetDrawableId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemStatusView;->setGetDrawableId(I)V

    .line 112
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getActivatedTextColorId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemStatusView;->setActivatedTextColorId(I)V

    .line 114
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getDownloadProgressDrawableId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemStatusView;->setDownloadProgressDrawableId(I)V

    return-void
.end method


# virtual methods
.method protected anyOneCanGet()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected canUseInGlobal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract createActivateRequest()Lcom/narvii/util/http/ApiRequest;
.end method

.method protected getActivateDrawableId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getActivateStrId(Z)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getActivatedDrawableId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getActivatedStrId(Z)I
.end method

.method protected getActivatedTextColorId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getActivatedToastTextId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getDownloadProgressDrawableId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getGetDrawableId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getGetStrId(Z)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getStoreItem()Lcom/narvii/model/IStoreItem;
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    return-object v0
.end method

.method protected getStoreItemStatus(Lcom/narvii/model/IStoreItem;)I
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->ignoreGlobalSope:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->isGlobalSpace:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->canUseInGlobal()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->isTotalOwned()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x7

    return p1

    .line 173
    :cond_0
    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->isTotalOwned()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x5

    return p1

    .line 175
    :cond_1
    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->isTotalOwned()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x4

    return p1

    .line 178
    :cond_2
    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->availableInAnyStore()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    const/16 p1, 0x8

    return p1
.end method

.method protected hasProgressBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivated()V
    .locals 1

    const/4 v0, 0x1

    .line 301
    invoke-virtual {p0, v0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onActivated(Z)V

    return-void
.end method

.method public onActivated(Z)V
    .locals 2

    .line 305
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->showToast()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->showActivatedToast()V

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->updateViewsWhenActivated()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 310
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    iget-boolean v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->ignoreGlobalSope:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->isGlobalSpace:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->canUseInGlobal()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    :goto_0
    invoke-virtual {p1, v0}, Lcom/narvii/monetization/StoreItemStatusView;->updateStatus(I)V

    .line 313
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->sendNotificationAfterActivated()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 314
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    instance-of v0, p1, Lcom/narvii/model/NVObject;

    if-eqz v0, :cond_3

    .line 315
    new-instance v0, Lcom/narvii/notification/Notification;

    check-cast p1, Lcom/narvii/model/NVObject;

    const-string v1, "update"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 316
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "notification"

    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 317
    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    :cond_3
    return-void
.end method

.method public onClickActivateItem()V
    .locals 4

    .line 347
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    if-nez v0, :cond_0

    return-void

    .line 351
    :cond_0
    invoke-direct {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->needLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 355
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->createActivateRequest()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "store"

    const-string v1, "activate api request is null"

    .line 358
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 362
    :cond_2
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    invoke-direct {p0, v1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->statistics(Lcom/narvii/model/IStoreItem;)V

    .line 364
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/narvii/monetization/StoreItemStatusView;->updateStatus(I)V

    .line 365
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 366
    new-instance v2, Lcom/narvii/monetization/StoreItemOwnStatusController$2;

    const-class v3, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/monetization/StoreItemOwnStatusController$2;-><init>(Lcom/narvii/monetization/StoreItemOwnStatusController;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public onClickGetItem()V
    .locals 4

    .line 239
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    if-nez v0, :cond_0

    return-void

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->needLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 248
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    invoke-interface {v1}, Lcom/narvii/model/IStoreItem;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    move-result-object v1

    .line 250
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->anyOneCanGet()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 251
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemPurchaseHelper:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-virtual {v0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->sendPurchaseRequest()V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_8

    .line 253
    invoke-virtual {v1}, Lcom/narvii/model/RestrictionInfo;->isSupported()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 257
    :cond_3
    iget v1, v1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 258
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 259
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemPurchaseHelper:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-virtual {v0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->sendPurchaseRequest()V

    goto :goto_1

    .line 261
    :cond_4
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v1}, Lcom/narvii/wallet/MembershipService;->hasMemberShipExpired()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 262
    invoke-direct {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->showExpireDialog()V

    goto :goto_1

    .line 264
    :cond_5
    invoke-direct {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->showMembershipDialog()V

    goto :goto_1

    :cond_6
    if-ne v1, v3, :cond_7

    .line 267
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemPurchaseHelper:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-virtual {v0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->sendPurchaseRequest()V

    goto :goto_1

    :cond_7
    const/4 v2, 0x4

    if-ne v1, v2, :cond_9

    .line 270
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemPurchaseHelper:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-virtual {v1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->openPurchaseDialogWithCheck()V

    goto :goto_1

    .line 254
    :cond_8
    :goto_0
    new-instance v1, Lcom/narvii/monetization/store/SuggestUpdateDialog;

    iget-object v2, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v1, v2}, Lcom/narvii/monetization/store/SuggestUpdateDialog;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    :cond_9
    :goto_1
    return-void
.end method

.method public onClickMemberShip()V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->hasMemberShipExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    invoke-direct {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->showExpireDialog()V

    goto :goto_0

    .line 233
    :cond_1
    invoke-direct {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->showMembershipDialog()V

    :goto_0
    return-void
.end method

.method public onClickUseItem()V
    .locals 2

    .line 421
    invoke-direct {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->needLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    invoke-interface {v0}, Lcom/narvii/model/IStoreItem;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 427
    iget v0, v0, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 428
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->useItem()V

    goto :goto_0

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->hasMemberShipExpired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 431
    invoke-direct {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->showExpireDialog()V

    goto :goto_0

    .line 433
    :cond_2
    invoke-direct {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->showMembershipDialog()V

    goto :goto_0

    .line 436
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->useItem()V

    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 411
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.MEMBERSHIP_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 412
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemPurchaseHelper:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-virtual {v0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->tryResumePurchaseConfirmFragment()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPurchaseCanceled()V
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemStatusView;->updateStatus(I)V

    return-void
.end method

.method public onPurchaseFailed()V
    .locals 0

    .line 485
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->updateViewStatus()V

    return-void
.end method

.method public onPurchaseStart()V
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemStatusView;->updateStatus(I)V

    return-void
.end method

.method protected abstract onPurchaseSuccess(Lcom/narvii/model/NVObject;)V
.end method

.method public onPurchaseSuccessful(Lcom/narvii/model/NVObject;)V
    .locals 3

    .line 466
    instance-of v0, p1, Lcom/narvii/model/IStoreItem;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    move-object v1, p1

    check-cast v1, Lcom/narvii/model/IStoreItem;

    invoke-interface {v1}, Lcom/narvii/model/IStoreItem;->getOwnershipInfo()Lcom/narvii/model/OwnershipInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/narvii/model/IStoreItem;->setOwnershipInfo(Lcom/narvii/model/OwnershipInfo;)V

    .line 468
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    invoke-interface {v1}, Lcom/narvii/model/IStoreItem;->isActivated()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/narvii/model/IStoreItem;->setActivated(Z)V

    .line 469
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->hasProgressBar()Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->updateViewStatus()V

    :cond_0
    if-eqz p1, :cond_1

    .line 474
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->sendNotificationAfterActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 475
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string v1, "update"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 476
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    const-string v2, "notification"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/notification/NotificationCenter;

    .line 477
    invoke-virtual {v1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 480
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onPurchaseSuccess(Lcom/narvii/model/NVObject;)V

    return-void
.end method

.method public onShowPurchaseDialog()V
    .locals 0

    return-void
.end method

.method protected sendNotificationAfterActivated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setStoreItem(Lcom/narvii/model/IStoreItem;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    invoke-virtual {v0}, Lcom/narvii/monetization/StoreItemStatusView;->isLoadingStatus()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    invoke-virtual {v0}, Lcom/narvii/monetization/StoreItemStatusView;->isDownloadingStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->setStoreItemInner(Lcom/narvii/model/IStoreItem;)V

    .line 161
    invoke-direct {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->updateViewStyle()V

    .line 162
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->updateViewStatus()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected setStoreItemInner(Lcom/narvii/model/IStoreItem;)V
    .locals 1

    .line 166
    iput-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 167
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemPurchaseHelper:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    return-void
.end method

.method protected showActivatedToast()V
    .locals 9

    .line 328
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getActivatedToastTextId()I

    move-result v0

    .line 329
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/narvii/app/NVActivity;

    const v2, 0x7f0f0062

    if-eqz v1, :cond_1

    .line 330
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/narvii/app/NVActivity;

    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f080148

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    .line 331
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0f0062

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f01004c

    const-wide/16 v7, 0x1f4

    .line 330
    invoke-virtual/range {v3 .. v8}, Lcom/narvii/app/NVActivity;->toastImageWithText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IJ)V

    goto :goto_2

    .line 333
    :cond_1
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const v0, 0x7f0f0062

    :goto_1
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    :goto_2
    return-void
.end method

.method protected showToast()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected updateDownloadingProgress(I)V
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    invoke-virtual {v0, p1}, Lcom/narvii/monetization/StoreItemStatusView;->updateDownloadingProgress(I)V

    return-void
.end method

.method protected updateViewStatus()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    if-nez v0, :cond_0

    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    invoke-virtual {p0, v0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getStoreItemStatus(Lcom/narvii/model/IStoreItem;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/narvii/monetization/StoreItemStatusView;->updateStatus(I)V

    return-void
.end method

.method protected updateViewsWhenActivated()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected useItem()V
    .locals 0

    return-void
.end method
