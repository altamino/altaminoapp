.class Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->validateUpload(Lcom/narvii/monetization/sticker/post/StickerCollectionPost;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;

.field final synthetic val$finalI:I


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$7;->this$0:Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$7;->val$finalI:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    :try_start_0
    iget p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$7;->val$finalI:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$7;->this$0:Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->u(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;)Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    move-result v0

    .line 13
    .line 14
    if-ge p1, v0, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$7;->this$0:Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->u(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;)Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iget v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$7;->val$finalI:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    instance-of v0, p1, Lcom/narvii/monetization/sticker/post/StickerPostItem;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    check-cast p1, Lcom/narvii/monetization/sticker/post/StickerPostItem;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/post/StickerPostItem;->getNameEdit()Landroid/widget/EditText;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 42
    .line 43
    new-instance v0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$7$1;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, p0, p1}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$7$1;-><init>(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$7;Landroid/widget/EditText;)V

    .line 47
    .line 48
    const-wide/16 v1, 0xc8

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :catch_0
    :cond_0
    return-void
.end method
