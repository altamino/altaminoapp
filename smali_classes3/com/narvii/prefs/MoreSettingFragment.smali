.class public final Lcom/narvii/prefs/MoreSettingFragment;
.super Lcom/narvii/list/NVListFragment;
.source "MoreSettingFragment.kt"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/prefs/MoreSettingFragment$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMoreSettingFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MoreSettingFragment.kt\ncom/narvii/prefs/MoreSettingFragment\n*L\n1#1,369:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private account:Lcom/narvii/account/AccountService;

.field private final adapter$delegate:Lkotlin/Lazy;

.field private config:Lcom/narvii/config/ConfigService;

.field private memberShip:Lcom/narvii/wallet/MembershipService;

.field private prefs:Landroid/content/SharedPreferences;

.field private final profileListener:Lcom/narvii/prefs/MoreSettingFragment$profileListener$1;

.field private final receiver:Lcom/narvii/prefs/MoreSettingFragment$receiver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/prefs/MoreSettingFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "adapter"

    const-string v4, "getAdapter()Lcom/narvii/prefs/MoreSettingFragment$Adapter;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/prefs/MoreSettingFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 48
    new-instance v0, Lcom/narvii/prefs/MoreSettingFragment$adapter$2;

    invoke-direct {v0, p0}, Lcom/narvii/prefs/MoreSettingFragment$adapter$2;-><init>(Lcom/narvii/prefs/MoreSettingFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment;->adapter$delegate:Lkotlin/Lazy;

    .line 122
    new-instance v0, Lcom/narvii/prefs/MoreSettingFragment$receiver$1;

    invoke-direct {v0, p0}, Lcom/narvii/prefs/MoreSettingFragment$receiver$1;-><init>(Lcom/narvii/prefs/MoreSettingFragment;)V

    iput-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment;->receiver:Lcom/narvii/prefs/MoreSettingFragment$receiver$1;

    .line 137
    new-instance v0, Lcom/narvii/prefs/MoreSettingFragment$profileListener$1;

    invoke-direct {v0, p0}, Lcom/narvii/prefs/MoreSettingFragment$profileListener$1;-><init>(Lcom/narvii/prefs/MoreSettingFragment;)V

    iput-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment;->profileListener:Lcom/narvii/prefs/MoreSettingFragment$profileListener$1;

    return-void
.end method

.method public static final synthetic access$getAccount$p(Lcom/narvii/prefs/MoreSettingFragment;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/narvii/prefs/MoreSettingFragment;->account:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method public static final synthetic access$getConfig$p(Lcom/narvii/prefs/MoreSettingFragment;)Lcom/narvii/config/ConfigService;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/narvii/prefs/MoreSettingFragment;->config:Lcom/narvii/config/ConfigService;

    return-object p0
.end method

.method public static final synthetic access$getMemberShip$p(Lcom/narvii/prefs/MoreSettingFragment;)Lcom/narvii/wallet/MembershipService;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/narvii/prefs/MoreSettingFragment;->memberShip:Lcom/narvii/wallet/MembershipService;

    return-object p0
.end method

.method public static final synthetic access$setAccount$p(Lcom/narvii/prefs/MoreSettingFragment;Lcom/narvii/account/AccountService;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment;->account:Lcom/narvii/account/AccountService;

    return-void
.end method

.method public static final synthetic access$setConfig$p(Lcom/narvii/prefs/MoreSettingFragment;Lcom/narvii/config/ConfigService;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment;->config:Lcom/narvii/config/ConfigService;

    return-void
.end method

.method public static final synthetic access$setListAdapter(Lcom/narvii/prefs/MoreSettingFragment;Landroid/widget/ListAdapter;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public static final synthetic access$setMemberShip$p(Lcom/narvii/prefs/MoreSettingFragment;Lcom/narvii/wallet/MembershipService;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment;->memberShip:Lcom/narvii/wallet/MembershipService;

    return-void
.end method

.method private final getAdapter()Lcom/narvii/prefs/MoreSettingFragment$Adapter;
    .locals 3

    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment;->adapter$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/prefs/MoreSettingFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;

    return-object v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/prefs/MoreSettingFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const-string v0, "listView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/narvii/prefs/MoreSettingFragment;->getAdapter()Lcom/narvii/prefs/MoreSettingFragment$Adapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 105
    invoke-direct {p0}, Lcom/narvii/prefs/MoreSettingFragment;->getAdapter()Lcom/narvii/prefs/MoreSettingFragment$Adapter;

    move-result-object p1

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

    .line 56
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f0bca

    .line 57
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const-string p1, "account"

    .line 59
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment;->account:Lcom/narvii/account/AccountService;

    const-string p1, "membership"

    .line 60
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/wallet/MembershipService;

    iput-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment;->memberShip:Lcom/narvii/wallet/MembershipService;

    const-string p1, "config"

    .line 61
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    iput-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment;->config:Lcom/narvii/config/ConfigService;

    const-string p1, "prefs"

    .line 62
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment;->prefs:Landroid/content/SharedPreferences;

    .line 64
    iget-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment;->account:Lcom/narvii/account/AccountService;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment;->profileListener:Lcom/narvii/prefs/MoreSettingFragment$profileListener$1;

    invoke-virtual {p1, v0}, Lcom/narvii/account/AccountService;->addProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment;->receiver:Lcom/narvii/prefs/MoreSettingFragment$receiver$1;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 67
    iget-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment;->receiver:Lcom/narvii/prefs/MoreSettingFragment$receiver$1;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.COMMUNITY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 68
    iget-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment;->receiver:Lcom/narvii/prefs/MoreSettingFragment$receiver$1;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.MEMBERSHIP_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 69
    iget-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment;->receiver:Lcom/narvii/prefs/MoreSettingFragment$receiver$1;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.WALLET_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b0550

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment;->receiver:Lcom/narvii/prefs/MoreSettingFragment$receiver$1;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment;->account:Lcom/narvii/account/AccountService;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/prefs/MoreSettingFragment;->profileListener:Lcom/narvii/prefs/MoreSettingFragment$profileListener$1;

    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->removeProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 100
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/prefs/MoreSettingFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 86
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 87
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 88
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    :cond_1
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 110
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "update"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of p1, p1, Lcom/narvii/model/User;

    if-eqz p1, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/narvii/prefs/MoreSettingFragment;->getAdapter()Lcom/narvii/prefs/MoreSettingFragment$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 92
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 93
    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment;->memberShip:Lcom/narvii/wallet/MembershipService;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/wallet/MembershipService;->refresh(Z)V

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/narvii/prefs/MoreSettingFragment;->getAdapter()Lcom/narvii/prefs/MoreSettingFragment$Adapter;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method

.method public onThemeChange(I)V
    .locals 2

    .line 356
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onThemeChange(I)V

    const-string v0, "null cannot be cast to non-null type com.narvii.widget.NVListView"

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 358
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f06007d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 359
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Lcom/narvii/widget/NVListView;

    invoke-virtual {v1, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 360
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lcom/narvii/widget/NVListView;

    invoke-virtual {v1, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 361
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/narvii/widget/NVListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 360
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 359
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    .line 363
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f060181

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 364
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_6

    check-cast v1, Lcom/narvii/widget/NVListView;

    invoke-virtual {v1, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 365
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Lcom/narvii/widget/NVListView;

    invoke-virtual {v1, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 366
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Lcom/narvii/widget/NVListView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    goto :goto_0

    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 365
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 364
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
