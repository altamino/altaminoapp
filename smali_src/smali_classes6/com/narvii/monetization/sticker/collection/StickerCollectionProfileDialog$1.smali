.class Lcom/narvii/monetization/sticker/collection/StickerCollectionProfileDialog$1;
.super Lcom/narvii/monetization/StickerCollectionOwnStatusController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/collection/StickerCollectionProfileDialog;->getStoreItemOwnStatusController(Lcom/narvii/monetization/StoreItemStatusView;)Lcom/narvii/monetization/StoreItemOwnStatusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionProfileDialog;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/collection/StickerCollectionProfileDialog;Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionProfileDialog$1;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionProfileDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;->onActivated(Z)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionProfileDialog$1;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionProfileDialog;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 9
    return-void
.end method

.method public onShowPurchaseDialog()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onShowPurchaseDialog()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionProfileDialog$1;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionProfileDialog;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 9
    return-void
.end method

.method protected updateViewsWhenActivated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
