.class Lcom/narvii/monetization/sticker/post/StickerPostItemList$2;
.super Ljava/lang/Object;
.source "StickerPostItemList.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/post/StickerPostItemList;->onPickStickerResult(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/monetization/sticker/post/StickerPostItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

.field final synthetic val$finalI:I

.field final synthetic val$sticker:Lcom/narvii/model/Sticker;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/post/StickerPostItemList;Lcom/narvii/model/Sticker;I)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList$2;->this$0:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    iput-object p2, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList$2;->val$sticker:Lcom/narvii/model/Sticker;

    iput p3, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList$2;->val$finalI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/monetization/sticker/post/StickerPostItem;)V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList$2;->val$sticker:Lcom/narvii/model/Sticker;

    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/post/StickerPostItem;->changeFromSticker(Lcom/narvii/model/Sticker;)V

    .line 124
    iget v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList$2;->val$finalI:I

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/narvii/monetization/sticker/post/StickerPostItemList$2$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/monetization/sticker/post/StickerPostItemList$2$1;-><init>(Lcom/narvii/monetization/sticker/post/StickerPostItemList$2;Lcom/narvii/monetization/sticker/post/StickerPostItem;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 120
    check-cast p1, Lcom/narvii/monetization/sticker/post/StickerPostItem;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/post/StickerPostItemList$2;->call(Lcom/narvii/monetization/sticker/post/StickerPostItem;)V

    return-void
.end method
