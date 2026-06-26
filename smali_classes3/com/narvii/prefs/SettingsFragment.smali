.class public Lcom/narvii/prefs/SettingsFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SettingsFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/prefs/SettingsFragment$Adapter;
    }
.end annotation


# static fields
.field public static final KEY_LOGOUT_WITHOUT_REST:Ljava/lang/String; = "logout_without_reset"


# instance fields
.field abted:Z

.field account:Lcom/narvii/account/AccountService;

.field adapter:Lcom/narvii/prefs/SettingsFragment$Adapter;

.field config:Lcom/narvii/config/ConfigService;

.field configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field debugPrefsHelper:Lcom/narvii/util/debug/DebugPrefsHelper;

.field dialogHelper:Lcom/narvii/amino/MainDialogHelper;

.field final entryCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/list/prefs/PrefsEntry;",
            ">;"
        }
    .end annotation
.end field

.field membership:Lcom/narvii/wallet/MembershipService;

.field prefs:Landroid/content/SharedPreferences;

.field private final profileListener:Lcom/narvii/account/AccountService$ProfileListener;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field final switchCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/list/prefs/PrefsToggle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 191
    new-instance v0, Lcom/narvii/prefs/SettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/prefs/SettingsFragment$1;-><init>(Lcom/narvii/prefs/SettingsFragment;)V

    iput-object v0, p0, Lcom/narvii/prefs/SettingsFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 207
    new-instance v0, Lcom/narvii/prefs/SettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/prefs/SettingsFragment$2;-><init>(Lcom/narvii/prefs/SettingsFragment;)V

    iput-object v0, p0, Lcom/narvii/prefs/SettingsFragment;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 225
    new-instance v0, Lcom/narvii/prefs/SettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/narvii/prefs/SettingsFragment$3;-><init>(Lcom/narvii/prefs/SettingsFragment;)V

    iput-object v0, p0, Lcom/narvii/prefs/SettingsFragment;->entryCallback:Lcom/narvii/util/Callback;

    .line 235
    new-instance v0, Lcom/narvii/prefs/SettingsFragment$4;

    invoke-direct {v0, p0}, Lcom/narvii/prefs/SettingsFragment$4;-><init>(Lcom/narvii/prefs/SettingsFragment;)V

    iput-object v0, p0, Lcom/narvii/prefs/SettingsFragment;->switchCallback:Lcom/narvii/util/Callback;

    return-void
.end method


# virtual methods
.method about()V
    .locals 4

    .line 245
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment;->dialogHelper:Lcom/narvii/amino/MainDialogHelper;

    invoke-virtual {v0}, Lcom/narvii/amino/MainDialogHelper;->showAboutDialog()Landroid/app/Dialog;

    const-string v0, "account"

    .line 247
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    const-string v1, "api"

    .line 248
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 249
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "/device"

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 250
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v3, "deviceID"

    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 251
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bundleID"

    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    sget v2, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 252
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "clientType"

    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 253
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "testPushId"

    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 254
    sget-object v2, Lcom/narvii/util/http/ApiResponseListener;->IGNORE_RESPONSE_LISTENER:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 1

    .line 322
    new-instance p1, Lcom/narvii/prefs/SettingsFragment$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/prefs/SettingsFragment$Adapter;-><init>(Lcom/narvii/prefs/SettingsFragment;)V

    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment;->adapter:Lcom/narvii/prefs/SettingsFragment$Adapter;

    .line 323
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment;->adapter:Lcom/narvii/prefs/SettingsFragment$Adapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 324
    iget-object p1, p0, Lcom/narvii/prefs/SettingsFragment;->adapter:Lcom/narvii/prefs/SettingsFragment$Adapter;

    return-object p1
.end method

.method disableView(Landroid/widget/TextView;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 760
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 761
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method enableView(Landroid/widget/TextView;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 766
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 767
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method protected getSelectorDarkColor()I
    .locals 1

    const v0, 0x33ffffff

    return v0
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected isCommunityLevel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method login()V
    .locals 3

    .line 316
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/account/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 317
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method logout()V
    .locals 3

    .line 285
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0046

    const/4 v2, 0x1

    .line 286
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    const/4 v1, 0x0

    .line 287
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 288
    new-instance v1, Lcom/narvii/prefs/SettingsFragment$6;

    invoke-direct {v1, p0}, Lcom/narvii/prefs/SettingsFragment$6;-><init>(Lcom/narvii/prefs/SettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 312
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 116
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f0e1a

    .line 117
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 118
    new-instance p1, Lcom/narvii/amino/MainDialogHelper;

    invoke-direct {p1, p0}, Lcom/narvii/amino/MainDialogHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment;->dialogHelper:Lcom/narvii/amino/MainDialogHelper;

    const-string p1, "prefs"

    .line 119
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    .line 120
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 121
    new-instance p1, Lcom/narvii/util/debug/DebugPrefsHelper;

    invoke-direct {p1, p0}, Lcom/narvii/util/debug/DebugPrefsHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment;->debugPrefsHelper:Lcom/narvii/util/debug/DebugPrefsHelper;

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/narvii/prefs/SettingsFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 124
    iget-object p1, p0, Lcom/narvii/prefs/SettingsFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.COMMUNITY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 125
    iget-object p1, p0, Lcom/narvii/prefs/SettingsFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.MEMBERSHIP_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 126
    iget-object p1, p0, Lcom/narvii/prefs/SettingsFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.WALLET_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const-string p1, "account"

    .line 127
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment;->account:Lcom/narvii/account/AccountService;

    .line 128
    iget-object p1, p0, Lcom/narvii/prefs/SettingsFragment;->account:Lcom/narvii/account/AccountService;

    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    invoke-virtual {p1, v0}, Lcom/narvii/account/AccountService;->addProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    const-string p1, "membership"

    .line 129
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/wallet/MembershipService;

    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment;->membership:Lcom/narvii/wallet/MembershipService;

    const-string p1, "config"

    .line 131
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment;->config:Lcom/narvii/config/ConfigService;

    .line 132
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 135
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    const-string p1, "devOptions"

    .line 137
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/services/DevOptionsHelper;

    if-eqz p1, :cond_1

    .line 139
    invoke-virtual {p1, p0}, Lcom/narvii/services/DevOptionsHelper;->sendDevOptionsRequest(Lcom/narvii/app/NVContext;)V

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 178
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x7f0f0744

    const/4 v0, 0x0

    .line 179
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0550

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 160
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment;->account:Lcom/narvii/account/AccountService;

    iget-object v1, p0, Lcom/narvii/prefs/SettingsFragment;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->removeProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 161
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 216
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 217
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 218
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 329
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "update"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of p1, p1, Lcom/narvii/model/User;

    if-eqz p1, :cond_0

    .line 331
    iget-object p1, p0, Lcom/narvii/prefs/SettingsFragment;->adapter:Lcom/narvii/prefs/SettingsFragment$Adapter;

    if-eqz p1, :cond_0

    .line 332
    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 184
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0744

    if-ne v0, v1, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/narvii/prefs/SettingsFragment;->showLinkPasteDialog()V

    const/4 p1, 0x1

    return p1

    .line 188
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 166
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 167
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment;->membership:Lcom/narvii/wallet/MembershipService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/wallet/MembershipService;->refresh(Z)V

    return-void
.end method

.method public onThemeChange(I)V
    .locals 1

    .line 782
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onThemeChange(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 784
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06007d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 785
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 786
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 787
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 789
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060181

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 790
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 791
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 792
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVListView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method resetApp()V
    .locals 3

    .line 258
    new-instance v0, Lcom/narvii/prefs/SettingsFragment$5;

    invoke-direct {v0, p0}, Lcom/narvii/prefs/SettingsFragment$5;-><init>(Lcom/narvii/prefs/SettingsFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLinkPasteDialog()V
    .locals 5

    .line 698
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0ae9

    .line 699
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 700
    invoke-virtual {v0}, Lcom/narvii/util/dialog/AlertDialog;->setEditText()Landroid/widget/EditText;

    move-result-object v1

    const v2, 0x7f0f0aea

    .line 701
    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 702
    invoke-virtual {v0}, Lcom/narvii/util/dialog/AlertDialog;->clearButtons()V

    const v2, 0x7f0f0193

    .line 703
    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/narvii/prefs/SettingsFragment$7;

    invoke-direct {v3, p0, v0}, Lcom/narvii/prefs/SettingsFragment$7;-><init>(Lcom/narvii/prefs/SettingsFragment;Lcom/narvii/util/dialog/AlertDialog;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0f03aa

    .line 709
    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/narvii/prefs/SettingsFragment$8;

    invoke-direct {v3, p0, v1}, Lcom/narvii/prefs/SettingsFragment$8;-><init>(Lcom/narvii/prefs/SettingsFragment;Landroid/widget/EditText;)V

    const/16 v4, 0x20

    invoke-virtual {v0, v2, v4, v3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 728
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 729
    invoke-virtual {p0, v2}, Lcom/narvii/prefs/SettingsFragment;->enableView(Landroid/widget/TextView;)V

    goto :goto_0

    .line 731
    :cond_0
    invoke-virtual {p0, v2}, Lcom/narvii/prefs/SettingsFragment;->disableView(Landroid/widget/TextView;)V

    .line 733
    :goto_0
    new-instance v3, Lcom/narvii/prefs/SettingsFragment$9;

    invoke-direct {v3, p0, v2}, Lcom/narvii/prefs/SettingsFragment$9;-><init>(Lcom/narvii/prefs/SettingsFragment;Landroid/widget/TextView;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 755
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method
