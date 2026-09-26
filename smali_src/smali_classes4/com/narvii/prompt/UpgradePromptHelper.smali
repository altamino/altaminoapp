.class public Lcom/narvii/prompt/UpgradePromptHelper;
.super Lcom/narvii/prompt/PromptHelper;
.source "SourceFile"


# instance fields
.field forceUpgrade:Z

.field public final helper:Lcom/narvii/amino/MainDialogHelper;

.field showUpgrade:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/prompt/PromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/narvii/prompt/UpgradePromptHelper;->showUpgrade:Z

    .line 7
    .line 8
    iput-boolean p2, p0, Lcom/narvii/prompt/UpgradePromptHelper;->forceUpgrade:Z

    .line 9
    .line 10
    new-instance p2, Lcom/narvii/amino/MainDialogHelper;

    .line 11
    .line 12
    .line 13
    invoke-direct {p2, p1}, Lcom/narvii/amino/MainDialogHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 14
    .line 15
    iput-object p2, p0, Lcom/narvii/prompt/UpgradePromptHelper;->helper:Lcom/narvii/amino/MainDialogHelper;

    .line 16
    return-void
.end method


# virtual methods
.method protected doTryShow()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prompt/UpgradePromptHelper;->helper:Lcom/narvii/amino/MainDialogHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/amino/MainDialogHelper;->forceUpgrade()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/prompt/UpgradePromptHelper;->forceUpgrade:Z

    .line 9
    .line 10
    const-string v1, "upgradeShowDate"

    .line 11
    .line 12
    const-string v2, "prefs"

    .line 13
    const/4 v3, 0x1

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iput-boolean v3, p0, Lcom/narvii/prompt/UpgradePromptHelper;->showUpgrade:Z

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/prompt/UpgradePromptHelper;->helper:Lcom/narvii/amino/MainDialogHelper;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/amino/MainDialogHelper;->hasNewVersion()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/narvii/util/DateTimeFormatter;->today()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iget-object v4, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 33
    .line 34
    .line 35
    invoke-interface {v4, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    move-result-object v4

    .line 37
    .line 38
    check-cast v4, Landroid/content/SharedPreferences;

    .line 39
    const/4 v5, 0x0

    .line 40
    .line 41
    .line 42
    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v4

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    .line 53
    return-void

    .line 54
    .line 55
    :cond_1
    iput-boolean v3, p0, Lcom/narvii/prompt/UpgradePromptHelper;->showUpgrade:Z

    .line 56
    .line 57
    :goto_0
    iget-boolean v0, p0, Lcom/narvii/prompt/UpgradePromptHelper;->showUpgrade:Z

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/prompt/UpgradePromptHelper;->helper:Lcom/narvii/amino/MainDialogHelper;

    .line 62
    .line 63
    iget-boolean v3, p0, Lcom/narvii/prompt/UpgradePromptHelper;->forceUpgrade:Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v3}, Lcom/narvii/amino/MainDialogHelper;->showUpgradeDialog(Z)Landroid/app/Dialog;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    new-instance v3, Lcom/narvii/prompt/UpgradePromptHelper$1;

    .line 70
    .line 71
    .line 72
    invoke-direct {v3, p0}, Lcom/narvii/prompt/UpgradePromptHelper$1;-><init>(Lcom/narvii/prompt/UpgradePromptHelper;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lcom/narvii/util/DateTimeFormatter;->today()Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    iget-object v3, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 82
    .line 83
    .line 84
    invoke-interface {v3, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    move-result-object v2

    .line 86
    .line 87
    check-cast v2, Landroid/content/SharedPreferences;

    .line 88
    .line 89
    .line 90
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 91
    move-result-object v2

    .line 92
    .line 93
    .line 94
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 99
    :cond_2
    return-void

    .line 100
    .line 101
    .line 102
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    .line 103
    return-void
.end method
