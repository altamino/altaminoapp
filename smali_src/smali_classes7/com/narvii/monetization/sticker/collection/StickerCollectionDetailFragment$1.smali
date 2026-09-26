.class Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$1;
.super Lcom/narvii/list/StaticViewAdapter;
.source "SourceFile"


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
.method constructor <init>(Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$1;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$1;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method
