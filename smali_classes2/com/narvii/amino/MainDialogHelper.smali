.class public Lcom/narvii/amino/MainDialogHelper;
.super Ljava/lang/Object;
.source "MainDialogHelper.java"


# instance fields
.field private config:Lcom/narvii/config/ConfigService;

.field private context:Lcom/narvii/app/NVContext;

.field private googlePlay:Lcom/narvii/util/googleplay/GooglePlayService;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/narvii/amino/MainDialogHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "config"

    .line 32
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    iput-object v0, p0, Lcom/narvii/amino/MainDialogHelper;->config:Lcom/narvii/config/ConfigService;

    const-string v0, "googlePlay"

    .line 33
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/googleplay/GooglePlayService;

    iput-object p1, p0, Lcom/narvii/amino/MainDialogHelper;->googlePlay:Lcom/narvii/util/googleplay/GooglePlayService;

    return-void
.end method

.method private latestVersion(Z)Ljava/lang/String;
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/narvii/amino/MainDialogHelper;->config:Lcom/narvii/config/ConfigService;

    const-string v1, "latestVersion"

    invoke-virtual {v0, v1}, Lcom/narvii/config/ConfigService;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/narvii/amino/MainDialogHelper;->googlePlay:Lcom/narvii/util/googleplay/GooglePlayService;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/util/googleplay/GooglePlayService;->getLatestVersion()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez v0, :cond_2

    :cond_1
    move-object v0, p1

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    goto :goto_1

    .line 56
    :cond_3
    invoke-static {v0, p1}, Lcom/narvii/util/PackageUtils;->compareVersionName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    :goto_1
    return-object v0
.end method


# virtual methods
.method public forceUpgrade()Z
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/narvii/amino/MainDialogHelper;->config:Lcom/narvii/config/ConfigService;

    const-string v1, "forceUpgrade"

    invoke-virtual {v0, v1}, Lcom/narvii/config/ConfigService;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0, v1}, Lcom/narvii/amino/MainDialogHelper;->latestVersion(Z)Ljava/lang/String;

    move-result-object v0

    .line 65
    new-instance v2, Lcom/narvii/util/PackageUtils;

    iget-object v3, p0, Lcom/narvii/amino/MainDialogHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {v2}, Lcom/narvii/util/PackageUtils;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/narvii/util/PackageUtils;->compareVersionName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public hasNewVersion()Z
    .locals 4

    const/4 v0, 0x1

    .line 37
    invoke-direct {p0, v0}, Lcom/narvii/amino/MainDialogHelper;->latestVersion(Z)Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    new-instance v2, Lcom/narvii/util/PackageUtils;

    iget-object v3, p0, Lcom/narvii/amino/MainDialogHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {v2}, Lcom/narvii/util/PackageUtils;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/PackageUtils;->compareVersionName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public showAboutDialog()Landroid/app/Dialog;
    .locals 6

    .line 97
    iget-object v0, p0, Lcom/narvii/amino/MainDialogHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f011d

    .line 99
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 100
    new-instance v2, Lcom/narvii/util/PackageUtils;

    invoke-direct {v2, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/narvii/util/PackageUtils;->getVersionName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const v2, 0x7f0f114e

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0f02f8

    .line 102
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f0f02f7

    .line 103
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 105
    sget-object v0, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 107
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x102000b

    .line 110
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x11

    .line 111
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public showUpgradeDialog(Z)Landroid/app/Dialog;
    .locals 5

    .line 74
    iget-object v0, p0, Lcom/narvii/amino/MainDialogHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    .line 75
    invoke-direct {p0, v1}, Lcom/narvii/amino/MainDialogHelper;->latestVersion(Z)Ljava/lang/String;

    move-result-object v2

    .line 76
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f1112

    .line 77
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const v2, 0x7f0f1111

    .line 78
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 79
    new-instance v1, Lcom/narvii/amino/MainDialogHelper$1;

    invoke-direct {v1, p0, v0}, Lcom/narvii/amino/MainDialogHelper$1;-><init>(Lcom/narvii/amino/MainDialogHelper;Landroid/content/Context;)V

    const v0, 0x7f0f110f

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_0
    const/high16 p1, 0x1040000

    .line 90
    sget-object v0, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 93
    :goto_0
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
