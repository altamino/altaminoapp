.class Lcom/narvii/monetization/sticker/StickerHelper$4$1;
.super Ljava/lang/Object;
.source "StickerHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/StickerHelper$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/monetization/sticker/StickerHelper$4;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/StickerHelper$4;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper$4$1;->this$1:Lcom/narvii/monetization/sticker/StickerHelper$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 272
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper$4$1;->this$1:Lcom/narvii/monetization/sticker/StickerHelper$4;

    iget-object v0, p1, Lcom/narvii/monetization/sticker/StickerHelper$4;->this$0:Lcom/narvii/monetization/sticker/StickerHelper;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/StickerHelper$4;->val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v0, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->deleteStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    return-void
.end method
