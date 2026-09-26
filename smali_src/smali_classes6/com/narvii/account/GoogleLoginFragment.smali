.class public Lcom/narvii/account/GoogleLoginFragment;
.super Lcom/narvii/account/ThirdPartyAccountBaseFragment;
.source "SourceFile"


# static fields
.field public static final REQUEST_TYPE_CONNECT:I = 0x4

.field public static final REQUEST_TYPE_LOGIN:I = 0x2

.field public static final REQUEST_TYPE_SIGNUP:I = 0x3


# instance fields
.field private birthdayActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field email:Ljava/lang/String;

.field googleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

.field googleSignInOptions:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

.field name:Ljava/lang/String;

.field profileUri:Ljava/lang/String;

.field request:Lcom/narvii/util/http/ApiRequest;

.field requestType:I

.field token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;-><init>()V

    .line 4
    return-void
.end method

.method private handleSignInResult(Lcom/google/android/gms/tasks/Task;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ">;I)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "reason"

    .line 3
    .line 4
    const-string v1, "logging"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    check-cast v1, Lcom/narvii/util/logging/LoggingService;

    .line 11
    const/4 v2, 0x2

    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    .line 15
    :try_start_0
    const-class v5, Lcom/google/android/gms/common/api/ApiException;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v5}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    move-result-object v5

    .line 20
    .line 21
    check-cast v5, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 22
    const/4 v6, 0x3

    .line 23
    const/4 v7, 0x0

    .line 24
    .line 25
    if-eqz v5, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 29
    move-result p1

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    iput-object p1, p0, Lcom/narvii/account/GoogleLoginFragment;->email:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getDisplayName()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    iput-object p1, p0, Lcom/narvii/account/GoogleLoginFragment;->name:Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getPhotoUrl()Landroid/net/Uri;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    if-nez p1, :cond_0

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_0
    invoke-virtual {v5}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getPhotoUrl()Landroid/net/Uri;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 64
    move-result-object v7

    .line 65
    .line 66
    :goto_0
    iput-object v7, p0, Lcom/narvii/account/GoogleLoginFragment;->profileUri:Ljava/lang/String;

    .line 67
    .line 68
    iget-object p1, p0, Lcom/narvii/account/GoogleLoginFragment;->email:Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->setUsername(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, p1}, Lcom/narvii/account/GoogleLoginFragment;->onAccess(Ljava/lang/String;)V

    .line 79
    return-void

    .line 80
    :catch_0
    move-exception p1

    .line 81
    goto :goto_2

    .line 82
    .line 83
    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    const v8, 0x7f1207e4

    .line 89
    .line 90
    .line 91
    invoke-static {p1, v8, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 96
    .line 97
    const-string p1, "AccountError"

    .line 98
    const/4 v8, 0x6

    .line 99
    .line 100
    new-array v8, v8, [Ljava/lang/Object;

    .line 101
    .line 102
    const-string v9, "email"

    .line 103
    .line 104
    aput-object v9, v8, v4

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    .line 108
    move-result-object v5

    .line 109
    .line 110
    aput-object v5, v8, v3

    .line 111
    .line 112
    const-string v5, "code"

    .line 113
    .line 114
    aput-object v5, v8, v2

    .line 115
    .line 116
    const/16 v5, 0x2ec

    .line 117
    .line 118
    .line 119
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    move-result-object v5

    .line 121
    .line 122
    aput-object v5, v8, v6

    .line 123
    const/4 v5, 0x4

    .line 124
    .line 125
    aput-object v0, v8, v5

    .line 126
    .line 127
    const-string v5, "GoogleAuthIdTokenMissing"

    .line 128
    const/4 v9, 0x5

    .line 129
    .line 130
    aput-object v5, v8, v9

    .line 131
    .line 132
    .line 133
    invoke-interface {v1, p1, v8}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    goto :goto_1

    .line 135
    .line 136
    :cond_2
    const/16 p1, 0x3ea

    .line 137
    .line 138
    if-ne p2, p1, :cond_3

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 142
    move-result-object p1

    .line 143
    .line 144
    .line 145
    const v5, 0x7f12004c

    .line 146
    .line 147
    .line 148
    invoke-static {p1, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 149
    move-result-object p1

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 153
    .line 154
    :cond_3
    :goto_1
    iget p1, p0, Lcom/narvii/account/GoogleLoginFragment;->requestType:I

    .line 155
    .line 156
    if-eq p1, v2, :cond_4

    .line 157
    .line 158
    if-ne p1, v6, :cond_5

    .line 159
    .line 160
    .line 161
    :cond_4
    invoke-virtual {p0, v4, p2, v7}, Lcom/narvii/account/AccountBaseFragment;->finishWithResult(ZILjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    goto :goto_3

    .line 163
    .line 164
    :goto_2
    new-array p2, v2, [Ljava/lang/Object;

    .line 165
    .line 166
    aput-object v0, p2, v4

    .line 167
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    const-string v2, "signInResult:failed code="

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    .line 180
    move-result p1

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object p1

    .line 188
    .line 189
    aput-object p1, p2, v3

    .line 190
    .line 191
    const-string p1, "LoggingError"

    .line 192
    .line 193
    .line 194
    invoke-interface {v1, p1, p2}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    :cond_5
    :goto_3
    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroidx/activity/result/ActivityResult;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->e()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/account/LoginActivity;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->c()Landroid/content/Intent;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const-string v1, "param_birthday"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    iput-object p1, v0, Lcom/narvii/account/LoginActivity;->birthday:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/narvii/account/GoogleLoginFragment;->requestLogin()V

    .line 33
    :cond_0
    return-void
.end method

.method private synthetic lambda$queryThirdPartyInfo$1(Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->cancelSubmit()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/account/GoogleLoginFragment;->name:Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0, p2}, Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;->onComplete(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method private onAccess(Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/GoogleLoginFragment;->token:Ljava/lang/String;

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/narvii/account/AccountBaseFragment;->setIsRequesting(Z)V

    .line 7
    .line 8
    const-string v0, "api"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 15
    .line 16
    const-string v1, "account"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 38
    .line 39
    const-string v3, "/auth/account_exist_check"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 43
    .line 44
    sget-object v3, La0/a;->o:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    const-string v3, "30 "

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    const-string v3, "secret"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 74
    .line 75
    sget v1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 76
    .line 77
    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    const-string v3, "clientType"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 85
    .line 86
    const-string v1, "thirdPart"

    .line 87
    .line 88
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 95
    move-result-object v1

    .line 96
    .line 97
    iput-object v1, p0, Lcom/narvii/account/GoogleLoginFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 98
    .line 99
    new-instance v2, Lcom/narvii/account/GoogleLoginFragment$1;

    .line 100
    .line 101
    const-class v3, Lcom/narvii/model/api/AccountExistResponse;

    .line 102
    .line 103
    .line 104
    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/account/GoogleLoginFragment$1;-><init>(Lcom/narvii/account/GoogleLoginFragment;Ljava/lang/Class;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 108
    return-void
.end method

.method private requestLogin()V
    .locals 6

    .line 1
    .line 2
    const-string v0, "api"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 9
    .line 10
    const-string v1, "account"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcom/narvii/account/AccountService;

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
    const-string v3, "/auth/login"

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
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    const-string v3, "30 "

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    iget-object v3, p0, Lcom/narvii/account/GoogleLoginFragment;->token:Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    const-string v3, "secret"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 70
    .line 71
    sget v1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 72
    .line 73
    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    const-string v3, "clientType"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->getLocation()Lcom/narvii/location/GPSCoordinate;

    .line 84
    move-result-object v1

    .line 85
    const/4 v3, 0x0

    .line 86
    .line 87
    if-nez v1, :cond_0

    .line 88
    move v4, v3

    .line 89
    goto :goto_0

    .line 90
    .line 91
    .line 92
    :cond_0
    invoke-virtual {v1}, Lcom/narvii/location/GPSCoordinate;->latitudeE6()I

    .line 93
    move-result v4

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object v4

    .line 98
    .line 99
    const-string v5, "latitude"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v5, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 103
    .line 104
    if-nez v1, :cond_1

    .line 105
    goto :goto_1

    .line 106
    .line 107
    .line 108
    :cond_1
    invoke-virtual {v1}, Lcom/narvii/location/GPSCoordinate;->longitudeE6()I

    .line 109
    move-result v3

    .line 110
    .line 111
    .line 112
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    move-result-object v1

    .line 114
    .line 115
    const-string v3, "longitude"

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->getAddress()Ljava/lang/String;

    .line 122
    move-result-object v1

    .line 123
    .line 124
    const-string v3, "address"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 128
    .line 129
    const-string v1, "action"

    .line 130
    .line 131
    const-string v3, "normal"

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 135
    .line 136
    const-string v1, "thirdPart"

    .line 137
    .line 138
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 145
    move-result-object v1

    .line 146
    .line 147
    iput-object v1, p0, Lcom/narvii/account/GoogleLoginFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 148
    .line 149
    new-instance v2, Lcom/narvii/account/GoogleLoginFragment$2;

    .line 150
    .line 151
    .line 152
    invoke-direct {v2, p0, p0}, Lcom/narvii/account/GoogleLoginFragment$2;-><init>(Lcom/narvii/account/GoogleLoginFragment;Lcom/narvii/app/NVContext;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->startSubmit()V

    .line 159
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private signIn()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/GoogleLoginFragment;->googleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Lcom/narvii/account/GoogleLoginFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 11
    return-void
.end method

.method public static synthetic u(Lcom/narvii/account/GoogleLoginFragment;Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/account/GoogleLoginFragment;->lambda$queryThirdPartyInfo$1(Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic v(Lcom/narvii/account/GoogleLoginFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/account/GoogleLoginFragment;->lambda$onCreate$0(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/account/GoogleLoginFragment;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/account/GoogleLoginFragment;->birthdayActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/account/GoogleLoginFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/account/GoogleLoginFragment;->requestLogin()V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput v0, p0, Lcom/narvii/account/GoogleLoginFragment;->requestType:I

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/account/GoogleLoginFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "api"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/account/GoogleLoginFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/account/GoogleLoginFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-super {p0}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->cancel()Z

    .line 27
    move-result v0

    .line 28
    return v0
.end method

.method protected getSignUpMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "googleSignup"

    return-object v0
.end method

.method public googleConnect()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/GoogleLoginFragment;->request:Lcom/narvii/util/http/ApiRequest;

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
    iget-object v1, p0, Lcom/narvii/account/GoogleLoginFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/account/GoogleLoginFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 21
    :cond_0
    const/4 v0, 0x4

    .line 22
    .line 23
    iput v0, p0, Lcom/narvii/account/GoogleLoginFragment;->requestType:I

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/narvii/account/GoogleLoginFragment;->signIn()V

    .line 27
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-static {p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getSignedInAccountFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/narvii/account/GoogleLoginFragment;->handleSignInResult(Lcom/google/android/gms/tasks/Task;I)V

    .line 11
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 11
    .line 12
    .line 13
    const v0, 0x7f12039e

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestIdToken(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    iput-object p1, p0, Lcom/narvii/account/GoogleLoginFragment;->googleSignInOptions:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/account/GoogleLoginFragment;->googleSignInOptions:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    iput-object p1, p0, Lcom/narvii/account/GoogleLoginFragment;->googleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 44
    .line 45
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 46
    .line 47
    .line 48
    invoke-direct {p1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    .line 49
    .line 50
    new-instance v0, Lcom/narvii/account/s;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/narvii/account/s;-><init>(Lcom/narvii/account/GoogleLoginFragment;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    iput-object p1, p0, Lcom/narvii/account/GoogleLoginFragment;->birthdayActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 60
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance p2, Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 10
    return-object p2
.end method

.method protected queryThirdPartyInfo(Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/GoogleLoginFragment;->profileUri:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/account/GoogleLoginFragment;->name:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/account/GoogleLoginFragment;->profileUri:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0, v1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;->onComplete(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->startSubmit()V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/account/GoogleLoginFragment;->profileUri:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v1, Lcom/narvii/account/r;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, p0, p1}, Lcom/narvii/account/r;-><init>(Lcom/narvii/account/GoogleLoginFragment;Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->saveImage(Ljava/lang/String;Lcom/narvii/account/ThirdPartyAccountBaseFragment$SaveImageCallBack;)V

    .line 30
    :goto_0
    return-void
.end method
