.class Lcom/narvii/monetization/sticker/post/StickerPostItemList$4;
.super Ljava/lang/Object;
.source "StickerPostItemList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/post/StickerPostItemList;->changeStickerPostItem(ILcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

.field final synthetic val$cell:Lcom/narvii/monetization/sticker/post/StickerPostItem;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/post/StickerPostItemList;Lcom/narvii/monetization/sticker/post/StickerPostItem;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList$4;->this$0:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    iput-object p2, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList$4;->val$cell:Lcom/narvii/monetization/sticker/post/StickerPostItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList$4;->val$cell:Lcom/narvii/monetization/sticker/post/StickerPostItem;

    const v1, 0x7f0903c6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    return-void
.end method
