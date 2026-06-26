.class public Lcom/narvii/master/MasterActivity;
.super Lcom/narvii/app/NVActivity;
.source "MasterActivity.java"

# interfaces
.implements Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;


# static fields
.field private static final LOGIN_REQUEST:I = 0x1


# instance fields
.field account:Lcom/narvii/account/AccountService;

.field blockingProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field blockingProgressKeychain:Z

.field private disallowOnBoarding:Z

.field eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

.field keychainLoginActivityShowing:Z

.field prefsHelper:Lcom/narvii/util/PreferencesHelper;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field response:Lcom/narvii/logging/EventLogProfileResponse;

.field private final startRelogin:Ljava/lang/Runnable;

.field waitingNextInterestPicker:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;-><init>()V

    .line 251
    new-instance v0, Lcom/narvii/master/MasterActivity$1;

    invoke-direct {v0, p0}, Lcom/narvii/master/MasterActivity$1;-><init>(Lcom/narvii/master/MasterActivity;)V

    iput-object v0, p0, Lcom/narvii/master/MasterActivity;->startRelogin:Ljava/lang/Runnable;

    .line 274
    new-instance v0, Lcom/narvii/master/MasterActivity$2;

    invoke-direct {v0, p0}, Lcom/narvii/master/MasterActivity$2;-><init>(Lcom/narvii/master/MasterActivity;)V

    iput-object v0, p0, Lcom/narvii/master/MasterActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static backToMaster(Lcom/narvii/app/NVContext;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    if-eqz p0, :cond_0

    .line 69
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result p0

    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->getTaskId()I

    move-result v0

    if-eq p0, v0, :cond_0

    return-object p1

    .line 72
    :cond_0
    sget p0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v0, 0x64

    if-ne p0, v0, :cond_2

    .line 73
    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->hasMasterStacked()Z

    move-result p0

    if-eqz p0, :cond_1

    const/high16 p0, 0x4000000

    .line 74
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const p0, 0x10008000

    .line 76
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_2
    :goto_0
    return-object p1
.end method

.method private checkRedirectIntent(Landroid/content/Intent;)Z
    .locals 3

    .line 238
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/PackageUtils;->isTrustingPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v2

    :cond_1
    if-eqz p1, :cond_2

    .line 243
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    .line 244
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/PackageUtils;->isTrustingPackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method private getMyCommunityIndex()I
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

    invoke-virtual {v0}, Lcom/narvii/services/EventLogProfileService;->isShowMyCommunityTab()Z

    move-result v0

    return v0
.end method

.method private tryOpenInterestPicker(Z)V
    .locals 3

    .line 384
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->response:Lcom/narvii/logging/EventLogProfileResponse;

    if-nez v0, :cond_0

    return-void

    .line 389
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/master/MasterActivity;->waitingNextInterestPicker:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isActivityResumed()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 390
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/master/MasterActivity;->keychainLoginActivityShowing:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->response:Lcom/narvii/logging/EventLogProfileResponse;

    iget-boolean v0, v0, Lcom/narvii/logging/EventLogProfileResponse;->needTriggerInterestPicker:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const-string v0, "account change main activity"

    goto :goto_0

    :cond_2
    const-string v0, "app launch"

    :goto_0
    const-string v1, "interestPicker"

    .line 391
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/MasterActivity;->response:Lcom/narvii/logging/EventLogProfileResponse;

    const/4 v2, 0x1

    xor-int/2addr p1, v2

    invoke-static {v0, v1, v2, p1}, Lcom/narvii/util/InterestPickerUtils;->openInterestPicker(Landroid/content/Context;Lcom/narvii/logging/EventLogProfileResponse;ZZ)V

    :cond_3
    const/4 p1, 0x0

    .line 394
    iput-boolean p1, p0, Lcom/narvii/master/MasterActivity;->waitingNextInterestPicker:Z

    :cond_4
    return-void
.end method


# virtual methods
.method public clearResponseWhenAccountChange()V
    .locals 1

    const/4 v0, 0x0

    .line 407
    iput-object v0, p0, Lcom/narvii/master/MasterActivity;->response:Lcom/narvii/logging/EventLogProfileResponse;

    return-void
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method gotoDefaultTab()V
    .locals 2

    .line 331
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "incubatorTab"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/master/MasterTabFragment;

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0}, Lcom/narvii/master/MasterTabFragment;->gotoDefaultTab()V

    :cond_0
    return-void
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isGlobalInteractionScope()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    const/4 v1, 0x0

    .line 306
    iput-boolean v1, p0, Lcom/narvii/master/MasterActivity;->keychainLoginActivityShowing:Z

    if-nez p2, :cond_3

    .line 308
    iget-boolean v2, p0, Lcom/narvii/master/MasterActivity;->blockingProgressKeychain:Z

    if-eqz v2, :cond_0

    return-void

    .line 311
    :cond_0
    iget-object v2, p0, Lcom/narvii/master/MasterActivity;->response:Lcom/narvii/logging/EventLogProfileResponse;

    if-eqz v2, :cond_3

    iget-boolean v2, v2, Lcom/narvii/logging/EventLogProfileResponse;->needTriggerInterestPicker:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/narvii/master/MasterActivity;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p3, :cond_1

    const-string v2, "clickStartButton"

    .line 314
    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 317
    iput-boolean v1, p0, Lcom/narvii/master/MasterActivity;->waitingNextInterestPicker:Z

    .line 319
    :cond_2
    iget-boolean v1, p0, Lcom/narvii/master/MasterActivity;->disallowOnBoarding:Z

    if-nez v1, :cond_3

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close login"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/master/MasterActivity;->response:Lcom/narvii/logging/EventLogProfileResponse;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "interestPicker"

    invoke-static {v3, v1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/narvii/master/MasterActivity;->response:Lcom/narvii/logging/EventLogProfileResponse;

    xor-int/lit8 v4, v2, 0x1

    xor-int/2addr v0, v2

    invoke-static {v1, v3, v4, v0}, Lcom/narvii/util/InterestPickerUtils;->openInterestPicker(Landroid/content/Context;Lcom/narvii/logging/EventLogProfileResponse;ZZ)V

    .line 325
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/master/MasterActivity;->gotoDefaultTab()V

    .line 327
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 340
    invoke-static {p0}, Lcom/narvii/util/SplashUtils;->cancelSplash(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 343
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "incubatorTab"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 344
    instance-of v1, v0, Lcom/narvii/app/FragmentOnBackListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/narvii/app/FragmentOnBackListener;

    invoke-interface {v0, p0}, Lcom/narvii/app/FragmentOnBackListener;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 348
    :cond_1
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 104
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    const-string v0, "disallowOnBoarding"

    .line 106
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/master/MasterActivity;->disallowOnBoarding:Z

    .line 108
    invoke-static {p0}, Lcom/narvii/app/ApplicationSessionHelper;->masterOpened(Lcom/narvii/app/NVActivity;)V

    const-string v0, "account"

    .line 109
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/master/MasterActivity;->account:Lcom/narvii/account/AccountService;

    .line 110
    new-instance v0, Lcom/narvii/util/PreferencesHelper;

    invoke-direct {v0, p0}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/master/MasterActivity;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    const-string v0, "eventLogProfile"

    .line 111
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/services/EventLogProfileService;

    iput-object v1, p0, Lcom/narvii/master/MasterActivity;->eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_4

    .line 114
    new-instance v4, Lcom/narvii/amino/MainDialogFragment;

    invoke-direct {v4}, Lcom/narvii/amino/MainDialogFragment;-><init>()V

    .line 115
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 117
    sget v6, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    if-ne v6, v1, :cond_0

    const/16 v6, 0x4601

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const-string v7, "flag"

    .line 123
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    const-string v6, "dialog"

    invoke-virtual {v5, v4, v6}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 127
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    .line 128
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x1020002

    new-instance v6, Lcom/narvii/master/MasterTabFragment;

    invoke-direct {v6}, Lcom/narvii/master/MasterTabFragment;-><init>()V

    const-string v7, "incubatorTab"

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    const-string/jumbo v4, "tab"

    .line 130
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "explore"

    .line 131
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 133
    :cond_1
    sget v4, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    if-ne v4, v1, :cond_4

    .line 134
    iget-object v4, p0, Lcom/narvii/master/MasterActivity;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "prefs"

    .line 135
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SharedPreferences;

    const-string v5, "not_show_login_when_open_master"

    .line 136
    invoke-virtual {p0, v5, v2}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "signUpStrategy"

    .line 137
    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/narvii/master/MasterActivity;->disallowOnBoarding:Z

    if-eqz v4, :cond_4

    .line 138
    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/narvii/account/LoginActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v5, "signup"

    .line 139
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v5, "skipBtn"

    .line 140
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    iget-boolean v5, p0, Lcom/narvii/master/MasterActivity;->disallowOnBoarding:Z

    if-nez v5, :cond_3

    const-string v5, "onBoarding"

    .line 143
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    const-string v5, "Source"

    const-string v6, "Zero State"

    .line 145
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    sget-object v5, Lcom/narvii/account/LoginActivity$PromptType;->Launch:Lcom/narvii/account/LoginActivity$PromptType;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "promptType"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0, v4, v3}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 148
    iput-boolean v3, p0, Lcom/narvii/master/MasterActivity;->keychainLoginActivityShowing:Z

    .line 154
    :cond_4
    :goto_1
    iget-boolean v4, p0, Lcom/narvii/master/MasterActivity;->keychainLoginActivityShowing:Z

    if-nez v4, :cond_5

    if-nez p1, :cond_5

    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "__redirectActivity"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    if-eqz v4, :cond_5

    .line 156
    invoke-direct {p0, v4}, Lcom/narvii/master/MasterActivity;->checkRedirectIntent(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 157
    invoke-virtual {p0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 158
    invoke-virtual {p0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 162
    :cond_5
    iget-boolean v4, p0, Lcom/narvii/master/MasterActivity;->keychainLoginActivityShowing:Z

    if-nez v4, :cond_6

    .line 167
    iget-object v4, p0, Lcom/narvii/master/MasterActivity;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.narvii.action.KEYCHAIN_STATUS_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/narvii/app/NVActivity;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 168
    iget-object v4, p0, Lcom/narvii/master/MasterActivity;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0, v5}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    if-nez p1, :cond_6

    .line 170
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 171
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 172
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "relogin"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 173
    iget-object v4, p0, Lcom/narvii/master/MasterActivity;->startRelogin:Ljava/lang/Runnable;

    const-wide/16 v5, 0x190

    invoke-static {v4, v5, v6}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 178
    :cond_6
    sget v4, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    if-ne v4, v1, :cond_7

    .line 179
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/services/EventLogProfileService;

    .line 180
    invoke-virtual {v0, p0}, Lcom/narvii/services/EventLogProfileService;->addListener(Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V

    if-nez p1, :cond_7

    .line 182
    invoke-virtual {v0, v3, v2}, Lcom/narvii/services/EventLogProfileService;->refresh(ZZ)V

    .line 183
    iget-boolean p1, p0, Lcom/narvii/master/MasterActivity;->disallowOnBoarding:Z

    xor-int/2addr p1, v3

    iput-boolean p1, p0, Lcom/narvii/master/MasterActivity;->waitingNextInterestPicker:Z

    .line 187
    :cond_7
    invoke-static {p0}, Lcom/narvii/util/AppsflyerManager;->trackDeepLinking(Landroid/app/Activity;)V

    .line 188
    invoke-static {p0}, Lcom/narvii/util/DeepLinkManager;->handleFacebookDeferredLink(Landroid/app/Activity;)V

    .line 189
    invoke-static {}, Lcom/narvii/util/ReferrerTrackUtils;->getInstance()Lcom/narvii/util/ReferrerTrackUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/narvii/util/ReferrerTrackUtils;->trackReferrer(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 194
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-static {p0}, Lcom/narvii/app/ApplicationSessionHelper;->masterFinished(Lcom/narvii/app/NVActivity;)V

    :cond_0
    const-string v0, "eventLogProfile"

    .line 197
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/services/EventLogProfileService;

    .line 198
    invoke-virtual {v0, p0}, Lcom/narvii/services/EventLogProfileService;->removeListener(Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V

    .line 199
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 214
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "__redirectActivity"

    .line 215
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 216
    invoke-direct {p0, v0}, Lcom/narvii/master/MasterActivity;->checkRedirectIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 218
    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    .line 221
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "incubatorTab"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/master/MasterTabFragment;

    if-eqz v0, :cond_2

    const-string/jumbo v1, "tab"

    .line 223
    invoke-static {p1, v1}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "my"

    .line 224
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    invoke-direct {p0}, Lcom/narvii/master/MasterActivity;->getMyCommunityIndex()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->setTabIndex(I)V

    goto :goto_0

    :cond_1
    const-string v1, "chat"

    .line 226
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    .line 227
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->setTabIndex(I)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 230
    invoke-virtual {p0, p1}, Landroid/app/Activity;->finishActivity(I)V

    return-void
.end method

.method public onProfileChanged(Lcom/narvii/logging/EventLogProfileResponse;Z)V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    iget v1, p1, Lcom/narvii/logging/EventLogProfileResponse;->landingOption:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/PreferencesHelper;->saveLandingPos(Ljava/lang/Integer;)V

    if-eqz p2, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/narvii/master/MasterActivity;->gotoDefaultTab()V

    .line 379
    :cond_0
    iput-object p1, p0, Lcom/narvii/master/MasterActivity;->response:Lcom/narvii/logging/EventLogProfileResponse;

    return-void
.end method

.method public onRequestFailed(Ljava/lang/String;Z)V
    .locals 0

    .line 400
    iget-boolean p1, p0, Lcom/narvii/master/MasterActivity;->waitingNextInterestPicker:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 401
    iput-boolean p1, p0, Lcom/narvii/master/MasterActivity;->waitingNextInterestPicker:Z

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 205
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onResume()V

    .line 206
    invoke-static {p0}, Lcom/narvii/util/SplashUtils;->cancelSplash(Landroid/app/Activity;)Z

    const/4 v0, 0x0

    .line 207
    sput v0, Lcom/narvii/drawer/DrawerHost;->curCommunitySelectedOffset:I

    .line 208
    sput v0, Lcom/narvii/drawer/DrawerHost;->curCommunitySelectedPosition:I

    .line 209
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->updateRecentVisitorCount()V

    return-void
.end method

.method updateBlockingProgressDialog()V
    .locals 3

    .line 353
    iget-boolean v0, p0, Lcom/narvii/master/MasterActivity;->blockingProgressKeychain:Z

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->blockingProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-direct {v0, p0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/master/MasterActivity;->blockingProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 356
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->blockingProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 357
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->blockingProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    new-instance v1, Lcom/narvii/master/MasterActivity$3;

    invoke-direct {v1, p0}, Lcom/narvii/master/MasterActivity$3;-><init>(Lcom/narvii/master/MasterActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->blockingProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    goto :goto_0

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->blockingProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz v0, :cond_2

    .line 367
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 368
    iput-object v0, p0, Lcom/narvii/master/MasterActivity;->blockingProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    :cond_2
    :goto_0
    return-void
.end method
