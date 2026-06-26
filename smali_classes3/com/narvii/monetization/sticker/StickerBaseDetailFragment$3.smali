.class Lcom/narvii/monetization/sticker/StickerBaseDetailFragment$3;
.super Ljava/lang/Object;
.source "StickerBaseDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;

.field final synthetic val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment$3;->this$0:Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;

    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment$3;->val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 248
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment$3;->this$0:Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;

    iget-object v0, p1, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment$3;->val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->isFromComment()Z

    move-result p1

    const-string v2, "Message Detail Page"

    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->onClickStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Ljava/lang/String;Z)V

    return-void
.end method
