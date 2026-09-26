.class Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$4;
.super Lcom/narvii/monetization/store/StoreRecommendAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;Lcom/narvii/app/NVContext;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$4;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/narvii/monetization/store/StoreRecommendAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$4;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    return v1

    .line 18
    .line 19
    :cond_1
    iget-object v2, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$4;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->u(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)Lcom/narvii/monetization/sticker/StickerHelper;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0}, Lcom/narvii/monetization/sticker/StickerHelper;->isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    return v1

    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$4;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->stickerListAdapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$4;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 43
    .line 44
    iget-boolean v0, v0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->requestFinished:Z

    .line 45
    .line 46
    if-nez v0, :cond_3

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    .line 51
    move-result v1

    .line 52
    :goto_0
    return v1
.end method
