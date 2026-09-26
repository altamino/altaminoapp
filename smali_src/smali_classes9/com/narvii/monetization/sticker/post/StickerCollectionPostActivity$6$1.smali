.class Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6$1;->this$1:Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6$1;->val$index:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    if-eqz p2, :cond_2

    .line 3
    const/4 p1, 0x1

    .line 4
    .line 5
    if-eq p2, p1, :cond_1

    .line 6
    const/4 p1, 0x2

    .line 7
    .line 8
    if-eq p2, p1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6$1;->this$1:Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6;->this$0:Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->u(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;)Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    iget p2, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6$1;->val$index:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->deleteItem(I)V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6$1;->this$1:Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6;->this$0:Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->u(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;)Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iget p2, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6$1;->val$index:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->setThumbnailCell(I)V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_2
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6$1;->this$1:Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6;->this$0:Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;

    .line 42
    .line 43
    iget p2, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$6$1;->val$index:I

    .line 44
    .line 45
    .line 46
    invoke-static {p1, p2}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->v(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;I)V

    .line 47
    :goto_0
    return-void
.end method
