.class Lcom/narvii/monetization/sticker/StickerDetailFragment$1;
.super Lcom/narvii/monetization/StickerCollectionOwnStatusController;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment$1;->this$0:Lcom/narvii/monetization/sticker/StickerDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Z)V

    .line 6
    return-void
.end method


# virtual methods
.method public onClickActivateItem()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment$1;->this$0:Lcom/narvii/monetization/sticker/StickerDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/monetization/sticker/StickerDetailFragment;->o(Lcom/narvii/monetization/sticker/StickerDetailFragment;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onClickActivateItem()V

    .line 12
    :cond_0
    return-void
.end method

.method public onClickGetItem()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment$1;->this$0:Lcom/narvii/monetization/sticker/StickerDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/monetization/sticker/StickerDetailFragment;->o(Lcom/narvii/monetization/sticker/StickerDetailFragment;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onClickGetItem()V

    .line 12
    :cond_0
    return-void
.end method

.method public onClickUseItem()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment$1;->this$0:Lcom/narvii/monetization/sticker/StickerDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/monetization/sticker/StickerDetailFragment;->o(Lcom/narvii/monetization/sticker/StickerDetailFragment;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onClickUseItem()V

    .line 12
    :cond_0
    return-void
.end method
