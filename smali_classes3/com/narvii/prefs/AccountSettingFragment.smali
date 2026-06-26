.class public Lcom/narvii/prefs/AccountSettingFragment;
.super Lcom/narvii/list/NVListFragment;
.source "AccountSettingFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/prefs/AccountSettingFragment$Adapter;
    }
.end annotation


# static fields
.field private static final REQ_ACTIVATION:I = 0x65


# instance fields
.field adapter:Lcom/narvii/prefs/AccountSettingFragment$Adapter;

.field config:Lcom/narvii/config/ConfigService;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 116
    new-instance v0, Lcom/narvii/prefs/AccountSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/prefs/AccountSettingFragment$1;-><init>(Lcom/narvii/prefs/AccountSettingFragment;)V

    iput-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/prefs/AccountSettingFragment;Lcom/narvii/list/prefs/PrefsToggle;I)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/narvii/prefs/AccountSettingFragment;->whenClickToggle(Lcom/narvii/list/prefs/PrefsToggle;I)V

    return-void
.end method

.method private whenClickToggle(Lcom/narvii/list/prefs/PrefsToggle;I)V
    .locals 1

    .line 511
    iget p1, p1, Lcom/narvii/list/prefs/PrefsItem;->id:I

    const v0, 0x7f0f003a

    if-eq p1, v0, :cond_1

    const v0, 0x7f0f003d

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 516
    :cond_0
    const-class p1, Lcom/narvii/account/settings/GoogleConnectFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    const-string v0, "actionType"

    .line 520
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 521
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 244
    iget-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment;->adapter:Lcom/narvii/prefs/AccountSettingFragment$Adapter;

    return-object p1
.end method

.method deleteAccount()V
    .locals 7

    .line 155
    const-class v0, Lcom/narvii/account/settings/MasterAccountWebViewFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    .line 156
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 157
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 158
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getEmail()Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getSessionID()Ljava/lang/String;

    move-result-object v5

    .line 161
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "phonenumber"

    .line 162
    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "email"

    .line 165
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "sid"

    .line 168
    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_2
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "deviceid"

    .line 171
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v1, Lcom/narvii/util/AccountWebHelper;

    invoke-direct {v1, p0}, Lcom/narvii/util/AccountWebHelper;-><init>(Lcom/narvii/app/NVContext;)V

    new-instance v2, Lcom/narvii/prefs/AccountSettingFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/narvii/prefs/AccountSettingFragment$2;-><init>(Lcom/narvii/prefs/AccountSettingFragment;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/narvii/util/AccountWebHelper;->getDeleteAccountUrl(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Account"

    return-object v0
.end method

.method protected getSelectorDarkColor()I
    .locals 1

    const v0, 0x33ffffff

    return v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method logout()V
    .locals 3

    .line 216
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0046

    const/4 v2, 0x1

    .line 217
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    const/4 v1, 0x0

    .line 218
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 219
    new-instance v1, Lcom/narvii/prefs/AccountSettingFragment$4;

    invoke-direct {v1, p0}, Lcom/narvii/prefs/AccountSettingFragment$4;-><init>(Lcom/narvii/prefs/AccountSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 239
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 100
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f0027

    .line 101
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const/4 p1, 0x1

    .line 102
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 103
    new-instance v0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;

    invoke-direct {v0, p0}, Lcom/narvii/prefs/AccountSettingFragment$Adapter;-><init>(Lcom/narvii/prefs/AccountSettingFragment;)V

    iput-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment;->adapter:Lcom/narvii/prefs/AccountSettingFragment$Adapter;

    .line 104
    iget-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const-string v0, "config"

    .line 106
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    iput-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment;->config:Lcom/narvii/config/ConfigService;

    .line 107
    iget-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment;->config:Lcom/narvii/config/ConfigService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeFragment;->setDarkNVTheme(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    .line 144
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 146
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 147
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 148
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060181

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 149
    check-cast p1, Lcom/narvii/widget/NVListView;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 150
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 1

    .line 528
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v0, "update"

    if-ne p1, v0, :cond_0

    .line 529
    iget-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment;->adapter:Lcom/narvii/prefs/AccountSettingFragment$Adapter;

    if-eqz p1, :cond_0

    .line 530
    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 130
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 131
    iget-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment;->adapter:Lcom/narvii/prefs/AccountSettingFragment$Adapter;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onThemeChange(I)V
    .locals 1

    .line 542
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onThemeChange(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 544
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06007d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 545
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 546
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 547
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 549
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060181

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 550
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 551
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 552
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

    .line 139
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method resetApp()V
    .locals 3

    .line 189
    new-instance v0, Lcom/narvii/prefs/AccountSettingFragment$3;

    invoke-direct {v0, p0}, Lcom/narvii/prefs/AccountSettingFragment$3;-><init>(Lcom/narvii/prefs/AccountSettingFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
