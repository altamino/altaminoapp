.class public Lcom/narvii/monetization/avatarframe/AvatarFrameOwnStatusController;
.super Lcom/narvii/monetization/StoreItemOwnStatusController;
.source "SourceFile"

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

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/monetization/StoreItemOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Z)V

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    const-string p2, "account"

    .line 3
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/AccountService;

    iput-object p2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameOwnStatusController;->accountService:Lcom/narvii/account/AccountService;

    .line 4
    new-instance p2, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    invoke-direct {p2, p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameOwnStatusController;->avatarFrameHelper:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    const-string p1, "Store Product Detail Page"

    iput-object p1, p2, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->source:Ljava/lang/String;

    .line 5
    invoke-virtual {p2, p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->setAvatarFrameListener(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$OnAvatarFrameChangedListener;)V

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

    const p1, 0x7f121225

    return p1
.end method

.method protected getStoreItemStatus(Lcom/narvii/model/IStoreItem;)I
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameOwnStatusController;->accountService:Lcom/narvii/account/AccountService;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, v1, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isIdEquals(Lcom/narvii/model/NVObject;Lcom/narvii/model/NVObject;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    const/4 p1, 0x6

    .line 25
    return p1

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getStoreItemStatus(Lcom/narvii/model/IStoreItem;)I

    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method protected hasProgressBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivated(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onActivated(Z)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 6
    .line 7
    instance-of p1, p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Lcom/narvii/notification/Notification;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/model/NVObject;

    .line 16
    .line 17
    const-string v1, "update"

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    .line 23
    .line 24
    const-string v1, "notification"

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 34
    :cond_0
    return-void
.end method

.method public onAvatarFrameChanged()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x6

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemStatusView;->updateStatus(I)V

    .line 9
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onCreate()V

    .line 4
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onDestroy()V

    .line 4
    return-void
.end method

.method protected onPurchaseSuccess(Lcom/narvii/model/NVObject;)V
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/IStoreItem;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/model/IStoreItem;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->setStoreItemInner(Lcom/narvii/model/IStoreItem;)V

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 12
    .line 13
    instance-of p1, p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onActivated()V

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onActivated()V

    .line 23
    :goto_0
    return-void
.end method

.method protected updateViewStatus()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->updateViewStatus()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    instance-of v1, v0, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    instance-of v0, v0, Lcom/narvii/monetization/avatarframe/StubCurrentAvatarFrame;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 26
    .line 27
    const/16 v1, 0x8

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    :goto_1
    return-void
.end method

.method protected useItem()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameOwnStatusController;->avatarFrameHelper:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 11
    .line 12
    iget-boolean v2, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->isGlobalSpace:Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0, v2}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->showAvatarSetDialog(Lcom/narvii/monetization/avatarframe/AvatarFrame;Z)V

    .line 16
    :cond_0
    return-void
.end method
