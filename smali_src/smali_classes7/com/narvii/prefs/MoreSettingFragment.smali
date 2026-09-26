.class public final Lcom/narvii/prefs/MoreSettingFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/prefs/MoreSettingFragment$Adapter;
    }
.end annotation


# instance fields
.field private account:Lcom/narvii/account/AccountService;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final adapter$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private config:Lcom/narvii/config/ConfigService;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private memberShip:Lcom/narvii/wallet/MembershipService;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private prefs:Landroid/content/SharedPreferences;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final profileListener:Lcom/narvii/prefs/MoreSettingFragment$profileListener$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final receiver:Lcom/narvii/prefs/MoreSettingFragment$receiver$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/prefs/MoreSettingFragment$adapter$2;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/prefs/MoreSettingFragment$adapter$2;-><init>(Lcom/narvii/prefs/MoreSettingFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment;->adapter$delegate:Lw7/m;

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/prefs/MoreSettingFragment$receiver$1;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/narvii/prefs/MoreSettingFragment$receiver$1;-><init>(Lcom/narvii/prefs/MoreSettingFragment;)V

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment;->receiver:Lcom/narvii/prefs/MoreSettingFragment$receiver$1;

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/prefs/MoreSettingFragment$profileListener$1;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/narvii/prefs/MoreSettingFragment$profileListener$1;-><init>(Lcom/narvii/prefs/MoreSettingFragment;)V

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment;->profileListener:Lcom/narvii/prefs/MoreSettingFragment$profileListener$1;

    .line 29
    return-void
.end method

.method public static final synthetic access$getAccount$p(Lcom/narvii/prefs/MoreSettingFragment;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/prefs/MoreSettingFragment;->account:Lcom/narvii/account/AccountService;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getConfig$p(Lcom/narvii/prefs/MoreSettingFragment;)Lcom/narvii/config/ConfigService;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/prefs/MoreSettingFragment;->config:Lcom/narvii/config/ConfigService;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMemberShip$p(Lcom/narvii/prefs/MoreSettingFragment;)Lcom/narvii/wallet/MembershipService;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/prefs/MoreSettingFragment;->memberShip:Lcom/narvii/wallet/MembershipService;

    .line 3
    return-object p0
.end method

.method private final getAdapter()Lcom/narvii/prefs/MoreSettingFragment$Adapter;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment;->adapter$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;

    .line 9
    return-object v0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/prefs/MoreSettingFragment;->getAdapter()Lcom/narvii/prefs/MoreSettingFragment$Adapter;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/prefs/MoreSettingFragment;->getAdapter()Lcom/narvii/prefs/MoreSettingFragment$Adapter;

    .line 15
    move-result-object p1

    .line 16
    return-object p1
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

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f120cd0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    .line 11
    const-string p1, "account"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment;->account:Lcom/narvii/account/AccountService;

    .line 20
    .line 21
    const-string p1, "membership"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    check-cast p1, Lcom/narvii/wallet/MembershipService;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment;->memberShip:Lcom/narvii/wallet/MembershipService;

    .line 30
    .line 31
    const-string p1, "config"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment;->config:Lcom/narvii/config/ConfigService;

    .line 40
    .line 41
    const-string p1, "prefs"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    check-cast p1, Landroid/content/SharedPreferences;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment;->prefs:Landroid/content/SharedPreferences;

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment;->account:Lcom/narvii/account/AccountService;

    .line 52
    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment;->profileListener:Lcom/narvii/prefs/MoreSettingFragment$profileListener$1;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/narvii/account/AccountService;->addProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 59
    .line 60
    :cond_0
    iget-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment;->receiver:Lcom/narvii/prefs/MoreSettingFragment$receiver$1;

    .line 61
    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    .line 63
    .line 64
    const-string v1, "com.narvii.action.ACCOUNT_CHANGED"

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 71
    .line 72
    iget-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment;->receiver:Lcom/narvii/prefs/MoreSettingFragment$receiver$1;

    .line 73
    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    .line 75
    .line 76
    const-string v1, "com.narvii.action.COMMUNITY_CHANGED"

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 83
    .line 84
    iget-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment;->receiver:Lcom/narvii/prefs/MoreSettingFragment$receiver$1;

    .line 85
    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    .line 87
    .line 88
    const-string v1, "com.narvii.action.MEMBERSHIP_CHANGED"

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 95
    .line 96
    iget-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment;->receiver:Lcom/narvii/prefs/MoreSettingFragment$receiver$1;

    .line 97
    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    .line 99
    .line 100
    const-string v1, "com.narvii.action.WALLET_CHANGED"

    .line 101
    .line 102
    .line 103
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 107
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string p3, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p3, 0x7f0d05f7

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment;->receiver:Lcom/narvii/prefs/MoreSettingFragment$receiver$1;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment;->account:Lcom/narvii/account/AccountService;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/prefs/MoreSettingFragment;->profileListener:Lcom/narvii/prefs/MoreSettingFragment$profileListener$1;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->removeProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 18
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/widget/ListView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    :goto_0
    if-nez p1, :cond_1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    const/4 p2, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 18
    :goto_1
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2
    .param p1    # Lcom/narvii/notification/Notification;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const-string v0, "update"

    .line 5
    .line 6
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 15
    .line 16
    instance-of p1, p1, Lcom/narvii/model/User;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/prefs/MoreSettingFragment;->getAdapter()Lcom/narvii/prefs/MoreSettingFragment$Adapter;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 26
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment;->memberShip:Lcom/narvii/wallet/MembershipService;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/wallet/MembershipService;->refresh(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/narvii/prefs/MoreSettingFragment;->getAdapter()Lcom/narvii/prefs/MoreSettingFragment$Adapter;

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x1

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 21
    return-void
.end method

.method public onThemeChange(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onThemeChange(I)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    const-string v1, "null cannot be cast to non-null type com.narvii.widget.NVListView"

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    const/4 v0, 0x2

    .line 10
    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    const v0, 0x7f0600a1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 23
    move-result p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 57
    const/4 v0, 0x0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    const v0, 0x7f0603eb

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 72
    move-result p1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 106
    const/4 v0, -0x1

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    .line 110
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    new-instance p2, Lcom/narvii/notice/NotificationTurnedOffWarningFragment;

    .line 25
    .line 26
    .line 27
    invoke-direct {p2}, Lcom/narvii/notice/NotificationTurnedOffWarningFragment;-><init>()V

    .line 28
    .line 29
    .line 30
    const v0, 0x7f0a0a30

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0, p2}, Landroidx/fragment/app/FragmentTransaction;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 40
    :cond_0
    return-void
.end method
