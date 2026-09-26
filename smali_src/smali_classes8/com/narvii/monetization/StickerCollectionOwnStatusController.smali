.class public Lcom/narvii/monetization/StickerCollectionOwnStatusController;
.super Lcom/narvii/monetization/StoreItemOwnStatusController;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/StoreItemOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/monetization/StoreItemOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;ZZ)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/monetization/StoreItemOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;ZZ)V

    return-void
.end method

.method private isUserCreatedStickerCollection()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isUserCreated()Z

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method private refreshMyCollectionList()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;->disableRefreshMyCollectionList()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    .line 10
    .line 11
    const-string v1, "sticker"

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/monetization/sticker/StickerService;

    .line 18
    const/4 v1, 0x1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerService;->refreshStickerCollectionInfo(Z)V

    .line 22
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected anyOneCanGet()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isUserCreated()Z

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->anyOneCanGet()Z

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method protected canUseInGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected createActivateRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "sticker-collection/"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 13
    .line 14
    .line 15
    invoke-interface {v1}, Lcom/narvii/model/IStoreItem;->id()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "/activate"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method

.method protected disableRefreshMyCollectionList()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getActivateDrawableId()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;->isUserCreatedStickerCollection()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    const v0, 0x7f08090e

    .line 10
    return v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getActivateDrawableId()I

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method protected getActivateStrId(Z)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;->isUserCreatedStickerCollection()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    const p1, 0x7f12008f

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    const p1, 0x7f120071

    .line 16
    :goto_0
    return p1

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getActivateStrId(Z)I

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method protected getActivatedDrawableId()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;->isUserCreatedStickerCollection()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    const v0, 0x7f08090f

    .line 10
    return v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getActivatedDrawableId()I

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method protected getActivatedStrId(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f12108d

    goto :goto_0

    :cond_0
    const p1, 0x7f121085

    :goto_0
    return p1
.end method

.method protected getActivatedTextColorId()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;->isUserCreatedStickerCollection()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    const v0, 0x7f060447

    .line 10
    return v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getActivatedTextColorId()I

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method protected getActivatedToastTextId()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;->isUserCreatedStickerCollection()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    const v0, 0x7f120096

    .line 10
    return v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getActivatedToastTextId()I

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method protected getDownloadProgressDrawableId()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;->isUserCreatedStickerCollection()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    const v0, 0x7f0809c8

    .line 10
    return v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getDownloadProgressDrawableId()I

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method protected getGetDrawableId()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;->isUserCreatedStickerCollection()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    const v0, 0x7f08090e

    .line 10
    return v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getGetDrawableId()I

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method protected getGetStrId(Z)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;->isUserCreatedStickerCollection()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    const p1, 0x7f12008f

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    const p1, 0x7f120071

    .line 16
    :goto_0
    return p1

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getGetStrId(Z)I

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public onActivated(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onActivated(Z)V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;->refreshMyCollectionList()V

    .line 9
    :cond_0
    return-void
.end method

.method protected onPurchaseSuccess(Lcom/narvii/model/NVObject;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;->refreshMyCollectionList()V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 6
    .line 7
    instance-of v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 12
    .line 13
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;-><init>(Lcom/narvii/app/NVContext;)V

    .line 23
    .line 24
    new-instance v1, Lcom/narvii/monetization/StickerCollectionOwnStatusController$1;

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/narvii/monetization/StickerCollectionOwnStatusController$1;-><init>(Lcom/narvii/monetization/StickerCollectionOwnStatusController;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1, v1}, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->downloadStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$StickerCollectionDownloadListener;)V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onActivated()V

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onActivated()V

    .line 39
    :goto_0
    return-void
.end method

.method protected useItem()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->useItem()V

    .line 4
    .line 5
    const-class v0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Lcom/narvii/model/IStoreItem;->id()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    const-string v2, "stickerCollectionId"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    .line 23
    .line 24
    .line 25
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 30
    return-void
.end method
