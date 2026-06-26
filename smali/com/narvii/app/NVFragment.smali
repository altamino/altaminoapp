.class public Lcom/narvii/app/NVFragment;
.super Lcom/narvii/app/theme/NVThemeFragment;
.source "NVFragment.java"

# interfaces
.implements Lcom/narvii/app/NVContext;
.implements Lcom/narvii/app/LifecycleHost;
.implements Lcom/narvii/app/IPermissionResultDispatcher;
.implements Lcom/narvii/permisson/PermissionListener;
.implements Lcom/narvii/logging/Page;
.implements Lcom/narvii/app/NVInteractionScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/app/NVFragment$CleanLeakReceivers;,
        Lcom/narvii/app/NVFragment$MenuHost;,
        Lcom/narvii/app/NVFragment$MenuController;
    }
.end annotation


# static fields
.field private static final ACTIONBAR_RIGHT_BUTTON_DEFAULT:Landroid/graphics/drawable/Drawable;

.field private static final REQUEST_LOGIN:I


# instance fields
.field protected _backgroundColor:I

.field protected _fromPush:Z

.field protected _pushTrackId:Ljava/lang/String;

.field private cachedAttachedActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/app/NVActivity;",
            ">;"
        }
    .end annotation
.end field

.field private cachedCid:I

.field private cid:J

.field private isActive:Z

.field private isDarkTheme:Z

.field private isFinishing:Z

.field protected isLogLevelActive:Z

.field private isRootFragment:Ljava/lang/Boolean;

.field private isVisibleHint:Z

.field private lifecycleListeners:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/app/LifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field private lifecycleState:I

.field private localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private localReceivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/BroadcastReceiver;",
            ">;>;"
        }
    .end annotation
.end field

.field private loginIntent:Landroid/content/Intent;

.field private menuController:Lcom/narvii/app/NVFragment$MenuController;

.field pageViewDelegate:Lcom/narvii/logging/PageViewDelegate;

.field permissionArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/narvii/permisson/PermissionListener;",
            ">;"
        }
    .end annotation
.end field

.field protected pvId:Ljava/lang/String;

.field private final refreshActive:Ljava/lang/Runnable;

.field private serviceManager:Lcom/narvii/services/ServiceManager;

.field private final services:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    sget v0, Lcom/narvii/lib/R$id;->login:I

    const v1, 0xffff

    and-int/2addr v0, v1

    sput v0, Lcom/narvii/app/NVFragment;->REQUEST_LOGIN:I

    .line 1228
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/narvii/app/NVFragment;->ACTIONBAR_RIGHT_BUTTON_DEFAULT:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Lcom/narvii/app/theme/NVThemeFragment;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/NVFragment;->services:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/narvii/app/NVFragment;->cachedAttachedActivity:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/narvii/app/NVFragment;->cachedCid:I

    const/4 v1, 0x1

    .line 80
    iput-boolean v1, p0, Lcom/narvii/app/NVFragment;->isVisibleHint:Z

    .line 82
    iput v0, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    .line 549
    new-instance v0, Lcom/narvii/app/NVFragment$9;

    invoke-direct {v0, p0}, Lcom/narvii/app/NVFragment$9;-><init>(Lcom/narvii/app/NVFragment;)V

    iput-object v0, p0, Lcom/narvii/app/NVFragment;->refreshActive:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/app/NVFragment;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/narvii/app/NVFragment;->lifecycleState:I

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/app/NVFragment;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/narvii/app/NVFragment;->isVisibleHint:Z

    return p0
.end method

.method static synthetic access$200(Lcom/narvii/app/NVFragment;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/narvii/app/NVFragment;->isActive:Z

    return p0
.end method

.method static synthetic access$202(Lcom/narvii/app/NVFragment;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/narvii/app/NVFragment;->isActive:Z

    return p1
.end method

.method static synthetic access$400(Lcom/narvii/app/NVFragment;)Landroid/content/Intent;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/narvii/app/NVFragment;->loginIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$402(Lcom/narvii/app/NVFragment;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/narvii/app/NVFragment;->loginIntent:Landroid/content/Intent;

    return-object p1
.end method

.method private cleanLeakLocalReceivers()V
    .locals 3

    .line 1010
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/app/NVFragment;->localReceivers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1011
    new-instance v0, Lcom/narvii/app/NVFragment$CleanLeakReceivers;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/app/NVFragment$CleanLeakReceivers;-><init>(Lcom/narvii/app/NVFragment$1;)V

    .line 1012
    iget-object v2, p0, Lcom/narvii/app/NVFragment;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iput-object v2, v0, Lcom/narvii/app/NVFragment$CleanLeakReceivers;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    .line 1013
    iget-object v2, p0, Lcom/narvii/app/NVFragment;->localReceivers:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/narvii/app/NVFragment$CleanLeakReceivers;->list:Ljava/util/ArrayList;

    .line 1014
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 1015
    iput-object v1, p0, Lcom/narvii/app/NVFragment;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 1016
    iput-object v1, p0, Lcom/narvii/app/NVFragment;->localReceivers:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method


# virtual methods
.method public addWeakLifecycleListener(Lcom/narvii/app/LifecycleListener;)V
    .locals 1

    .line 869
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    if-nez v0, :cond_0

    .line 870
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/NVFragment;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    .line 872
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public canScrollUp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected canSendActiveLog(Z)Z
    .locals 2

    .line 586
    iget-boolean v0, p0, Lcom/narvii/app/NVFragment;->isLogLevelActive:Z

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    .line 589
    :cond_0
    iget-object p1, p0, Lcom/narvii/app/NVFragment;->pageViewDelegate:Lcom/narvii/logging/PageViewDelegate;

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V
    .locals 2

    .line 1356
    iget-boolean v0, p0, Lcom/narvii/app/NVFragment;->_fromPush:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1357
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "pageFromPush"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    :cond_0
    return-void
.end method

.method protected completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V
    .locals 0

    return-void
.end method

.method public ensureLogin(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 1049
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public ensureLogin(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3

    const-string v0, "account"

    .line 1053
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 1054
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    .line 1055
    invoke-virtual {p0, p2, p1}, Lcom/narvii/app/NVFragment;->onLoginResult(ZLandroid/content/Intent;)V

    goto :goto_0

    .line 1057
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ndc://login"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz p1, :cond_1

    .line 1058
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1059
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    const-string v1, "Source"

    .line 1061
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "promptType"

    const-string v1, "Required"

    .line 1062
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1063
    iput-object p1, p0, Lcom/narvii/app/NVFragment;->loginIntent:Landroid/content/Intent;

    .line 1064
    sget p1, Lcom/narvii/app/NVFragment;->REQUEST_LOGIN:I

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1065
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->ensureLoginToast()V

    :goto_0
    return-void
.end method

.method protected ensureLoginToast()V
    .locals 3

    .line 1080
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$string;->login_first:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method public finish()V
    .locals 3

    const/4 v0, 0x1

    .line 713
    iput-boolean v0, p0, Lcom/narvii/app/NVFragment;->isFinishing:Z

    .line 714
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "finish() ignored in embed fragment"

    .line 715
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 717
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 718
    iget v1, p0, Lcom/narvii/app/NVFragment;->lifecycleState:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    .line 719
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getActionBarLayoutId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getActionBarOverlaySize()I
    .locals 3

    .line 1176
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1179
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1180
    instance-of v2, v0, Lcom/narvii/app/NVActivity;

    if-eqz v2, :cond_1

    .line 1181
    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public getBooleanParam(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 785
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getBooleanParam(Ljava/lang/String;Z)Z
    .locals 0

    .line 777
    invoke-static {p0, p1, p2}, Lcom/narvii/util/ParamUtils;->getBooleanParam(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getCBBLift()I
    .locals 1

    .line 152
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getOnlineBarLift()I

    move-result v0

    return v0
.end method

.method public getConfigCid()I
    .locals 1

    const-string v0, "config"

    .line 317
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 318
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 666
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 668
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->cachedAttachedActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 669
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "NVFragment is not attached. returning application context instead."

    .line 674
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 675
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getContextId()J
    .locals 5

    .line 692
    iget-wide v0, p0, Lcom/narvii/app/NVFragment;->cid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 693
    invoke-static {}, Lcom/narvii/util/Utils;->generateUniqueLongId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/app/NVFragment;->cid:J

    .line 695
    :cond_0
    iget-wide v0, p0, Lcom/narvii/app/NVFragment;->cid:J

    return-wide v0
.end method

.method public getCustomTheme()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIntParam(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 769
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getIntParam(Ljava/lang/String;I)I
    .locals 0

    .line 762
    invoke-static {p0, p1, p2}, Lcom/narvii/util/ParamUtils;->getIntParam(Landroid/support/v4/app/Fragment;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getLifecycleState()I
    .locals 1

    .line 864
    iget v0, p0, Lcom/narvii/app/NVFragment;->lifecycleState:I

    return v0
.end method

.method public getMenuController()Lcom/narvii/app/NVFragment$MenuController;
    .locals 2

    .line 944
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->menuController:Lcom/narvii/app/NVFragment$MenuController;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 945
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 947
    instance-of v1, v0, Lcom/narvii/app/NVFragment$MenuHost;

    if-eqz v1, :cond_0

    .line 948
    check-cast v0, Lcom/narvii/app/NVFragment$MenuHost;

    .line 949
    invoke-interface {v0, p0}, Lcom/narvii/app/NVFragment$MenuHost;->getMenuController(Lcom/narvii/app/NVFragment;)Lcom/narvii/app/NVFragment$MenuController;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/app/NVFragment;->menuController:Lcom/narvii/app/NVFragment$MenuController;

    goto :goto_1

    .line 952
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 956
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->menuController:Lcom/narvii/app/NVFragment$MenuController;

    return-object v0
.end method

.method public getOnlineBarLift()I
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getPostEntryLift()I

    move-result v0

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "__storyDraftId"

    .line 827
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isValidPage()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "StoryEditWildcard"

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageRefererInfo()Lcom/narvii/logging/PageRefererInfo;
    .locals 2

    const-string v0, "__pageRefererInfo"

    const/4 v1, 0x0

    .line 344
    invoke-static {p0, v0, v1}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/logging/PageRefererInfo;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/logging/PageRefererInfo;

    return-object v0
.end method

.method public getParentContext()Lcom/narvii/app/NVContext;
    .locals 2

    .line 683
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 684
    instance-of v1, v0, Lcom/narvii/app/NVContext;

    if-eqz v1, :cond_0

    .line 685
    check-cast v0, Lcom/narvii/app/NVContext;

    return-object v0

    .line 687
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    return-object v0
.end method

.method public getPostEntryLift()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPushTrackId()Ljava/lang/String;
    .locals 1

    .line 1362
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->_pushTrackId:Ljava/lang/String;

    return-object v0
.end method

.method public getPvId()Ljava/lang/String;
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->pvId:Ljava/lang/String;

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 623
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->serviceManager:Lcom/narvii/services/ServiceManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {v0, p1}, Lcom/narvii/services/ServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 627
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->services:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 631
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 632
    invoke-interface {v1, p1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 634
    iget-object v2, p0, Lcom/narvii/app/NVFragment;->services:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v0, :cond_7

    if-nez v1, :cond_3

    .line 638
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->cachedAttachedActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 639
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_3

    .line 641
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 643
    iget-object v1, p0, Lcom/narvii/app/NVFragment;->services:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 648
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_5

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " service when NVFragment is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/app/NVFragment;->lifecycleState:I

    const/4 v2, -0x1

    if-gt v1, v2, :cond_4

    const-string v1, "destoryed"

    goto :goto_1

    :cond_4
    const-string v1, "not attached"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 651
    :cond_5
    iget v0, p0, Lcom/narvii/app/NVFragment;->cachedCid:I

    if-lez v0, :cond_6

    .line 652
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    iget v1, p0, Lcom/narvii/app/NVFragment;->cachedCid:I

    invoke-virtual {v0, v1, p1}, Lcom/narvii/app/NVApplication;->getService(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 654
    :cond_6
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_7

    .line 657
    iget-object v1, p0, Lcom/narvii/app/NVFragment;->services:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object v0
.end method

.method public getStatusBarAlpha()I
    .locals 2

    .line 176
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getCustomTheme()I

    move-result v0

    sget v1, Lcom/narvii/lib/R$style;->AminoThemeDark_Overlay:I

    if-ne v0, v1, :cond_0

    const/16 v0, 0x98

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getStatusBarOverlaySize()I
    .locals 3

    .line 1161
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1164
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1165
    instance-of v2, v0, Lcom/narvii/app/NVActivity;

    if-eqz v2, :cond_1

    .line 1166
    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public getStrategyInfo()Ljava/lang/String;
    .locals 1

    const-string v0, "__strategyInfo"

    .line 1368
    invoke-static {p0, v0}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 755
    invoke-static {p0, p1}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTotalOverlaySize()I
    .locals 2

    .line 1346
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFloatingSwipeable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1347
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$dimen;->swipeable_activity_top_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 1349
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getUserVisibleHint()Z
    .locals 1

    .line 515
    iget-boolean v0, p0, Lcom/narvii/app/NVFragment;->isVisibleHint:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCBB(Lcom/narvii/app/NVActivity;Landroid/content/Intent;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public hasOnlineBar()Ljava/lang/Boolean;
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 137
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->hasPostEntry()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected hasVisitorBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hideCBBInHomeFragment()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 932
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->menuController:Lcom/narvii/app/NVFragment$MenuController;

    if-eqz v0, :cond_1

    .line 934
    invoke-interface {v0, p0}, Lcom/narvii/app/NVFragment$MenuController;->invalidateMenu(Lcom/narvii/app/NVFragment;)V

    goto :goto_0

    .line 937
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 938
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_1
    :goto_0
    return-void
.end method

.method public isActionBarOverlaying()Z
    .locals 3

    .line 1137
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1140
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1141
    instance-of v2, v0, Lcom/narvii/app/NVActivity;

    if-eqz v2, :cond_1

    .line 1142
    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isActionBarOverlaying()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public isActive()Z
    .locals 1

    .line 458
    iget-boolean v0, p0, Lcom/narvii/app/NVFragment;->isActive:Z

    return v0
.end method

.method public isCurrentCommunityJoined()Z
    .locals 1

    .line 192
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isCurrentCommunityJoined()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDarkTheme()Z
    .locals 1

    .line 1304
    iget-boolean v0, p0, Lcom/narvii/app/NVFragment;->isDarkTheme:Z

    return v0
.end method

.method public isDestoryed()Z
    .locals 2

    .line 413
    iget v0, p0, Lcom/narvii/app/NVFragment;->lifecycleState:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isEmbedFragment()Z
    .locals 1

    const-string v0, "__embed"

    .line 115
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFinalPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFinishing()Z
    .locals 1

    .line 725
    iget-boolean v0, p0, Lcom/narvii/app/NVFragment;->isFinishing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 728
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-nez v0, :cond_1

    .line 729
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 731
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isFloatingSwipeable()Z
    .locals 1

    .line 1342
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/ISwipeableActivity;

    return v0
.end method

.method public isGlobal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGlobalInteractionScope()Z
    .locals 2

    .line 851
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "config"

    .line 852
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 853
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_0
    const-string v0, "__interactionScope"

    .line 855
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isInVisitorMode()Z
    .locals 1

    .line 184
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isInVisitorMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPageBackgroundEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRootFragment()Z
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->isRootFragment:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 121
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 122
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getRootFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/app/NVFragment;->isRootFragment:Ljava/lang/Boolean;

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->isRootFragment:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isTranslucentStatusBar()Z
    .locals 3

    .line 1149
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1152
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1153
    instance-of v2, v0, Lcom/narvii/app/NVActivity;

    if-eqz v2, :cond_1

    .line 1154
    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isTranslucentStatusBar()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isVisitorNotJoined()Z
    .locals 1

    .line 199
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isVisitorNotJoined()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected logPageViewEvent()Z
    .locals 1

    .line 600
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isValidPage()Z

    move-result v0

    return v0
.end method

.method public manuallyRefresh(Lcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 566
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected observeThemeDownloadFinish()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 0

    .line 574
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->onLogLevelActiveChanged(Z)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 327
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 328
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 329
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarCustomDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 330
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->observeThemeDownloadFinish()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 331
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p1, p0}, Lcom/narvii/app/NVActivity;->addThemeDownloadObserver(Lcom/narvii/app/NVFragment;)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1095
    sget v0, Lcom/narvii/app/NVFragment;->REQUEST_LOGIN:I

    if-ne p1, v0, :cond_0

    .line 1096
    new-instance p1, Lcom/narvii/app/NVFragment$10;

    invoke-direct {p1, p0}, Lcom/narvii/app/NVFragment$10;-><init>(Lcom/narvii/app/NVFragment;)V

    .line 1113
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void

    .line 1117
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 207
    invoke-super {p0, p1}, Lcom/narvii/app/theme/NVThemeFragment;->onAttach(Landroid/content/Context;)V

    .line 208
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/narvii/app/NVFragment;->cachedAttachedActivity:Ljava/lang/ref/WeakReference;

    .line 210
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->_communityId()I

    move-result p1

    iput p1, p0, Lcom/narvii/app/NVFragment;->cachedCid:I

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 230
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 231
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_pushTrackId"

    .line 232
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/app/NVFragment;->_pushTrackId:Ljava/lang/String;

    const-string v0, "_pushIntent"

    .line 233
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/app/NVFragment;->_fromPush:Z

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFinalPage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 237
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 239
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 240
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 244
    :cond_1
    sget-object v1, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    if-eqz v1, :cond_2

    const-string v1, "__pageRefererInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 245
    sget-object v2, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_2
    sget-object v1, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "__strategyInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 249
    sget-object v2, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_3
    new-instance v0, Lcom/narvii/app/NVFragment$1;

    const-string v1, "__storyDraftId"

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p0, p0, v1}, Lcom/narvii/app/NVFragment$1;-><init>(Lcom/narvii/app/NVFragment;Lcom/narvii/app/NVContext;Lcom/narvii/logging/Page;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/app/NVFragment;->pageViewDelegate:Lcom/narvii/logging/PageViewDelegate;

    .line 269
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->resetPvId()V

    const/4 v0, 0x1

    if-nez p1, :cond_5

    .line 271
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 273
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getCustomTheme()I

    move-result p1

    if-eqz p1, :cond_6

    .line 275
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 276
    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 277
    sget-object p1, Lcom/narvii/lib/R$styleable;->AminoTheme:[I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 278
    sget v1, Lcom/narvii/lib/R$styleable;->AminoTheme_themeDark:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/narvii/app/NVFragment;->isDarkTheme:Z

    .line 279
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fail to determine dark theme"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 284
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    if-eqz p1, :cond_6

    .line 285
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->isDarkTheme()Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/app/NVFragment;->isDarkTheme:Z

    goto :goto_0

    :cond_5
    const-string v1, "__cid"

    .line 288
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/narvii/app/NVFragment;->cid:J

    const-string v1, "__loginIntent"

    .line 289
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/narvii/app/NVFragment;->loginIntent:Landroid/content/Intent;

    const-string v1, "__isDarkTheme"

    .line 290
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/narvii/app/NVFragment;->isDarkTheme:Z

    const-string v1, "__isRootFragment"

    .line 291
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 292
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/app/NVFragment;->isRootFragment:Ljava/lang/Boolean;

    .line 296
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/narvii/app/NVFragment;->serviceManager:Lcom/narvii/services/ServiceManager;

    if-eqz p1, :cond_7

    .line 297
    invoke-virtual {p1}, Lcom/narvii/services/ServiceManager;->create()V

    .line 300
    :cond_7
    iput v0, p0, Lcom/narvii/app/NVFragment;->lifecycleState:I

    .line 301
    iget-object p1, p0, Lcom/narvii/app/NVFragment;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    if-eqz p1, :cond_8

    .line 302
    new-instance v0, Lcom/narvii/app/NVFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/app/NVFragment$2;-><init>(Lcom/narvii/app/NVFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 310
    :cond_8
    instance-of p1, p0, Lcom/narvii/notification/NotificationListener;

    if-eqz p1, :cond_9

    const-string p1, "notification"

    .line 311
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 312
    move-object v0, p0

    check-cast v0, Lcom/narvii/notification/NotificationListener;

    invoke-virtual {p1, p0, v0}, Lcom/narvii/notification/NotificationCenter;->registerListener(Lcom/narvii/app/NVContext;Lcom/narvii/notification/NotificationListener;)V

    :cond_9
    return-void
.end method

.method public onDestroy()V
    .locals 5

    const/4 v0, -0x1

    .line 359
    iput v0, p0, Lcom/narvii/app/NVFragment;->lifecycleState:I

    .line 360
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    if-eqz v0, :cond_0

    .line 361
    new-instance v1, Lcom/narvii/app/NVFragment$3;

    invoke-direct {v1, p0}, Lcom/narvii/app/NVFragment$3;-><init>(Lcom/narvii/app/NVFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 369
    :cond_0
    iget-wide v0, p0, Lcom/narvii/app/NVFragment;->cid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const-string v0, "notification"

    .line 371
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    const/4 v1, 0x1

    .line 372
    invoke-virtual {v0, p0, v1}, Lcom/narvii/notification/NotificationCenter;->unregisterListener(Lcom/narvii/app/NVContext;Z)V

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->serviceManager:Lcom/narvii/services/ServiceManager;

    if-eqz v0, :cond_2

    .line 375
    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->destroy()V

    .line 377
    :cond_2
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;->cleanLeakLocalReceivers()V

    .line 378
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 337
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->observeThemeDownloadFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0, p0}, Lcom/narvii/app/NVActivity;->removeThemeDownloadObserver(Lcom/narvii/app/NVFragment;)V

    .line 340
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/theme/NVThemeFragment;->onDestroyView()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 541
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 542
    iget-boolean v0, p0, Lcom/narvii/app/NVFragment;->isActive:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 543
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->canSendActiveLog(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    iput-boolean p1, p0, Lcom/narvii/app/NVFragment;->isLogLevelActive:Z

    .line 545
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->sendPageViewEvent(Z)V

    :cond_1
    return-void
.end method

.method public onLogLevelActiveChanged(Z)V
    .locals 1

    .line 579
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->canSendActiveLog(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iput-boolean p1, p0, Lcom/narvii/app/NVFragment;->isLogLevelActive:Z

    .line 581
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->sendPageViewEvent(Z)V

    :cond_0
    return-void
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 488
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    const/4 v0, 0x2

    .line 490
    iput v0, p0, Lcom/narvii/app/NVFragment;->lifecycleState:I

    .line 491
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    if-eqz v0, :cond_0

    .line 492
    new-instance v1, Lcom/narvii/app/NVFragment$8;

    invoke-direct {v1, p0}, Lcom/narvii/app/NVFragment$8;-><init>(Lcom/narvii/app/NVFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 500
    :cond_0
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/app/NVFragment;->refreshActive:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 501
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->refreshActive:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 502
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->serviceManager:Lcom/narvii/services/ServiceManager;

    if-eqz v0, :cond_1

    .line 503
    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->pause()V

    :cond_1
    return-void
.end method

.method public onPermissionDenied(IZLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 816
    sget-boolean p1, Lcom/narvii/permisson/PermissionRationaleDialog;->isShowing:Z

    if-nez p1, :cond_0

    .line 817
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/permisson/PermissionRationaleDialog;->builder(Landroid/content/Context;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    move-result-object p1

    .line 818
    invoke-virtual {p1, p3}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->setRationalePermissionList(Ljava/util/List;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    move-result-object p1

    .line 819
    invoke-virtual {p1, p3}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->setDeniedPermissionList(Ljava/util/List;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    move-result-object p1

    .line 820
    invoke-virtual {p1}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->show()V

    :cond_0
    return-void
.end method

.method public onPermissionGranted(I)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1324
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->permissionArray:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 1325
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/permisson/PermissionListener;

    if-eqz v0, :cond_0

    .line 1327
    invoke-static {p0, v0, p1, p2, p3}, Lcom/narvii/permisson/NVPermission;->onRequestPermissionResult(Landroid/support/v4/app/Fragment;Lcom/narvii/permisson/PermissionListener;I[Ljava/lang/String;[I)V

    return-void

    .line 1331
    :cond_0
    invoke-static {p0, p0, p1, p2, p3}, Lcom/narvii/permisson/NVPermission;->onRequestPermissionResult(Landroid/support/v4/app/Fragment;Lcom/narvii/permisson/PermissionListener;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->serviceManager:Lcom/narvii/services/ServiceManager;

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->resume()V

    .line 466
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 468
    iget-boolean v0, p0, Lcom/narvii/app/NVFragment;->isVisibleHint:Z

    if-nez v0, :cond_1

    .line 469
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setVisibleHint(Z)V

    goto :goto_0

    .line 471
    :cond_1
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/app/NVFragment;->refreshActive:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 472
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->refreshActive:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :goto_0
    const/4 v0, 0x3

    .line 475
    iput v0, p0, Lcom/narvii/app/NVFragment;->lifecycleState:I

    .line 476
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    if-eqz v0, :cond_2

    .line 477
    new-instance v1, Lcom/narvii/app/NVFragment$7;

    invoke-direct {v1, p0}, Lcom/narvii/app/NVFragment$7;-><init>(Lcom/narvii/app/NVFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .line 388
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 389
    iget-wide v0, p0, Lcom/narvii/app/NVFragment;->cid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-string v2, "__cid"

    .line 390
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->loginIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    const-string v1, "__loginIntent"

    .line 393
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 395
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/app/NVFragment;->isDarkTheme:Z

    const-string v1, "__isDarkTheme"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 396
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->isRootFragment:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 397
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "__isRootFragment"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 400
    :cond_2
    new-instance v0, Lcom/narvii/app/NVFragment$4;

    invoke-direct {v0, p0, p1}, Lcom/narvii/app/NVFragment$4;-><init>(Lcom/narvii/app/NVFragment;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->serviceManager:Lcom/narvii/services/ServiceManager;

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->start()V

    :cond_0
    const/4 v0, 0x2

    .line 422
    iput v0, p0, Lcom/narvii/app/NVFragment;->lifecycleState:I

    .line 423
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    if-eqz v0, :cond_1

    .line 424
    new-instance v1, Lcom/narvii/app/NVFragment$5;

    invoke-direct {v1, p0}, Lcom/narvii/app/NVFragment$5;-><init>(Lcom/narvii/app/NVFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 432
    :cond_1
    invoke-super {p0}, Lcom/narvii/app/theme/NVThemeFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 437
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    const/4 v0, 0x1

    .line 439
    iput v0, p0, Lcom/narvii/app/NVFragment;->lifecycleState:I

    .line 440
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    if-eqz v0, :cond_0

    .line 441
    new-instance v1, Lcom/narvii/app/NVFragment$6;

    invoke-direct {v1, p0}, Lcom/narvii/app/NVFragment$6;-><init>(Lcom/narvii/app/NVFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->serviceManager:Lcom/narvii/services/ServiceManager;

    if-eqz v0, :cond_1

    .line 450
    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->stop()V

    :cond_1
    return-void
.end method

.method public onThemeDownloadFinish()V
    .locals 2

    .line 1391
    iget v0, p0, Lcom/narvii/app/NVFragment;->lifecycleState:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 1392
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->updateThemeUI()V

    .line 1393
    instance-of v0, p0, Lcom/narvii/theme/IFakeActionBar;

    if-eqz v0, :cond_0

    .line 1394
    move-object v0, p0

    check-cast v0, Lcom/narvii/theme/IFakeActionBar;

    invoke-interface {v0}, Lcom/narvii/theme/IFakeActionBar;->updateFakeActionBarThemeUI()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1337
    invoke-super {p0, p1, p2}, Lcom/narvii/app/theme/NVThemeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1338
    invoke-static {p1, p0}, Lcom/narvii/logging/LogUtils;->tagFragment(Landroid/view/View;Lcom/narvii/app/NVFragment;)V

    return-void
.end method

.method public registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 2

    .line 973
    iget v0, p0, Lcom/narvii/app/NVFragment;->lifecycleState:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    const-string/jumbo v0, "register local broadcast receiver after destory"

    .line 974
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    if-nez v0, :cond_1

    .line 977
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/app/NVFragment;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 979
    :cond_1
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 981
    iget-object p2, p0, Lcom/narvii/app/NVFragment;->localReceivers:Ljava/util/ArrayList;

    if-nez p2, :cond_2

    .line 982
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/app/NVFragment;->localReceivers:Ljava/util/ArrayList;

    .line 985
    :cond_2
    iget-object p2, p0, Lcom/narvii/app/NVFragment;->localReceivers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 986
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_3

    return-void

    .line 990
    :cond_4
    iget-object p2, p0, Lcom/narvii/app/NVFragment;->localReceivers:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerPermissionResult(ILcom/narvii/permisson/PermissionListener;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->permissionArray:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 794
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/NVFragment;->permissionArray:Landroid/util/SparseArray;

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->permissionArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public removeWeakLifecycleListener(Lcom/narvii/app/LifecycleListener;)V
    .locals 1

    .line 877
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    if-eqz v0, :cond_0

    .line 878
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public requireAccount()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected resetPvId()V
    .locals 1

    .line 348
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getPageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 349
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/app/NVFragment;->pvId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public sendNotification(Lcom/narvii/notification/Notification;)V
    .locals 1

    const-string v0, "notification"

    .line 964
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 965
    invoke-virtual {v0, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method protected sendPageViewEvent(Z)V
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->pageViewDelegate:Lcom/narvii/logging/PageViewDelegate;

    invoke-virtual {v0, p1}, Lcom/narvii/logging/PageViewDelegate;->sendPageViewEvent(Z)V

    return-void
.end method

.method protected sendPageViewEventToThirdParty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setActionBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1188
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1191
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1192
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    if-eqz v1, :cond_1

    .line 1193
    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVActivity;->setActionBarBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setActionBarBackgroundDefault()V
    .locals 2

    .line 1198
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1201
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1202
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    if-eqz v1, :cond_1

    .line 1203
    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->setActionBarBackgroundDefault()V

    :cond_1
    return-void
.end method

.method public setActionBarCustomDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1376
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1380
    :cond_1
    invoke-static {p0, p1}, Lcom/narvii/util/statusbar/StatusBarUtils;->setTranslucentStatusBar(Lcom/narvii/app/NVContext;Landroid/graphics/drawable/Drawable;)V

    .line 1381
    sget-boolean v0, Lcom/narvii/util/statusbar/StatusBarUtils;->STATUS_BAR_ENABLE:Z

    if-nez v0, :cond_2

    .line 1382
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setActionBarLeftView(Landroid/view/View;)V
    .locals 2

    .line 1218
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1221
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1222
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    if-eqz v1, :cond_1

    .line 1223
    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVActivity;->setActionBarLeftView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setActionBarRightButton(ILandroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1265
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->setActionBarRightButton(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setActionBarRightButton(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 1261
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    sget-object v0, Lcom/narvii/app/NVFragment;->ACTIONBAR_RIGHT_BUTTON_DEFAULT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/app/NVFragment;->setActionBarRightButton(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setActionBarRightButton(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 1273
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1276
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1277
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    if-eqz v1, :cond_2

    .line 1278
    sget-object v1, Lcom/narvii/app/NVFragment;->ACTIONBAR_RIGHT_BUTTON_DEFAULT:Landroid/graphics/drawable/Drawable;

    if-ne p2, v1, :cond_1

    .line 1279
    move-object p2, v0

    check-cast p2, Lcom/narvii/app/NVActivity;

    invoke-virtual {p2}, Lcom/narvii/app/NVActivity;->getRightButtonDefaultBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 1281
    :cond_1
    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->setActionBarRightButton(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public setActionBarRightButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1269
    sget-object v0, Lcom/narvii/app/NVFragment;->ACTIONBAR_RIGHT_BUTTON_DEFAULT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/app/NVFragment;->setActionBarRightButton(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setActionBarRightView(Landroid/view/View;)V
    .locals 2

    .line 1286
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1289
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1290
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    if-eqz v1, :cond_1

    .line 1291
    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVActivity;->setActionBarRightView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setActionBarTitleColor(I)V
    .locals 2

    .line 1251
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1254
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1255
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    if-eqz v1, :cond_1

    .line 1256
    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVActivity;->setActionBarTitleColor(I)V

    :cond_1
    return-void
.end method

.method public setActionBarTitleView(Landroid/view/View;)V
    .locals 2

    .line 1208
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1211
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1212
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    if-eqz v1, :cond_1

    .line 1213
    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVActivity;->setActionBarTitleView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1241
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1244
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1245
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    if-eqz v1, :cond_1

    .line 1246
    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVActivity;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setBackButtonTint(I)V
    .locals 2

    .line 1231
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1234
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1235
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    if-eqz v1, :cond_1

    .line 1236
    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVActivity;->setBackButtonTint(I)V

    :cond_1
    return-void
.end method

.method public setCrossBackIcon()V
    .locals 2

    .line 216
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$id;->actionbar_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 220
    sget v1, Lcom/narvii/lib/R$drawable;->ic_back_cross:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "fail to set cross back icon"

    .line 223
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 0

    .line 1308
    iput-boolean p1, p0, Lcom/narvii/app/NVFragment;->isDarkTheme:Z

    return-void
.end method

.method public setEmbedServiceManager(Lcom/narvii/services/ServiceManager;)V
    .locals 0

    .line 612
    iput-object p1, p0, Lcom/narvii/app/NVFragment;->serviceManager:Lcom/narvii/services/ServiceManager;

    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 1

    .line 917
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 918
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getMenuController()Lcom/narvii/app/NVFragment$MenuController;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 921
    invoke-interface {v0, p0}, Lcom/narvii/app/NVFragment$MenuController;->registerMenu(Lcom/narvii/app/NVFragment;)V

    goto :goto_0

    .line 923
    :cond_0
    invoke-interface {v0, p0}, Lcom/narvii/app/NVFragment$MenuController;->unregisterMenu(Lcom/narvii/app/NVFragment;)V

    goto :goto_0

    .line 927
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setHasOptionsMenu(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setPageRefererInfo(Lcom/narvii/logging/PageRefererInfo;)V
    .locals 0

    return-void
.end method

.method public setResult(I)V
    .locals 1

    const/4 v0, 0x0

    .line 699
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method public setResult(ILandroid/content/Intent;)V
    .locals 3

    .line 703
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 705
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 706
    iget v1, p0, Lcom/narvii/app/NVFragment;->lifecycleState:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    .line 707
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTitle(I)V
    .locals 2

    .line 738
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 739
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 740
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 745
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 747
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 509
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 510
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setVisibleHint(Z)V

    return-void
.end method

.method public setVisibleHint(Z)V
    .locals 2

    .line 519
    iput-boolean p1, p0, Lcom/narvii/app/NVFragment;->isVisibleHint:Z

    .line 520
    iget v0, p0, Lcom/narvii/app/NVFragment;->lifecycleState:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 521
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->updateChildrenVisibleHint(Z)V

    .line 522
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/app/NVFragment;->refreshActive:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 523
    iget-object p1, p0, Lcom/narvii/app/NVFragment;->refreshActive:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public shouldShowLoginPage()Z
    .locals 1

    const-string v0, "account"

    .line 1070
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 1071
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1074
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public shouldShowPageBackground()Z
    .locals 1

    .line 169
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->shouldShowPageBackground()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public showImageToast(I)V
    .locals 7

    .line 907
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_0

    .line 908
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/narvii/lib/R$drawable;->check:I

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 909
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/narvii/lib/R$anim;->toast_scale_in:I

    const-wide/16 v5, 0x1f4

    .line 908
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/app/NVActivity;->toastImageWithText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 911
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :goto_0
    return-void
.end method

.method public showShortToast(I)V
    .locals 0

    .line 1312
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->showShortToast(Ljava/lang/String;)V

    return-void
.end method

.method public showShortToast(Ljava/lang/String;)V
    .locals 2

    .line 1316
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1319
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method protected showThemeColorAsAlternativeBackground()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public smoothScrollToTop()V
    .locals 0

    return-void
.end method

.method public unRegisterPermissionResult(ILcom/narvii/permisson/PermissionListener;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->permissionArray:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 805
    iget-object p2, p0, Lcom/narvii/app/NVFragment;->permissionArray:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    return-void
.end method

.method public unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 2

    .line 994
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    if-eqz v0, :cond_0

    .line 995
    invoke-virtual {v0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 998
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->localReceivers:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 999
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1000
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1001
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1002
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 1003
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected updateChildrenVisibleHint(Z)V
    .locals 3

    .line 529
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 531
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 532
    instance-of v2, v1, Lcom/narvii/app/NVFragment;

    if-eqz v2, :cond_0

    .line 533
    check-cast v1, Lcom/narvii/app/NVFragment;

    invoke-virtual {v1, p1}, Lcom/narvii/app/NVFragment;->setVisibleHint(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateThemeUI()V
    .locals 0

    return-void
.end method
