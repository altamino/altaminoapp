.class public abstract Lcom/narvii/account/LoginBaseFragment;
.super Lcom/narvii/account/AccountBaseFragment;
.source "LoginBaseFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected accountUtils:Lcom/narvii/account/AccountUtils;

.field protected final listener:Lcom/narvii/account/AccountResponseListener;

.field protected loginBtn:Landroid/widget/Button;

.field protected passInputLayout:Lcom/narvii/widget/TextInputLayout;

.field protected request:Lcom/narvii/util/http/ApiRequest;

.field sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/narvii/account/AccountBaseFragment;-><init>()V

    .line 130
    new-instance v0, Lcom/narvii/account/LoginBaseFragment$1;

    invoke-direct {v0, p0, p0}, Lcom/narvii/account/LoginBaseFragment$1;-><init>(Lcom/narvii/account/LoginBaseFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/account/LoginBaseFragment;->listener:Lcom/narvii/account/AccountResponseListener;

    return-void
.end method

.method private sendLoginRequest()V
    .locals 6

    .line 104
    invoke-virtual {p0}, Lcom/narvii/account/LoginBaseFragment;->isContentVerified()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "account"

    .line 107
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    const-string v1, "api"

    .line 108
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 109
    iget-object v2, p0, Lcom/narvii/account/LoginBaseFragment;->passInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {v2}, Lcom/narvii/widget/TextInputLayout;->getEditContent()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    .line 111
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v4, "/auth/login"

    .line 112
    invoke-virtual {v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 113
    invoke-virtual {p0, v3}, Lcom/narvii/account/LoginBaseFragment;->setupRequestBuilder(Lcom/narvii/util/http/ApiRequest$Builder;)V

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "secret"

    invoke-virtual {v3, v5, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 115
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v4, "deviceID"

    invoke-virtual {v3, v4, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 116
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "clientType"

    invoke-virtual {v3, v4, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v0, "action"

    const-string v4, "normal"

    .line 117
    invoke-virtual {v3, v0, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v0, "pass"

    .line 118
    invoke-virtual {v3, v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 119
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/account/LoginBaseFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 120
    iget-object v0, p0, Lcom/narvii/account/LoginBaseFragment;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v2, p0, Lcom/narvii/account/LoginBaseFragment;->listener:Lcom/narvii/account/AccountResponseListener;

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 121
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->startSubmit()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/narvii/account/LoginBaseFragment;->isContentVerified()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/narvii/account/LoginBaseFragment;->loginBtn:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/LoginBaseFragment;->loginBtn:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected forgetPassword()V
    .locals 0

    return-void
.end method

.method protected isContentVerified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected loginBtnClick()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/narvii/account/LoginBaseFragment;->loginBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->callOnClick()Z

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onAttach(Landroid/content/Context;)V

    const-string p1, "prefs"

    .line 43
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/narvii/account/LoginBaseFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0904b7

    if-eq p1, v0, :cond_1

    const v0, 0x7f0906a2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/narvii/account/LoginBaseFragment;->sendLoginRequest()V

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/account/LoginBaseFragment;->forgetPassword()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    new-instance p1, Lcom/narvii/account/AccountUtils;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/account/AccountUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/account/LoginBaseFragment;->accountUtils:Lcom/narvii/account/AccountUtils;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 54
    invoke-super {p0, p1, p2}, Lcom/narvii/account/AccountBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090b9a

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f0f0043

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090822

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/TextInputLayout;

    iput-object p2, p0, Lcom/narvii/account/LoginBaseFragment;->passInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 58
    iget-object p2, p0, Lcom/narvii/account/LoginBaseFragment;->passInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {p2, p0}, Lcom/narvii/widget/TextInputLayout;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p2, 0x7f0906a2

    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/narvii/account/LoginBaseFragment;->loginBtn:Landroid/widget/Button;

    .line 61
    iget-object p2, p0, Lcom/narvii/account/LoginBaseFragment;->loginBtn:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object p2, p0, Lcom/narvii/account/LoginBaseFragment;->loginBtn:Landroid/widget/Button;

    new-instance v0, Lcom/narvii/account/AccountUtils;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/account/AccountUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/narvii/account/AccountUtils;->getAccountForegroundColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(I)V

    const p2, 0x7f0904b7

    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected abstract setupRequestBuilder(Lcom/narvii/util/http/ApiRequest$Builder;)V
.end method
