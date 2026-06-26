.class Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$7$1;
.super Ljava/lang/Object;
.source "StickerCollectionPostActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$7;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$7;Landroid/widget/EditText;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$7$1;->this$1:Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$7;

    iput-object p2, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$7$1;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$7$1;->val$editText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    return-void
.end method
