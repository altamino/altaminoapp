.class Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$2;
.super Lcom/narvii/adapter/NVPagerStatusAdapter;
.source "StickerCollectionDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$2;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    invoke-direct {p0, p2}, Lcom/narvii/adapter/NVPagerStatusAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$2;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$2;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 271
    :cond_0
    invoke-super {p0}, Lcom/narvii/adapter/NVPagerStatusAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 257
    iget-object p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$2;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x3

    return p1

    .line 259
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$2;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, -0x2

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected onEmptyClickRetry()V
    .locals 3

    .line 276
    invoke-super {p0}, Lcom/narvii/adapter/NVPagerStatusAdapter;->onEmptyClickRetry()V

    .line 277
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$2;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method

.method protected onErrorClickRetry()V
    .locals 3

    .line 282
    invoke-super {p0}, Lcom/narvii/adapter/NVPagerStatusAdapter;->onErrorClickRetry()V

    .line 283
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$2;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method
