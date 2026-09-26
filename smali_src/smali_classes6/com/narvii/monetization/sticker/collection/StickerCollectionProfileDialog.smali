.class public Lcom/narvii/monetization/sticker/collection/StickerCollectionProfileDialog;
.super Lcom/narvii/monetization/store/StoreItemGetterDialog;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/store/StoreItemGetterDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/IStoreItem;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a0343

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v1, p2, Lcom/narvii/monetization/sticker/model/StickerCollection;->icon:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;->setStickerImageUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const p1, 0x7f0a0da8

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    check-cast p1, Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 34
    .line 35
    .line 36
    const p1, 0x7f0a0342

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    check-cast p1, Landroid/widget/TextView;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getDescription()Ljava/lang/String;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected getContentViewLayout()I
    .locals 1

    const v0, 0x7f0d01d9

    return v0
.end method

.method protected getStoreItemOwnStatusController(Lcom/narvii/monetization/StoreItemStatusView;)Lcom/narvii/monetization/StoreItemOwnStatusController;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionProfileDialog$1;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemGetterDialog;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p0, v1, p1}, Lcom/narvii/monetization/sticker/collection/StickerCollectionProfileDialog$1;-><init>(Lcom/narvii/monetization/sticker/collection/StickerCollectionProfileDialog;Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;)V

    .line 8
    return-object v0
.end method
