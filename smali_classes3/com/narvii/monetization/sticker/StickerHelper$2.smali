.class Lcom/narvii/monetization/sticker/StickerHelper$2;
.super Ljava/lang/Object;
.source "StickerHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/StickerHelper;->onClickStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/StickerHelper;

.field final synthetic val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/StickerHelper;Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper$2;->this$0:Lcom/narvii/monetization/sticker/StickerHelper;

    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerHelper$2;->val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 174
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper$2;->this$0:Lcom/narvii/monetization/sticker/StickerHelper;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerHelper$2;->val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/StickerHelper;->deleteStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    return-void
.end method
