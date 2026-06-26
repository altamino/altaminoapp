.class Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter$1;
.super Ljava/lang/Object;
.source "UgcStickerCollectionDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->setResponse(Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

.field final synthetic val$resp:Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter$1;->val$resp:Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 470
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter$1;->this$1:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->access$000(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)Lcom/narvii/monetization/sticker/StickerHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter$1;->val$resp:Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/monetization/sticker/StickerHelper;->onClickEditStickerCollectionButton(Lcom/narvii/monetization/sticker/model/StickerCollection;Z)V

    return-void
.end method
