.class Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6;->this$0:Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onIconClicked(ILandroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    new-instance p2, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6;->this$0:Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x7f120217

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 19
    .line 20
    .line 21
    const v0, 0x7f121223

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 25
    .line 26
    .line 27
    const v0, 0x7f1203b8

    .line 28
    const/4 v1, 0x1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 32
    .line 33
    new-instance v0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6$1;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, p0, p1}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6$1;-><init>(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 43
    return-void
.end method
