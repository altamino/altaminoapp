.class public Lcom/narvii/util/CheckEligibleHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field nvContext:Lcom/narvii/app/NVContext;

.field public req:Lcom/narvii/util/http/ApiRequest;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/util/CheckEligibleHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 6
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/util/CheckEligibleHelper;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/util/CheckEligibleHelper;->checkActivation()Z

    move-result p0

    return p0
.end method

.method private checkActivation()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/CheckEligibleHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "account"

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasActivation()Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/util/CheckEligibleHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 35
    .line 36
    .line 37
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    sget v1, Lcom/narvii/lib/R$string;->post_not_eligible:I

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 47
    .line 48
    sget v1, Lcom/narvii/lib/R$string;->post_activate_account_first:I

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 52
    .line 53
    const/high16 v1, 0x1040000

    .line 54
    .line 55
    sget-object v2, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 59
    .line 60
    sget v1, Lcom/narvii/lib/R$string;->post_activate_account:I

    .line 61
    .line 62
    new-instance v2, Lcom/narvii/util/CheckEligibleHelper$3;

    .line 63
    .line 64
    .line 65
    invoke-direct {v2, p0}, Lcom/narvii/util/CheckEligibleHelper$3;-><init>(Lcom/narvii/util/CheckEligibleHelper;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 72
    const/4 v0, 0x0

    .line 73
    return v0

    .line 74
    :cond_0
    const/4 v0, 0x1

    .line 75
    return v0
.end method


# virtual methods
.method public checkEligible(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/util/CheckEligibleHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/util/CheckEligibleHelper$1;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/narvii/util/CheckEligibleHelper$1;-><init>(Lcom/narvii/util/CheckEligibleHelper;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/util/CheckEligibleHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 25
    .line 26
    const-string v2, "account"

    .line 27
    .line 28
    .line 29
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 36
    move-result v2

    .line 37
    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/util/CheckEligibleHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    .line 47
    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/util/CheckEligibleHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 51
    .line 52
    .line 53
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 57
    .line 58
    new-instance p2, Landroid/content/Intent;

    .line 59
    .line 60
    const-string p3, "loginAhead"

    .line 61
    .line 62
    .line 63
    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVActivity;->ensureLogin(Landroid/content/Intent;)V

    .line 67
    :cond_0
    return-void

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string/jumbo v4, "user-profile/"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v1, "/compose-eligible-check"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    const-string v2, "objectType"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    .line 111
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    move-result v1

    .line 113
    .line 114
    if-nez v1, :cond_2

    .line 115
    .line 116
    const-string v1, "objectSubtype"

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 120
    .line 121
    .line 122
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->userInteraction()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 126
    move-result-object p1

    .line 127
    .line 128
    iput-object p1, p0, Lcom/narvii/util/CheckEligibleHelper;->req:Lcom/narvii/util/http/ApiRequest;

    .line 129
    .line 130
    iget-object p1, p0, Lcom/narvii/util/CheckEligibleHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 131
    .line 132
    const-string p2, "api"

    .line 133
    .line 134
    .line 135
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    move-result-object p1

    .line 137
    .line 138
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 139
    .line 140
    iget-object p2, p0, Lcom/narvii/util/CheckEligibleHelper;->req:Lcom/narvii/util/http/ApiRequest;

    .line 141
    .line 142
    new-instance v1, Lcom/narvii/util/CheckEligibleHelper$2;

    .line 143
    .line 144
    const-class v2, Lcom/narvii/model/api/ApiResponse;

    .line 145
    .line 146
    .line 147
    invoke-direct {v1, p0, v2, p3, v0}, Lcom/narvii/util/CheckEligibleHelper$2;-><init>(Lcom/narvii/util/CheckEligibleHelper;Ljava/lang/Class;Lcom/narvii/util/Callback;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, p2, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 151
    return-void
.end method
