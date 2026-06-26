.class public Lcom/narvii/account/SignUpSetPasswordFragment;
.super Lcom/narvii/account/AccountBaseFragment;
.source "SignUpSetPasswordFragment.java"

# interfaces
.implements Lcom/narvii/app/FragmentOnBackListener;


# instance fields
.field nextView:Landroid/view/View;

.field passEdit:Landroid/widget/EditText;

.field password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/narvii/account/AccountBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/account/SignUpSetPasswordFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/narvii/account/SignUpSetPasswordFragment;->updateNextView()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/account/SignUpSetPasswordFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/narvii/account/SignUpSetPasswordFragment;->goNext()V

    return-void
.end method

.method private goNext()V
    .locals 4

    .line 144
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    new-instance v0, Lcom/narvii/account/SignUpAddProfileFragment;

    invoke-direct {v0}, Lcom/narvii/account/SignUpAddProfileFragment;-><init>()V

    .line 148
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "email"

    .line 149
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "phoneNumber"

    .line 150
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v2, p0, Lcom/narvii/account/SignUpSetPasswordFragment;->password:Ljava/lang/String;

    const-string v3, "pass"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_third_part_secret"

    .line 152
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_is_third_part"

    .line 153
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "key_sign_up_method"

    .line 154
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_third_party_nickname"

    .line 155
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_avatar_url"

    .line 156
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "validationContext"

    .line 157
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 159
    invoke-virtual {p0, v0}, Lcom/narvii/account/SignUpSetPasswordFragment;->goToAddProfilePage(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method private updateNextView()V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/narvii/account/SignUpSetPasswordFragment;->passEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 139
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 140
    :goto_1
    iget-object v2, p0, Lcom/narvii/account/SignUpSetPasswordFragment;->nextView:Landroid/view/View;

    xor-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "SignUpCreatePassword"

    return-object v0
.end method

.method public goToAddProfilePage(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .line 164
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "autoSignup"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 165
    invoke-super {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->goToAddProfilePage(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public synthetic lambda$onViewCreated$0$SignUpSetPasswordFragment(Landroid/view/View;)V
    .locals 3

    .line 93
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "Next"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 95
    iget-object p1, p0, Lcom/narvii/account/SignUpSetPasswordFragment;->passEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/account/SignUpSetPasswordFragment;->password:Ljava/lang/String;

    const/4 p1, 0x2

    .line 96
    invoke-virtual {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->updateIndicatorViewStatus(I)V

    const-string p1, "account"

    .line 97
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    const-string v0, "api"

    .line 98
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 99
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/auth/register-check"

    .line 100
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 101
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    const-string v2, "deviceID"

    invoke-virtual {v1, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 102
    iget-object v1, p0, Lcom/narvii/account/SignUpSetPasswordFragment;->password:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/account/SignUpSetPasswordFragment;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "secret"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 105
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const/4 v1, 0x1

    .line 107
    invoke-virtual {p0, v1}, Lcom/narvii/account/AccountBaseFragment;->setIsRequesting(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->showProgress()V

    .line 109
    new-instance v1, Lcom/narvii/account/SignUpSetPasswordFragment$3;

    const-class v2, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v1, p0, v2}, Lcom/narvii/account/SignUpSetPasswordFragment$3;-><init>(Lcom/narvii/account/SignUpSetPasswordFragment;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method protected logSignUpMethod()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 46
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/LoginActivity;

    const/4 v0, 0x0

    .line 47
    iput v0, p1, Lcom/narvii/account/LoginActivity;->statMaxLoginStep:I

    const/16 v1, 0x14

    .line 48
    iput v1, p1, Lcom/narvii/account/LoginActivity;->statMaxSignupSetp:I

    const-string p1, "logging"

    .line 50
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/logging/LoggingService;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CreatePasswordStarting"

    .line 51
    invoke-interface {p1, v1, v0}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02e4

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onTotallySuccess()V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/narvii/account/SignUpSetPasswordFragment;->goNext()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 63
    invoke-super {p0, p1, p2}, Lcom/narvii/account/AccountBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0903bb

    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/narvii/account/SignUpSetPasswordFragment;->passEdit:Landroid/widget/EditText;

    const p2, 0x7f09075c

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/account/SignUpSetPasswordFragment;->nextView:Landroid/view/View;

    .line 67
    iget-object p1, p0, Lcom/narvii/account/SignUpSetPasswordFragment;->passEdit:Landroid/widget/EditText;

    new-instance p2, Lcom/narvii/account/SignUpSetPasswordFragment$1;

    invoke-direct {p2, p0}, Lcom/narvii/account/SignUpSetPasswordFragment$1;-><init>(Lcom/narvii/account/SignUpSetPasswordFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 84
    new-instance p1, Lcom/narvii/account/SignUpSetPasswordFragment$2;

    invoke-direct {p1, p0}, Lcom/narvii/account/SignUpSetPasswordFragment$2;-><init>(Lcom/narvii/account/SignUpSetPasswordFragment;)V

    const-wide/16 v0, 0x64

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 91
    iget-object p1, p0, Lcom/narvii/account/SignUpSetPasswordFragment;->nextView:Landroid/view/View;

    new-instance p2, Lcom/narvii/account/-$$Lambda$SignUpSetPasswordFragment$PKh5gsMJZ1bIyby6GkWxn4Dv-uY;

    invoke-direct {p2, p0}, Lcom/narvii/account/-$$Lambda$SignUpSetPasswordFragment$PKh5gsMJZ1bIyby6GkWxn4Dv-uY;-><init>(Lcom/narvii/account/SignUpSetPasswordFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
