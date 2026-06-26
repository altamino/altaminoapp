.class public Lcom/narvii/util/CheckEligibleHelper;
.super Ljava/lang/Object;
.source "CheckEligibleHelper.java"


# instance fields
.field nvContext:Lcom/narvii/app/NVContext;

.field public req:Lcom/narvii/util/http/ApiRequest;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/narvii/util/CheckEligibleHelper;->nvContext:Lcom/narvii/app/NVContext;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/util/CheckEligibleHelper;)Z
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/narvii/util/CheckEligibleHelper;->checkActivation()Z

    move-result p0

    return p0
.end method

.method private checkActivation()Z
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/narvii/util/CheckEligibleHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "account"

    .line 92
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 93
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasActivation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/narvii/util/CheckEligibleHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    sget v1, Lcom/narvii/lib/R$string;->post_not_eligible:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 96
    sget v1, Lcom/narvii/lib/R$string;->post_activate_account_first:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    .line 97
    sget-object v2, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 98
    sget v1, Lcom/narvii/lib/R$string;->post_activate_account:I

    new-instance v2, Lcom/narvii/util/CheckEligibleHelper$3;

    invoke-direct {v2, p0}, Lcom/narvii/util/CheckEligibleHelper$3;-><init>(Lcom/narvii/util/CheckEligibleHelper;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 111
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public checkEligible(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 5

    .line 34
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/util/CheckEligibleHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 36
    new-instance v1, Lcom/narvii/util/CheckEligibleHelper$1;

    invoke-direct {v1, p0}, Lcom/narvii/util/CheckEligibleHelper$1;-><init>(Lcom/narvii/util/CheckEligibleHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 45
    iget-object v1, p0, Lcom/narvii/util/CheckEligibleHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v2, "account"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 46
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v2

    if-nez v2, :cond_1

    .line 47
    iget-object p1, p0, Lcom/narvii/util/CheckEligibleHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/narvii/util/CheckEligibleHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    new-instance p2, Landroid/content/Intent;

    const-string p3, "loginAhead"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVActivity;->ensureLogin(Landroid/content/Intent;)V

    :cond_0
    return-void

    .line 52
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user-profile/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/compose-eligible-check"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "objectType"

    invoke-virtual {v1, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 53
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "objectSubtype"

    .line 54
    invoke-virtual {p1, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 56
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->userInteraction()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 57
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/CheckEligibleHelper;->req:Lcom/narvii/util/http/ApiRequest;

    .line 58
    iget-object p1, p0, Lcom/narvii/util/CheckEligibleHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string p2, "api"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 59
    iget-object p2, p0, Lcom/narvii/util/CheckEligibleHelper;->req:Lcom/narvii/util/http/ApiRequest;

    new-instance v1, Lcom/narvii/util/CheckEligibleHelper$2;

    const-class v2, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v1, p0, v2, p3, v0}, Lcom/narvii/util/CheckEligibleHelper$2;-><init>(Lcom/narvii/util/CheckEligibleHelper;Ljava/lang/Class;Lcom/narvii/util/Callback;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {p1, p2, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
