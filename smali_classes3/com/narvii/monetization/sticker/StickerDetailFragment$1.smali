.class Lcom/narvii/monetization/sticker/StickerDetailFragment$1;
.super Lcom/narvii/monetization/StickerCollectionOwnStatusController;
.source "StickerDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/StickerDetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/StickerDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/StickerDetailFragment;Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Z)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment$1;->this$0:Lcom/narvii/monetization/sticker/StickerDetailFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Z)V

    return-void
.end method


# virtual methods
.method public onClickActivateItem()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment$1;->this$0:Lcom/narvii/monetization/sticker/StickerDetailFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/StickerDetailFragment;->access$000(Lcom/narvii/monetization/sticker/StickerDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onClickActivateItem()V

    :cond_0
    return-void
.end method

.method public onClickGetItem()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment$1;->this$0:Lcom/narvii/monetization/sticker/StickerDetailFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/StickerDetailFragment;->access$000(Lcom/narvii/monetization/sticker/StickerDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onClickGetItem()V

    :cond_0
    return-void
.end method

.method public onClickUseItem()V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment$1;->this$0:Lcom/narvii/monetization/sticker/StickerDetailFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/StickerDetailFragment;->access$000(Lcom/narvii/monetization/sticker/StickerDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onClickUseItem()V

    :cond_0
    return-void
.end method
