.class public Lcom/narvii/prefs/SettingsFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

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

.field firebaseIdCounter:I

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/prefs/SettingsFragment;->firebaseIdCounter:I

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/prefs/SettingsFragment$1;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/narvii/prefs/SettingsFragment$1;-><init>(Lcom/narvii/prefs/SettingsFragment;)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/prefs/SettingsFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/prefs/SettingsFragment$2;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/narvii/prefs/SettingsFragment$2;-><init>(Lcom/narvii/prefs/SettingsFragment;)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/prefs/SettingsFragment;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/prefs/SettingsFragment$3;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/narvii/prefs/SettingsFragment$3;-><init>(Lcom/narvii/prefs/SettingsFragment;)V

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/prefs/SettingsFragment;->entryCallback:Lcom/narvii/util/Callback;

    .line 28
    .line 29
    new-instance v0, Lcom/narvii/prefs/SettingsFragment$4;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/narvii/prefs/SettingsFragment$4;-><init>(Lcom/narvii/prefs/SettingsFragment;)V

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/prefs/SettingsFragment;->switchCallback:Lcom/narvii/util/Callback;

    .line 35
    return-void
.end method

.method private synthetic lambda$logout$1(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    const v0, 0x7f120048

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 26
    .line 27
    :cond_0
    const-string p1, "logout_without_reset"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 31
    move-result p1

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/prefs/SettingsFragment;->resetApp()V

    .line 41
    :goto_0
    return-void
.end method

.method private synthetic lambda$logout$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    const-string p1, "statistics"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 11
    .line 12
    const-string p2, "Log Out"

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 16
    .line 17
    new-instance p1, Lcom/narvii/account/LogoutHelper;

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/narvii/account/LogoutHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 21
    .line 22
    new-instance p2, Lcom/narvii/prefs/l;

    .line 23
    .line 24
    .line 25
    invoke-direct {p2, p0}, Lcom/narvii/prefs/l;-><init>(Lcom/narvii/prefs/SettingsFragment;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Lcom/narvii/account/LogoutHelper;->logout(Lcom/narvii/util/Callback;)V

    .line 29
    :cond_0
    return-void
.end method

.method private synthetic lambda$resetApp$0()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 10
    .line 11
    const/16 v1, 0x64

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    new-instance v0, Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    const-class v2, Lcom/narvii/master/MasterActivity;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .line 26
    const-string v1, "disallowOnBoarding"

    .line 27
    const/4 v2, 0x1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    const v1, 0x10008000

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v0}, Lcom/narvii/prefs/SettingsFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    const v1, 0x7f010037

    .line 47
    .line 48
    .line 49
    const v2, 0x7f010038

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 60
    return-void
.end method

.method private static synthetic lambda$showLinkPasteDialog$3(Lcom/narvii/util/dialog/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 4
    return-void
.end method

.method private synthetic lambda$showLinkPasteDialog$4(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result p2

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    const-string p2, "http://"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const-string v0, "https://"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    new-instance p2, Lcom/narvii/util/PackageUtils;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-direct {p2, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    const-string v0, "http"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 68
    move-result v0

    .line 69
    .line 70
    if-nez v0, :cond_1

    .line 71
    .line 72
    const-string v0, "https"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 80
    move-result v0

    .line 81
    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    .line 85
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v0}, Lcom/narvii/util/PackageUtils;->isPermalinkHost(Ljava/lang/String;)Z

    .line 90
    move-result p2

    .line 91
    .line 92
    if-eqz p2, :cond_2

    .line 93
    .line 94
    new-instance p2, Landroid/content/Intent;

    .line 95
    .line 96
    const-string v0, "android.intent.action.VIEW"

    .line 97
    .line 98
    .line 99
    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 100
    .line 101
    .line 102
    invoke-static {p0, p2}, Lcom/narvii/prefs/SettingsFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    return-void

    .line 104
    .line 105
    .line 106
    :catch_0
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    .line 110
    const p2, 0x7f1207ec

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 114
    move-result-object p2

    .line 115
    const/4 v0, 0x0

    .line 116
    .line 117
    .line 118
    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 123
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

.method public static synthetic t(Lcom/narvii/prefs/SettingsFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/prefs/SettingsFragment;->lambda$logout$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic u(Lcom/narvii/prefs/SettingsFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/prefs/SettingsFragment;->lambda$resetApp$0()V

    return-void
.end method

.method public static synthetic v(Lcom/narvii/util/dialog/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/prefs/SettingsFragment;->lambda$showLinkPasteDialog$3(Lcom/narvii/util/dialog/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcom/narvii/prefs/SettingsFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/prefs/SettingsFragment;->lambda$logout$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic x(Lcom/narvii/prefs/SettingsFragment;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/prefs/SettingsFragment;->lambda$showLinkPasteDialog$4(Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method about()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment;->dialogHelper:Lcom/narvii/amino/MainDialogHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/amino/MainDialogHelper;->showAboutDialog()Landroid/app/Dialog;

    .line 6
    .line 7
    const-string v0, "account"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 14
    .line 15
    const-string v1, "api"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    const-string v3, "/device"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    sget-object v3, La0/a;->o:Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    const-string v3, "bundleID"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    sget v2, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 66
    .line 67
    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v2

    .line 70
    .line 71
    const-string v3, "clientType"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 79
    move-result-object v2

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 83
    move-result-object v2

    .line 84
    .line 85
    const-string v3, "testPushId"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    sget-object v2, Lcom/narvii/util/http/ApiResponseListener;->IGNORE_RESPONSE_LISTENER:Lcom/narvii/util/http/ApiResponseListener;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 99
    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/prefs/SettingsFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/prefs/SettingsFragment$Adapter;-><init>(Lcom/narvii/prefs/SettingsFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment;->adapter:Lcom/narvii/prefs/SettingsFragment$Adapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment;->adapter:Lcom/narvii/prefs/SettingsFragment$Adapter;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/prefs/SettingsFragment;->adapter:Lcom/narvii/prefs/SettingsFragment$Adapter;

    .line 19
    return-object p1
.end method

.method disableView(Landroid/widget/TextView;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    const v1, 0x7f080181

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    const/4 v0, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 26
    return-void
.end method

.method enableView(Landroid/widget/TextView;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    const v1, 0x7f080182

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    const/4 v0, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 26
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

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    const-class v2, Lcom/narvii/account/LoginActivity;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/narvii/prefs/SettingsFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 15
    return-void
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
    new-instance v1, Lcom/narvii/prefs/m;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/narvii/prefs/m;-><init>(Lcom/narvii/prefs/SettingsFragment;)V

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
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f120f45

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    .line 11
    new-instance p1, Lcom/narvii/amino/MainDialogHelper;

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, p0}, Lcom/narvii/amino/MainDialogHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment;->dialogHelper:Lcom/narvii/amino/MainDialogHelper;

    .line 17
    .line 18
    const-string p1, "prefs"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    check-cast p1, Landroid/content/SharedPreferences;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    .line 27
    .line 28
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    new-instance p1, Lcom/narvii/util/debug/DebugPrefsHelper;

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, p0}, Lcom/narvii/util/debug/DebugPrefsHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 36
    .line 37
    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment;->debugPrefsHelper:Lcom/narvii/util/debug/DebugPrefsHelper;

    .line 38
    .line 39
    :cond_0
    iget-object p1, p0, Lcom/narvii/prefs/SettingsFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 40
    .line 41
    new-instance v0, Landroid/content/IntentFilter;

    .line 42
    .line 43
    const-string v1, "com.narvii.action.ACCOUNT_CHANGED"

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/prefs/SettingsFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 52
    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    .line 54
    .line 55
    const-string v1, "com.narvii.action.COMMUNITY_CHANGED"

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 62
    .line 63
    iget-object p1, p0, Lcom/narvii/prefs/SettingsFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 64
    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    .line 66
    .line 67
    const-string v1, "com.narvii.action.MEMBERSHIP_CHANGED"

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 74
    .line 75
    iget-object p1, p0, Lcom/narvii/prefs/SettingsFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 76
    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    .line 78
    .line 79
    const-string v1, "com.narvii.action.WALLET_CHANGED"

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 86
    .line 87
    const-string p1, "account"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 94
    .line 95
    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment;->account:Lcom/narvii/account/AccountService;

    .line 96
    .line 97
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Lcom/narvii/account/AccountService;->addProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 101
    .line 102
    const-string p1, "membership"

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    check-cast p1, Lcom/narvii/wallet/MembershipService;

    .line 109
    .line 110
    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 111
    .line 112
    const-string p1, "config"

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 119
    .line 120
    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment;->config:Lcom/narvii/config/ConfigService;

    .line 121
    .line 122
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 123
    .line 124
    .line 125
    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 126
    .line 127
    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 128
    .line 129
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 133
    .line 134
    const-string p1, "devOptions"

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    move-result-object p1

    .line 139
    .line 140
    check-cast p1, Lcom/narvii/services/DevOptionsHelper;

    .line 141
    .line 142
    if-eqz p1, :cond_1

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, p0}, Lcom/narvii/services/DevOptionsHelper;->sendDevOptionsRequest(Lcom/narvii/app/NVContext;)V

    .line 146
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    const v0, 0x7f1207ed

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 11
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d05f7

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment;->account:Lcom/narvii/account/AccountService;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/prefs/SettingsFragment;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->removeProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 13
    .line 14
    .line 15
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 16
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

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
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "update"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 13
    .line 14
    instance-of p1, p1, Lcom/narvii/model/User;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/prefs/SettingsFragment;->adapter:Lcom/narvii/prefs/SettingsFragment$Adapter;

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

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f1207ed

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/prefs/SettingsFragment;->showLinkPasteDialog()V

    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public onResume()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/wallet/MembershipService;->refresh(Z)V

    .line 10
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
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    new-instance p2, Lcom/narvii/notice/NotificationTurnedOffWarningFragment;

    .line 16
    .line 17
    .line 18
    invoke-direct {p2}, Lcom/narvii/notice/NotificationTurnedOffWarningFragment;-><init>()V

    .line 19
    .line 20
    .line 21
    const v0, 0x7f0a0a30

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, p2}, Landroidx/fragment/app/FragmentTransaction;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 29
    :cond_0
    return-void
.end method

.method resetApp()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/prefs/k;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/prefs/k;-><init>(Lcom/narvii/prefs/SettingsFragment;)V

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

.method showLinkPasteDialog()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const v1, 0x7f120b94

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/util/dialog/AlertDialog;->setEditText()Landroid/widget/EditText;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    const v2, 0x7f120b95

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/narvii/util/dialog/AlertDialog;->clearButtons()V

    .line 37
    .line 38
    .line 39
    const v2, 0x7f1201e2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    new-instance v3, Lcom/narvii/prefs/n;

    .line 46
    .line 47
    .line 48
    invoke-direct {v3, v0}, Lcom/narvii/prefs/n;-><init>(Lcom/narvii/util/dialog/AlertDialog;)V

    .line 49
    const/4 v4, 0x0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2, v4, v3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    const v2, 0x7f120402

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    new-instance v3, Lcom/narvii/prefs/o;

    .line 62
    .line 63
    .line 64
    invoke-direct {v3, p0, v1}, Lcom/narvii/prefs/o;-><init>(Lcom/narvii/prefs/SettingsFragment;Landroid/widget/EditText;)V

    .line 65
    .line 66
    const/16 v4, 0x20

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2, v4, v3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 70
    move-result-object v2

    .line 71
    .line 72
    check-cast v2, Landroid/widget/TextView;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 76
    move-result-object v3

    .line 77
    .line 78
    .line 79
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    move-result v3

    .line 81
    .line 82
    if-nez v3, :cond_0

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v2}, Lcom/narvii/prefs/SettingsFragment;->enableView(Landroid/widget/TextView;)V

    .line 86
    goto :goto_0

    .line 87
    .line 88
    .line 89
    :cond_0
    invoke-virtual {p0, v2}, Lcom/narvii/prefs/SettingsFragment;->disableView(Landroid/widget/TextView;)V

    .line 90
    .line 91
    :goto_0
    new-instance v3, Lcom/narvii/prefs/SettingsFragment$5;

    .line 92
    .line 93
    .line 94
    invoke-direct {v3, p0, v2}, Lcom/narvii/prefs/SettingsFragment$5;-><init>(Lcom/narvii/prefs/SettingsFragment;Landroid/widget/TextView;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 101
    return-void
.end method
