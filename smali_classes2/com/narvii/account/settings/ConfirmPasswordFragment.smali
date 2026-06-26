.class public abstract Lcom/narvii/account/settings/ConfirmPasswordFragment;
.super Lcom/narvii/app/NVFragment;
.source "ConfirmPasswordFragment.java"


# static fields
.field public static final ACTION_TYPE_CONNECT:I = 0x1

.field public static final ACTION_TYPE_DISCONNECT:I = 0x2


# instance fields
.field accountUtils:Lcom/narvii/account/AccountUtils;

.field protected actionType:I

.field forgerPassword:Landroid/widget/TextView;

.field private final listener:Lcom/narvii/account/AccountResponseListener;

.field pass:Ljava/lang/String;

.field passEdit:Landroid/widget/EditText;

.field progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field private request:Lcom/narvii/util/http/ApiRequest;

.field protected textLoadingLayout:Lcom/narvii/widget/TextLoadingLayout;

.field titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 159
    new-instance v0, Lcom/narvii/account/settings/ConfirmPasswordFragment$4;

    invoke-direct {v0, p0, p0}, Lcom/narvii/account/settings/ConfirmPasswordFragment$4;-><init>(Lcom/narvii/account/settings/ConfirmPasswordFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment;->listener:Lcom/narvii/account/AccountResponseListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/account/settings/ConfirmPasswordFragment;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment;->request:Lcom/narvii/util/http/ApiRequest;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/account/settings/ConfirmPasswordFragment;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/narvii/account/settings/ConfirmPasswordFragment;->validatePassword(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/account/settings/ConfirmPasswordFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/narvii/account/settings/ConfirmPasswordFragment;->disconnectAccount()V

    return-void
.end method

.method private disconnectAccount()V
    .locals 4

    const-string v0, "account"

    .line 234
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    const-string v1, "api"

    .line 235
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 236
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 237
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v3, "/auth/disconnect"

    .line 238
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 239
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v3, "deviceID"

    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment;->pass:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "secret"

    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 241
    invoke-virtual {p0}, Lcom/narvii/account/settings/ConfirmPasswordFragment;->getAuthType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 242
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 243
    iget-object v0, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v2, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment;->listener:Lcom/narvii/account/AccountResponseListener;

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private validatePassword(Ljava/lang/String;)V
    .locals 4

    const-string v0, "account"

    .line 196
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    const-string v1, "api"

    .line 197
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 198
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "/auth/verify-password"

    .line 199
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 200
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v3, "deviceID"

    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 201
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "secret"

    invoke-virtual {v0, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 204
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 206
    iget-object p1, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment;->request:Lcom/narvii/util/http/ApiRequest;

    new-instance v0, Lcom/narvii/account/settings/ConfirmPasswordFragment$5;

    const-class v2, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v0, p0, v2}, Lcom/narvii/account/settings/ConfirmPasswordFragment$5;-><init>(Lcom/narvii/account/settings/ConfirmPasswordFragment;Ljava/lang/Class;)V

    invoke-virtual {v1, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method protected connectAccount(Ljava/lang/String;)V
    .locals 4

    .line 247
    iget-object v0, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string v0, "account"

    .line 248
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    const-string v1, "api"

    .line 249
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 250
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 251
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v3, "/auth/connect"

    .line 252
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 253
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v3, "deviceID"

    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment;->pass:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "secret"

    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/narvii/account/settings/ConfirmPasswordFragment;->getAuthType()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "secret2"

    invoke-virtual {v2, v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 256
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 257
    iget-object p1, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v0, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment;->listener:Lcom/narvii/account/AccountResponseListener;

    invoke-virtual {v1, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method protected abstract getAuthType()I
.end method

.method protected abstract getThirdPartyAccountName()I
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/narvii/account/settings/ConfirmPasswordFragment;->getThirdPartyAccountName()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 76
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onConnectCancel()V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onConnectError(Ljava/lang/String;)V
    .locals 2

    .line 261
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 262
    iget-object p1, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p1, :cond_0

    .line 263
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    new-instance p1, Lcom/narvii/account/AccountUtils;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/account/AccountUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment;->accountUtils:Lcom/narvii/account/AccountUtils;

    const-string p1, "actionType"

    .line 70
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment;->actionType:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0111

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 186
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 88
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    const p2, 0x7f090b63

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/TextLoadingLayout;

    iput-object p2, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment;->textLoadingLayout:Lcom/narvii/widget/TextLoadingLayout;

    .line 92
    iget-object p2, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment;->textLoadingLayout:Lcom/narvii/widget/TextLoadingLayout;

    new-instance v0, Lcom/narvii/account/settings/ConfirmPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/account/settings/ConfirmPasswordFragment$1;-><init>(Lcom/narvii/account/settings/ConfirmPasswordFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object p2, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment;->textLoadingLayout:Lcom/narvii/widget/TextLoadingLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    const p2, 0x7f0903c8

    .line 114
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment;->passEdit:Landroid/widget/EditText;

    .line 115
    iget-object p2, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment;->passEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/narvii/account/settings/ConfirmPasswordFragment$2;

    invoke-direct {v1, p0}, Lcom/narvii/account/settings/ConfirmPasswordFragment$2;-><init>(Lcom/narvii/account/settings/ConfirmPasswordFragment;)V

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p2, 0x7f090b9a

    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment;->titleView:Landroid/widget/TextView;

    .line 137
    iget p2, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment;->actionType:I

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    iget-object p2, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment;->titleView:Landroid/widget/TextView;

    const v2, 0x7f0f03fb

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/narvii/account/settings/ConfirmPasswordFragment;->getThirdPartyAccountName()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-virtual {p0, v2, v1}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 139
    :cond_1
    iget-object p2, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment;->titleView:Landroid/widget/TextView;

    const v2, 0x7f0f03fa

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/narvii/account/settings/ConfirmPasswordFragment;->getThirdPartyAccountName()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-virtual {p0, v2, v1}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const p2, 0x7f0904b7

    .line 146
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment;->forgerPassword:Landroid/widget/TextView;

    .line 147
    iget-object p1, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment;->forgerPassword:Landroid/widget/TextView;

    new-instance p2, Lcom/narvii/account/settings/ConfirmPasswordFragment$3;

    invoke-direct {p2, p0}, Lcom/narvii/account/settings/ConfirmPasswordFragment$3;-><init>(Lcom/narvii/account/settings/ConfirmPasswordFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected abstract performLogin()V
.end method
