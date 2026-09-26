.class public Lcom/narvii/account/EmailSignupFragment;
.super Lcom/narvii/account/AccountBaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

.field private emailInputLayout:Lcom/narvii/widget/TextInputLayout;

.field private lastRequsetEmail:Ljava/lang/String;

.field private request:Lcom/narvii/util/http/ApiRequest;

.field protected verifyCodeHelper:Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;

.field private verifyView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/AccountBaseFragment;-><init>()V

    .line 4
    return-void
.end method

.method private checkLegality(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/EmailSignupFragment;->isEmailValid()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    const-string v2, "email"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string p2, "logging"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    check-cast p2, Lcom/narvii/util/logging/LoggingService;

    .line 18
    const/4 v0, 0x4

    .line 19
    .line 20
    new-array v0, v0, [Ljava/lang/Object;

    .line 21
    const/4 v3, 0x0

    .line 22
    .line 23
    aput-object v2, v0, v3

    .line 24
    .line 25
    aput-object p1, v0, v1

    .line 26
    const/4 p1, 0x2

    .line 27
    .line 28
    const-string v1, "reason"

    .line 29
    .line 30
    aput-object v1, v0, p1

    .line 31
    const/4 p1, 0x3

    .line 32
    .line 33
    const-string v1, "InvalidEmail"

    .line 34
    .line 35
    aput-object v1, v0, p1

    .line 36
    .line 37
    const-string p1, "AccountError"

    .line 38
    .line 39
    .line 40
    invoke-interface {p2, p1, v0}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    return-void

    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Lcom/narvii/account/EmailSignupFragment;->lastRequsetEmail:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lcom/narvii/account/EmailSignupFragment;->goNext()V

    .line 53
    return-void

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->showProgress()V

    .line 57
    .line 58
    const-string v0, "account"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 65
    .line 66
    const-string v3, "api"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    check-cast v3, Lcom/narvii/util/http/ApiService;

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 76
    move-result-object v4

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 80
    move-result-object v4

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 84
    move-result-object v4

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 88
    move-result-object v4

    .line 89
    .line 90
    const-string v5, "/auth/register-check"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 94
    move-result-object v4

    .line 95
    .line 96
    sget-object v5, La0/a;->o:Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v5, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    .line 107
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    move-result v4

    .line 109
    .line 110
    if-nez v4, :cond_2

    .line 111
    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    const-string v5, "0 "

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object p2

    .line 128
    .line 129
    const-string v4, "secret"

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v4, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 133
    .line 134
    .line 135
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 136
    move-result p2

    .line 137
    .line 138
    if-nez p2, :cond_3

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 145
    .line 146
    .line 147
    :cond_3
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 148
    move-result-object p2

    .line 149
    .line 150
    iput-object p2, p0, Lcom/narvii/account/EmailSignupFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, v1}, Lcom/narvii/account/AccountBaseFragment;->setIsRequesting(Z)V

    .line 154
    .line 155
    iget-object p2, p0, Lcom/narvii/account/EmailSignupFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 156
    .line 157
    new-instance v0, Lcom/narvii/account/EmailSignupFragment$1;

    .line 158
    .line 159
    const-class v1, Lcom/narvii/model/api/ApiResponse;

    .line 160
    .line 161
    .line 162
    invoke-direct {v0, p0, v1, p1}, Lcom/narvii/account/EmailSignupFragment$1;-><init>(Lcom/narvii/account/EmailSignupFragment;Ljava/lang/Class;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3, p2, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 166
    return-void
.end method

.method private goNext()V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/account/EmailSignupFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/account/EmailSignupFragment;->lastRequsetEmail:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    const v1, 0x7f010010

    .line 31
    .line 32
    .line 33
    const v2, 0x7f010011

    .line 34
    .line 35
    .line 36
    const v3, 0x7f01000e

    .line 37
    .line 38
    .line 39
    const v4, 0x7f01000f

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v3, v4, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->z(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 43
    .line 44
    new-instance v1, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 45
    .line 46
    .line 47
    invoke-direct {v1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;-><init>()V

    .line 48
    .line 49
    new-instance v2, Landroid/os/Bundle;

    .line 50
    .line 51
    .line 52
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 53
    .line 54
    const-string v3, "identity_to_verify_type"

    .line 55
    const/4 v4, 0x2

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 59
    .line 60
    iget-object v3, p0, Lcom/narvii/account/EmailSignupFragment;->lastRequsetEmail:Ljava/lang/String;

    .line 61
    .line 62
    const-string v5, "email"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    const-string v3, "verify_type"

    .line 68
    const/4 v6, 0x4

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 72
    .line 73
    const-string v3, "key_third_part_secret"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object v6

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    const-string v3, "key_is_third_part"

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 86
    move-result v6

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v3, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    .line 91
    const-string v3, "key_sign_up_method"

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    move-result-object v6

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v3, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    const-string v3, "key_third_party_nickname"

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    move-result-object v6

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v3, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    const-string v3, "key_avatar_url"

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    move-result-object v6

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v3, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContainerId()Ljava/lang/Integer;

    .line 123
    move-result-object v2

    .line 124
    const/4 v3, 0x0

    .line 125
    .line 126
    if-eqz v2, :cond_1

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContainerId()Ljava/lang/Integer;

    .line 130
    move-result-object v2

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 134
    move-result v2

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->u(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 142
    move-result-object v0

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 146
    goto :goto_0

    .line 147
    .line 148
    .line 149
    :cond_1
    const v2, 0x7f0a05ff

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->u(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 153
    move-result-object v0

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 157
    move-result-object v0

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 161
    .line 162
    :goto_0
    const-string v0, "logging"

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 166
    move-result-object v0

    .line 167
    .line 168
    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    .line 169
    .line 170
    new-array v1, v4, [Ljava/lang/Object;

    .line 171
    const/4 v2, 0x0

    .line 172
    .line 173
    aput-object v5, v1, v2

    .line 174
    const/4 v2, 0x1

    .line 175
    .line 176
    iget-object v3, p0, Lcom/narvii/account/EmailSignupFragment;->lastRequsetEmail:Ljava/lang/String;

    .line 177
    .line 178
    aput-object v3, v1, v2

    .line 179
    .line 180
    const-string v2, "EmailVerificationStarting"

    .line 181
    .line 182
    .line 183
    invoke-interface {v0, v2, v1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method private isEmailValid()Z
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/account/AccountUtils;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/account/AccountUtils;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/account/EmailSignupFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountUtils;->isValidEmail(Ljava/lang/String;)Z

    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x1

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/account/EmailSignupFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/narvii/widget/TextInputLayout;->updateStatus(Z)V

    .line 32
    const/4 v0, 0x0

    .line 33
    return v0

    .line 34
    :cond_0
    return v1
.end method

.method private synthetic lambda$handleAlreadyRegistered$2(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p2, "Edit"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    .line 12
    const/4 p2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    return-void
.end method

.method private synthetic lambda$handleAlreadyRegistered$3(Lcom/narvii/widget/ACMAlertDialog;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p3, "Login"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 10
    .line 11
    new-instance p1, Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 15
    .line 16
    const-string p3, "email"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->switchLogin(Landroid/content/Intent;)V

    .line 23
    return-void
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v0, "VerifyEmail"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    const/4 v0, 0x0

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1, v0}, Lcom/narvii/account/EmailSignupFragment;->checkLegality(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method private synthetic lambda$onViewCreated$1()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/EmailSignupFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 6
    return-void
.end method

.method private synthetic lambda$showEmailConfirmDialog$4(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/narvii/account/EmailSignupFragment;->requestEmailCode(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static synthetic q(Lcom/narvii/account/EmailSignupFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/account/EmailSignupFragment;->lambda$onViewCreated$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcom/narvii/account/EmailSignupFragment;Lcom/narvii/widget/ACMAlertDialog;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/account/EmailSignupFragment;->lambda$handleAlreadyRegistered$3(Lcom/narvii/widget/ACMAlertDialog;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private requestEmailCode(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->showProgress()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/account/EmailSignupFragment$2;

    .line 6
    .line 7
    const-class v1, Lcom/narvii/model/api/ApiResponse;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, v1, p1}, Lcom/narvii/account/EmailSignupFragment$2;-><init>(Lcom/narvii/account/EmailSignupFragment;Ljava/lang/Class;Ljava/lang/String;)V

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1, p1, v0}, Lcom/narvii/account/AccountBaseFragment;->requestSecurityCode(ILjava/lang/String;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 15
    return-void
.end method

.method public static synthetic s(Lcom/narvii/account/EmailSignupFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/account/EmailSignupFragment;->lambda$showEmailConfirmDialog$4(Landroid/view/View;)V

    return-void
.end method

.method private showEmailConfirmDialog()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const v1, 0x7f120b4d

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/account/EmailSignupFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 29
    const/4 v1, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 36
    .line 37
    .line 38
    const v1, 0x7f120438

    .line 39
    const/4 v2, 0x0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 43
    .line 44
    new-instance v1, Lcom/narvii/account/l;

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, p0}, Lcom/narvii/account/l;-><init>(Lcom/narvii/account/EmailSignupFragment;)V

    .line 48
    .line 49
    .line 50
    const v2, 0x7f1212a7

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 57
    return-void
.end method

.method public static synthetic t(Lcom/narvii/account/EmailSignupFragment;Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/account/EmailSignupFragment;->lambda$handleAlreadyRegistered$2(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcom/narvii/account/EmailSignupFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/account/EmailSignupFragment;->lambda$onViewCreated$1()V

    return-void
.end method

.method private updateVerifyView()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/account/AccountUtils;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/account/AccountUtils;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/account/EmailSignupFragment;->verifyView:Landroid/view/View;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/narvii/account/EmailSignupFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Lcom/narvii/account/AccountUtils;->isValidEmail(Ljava/lang/String;)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 29
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/account/EmailSignupFragment;)Lcom/narvii/widget/AutoCompleteEmailView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/account/EmailSignupFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/account/EmailSignupFragment;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/account/EmailSignupFragment;->request:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method static bridge synthetic x(Lcom/narvii/account/EmailSignupFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/account/EmailSignupFragment;->goNext()V

    return-void
.end method

.method static bridge synthetic y(Lcom/narvii/account/EmailSignupFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/account/EmailSignupFragment;->showEmailConfirmDialog()V

    return-void
.end method


# virtual methods
.method protected addStatusBarMargin()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/EmailSignupFragment;->updateVerifyView()V

    .line 4
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "sign_up_enter_your_email"

    return-object v0
.end method

.method protected handleAlreadyRegistered(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    const-string v1, "SignUpEmailTaken"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const v1, 0x7f120453

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    new-instance p1, Lcom/narvii/account/m;

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, p0, v0}, Lcom/narvii/account/m;-><init>(Lcom/narvii/account/EmailSignupFragment;Lcom/narvii/widget/ACMAlertDialog;)V

    .line 22
    .line 23
    .line 24
    const v1, 0x7f120438

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, p1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 28
    .line 29
    new-instance p1, Lcom/narvii/account/n;

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, p0, v0, p2}, Lcom/narvii/account/n;-><init>(Lcom/narvii/account/EmailSignupFragment;Lcom/narvii/widget/ACMAlertDialog;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const p2, 0x7f120042

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p2, p1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 42
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/account/LoginActivity;

    .line 12
    .line 13
    const-string v0, "key_is_third_part"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iput v1, p1, Lcom/narvii/account/LoginActivity;->statMaxLoginStep:I

    .line 23
    .line 24
    const/16 v0, 0x14

    .line 25
    .line 26
    iput v0, p1, Lcom/narvii/account/LoginActivity;->statMaxSignupSetp:I

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    iput v1, p1, Lcom/narvii/account/LoginActivity;->statMaxLoginStep:I

    .line 30
    const/4 v0, 0x4

    .line 31
    .line 32
    iput v0, p1, Lcom/narvii/account/LoginActivity;->statMaxSignupSetp:I

    .line 33
    const/4 v0, 0x2

    .line 34
    .line 35
    iput v0, p1, Lcom/narvii/account/LoginActivity;->statType:I

    .line 36
    .line 37
    :cond_1
    :goto_0
    new-instance p1, Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, v0}, Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    iput-object p1, p0, Lcom/narvii/account/EmailSignupFragment;->verifyCodeHelper:Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;

    .line 47
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
    const p3, 0x7f0d031b

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
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/EmailSignupFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "api"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/account/EmailSignupFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/account/EmailSignupFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 24
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    const/4 p3, 0x0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    return p3

    .line 7
    :cond_0
    const/4 p1, 0x6

    .line 8
    .line 9
    if-ne p2, p1, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    const/4 p2, 0x0

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/narvii/account/EmailSignupFragment;->checkLegality(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    :cond_1
    return p3
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/account/AccountBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a04b2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Lcom/narvii/widget/AutoCompleteEmailView;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/account/EmailSignupFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 18
    .line 19
    iget-object p2, p0, Lcom/narvii/account/EmailSignupFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 23
    .line 24
    iget-object p2, p0, Lcom/narvii/account/EmailSignupFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 28
    .line 29
    .line 30
    const p2, 0x7f0a0f6b

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    iput-object p2, p0, Lcom/narvii/account/EmailSignupFragment;->verifyView:Landroid/view/View;

    .line 37
    .line 38
    new-instance v0, Lcom/narvii/account/j;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/narvii/account/j;-><init>(Lcom/narvii/account/EmailSignupFragment;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    const p2, 0x7f0a072a

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    check-cast p1, Lcom/narvii/widget/TextInputLayout;

    .line 54
    .line 55
    iput-object p1, p0, Lcom/narvii/account/EmailSignupFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 56
    .line 57
    new-instance p1, Lcom/narvii/account/k;

    .line 58
    .line 59
    .line 60
    invoke-direct {p1, p0}, Lcom/narvii/account/k;-><init>(Lcom/narvii/account/EmailSignupFragment;)V

    .line 61
    .line 62
    const-wide/16 v0, 0x0

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 66
    return-void
.end method
