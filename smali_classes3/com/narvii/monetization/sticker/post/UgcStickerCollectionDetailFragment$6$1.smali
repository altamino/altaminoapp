.class Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$6$1;
.super Ljava/lang/Object;
.source "UgcStickerCollectionDetailFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$6;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$6;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$6$1;->this$1:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 413
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$6$1;->this$1:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$6;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$6;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 416
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 417
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$6$1;->this$1:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$6;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$6;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    const-string v1, "requestId"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$6$1;->this$1:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$6;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$6;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 419
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$6$1;->this$1:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$6;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$6;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 410
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$6$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
