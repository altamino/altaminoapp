.class public Lcom/narvii/monetization/avatarframe/AvatarFrameOwnStatusController;
.super Lcom/narvii/monetization/StoreItemOwnStatusController;
.source "AvatarFrameOwnStatusController.java"

# interfaces
.implements Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$OnAvatarFrameChangedListener;


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private avatarFrameHelper:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

.field private final nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;)V
    .locals 1

    const/4 v0, 0x1

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/monetization/StoreItemOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Z)V

    .line 35
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    const-string p2, "account"

    .line 36
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/AccountService;

    iput-object p2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameOwnStatusController;->accountService:Lcom/narvii/account/AccountService;

    .line 37
    new-instance p2, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    invoke-direct {p2, p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameOwnStatusController;->avatarFrameHelper:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    .line 38
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameOwnStatusController;->avatarFrameHelper:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    const-string p2, "Store Product Detail Page"

    iput-object p2, p1, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->source:Ljava/lang/String;

    .line 39
    invoke-virtual {p1, p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->setAvatarFrameListener(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$OnAvatarFrameChangedListener;)V

    return-void
.end method


# virtual methods
.method protected canUseInGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected createActivateRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getActivatedStrId(Z)I
    .locals 0

    const p1, 0x7f0f111a

    return p1
.end method

.method protected getStoreItemStatus(Lcom/narvii/model/IStoreItem;)I
    .locals 2

    .line 81
    instance-of v0, p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    if-eqz v0, :cond_0

    .line 82
    move-object v0, p1

    check-cast v0, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 83
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameOwnStatusController;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, v1, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isIdEquals(Lcom/narvii/model/NVObject;Lcom/narvii/model/NVObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x6

    return p1

    .line 88
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getStoreItemStatus(Lcom/narvii/model/IStoreItem;)I

    move-result p1

    return p1
.end method

.method protected hasProgressBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivated(Z)V
    .locals 2

    .line 93
    invoke-super {p0, p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onActivated(Z)V

    .line 94
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    instance-of v0, p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Lcom/narvii/notification/Notification;

    check-cast p1, Lcom/narvii/model/NVObject;

    const-string v1, "update"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 96
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "notification"

    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 97
    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    :cond_0
    return-void
.end method

.method public onAvatarFrameChanged()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    .line 116
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemStatusView;->updateStatus(I)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 49
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 54
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onDestroy()V

    return-void
.end method

.method protected onPurchaseSuccess(Lcom/narvii/model/NVObject;)V
    .locals 1

    .line 69
    instance-of v0, p1, Lcom/narvii/model/IStoreItem;

    if-eqz v0, :cond_0

    .line 70
    check-cast p1, Lcom/narvii/model/IStoreItem;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->setStoreItemInner(Lcom/narvii/model/IStoreItem;)V

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    instance-of p1, p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    if-eqz p1, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onActivated()V

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onActivated()V

    :goto_0
    return-void
.end method

.method protected updateViewStatus()V
    .locals 2

    .line 59
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->updateViewStatus()V

    .line 60
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;

    if-nez v1, :cond_1

    instance-of v0, v0, Lcom/narvii/monetization/avatarframe/StubCurrentAvatarFrame;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 61
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method protected useItem()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    instance-of v1, v0, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameOwnStatusController;->avatarFrameHelper:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    check-cast v0, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    iget-boolean v2, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->isGlobalSpace:Z

    invoke-virtual {v1, v0, v2}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->showAvatarSetDialog(Lcom/narvii/monetization/avatarframe/AvatarFrame;Z)V

    :cond_0
    return-void
.end method
