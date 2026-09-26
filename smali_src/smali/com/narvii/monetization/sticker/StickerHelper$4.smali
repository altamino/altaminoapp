.class Lcom/narvii/monetization/sticker/StickerHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper$4;->this$0:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerHelper$4;->val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/narvii/monetization/sticker/StickerHelper$4;->val$fromDetail:Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    .line 2
    if-eqz p2, :cond_1

    .line 3
    const/4 p1, 0x1

    .line 4
    .line 5
    if-eq p2, p1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 9
    .line 10
    iget-object p2, p0, Lcom/narvii/monetization/sticker/StickerHelper$4;->this$0:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 11
    .line 12
    iget-object p2, p2, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    .line 15
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    const p2, 0x7f1203b9

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 26
    .line 27
    .line 28
    const p2, 0x7f120d57

    .line 29
    const/4 v0, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 33
    .line 34
    new-instance p2, Lcom/narvii/monetization/sticker/StickerHelper$4$1;

    .line 35
    .line 36
    .line 37
    invoke-direct {p2, p0}, Lcom/narvii/monetization/sticker/StickerHelper$4$1;-><init>(Lcom/narvii/monetization/sticker/StickerHelper$4;)V

    .line 38
    .line 39
    .line 40
    const v0, 0x7f1212a7

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0, p2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper$4;->this$0:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 50
    .line 51
    iget-object p2, p0, Lcom/narvii/monetization/sticker/StickerHelper$4;->val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 52
    .line 53
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/StickerHelper$4;->val$fromDetail:Z

    .line 54
    .line 55
    .line 56
    invoke-static {p1, p2, v0}, Lcom/narvii/monetization/sticker/StickerHelper;->c(Lcom/narvii/monetization/sticker/StickerHelper;Lcom/narvii/monetization/sticker/model/StickerCollection;Z)V

    .line 57
    :goto_0
    return-void
.end method
