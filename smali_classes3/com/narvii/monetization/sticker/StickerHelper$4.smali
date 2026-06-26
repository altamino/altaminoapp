.class Lcom/narvii/monetization/sticker/StickerHelper$4;
.super Ljava/lang/Object;
.source "StickerHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/StickerHelper;->onClickEditStickerCollectionButton(Lcom/narvii/monetization/sticker/model/StickerCollection;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/StickerHelper;

.field final synthetic val$fromDetail:Z

.field final synthetic val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/StickerHelper;Lcom/narvii/monetization/sticker/model/StickerCollection;Z)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper$4;->this$0:Lcom/narvii/monetization/sticker/StickerHelper;

    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerHelper$4;->val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    iput-boolean p3, p0, Lcom/narvii/monetization/sticker/StickerHelper$4;->val$fromDetail:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object p2, p0, Lcom/narvii/monetization/sticker/StickerHelper$4;->this$0:Lcom/narvii/monetization/sticker/StickerHelper;

    iget-object p2, p2, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f0361

    .line 267
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const p2, 0x7f0f0c29

    const/4 v0, 0x0

    .line 268
    invoke-virtual {p1, p2, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const p2, 0x7f0f119f

    .line 269
    new-instance v0, Lcom/narvii/monetization/sticker/StickerHelper$4$1;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/StickerHelper$4$1;-><init>(Lcom/narvii/monetization/sticker/StickerHelper$4;)V

    invoke-virtual {p1, p2, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 275
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 263
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper$4;->this$0:Lcom/narvii/monetization/sticker/StickerHelper;

    iget-object p2, p0, Lcom/narvii/monetization/sticker/StickerHelper$4;->val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/StickerHelper$4;->val$fromDetail:Z

    invoke-static {p1, p2, v0}, Lcom/narvii/monetization/sticker/StickerHelper;->access$000(Lcom/narvii/monetization/sticker/StickerHelper;Lcom/narvii/monetization/sticker/model/StickerCollection;Z)V

    :goto_0
    return-void
.end method
