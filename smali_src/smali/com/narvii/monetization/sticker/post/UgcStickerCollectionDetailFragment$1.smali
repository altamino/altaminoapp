.class Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 3
    .line 4
    iget-boolean v0, p1, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/detail/DetailFragment;->showPreviewToast(Landroid/content/Context;)V

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    const v0, 0x7f121176

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 32
    .line 33
    .line 34
    const v0, 0x7f1201e2

    .line 35
    const/4 v1, 0x0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 39
    .line 40
    new-instance v0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1;-><init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;)V

    .line 44
    .line 45
    .line 46
    const v1, 0x7f121173

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v1, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 53
    return-void
.end method
