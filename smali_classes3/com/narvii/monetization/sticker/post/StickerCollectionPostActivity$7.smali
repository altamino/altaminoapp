.class Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$7;
.super Ljava/lang/Object;
.source "StickerCollectionPostActivity.java"

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

    .line 323
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$7;->this$0:Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;

    iput p2, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$7;->val$finalI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 327
    :try_start_0
    iget p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$7;->val$finalI:I

    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$7;->this$0:Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->access$300(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;)Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 328
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$7;->this$0:Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->access$300(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;)Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    move-result-object p1

    iget v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$7;->val$finalI:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 329
    instance-of v0, p1, Lcom/narvii/monetization/sticker/post/StickerPostItem;

    if-eqz v0, :cond_0

    .line 330
    check-cast p1, Lcom/narvii/monetization/sticker/post/StickerPostItem;

    .line 331
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/post/StickerPostItem;->getNameEdit()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 334
    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 335
    new-instance v0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$7$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$7$1;-><init>(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$7;Landroid/widget/EditText;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
