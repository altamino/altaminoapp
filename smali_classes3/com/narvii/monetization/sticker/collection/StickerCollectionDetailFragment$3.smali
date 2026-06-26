.class Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$3;
.super Lcom/narvii/monetization/store/StoreRecommendAdapter;
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
.method constructor <init>(Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;Lcom/narvii/app/NVContext;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$3;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/narvii/monetization/store/StoreRecommendAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$3;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->stickerListAdapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$StickerListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$3;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    iget-boolean v0, v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->requestFinished:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    :goto_0
    return v0
.end method
