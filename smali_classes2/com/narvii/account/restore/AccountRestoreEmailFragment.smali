.class public Lcom/narvii/account/restore/AccountRestoreEmailFragment;
.super Lcom/narvii/account/restore/AccountRestoreBaseFragment;
.source "AccountRestoreEmailFragment.java"


# instance fields
.field emailInputLayout:Lcom/narvii/widget/TextInputLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/narvii/account/restore/AccountRestoreBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected forgetPassword()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/narvii/account/restore/AccountRestoreEmailFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {v0}, Lcom/narvii/widget/TextInputLayout;->getEditContent()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/narvii/util/AccountWebUtils;->openForgetPasswordPage(Lcom/narvii/app/NVContext;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected isContentVerified()Z
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/narvii/account/restore/AccountRestoreEmailFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->passInputLayout:Lcom/narvii/widget/TextInputLayout;

    if-nez v2, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->accountUtils:Lcom/narvii/account/AccountUtils;

    invoke-virtual {v0}, Lcom/narvii/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->passInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {v3}, Lcom/narvii/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/narvii/account/AccountUtils;->isEmailAndPassVerifed(Landroid/widget/TextView;Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0b0275

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 26
    invoke-super {p0, p1, p2}, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0903d7

    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/TextInputLayout;

    iput-object p1, p0, Lcom/narvii/account/restore/AccountRestoreEmailFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 28
    iget-object p1, p0, Lcom/narvii/account/restore/AccountRestoreEmailFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {p1, p0}, Lcom/narvii/widget/TextInputLayout;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 30
    iget-object p1, p0, Lcom/narvii/account/restore/AccountRestoreEmailFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    const-string p2, "email"

    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/TextInputLayout;->setInputText(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 32
    iget-object p1, p0, Lcom/narvii/account/restore/AccountRestoreEmailFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {p1}, Lcom/narvii/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 33
    iget-object p1, p0, Lcom/narvii/account/restore/AccountRestoreEmailFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {p1}, Lcom/narvii/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 35
    :cond_0
    new-instance p1, Lcom/narvii/account/restore/AccountRestoreEmailFragment$1;

    invoke-direct {p1, p0}, Lcom/narvii/account/restore/AccountRestoreEmailFragment$1;-><init>(Lcom/narvii/account/restore/AccountRestoreEmailFragment;)V

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected setupRequestBuilder(Lcom/narvii/util/http/ApiRequest$Builder;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/narvii/account/restore/AccountRestoreEmailFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {v0}, Lcom/narvii/widget/TextInputLayout;->getEditContent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 52
    iget-object v0, p0, Lcom/narvii/account/restore/AccountRestoreEmailFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {v0}, Lcom/narvii/widget/TextInputLayout;->getEditContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    return-void
.end method

.method protected setupResultIntent(Landroid/content/Intent;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/narvii/account/restore/AccountRestoreEmailFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {v0}, Lcom/narvii/widget/TextInputLayout;->getEditContent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method
