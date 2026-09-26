.class Lcom/narvii/monetization/sticker/post/StickerPostItemList$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/post/StickerPostItemList$3;->call(Lcom/narvii/monetization/sticker/post/StickerPostItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/monetization/sticker/post/StickerPostItemList$3;

.field final synthetic val$obj:Lcom/narvii/monetization/sticker/post/StickerPostItem;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/post/StickerPostItemList$3;Lcom/narvii/monetization/sticker/post/StickerPostItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList$3$1;->this$1:Lcom/narvii/monetization/sticker/post/StickerPostItemList$3;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList$3$1;->val$obj:Lcom/narvii/monetization/sticker/post/StickerPostItem;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList$3$1;->val$obj:Lcom/narvii/monetization/sticker/post/StickerPostItem;

    .line 3
    .line 4
    .line 5
    const v1, 0x7f0a04bd

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Landroid/widget/EditText;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 15
    return-void
.end method
