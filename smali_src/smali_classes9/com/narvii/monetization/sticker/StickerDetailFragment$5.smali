.class Lcom/narvii/monetization/sticker/StickerDetailFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment$5;->this$0:Lcom/narvii/monetization/sticker/StickerDetailFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment$5;->val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment$5;->this$0:Lcom/narvii/monetization/sticker/StickerDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/monetization/sticker/StickerDetailFragment;->p(Lcom/narvii/monetization/sticker/StickerDetailFragment;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment$5;->this$0:Lcom/narvii/monetization/sticker/StickerDetailFragment;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/narvii/monetization/sticker/StickerDetailFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment$5;->val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 15
    .line 16
    const-string v1, "Message Detail Page"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/narvii/monetization/sticker/StickerHelper;->onClickStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Ljava/lang/String;)V

    .line 20
    :cond_0
    return-void
.end method
