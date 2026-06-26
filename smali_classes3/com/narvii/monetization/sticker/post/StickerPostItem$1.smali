.class Lcom/narvii/monetization/sticker/post/StickerPostItem$1;
.super Ljava/lang/Object;
.source "StickerPostItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/post/StickerPostItem;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/post/StickerPostItem;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/post/StickerPostItem;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem$1;->this$0:Lcom/narvii/monetization/sticker/post/StickerPostItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 56
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerPostItem$1;->this$0:Lcom/narvii/monetization/sticker/post/StickerPostItem;

    iget-object v0, p1, Lcom/narvii/monetization/sticker/post/StickerPostItem;->iconLayoutClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
