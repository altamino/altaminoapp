.class Lcom/narvii/monetization/sticker/StickerBaseDetailFragment$1;
.super Lcom/narvii/monetization/StickerCollectionOwnStatusController;
.source "StickerBaseDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;ZZ)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment$1;->this$0:Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;ZZ)V

    return-void
.end method


# virtual methods
.method protected useItem()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment$1;->this$0:Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->useSticker()V

    return-void
.end method
