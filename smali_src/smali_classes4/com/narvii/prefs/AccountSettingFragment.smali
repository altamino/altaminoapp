.class public Lcom/narvii/prefs/AccountSettingFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/prefs/AccountSettingFragment$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/prefs/AccountSettingFragment$1;-><init>(Lcom/narvii/prefs/AccountSettingFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 11
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/prefs/AccountSettingFragment;Lcom/narvii/list/prefs/PrefsToggle;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/prefs/AccountSettingFragment;->whenClickToggle(Lcom/narvii/list/prefs/PrefsToggle;I)V

    return-void
.end method

.method private whenClickToggle(Lcom/narvii/list/prefs/PrefsToggle;I)V
    .locals 1

    .line 1
    .line 2
    iget p1, p1, Lcom/narvii/list/prefs/PrefsItem;->id:I

    .line 3
    .line 4
    .line 5
    const v0, 0x7f120039

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    .line 10
    const v0, 0x7f12003c

    .line 11
    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    const/4 p1, 0x0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    const-class p1, Lcom/narvii/account/settings/GoogleConnectFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 28
    .line 29
    :goto_0
    if-eqz p1, :cond_2

    .line 30
    .line 31
    const-string v0, "actionType"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    invoke-static {p0, p1}, Lcom/narvii/prefs/AccountSettingFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 38
    :cond_2
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    iget-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment;->adapter:Lcom/narvii/prefs/AccountSettingFragment$Adapter;

    return-object p1
.end method

.method deleteAccount()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/account/ConfirmDeleteAccountFragment;->show(Lcom/narvii/app/NVContext;)V

    .line 4
    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "account"

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

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const v1, 0x7f120047

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 21
    .line 22
    new-instance v1, Lcom/narvii/prefs/AccountSettingFragment$3;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/narvii/prefs/AccountSettingFragment$3;-><init>(Lcom/narvii/prefs/AccountSettingFragment;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 32
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f120026

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    const/4 p1, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/narvii/prefs/AccountSettingFragment$Adapter;-><init>(Lcom/narvii/prefs/AccountSettingFragment;)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment;->adapter:Lcom/narvii/prefs/AccountSettingFragment$Adapter;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 23
    .line 24
    new-instance v1, Landroid/content/IntentFilter;

    .line 25
    .line 26
    const-string v2, "com.narvii.action.ACCOUNT_CHANGED"

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 33
    .line 34
    const-string v0, "config"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment;->config:Lcom/narvii/config/ConfigService;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 46
    move-result v0

    .line 47
    .line 48
    if-nez v0, :cond_0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 p1, 0x0

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeFragment;->setDarkNVTheme(Z)V

    .line 54
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 9
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    .line 18
    const v0, 0x7f0603eb

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 22
    move-result p2

    .line 23
    .line 24
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 31
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v0, v0, Lcom/narvii/model/User;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "update"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment;->adapter:Lcom/narvii/prefs/AccountSettingFragment$Adapter;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 24
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment;->adapter:Lcom/narvii/prefs/AccountSettingFragment$Adapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 11
    :cond_0
    return-void
.end method

.method public onThemeChange(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onThemeChange(I)V

    .line 4
    const/4 v0, 0x2

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    const v0, 0x7f0600a1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 17
    move-result p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 42
    const/4 v0, 0x0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v0, 0x1

    .line 48
    .line 49
    if-ne p1, v0, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    const v0, 0x7f0603eb

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 60
    move-result p1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 85
    const/4 v0, -0x1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    .line 89
    :cond_1
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method resetApp()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/prefs/AccountSettingFragment$2;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/prefs/AccountSettingFragment$2;-><init>(Lcom/narvii/prefs/AccountSettingFragment;)V

    .line 6
    .line 7
    const-wide/16 v1, 0x1f4

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 11
    return-void
.end method
