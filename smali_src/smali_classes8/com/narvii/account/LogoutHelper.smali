.class public Lcom/narvii/account/LogoutHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private context:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/account/LogoutHelper;->context:Lcom/narvii/app/NVContext;

    .line 6
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/account/LogoutHelper;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/account/LogoutHelper;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method


# virtual methods
.method public logout(Lcom/narvii/util/Callback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/LogoutHelper;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "account"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    move-object v5, v0

    .line 10
    .line 11
    check-cast v5, Lcom/narvii/account/AccountService;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v5}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/google/firebase/crashlytics/g;->a()Lcom/google/firebase/crashlytics/g;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    const-string v1, ""

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/g;->d(Ljava/lang/String;)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/account/LogoutHelper;->context:Lcom/narvii/app/NVContext;

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lcom/narvii/wallet/optinads/OptinAds;->sendAdLevelUserProperty(Lcom/narvii/app/NVContext;)V

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/account/LogoutHelper;->context:Lcom/narvii/app/NVContext;

    .line 34
    .line 35
    const-string v1, "membership"

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 42
    const/4 v1, 0x0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/narvii/wallet/MembershipService;->sendAminoPlusUserProperty(Ljava/lang/Integer;)V

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/account/LogoutHelper;->context:Lcom/narvii/app/NVContext;

    .line 48
    .line 49
    .line 50
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    const-string v2, "age"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    new-instance v0, Lcom/narvii/util/mixpanel/MixpanelAnalytics;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/narvii/account/LogoutHelper;->context:Lcom/narvii/app/NVContext;

    .line 65
    .line 66
    .line 67
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v1}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;-><init>(Landroid/content/Context;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;->logout()V

    .line 75
    .line 76
    new-instance v4, Lcom/narvii/util/dialog/ProgressDialog;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/narvii/account/LogoutHelper;->context:Lcom/narvii/app/NVContext;

    .line 79
    .line 80
    .line 81
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    .line 85
    invoke-direct {v4, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 86
    const/4 v0, 0x0

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 93
    .line 94
    .line 95
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 108
    move-result-object v1

    .line 109
    .line 110
    const-string v2, "/auth/logout"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 114
    .line 115
    sget-object v1, La0/a;->o:Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    .line 119
    move-result-object v2

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 123
    .line 124
    sget v1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 125
    .line 126
    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    move-result-object v1

    .line 129
    .line 130
    const-string v2, "clientType"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 134
    .line 135
    sget-object v1, Lcom/narvii/util/http/ApiService;->DISABLE_RESEND_PUBLIC_KEY_TAG:Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 139
    .line 140
    iget-object v1, p0, Lcom/narvii/account/LogoutHelper;->context:Lcom/narvii/app/NVContext;

    .line 141
    .line 142
    const-string v2, "api"

    .line 143
    .line 144
    .line 145
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    move-result-object v1

    .line 147
    move-object v7, v1

    .line 148
    .line 149
    check-cast v7, Lcom/narvii/util/http/ApiService;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 153
    move-result-object v0

    .line 154
    .line 155
    new-instance v8, Lcom/narvii/account/LogoutHelper$1;

    .line 156
    .line 157
    const-class v3, Lcom/narvii/account/AuidResponse;

    .line 158
    move-object v1, v8

    .line 159
    move-object v2, p0

    .line 160
    move-object v6, p1

    .line 161
    .line 162
    .line 163
    invoke-direct/range {v1 .. v6}, Lcom/narvii/account/LogoutHelper$1;-><init>(Lcom/narvii/account/LogoutHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/account/AccountService;Lcom/narvii/util/Callback;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v7, v0, v8}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 167
    goto :goto_0

    .line 168
    .line 169
    :cond_0
    if-eqz p1, :cond_1

    .line 170
    .line 171
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 172
    .line 173
    .line 174
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 175
    :cond_1
    :goto_0
    return-void
.end method
