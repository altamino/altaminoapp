.class public Lcom/narvii/monetization/StickerCollectionOwnStatusController;
.super Lcom/narvii/monetization/StoreItemOwnStatusController;
.source "StickerCollectionOwnStatusController.java"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/StoreItemOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/monetization/StoreItemOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;ZZ)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/monetization/StoreItemOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;ZZ)V

    return-void
.end method

.method private isUserCreatedStickerCollection()Z
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    instance-of v1, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v1, :cond_0

    .line 118
    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isUserCreated()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private refreshMyCollectionList()V
    .locals 2

    .line 158
    invoke-virtual {p0}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;->disableRefreshMyCollectionList()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "sticker"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/StickerService;

    const/4 v1, 0x1

    .line 162
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerService;->refreshStickerCollectionInfo(Z)V

    return-void
.end method


# virtual methods
.method protected anyOneCanGet()Z
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    instance-of v1, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v1, :cond_0

    .line 58
    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isUserCreated()Z

    move-result v0

    return v0

    .line 60
    :cond_0
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->anyOneCanGet()Z

    move-result v0

    return v0
.end method

.method protected canUseInGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected createActivateRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sticker-collection/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    invoke-interface {v1}, Lcom/narvii/model/IStoreItem;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/activate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method protected disableRefreshMyCollectionList()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getActivateDrawableId()I
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;->isUserCreatedStickerCollection()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080711

    return v0

    .line 81
    :cond_0
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getActivateDrawableId()I

    move-result v0

    return v0
.end method

.method protected getActivateStrId(Z)I
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;->isUserCreatedStickerCollection()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const p1, 0x7f0f0086

    goto :goto_0

    :cond_0
    const p1, 0x7f0f0068

    :goto_0
    return p1

    .line 44
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getActivateStrId(Z)I

    move-result p1

    return p1
.end method

.method protected getActivatedDrawableId()I
    .locals 1

    .line 86
    invoke-direct {p0}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;->isUserCreatedStickerCollection()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080712

    return v0

    .line 89
    :cond_0
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getActivatedDrawableId()I

    move-result v0

    return v0
.end method

.method protected getActivatedStrId(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f0f0f81

    goto :goto_0

    :cond_0
    const p1, 0x7f0f0f78

    :goto_0
    return p1
.end method

.method protected getActivatedTextColorId()I
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;->isUserCreatedStickerCollection()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0601d9

    return v0

    .line 97
    :cond_0
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getActivatedTextColorId()I

    move-result v0

    return v0
.end method

.method protected getActivatedToastTextId()I
    .locals 1

    .line 110
    invoke-direct {p0}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;->isUserCreatedStickerCollection()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f008d

    return v0

    .line 113
    :cond_0
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getActivatedToastTextId()I

    move-result v0

    return v0
.end method

.method protected getDownloadProgressDrawableId()I
    .locals 1

    .line 102
    invoke-direct {p0}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;->isUserCreatedStickerCollection()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0807a1

    return v0

    .line 105
    :cond_0
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getDownloadProgressDrawableId()I

    move-result v0

    return v0
.end method

.method protected getGetDrawableId()I
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;->isUserCreatedStickerCollection()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080711

    return v0

    .line 73
    :cond_0
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getGetDrawableId()I

    move-result v0

    return v0
.end method

.method protected getGetStrId(Z)I
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;->isUserCreatedStickerCollection()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const p1, 0x7f0f0086

    goto :goto_0

    :cond_0
    const p1, 0x7f0f0068

    :goto_0
    return p1

    .line 52
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getGetStrId(Z)I

    move-result p1

    return p1
.end method

.method public onActivated(Z)V
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onActivated(Z)V

    if-nez p1, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;->refreshMyCollectionList()V

    :cond_0
    return-void
.end method

.method protected onPurchaseSuccess(Lcom/narvii/model/NVObject;)V
    .locals 2

    .line 125
    invoke-direct {p0}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;->refreshMyCollectionList()V

    .line 126
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    instance-of v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v0, :cond_1

    .line 127
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 128
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;

    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;-><init>(Lcom/narvii/app/NVContext;)V

    new-instance v1, Lcom/narvii/monetization/StickerCollectionOwnStatusController$1;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/StickerCollectionOwnStatusController$1;-><init>(Lcom/narvii/monetization/StickerCollectionOwnStatusController;)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->downloadStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$StickerCollectionDownloadListener;)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onActivated()V

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onActivated()V

    :goto_0
    return-void
.end method

.method protected useItem()V
    .locals 3

    .line 177
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->useItem()V

    .line 178
    const-class v0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    invoke-interface {v1}, Lcom/narvii/model/IStoreItem;->id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stickerCollectionId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
