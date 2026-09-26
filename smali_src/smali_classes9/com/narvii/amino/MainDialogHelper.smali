.class public Lcom/narvii/amino/MainDialogHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private config:Lcom/narvii/config/ConfigService;

.field private context:Lcom/narvii/app/NVContext;

.field private googlePlay:Lcom/narvii/util/googleplay/GooglePlayService;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/MainDialogHelper;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    const-string v0, "config"

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/amino/MainDialogHelper;->config:Lcom/narvii/config/ConfigService;

    .line 16
    .line 17
    const-string v0, "googlePlay"

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/util/googleplay/GooglePlayService;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/amino/MainDialogHelper;->googlePlay:Lcom/narvii/util/googleplay/GooglePlayService;

    .line 26
    return-void
.end method

.method private latestVersion(Z)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/MainDialogHelper;->config:Lcom/narvii/config/ConfigService;

    .line 3
    .line 4
    const-string v1, "latestVersion"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/config/ConfigService;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/amino/MainDialogHelper;->googlePlay:Lcom/narvii/util/googleplay/GooglePlayService;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/util/googleplay/GooglePlayService;->getLatestVersion()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    .line 22
    :goto_0
    if-nez v0, :cond_2

    .line 23
    :cond_1
    move-object v0, p1

    .line 24
    goto :goto_1

    .line 25
    .line 26
    :cond_2
    if-nez p1, :cond_3

    .line 27
    goto :goto_1

    .line 28
    .line 29
    .line 30
    :cond_3
    invoke-static {v0, p1}, Lcom/narvii/util/PackageUtils;->compareVersionName(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    move-result v1

    .line 32
    .line 33
    if-lez v1, :cond_1

    .line 34
    :goto_1
    return-object v0
.end method


# virtual methods
.method public forceUpgrade()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/MainDialogHelper;->config:Lcom/narvii/config/ConfigService;

    .line 3
    .line 4
    const-string v1, "forceUpgrade"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/config/ConfigService;->getBoolean(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v1}, Lcom/narvii/amino/MainDialogHelper;->latestVersion(Z)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    new-instance v2, Lcom/narvii/util/PackageUtils;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/narvii/amino/MainDialogHelper;->context:Lcom/narvii/app/NVContext;

    .line 20
    .line 21
    .line 22
    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, v3}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/narvii/util/PackageUtils;->getVersionName()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v2}, Lcom/narvii/util/PackageUtils;->compareVersionName(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    move-result v0

    .line 35
    .line 36
    if-lez v0, :cond_0

    .line 37
    const/4 v0, 0x1

    .line 38
    return v0

    .line 39
    :cond_0
    return v1
.end method

.method public hasNewVersion()Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/narvii/amino/MainDialogHelper;->latestVersion(Z)Ljava/lang/String;

    .line 5
    move-result-object v1

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v2

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    new-instance v2, Lcom/narvii/util/PackageUtils;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/narvii/amino/MainDialogHelper;->context:Lcom/narvii/app/NVContext;

    .line 16
    .line 17
    .line 18
    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v3}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/narvii/util/PackageUtils;->getVersionName()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v2}, Lcom/narvii/util/PackageUtils;->compareVersionName(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    move-result v1

    .line 31
    .line 32
    if-lez v1, :cond_0

    .line 33
    return v0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    return v0
.end method

.method public showAboutDialog()Landroid/app/Dialog;
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/MainDialogHelper;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const v2, 0x7f120154

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 18
    .line 19
    new-instance v2, Lcom/narvii/util/PackageUtils;

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    const/4 v4, 0x1

    .line 29
    .line 30
    new-array v4, v4, [Ljava/lang/Object;

    .line 31
    const/4 v5, 0x0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/narvii/util/PackageUtils;->getVersionName()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    aput-object v2, v4, v5

    .line 38
    .line 39
    .line 40
    const v2, 0x7f12125a

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v2, "\n"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const v4, 0x7f12034d

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 59
    move-result-object v4

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const v2, 0x7f12034c

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 83
    .line 84
    .line 85
    const v0, 0x104000a

    .line 86
    .line 87
    sget-object v2, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    .line 97
    const v1, 0x102000b

    .line 98
    .line 99
    .line 100
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    check-cast v1, Landroid/widget/TextView;

    .line 104
    .line 105
    const/16 v2, 0x11

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :catch_0
    return-object v0
.end method

.method public showUpgradeDialog(Z)Landroid/app/Dialog;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/MainDialogHelper;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/narvii/amino/MainDialogHelper;->latestVersion(Z)Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    new-instance v3, Landroid/app/AlertDialog$Builder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    const v4, 0x7f12121d

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 23
    .line 24
    new-array v1, v1, [Ljava/lang/Object;

    .line 25
    const/4 v4, 0x0

    .line 26
    .line 27
    aput-object v2, v1, v4

    .line 28
    .line 29
    .line 30
    const v2, 0x7f12121c

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 38
    .line 39
    new-instance v1, Lcom/narvii/amino/MainDialogHelper$1;

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, p0, v0}, Lcom/narvii/amino/MainDialogHelper$1;-><init>(Lcom/narvii/amino/MainDialogHelper;Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    const v0, 0x7f12121a

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 49
    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_0
    const/high16 p1, 0x1040000

    .line 57
    .line 58
    sget-object v0, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 65
    move-result-object p1

    .line 66
    return-object p1
.end method
