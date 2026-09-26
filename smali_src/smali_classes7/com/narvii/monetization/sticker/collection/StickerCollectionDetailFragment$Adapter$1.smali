.class Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter$1;
.super Lcom/narvii/monetization/StickerCollectionOwnStatusController;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected useItem()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    .line 5
    .line 6
    const-string v1, "finishWithResult"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    .line 22
    const/4 v2, -0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-super {p0}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;->useItem()V

    .line 37
    :goto_0
    return-void
.end method
