.class public Lcom/narvii/comment/CommentStickerDetailFragment;
.super Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;
.source "SourceFile"


# instance fields
.field comment:Lcom/narvii/model/Comment;

.field private commentHelper:Lcom/narvii/comment/CommentHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;-><init>()V

    .line 4
    return-void
.end method

.method private deleteComment()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/CommentStickerDetailFragment;->comment:Lcom/narvii/model/Comment;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    const v1, 0x7f1203f4

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 21
    .line 22
    new-instance v1, Lcom/narvii/comment/CommentStickerDetailFragment$1;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/narvii/comment/CommentStickerDetailFragment$1;-><init>(Lcom/narvii/comment/CommentStickerDetailFragment;)V

    .line 26
    .line 27
    .line 28
    const v2, 0x1040013

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 32
    .line 33
    .line 34
    const v1, 0x1040009

    .line 35
    .line 36
    sget-object v2, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 43
    return-void
.end method

.method private finishWithResult()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->sticker:Lcom/narvii/model/Sticker;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, v1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    const-string v1, "default"

    .line 17
    .line 18
    :goto_0
    const-string v2, "collectionId"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    const/4 v1, -0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 29
    return-void
.end method

.method static bridge synthetic o(Lcom/narvii/comment/CommentStickerDetailFragment;)Lcom/narvii/comment/CommentHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/comment/CommentStickerDetailFragment;->commentHelper:Lcom/narvii/comment/CommentHelper;

    return-object p0
.end method


# virtual methods
.method protected attachObject()Lcom/narvii/model/NVObject;
    .locals 1

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

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/comment/CommentStickerDetailFragment;->comment:Lcom/narvii/model/Comment;

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    move-object v1, v2

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v1}, Lcom/narvii/model/Comment;->uid()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 23
    move-result v3

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    move-result v0

    .line 34
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x66

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/comment/CommentStickerDetailFragment;->finishWithResult()V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 14
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "comment"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-class v0, Lcom/narvii/model/Comment;

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/model/Comment;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/comment/CommentStickerDetailFragment;->comment:Lcom/narvii/model/Comment;

    .line 20
    .line 21
    new-instance p1, Lcom/narvii/comment/CommentHelper;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 25
    move-result v0

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, p0, v0}, Lcom/narvii/comment/CommentHelper;-><init>(Lcom/narvii/app/NVContext;Z)V

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/comment/CommentStickerDetailFragment;->commentHelper:Lcom/narvii/comment/CommentHelper;

    .line 31
    return-void
.end method

.method protected onDeleteOpClicked()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->onDeleteOpClicked()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/comment/CommentStickerDetailFragment;->deleteComment()V

    .line 7
    return-void
.end method

.method protected useSticker()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/monetization/sticker/StickerBaseDetailFragment;->useSticker()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/comment/CommentStickerDetailFragment;->finishWithResult()V

    .line 7
    return-void
.end method
