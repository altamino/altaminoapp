.class public Lcom/narvii/comment/CommentStickerDetailFragment;
.super Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;
.source "CommentStickerDetailFragment.java"


# instance fields
.field comment:Lcom/narvii/model/Comment;

.field private commentHelper:Lcom/narvii/comment/CommentHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/comment/CommentStickerDetailFragment;)Lcom/narvii/comment/CommentHelper;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/narvii/comment/CommentStickerDetailFragment;->commentHelper:Lcom/narvii/comment/CommentHelper;

    return-object p0
.end method

.method private deleteComment()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/narvii/comment/CommentStickerDetailFragment;->comment:Lcom/narvii/model/Comment;

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0398

    .line 70
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x1040013

    .line 71
    new-instance v2, Lcom/narvii/comment/CommentStickerDetailFragment$1;

    invoke-direct {v2, p0}, Lcom/narvii/comment/CommentStickerDetailFragment$1;-><init>(Lcom/narvii/comment/CommentStickerDetailFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x1040009

    .line 86
    sget-object v2, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 88
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private finishWithResult()V
    .locals 3

    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 107
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->sticker:Lcom/narvii/model/Sticker;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "default"

    :goto_0
    const-string v2, "collectionId"

    .line 108
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 109
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 110
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method


# virtual methods
.method protected attachObject()Lcom/narvii/model/NVObject;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/narvii/comment/CommentStickerDetailFragment;->comment:Lcom/narvii/model/Comment;

    return-object v0
.end method

.method protected ignoreGlobalScope()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isFromComment()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isMyOwned()Z
    .locals 4

    const-string v0, "account"

    .line 44
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 45
    iget-object v1, p0, Lcom/narvii/comment/CommentStickerDetailFragment;->comment:Lcom/narvii/model/Comment;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/narvii/model/Comment;->uid()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x66

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/narvii/comment/CommentStickerDetailFragment;->finishWithResult()V

    .line 101
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "comment"

    .line 33
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/Comment;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Comment;

    iput-object p1, p0, Lcom/narvii/comment/CommentStickerDetailFragment;->comment:Lcom/narvii/model/Comment;

    .line 34
    new-instance p1, Lcom/narvii/comment/CommentHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v0

    invoke-direct {p1, p0, v0}, Lcom/narvii/comment/CommentHelper;-><init>(Lcom/narvii/app/NVContext;Z)V

    iput-object p1, p0, Lcom/narvii/comment/CommentStickerDetailFragment;->commentHelper:Lcom/narvii/comment/CommentHelper;

    return-void
.end method

.method protected onDeleteOpClicked()V
    .locals 0

    .line 50
    invoke-super {p0}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->onDeleteOpClicked()V

    .line 51
    invoke-direct {p0}, Lcom/narvii/comment/CommentStickerDetailFragment;->deleteComment()V

    return-void
.end method

.method protected useSticker()V
    .locals 0

    .line 56
    invoke-super {p0}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->useSticker()V

    .line 57
    invoke-direct {p0}, Lcom/narvii/comment/CommentStickerDetailFragment;->finishWithResult()V

    return-void
.end method
