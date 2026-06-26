.class Lcom/narvii/monetization/sticker/StickerDetailFragment$5;
.super Ljava/lang/Object;
.source "StickerDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/StickerDetailFragment;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/StickerDetailFragment;

.field final synthetic val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/StickerDetailFragment;Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment$5;->this$0:Lcom/narvii/monetization/sticker/StickerDetailFragment;

    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment$5;->val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 330
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment$5;->this$0:Lcom/narvii/monetization/sticker/StickerDetailFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/StickerDetailFragment;->access$300(Lcom/narvii/monetization/sticker/StickerDetailFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 331
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment$5;->this$0:Lcom/narvii/monetization/sticker/StickerDetailFragment;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/StickerDetailFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment$5;->val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    const-string v1, "Message Detail Page"

    invoke-virtual {p1, v0, v1}, Lcom/narvii/monetization/sticker/StickerHelper;->onClickStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
