.class Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter$1;
.super Lcom/narvii/monetization/StickerCollectionOwnStatusController;
.source "StickerCollectionDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

    invoke-direct {p0, p2, p3}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;)V

    return-void
.end method


# virtual methods
.method protected useItem()V
    .locals 3

    .line 458
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    const-string v1, "finishWithResult"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 460
    iget-object v1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

    iget-object v1, v1, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 461
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->finish()V

    goto :goto_0

    .line 463
    :cond_0
    invoke-super {p0}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;->useItem()V

    :goto_0
    return-void
.end method
