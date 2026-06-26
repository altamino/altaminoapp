.class Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6$1;
.super Ljava/lang/Object;
.source "StickerCollectionPostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6;->onIconClicked(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6;I)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6$1;->this$1:Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6;

    iput p2, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6$1;->this$1:Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6;->this$0:Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->access$300(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;)Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    move-result-object p1

    iget p2, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6$1;->val$index:I

    invoke-virtual {p1, p2}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->deleteItem(I)V

    goto :goto_0

    .line 176
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6$1;->this$1:Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6;->this$0:Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->access$300(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;)Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    move-result-object p1

    iget p2, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6$1;->val$index:I

    invoke-virtual {p1, p2}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->setThumbnailCell(I)V

    goto :goto_0

    .line 173
    :cond_2
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6$1;->this$1:Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6;->this$0:Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;

    iget p2, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6$1;->val$index:I

    invoke-static {p1, p2}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->access$000(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;I)V

    :goto_0
    return-void
.end method
