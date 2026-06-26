.class public Lcom/narvii/account/EmailLoginFragment;
.super Lcom/narvii/account/LoginBaseFragment;
.source "EmailLoginFragment.java"


# instance fields
.field emailInputLayout:Lcom/narvii/widget/TextInputLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/narvii/account/LoginBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 90
    invoke-super {p0, p1}, Lcom/narvii/account/LoginBaseFragment;->afterTextChanged(Landroid/text/Editable;)V

    .line 92
    iget-object p1, p0, Lcom/narvii/account/EmailLoginFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {p1}, Lcom/narvii/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/account/LoginBaseFragment;->accountUtils:Lcom/narvii/account/AccountUtils;

    iget-object v1, p0, Lcom/narvii/account/EmailLoginFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 93
    invoke-virtual {v1}, Lcom/narvii/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/narvii/account/AccountUtils;->isValidEmail(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 94
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/account/EmailLoginFragment;->isContentVerified()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 95
    iget-object p1, p0, Lcom/narvii/account/LoginBaseFragment;->loginBtn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method protected forgetPassword()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/narvii/account/EmailLoginFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {v0}, Lcom/narvii/widget/TextInputLayout;->getEditContent()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/narvii/util/AccountWebUtils;->openForgetPasswordPage(Lcom/narvii/app/NVContext;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected isContentVerified()Z
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/narvii/account/LoginBaseFragment;->accountUtils:Lcom/narvii/account/AccountUtils;

    iget-object v1, p0, Lcom/narvii/account/EmailLoginFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {v1}, Lcom/narvii/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/account/LoginBaseFragment;->passInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {v2}, Lcom/narvii/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/narvii/account/AccountUtils;->isEmailAndPassVerifed(Landroid/widget/TextView;Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0906a2

    if-ne v0, v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/narvii/account/LoginBaseFragment;->accountUtils:Lcom/narvii/account/AccountUtils;

    iget-object v1, p0, Lcom/narvii/account/EmailLoginFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {v1}, Lcom/narvii/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountUtils;->validateEmail(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/account/EmailLoginFragment;->isContentVerified()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-super {p0, p1}, Lcom/narvii/account/LoginBaseFragment;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 106
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/account/LoginBaseFragment;->onClick(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 28
    invoke-super {p0, p1}, Lcom/narvii/account/LoginBaseFragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 31
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/LoginActivity;

    const/4 v0, 0x4

    .line 32
    iput v0, p1, Lcom/narvii/account/LoginActivity;->statMaxLoginStep:I

    const/4 v0, 0x0

    .line 33
    iput v0, p1, Lcom/narvii/account/LoginActivity;->statMaxSignupSetp:I

    const/4 v0, 0x2

    .line 34
    iput v0, p1, Lcom/narvii/account/LoginActivity;->statType:I

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b029d

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 46
    invoke-super {p0, p1, p2}, Lcom/narvii/account/LoginBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0903d7

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/TextInputLayout;

    iput-object p1, p0, Lcom/narvii/account/EmailLoginFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 48
    iget-object p1, p0, Lcom/narvii/account/EmailLoginFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {p1, p0}, Lcom/narvii/widget/TextInputLayout;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 49
    iget-object p1, p0, Lcom/narvii/account/EmailLoginFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    const-string p2, "email"

    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/TextInputLayout;->setInputText(Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/narvii/account/LoginBaseFragment;->passInputLayout:Lcom/narvii/widget/TextInputLayout;

    const-string v0, "pass"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/TextInputLayout;->setInputText(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/account/LoginBaseFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_0

    .line 53
    iget-object p2, p0, Lcom/narvii/account/EmailLoginFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    const/4 v0, 0x0

    const-string v1, "last_email"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/narvii/widget/TextInputLayout;->setInputText(Ljava/lang/String;)V

    .line 56
    :cond_0
    new-instance p1, Lcom/narvii/account/EmailLoginFragment$1;

    invoke-direct {p1, p0}, Lcom/narvii/account/EmailLoginFragment$1;-><init>(Lcom/narvii/account/EmailLoginFragment;)V

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected setupRequestBuilder(Lcom/narvii/util/http/ApiRequest$Builder;)V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/narvii/account/EmailLoginFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {v0}, Lcom/narvii/widget/TextInputLayout;->getEditContent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "email"

    .line 68
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/4 v2, 0x2

    .line 70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "v"

    invoke-virtual {p1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 71
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    return-void
.end method
