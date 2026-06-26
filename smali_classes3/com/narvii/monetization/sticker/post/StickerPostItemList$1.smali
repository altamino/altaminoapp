.class Lcom/narvii/monetization/sticker/post/StickerPostItemList$1;
.super Ljava/lang/Object;
.source "StickerPostItemList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/post/StickerPostItemList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/post/StickerPostItemList;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/post/StickerPostItemList;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList$1;->this$0:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList$1;->this$0:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    iget-object v1, v0, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->onIconClickListener:Lcom/narvii/monetization/sticker/post/StickerPostItemList$OnIconClickListener;

    if-nez v1, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 38
    :goto_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList$1;->this$0:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 39
    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList$1;->this$0:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 41
    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList$1;->this$0:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    iget-object v1, v1, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->onIconClickListener:Lcom/narvii/monetization/sticker/post/StickerPostItemList$OnIconClickListener;

    invoke-interface {v1, v0, p1}, Lcom/narvii/monetization/sticker/post/StickerPostItemList$OnIconClickListener;->onIconClicked(ILandroid/view/View;)V

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
