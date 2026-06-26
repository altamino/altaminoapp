.class public Lcom/narvii/amino/MainActivity;
.super Lcom/narvii/app/DrawerActivity;
.source "MainActivity.java"


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

    .line 55
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;-><init>()V

    .line 506
    new-instance v0, Lcom/narvii/amino/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/narvii/amino/MainActivity$3;-><init>(Lcom/narvii/amino/MainActivity;)V

    iput-object v0, p0, Lcom/narvii/amino/MainActivity;->startRelogin:Ljava/lang/Runnable;

    .line 530
    new-instance v0, Lcom/narvii/amino/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/narvii/amino/MainActivity$4;-><init>(Lcom/narvii/amino/MainActivity;)V

    iput-object v0, p0, Lcom/narvii/amino/MainActivity;->keychainLoginReceiver:Landroid/content/BroadcastReceiver;

    .line 568
    new-instance v0, Lcom/narvii/amino/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/narvii/amino/MainActivity$5;-><init>(Lcom/narvii/amino/MainActivity;)V

    iput-object v0, p0, Lcom/narvii/amino/MainActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static backToHome(Lcom/narvii/app/NVContext;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5

    .line 70
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->getTaskId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-object p1

    .line 73
    :cond_0
    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->hasMainStacked()Z

    move-result v0

    const/high16 v1, 0x4000000

    const-string v2, "config"

    if-eqz v0, :cond_1

    .line 74
    invoke-interface {p0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 75
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    .line 76
    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->getMainCommunityId()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 77
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object p1

    .line 81
    :cond_1
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v3, 0x64

    if-ne v0, v3, :cond_2

    .line 82
    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->hasMasterStacked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/narvii/master/MasterActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    invoke-interface {p0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/narvii/config/ConfigService;

    .line 86
    invoke-virtual {p0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p0

    const-string v1, "__communityId"

    .line 87
    invoke-virtual {p1, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "__redirectActivity"

    .line 88
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0

    :cond_2
    const p0, 0x10008000

    .line 91
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object p1
.end method

.method private popPendingCmd()I
    .locals 6

    .line 604
    sget v0, Lcom/narvii/amino/MainActivity;->pendingCmd:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 607
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 609
    sget-wide v4, Lcom/narvii/amino/MainActivity;->pendingCmdTimeStart:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    sget-wide v4, Lcom/narvii/amino/MainActivity;->pendingCmdTimeEnd:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 610
    sget v0, Lcom/narvii/amino/MainActivity;->pendingCmd:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 612
    :goto_0
    sput v1, Lcom/narvii/amino/MainActivity;->pendingCmd:I

    const-wide/16 v1, 0x0

    .line 613
    sput-wide v1, Lcom/narvii/amino/MainActivity;->pendingCmdTimeStart:J

    .line 614
    sput-wide v1, Lcom/narvii/amino/MainActivity;->pendingCmdTimeEnd:J

    return v0
.end method

.method private processPendingCmd(I)Z
    .locals 2

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 624
    :sswitch_0
    invoke-virtual {p0}, Lcom/narvii/amino/MainActivity;->resetHomeFragment()V

    return v0

    .line 638
    :sswitch_1
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->openDrawer()V

    return v0

    .line 627
    :sswitch_2
    new-instance p1, Lcom/narvii/account/LogoutHelper;

    invoke-direct {p1, p0}, Lcom/narvii/account/LogoutHelper;-><init>(Lcom/narvii/app/NVContext;)V

    new-instance v1, Lcom/narvii/amino/MainActivity$6;

    invoke-direct {v1, p0}, Lcom/narvii/amino/MainActivity$6;-><init>(Lcom/narvii/amino/MainActivity;)V

    invoke-virtual {p1, v1}, Lcom/narvii/account/LogoutHelper;->logout(Lcom/narvii/util/Callback;)V

    return v0

    .line 621
    :sswitch_3
    invoke-virtual {p0}, Lcom/narvii/amino/MainActivity;->restoreHomeTab()V

    return v0

    :sswitch_data_0
    .sparse-switch
        0x10001 -> :sswitch_3
        0x10009 -> :sswitch_2
        0x20001 -> :sswitch_1
        0x100020 -> :sswitch_0
    .end sparse-switch
.end method

.method public static setPendingCommand(I)V
    .locals 2

    const-wide/16 v0, 0x320

    .line 594
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/MainActivity;->setPendingCommand(IJ)V

    return-void
.end method

.method public static setPendingCommand(IJ)V
    .locals 2

    .line 598
    sput p0, Lcom/narvii/amino/MainActivity;->pendingCmd:I

    .line 599
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/narvii/amino/MainActivity;->pendingCmdTimeStart:J

    .line 600
    sget-wide v0, Lcom/narvii/amino/MainActivity;->pendingCmdTimeStart:J

    add-long/2addr v0, p1

    sput-wide v0, Lcom/narvii/amino/MainActivity;->pendingCmdTimeEnd:J

    return-void
.end method


# virtual methods
.method public canScrollUp()Z
    .locals 2

    .line 484
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "home"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 485
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_0

    .line 486
    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->canScrollUp()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 500
    iget-boolean v0, p0, Lcom/narvii/amino/MainActivity;->blockInput:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 503
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getActionBarOverlaySize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCrashlyticsFootprint()Ljava/lang/String;
    .locals 3

    .line 374
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->getCrashlyticsFootprint()Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "home"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -- "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public getMainFragment()Landroid/support/v4/app/Fragment;
    .locals 2

    .line 313
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "home"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

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

    .line 383
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/amino/MainDialogFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 387
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/amino/MainDialogFragment;->isOnBoardingCheckDone()Z

    move-result v0

    return v0
.end method

.method public isPagebackgroundEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 667
    sget v0, Lcom/narvii/amino/MainActivity;->pendingCmd:I

    const v1, 0x20001

    if-ne v0, v1, :cond_0

    .line 668
    invoke-direct {p0}, Lcom/narvii/amino/MainActivity;->popPendingCmd()I

    .line 671
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 493
    invoke-static {}, Lcom/narvii/app/NVActivity;->isBackTooFast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    invoke-super {p0}, Lcom/narvii/app/DrawerActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 112
    invoke-super/range {p0 .. p1}, Lcom/narvii/app/DrawerActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f0b0035

    .line 113
    invoke-virtual {v0, v2}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    const-string v2, "config"

    .line 114
    invoke-virtual {v0, v2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/config/ConfigService;

    .line 115
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v3

    if-nez v3, :cond_0

    const-string v1, "MainActivity start without community"

    .line 116
    invoke-static {v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVActivity;->finish()V

    return-void

    .line 121
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/narvii/app/ApplicationSessionHelper;->mainOpened(Lcom/narvii/app/NVActivity;)V

    if-nez v1, :cond_1

    .line 124
    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->getSessionId()I

    move-result v3

    iput v3, v0, Lcom/narvii/amino/MainActivity;->sessionId:I

    goto :goto_0

    :cond_1
    const-string v3, "sessionId"

    .line 126
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/narvii/amino/MainActivity;->sessionId:I

    :goto_0
    const-string v3, "drawerHost"

    .line 130
    invoke-virtual {v0, v3}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/drawer/DrawerHost;

    iput-object v3, v0, Lcom/narvii/amino/MainActivity;->drawerHost:Lcom/narvii/drawer/DrawerHost;

    .line 132
    iget-object v3, v0, Lcom/narvii/amino/MainActivity;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/narvii/app/NVActivity;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const-string v3, "account"

    .line 133
    invoke-virtual {v0, v3}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/account/AccountService;

    iput-object v3, v0, Lcom/narvii/amino/MainActivity;->account:Lcom/narvii/account/AccountService;

    const/4 v3, 0x2

    const-string v4, "communityNavBar"

    const-string v5, "dialog"

    const/16 v6, 0x65

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v1, :cond_4

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/amino/MainActivity;->resetHomeFragment()V

    .line 138
    new-instance v9, Lcom/narvii/amino/MainDialogFragment;

    invoke-direct {v9}, Lcom/narvii/amino/MainDialogFragment;-><init>()V

    iput-object v9, v0, Lcom/narvii/amino/MainActivity;->mainDlg:Lcom/narvii/amino/MainDialogFragment;

    .line 139
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 141
    sget v10, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    if-ne v10, v6, :cond_2

    const/16 v10, 0x6201

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    :goto_1
    or-int/lit8 v10, v10, 0x20

    or-int/lit16 v10, v10, 0x100

    or-int/lit8 v10, v10, 0x4

    or-int/lit16 v10, v10, 0x800

    or-int/lit8 v10, v10, 0x8

    or-int/lit8 v10, v10, 0x10

    or-int/lit8 v10, v10, 0x40

    or-int/lit16 v10, v10, 0x80

    or-int/2addr v10, v3

    const-string v11, "flag"

    .line 156
    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 157
    iget-object v10, v0, Lcom/narvii/amino/MainActivity;->mainDlg:Lcom/narvii/amino/MainDialogFragment;

    invoke-virtual {v10, v9}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 159
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v9

    iget-object v10, v0, Lcom/narvii/amino/MainActivity;->mainDlg:Lcom/narvii/amino/MainDialogFragment;

    .line 160
    invoke-virtual {v9, v10, v5}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    .line 161
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 163
    new-instance v5, Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-direct {v5}, Lcom/narvii/amino/CommunityNavBarFragment;-><init>()V

    iput-object v5, v0, Lcom/narvii/amino/MainActivity;->navBar:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 164
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 165
    sget v9, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    if-ne v9, v6, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    const-string v10, "hideBackButton"

    invoke-virtual {v5, v10, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 166
    iget-object v9, v0, Lcom/narvii/amino/MainActivity;->navBar:Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-virtual {v9, v5}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 167
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    const v9, 0x1020002

    iget-object v10, v0, Lcom/narvii/amino/MainActivity;->navBar:Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-virtual {v5, v9, v10, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_3

    .line 169
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/narvii/amino/MainDialogFragment;

    iput-object v5, v0, Lcom/narvii/amino/MainActivity;->mainDlg:Lcom/narvii/amino/MainDialogFragment;

    .line 170
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/narvii/amino/CommunityNavBarFragment;

    iput-object v4, v0, Lcom/narvii/amino/MainActivity;->navBar:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 173
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVActivity;->isVisitorNotJoined()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/narvii/amino/MainActivity;->mainDlg:Lcom/narvii/amino/MainDialogFragment;

    if-eqz v4, :cond_5

    .line 174
    invoke-virtual {v4, v8}, Lcom/narvii/amino/MainDialogFragment;->setDisabled(Z)V

    :cond_5
    const-string v4, "community"

    if-nez v1, :cond_7

    .line 177
    iget-object v5, v0, Lcom/narvii/amino/MainActivity;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v5}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v5

    if-nez v5, :cond_7

    .line 179
    invoke-virtual {v0, v4}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/community/CommunityService;

    .line 180
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 181
    iget v5, v5, Lcom/narvii/model/Community;->joinType:I

    if-eq v5, v3, :cond_6

    if-eq v5, v8, :cond_6

    .line 183
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/narvii/account/LoginActivity;

    invoke-direct {v3, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "signup"

    .line 184
    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "skipBtn"

    .line 185
    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "Source"

    const-string v9, "Zero State"

    .line 186
    invoke-virtual {v3, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    sget-object v5, Lcom/narvii/account/LoginActivity$PromptType;->Launch:Lcom/narvii/account/LoginActivity$PromptType;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    const-string v9, "promptType"

    invoke-virtual {v3, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 190
    :cond_6
    iput-boolean v8, v0, Lcom/narvii/amino/MainActivity;->keychainLoginActivityShown:Z

    .line 193
    :cond_7
    iget-boolean v3, v0, Lcom/narvii/amino/MainActivity;->keychainLoginActivityShown:Z

    const-wide/16 v9, 0x190

    const/4 v5, 0x0

    if-nez v3, :cond_8

    .line 198
    iget-object v3, v0, Lcom/narvii/amino/MainActivity;->keychainLoginReceiver:Landroid/content/BroadcastReceiver;

    new-instance v11, Landroid/content/IntentFilter;

    const-string v12, "com.narvii.action.KEYCHAIN_STATUS_CHANGED"

    invoke-direct {v11, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v11}, Lcom/narvii/app/NVActivity;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 200
    iget-object v3, v0, Lcom/narvii/amino/MainActivity;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->crossAppsCheckInBackground()V

    .line 201
    iget-object v3, v0, Lcom/narvii/amino/MainActivity;->keychainLoginReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v0, v5}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    if-nez v1, :cond_8

    .line 203
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 204
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 205
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v11, "relogin"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 206
    iget-object v3, v0, Lcom/narvii/amino/MainActivity;->startRelogin:Ljava/lang/Runnable;

    invoke-static {v3, v9, v10}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_8
    if-nez v1, :cond_f

    .line 211
    iget-boolean v3, v0, Lcom/narvii/amino/MainActivity;->keychainLoginActivityShown:Z

    if-nez v3, :cond_f

    .line 212
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v11, "android.intent.action.MAIN"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 213
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v11, "noSplash"

    invoke-virtual {v3, v11, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_f

    sget-wide v11, Lcom/narvii/app/AminoApplication;->startupTime:J

    const-wide/16 v13, 0x0

    cmp-long v3, v11, v13

    if-lez v3, :cond_f

    .line 219
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 220
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    sget-wide v17, Lcom/narvii/app/AminoApplication;->startupTime:J

    sub-long v15, v15, v17

    const-wide/16 v5, 0x320

    const-wide/16 v9, 0x9c4

    sub-long v13, v9, v15

    .line 221
    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 222
    invoke-virtual {v0, v4}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/community/CommunityService;

    .line 223
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v13

    invoke-virtual {v4, v13}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 224
    iget-object v13, v4, Lcom/narvii/model/Community;->promotionalMediaList:Ljava/util/List;

    if-eqz v13, :cond_e

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_e

    .line 225
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/DrawerActivity;->getDrawerLayout()Lcom/narvii/drawer/MyDrawerLayout;

    move-result-object v14

    .line 227
    invoke-virtual {v14, v13}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const-string v15, "imageLoader"

    .line 229
    invoke-virtual {v0, v15}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/narvii/util/image/NVImageLoader;

    .line 231
    iget-object v4, v4, Lcom/narvii/model/Community;->promotionalMediaList:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Media;

    iget-object v4, v4, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 232
    invoke-virtual {v15, v4}, Lcom/narvii/util/image/NVImageLoader;->isLocal(Ljava/lang/String;)Z

    move-result v4

    const-string v3, "gifLoader"

    if-nez v4, :cond_b

    .line 234
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v4

    const-string v9, "filesDir"

    invoke-virtual {v4, v9}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 235
    new-instance v9, Ljava/io/File;

    const-string v10, "community-launch-image.gif"

    invoke-direct {v9, v4, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v21

    const-wide/16 v19, 0x0

    cmp-long v10, v21, v19

    if-lez v10, :cond_9

    .line 237
    invoke-virtual {v0, v3}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/util/drawables/gif/GifLoader;

    .line 238
    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/narvii/util/drawables/gif/GifLoader;->getLocalGifDrawable(Ljava/lang/String;)Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    move-result-object v4

    move-object/from16 v17, v4

    goto :goto_5

    .line 240
    :cond_9
    new-instance v9, Ljava/io/File;

    const-string v10, "community-launch-image.jpg"

    invoke-direct {v9, v4, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 241
    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual {v15, v4, v9, v10, v8}, Lcom/narvii/util/image/NVImageLoader;->getLocal(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_a

    goto :goto_4

    .line 242
    :cond_a
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v17, v9

    goto :goto_5

    :cond_b
    :goto_4
    const/16 v17, 0x0

    :goto_5
    if-nez v17, :cond_d

    .line 247
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v9

    const-string v10, "assets://launch-image.jpg"

    invoke-virtual {v15, v10, v4, v9, v8}, Lcom/narvii/util/image/NVImageLoader;->getLocal(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_c

    .line 249
    invoke-virtual {v0, v3}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/util/drawables/gif/GifLoader;

    const-string v4, "assets://launch-image.gif"

    .line 250
    invoke-virtual {v3, v4}, Lcom/narvii/util/drawables/gif/GifLoader;->getLocalGifDrawable(Ljava/lang/String;)Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    move-result-object v17

    goto :goto_6

    .line 252
    :cond_c
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_7

    :cond_d
    :goto_6
    move-object/from16 v3, v17

    :goto_7
    if-eqz v3, :cond_e

    .line 256
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v9, 0x7f0b04ec

    invoke-virtual {v4, v9, v14, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 257
    invoke-virtual {v14, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 258
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    iput-boolean v8, v0, Lcom/narvii/amino/MainActivity;->blockInput:Z

    .line 262
    invoke-virtual {v4}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const v7, 0x3f849ba6    # 1.036f

    invoke-virtual {v3, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v7, 0x9c4

    invoke-virtual {v3, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 263
    invoke-virtual {v4}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v7, 0x3e8

    invoke-virtual {v3, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v7, Lcom/narvii/amino/MainActivity$1;

    invoke-direct {v7, v0, v14, v4}, Lcom/narvii/amino/MainActivity$1;-><init>(Lcom/narvii/amino/MainActivity;Landroid/view/ViewGroup;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 281
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 282
    new-instance v3, Lcom/narvii/amino/MainActivity$2;

    invoke-direct {v3, v0}, Lcom/narvii/amino/MainActivity$2;-><init>(Lcom/narvii/amino/MainActivity;)V

    invoke-static {v3, v5, v6}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 290
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launch image shown in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v11

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    const-wide/16 v3, 0xa6

    add-long/2addr v5, v3

    const-wide/16 v3, 0x190

    add-long v9, v3, v5

    :cond_f
    move-wide v3, v9

    if-nez v1, :cond_11

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Lcom/narvii/amino/MainActivity;->LAST_PEEK:J

    sget-boolean v1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v1, :cond_10

    const v1, 0xea60

    goto :goto_8

    :cond_10
    const v1, 0x36ee80

    :goto_8
    int-to-long v9, v1

    add-long/2addr v7, v9

    cmp-long v1, v5, v7

    if-lez v1, :cond_11

    const-wide/16 v5, 0x4b0

    .line 295
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/narvii/app/DrawerActivity;->peekDrawer(JJ)V

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/narvii/amino/MainActivity;->LAST_PEEK:J

    .line 299
    :cond_11
    invoke-static/range {p0 .. p0}, Lcom/narvii/util/AppsflyerManager;->trackDeepLinking(Landroid/app/Activity;)V

    .line 300
    sget v1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v3, 0x65

    if-ne v1, v3, :cond_12

    .line 301
    invoke-static/range {p0 .. p0}, Lcom/narvii/util/DeepLinkManager;->handleFacebookDeferredLink(Landroid/app/Activity;)V

    .line 302
    invoke-static {}, Lcom/narvii/util/ReferrerTrackUtils;->getInstance()Lcom/narvii/util/ReferrerTrackUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/util/ReferrerTrackUtils;->trackReferrer(Lcom/narvii/app/NVContext;)V

    .line 303
    iget-object v1, v0, Lcom/narvii/amino/MainActivity;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "chat"

    .line 304
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/core/ChatService;

    .line 305
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/narvii/chat/core/ChatService;->addThreadCheckQueue(I)V

    :cond_12
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/narvii/amino/MainActivity;->drawerHost:Lcom/narvii/drawer/DrawerHost;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/narvii/amino/MainActivity;->keychainLoginReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 358
    iget-object v0, p0, Lcom/narvii/amino/MainActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 359
    iput-object v0, p0, Lcom/narvii/amino/MainActivity;->drawerHost:Lcom/narvii/drawer/DrawerHost;

    .line 362
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    invoke-static {p0}, Lcom/narvii/app/ApplicationSessionHelper;->mainFinished(Lcom/narvii/app/NVActivity;)V

    .line 365
    :cond_1
    invoke-super {p0}, Lcom/narvii/app/DrawerActivity;->onDestroy()V

    return-void
.end method

.method public onDrawerEvent(ILjava/lang/Object;)Z
    .locals 1

    .line 648
    invoke-direct {p0, p1}, Lcom/narvii/amino/MainActivity;->processPendingCmd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 651
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/app/DrawerActivity;->onDrawerEvent(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected onJoinCommunitySuccessInVisitorMode()V
    .locals 2

    .line 676
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onJoinCommunitySuccessInVisitorMode()V

    .line 677
    iget-object v0, p0, Lcom/narvii/amino/MainActivity;->mainDlg:Lcom/narvii/amino/MainDialogFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 678
    invoke-virtual {v0, v1}, Lcom/narvii/amino/MainDialogFragment;->setDisabled(Z)V

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/MainActivity;->navBar:Lcom/narvii/amino/CommunityNavBarFragment;

    if-eqz v0, :cond_1

    .line 682
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 350
    iput-boolean v0, p0, Lcom/narvii/amino/MainActivity;->resumed:Z

    .line 351
    invoke-super {p0}, Lcom/narvii/app/DrawerActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 324
    invoke-super {p0}, Lcom/narvii/app/DrawerActivity;->onResume()V

    .line 326
    iget v0, p0, Lcom/narvii/amino/MainActivity;->sessionId:I

    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->getSessionId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/narvii/amino/MainActivity;->resetHomeFragment()V

    .line 328
    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->getSessionId()I

    move-result v0

    iput v0, p0, Lcom/narvii/amino/MainActivity;->sessionId:I

    goto :goto_0

    .line 330
    :cond_0
    invoke-direct {p0}, Lcom/narvii/amino/MainActivity;->popPendingCmd()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/narvii/amino/MainActivity;->processPendingCmd(I)Z

    :goto_0
    const/4 v0, 0x1

    .line 333
    iput-boolean v0, p0, Lcom/narvii/amino/MainActivity;->resumed:Z

    .line 334
    iget-object v0, p0, Lcom/narvii/amino/MainActivity;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->updateRecentVisitorCount()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 318
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 319
    iget v0, p0, Lcom/narvii/amino/MainActivity;->sessionId:I

    const-string v1, "sessionId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public resetHomeFragment()V
    .locals 4

    .line 413
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "communityNavBar"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/amino/CommunityNavBarFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 416
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 421
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 422
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090053

    .line 423
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090419

    .line 424
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    move-object v0, v1

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_2

    const/16 v3, 0x8

    .line 428
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    const-string v2, "config"

    .line 431
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/config/ConfigService;

    const-string v3, "community"

    .line 432
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/community/CommunityService;

    .line 433
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 435
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_3

    .line 437
    iget-object v1, v2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    invoke-static {v0}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    const/4 v1, 0x0

    .line 439
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 443
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "home"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 444
    new-instance v2, Lcom/narvii/amino/HomeFragment;

    invoke-direct {v2}, Lcom/narvii/amino/HomeFragment;-><init>()V

    .line 446
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    if-eqz v0, :cond_4

    .line 448
    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_4
    const v0, 0x7f09011d

    .line 450
    invoke-virtual {v3, v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 451
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public restoreHomeTab()V
    .locals 2

    .line 456
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "home"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 457
    check-cast v0, Lcom/narvii/amino/HomeFragment;

    invoke-virtual {v0}, Lcom/narvii/amino/HomeFragment;->restoreHomeTab()V

    return-void
.end method

.method protected showThemeColorAsAlternativeBackground()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public smoothScrollToTop()V
    .locals 2

    .line 476
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "home"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 477
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_0

    .line 478
    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->smoothScrollToTop()V

    :cond_0
    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 394
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 396
    instance-of v2, v1, Lcom/narvii/amino/HomeFragment;

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    .line 400
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    const-string v0, "Source"

    .line 403
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ";Home Page"

    if-nez v1, :cond_2

    goto :goto_2

    .line 404
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 405
    :goto_2
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/app/NVActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public updateOverlayListPlaceholder(Lcom/narvii/list/overlay/OverlayListPlaceholder;)V
    .locals 2

    .line 369
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    move-result v0

    invoke-super {p0}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/overlay/OverlayListPlaceholder;->adjustHeight(II)V

    return-void
.end method
