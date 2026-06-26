.class Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6;
.super Ljava/lang/Object;
.source "StickerCollectionPostActivity.java"

# interfaces
.implements Lcom/narvii/monetization/sticker/post/StickerPostItemList$OnIconClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6;->this$0:Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIconClicked(ILandroid/view/View;)V
    .locals 2

    .line 164
    new-instance p2, Lcom/narvii/util/dialog/ActionSheetDialog;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6;->this$0:Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const v1, 0x7f0f01c7

    .line 165
    invoke-virtual {p2, v1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    const v1, 0x7f0f1118

    .line 166
    invoke-virtual {p2, v1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    const v0, 0x7f0f0360

    const/4 v1, 0x1

    .line 167
    invoke-virtual {p2, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 168
    new-instance v0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6$1;-><init>(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6;I)V

    invoke-virtual {p2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 184
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method
