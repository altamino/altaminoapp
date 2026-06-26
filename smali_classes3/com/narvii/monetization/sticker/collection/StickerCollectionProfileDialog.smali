.class public Lcom/narvii/monetization/sticker/collection/StickerCollectionProfileDialog;
.super Lcom/narvii/monetization/store/StoreItemGetterDialog;
.source "StickerCollectionProfileDialog.java"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 2

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/store/StoreItemGetterDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/IStoreItem;)V

    const p1, 0x7f09027a

    .line 25
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;

    .line 26
    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/narvii/monetization/sticker/model/StickerCollection;->icon:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;->setStickerImageUrl(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f090aae

    .line 29
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 30
    invoke-virtual {p1, p2}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    const p1, 0x7f090279

    .line 32
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 33
    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected getContentViewLayout()I
    .locals 1

    const v0, 0x7f0b01b8

    return v0
.end method

.method protected getStoreItemOwnStatusController(Lcom/narvii/monetization/StoreItemStatusView;)Lcom/narvii/monetization/StoreItemOwnStatusController;
    .locals 2

    .line 43
    new-instance v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionProfileDialog$1;

    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemGetterDialog;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v0, p0, v1, p1}, Lcom/narvii/monetization/sticker/collection/StickerCollectionProfileDialog$1;-><init>(Lcom/narvii/monetization/sticker/collection/StickerCollectionProfileDialog;Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;)V

    return-object v0
.end method
