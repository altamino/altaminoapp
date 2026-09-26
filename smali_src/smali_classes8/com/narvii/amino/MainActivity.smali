.class public Lcom/narvii/amino/MainActivity;
.super Lcom/narvii/app/DrawerActivity;
.source "SourceFile"


# static fields
.field public static final CMD_HOME:I = 0x10001

.field public static final CMD_LOGOUT:I = 0x10009

.field public static final CMD_OPEN_DRAWER:I = 0x20001

.field public static final CMD_RESET:I = 0x100020

.field static LAST_PEEK:J

.field private static pendingCmd:I

.field private static pendingCmdTimeEnd:J

.field private static pendingCmdTimeStart:J


# instance fields
.field private account:Lcom/narvii/account/AccountService;

.field blockInput:Z

.field drawerHost:Lcom/narvii/drawer/DrawerHost;

.field keychainLoginActivityShown:Z

.field keychainLoginProgress:Lcom/narvii/util/dialog/ProgressDialog;

.field private final keychainLoginReceiver:Landroid/content/BroadcastReceiver;

.field private mainDlg:Lcom/narvii/amino/MainDialogFragment;

.field private navBar:Lcom/narvii/amino/CommunityNavBarFragment;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field resumed:Z

.field sessionId:I

.field private final startRelogin:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/amino/MainActivity$3;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/amino/MainActivity$3;-><init>(Lcom/narvii/amino/MainActivity;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/amino/MainActivity;->startRelogin:Ljava/lang/Runnable;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/amino/MainActivity$4;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/amino/MainActivity$4;-><init>(Lcom/narvii/amino/MainActivity;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/amino/MainActivity;->keychainLoginReceiver:Landroid/content/BroadcastReceiver;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/amino/MainActivity$5;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/narvii/amino/MainActivity$5;-><init>(Lcom/narvii/amino/MainActivity;)V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/amino/MainActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 25
    return-void
.end method

.method public static backToHome(Lcom/narvii/app/NVContext;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Landroid/app/Activity;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroid/app/Activity;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    .line 18
    move-result v0

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->getTaskId()I

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eq v0, v1, :cond_0

    .line 25
    return-object p1

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->hasMainStacked()Z

    .line 29
    move-result v0

    .line 30
    .line 31
    const/high16 v1, 0x4000000

    .line 32
    .line 33
    const-string v2, "config"

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-interface {p0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 45
    move-result v0

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->getMainCommunityId()I

    .line 49
    move-result v3

    .line 50
    .line 51
    if-ne v0, v3, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 55
    return-object p1

    .line 56
    .line 57
    :cond_1
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 58
    .line 59
    const/16 v3, 0x64

    .line 60
    .line 61
    if-ne v0, v3, :cond_2

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->hasMasterStacked()Z

    .line 65
    move-result v0

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    new-instance v0, Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 73
    move-result-object v3

    .line 74
    .line 75
    const-class v4, Lcom/narvii/master/MasterActivity;

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    invoke-interface {p0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    move-result-object p0

    .line 86
    .line 87
    check-cast p0, Lcom/narvii/config/ConfigService;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 91
    move-result p0

    .line 92
    .line 93
    const-string v1, "__communityId"

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    .line 98
    const-string p0, "__redirectActivity"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 102
    return-object v0

    .line 103
    .line 104
    .line 105
    :cond_2
    const p0, 0x10008000

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 109
    return-object p1
.end method

.method private synthetic lambda$processPendingCmd$0(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->closeDrawers()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    move-result p1

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    const v0, 0x7f120048

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 29
    :cond_0
    return-void
.end method

.method private popPendingCmd()I
    .locals 6

    .line 1
    .line 2
    sget v0, Lcom/narvii/amino/MainActivity;->pendingCmd:I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v2

    .line 11
    .line 12
    sget-wide v4, Lcom/narvii/amino/MainActivity;->pendingCmdTimeStart:J

    .line 13
    .line 14
    cmp-long v0, v2, v4

    .line 15
    .line 16
    if-ltz v0, :cond_1

    .line 17
    .line 18
    sget-wide v4, Lcom/narvii/amino/MainActivity;->pendingCmdTimeEnd:J

    .line 19
    .line 20
    cmp-long v0, v2, v4

    .line 21
    .line 22
    if-gez v0, :cond_1

    .line 23
    .line 24
    sget v0, Lcom/narvii/amino/MainActivity;->pendingCmd:I

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v0, v1

    .line 27
    .line 28
    :goto_0
    sput v1, Lcom/narvii/amino/MainActivity;->pendingCmd:I

    .line 29
    .line 30
    const-wide/16 v1, 0x0

    .line 31
    .line 32
    sput-wide v1, Lcom/narvii/amino/MainActivity;->pendingCmdTimeStart:J

    .line 33
    .line 34
    sput-wide v1, Lcom/narvii/amino/MainActivity;->pendingCmdTimeEnd:J

    .line 35
    return v0
.end method

.method private processPendingCmd(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    sparse-switch p1, :sswitch_data_0

    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    .line 8
    .line 9
    :sswitch_0
    invoke-virtual {p0}, Lcom/narvii/amino/MainActivity;->resetHomeFragment()V

    .line 10
    return v0

    .line 11
    .line 12
    .line 13
    :sswitch_1
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->openDrawer()V

    .line 14
    return v0

    .line 15
    .line 16
    :sswitch_2
    new-instance p1, Lcom/narvii/account/LogoutHelper;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/narvii/account/LogoutHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 20
    .line 21
    new-instance v1, Lcom/narvii/amino/h;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/narvii/amino/h;-><init>(Lcom/narvii/amino/MainActivity;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1}, Lcom/narvii/account/LogoutHelper;->logout(Lcom/narvii/util/Callback;)V

    .line 28
    return v0

    .line 29
    .line 30
    .line 31
    :sswitch_3
    invoke-virtual {p0}, Lcom/narvii/amino/MainActivity;->restoreHomeTab()V

    .line 32
    return v0

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    :sswitch_data_0
    .sparse-switch
        0x10001 -> :sswitch_3
        0x10009 -> :sswitch_2
        0x20001 -> :sswitch_1
        0x100020 -> :sswitch_0
    .end sparse-switch
.end method

.method public static safedk_NVActivity_startActivityFromFragment_58c141dea7abf85bfc218080816ec363(Lcom/narvii/app/NVActivity;Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVActivity;
    .param p1, "p1"    # Landroidx/fragment/app/Fragment;
    .param p2, "p2"    # Landroid/content/Intent;
    .param p3, "p3"    # I
    .param p4, "p4"    # Landroid/os/Bundle;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/app/NVActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

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

.method public static setPendingCommand(I)V
    .locals 2

    const-wide/16 v0, 0x320

    .line 1
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/MainActivity;->setPendingCommand(IJ)V

    return-void
.end method

.method public static setPendingCommand(IJ)V
    .locals 2

    sput p0, Lcom/narvii/amino/MainActivity;->pendingCmd:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/narvii/amino/MainActivity;->pendingCmdTimeStart:J

    add-long/2addr v0, p1

    sput-wide v0, Lcom/narvii/amino/MainActivity;->pendingCmdTimeEnd:J

    return-void
.end method

.method public static synthetic w(Lcom/narvii/amino/MainActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/amino/MainActivity;->lambda$processPendingCmd$0(Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public canScrollUp()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "home"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->canScrollUp()Z

    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/amino/MainActivity;->blockInput:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public getActionBarOverlaySize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCrashlyticsFootprint()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->getCrashlyticsFootprint()Ljava/lang/String;

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
    const-string v2, "home"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v0, " -- "

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    :cond_0
    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method public getMainFragment()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "home"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getStatusBarOverlaySize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasCBB()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasDrawer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasVisitorBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOnBoardingCheckDone()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "dialog"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/amino/MainDialogFragment;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/amino/MainDialogFragment;->isOnBoardingCheckDone()Z

    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public isPagebackgroundEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    sget v0, Lcom/narvii/amino/MainActivity;->pendingCmd:I

    .line 6
    .line 7
    .line 8
    const v1, 0x20001

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/amino/MainActivity;->popPendingCmd()I

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 17
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/app/NVActivity;->isBackTooFast()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-super {p0}, Lcom/narvii/app/DrawerActivity;->onBackPressed()V

    .line 10
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    .line 7
    invoke-super/range {p0 .. p1}, Lcom/narvii/app/DrawerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 8
    .line 9
    sget-object v2, Lcom/narvii/app/ComScoreSectionDispatcher;->INSTANCE:Lcom/narvii/app/ComScoreSectionDispatcher;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/narvii/app/ComScoreSectionDispatcher;->sectionChangeToCommunity()V

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lcom/narvii/app/theme/NVThemeActivity;->setShouldInflateAd(Z)V

    .line 17
    .line 18
    .line 19
    const v3, 0x7f0d0035

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v3}, Lcom/narvii/app/DrawerActivity;->setContentView(I)V

    .line 23
    .line 24
    const-string v3, "config"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v3}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    check-cast v3, Lcom/narvii/config/ConfigService;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 34
    move-result v4

    .line 35
    .line 36
    if-nez v4, :cond_0

    .line 37
    .line 38
    const-string v1, "MainActivity start without community"

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVActivity;->finish()V

    .line 45
    return-void

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/narvii/app/ApplicationSessionHelper;->mainOpened(Lcom/narvii/app/NVActivity;)V

    .line 49
    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->getSessionId()I

    .line 54
    move-result v4

    .line 55
    .line 56
    iput v4, v0, Lcom/narvii/amino/MainActivity;->sessionId:I

    .line 57
    goto :goto_0

    .line 58
    .line 59
    .line 60
    :cond_1
    const-string/jumbo v4, "sessionId"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 64
    move-result v4

    .line 65
    .line 66
    iput v4, v0, Lcom/narvii/amino/MainActivity;->sessionId:I

    .line 67
    .line 68
    :goto_0
    const-string v4, "drawerHost"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v4}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    move-result-object v4

    .line 73
    .line 74
    check-cast v4, Lcom/narvii/drawer/DrawerHost;

    .line 75
    .line 76
    iput-object v4, v0, Lcom/narvii/amino/MainActivity;->drawerHost:Lcom/narvii/drawer/DrawerHost;

    .line 77
    .line 78
    iget-object v4, v0, Lcom/narvii/amino/MainActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 79
    .line 80
    new-instance v5, Landroid/content/IntentFilter;

    .line 81
    .line 82
    const-string v6, "com.narvii.action.ACCOUNT_CHANGED"

    .line 83
    .line 84
    .line 85
    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v4, v5}, Lcom/narvii/app/NVActivity;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 89
    .line 90
    const-string v4, "account"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v4}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    move-result-object v4

    .line 95
    .line 96
    check-cast v4, Lcom/narvii/account/AccountService;

    .line 97
    .line 98
    iput-object v4, v0, Lcom/narvii/amino/MainActivity;->account:Lcom/narvii/account/AccountService;

    .line 99
    .line 100
    const-string v4, "communityNavBar"

    .line 101
    .line 102
    const-string v5, "dialog"

    .line 103
    const/4 v6, 0x0

    .line 104
    const/4 v7, 0x0

    .line 105
    .line 106
    if-nez v1, :cond_2

    .line 107
    .line 108
    sget-object v8, Lcom/narvii/ad/MediaLabInterstitials;->INSTANCE:Lcom/narvii/ad/MediaLabInterstitials;

    .line 109
    .line 110
    .line 111
    const-string/jumbo v9, "open_community"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v8, v9, v7}, Lcom/narvii/ad/MediaLabInterstitials;->showAdWithDelayedAction(Ljava/lang/String;Le8/a;)Z

    .line 115
    .line 116
    .line 117
    invoke-static {v0, v9, v7}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/amino/MainActivity;->resetHomeFragment()V

    .line 121
    .line 122
    new-instance v8, Lcom/narvii/amino/MainDialogFragment;

    .line 123
    .line 124
    .line 125
    invoke-direct {v8}, Lcom/narvii/amino/MainDialogFragment;-><init>()V

    .line 126
    .line 127
    iput-object v8, v0, Lcom/narvii/amino/MainActivity;->mainDlg:Lcom/narvii/amino/MainDialogFragment;

    .line 128
    .line 129
    new-instance v8, Landroid/os/Bundle;

    .line 130
    .line 131
    .line 132
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 133
    .line 134
    const/16 v9, 0x9fe

    .line 135
    .line 136
    const-string v10, "flag"

    .line 137
    .line 138
    .line 139
    invoke-virtual {v8, v10, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 140
    .line 141
    iget-object v9, v0, Lcom/narvii/amino/MainActivity;->mainDlg:Lcom/narvii/amino/MainDialogFragment;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v9, v8}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 148
    move-result-object v8

    .line 149
    .line 150
    .line 151
    invoke-virtual {v8}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 152
    move-result-object v8

    .line 153
    .line 154
    iget-object v9, v0, Lcom/narvii/amino/MainActivity;->mainDlg:Lcom/narvii/amino/MainDialogFragment;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v8, v9, v5}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 158
    move-result-object v5

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 162
    .line 163
    new-instance v5, Lcom/narvii/amino/CommunityNavBarFragment;

    .line 164
    .line 165
    .line 166
    invoke-direct {v5}, Lcom/narvii/amino/CommunityNavBarFragment;-><init>()V

    .line 167
    .line 168
    iput-object v5, v0, Lcom/narvii/amino/MainActivity;->navBar:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 169
    .line 170
    new-instance v5, Landroid/os/Bundle;

    .line 171
    .line 172
    .line 173
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 174
    .line 175
    const-string v8, "hideBackButton"

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5, v8, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 179
    .line 180
    iget-object v8, v0, Lcom/narvii/amino/MainActivity;->navBar:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v8, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 187
    move-result-object v5

    .line 188
    .line 189
    .line 190
    invoke-virtual {v5}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 191
    move-result-object v5

    .line 192
    .line 193
    .line 194
    const v8, 0x1020002

    .line 195
    .line 196
    iget-object v9, v0, Lcom/narvii/amino/MainActivity;->navBar:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5, v8, v9, v4}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 200
    move-result-object v4

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 204
    goto :goto_1

    .line 205
    .line 206
    .line 207
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 208
    move-result-object v8

    .line 209
    .line 210
    .line 211
    invoke-virtual {v8, v5}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 212
    move-result-object v5

    .line 213
    .line 214
    check-cast v5, Lcom/narvii/amino/MainDialogFragment;

    .line 215
    .line 216
    iput-object v5, v0, Lcom/narvii/amino/MainActivity;->mainDlg:Lcom/narvii/amino/MainDialogFragment;

    .line 217
    .line 218
    .line 219
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 220
    move-result-object v5

    .line 221
    .line 222
    .line 223
    invoke-virtual {v5, v4}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 224
    move-result-object v4

    .line 225
    .line 226
    check-cast v4, Lcom/narvii/amino/CommunityNavBarFragment;

    .line 227
    .line 228
    iput-object v4, v0, Lcom/narvii/amino/MainActivity;->navBar:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 229
    .line 230
    .line 231
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVActivity;->isVisitorNotJoined()Z

    .line 232
    move-result v4

    .line 233
    .line 234
    if-eqz v4, :cond_3

    .line 235
    .line 236
    iget-object v4, v0, Lcom/narvii/amino/MainActivity;->mainDlg:Lcom/narvii/amino/MainDialogFragment;

    .line 237
    .line 238
    if-eqz v4, :cond_3

    .line 239
    .line 240
    .line 241
    invoke-virtual {v4, v2}, Lcom/narvii/amino/MainDialogFragment;->setDisabled(Z)V

    .line 242
    .line 243
    :cond_3
    const-string v4, "community"

    .line 244
    .line 245
    if-nez v1, :cond_5

    .line 246
    .line 247
    iget-object v5, v0, Lcom/narvii/amino/MainActivity;->account:Lcom/narvii/account/AccountService;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v5}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 251
    move-result v5

    .line 252
    .line 253
    if-nez v5, :cond_5

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v4}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 257
    move-result-object v5

    .line 258
    .line 259
    check-cast v5, Lcom/narvii/community/CommunityService;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 263
    move-result v8

    .line 264
    .line 265
    .line 266
    invoke-virtual {v5, v8}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 267
    move-result-object v5

    .line 268
    .line 269
    if-eqz v5, :cond_4

    .line 270
    .line 271
    iget v5, v5, Lcom/narvii/model/Community;->joinType:I

    .line 272
    const/4 v8, 0x2

    .line 273
    .line 274
    if-eq v5, v8, :cond_4

    .line 275
    .line 276
    if-eq v5, v2, :cond_4

    .line 277
    .line 278
    new-instance v5, Landroid/content/Intent;

    .line 279
    .line 280
    const-class v8, Lcom/narvii/account/LoginActivity;

    .line 281
    .line 282
    .line 283
    invoke-direct {v5, v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 284
    .line 285
    .line 286
    const-string/jumbo v8, "signup"

    .line 287
    .line 288
    .line 289
    invoke-virtual {v5, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 290
    .line 291
    .line 292
    const-string/jumbo v8, "skipBtn"

    .line 293
    .line 294
    .line 295
    invoke-virtual {v5, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 296
    .line 297
    const-string v8, "Source"

    .line 298
    .line 299
    const-string v9, "Zero State"

    .line 300
    .line 301
    .line 302
    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    .line 304
    sget-object v8, Lcom/narvii/account/LoginActivity$PromptType;->Launch:Lcom/narvii/account/LoginActivity$PromptType;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 308
    move-result-object v8

    .line 309
    .line 310
    .line 311
    const-string/jumbo v9, "promptType"

    .line 312
    .line 313
    .line 314
    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    .line 316
    .line 317
    invoke-static {v0, v5}, Lcom/narvii/amino/MainActivity;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    .line 318
    .line 319
    :cond_4
    iput-boolean v2, v0, Lcom/narvii/amino/MainActivity;->keychainLoginActivityShown:Z

    .line 320
    .line 321
    :cond_5
    iget-boolean v5, v0, Lcom/narvii/amino/MainActivity;->keychainLoginActivityShown:Z

    .line 322
    .line 323
    const-wide/16 v8, 0x190

    .line 324
    .line 325
    if-nez v5, :cond_6

    .line 326
    .line 327
    iget-object v5, v0, Lcom/narvii/amino/MainActivity;->keychainLoginReceiver:Landroid/content/BroadcastReceiver;

    .line 328
    .line 329
    new-instance v10, Landroid/content/IntentFilter;

    .line 330
    .line 331
    const-string v11, "com.narvii.action.KEYCHAIN_STATUS_CHANGED"

    .line 332
    .line 333
    .line 334
    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0, v5, v10}, Lcom/narvii/app/NVActivity;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 338
    .line 339
    iget-object v5, v0, Lcom/narvii/amino/MainActivity;->account:Lcom/narvii/account/AccountService;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v5}, Lcom/narvii/account/AccountService;->crossAppsCheckInBackground()V

    .line 343
    .line 344
    iget-object v5, v0, Lcom/narvii/amino/MainActivity;->keychainLoginReceiver:Landroid/content/BroadcastReceiver;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v5, v0, v7}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 348
    .line 349
    if-nez v1, :cond_6

    .line 350
    .line 351
    .line 352
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 353
    move-result-object v5

    .line 354
    .line 355
    if-eqz v5, :cond_6

    .line 356
    .line 357
    .line 358
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 359
    move-result-object v5

    .line 360
    .line 361
    .line 362
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 363
    move-result-object v5

    .line 364
    .line 365
    if-eqz v5, :cond_6

    .line 366
    .line 367
    .line 368
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 369
    move-result-object v5

    .line 370
    .line 371
    .line 372
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 373
    move-result-object v5

    .line 374
    .line 375
    .line 376
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 377
    move-result-object v5

    .line 378
    .line 379
    .line 380
    const-string/jumbo v10, "relogin"

    .line 381
    .line 382
    .line 383
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 384
    move-result v5

    .line 385
    .line 386
    if-eqz v5, :cond_6

    .line 387
    .line 388
    iget-object v5, v0, Lcom/narvii/amino/MainActivity;->startRelogin:Ljava/lang/Runnable;

    .line 389
    .line 390
    .line 391
    invoke-static {v5, v8, v9}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 392
    .line 393
    :cond_6
    if-nez v1, :cond_d

    .line 394
    .line 395
    iget-boolean v5, v0, Lcom/narvii/amino/MainActivity;->keychainLoginActivityShown:Z

    .line 396
    .line 397
    if-nez v5, :cond_d

    .line 398
    .line 399
    .line 400
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 401
    move-result-object v5

    .line 402
    .line 403
    .line 404
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 405
    move-result-object v5

    .line 406
    .line 407
    const-string v10, "android.intent.action.MAIN"

    .line 408
    .line 409
    .line 410
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 411
    move-result v5

    .line 412
    .line 413
    if-eqz v5, :cond_d

    .line 414
    .line 415
    .line 416
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 417
    move-result-object v5

    .line 418
    .line 419
    .line 420
    const-string/jumbo v10, "noSplash"

    .line 421
    .line 422
    .line 423
    invoke-virtual {v5, v10, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 424
    move-result v5

    .line 425
    .line 426
    if-nez v5, :cond_d

    .line 427
    .line 428
    .line 429
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 430
    move-result-wide v8

    .line 431
    .line 432
    .line 433
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 434
    move-result-wide v10

    .line 435
    .line 436
    const-wide/16 v12, 0x320

    .line 437
    .line 438
    const-wide/16 v14, 0x9c4

    .line 439
    .line 440
    sub-long v10, v14, v10

    .line 441
    .line 442
    .line 443
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 444
    move-result-wide v10

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0, v4}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 448
    move-result-object v4

    .line 449
    .line 450
    check-cast v4, Lcom/narvii/community/CommunityService;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 454
    move-result v3

    .line 455
    .line 456
    .line 457
    invoke-virtual {v4, v3}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 458
    move-result-object v3

    .line 459
    .line 460
    if-eqz v3, :cond_c

    .line 461
    .line 462
    iget-object v4, v3, Lcom/narvii/model/Community;->promotionalMediaList:Ljava/util/List;

    .line 463
    .line 464
    if-eqz v4, :cond_c

    .line 465
    .line 466
    .line 467
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 468
    move-result v4

    .line 469
    .line 470
    if-lez v4, :cond_c

    .line 471
    .line 472
    new-instance v4, Landroid/graphics/Rect;

    .line 473
    .line 474
    .line 475
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 476
    .line 477
    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/DrawerActivity;->getDrawerLayout()Lcom/narvii/drawer/MyDrawerLayout;

    .line 479
    move-result-object v5

    .line 480
    .line 481
    .line 482
    invoke-virtual {v5, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 483
    .line 484
    const-string v12, "imageLoader"

    .line 485
    .line 486
    .line 487
    invoke-virtual {v0, v12}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 488
    move-result-object v12

    .line 489
    .line 490
    check-cast v12, Lcom/narvii/util/image/NVImageLoader;

    .line 491
    .line 492
    iget-object v3, v3, Lcom/narvii/model/Community;->promotionalMediaList:Ljava/util/List;

    .line 493
    .line 494
    .line 495
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 496
    move-result-object v3

    .line 497
    .line 498
    check-cast v3, Lcom/narvii/model/Media;

    .line 499
    .line 500
    iget-object v3, v3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    invoke-virtual {v12, v3}, Lcom/narvii/util/image/NVImageLoader;->isLocal(Ljava/lang/String;)Z

    .line 504
    move-result v3

    .line 505
    .line 506
    const-string v13, "gifLoader"

    .line 507
    .line 508
    if-nez v3, :cond_9

    .line 509
    .line 510
    .line 511
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 512
    move-result-object v3

    .line 513
    .line 514
    const-string v7, "filesDir"

    .line 515
    .line 516
    .line 517
    invoke-virtual {v3, v7}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 518
    move-result-object v3

    .line 519
    .line 520
    check-cast v3, Ljava/io/File;

    .line 521
    .line 522
    new-instance v7, Ljava/io/File;

    .line 523
    .line 524
    const-string v14, "community-launch-image.gif"

    .line 525
    .line 526
    .line 527
    invoke-direct {v7, v3, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v7}, Ljava/io/File;->length()J

    .line 531
    move-result-wide v14

    .line 532
    .line 533
    const-wide/16 v16, 0x0

    .line 534
    .line 535
    cmp-long v14, v14, v16

    .line 536
    .line 537
    if-lez v14, :cond_7

    .line 538
    .line 539
    .line 540
    invoke-virtual {v0, v13}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 541
    move-result-object v3

    .line 542
    .line 543
    check-cast v3, Lcom/narvii/util/drawables/gif/GifLoader;

    .line 544
    .line 545
    .line 546
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 547
    move-result-object v7

    .line 548
    .line 549
    .line 550
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 551
    move-result-object v7

    .line 552
    .line 553
    .line 554
    invoke-virtual {v3, v7}, Lcom/narvii/util/drawables/gif/GifLoader;->getLocalGifDrawable(Ljava/lang/String;)Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 555
    move-result-object v7

    .line 556
    goto :goto_3

    .line 557
    .line 558
    :cond_7
    new-instance v7, Ljava/io/File;

    .line 559
    .line 560
    const-string v14, "community-launch-image.jpg"

    .line 561
    .line 562
    .line 563
    invoke-direct {v7, v3, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 567
    move-result-object v3

    .line 568
    .line 569
    .line 570
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 571
    move-result-object v3

    .line 572
    .line 573
    .line 574
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 575
    move-result v7

    .line 576
    .line 577
    .line 578
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 579
    move-result v14

    .line 580
    .line 581
    .line 582
    invoke-virtual {v12, v3, v7, v14, v2}, Lcom/narvii/util/image/NVImageLoader;->getLocal(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    .line 583
    move-result-object v3

    .line 584
    .line 585
    if-nez v3, :cond_8

    .line 586
    goto :goto_2

    .line 587
    .line 588
    :cond_8
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    .line 589
    .line 590
    .line 591
    invoke-direct {v7, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 592
    goto :goto_3

    .line 593
    :cond_9
    :goto_2
    const/4 v7, 0x0

    .line 594
    .line 595
    :goto_3
    if-nez v7, :cond_b

    .line 596
    .line 597
    .line 598
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 599
    move-result v3

    .line 600
    .line 601
    .line 602
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 603
    move-result v4

    .line 604
    .line 605
    const-string v7, "assets://launch-image.jpg"

    .line 606
    .line 607
    .line 608
    invoke-virtual {v12, v7, v3, v4, v2}, Lcom/narvii/util/image/NVImageLoader;->getLocal(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    .line 609
    move-result-object v3

    .line 610
    .line 611
    if-nez v3, :cond_a

    .line 612
    .line 613
    .line 614
    invoke-virtual {v0, v13}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 615
    move-result-object v3

    .line 616
    .line 617
    check-cast v3, Lcom/narvii/util/drawables/gif/GifLoader;

    .line 618
    .line 619
    const-string v4, "assets://launch-image.gif"

    .line 620
    .line 621
    .line 622
    invoke-virtual {v3, v4}, Lcom/narvii/util/drawables/gif/GifLoader;->getLocalGifDrawable(Ljava/lang/String;)Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 623
    move-result-object v7

    .line 624
    goto :goto_4

    .line 625
    .line 626
    :cond_a
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    .line 627
    .line 628
    .line 629
    invoke-direct {v7, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 630
    .line 631
    :cond_b
    :goto_4
    if-eqz v7, :cond_c

    .line 632
    .line 633
    .line 634
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 635
    move-result-object v3

    .line 636
    .line 637
    .line 638
    const v4, 0x7f0d051f

    .line 639
    .line 640
    .line 641
    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 642
    move-result-object v3

    .line 643
    .line 644
    check-cast v3, Landroid/widget/ImageView;

    .line 645
    .line 646
    .line 647
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 651
    .line 652
    iput-boolean v2, v0, Lcom/narvii/amino/MainActivity;->blockInput:Z

    .line 653
    .line 654
    .line 655
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 656
    move-result-object v2

    .line 657
    .line 658
    .line 659
    const v4, 0x3f849ba6    # 1.036f

    .line 660
    .line 661
    .line 662
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 663
    move-result-object v2

    .line 664
    .line 665
    .line 666
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 667
    move-result-object v2

    .line 668
    .line 669
    const-wide/16 v6, 0x9c4

    .line 670
    .line 671
    .line 672
    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 673
    move-result-object v2

    .line 674
    .line 675
    .line 676
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 680
    move-result-object v2

    .line 681
    .line 682
    .line 683
    invoke-virtual {v2, v10, v11}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 684
    move-result-object v2

    .line 685
    .line 686
    const-wide/16 v6, 0x3e8

    .line 687
    .line 688
    .line 689
    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 690
    move-result-object v2

    .line 691
    const/4 v4, 0x0

    .line 692
    .line 693
    .line 694
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 695
    move-result-object v2

    .line 696
    .line 697
    new-instance v4, Lcom/narvii/amino/MainActivity$1;

    .line 698
    .line 699
    .line 700
    invoke-direct {v4, v0, v5, v3}, Lcom/narvii/amino/MainActivity$1;-><init>(Lcom/narvii/amino/MainActivity;Landroid/view/ViewGroup;Landroid/widget/ImageView;)V

    .line 701
    .line 702
    .line 703
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 704
    move-result-object v2

    .line 705
    .line 706
    .line 707
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 708
    .line 709
    new-instance v2, Lcom/narvii/amino/MainActivity$2;

    .line 710
    .line 711
    .line 712
    invoke-direct {v2, v0}, Lcom/narvii/amino/MainActivity$2;-><init>(Lcom/narvii/amino/MainActivity;)V

    .line 713
    .line 714
    .line 715
    invoke-static {v2, v10, v11}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 716
    .line 717
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 721
    .line 722
    const-string v3, "launch image shown in "

    .line 723
    .line 724
    .line 725
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 729
    move-result-wide v3

    .line 730
    sub-long/2addr v3, v8

    .line 731
    .line 732
    .line 733
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    const-string v3, "ms"

    .line 736
    .line 737
    .line 738
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 742
    move-result-object v2

    .line 743
    .line 744
    .line 745
    invoke-static {v2}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 746
    .line 747
    const-wide/16 v2, 0x236

    .line 748
    .line 749
    add-long v8, v10, v2

    .line 750
    .line 751
    :cond_d
    if-nez v1, :cond_f

    .line 752
    .line 753
    .line 754
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 755
    move-result-wide v1

    .line 756
    .line 757
    sget-wide v3, Lcom/narvii/amino/MainActivity;->LAST_PEEK:J

    .line 758
    .line 759
    sget-boolean v5, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 760
    .line 761
    if-eqz v5, :cond_e

    .line 762
    .line 763
    .line 764
    const v5, 0xea60

    .line 765
    goto :goto_5

    .line 766
    .line 767
    .line 768
    :cond_e
    const v5, 0x36ee80

    .line 769
    :goto_5
    int-to-long v5, v5

    .line 770
    add-long/2addr v3, v5

    .line 771
    .line 772
    cmp-long v1, v1, v3

    .line 773
    .line 774
    if-lez v1, :cond_f

    .line 775
    .line 776
    const-wide/16 v1, 0x4b0

    .line 777
    .line 778
    .line 779
    invoke-virtual {v0, v8, v9, v1, v2}, Lcom/narvii/app/DrawerActivity;->peekDrawer(JJ)V

    .line 780
    .line 781
    .line 782
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 783
    move-result-wide v1

    .line 784
    .line 785
    sput-wide v1, Lcom/narvii/amino/MainActivity;->LAST_PEEK:J

    .line 786
    :cond_f
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/MainActivity;->drawerHost:Lcom/narvii/drawer/DrawerHost;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/amino/MainActivity;->keychainLoginReceiver:Landroid/content/BroadcastReceiver;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/amino/MainActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/amino/MainActivity;->drawerHost:Lcom/narvii/drawer/DrawerHost;

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Lcom/narvii/app/ApplicationSessionHelper;->mainFinished(Lcom/narvii/app/NVActivity;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-super {p0}, Lcom/narvii/app/DrawerActivity;->onDestroy()V

    .line 30
    return-void
.end method

.method public onDrawerEvent(ILjava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/amino/MainActivity;->processPendingCmd(I)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/app/DrawerActivity;->onDrawerEvent(ILjava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method protected onJoinCommunitySuccessInVisitorMode()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onJoinCommunitySuccessInVisitorMode()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/amino/MainActivity;->mainDlg:Lcom/narvii/amino/MainDialogFragment;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/amino/MainDialogFragment;->setDisabled(Z)V

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/MainActivity;->navBar:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 19
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/amino/MainActivity;->resumed:Z

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/narvii/app/DrawerActivity;->onPause()V

    .line 7
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/DrawerActivity;->onResume()V

    .line 4
    .line 5
    iget v0, p0, Lcom/narvii/amino/MainActivity;->sessionId:I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->getSessionId()I

    .line 9
    move-result v1

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/amino/MainActivity;->resetHomeFragment()V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->getSessionId()I

    .line 18
    move-result v0

    .line 19
    .line 20
    iput v0, p0, Lcom/narvii/amino/MainActivity;->sessionId:I

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-direct {p0}, Lcom/narvii/amino/MainActivity;->popPendingCmd()I

    .line 25
    move-result v0

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v0}, Lcom/narvii/amino/MainActivity;->processPendingCmd(I)Z

    .line 29
    :goto_0
    const/4 v0, 0x1

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/narvii/amino/MainActivity;->resumed:Z

    .line 32
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "sessionId"

    .line 7
    .line 8
    iget v1, p0, Lcom/narvii/amino/MainActivity;->sessionId:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 12
    return-void
.end method

.method public resetHomeFragment()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "communityNavBar"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/amino/CommunityNavBarFragment;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    const v2, 0x7f0a0084

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    check-cast v2, Landroid/widget/TextView;

    .line 53
    .line 54
    .line 55
    const v3, 0x7f0a0553

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    check-cast v0, Landroid/widget/TextView;

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    move-object v0, v1

    .line 64
    move-object v2, v0

    .line 65
    .line 66
    :goto_0
    if-eqz v2, :cond_2

    .line 67
    .line 68
    const/16 v3, 0x8

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    :cond_2
    const-string v2, "config"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    move-result-object v2

    .line 78
    .line 79
    check-cast v2, Lcom/narvii/config/ConfigService;

    .line 80
    .line 81
    const-string v3, "community"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    move-result-object v3

    .line 86
    .line 87
    check-cast v3, Lcom/narvii/community/CommunityService;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 91
    move-result v2

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 95
    move-result-object v2

    .line 96
    .line 97
    if-eqz v2, :cond_3

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    iget-object v1, v2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v0}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    .line 111
    const/4 v1, 0x0

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 118
    move-result-object v0

    .line 119
    .line 120
    const-string v1, "home"

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    new-instance v2, Lcom/narvii/amino/HomeFragment;

    .line 127
    .line 128
    .line 129
    invoke-direct {v2}, Lcom/narvii/amino/HomeFragment;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 133
    move-result-object v3

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 137
    move-result-object v3

    .line 138
    .line 139
    if-eqz v0, :cond_4

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v0}, Landroidx/fragment/app/FragmentTransaction;->t(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 143
    .line 144
    .line 145
    :cond_4
    const v0, 0x7f0a039d

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3, v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 152
    return-void
.end method

.method public restoreHomeTab()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "home"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/amino/HomeFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/amino/HomeFragment;->restoreHomeTab()V

    .line 16
    return-void
.end method

.method protected showThemeColorAsAlternativeBackground()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public smoothScrollToTop()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "home"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->smoothScrollToTop()V

    .line 20
    :cond_0
    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    :goto_0
    if-eqz v0, :cond_2

    .line 9
    .line 10
    instance-of v1, v0, Lcom/narvii/amino/HomeFragment;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    if-eqz p2, :cond_2

    .line 15
    .line 16
    const-string v0, "Source"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    const-string v2, ";Home Page"

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    :goto_1
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    goto :goto_2

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 48
    move-result-object v0

    .line 49
    goto :goto_0

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/amino/MainActivity;->safedk_NVActivity_startActivityFromFragment_58c141dea7abf85bfc218080816ec363(Lcom/narvii/app/NVActivity;Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 53
    return-void
.end method

.method public updateOverlayListPlaceholder(Lcom/narvii/list/overlay/OverlayListPlaceholder;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/overlay/OverlayListPlaceholder;->adjustHeight(II)V

    .line 12
    return-void
.end method
