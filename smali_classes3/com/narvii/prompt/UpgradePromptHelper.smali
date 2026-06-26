.class public Lcom/narvii/prompt/UpgradePromptHelper;
.super Lcom/narvii/prompt/PromptHelper;
.source "UpgradePromptHelper.java"


# instance fields
.field forceUpgrade:Z

.field public final helper:Lcom/narvii/amino/MainDialogHelper;

.field showUpgrade:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/narvii/prompt/PromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    const/4 p2, 0x0

    .line 19
    iput-boolean p2, p0, Lcom/narvii/prompt/UpgradePromptHelper;->showUpgrade:Z

    .line 20
    iput-boolean p2, p0, Lcom/narvii/prompt/UpgradePromptHelper;->forceUpgrade:Z

    .line 24
    new-instance p2, Lcom/narvii/amino/MainDialogHelper;

    invoke-direct {p2, p1}, Lcom/narvii/amino/MainDialogHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/prompt/UpgradePromptHelper;->helper:Lcom/narvii/amino/MainDialogHelper;

    return-void
.end method


# virtual methods
.method protected doTryShow()V
    .locals 6

    .line 29
    iget-object v0, p0, Lcom/narvii/prompt/UpgradePromptHelper;->helper:Lcom/narvii/amino/MainDialogHelper;

    invoke-virtual {v0}, Lcom/narvii/amino/MainDialogHelper;->forceUpgrade()Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/prompt/UpgradePromptHelper;->forceUpgrade:Z

    const-string v1, "upgradeShowDate"

    const-string v2, "prefs"

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 30
    iput-boolean v3, p0, Lcom/narvii/prompt/UpgradePromptHelper;->showUpgrade:Z

    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/narvii/prompt/UpgradePromptHelper;->helper:Lcom/narvii/amino/MainDialogHelper;

    invoke-virtual {v0}, Lcom/narvii/amino/MainDialogHelper;->hasNewVersion()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    invoke-static {}, Lcom/narvii/util/DateTimeFormatter;->today()Ljava/lang/String;

    move-result-object v0

    .line 33
    iget-object v4, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v4, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SharedPreferences;

    const/4 v5, 0x0

    .line 34
    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    return-void

    .line 38
    :cond_1
    iput-boolean v3, p0, Lcom/narvii/prompt/UpgradePromptHelper;->showUpgrade:Z

    .line 44
    :goto_0
    iget-boolean v0, p0, Lcom/narvii/prompt/UpgradePromptHelper;->showUpgrade:Z

    if-eqz v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/narvii/prompt/UpgradePromptHelper;->helper:Lcom/narvii/amino/MainDialogHelper;

    iget-boolean v3, p0, Lcom/narvii/prompt/UpgradePromptHelper;->forceUpgrade:Z

    invoke-virtual {v0, v3}, Lcom/narvii/amino/MainDialogHelper;->showUpgradeDialog(Z)Landroid/app/Dialog;

    move-result-object v0

    .line 46
    new-instance v3, Lcom/narvii/prompt/UpgradePromptHelper$1;

    invoke-direct {v3, p0}, Lcom/narvii/prompt/UpgradePromptHelper$1;-><init>(Lcom/narvii/prompt/UpgradePromptHelper;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 53
    invoke-static {}, Lcom/narvii/util/DateTimeFormatter;->today()Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v3, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v3, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences;

    .line 55
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    return-void

    .line 41
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    return-void
.end method
