.class Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1;
.super Ljava/lang/Object;
.source "UgcStickerCollectionDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1;->this$1:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 129
    new-instance p1, Lcom/narvii/monetization/store/StoreHelper;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1;->this$1:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/monetization/store/StoreHelper;-><init>(Landroid/content/Context;)V

    .line 130
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1;->this$1:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1$1;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1$1;-><init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1;)V

    const/16 v2, 0x72

    invoke-virtual {p1, v0, v2, v1}, Lcom/narvii/monetization/store/StoreHelper;->shareRequest(Ljava/lang/String;ILcom/narvii/util/Callback;)V

    return-void
.end method
