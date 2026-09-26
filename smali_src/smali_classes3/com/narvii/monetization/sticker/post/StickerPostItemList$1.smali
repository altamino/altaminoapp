.class Lcom/narvii/monetization/sticker/post/StickerPostItemList$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList$1;->this$0:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList$1;->this$0:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->onIconClickListener:Lcom/narvii/monetization/sticker/post/StickerPostItemList$OnIconClickListener;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    return-void

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    .line 17
    :goto_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList$1;->this$0:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    move-result v1

    .line 22
    .line 23
    if-ge v0, v1, :cond_3

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList$1;->this$0:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    if-ne v1, p1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItemList$1;->this$0:Lcom/narvii/monetization/sticker/post/StickerPostItemList;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/narvii/monetization/sticker/post/StickerPostItemList;->onIconClickListener:Lcom/narvii/monetization/sticker/post/StickerPostItemList$OnIconClickListener;

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, v0, p1}, Lcom/narvii/monetization/sticker/post/StickerPostItemList$OnIconClickListener;->onIconClicked(ILandroid/view/View;)V

    .line 39
    return-void

    .line 40
    .line 41
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    return-void
.end method
