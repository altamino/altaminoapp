.class Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1;->onClick(Landroid/view/View;)V
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
.field final synthetic this$2:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1$1;->this$2:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1$1;->this$2:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1;

    .line 2
    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1;->this$1:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1$1;->this$2:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1;

    .line 3
    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1;->this$1:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    const-string v0, "account"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 4
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/User;->isLeader()Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1$1;->this$2:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1;->this$1:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f121178

    .line 7
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    const v0, 0x7f121177

    .line 8
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v0, 0x104000a

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 10
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1$1;->this$2:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1;

    .line 11
    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1;->this$1:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    const-string/jumbo v0, "sticker"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/StickerService;

    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/StickerService;->refreshSharedStickerPackList(Z)V

    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1$1;->this$2:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1;

    .line 13
    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1;->this$1:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    const v0, 0x7f120402

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->showImageToast(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
