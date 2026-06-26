.class Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;
.super Ljava/lang/Object;
.source "UgcStickerCollectionDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 119
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    iget-boolean v0, p1, Lcom/narvii/detail/DetailFragment;->preview:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/detail/DetailFragment;->showPreviewToast(Landroid/content/Context;)V

    return-void

    .line 123
    :cond_0
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0f107a

    .line 124
    invoke-virtual {v0, p1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const p1, 0x7f0f0193

    const/4 v1, 0x0

    .line 125
    invoke-virtual {v0, p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const p1, 0x7f0f1077

    .line 126
    new-instance v1, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1;-><init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 161
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method
