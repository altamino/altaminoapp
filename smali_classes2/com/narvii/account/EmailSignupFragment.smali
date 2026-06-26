.class public Lcom/narvii/account/EmailSignupFragment;
.super Lcom/narvii/account/AccountBaseFragment;
.source "EmailSignupFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

.field private edtFake:Landroid/widget/EditText;

.field private emailInputLayout:Lcom/narvii/widget/TextInputLayout;

.field private lastRequsetEmail:Ljava/lang/String;

.field private request:Lcom/narvii/util/http/ApiRequest;

.field private stopAnimation:Z

.field protected verifyCodeHelper:Lcom/narvii/account/VerifyCodeSharedPrefsHelper;

.field private verifyView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/narvii/account/AccountBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/account/EmailSignupFragment;)Lcom/narvii/widget/AutoCompleteEmailView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/narvii/account/EmailSignupFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/account/EmailSignupFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/narvii/account/EmailSignupFragment;->showEmailConfirmDialog()V

    return-void
.end method

.method static synthetic access$202(Lcom/narvii/account/EmailSignupFragment;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/narvii/account/EmailSignupFragment;->request:Lcom/narvii/util/http/ApiRequest;

    return-object p1
.end method

.method static synthetic access$300(Lcom/narvii/account/EmailSignupFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/narvii/account/EmailSignupFragment;->goNext()V

    return-void
.end method

.method private checkLegality(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 125
    invoke-direct {p0}, Lcom/narvii/account/EmailSignupFragment;->ieEmailValid()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "email"

    if-nez v0, :cond_0

    const-string p2, "logging"

    .line 126
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/logging/LoggingService;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v1, "reason"

    aput-object v1, v0, p1

    const/4 p1, 0x3

    const-string v1, "InvalidEmail"

    aput-object v1, v0, p1

    const-string p1, "AccountError"

    .line 127
    invoke-interface {p2, p1, v0}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/narvii/account/EmailSignupFragment;->lastRequsetEmail:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-direct {p0}, Lcom/narvii/account/EmailSignupFragment;->goNext()V

    return-void

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->showProgress()V

    const-string v0, "account"

    .line 135
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    const-string v3, "api"

    .line 136
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/util/http/ApiService;

    .line 137
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    const-string v5, "/auth/register-check"

    .line 138
    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    .line 139
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v5, "deviceID"

    invoke-virtual {v4, v5, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 140
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v4, "secret"

    invoke-virtual {v0, v4, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 143
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 144
    invoke-virtual {v0, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 145
    invoke-virtual {v0, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 147
    :cond_3
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/account/EmailSignupFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 149
    invoke-virtual {p0, v1}, Lcom/narvii/account/AccountBaseFragment;->setIsRequesting(Z)V

    .line 150
    iget-object p2, p0, Lcom/narvii/account/EmailSignupFragment;->request:Lcom/narvii/util/http/ApiRequest;

    new-instance v0, Lcom/narvii/account/EmailSignupFragment$2;

    const-class v1, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v0, p0, v1, p1}, Lcom/narvii/account/EmailSignupFragment$2;-><init>(Lcom/narvii/account/EmailSignupFragment;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v3, p2, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private goNext()V
    .locals 7

    .line 201
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/narvii/account/EmailSignupFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/account/EmailSignupFragment;->lastRequsetEmail:Ljava/lang/String;

    .line 205
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f01000e

    const v2, 0x7f01000f

    const v3, 0x7f010010

    const v4, 0x7f010011

    .line 206
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 208
    new-instance v1, Lcom/narvii/account/CodeVerifyFragment;

    invoke-direct {v1}, Lcom/narvii/account/CodeVerifyFragment;-><init>()V

    .line 209
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x2

    const-string/jumbo v4, "type"

    .line 210
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    iget-object v4, p0, Lcom/narvii/account/EmailSignupFragment;->lastRequsetEmail:Ljava/lang/String;

    const-string v5, "email"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "key_third_part_secret"

    .line 212
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "key_is_third_part"

    .line 213
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "key_sign_up_method"

    .line 214
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "key_third_party_nickname"

    .line 215
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "key_avatar_url"

    .line 216
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const v2, 0x7f0904ba

    .line 218
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    const-string v0, "logging"

    .line 220
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v5, v1, v2

    const/4 v2, 0x1

    .line 221
    iget-object v3, p0, Lcom/narvii/account/EmailSignupFragment;->lastRequsetEmail:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "EmailVerificationStarting"

    invoke-interface {v0, v2, v1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private ieEmailValid()Z
    .locals 2

    .line 267
    new-instance v0, Lcom/narvii/account/AccountUtils;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/account/AccountUtils;-><init>(Landroid/content/Context;)V

    .line 268
    iget-object v1, p0, Lcom/narvii/account/EmailSignupFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountUtils;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/narvii/account/EmailSignupFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/TextInputLayout;->updateStatus(Z)V

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method private requestEmailCode(Ljava/lang/String;)V
    .locals 2

    .line 287
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->showProgress()V

    .line 288
    new-instance v0, Lcom/narvii/account/EmailSignupFragment$4;

    const-class v1, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v0, p0, v1, p1}, Lcom/narvii/account/EmailSignupFragment$4;-><init>(Lcom/narvii/account/EmailSignupFragment;Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, v0}, Lcom/narvii/account/AccountBaseFragment;->requestSecurityCode(ILjava/lang/String;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private showEmailConfirmDialog()V
    .locals 3

    .line 276
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0a9b

    .line 277
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    .line 278
    iget-object v1, p0, Lcom/narvii/account/EmailSignupFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 279
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 280
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const v1, 0x7f0f03cd

    const/4 v2, 0x0

    .line 281
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 282
    new-instance v1, Lcom/narvii/account/-$$Lambda$EmailSignupFragment$CZmKp4l2Jq6RDkFZn4QtrqraYjo;

    invoke-direct {v1, p0}, Lcom/narvii/account/-$$Lambda$EmailSignupFragment$CZmKp4l2Jq6RDkFZn4QtrqraYjo;-><init>(Lcom/narvii/account/EmailSignupFragment;)V

    const v2, 0x7f0f119f

    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 283
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private updateVerifyView()V
    .locals 3

    .line 262
    new-instance v0, Lcom/narvii/account/AccountUtils;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/account/AccountUtils;-><init>(Landroid/content/Context;)V

    .line 263
    iget-object v1, p0, Lcom/narvii/account/EmailSignupFragment;->verifyView:Landroid/view/View;

    iget-object v2, p0, Lcom/narvii/account/EmailSignupFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/account/AccountUtils;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 258
    invoke-direct {p0}, Lcom/narvii/account/EmailSignupFragment;->updateVerifyView()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "SignUpEnterYourEmail"

    return-object v0
.end method

.method protected handleAlreadyRegistered(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 184
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    const-string v1, "SignUpEmailTaken"

    invoke-direct {v0, p0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    const v1, 0x7f0f03e6

    .line 185
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    .line 186
    invoke-virtual {v0, p1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 187
    new-instance p1, Lcom/narvii/account/-$$Lambda$EmailSignupFragment$-09YqnzYXfVmQz2lSHcEll4kjrE;

    invoke-direct {p1, p0, v0}, Lcom/narvii/account/-$$Lambda$EmailSignupFragment$-09YqnzYXfVmQz2lSHcEll4kjrE;-><init>(Lcom/narvii/account/EmailSignupFragment;Lcom/narvii/widget/ACMAlertDialog;)V

    const v1, 0x7f0f03cd

    invoke-virtual {v0, v1, p1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 191
    new-instance p1, Lcom/narvii/account/-$$Lambda$EmailSignupFragment$g8-05u0Cvg849N6QPgfBVQi2OH0;

    invoke-direct {p1, p0, v0, p2}, Lcom/narvii/account/-$$Lambda$EmailSignupFragment$g8-05u0Cvg849N6QPgfBVQi2OH0;-><init>(Lcom/narvii/account/EmailSignupFragment;Lcom/narvii/widget/ACMAlertDialog;Ljava/lang/String;)V

    const p2, 0x7f0f0043

    invoke-virtual {v0, p2, p1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 197
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method public synthetic lambda$handleAlreadyRegistered$1$EmailSignupFragment(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    const-string p2, "Edit"

    .line 188
    invoke-static {p1, p2}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 189
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$handleAlreadyRegistered$2$EmailSignupFragment(Lcom/narvii/widget/ACMAlertDialog;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    const-string p3, "Login"

    .line 192
    invoke-static {p1, p3}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 193
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p3, "email"

    .line 194
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->switchLogin(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onViewCreated$0$EmailSignupFragment(Landroid/view/View;)V
    .locals 1

    .line 97
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "VerifyEmail"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 98
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/narvii/account/EmailSignupFragment;->checkLegality(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$showEmailConfirmDialog$3$EmailSignupFragment(Landroid/view/View;)V
    .locals 0

    .line 282
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/account/EmailSignupFragment;->requestEmailCode(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 59
    invoke-super {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_1

    .line 61
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/LoginActivity;

    const-string v0, "key_is_third_part"

    .line 62
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 63
    iput v1, p1, Lcom/narvii/account/LoginActivity;->statMaxLoginStep:I

    const/16 v0, 0x14

    .line 64
    iput v0, p1, Lcom/narvii/account/LoginActivity;->statMaxSignupSetp:I

    goto :goto_0

    .line 66
    :cond_0
    iput v1, p1, Lcom/narvii/account/LoginActivity;->statMaxLoginStep:I

    const/4 v0, 0x4

    .line 67
    iput v0, p1, Lcom/narvii/account/LoginActivity;->statMaxSignupSetp:I

    const/4 v0, 0x2

    .line 68
    iput v0, p1, Lcom/narvii/account/LoginActivity;->statType:I

    .line 72
    :cond_1
    :goto_0
    new-instance p1, Lcom/narvii/account/VerifyCodeSharedPrefsHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/account/VerifyCodeSharedPrefsHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/account/EmailSignupFragment;->verifyCodeHelper:Lcom/narvii/account/VerifyCodeSharedPrefsHelper;

    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 1

    .line 226
    iget-boolean v0, p0, Lcom/narvii/account/EmailSignupFragment;->stopAnimation:Z

    if-eqz v0, :cond_0

    .line 227
    new-instance p1, Lcom/narvii/account/EmailSignupFragment$3;

    invoke-direct {p1, p0}, Lcom/narvii/account/EmailSignupFragment$3;-><init>(Lcom/narvii/account/EmailSignupFragment;)V

    const-wide/16 p2, 0x0

    .line 229
    invoke-virtual {p1, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object p1

    .line 232
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02e5

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/narvii/account/EmailSignupFragment;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_0

    const-string v0, "api"

    .line 116
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 117
    iget-object v1, p0, Lcom/narvii/account/EmailSignupFragment;->request:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/narvii/account/EmailSignupFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 120
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 239
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment;->request:Lcom/narvii/util/http/ApiRequest;

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    .line 242
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/narvii/account/EmailSignupFragment;->checkLegality(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return p3
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 89
    invoke-super {p0, p1, p2}, Lcom/narvii/account/AccountBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0903bb

    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/AutoCompleteEmailView;

    iput-object p2, p0, Lcom/narvii/account/EmailSignupFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    .line 91
    iget-object p2, p0, Lcom/narvii/account/EmailSignupFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    invoke-virtual {p2}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 92
    iget-object p2, p0, Lcom/narvii/account/EmailSignupFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    invoke-virtual {p2, p0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 93
    iget-object p2, p0, Lcom/narvii/account/EmailSignupFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    invoke-virtual {p2, p0}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const p2, 0x7f090c49

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/account/EmailSignupFragment;->verifyView:Landroid/view/View;

    .line 96
    iget-object p2, p0, Lcom/narvii/account/EmailSignupFragment;->verifyView:Landroid/view/View;

    new-instance v0, Lcom/narvii/account/-$$Lambda$EmailSignupFragment$td_NObjXRR04YZjiuobukK_nqqE;

    invoke-direct {v0, p0}, Lcom/narvii/account/-$$Lambda$EmailSignupFragment$td_NObjXRR04YZjiuobukK_nqqE;-><init>(Lcom/narvii/account/EmailSignupFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0905ac

    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/TextInputLayout;

    iput-object p2, p0, Lcom/narvii/account/EmailSignupFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    const p2, 0x7f09041a

    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/narvii/account/EmailSignupFragment;->edtFake:Landroid/widget/EditText;

    .line 105
    new-instance p1, Lcom/narvii/account/EmailSignupFragment$1;

    invoke-direct {p1, p0}, Lcom/narvii/account/EmailSignupFragment$1;-><init>(Lcom/narvii/account/EmailSignupFragment;)V

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
