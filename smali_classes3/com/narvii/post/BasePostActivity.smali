.class public abstract Lcom/narvii/post/BasePostActivity;
.super Lcom/narvii/app/NVActivity;
.source "BasePostActivity.java"

# interfaces
.implements Lcom/narvii/post/PostListener;
.implements Lcom/narvii/media/MediaPickerFragment$OnResultListener;
.implements Lcom/narvii/media/MediaPickerFragment$OnPickColorResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/post/BasePostActivity$BaseImgCallback;,
        Lcom/narvii/post/BasePostActivity$ClearErrorWatcher;,
        Lcom/narvii/post/BasePostActivity$HideHintWatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/narvii/post/PostObject;",
        ">",
        "Lcom/narvii/app/NVActivity;",
        "Lcom/narvii/post/PostListener;",
        "Lcom/narvii/media/MediaPickerFragment$OnResultListener;",
        "Lcom/narvii/media/MediaPickerFragment$OnPickColorResultListener;"
    }
.end annotation


# static fields
.field public static final POST_FAIL_FANS_CLUB_CLOSED:I = 0x12c1

.field private static final TYPEFACE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field protected discardDraft:Z

.field protected mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

.field protected ndcSubmitToken:Ljava/lang/String;

.field protected progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "^((?:\\[[BCIUS]+\\])+).*$"

    const/16 v1, 0x8

    .line 550
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/narvii/post/BasePostActivity;->TYPEFACE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/narvii/post/BasePostActivity;->ndcSubmitToken:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/util/regex/Pattern;
    .locals 1

    .line 51
    sget-object v0, Lcom/narvii/post/BasePostActivity;->TYPEFACE_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method protected checkActivation()Z
    .locals 3

    const-string v0, "account"

    .line 399
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 400
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasActivation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 402
    sget v1, Lcom/narvii/lib/R$string;->post_not_eligible:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 403
    sget v1, Lcom/narvii/lib/R$string;->post_activate_account_first:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    .line 404
    sget-object v2, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 405
    sget v1, Lcom/narvii/lib/R$string;->post_activate_account:I

    new-instance v2, Lcom/narvii/post/BasePostActivity$6;

    invoke-direct {v2, p0}, Lcom/narvii/post/BasePostActivity$6;-><init>(Lcom/narvii/post/BasePostActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 414
    new-instance v1, Lcom/narvii/post/BasePostActivity$7;

    invoke-direct {v1, p0}, Lcom/narvii/post/BasePostActivity$7;-><init>(Lcom/narvii/post/BasePostActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 421
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected checkEligible()V
    .locals 0

    return-void
.end method

.method protected checkEligible(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "account"

    .line 361
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 362
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user-profile/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/compose-eligible-check"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "objectType"

    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 363
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "objectSubtype"

    .line 364
    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 366
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->userInteraction()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 367
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const-string p2, "api"

    .line 368
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 369
    new-instance v0, Lcom/narvii/post/BasePostActivity$4;

    const-class v1, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/post/BasePostActivity$4;-><init>(Lcom/narvii/post/BasePostActivity;Ljava/lang/Class;)V

    invoke-virtual {p2, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method protected confirmationMessage(Lcom/narvii/post/PostObject;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected createPreviewOption(Landroid/view/Menu;)V
    .locals 5

    .line 132
    sget v0, Lcom/narvii/lib/R$string;->compose_preview:I

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    new-instance v0, Lcom/narvii/util/ActionBarIcon;

    .line 133
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/narvii/lib/R$string;->ion_eye:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x3f59999a    # 0.85f

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FI)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x2

    .line 134
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method protected createSubmitButton(Landroid/view/Menu;)V
    .locals 3

    .line 138
    sget v0, Lcom/narvii/lib/R$string;->post_submit:I

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    new-instance v0, Lcom/narvii/util/ActionBarIcon;

    .line 139
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$string;->fa_check:I

    invoke-direct {v0, v1, v2}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x2

    .line 140
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method protected abstract doPost(Lcom/narvii/post/PostObject;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected doPreview(Lcom/narvii/post/PostObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method protected eligibleFail(Ljava/lang/String;)V
    .locals 2

    .line 385
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 386
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 387
    sget p1, Lcom/narvii/lib/R$string;->close:I

    sget-object v1, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 388
    new-instance p1, Lcom/narvii/post/BasePostActivity$5;

    invoke-direct {p1, p0}, Lcom/narvii/post/BasePostActivity$5;-><init>(Lcom/narvii/post/BasePostActivity;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 395
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method protected fanClubClosedHintStrId()I
    .locals 1

    .line 321
    sget v0, Lcom/narvii/lib/R$string;->fans_club_closed:I

    return v0
.end method

.method protected getNdcSubmitToken()Ljava/lang/String;
    .locals 1

    .line 223
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->isEdit()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/post/BasePostActivity;->ndcSubmitToken:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 224
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/post/BasePostActivity;->ndcSubmitToken:Ljava/lang/String;

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/narvii/post/BasePostActivity;->ndcSubmitToken:Ljava/lang/String;

    return-object v0
.end method

.method public abstract isEdit()Z
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$onLoginResult$0$BasePostActivity()V
    .locals 1

    .line 175
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->isEdit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->checkEligible()V

    :cond_0
    return-void
.end method

.method protected logPageViewEvent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 69
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "ndcSubmitToken"

    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/narvii/post/BasePostActivity;->ndcSubmitToken:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "mediaPicker"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    iput-object p1, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 73
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-nez p1, :cond_1

    .line 74
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    iput-object p1, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 75
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 77
    :cond_1
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 78
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    iput-object p0, p1, Lcom/narvii/media/MediaPickerFragment;->pickColorResultListener:Lcom/narvii/media/MediaPickerFragment$OnPickColorResultListener;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->supportPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0, p1}, Lcom/narvii/post/BasePostActivity;->createPreviewOption(Landroid/view/Menu;)V

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->showSubmitButton()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p0, p1}, Lcom/narvii/post/BasePostActivity;->createSubmitButton(Landroid/view/Menu;)V

    .line 128
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 95
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onDestroy()V

    .line 96
    iget-object v0, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    :cond_0
    return-void
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 2

    .line 172
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loginAhead"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 174
    new-instance p1, Lcom/narvii/post/-$$Lambda$BasePostActivity$SzlyTxUIoYjzb8xju6SbFkX-RwM;

    invoke-direct {p1, p0}, Lcom/narvii/post/-$$Lambda$BasePostActivity$SzlyTxUIoYjzb8xju6SbFkX-RwM;-><init>(Lcom/narvii/post/BasePostActivity;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 180
    iput-boolean p1, p0, Lcom/narvii/post/BasePostActivity;->discardDraft:Z

    .line 181
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->finish()V

    goto :goto_0

    .line 184
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVActivity;->onLoginResult(ZLandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 145
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/narvii/lib/R$string;->post_submit:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->startPost()V

    return v2

    .line 149
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/narvii/lib/R$string;->compose_preview:I

    if-ne v0, v1, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->startPreview()V

    return v2

    .line 153
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPickColorResult(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 89
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 90
    new-instance p1, Landroid/content/Intent;

    const-string v0, "loginAhead"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->ensureLogin(Landroid/content/Intent;)V

    return-void
.end method

.method public onPostFail(Lcom/narvii/post/PostHelper;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 294
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    .line 297
    :cond_0
    iget-object p4, p0, Lcom/narvii/post/BasePostActivity;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/app/Dialog;->isShowing()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 298
    iget-object p4, p0, Lcom/narvii/post/BasePostActivity;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    invoke-virtual {p4}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 300
    :cond_1
    iget-object p4, p1, Lcom/narvii/post/PostHelper;->post:Lcom/narvii/post/PostObject;

    instance-of p4, p4, Lcom/narvii/influencer/FansOnlyPost;

    if-eqz p4, :cond_2

    const/16 p4, 0x12c1

    if-ne p2, p4, :cond_2

    .line 301
    new-instance p2, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 302
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->fanClubClosedHintStrId()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 303
    sget p3, Lcom/narvii/lib/R$string;->cancel:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 304
    sget p3, Lcom/narvii/lib/R$string;->post_submit:I

    new-instance p4, Lcom/narvii/post/BasePostActivity$3;

    invoke-direct {p4, p0, p1}, Lcom/narvii/post/BasePostActivity$3;-><init>(Lcom/narvii/post/BasePostActivity;Lcom/narvii/post/PostHelper;)V

    invoke-virtual {p2, p3, p4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 314
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 316
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/narvii/post/BasePostActivity;->showErrorMsg(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 3

    .line 254
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 256
    instance-of v0, p2, Lcom/narvii/model/api/ObjectResponse;

    if-eqz v0, :cond_0

    .line 257
    move-object v0, p2

    check-cast v0, Lcom/narvii/model/api/ObjectResponse;

    invoke-virtual {v0}, Lcom/narvii/model/api/ObjectResponse;->object()Lcom/narvii/model/NVObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "object"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    invoke-virtual {p0, p2, v0}, Lcom/narvii/post/BasePostActivity;->sendNotification(Lcom/narvii/model/api/ApiResponse;Lcom/narvii/model/NVObject;)V

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    const-string p2, "community"

    .line 270
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 271
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class v0, Lcom/narvii/model/Community;

    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Community;

    if-eqz p2, :cond_2

    .line 273
    iget p2, p2, Lcom/narvii/model/Community;->id:I

    const-string v0, "cid"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    const/4 p2, -0x1

    .line 276
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 278
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 279
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 281
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->finish()V

    return-void
.end method

.method public onPostProgress(Lcom/narvii/post/PostHelper;II)V
    .locals 0

    .line 247
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/post/BasePostActivity;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 248
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/dialog/ProgressHorizontalDialog;->setProgress(II)V

    :cond_0
    return-void
.end method

.method public onPostStart(Lcom/narvii/post/PostHelper;)V
    .locals 2

    .line 231
    new-instance v0, Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    invoke-direct {v0, p0}, Lcom/narvii/util/dialog/ProgressHorizontalDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/post/BasePostActivity;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 232
    iget-object v0, p0, Lcom/narvii/post/BasePostActivity;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    new-instance v1, Lcom/narvii/post/BasePostActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/narvii/post/BasePostActivity$2;-><init>(Lcom/narvii/post/BasePostActivity;Lcom/narvii/post/PostHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 239
    :try_start_0
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity;->progressDialog:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressHorizontalDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "fail to show progress dialog"

    .line 241
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 83
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 84
    iget-object v0, p0, Lcom/narvii/post/BasePostActivity;->ndcSubmitToken:Ljava/lang/String;

    const-string v1, "ndcSubmitToken"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract postClazz()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected abstract savePost()Lcom/narvii/post/PostObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected sendNotification(Lcom/narvii/model/api/ApiResponse;Lcom/narvii/model/NVObject;)V
    .locals 2

    .line 285
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "edit"

    goto :goto_0

    :cond_0
    const-string v0, "new"

    .line 286
    :goto_0
    new-instance v1, Lcom/narvii/notification/Notification;

    invoke-direct {v1, v0, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 287
    iput-object p1, v1, Lcom/narvii/notification/Notification;->response:Lcom/narvii/model/api/ApiResponse;

    .line 288
    invoke-static {p0, v1}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method protected showAlert(I)V
    .locals 0

    .line 443
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/post/BasePostActivity;->showAlert(Ljava/lang/String;)V

    return-void
.end method

.method protected showAlert(Ljava/lang/String;)V
    .locals 2

    .line 447
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 448
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget-object v0, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    const v1, 0x104000a

    .line 449
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 450
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method protected showErrorMsg(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0xe6

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-lez p1, :cond_1

    .line 328
    invoke-static {p0}, Lcom/narvii/util/http/ApiService;->shouldShowErrMessage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 330
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 331
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    sget-object v0, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 332
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 333
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 335
    invoke-static {p0, p2, p1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :goto_0
    return-void
.end method

.method protected showSubmitButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public startPost()V
    .locals 4

    .line 189
    invoke-static {p0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 191
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->savePost()Lcom/narvii/post/PostObject;

    move-result-object v0

    .line 193
    invoke-virtual {p0, v0}, Lcom/narvii/post/BasePostActivity;->validateUpload(Lcom/narvii/post/PostObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {p0, v0}, Lcom/narvii/post/BasePostActivity;->confirmationMessage(Lcom/narvii/post/PostObject;)Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    invoke-virtual {p0, v0}, Lcom/narvii/post/BasePostActivity;->doPost(Lcom/narvii/post/PostObject;)V

    goto :goto_0

    .line 198
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 199
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    .line 200
    sget-object v3, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 201
    sget v1, Lcom/narvii/lib/R$string;->continue_:I

    new-instance v3, Lcom/narvii/post/BasePostActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/narvii/post/BasePostActivity$1;-><init>(Lcom/narvii/post/BasePostActivity;Lcom/narvii/post/PostObject;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 207
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_1
    :goto_0
    return-void
.end method

.method protected startPreview()V
    .locals 2

    .line 157
    invoke-static {p0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 158
    invoke-virtual {p0}, Lcom/narvii/post/BasePostActivity;->savePost()Lcom/narvii/post/PostObject;

    move-result-object v0

    .line 159
    invoke-virtual {p0, v0}, Lcom/narvii/post/BasePostActivity;->validateUpload(Lcom/narvii/post/PostObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {p0, v0}, Lcom/narvii/post/BasePostActivity;->doPreview(Lcom/narvii/post/PostObject;)V

    :cond_0
    return-void
.end method

.method protected supportPreview()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected trimMediaList(Ljava/util/List;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;II)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 433
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, p2, :cond_0

    .line 434
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 438
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-virtual {p0, p3, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :cond_1
    return-void
.end method

.method protected updateView(Lcom/narvii/post/PostObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method protected validateEditTextMax(Landroid/widget/EditText;II)Z
    .locals 3

    .line 468
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, p2, :cond_0

    .line 470
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 471
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, p1, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-virtual {p0, p3, p1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/post/BasePostActivity;->showAlert(Ljava/lang/String;)V

    return v1

    :cond_0
    return v2
.end method

.method protected validateEditTextNotEmpty(Landroid/widget/EditText;I)Z
    .locals 3

    .line 455
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\u200D"

    const-string v2, ""

    .line 456
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 457
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 458
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 459
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 460
    new-instance p2, Lcom/narvii/post/BasePostActivity$ClearErrorWatcher;

    invoke-direct {p2, p1}, Lcom/narvii/post/BasePostActivity$ClearErrorWatcher;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected validateMediaListMax(Ljava/util/List;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;II)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 489
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p2, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    .line 490
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-virtual {p0, p3, p1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/post/BasePostActivity;->showAlert(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method protected validateMediaListNotEmpty(Ljava/util/List;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;I)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 479
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 480
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/post/BasePostActivity;->showAlert(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method protected validateUpload(Lcom/narvii/post/PostObject;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
