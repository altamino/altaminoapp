.class public Lcom/narvii/account/settings/AccountSettingsBaseFragment;
.super Lcom/narvii/app/NVFragment;
.source "AccountSettingsBaseFragment.java"


# instance fields
.field protected accountService:Lcom/narvii/account/AccountService;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field protected sid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 23
    new-instance v0, Lcom/narvii/account/settings/AccountSettingsBaseFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/account/settings/AccountSettingsBaseFragment$1;-><init>(Lcom/narvii/account/settings/AccountSettingsBaseFragment;)V

    iput-object v0, p0, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "account"

    .line 39
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 40
    iget-object p1, p0, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getSessionID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->sid:Ljava/lang/String;

    .line 41
    iget-object p1, p0, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 47
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    return-void
.end method

.method public openWebPage(Ljava/lang/String;)V
    .locals 2

    .line 51
    const-class v0, Lcom/narvii/account/settings/MasterAccountWebViewFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "url"

    .line 52
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected updateViews()V
    .locals 0

    return-void
.end method
