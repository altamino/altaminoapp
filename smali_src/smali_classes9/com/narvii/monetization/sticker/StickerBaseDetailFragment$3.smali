.class Lcom/narvii/monetization/sticker/StickerBaseDetailFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment$3;->this$0:Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment$3;->val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment$3;->this$0:Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment$3;->val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 7
    .line 8
    const-string v2, "Message Detail Page"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->isFromComment()Z

    .line 12
    move-result p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->onClickStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Ljava/lang/String;Z)V

    .line 16
    return-void
.end method
