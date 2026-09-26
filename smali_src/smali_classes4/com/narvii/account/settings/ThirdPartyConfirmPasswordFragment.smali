.class public abstract Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$4;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, p0}, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$4;-><init>(Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->listener:Lcom/narvii/account/AccountResponseListener;

    .line 11
    return-void
.end method

.method private disconnectAccount()V
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
    const-string v1, "api"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 32
    .line 33
    const-string v3, "/auth/disconnect"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 37
    .line 38
    sget-object v3, La0/a;->o:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    const-string v3, "0 "

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    iget-object v3, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->pass:Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    const-string v3, "secret"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->getAuthType()I

    .line 73
    move-result v0

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    const-string v3, "type"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    iput-object v0, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 89
    .line 90
    iget-object v2, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->listener:Lcom/narvii/account/AccountResponseListener;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 94
    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->request:Lcom/narvii/util/http/ApiRequest;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->disconnectAccount()V

    return-void
.end method

.method static bridge synthetic p(Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->validatePassword(Ljava/lang/String;)V

    return-void
.end method

.method private validatePassword(Ljava/lang/String;)V
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
    const-string v1, "api"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    const-string v3, "/auth/verify-password"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    sget-object v3, La0/a;->o:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    move-result v2

    .line 53
    .line 54
    if-nez v2, :cond_0

    .line 55
    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    const-string v3, "0 "

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    const-string v2, "secret"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 77
    .line 78
    .line 79
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    iput-object p1, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 83
    .line 84
    new-instance v0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$5;

    .line 85
    .line 86
    const-class v2, Lcom/narvii/model/api/ApiResponse;

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, p0, v2}, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$5;-><init>(Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;Ljava/lang/Class;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 93
    return-void
.end method


# virtual methods
.method protected connectAccount(Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 6
    .line 7
    const-string v0, "account"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 14
    .line 15
    const-string v1, "api"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 37
    .line 38
    const-string v3, "/auth/connect"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 42
    .line 43
    sget-object v3, La0/a;->o:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    const-string v3, "0 "

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    iget-object v3, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->pass:Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    const-string v3, "secret"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 75
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->getAuthType()I

    .line 83
    move-result v3

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v3, " "

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    const-string v0, "secret2"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    iput-object p1, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 110
    .line 111
    iget-object v0, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->listener:Lcom/narvii/account/AccountResponseListener;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 115
    return-void
.end method

.method protected abstract getAuthType()I
.end method

.method protected abstract getThirdPartyAccountName()I
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->getThirdPartyAccountName()I

    .line 7
    move-result p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 11
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    .line 5
    .line 9
    return-void
.end method

.method protected onConnectCancel()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 8
    :cond_0
    return-void
.end method

.method protected onConnectError(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p1, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 20
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/account/AccountUtils;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Lcom/narvii/account/AccountUtils;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->accountUtils:Lcom/narvii/account/AccountUtils;

    .line 15
    .line 16
    .line 17
    .line 21
    .line 22
    const-string p1, "actionType"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 26
    move-result p1

    .line 27
    .line 28
    iput p1, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->actionType:I

    .line 29
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d073c

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 7
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 11
    .line 12
    .line 13
    const p2, 0x7f0a0e60

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    check-cast p2, Lcom/narvii/widget/TextLoadingLayout;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->textLoadingLayout:Lcom/narvii/widget/TextLoadingLayout;

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$1;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$1;-><init>(Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    iget-object p2, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->textLoadingLayout:Lcom/narvii/widget/TextLoadingLayout;

    .line 32
    const/4 v0, 0x0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 36
    .line 37
    .line 38
    const p2, 0x7f0a04bf

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    check-cast p2, Landroid/widget/EditText;

    .line 45
    .line 46
    iput-object p2, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->passEdit:Landroid/widget/EditText;

    .line 47
    .line 48
    new-instance v1, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$2;

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, p0}, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$2;-><init>(Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 55
    .line 56
    .line 57
    const p2, 0x7f0a0e9e

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    check-cast p2, Landroid/widget/TextView;

    .line 64
    .line 65
    iput-object p2, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->titleView:Landroid/widget/TextView;

    .line 66
    .line 67
    iget v1, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->actionType:I

    .line 68
    const/4 v2, 0x1

    .line 69
    .line 70
    if-eq v1, v2, :cond_1

    .line 71
    const/4 v3, 0x2

    .line 72
    .line 73
    if-eq v1, v3, :cond_0

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :cond_0
    new-array v1, v2, [Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->getThirdPartyAccountName()I

    .line 80
    move-result v2

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 84
    move-result-object v2

    .line 85
    .line 86
    .line 87
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 88
    move-result-object v3

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 92
    move-result-object v2

    .line 93
    .line 94
    aput-object v2, v1, v0

    .line 95
    .line 96
    .line 97
    const v0, 0x7f120468

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    goto :goto_0

    .line 106
    .line 107
    :cond_1
    new-array v1, v2, [Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->getThirdPartyAccountName()I

    .line 111
    move-result v2

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 115
    move-result-object v2

    .line 116
    .line 117
    .line 118
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 119
    move-result-object v3

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 123
    move-result-object v2

    .line 124
    .line 125
    aput-object v2, v1, v0

    .line 126
    .line 127
    .line 128
    const v0, 0x7f120467

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    :goto_0
    const p2, 0x7f0a05f9

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    move-result-object p1

    .line 143
    .line 144
    check-cast p1, Landroid/widget/TextView;

    .line 145
    .line 146
    iput-object p1, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->forgerPassword:Landroid/widget/TextView;

    .line 147
    .line 148
    new-instance p2, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$3;

    .line 149
    .line 150
    .line 151
    invoke-direct {p2, p0}, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$3;-><init>(Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    return-void
.end method

.method protected abstract performLogin()V
.end method
