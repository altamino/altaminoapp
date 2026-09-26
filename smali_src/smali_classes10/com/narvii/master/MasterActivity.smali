.class public Lcom/narvii/master/MasterActivity;
.super Lcom/narvii/app/NVActivity;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;


# static fields
.field private static final LOGIN_REQUEST:I = 0x1


# instance fields
.field private final NOTIFY_ID:I

.field accountService:Lcom/narvii/account/AccountService;

.field blockingProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field blockingProgressKeychain:Z

.field private disallowOnBoarding:Z

.field eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

.field private firstLaunchViewModel:Lcom/narvii/master/launch/FirstLaunchViewModel;

.field keychainLoginActivityShowing:Z

.field private masterViewModel:Lcom/narvii/master/viewmodel/MasterViewModel;

.field prefsHelper:Lcom/narvii/util/PreferencesHelper;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private requestPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field response:Lcom/narvii/logging/EventLogProfileResponse;

.field private final startRelogin:Ljava/lang/Runnable;

.field waitingNextInterestPicker:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;-><init>()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a037e

    .line 7
    .line 8
    iput v0, p0, Lcom/narvii/master/MasterActivity;->NOTIFY_ID:I

    .line 9
    .line 10
    new-instance v0, Lcom/narvii/master/MasterActivity$1;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/narvii/master/MasterActivity$1;-><init>(Lcom/narvii/master/MasterActivity;)V

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/master/MasterActivity;->startRelogin:Ljava/lang/Runnable;

    .line 16
    .line 17
    new-instance v0, Lcom/narvii/master/MasterActivity$2;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/narvii/master/MasterActivity$2;-><init>(Lcom/narvii/master/MasterActivity;)V

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/master/MasterActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 23
    return-void
.end method

.method public static synthetic A(Lcom/narvii/master/MasterActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/master/MasterActivity;->lambda$buildAccountRepository$2()Z

    move-result p0

    return p0
.end method

.method private addFragmentsToStack()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/master/MasterActivity;->getMainDialogFragment()Lcom/narvii/amino/MainDialogFragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    const-string v2, "dialog"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    new-instance v1, Lcom/narvii/master/MasterTabFragment;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1}, Lcom/narvii/master/MasterTabFragment;-><init>()V

    .line 35
    .line 36
    const-string v2, "incubatorTab"

    .line 37
    .line 38
    .line 39
    const v3, 0x7f0a039d

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v3, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 47
    return-void
.end method

.method private associateMediaLabIdWithAminoUserId()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroid/os/Handler;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 6
    .line 7
    new-instance v1, Lcom/narvii/master/o;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/narvii/master/o;-><init>(Lcom/narvii/master/MasterActivity;)V

    .line 11
    .line 12
    const-wide/16 v2, 0x7d0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    return-void
.end method

.method public static backToMaster(Lcom/narvii/app/NVContext;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    instance-of v0, v0, Landroid/app/Activity;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    check-cast p0, Landroid/app/Activity;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    .line 20
    move-result p0

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->getTaskId()I

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eq p0, v0, :cond_0

    .line 27
    return-object p1

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-static {}, Lcom/narvii/master/MasterActivity;->isMasterApplication()Z

    .line 31
    move-result p0

    .line 32
    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->hasMasterStacked()Z

    .line 37
    move-result p0

    .line 38
    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    const/high16 p0, 0x4000000

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_1
    const p0, 0x10008000

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 52
    :cond_2
    :goto_0
    return-object p1
.end method

.method private buildAccountRepository()Lcom/narvii/master/viewmodel/repository/AccountRepository;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/master/h;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/master/h;-><init>(Lcom/narvii/master/MasterActivity;)V

    .line 6
    return-object v0
.end method

.method private checkRedirectIntent(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/narvii/util/PackageUtils;->isTrustingPackage(Ljava/lang/String;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    return v1

    .line 23
    .line 24
    :cond_0
    if-eqz p1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lcom/narvii/util/PackageUtils;->isTrustingPackage(Ljava/lang/String;)Z

    .line 40
    move-result p1

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    const/4 p1, 0x1

    .line 44
    return p1

    .line 45
    :cond_1
    return v1
.end method

.method private extracted(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "eventLogProfile"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/services/EventLogProfileService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lcom/narvii/services/EventLogProfileService;->addListener(Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    const/4 p1, 0x0

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, p1}, Lcom/narvii/services/EventLogProfileService;->refresh(ZZ)V

    .line 19
    .line 20
    iget-boolean p1, p0, Lcom/narvii/master/MasterActivity;->disallowOnBoarding:Z

    .line 21
    xor-int/2addr p1, v1

    .line 22
    .line 23
    iput-boolean p1, p0, Lcom/narvii/master/MasterActivity;->waitingNextInterestPicker:Z

    .line 24
    :cond_0
    return-void
.end method

.method private static getMainDialogFragment()Lcom/narvii/amino/MainDialogFragment;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/amino/MainDialogFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/amino/MainDialogFragment;-><init>()V

    .line 6
    .line 7
    new-instance v1, Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/narvii/master/MasterActivity;->isMasterApplication()Z

    .line 14
    move-result v2

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    const/16 v2, 0x4601

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    .line 22
    :goto_0
    const-string v3, "flag"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 29
    return-object v0
.end method

.method private getMyCommunityIndex()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/services/EventLogProfileService;->isShowMyCommunityTab()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private hideActionBar()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 14
    :cond_0
    return-void
.end method

.method private static isMasterApplication()Z
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 3
    .line 4
    const/16 v1, 0x64

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method private synthetic lambda$associateMediaLabIdWithAminoUserId$5(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lai/medialab/medialabanalytics/MediaLabAnalytics;->getInstance()Lai/medialab/medialabanalytics/MediaLabAnalytics;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    new-array v1, v1, [Landroid/util/Pair;

    .line 8
    .line 9
    new-instance v2, Landroid/util/Pair;

    .line 10
    .line 11
    const-string v3, "object_id"

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, v3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    const/4 p1, 0x0

    .line 16
    .line 17
    aput-object v2, v1, p1

    .line 18
    .line 19
    const-string p1, "Linked UID"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1, v1}, Lai/medialab/medialabanalytics/MediaLabAnalytics;->trackEvent(Ljava/lang/String;[Landroid/util/Pair;)V

    .line 23
    .line 24
    new-instance p1, Landroid/os/Bundle;

    .line 25
    .line 26
    .line 27
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 28
    .line 29
    const-string v0, "data_uid"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    .line 39
    invoke-static {p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 40
    move-result-object p2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->b(Landroid/os/Bundle;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/narvii/master/MasterActivity;->setEmailToLiveRamp()V

    .line 47
    return-void
.end method

.method private synthetic lambda$associateMediaLabIdWithAminoUserId$6()V
    .locals 3

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lai/medialab/medialabanalytics/MediaLabAnalytics;->getInstance()Lai/medialab/medialabanalytics/MediaLabAnalytics;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0}, Lai/medialab/medialabanalytics/MediaLabAnalytics;->initialize(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lai/medialab/medialabanalytics/MediaLabAnalytics;->getInstance()Lai/medialab/medialabanalytics/MediaLabAnalytics;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    new-instance v2, Lcom/narvii/master/m;

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, p0, v0}, Lcom/narvii/master/m;-><init>(Lcom/narvii/master/MasterActivity;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lai/medialab/medialabanalytics/MediaLabAnalytics;->getUid(Lai/medialab/medialabanalytics/UidListener;)V

    .line 34
    :cond_0
    return-void
.end method

.method private synthetic lambda$buildAccountRepository$2()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private synthetic lambda$registerForRequestPushPermission$0(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    new-instance p1, Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 6
    .line 7
    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    const-string v2, "package"

    .line 18
    .line 19
    .line 20
    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    invoke-static {p0, p1}, Lcom/narvii/master/MasterActivity;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    .line 28
    return-void
.end method

.method private synthetic lambda$registerForRequestPushPermission$1(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/master/MasterActivity;->showFirstNotification()V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    const v0, 0x7f120ddd

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    .line 22
    .line 23
    .line 24
    const v0, 0x7f120dde

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 28
    const/4 v0, 0x0

    .line 29
    .line 30
    .line 31
    const v1, -0x777778

    .line 32
    .line 33
    .line 34
    const v2, 0x7f1201e2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v2, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 38
    .line 39
    new-instance v0, Lcom/narvii/master/g;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/narvii/master/g;-><init>(Lcom/narvii/master/MasterActivity;)V

    .line 43
    .line 44
    .line 45
    const v1, 0x7f120ddf

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 52
    :goto_0
    return-void
.end method

.method private synthetic lambda$setupFirstLaunchViewModel$4(Lcom/narvii/master/launch/InstallType;)V
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/master/launch/InstallType$FreshInstall;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/master/MasterActivity;->launchFirstLaunchNotification()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ly/e;->n()V

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    instance-of p1, p1, Lcom/narvii/master/launch/InstallType$Upgrade;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ly/e;->r()V

    .line 19
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$setupMainViewModel$3(Lcom/narvii/master/viewmodel/MasterUiState;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/master/viewmodel/MasterUiState;->isReLogin()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/master/MasterActivity;->startRelogin:Ljava/lang/Runnable;

    .line 9
    .line 10
    const-wide/16 v0, 0x190

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 14
    :cond_0
    return-void
.end method

.method private synthetic lambda$tryOpenInterestPicker$8(ZLjava/lang/Boolean;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p2

    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string p2, "account change main activity"

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    const-string p2, "app launch"

    .line 14
    .line 15
    :goto_0
    const-string v0, "interestPicker"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, p2}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->response:Lcom/narvii/logging/EventLogProfileResponse;

    .line 25
    const/4 v1, 0x1

    .line 26
    xor-int/2addr p1, v1

    .line 27
    .line 28
    .line 29
    invoke-static {p2, v0, v1, p1}, Lcom/narvii/util/InterestPickerUtils;->openInterestPicker(Landroid/content/Context;Lcom/narvii/logging/EventLogProfileResponse;ZZ)V

    .line 30
    :cond_1
    return-void
.end method

.method private synthetic lambda$updateBlockingProgressDialog$7(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/MasterActivity;->gotoDefaultTab()V

    .line 4
    return-void
.end method

.method private launchFirstLaunchNotification()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/permisson/PermissionUtilsV2;->INSTANCE:Lcom/narvii/permisson/PermissionUtilsV2;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/narvii/permisson/PermissionUtilsV2;->hasSelfPermissionPushNotifications(Landroid/content/Context;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/master/MasterActivity;->showFirstNotification()V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v1, 0x21

    .line 17
    .line 18
    if-lt v0, v1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/master/MasterActivity;->requestNotificationPermission()V

    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method private logAppCheckEvent(Lcom/narvii/util/statistics/StatisticsEventBuilder;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsEventBuilder;)V

    .line 4
    return-void
.end method

.method private registerForKeyStatusChange()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 3
    .line 4
    new-instance v1, Landroid/content/IntentFilter;

    .line 5
    .line 6
    const-string v2, "com.narvii.action.KEYCHAIN_STATUS_CHANGED"

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVActivity;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 15
    .line 16
    new-instance v1, Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0, v1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 23
    return-void
.end method

.method private registerForRequestPushPermission()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    .line 6
    .line 7
    new-instance v1, Lcom/narvii/master/i;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/narvii/master/i;-><init>(Lcom/narvii/master/MasterActivity;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/master/MasterActivity;->requestPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 17
    return-void
.end method

.method private requestNotificationPermission()V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->requestPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 3
    .line 4
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    .line 8
    return-void
.end method

.method public static synthetic s(Lcom/narvii/master/MasterActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/master/MasterActivity;->lambda$associateMediaLabIdWithAminoUserId$6()V

    return-void
.end method

.method public static safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVActivity;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setEmailToLiveRamp()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getEmail()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/account/liveramp/LiveRampHelper;->setLRUserEmail(Ljava/lang/String;)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->accountService:Lcom/narvii/account/AccountService;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    const-string v1, "/account"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    const-string v1, "api"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 55
    .line 56
    new-instance v2, Lcom/narvii/account/AccountResponseListener;

    .line 57
    .line 58
    .line 59
    invoke-direct {v2, p0}, Lcom/narvii/account/AccountResponseListener;-><init>(Lcom/narvii/app/NVContext;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->accountService:Lcom/narvii/account/AccountService;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getEmail()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Lcom/narvii/account/liveramp/LiveRampHelper;->setLRUserEmail(Ljava/lang/String;)V

    .line 72
    :cond_1
    :goto_0
    return-void
.end method

.method private setTabFromArgs()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->masterViewModel:Lcom/narvii/master/viewmodel/MasterViewModel;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/master/viewmodel/MasterViewModel;->shouldLaunchLoginIfExploreRequested(Landroid/content/Intent;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Landroid/content/Intent;

    .line 15
    .line 16
    const-class v1, Lcom/narvii/account/LoginActivity;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .line 21
    const-string v1, "signup"

    .line 22
    const/4 v2, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 26
    .line 27
    const-string v1, "skipBtn"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 31
    .line 32
    iget-boolean v1, p0, Lcom/narvii/master/MasterActivity;->disallowOnBoarding:Z

    .line 33
    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    const-string v1, "onBoarding"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    .line 41
    :cond_0
    const-string v1, "Source"

    .line 42
    .line 43
    const-string v3, "Zero State"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    .line 48
    sget-object v1, Lcom/narvii/account/LoginActivity$PromptType;->Launch:Lcom/narvii/account/LoginActivity$PromptType;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    const-string v3, "promptType"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    invoke-static {p0, v0, v2}, Lcom/narvii/master/MasterActivity;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 61
    .line 62
    iput-boolean v2, p0, Lcom/narvii/master/MasterActivity;->keychainLoginActivityShowing:Z

    .line 63
    :cond_1
    return-void
.end method

.method private setupFirstLaunchViewModel()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/master/launch/FirstLaunchViewModel;->getFactory(Landroid/content/Context;)Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, p0, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    .line 14
    .line 15
    const-class v0, Lcom/narvii/master/launch/FirstLaunchViewModel;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroidx/lifecycle/ViewModelProvider;->a(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/master/launch/FirstLaunchViewModel;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/master/MasterActivity;->firstLaunchViewModel:Lcom/narvii/master/launch/FirstLaunchViewModel;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/master/launch/FirstLaunchViewModel;->getInstallState()Landroidx/lifecycle/LiveData;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    new-instance v1, Lcom/narvii/master/n;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/narvii/master/n;-><init>(Lcom/narvii/master/MasterActivity;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 36
    return-void
.end method

.method private setupMainViewModel()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/MasterActivity;->buildAccountRepository()Lcom/narvii/master/viewmodel/repository/AccountRepository;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "prefs"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    check-cast v1, Landroid/content/SharedPreferences;

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/narvii/master/viewmodel/MasterViewModel;->factory(Lcom/narvii/master/viewmodel/repository/AccountRepository;Landroid/content/SharedPreferences;)Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, p0, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    .line 22
    .line 23
    const-class v0, Lcom/narvii/master/viewmodel/MasterViewModel;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Landroidx/lifecycle/ViewModelProvider;->a(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    check-cast v0, Lcom/narvii/master/viewmodel/MasterViewModel;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/master/MasterActivity;->masterViewModel:Lcom/narvii/master/viewmodel/MasterViewModel;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/narvii/master/viewmodel/MasterViewModel;->getReLoginEvent()Landroidx/lifecycle/LiveData;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    new-instance v1, Lcom/narvii/master/l;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/narvii/master/l;-><init>(Lcom/narvii/master/MasterActivity;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 44
    return-void
.end method

.method private showFirstNotification()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    .line 3
    .line 4
    const-string v1, "community-management"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const v1, 0x7f080539

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->a0(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 14
    .line 15
    .line 16
    const v1, -0xff3183

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->z(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 20
    .line 21
    .line 22
    const v1, 0x7f120154

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->E(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lcom/narvii/notification/channel/NotificationChannelHelper;->setAlertChannel(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    const-string v2, "\ud83d\udea8"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const v3, 0x7f12076d

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->D(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->h0(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 66
    .line 67
    new-instance v2, Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 68
    .line 69
    .line 70
    invoke-direct {v2, v0}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->x(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->f0(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 77
    .line 78
    const-class v1, Lcom/narvii/master/MasterTemplatePickerFragment;

    .line 79
    .line 80
    .line 81
    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    const-string v2, "source"

    .line 85
    .line 86
    const-string v3, "FirstLaunchNotifyPush"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 93
    move-result-wide v2

    .line 94
    long-to-int v2, v2

    .line 95
    .line 96
    .line 97
    const v3, 0xffff

    .line 98
    and-int/2addr v2, v3

    .line 99
    .line 100
    const/high16 v3, 0x7f0a0000

    .line 101
    or-int/2addr v2, v3

    .line 102
    .line 103
    sget-object v3, Lcom/narvii/util/PendingIntentUtils;->INSTANCE:Lcom/narvii/util/PendingIntentUtils;

    .line 104
    .line 105
    const/high16 v4, 0x8000000

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v4}, Lcom/narvii/util/PendingIntentUtils;->getCurrentImmutableFlag(I)I

    .line 109
    move-result v3

    .line 110
    .line 111
    .line 112
    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 113
    move-result-object v1

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->C(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 117
    const/4 v1, 0x1

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->t(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 121
    .line 122
    const-string v1, "notification"

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    move-result-object v1

    .line 127
    .line 128
    check-cast v1, Landroid/app/NotificationManager;

    .line 129
    .line 130
    .line 131
    const v2, 0x7f0a037e

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->g()Landroid/app/Notification;

    .line 135
    move-result-object v0

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 139
    .line 140
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->firstLaunchViewModel:Lcom/narvii/master/launch/FirstLaunchViewModel;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/narvii/master/launch/FirstLaunchViewModel;->checkInstallType()V

    .line 144
    return-void
.end method

.method public static synthetic t(Lcom/narvii/master/MasterActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/master/MasterActivity;->lambda$associateMediaLabIdWithAminoUserId$5(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private tryOpenInterestPicker(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->response:Lcom/narvii/logging/EventLogProfileResponse;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/master/MasterActivity;->waitingNextInterestPicker:Z

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    if-eqz p1, :cond_3

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isActivityResumed()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->accountService:Lcom/narvii/account/AccountService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/master/MasterActivity;->keychainLoginActivityShowing:Z

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->response:Lcom/narvii/logging/EventLogProfileResponse;

    .line 32
    .line 33
    iget-boolean v0, v0, Lcom/narvii/logging/EventLogProfileResponse;->needTriggerInterestPicker:Z

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->accountService:Lcom/narvii/account/AccountService;

    .line 38
    .line 39
    new-instance v1, Lcom/narvii/master/j;

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, p0, p1}, Lcom/narvii/master/j;-><init>(Lcom/narvii/master/MasterActivity;Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->hasBirthday(Lcom/narvii/util/Callback;)V

    .line 46
    :cond_2
    const/4 p1, 0x0

    .line 47
    .line 48
    iput-boolean p1, p0, Lcom/narvii/master/MasterActivity;->waitingNextInterestPicker:Z

    .line 49
    :cond_3
    return-void
.end method

.method public static synthetic u(Lcom/narvii/master/MasterActivity;ZLjava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/master/MasterActivity;->lambda$tryOpenInterestPicker$8(ZLjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic v(Lcom/narvii/master/MasterActivity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/master/MasterActivity;->lambda$updateBlockingProgressDialog$7(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic w(Lcom/narvii/master/MasterActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/master/MasterActivity;->lambda$registerForRequestPushPermission$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic x(Lcom/narvii/master/MasterActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/master/MasterActivity;->lambda$registerForRequestPushPermission$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y(Lcom/narvii/master/MasterActivity;Lcom/narvii/master/launch/InstallType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/master/MasterActivity;->lambda$setupFirstLaunchViewModel$4(Lcom/narvii/master/launch/InstallType;)V

    return-void
.end method

.method public static synthetic z(Lcom/narvii/master/MasterActivity;Lcom/narvii/master/viewmodel/MasterUiState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/master/MasterActivity;->lambda$setupMainViewModel$3(Lcom/narvii/master/viewmodel/MasterUiState;)V

    return-void
.end method


# virtual methods
.method public clearResponseWhenAccountChange()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/master/MasterActivity;->response:Lcom/narvii/logging/EventLogProfileResponse;

    return-void
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method gotoDefaultTab()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "incubatorTab"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/master/MasterTabFragment;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/master/MasterTabFragment;->gotoDefaultTab()V

    .line 18
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

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, v0, :cond_4

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/narvii/master/MasterActivity;->keychainLoginActivityShowing:Z

    .line 7
    .line 8
    if-nez p2, :cond_3

    .line 9
    .line 10
    iget-boolean v2, p0, Lcom/narvii/master/MasterActivity;->blockingProgressKeychain:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    iget-object v2, p0, Lcom/narvii/master/MasterActivity;->response:Lcom/narvii/logging/EventLogProfileResponse;

    .line 16
    .line 17
    if-eqz v2, :cond_3

    .line 18
    .line 19
    iget-boolean v2, v2, Lcom/narvii/logging/EventLogProfileResponse;->needTriggerInterestPicker:Z

    .line 20
    .line 21
    if-eqz v2, :cond_3

    .line 22
    .line 23
    iget-object v2, p0, Lcom/narvii/master/MasterActivity;->accountService:Lcom/narvii/account/AccountService;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 27
    move-result v2

    .line 28
    .line 29
    if-nez v2, :cond_3

    .line 30
    .line 31
    if-eqz p3, :cond_1

    .line 32
    .line 33
    const-string v2, "clickStartButton"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 37
    move-result v2

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v2, v1

    .line 40
    .line 41
    :goto_0
    if-eqz v2, :cond_2

    .line 42
    .line 43
    iput-boolean v1, p0, Lcom/narvii/master/MasterActivity;->waitingNextInterestPicker:Z

    .line 44
    .line 45
    :cond_2
    iget-boolean v1, p0, Lcom/narvii/master/MasterActivity;->disallowOnBoarding:Z

    .line 46
    .line 47
    if-nez v1, :cond_3

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    const-string v3, "close login"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    iget-object v3, p0, Lcom/narvii/master/MasterActivity;->response:Lcom/narvii/logging/EventLogProfileResponse;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    const-string v3, "interestPicker"

    .line 69
    .line 70
    .line 71
    invoke-static {v3, v1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    iget-object v3, p0, Lcom/narvii/master/MasterActivity;->response:Lcom/narvii/logging/EventLogProfileResponse;

    .line 78
    .line 79
    xor-int/lit8 v4, v2, 0x1

    .line 80
    xor-int/2addr v0, v2

    .line 81
    .line 82
    .line 83
    invoke-static {v1, v3, v4, v0}, Lcom/narvii/util/InterestPickerUtils;->openInterestPicker(Landroid/content/Context;Lcom/narvii/logging/EventLogProfileResponse;ZZ)V

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/master/MasterActivity;->gotoDefaultTab()V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0}, Lcom/narvii/master/MasterActivity;->setEmailToLiveRamp()V

    .line 90
    .line 91
    .line 92
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 93
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/util/SplashUtils;->cancelSplash(Landroid/app/Activity;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    const-string v1, "incubatorTab"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    instance-of v1, v0, Lcom/narvii/app/FragmentOnBackListener;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    check-cast v0, Lcom/narvii/app/FragmentOnBackListener;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, p0}, Lcom/narvii/app/FragmentOnBackListener;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    return-void

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onBackPressed()V

    .line 40
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/master/MasterActivity;->hideActionBar()V

    .line 7
    .line 8
    const-string v0, "disallowOnBoarding"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/narvii/master/MasterActivity;->disallowOnBoarding:Z

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Lcom/narvii/app/ApplicationSessionHelper;->masterOpened(Lcom/narvii/app/NVActivity;)V

    .line 25
    .line 26
    const-string v0, "account"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/master/MasterActivity;->accountService:Lcom/narvii/account/AccountService;

    .line 35
    .line 36
    new-instance v0, Lcom/narvii/util/PreferencesHelper;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 40
    .line 41
    iput-object v0, p0, Lcom/narvii/master/MasterActivity;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    .line 42
    .line 43
    const-string v0, "eventLogProfile"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    check-cast v0, Lcom/narvii/services/EventLogProfileService;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/narvii/master/MasterActivity;->eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

    .line 52
    const/4 v0, 0x1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeActivity;->setShouldInflateAd(Z)V

    .line 56
    .line 57
    .line 58
    const v0, 0x7f0d0035

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Lcom/narvii/master/MasterActivity;->setupMainViewModel()V

    .line 65
    .line 66
    if-nez p1, :cond_0

    .line 67
    .line 68
    .line 69
    invoke-direct {p0}, Lcom/narvii/master/MasterActivity;->addFragmentsToStack()V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lcom/narvii/master/MasterActivity;->setTabFromArgs()V

    .line 73
    .line 74
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/master/MasterActivity;->keychainLoginActivityShowing:Z

    .line 75
    .line 76
    if-nez v0, :cond_1

    .line 77
    .line 78
    if-nez p1, :cond_1

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    const-string v1, "__redirectActivity"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    check-cast v0, Landroid/content/Intent;

    .line 91
    .line 92
    if-eqz v0, :cond_1

    .line 93
    .line 94
    .line 95
    invoke-direct {p0, v0}, Lcom/narvii/master/MasterActivity;->checkRedirectIntent(Landroid/content/Intent;)Z

    .line 96
    move-result v1

    .line 97
    .line 98
    if-eqz v1, :cond_1

    .line 99
    .line 100
    .line 101
    invoke-static {p0, v0}, Lcom/narvii/master/MasterActivity;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    .line 102
    const/4 v0, 0x0

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 106
    .line 107
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/master/MasterActivity;->keychainLoginActivityShowing:Z

    .line 108
    .line 109
    if-nez v0, :cond_2

    .line 110
    .line 111
    .line 112
    invoke-direct {p0}, Lcom/narvii/master/MasterActivity;->registerForKeyStatusChange()V

    .line 113
    .line 114
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->masterViewModel:Lcom/narvii/master/viewmodel/MasterViewModel;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 118
    move-result-object v1

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, p1, v1}, Lcom/narvii/master/viewmodel/MasterViewModel;->launchReLogin(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 122
    .line 123
    .line 124
    :cond_2
    invoke-static {}, Lcom/narvii/master/MasterActivity;->isMasterApplication()Z

    .line 125
    move-result v0

    .line 126
    .line 127
    if-eqz v0, :cond_3

    .line 128
    .line 129
    .line 130
    invoke-direct {p0, p1}, Lcom/narvii/master/MasterActivity;->extracted(Landroid/os/Bundle;)V

    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    :cond_3
    invoke-static {}, Lcom/narvii/util/ReferrerTrackUtils;->getInstance()Lcom/narvii/util/ReferrerTrackUtils;

    .line 137
    move-result-object p1

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, p0}, Lcom/narvii/util/ReferrerTrackUtils;->trackReferrer(Lcom/narvii/app/NVContext;)V

    .line 141
    .line 142
    .line 143
    invoke-direct {p0}, Lcom/narvii/master/MasterActivity;->associateMediaLabIdWithAminoUserId()V

    .line 144
    .line 145
    sget-object p1, Lcom/narvii/wallet/BillingManager;->INSTANCE:Lcom/narvii/wallet/BillingManager;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, p0}, Lcom/narvii/wallet/BillingManager;->init(Landroid/content/Context;)V

    .line 149
    .line 150
    .line 151
    invoke-static {}, Lcom/narvii/wallet/CoinBillingManager;->refreshInstance()V

    .line 152
    .line 153
    sget-object p1, Lcom/narvii/wallet/MembershipBillingManager;->INSTANCE:Lcom/narvii/wallet/MembershipBillingManager;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, p0}, Lcom/narvii/wallet/MembershipBillingManager;->initialize(Lcom/narvii/app/NVContext;)V

    .line 157
    .line 158
    .line 159
    invoke-static {p0}, Lcom/narvii/wallet/optinads/OptinAds;->adsInitAllowed(Lcom/narvii/app/NVContext;)Z

    .line 160
    move-result p1

    .line 161
    .line 162
    if-eqz p1, :cond_4

    .line 163
    .line 164
    sget-object p1, Lcom/narvii/ad/MediaLabInterstitials;->INSTANCE:Lcom/narvii/ad/MediaLabInterstitials;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, p0}, Lcom/narvii/ad/MediaLabInterstitials;->initialize(Landroid/app/Activity;)V

    .line 168
    .line 169
    .line 170
    :cond_4
    invoke-direct {p0}, Lcom/narvii/master/MasterActivity;->registerForRequestPushPermission()V

    .line 171
    .line 172
    .line 173
    invoke-direct {p0}, Lcom/narvii/master/MasterActivity;->setupFirstLaunchViewModel()V

    .line 174
    .line 175
    iget-object p1, p0, Lcom/narvii/master/MasterActivity;->firstLaunchViewModel:Lcom/narvii/master/launch/FirstLaunchViewModel;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/narvii/master/launch/FirstLaunchViewModel;->getInstallState()Landroidx/lifecycle/LiveData;

    .line 179
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lcom/narvii/app/ApplicationSessionHelper;->masterFinished(Lcom/narvii/app/NVActivity;)V

    .line 10
    .line 11
    :cond_0
    const-string v0, "eventLogProfile"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/services/EventLogProfileService;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lcom/narvii/services/EventLogProfileService;->removeListener(Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 26
    .line 27
    .line 28
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onDestroy()V

    .line 29
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 4
    .line 5
    const-string v0, "__redirectActivity"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/narvii/master/MasterActivity;->checkRedirectIntent(Landroid/content/Intent;)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0}, Lcom/narvii/master/MasterActivity;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    .line 21
    const/4 p1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 25
    return-void

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    const-string v1, "incubatorTab"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    check-cast v0, Lcom/narvii/master/MasterTabFragment;

    .line 38
    const/4 v1, 0x1

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    const-string v2, "tab"

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v2}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    const-string v2, "my"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v2

    .line 53
    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Lcom/narvii/master/MasterActivity;->getMyCommunityIndex()I

    .line 58
    move-result p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->setTabIndex(I)V

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_1
    const-string v2, "chat"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v2

    .line 69
    .line 70
    if-eqz v2, :cond_2

    .line 71
    const/4 p1, 0x2

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->setTabIndex(I)V

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :cond_2
    const-string v2, "store"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result p1

    .line 82
    .line 83
    if-eqz p1, :cond_3

    .line 84
    .line 85
    const/16 p1, 0x8

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p1, v1}, Lcom/narvii/master/MasterTabFragment;->setTopBarElementsVisibility(IZ)V

    .line 89
    const/4 p1, 0x3

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->setTabIndex(I)V

    .line 93
    .line 94
    .line 95
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->finishActivity(I)V

    .line 96
    return-void
.end method

.method public onProfileChanged(Lcom/narvii/logging/EventLogProfileResponse;Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    .line 3
    .line 4
    iget v1, p1, Lcom/narvii/logging/EventLogProfileResponse;->landingOption:I

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/util/PreferencesHelper;->saveLandingPos(Ljava/lang/Integer;)V

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/master/MasterActivity;->gotoDefaultTab()V

    .line 17
    .line 18
    :cond_0
    iget-boolean v0, p1, Lcom/narvii/logging/EventLogProfileResponse;->showStoreBadge:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/master/MasterActivity;->setStoreBadged()V

    .line 24
    .line 25
    :cond_1
    iput-object p1, p0, Lcom/narvii/master/MasterActivity;->response:Lcom/narvii/logging/EventLogProfileResponse;

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p2}, Lcom/narvii/master/MasterActivity;->tryOpenInterestPicker(Z)V

    .line 29
    return-void
.end method

.method public onRequestFailed(Ljava/lang/String;Z)V
    .locals 0

    iget-boolean p1, p0, Lcom/narvii/master/MasterActivity;->waitingNextInterestPicker:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/narvii/master/MasterActivity;->waitingNextInterestPicker:Z

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onResume()V

    .line 4
    .line 5
    const-string v0, "discover"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeActivity;->setScreenName(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lcom/narvii/util/SplashUtils;->cancelSplash(Landroid/app/Activity;)Z

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    sput v0, Lcom/narvii/drawer/DrawerHost;->curCommunitySelectedOffset:I

    .line 15
    .line 16
    sput v0, Lcom/narvii/drawer/DrawerHost;->curCommunitySelectedPosition:I

    .line 17
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onStart()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->accountService:Lcom/narvii/account/AccountService;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->initAgeAndGender()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/master/MasterActivity;->accountService:Lcom/narvii/account/AccountService;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const-string v1, "authenticated"

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    const-string v1, "unauthenticated"

    .line 26
    .line 27
    :goto_0
    const-string v2, "authentication_status"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method setStoreBadged()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "incubatorTab"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/master/MasterTabFragment;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/master/MasterTabFragment;->setStoreBadged()V

    .line 18
    :cond_0
    return-void
.end method

.method public shouldShowDialog()V
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/birthday/EnterBirthdayFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "param_birthday_type"

    .line 9
    .line 10
    sget-object v2, Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;->GLOBAL_PROFILE:Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Lcom/narvii/master/MasterActivity;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    .line 17
    return-void
.end method

.method updateBlockingProgressDialog()V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/master/MasterActivity;->blockingProgressKeychain:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->blockingProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/master/MasterActivity;->blockingProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 16
    .line 17
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 18
    .line 19
    const/high16 v2, -0x1000000

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->blockingProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 28
    .line 29
    new-instance v1, Lcom/narvii/master/k;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/narvii/master/k;-><init>(Lcom/narvii/master/MasterActivity;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->blockingProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/MasterActivity;->blockingProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 49
    const/4 v0, 0x0

    .line 50
    .line 51
    iput-object v0, p0, Lcom/narvii/master/MasterActivity;->blockingProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 52
    :cond_2
    :goto_0
    return-void
.end method
