.class public Lcom/narvii/app/NVFragment;
.super Lcom/narvii/app/theme/NVThemeFragment;
.source "SourceFile"

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
        Lcom/narvii/app/NVFragment$MenuController;,
        Lcom/narvii/app/NVFragment$MenuHost;,
        Lcom/narvii/app/NVFragment$CleanLeakReceivers;
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

.field private localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

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

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->login:I

    .line 3
    .line 4
    .line 5
    const v1, 0xffff

    .line 6
    and-int/2addr v0, v1

    .line 7
    .line 8
    sput v0, Lcom/narvii/app/NVFragment;->REQUEST_LOGIN:I

    .line 9
    .line 10
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 15
    .line 16
    sput-object v0, Lcom/narvii/app/NVFragment;->ACTIONBAR_RIGHT_BUTTON_DEFAULT:Landroid/graphics/drawable/Drawable;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/theme/NVThemeFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/app/NVFragment;->services:Ljava/util/HashMap;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/app/NVFragment;->cachedAttachedActivity:Ljava/lang/ref/WeakReference;

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    iput v0, p0, Lcom/narvii/app/NVFragment;->cachedCid:I

    .line 17
    const/4 v1, 0x1

    .line 18
    .line 19
    iput-boolean v1, p0, Lcom/narvii/app/NVFragment;->isVisibleHint:Z

    .line 20
    .line 21
    iput v0, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/app/NVFragment$7;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/narvii/app/NVFragment$7;-><init>(Lcom/narvii/app/NVFragment;)V

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/app/NVFragment;->refreshActive:Ljava/lang/Runnable;

    .line 29
    return-void
.end method

.method private cleanLeakLocalReceivers()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->localReceivers:Ljava/util/ArrayList;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/app/NVFragment$CleanLeakReceivers;

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/narvii/app/NVFragment$CleanLeakReceivers;-><init>(Lcom/narvii/app/k;)V

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/app/NVFragment;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 23
    .line 24
    iput-object v2, v0, Lcom/narvii/app/NVFragment$CleanLeakReceivers;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/narvii/app/NVFragment;->localReceivers:Ljava/util/ArrayList;

    .line 27
    .line 28
    iput-object v2, v0, Lcom/narvii/app/NVFragment$CleanLeakReceivers;->list:Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    iput-object v1, p0, Lcom/narvii/app/NVFragment;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/narvii/app/NVFragment;->localReceivers:Ljava/util/ArrayList;

    .line 36
    :cond_0
    return-void
.end method

.method public static synthetic f(Lcom/narvii/app/NVFragment;Lcom/narvii/app/LifecycleListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/app/NVFragment;->lambda$onPause$1(Lcom/narvii/app/LifecycleListener;)V

    return-void
.end method

.method public static synthetic g(Lcom/narvii/app/NVFragment;Lcom/narvii/app/LifecycleListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/app/NVFragment;->lambda$onResume$0(Lcom/narvii/app/LifecycleListener;)V

    return-void
.end method

.method static bridge synthetic h(Lcom/narvii/app/NVFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/app/NVFragment;->isActive:Z

    return p0
.end method

.method static bridge synthetic i(Lcom/narvii/app/NVFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/app/NVFragment;->isVisibleHint:Z

    return p0
.end method

.method static bridge synthetic j(Lcom/narvii/app/NVFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/app/NVFragment;->lifecycleState:I

    return p0
.end method

.method static bridge synthetic k(Lcom/narvii/app/NVFragment;)Landroid/content/Intent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/app/NVFragment;->loginIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic l(Lcom/narvii/app/NVFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/app/NVFragment;->isActive:Z

    return-void
.end method

.method private synthetic lambda$onPause$1(Lcom/narvii/app/LifecycleListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/narvii/app/LifecycleListener;->lifecycleOnPause(Lcom/narvii/app/LifecycleHost;)V

    .line 4
    return-void
.end method

.method private synthetic lambda$onResume$0(Lcom/narvii/app/LifecycleListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/narvii/app/LifecycleListener;->lifecycleOnResume(Lcom/narvii/app/LifecycleHost;)V

    .line 4
    return-void
.end method

.method static bridge synthetic m(Lcom/narvii/app/NVFragment;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/app/NVFragment;->loginIntent:Landroid/content/Intent;

    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public addWeakLifecycleListener(Lcom/narvii/app/LifecycleListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/app/NVFragment;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method public canScrollUp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected canSendActiveLog(Z)Z
    .locals 2

    iget-boolean v0, p0, Lcom/narvii/app/NVFragment;->isLogLevelActive:Z

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

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
    .param p1    # Lcom/narvii/logging/LogEvent$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/app/NVFragment;->_fromPush:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "pageFromPush"

    .line 7
    .line 8
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 12
    :cond_0
    return-void
.end method

.method protected completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V
    .locals 0
    .param p1    # Lcom/narvii/logging/LogEvent$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    return-void
.end method

.method public ensureLogin(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public ensureLogin(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3

    const-string v0, "account"

    .line 2
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 3
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/narvii/app/NVFragment;->onLoginResult(ZLandroid/content/Intent;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ndc://login"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    const-string v1, "Source"

    .line 8
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "promptType"

    const-string v1, "Required"

    .line 9
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput-object p1, p0, Lcom/narvii/app/NVFragment;->loginIntent:Landroid/content/Intent;

    sget p1, Lcom/narvii/app/NVFragment;->REQUEST_LOGIN:I

    .line 10
    invoke-static {p0, v0, p1}, Lcom/narvii/app/NVFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 11
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->ensureLoginToast()V

    :goto_0
    return-void
.end method

.method protected ensureLoginToast()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget v1, Lcom/narvii/lib/R$string;->login_first:I

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 15
    return-void
.end method

.method public finish()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/app/NVFragment;->isFinishing:Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "finish() ignored in embed fragment"

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget v1, p0, Lcom/narvii/app/NVFragment;->lifecycleState:I

    .line 24
    const/4 v2, -0x1

    .line 25
    .line 26
    if-le v1, v2, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 30
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    instance-of v2, v0, Lcom/narvii/app/NVActivity;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_1
    return v1
.end method

.method public getBooleanParam(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getBooleanParam(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/util/ParamUtils;->getBooleanParam(Landroidx/fragment/app/Fragment;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getCBBLift()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getOnlineBarLift()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getConfigCid()I
    .locals 1

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public getContainerId()Ljava/lang/Integer;
    .locals 4
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return-object v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Landroid/view/ViewGroup;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 34
    move-result v2

    .line 35
    const/4 v3, -0x1

    .line 36
    .line 37
    if-eq v2, v3, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 41
    move-result v0

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v0

    .line 46
    return-object v0

    .line 47
    :cond_1
    return-object v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->cachedAttachedActivity:Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    return-object v0

    .line 20
    .line 21
    :cond_0
    const-string v0, "NVFragment is not attached. returning application context instead."

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 28
    move-result-object v0

    .line 29
    :cond_1
    return-object v0
.end method

.method public getContextId()J
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/narvii/app/NVFragment;->cid:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/narvii/util/Utils;->generateUniqueLongId()J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/narvii/app/NVFragment;->cid:J

    .line 15
    .line 16
    :cond_0
    iget-wide v0, p0, Lcom/narvii/app/NVFragment;->cid:J

    .line 17
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

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getIntParam(Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/util/ParamUtils;->getIntParam(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getLifecycleState()I
    .locals 1

    iget v0, p0, Lcom/narvii/app/NVFragment;->lifecycleState:I

    return v0
.end method

.method public getMenuController()Lcom/narvii/app/NVFragment$MenuController;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->menuController:Lcom/narvii/app/NVFragment$MenuController;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    instance-of v1, v0, Lcom/narvii/app/NVFragment$MenuHost;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    check-cast v0, Lcom/narvii/app/NVFragment$MenuHost;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, p0}, Lcom/narvii/app/NVFragment$MenuHost;->getMenuController(Lcom/narvii/app/NVFragment;)Lcom/narvii/app/NVFragment$MenuController;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/app/NVFragment;->menuController:Lcom/narvii/app/NVFragment$MenuController;

    .line 29
    goto :goto_1

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 33
    move-result-object v0

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->menuController:Lcom/narvii/app/NVFragment$MenuController;

    .line 37
    return-object v0
.end method

.method public getOnlineBarLift()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getPostEntryLift()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "__storyDraftId"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isValidPage()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v0, "story_edit_wildcard"

    .line 17
    return-object v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return-object v0
.end method

.method public getPageRefererInfo()Lcom/narvii/logging/PageRefererInfo;
    .locals 2

    .line 1
    .line 2
    const-string v0, "__pageRefererInfo"

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0, v1}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroidx/fragment/app/Fragment;Ljava/lang/String;Z)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    const-class v1, Lcom/narvii/logging/PageRefererInfo;

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/logging/PageRefererInfo;

    .line 16
    return-object v0
.end method

.method public getParentContext()Lcom/narvii/app/NVContext;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/app/NVContext;

    .line 11
    return-object v0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public getPostEntryLift()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPushTrackId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/app/NVFragment;->_pushTrackId:Ljava/lang/String;

    return-object v0
.end method

.method public getPvId()Ljava/lang/String;
    .locals 1

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/narvii/services/ServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->services:Ljava/util/HashMap;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    :cond_1
    if-nez v0, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-interface {v1, p1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v2, p0, Lcom/narvii/app/NVFragment;->services:Ljava/util/HashMap;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    :cond_2
    if-nez v0, :cond_7

    .line 41
    .line 42
    if-nez v1, :cond_3

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->cachedAttachedActivity:Ljava/lang/ref/WeakReference;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    iget-object v1, p0, Lcom/narvii/app/NVFragment;->services:Ljava/util/HashMap;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-object v0

    .line 67
    .line 68
    .line 69
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    if-nez v0, :cond_5

    .line 73
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    const-string v1, "get "

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v1, " service when NVFragment is "

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    iget v1, p0, Lcom/narvii/app/NVFragment;->lifecycleState:I

    .line 93
    const/4 v2, -0x1

    .line 94
    .line 95
    if-gt v1, v2, :cond_4

    .line 96
    .line 97
    const-string v1, "destoryed"

    .line 98
    goto :goto_1

    .line 99
    .line 100
    :cond_4
    const-string v1, "not attached"

    .line 101
    .line 102
    .line 103
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    .line 110
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 111
    .line 112
    :cond_5
    iget v0, p0, Lcom/narvii/app/NVFragment;->cachedCid:I

    .line 113
    .line 114
    if-lez v0, :cond_6

    .line 115
    .line 116
    .line 117
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 118
    move-result-object v0

    .line 119
    .line 120
    iget v1, p0, Lcom/narvii/app/NVFragment;->cachedCid:I

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1, p1}, Lcom/narvii/app/NVApplication;->getService(ILjava/lang/String;)Ljava/lang/Object;

    .line 124
    move-result-object v0

    .line 125
    goto :goto_2

    .line 126
    .line 127
    .line 128
    :cond_6
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    move-result-object v0

    .line 134
    .line 135
    :goto_2
    if-eqz v0, :cond_7

    .line 136
    .line 137
    iget-object v1, p0, Lcom/narvii/app/NVFragment;->services:Ljava/util/HashMap;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_7
    return-object v0
.end method

.method public getStatusBarAlpha()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getCustomTheme()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sget v1, Lcom/narvii/lib/R$style;->AminoThemeDark_Overlay:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const/16 v0, 0x98

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public getStatusBarOverlaySize()I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    instance-of v2, v0, Lcom/narvii/app/NVActivity;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_1
    return v1
.end method

.method public getStrategyInfo()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    const-string v0, "__strategyInfo"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getStringParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getTotalOverlaySize()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFloatingSwipeable()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sget v1, Lcom/narvii/lib/R$dimen;->swipeable_activity_top_height:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 25
    move-result v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 29
    move-result v1

    .line 30
    add-int/2addr v0, v1

    .line 31
    return v0
.end method

.method public getUserVisibleHint()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/app/NVFragment;->isVisibleHint:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 9
    return-object v0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->hasPostEntry()Ljava/lang/Boolean;

    .line 13
    move-result-object v0

    .line 14
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->menuController:Lcom/narvii/app/NVFragment$MenuController;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p0}, Lcom/narvii/app/NVFragment$MenuController;->invalidateMenu(Lcom/narvii/app/NVFragment;)V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public isActionBarOverlaying()Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    instance-of v2, v0, Lcom/narvii/app/NVActivity;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isActionBarOverlaying()Z

    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_1
    return v1
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/app/NVFragment;->isActive:Z

    return v0
.end method

.method public isCurrentCommunityJoined()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isCurrentCommunityJoined()Z

    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method public isDarkTheme()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/app/NVFragment;->isDarkTheme:Z

    return v0
.end method

.method public isDestoryed()Z
    .locals 2

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

    .line 1
    .line 2
    const-string v0, "__embed"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isFinalPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFinishing()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/app/NVFragment;->isFinishing:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    return v0
.end method

.method public isFloatingSwipeable()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/app/ISwipeableActivity;

    .line 7
    return v0
.end method

.method public isGlobal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGlobalInteractionScope()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "config"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 19
    move-result v0

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    const/4 v1, 0x1

    .line 23
    .line 24
    :cond_0
    const-string v0, "__interactionScope"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 28
    move-result v0

    .line 29
    return v0
.end method

.method public isInVisitorMode()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isInVisitorMode()Z

    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->isRootFragment:Ljava/lang/Boolean;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getRootFragment()Landroidx/fragment/app/Fragment;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-ne v0, p0, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    iput-object v0, p0, Lcom/narvii/app/NVFragment;->isRootFragment:Ljava/lang/Boolean;

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->isRootFragment:Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    move-result v0

    .line 36
    return v0
.end method

.method public isTranslucentStatusBar()Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    instance-of v2, v0, Lcom/narvii/app/NVActivity;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isTranslucentStatusBar()Z

    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isVisitorNotJoined()Z

    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method protected logPageViewEvent()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isValidPage()Z

    .line 4
    move-result v0

    .line 5
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

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 11
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->onLogLevelActiveChanged(Z)V

    .line 4
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarCustomDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->observeThemeDownloadFinish()Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p0}, Lcom/narvii/app/NVActivity;->addThemeDownloadObserver(Lcom/narvii/app/NVFragment;)V

    .line 32
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    sget v0, Lcom/narvii/app/NVFragment;->REQUEST_LOGIN:I

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    new-instance p1, Lcom/narvii/app/NVFragment$8;

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, p0}, Lcom/narvii/app/NVFragment$8;-><init>(Lcom/narvii/app/NVFragment;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 13
    return-void

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 17
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/theme/NVThemeFragment;->onAttach(Landroid/content/Context;)V

    .line 4
    .line 5
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/app/NVFragment;->cachedAttachedActivity:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->_communityId()I

    .line 20
    move-result p1

    .line 21
    .line 22
    iput p1, p0, Lcom/narvii/app/NVFragment;->cachedCid:I

    .line 23
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-string v1, "@@@"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const-string v0, "_pushTrackId"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/app/NVFragment;->_pushTrackId:Ljava/lang/String;

    .line 31
    .line 32
    const-string v0, "_pushIntent"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 36
    move-result v0

    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/narvii/app/NVFragment;->_fromPush:Z

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFinalPage()Z

    .line 42
    move-result v0

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    new-instance v0, Landroid/os/Bundle;

    .line 53
    .line 54
    .line 55
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 59
    .line 60
    :cond_1
    sget-object v1, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    const-string v1, "__pageRefererInfo"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 68
    move-result v2

    .line 69
    .line 70
    if-nez v2, :cond_2

    .line 71
    .line 72
    sget-object v2, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 73
    .line 74
    .line 75
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    move-result-object v2

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    :cond_2
    sget-object v1, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    .line 82
    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    const-string v1, "__strategyInfo"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 89
    move-result v2

    .line 90
    .line 91
    if-nez v2, :cond_3

    .line 92
    .line 93
    sget-object v2, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    :cond_3
    new-instance v0, Lcom/narvii/app/NVFragment$1;

    .line 99
    .line 100
    const-string v1, "__storyDraftId"

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    .line 107
    invoke-direct {v0, p0, p0, p0, v1}, Lcom/narvii/app/NVFragment$1;-><init>(Lcom/narvii/app/NVFragment;Lcom/narvii/app/NVContext;Lcom/narvii/logging/Page;Ljava/lang/String;)V

    .line 108
    .line 109
    iput-object v0, p0, Lcom/narvii/app/NVFragment;->pageViewDelegate:Lcom/narvii/logging/PageViewDelegate;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->resetPvId()V

    .line 113
    const/4 v0, 0x1

    .line 114
    .line 115
    if-nez p1, :cond_5

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 119
    move-result p1

    .line 120
    .line 121
    if-eqz p1, :cond_4

    .line 122
    .line 123
    .line 124
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getCustomTheme()I

    .line 125
    move-result p1

    .line 126
    .line 127
    if-eqz p1, :cond_6

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 131
    move-result-object v1

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 135
    move-result-object v1

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 139
    .line 140
    sget-object p1, Lcom/narvii/lib/R$styleable;->AminoTheme:[I

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 144
    move-result-object p1

    .line 145
    .line 146
    sget v1, Lcom/narvii/lib/R$styleable;->AminoTheme_themeDark:I

    .line 147
    const/4 v2, 0x0

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 151
    move-result v1

    .line 152
    .line 153
    iput-boolean v1, p0, Lcom/narvii/app/NVFragment;->isDarkTheme:Z

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    goto :goto_0

    .line 158
    :catch_0
    move-exception p1

    .line 159
    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    move-result-object v2

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 171
    move-result-object v2

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string v2, " fail to determine dark theme"

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    move-result-object v1

    .line 184
    .line 185
    .line 186
    invoke-static {v1, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    goto :goto_0

    .line 188
    .line 189
    .line 190
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 191
    move-result-object p1

    .line 192
    .line 193
    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    .line 194
    .line 195
    if-eqz p1, :cond_6

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 199
    move-result-object p1

    .line 200
    .line 201
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->isDarkTheme()Z

    .line 205
    move-result p1

    .line 206
    .line 207
    iput-boolean p1, p0, Lcom/narvii/app/NVFragment;->isDarkTheme:Z

    .line 208
    goto :goto_0

    .line 209
    .line 210
    :cond_5
    const-string v1, "__cid"

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 214
    move-result-wide v1

    .line 215
    .line 216
    iput-wide v1, p0, Lcom/narvii/app/NVFragment;->cid:J

    .line 217
    .line 218
    const-string v1, "__loginIntent"

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 222
    move-result-object v1

    .line 223
    .line 224
    check-cast v1, Landroid/content/Intent;

    .line 225
    .line 226
    iput-object v1, p0, Lcom/narvii/app/NVFragment;->loginIntent:Landroid/content/Intent;

    .line 227
    .line 228
    const-string v1, "__isDarkTheme"

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 232
    move-result v1

    .line 233
    .line 234
    iput-boolean v1, p0, Lcom/narvii/app/NVFragment;->isDarkTheme:Z

    .line 235
    .line 236
    const-string v1, "__isRootFragment"

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 240
    move-result v2

    .line 241
    .line 242
    if-eqz v2, :cond_6

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 246
    move-result p1

    .line 247
    .line 248
    .line 249
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 250
    move-result-object p1

    .line 251
    .line 252
    iput-object p1, p0, Lcom/narvii/app/NVFragment;->isRootFragment:Ljava/lang/Boolean;

    .line 253
    .line 254
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/narvii/app/NVFragment;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 255
    .line 256
    if-eqz p1, :cond_7

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1}, Lcom/narvii/services/ServiceManager;->create()V

    .line 260
    .line 261
    :cond_7
    iput v0, p0, Lcom/narvii/app/NVFragment;->lifecycleState:I

    .line 262
    .line 263
    iget-object p1, p0, Lcom/narvii/app/NVFragment;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    .line 264
    .line 265
    if-eqz p1, :cond_8

    .line 266
    .line 267
    new-instance v0, Lcom/narvii/app/NVFragment$2;

    .line 268
    .line 269
    .line 270
    invoke-direct {v0, p0}, Lcom/narvii/app/NVFragment$2;-><init>(Lcom/narvii/app/NVFragment;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 274
    .line 275
    :cond_8
    instance-of p1, p0, Lcom/narvii/notification/NotificationListener;

    .line 276
    .line 277
    if-eqz p1, :cond_9

    .line 278
    .line 279
    const-string p1, "notification"

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 283
    move-result-object p1

    .line 284
    .line 285
    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 286
    move-object v0, p0

    .line 287
    .line 288
    check-cast v0, Lcom/narvii/notification/NotificationListener;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p1, p0, v0}, Lcom/narvii/notification/NotificationCenter;->registerListener(Lcom/narvii/app/NVContext;Lcom/narvii/notification/NotificationListener;)V

    .line 292
    :cond_9
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    iput v0, p0, Lcom/narvii/app/NVFragment;->lifecycleState:I

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/narvii/app/NVFragment$3;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/narvii/app/NVFragment$3;-><init>(Lcom/narvii/app/NVFragment;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 16
    .line 17
    :cond_0
    iget-wide v0, p0, Lcom/narvii/app/NVFragment;->cid:J

    .line 18
    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    cmp-long v0, v0, v2

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const-string v0, "notification"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 32
    const/4 v1, 0x1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p0, v1}, Lcom/narvii/notification/NotificationCenter;->unregisterListener(Lcom/narvii/app/NVContext;Z)V

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->destroy()V

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;->cleanLeakLocalReceivers()V

    .line 46
    .line 47
    .line 48
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 49
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->observeThemeDownloadFinish()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Lcom/narvii/app/NVActivity;->removeThemeDownloadObserver(Lcom/narvii/app/NVFragment;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/theme/NVThemeFragment;->onDestroyView()V

    .line 25
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/app/NVFragment;->isActive:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->canSendActiveLog(Z)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iput-boolean p1, p0, Lcom/narvii/app/NVFragment;->isLogLevelActive:Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->sendPageViewEvent(Z)V

    .line 24
    :cond_1
    return-void
.end method

.method public onLogLevelActiveChanged(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->canSendActiveLog(Z)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/narvii/app/NVFragment;->isLogLevelActive:Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->sendPageViewEvent(Z)V

    .line 12
    :cond_0
    return-void
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 4
    const/4 v0, 0x2

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/app/NVFragment;->lifecycleState:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/narvii/app/j;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/narvii/app/j;-><init>(Lcom/narvii/app/NVFragment;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 19
    .line 20
    :cond_0
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/app/NVFragment;->refreshActive:Ljava/lang/Runnable;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->refreshActive:Ljava/lang/Runnable;

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->pause()V

    .line 38
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

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    sget-boolean p1, Lcom/narvii/permisson/PermissionRationaleDialog;->isShowing:Z

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
    invoke-static {p1}, Lcom/narvii/permisson/PermissionRationaleDialog;->builder(Landroid/content/Context;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p3}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->setRationalePermissionList(Ljava/util/List;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p3}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->setDeniedPermissionList(Ljava/util/List;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->show()V

    .line 26
    :cond_0
    return-void
.end method

.method public onPermissionGranted(I)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->permissionArray:Landroid/util/SparseArray;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/permisson/PermissionListener;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0, p1, p2, p3}, Lcom/narvii/permisson/NVPermission;->onRequestPermissionResult(Landroidx/fragment/app/Fragment;Lcom/narvii/permisson/PermissionListener;I[Ljava/lang/String;[I)V

    .line 16
    return-void

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {p0, p0, p1, p2, p3}, Lcom/narvii/permisson/NVPermission;->onRequestPermissionResult(Landroidx/fragment/app/Fragment;Lcom/narvii/permisson/PermissionListener;I[Ljava/lang/String;[I)V

    .line 20
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->resume()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/narvii/app/NVFragment;->isVisibleHint:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setVisibleHint(Z)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_1
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/app/NVFragment;->refreshActive:Ljava/lang/Runnable;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->refreshActive:Ljava/lang/Runnable;

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 31
    :goto_0
    const/4 v0, 0x3

    .line 32
    .line 33
    iput v0, p0, Lcom/narvii/app/NVFragment;->lifecycleState:I

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    new-instance v1, Lcom/narvii/app/i;

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, p0}, Lcom/narvii/app/i;-><init>(Lcom/narvii/app/NVFragment;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 46
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/narvii/app/NVFragment;->cid:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v2, v0, v2

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const-string v2, "__cid"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->loginIntent:Landroid/content/Intent;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const-string v1, "__loginIntent"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 26
    .line 27
    :cond_1
    const-string v0, "__isDarkTheme"

    .line 28
    .line 29
    iget-boolean v1, p0, Lcom/narvii/app/NVFragment;->isDarkTheme:Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->isRootFragment:Ljava/lang/Boolean;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    const-string v1, "__isRootFragment"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    move-result v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    .line 47
    :cond_2
    new-instance v0, Lcom/narvii/app/NVFragment$4;

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, p0, p1}, Lcom/narvii/app/NVFragment$4;-><init>(Lcom/narvii/app/NVFragment;Landroid/os/Bundle;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 54
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->start()V

    .line 8
    :cond_0
    const/4 v0, 0x2

    .line 9
    .line 10
    iput v0, p0, Lcom/narvii/app/NVFragment;->lifecycleState:I

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/app/NVFragment$5;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/narvii/app/NVFragment$5;-><init>(Lcom/narvii/app/NVFragment;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-super {p0}, Lcom/narvii/app/theme/NVThemeFragment;->onStart()V

    .line 26
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/app/NVFragment;->lifecycleState:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/narvii/app/NVFragment$6;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/narvii/app/NVFragment$6;-><init>(Lcom/narvii/app/NVFragment;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->stop()V

    .line 26
    :cond_1
    return-void
.end method

.method public onThemeDownloadFinish()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/app/NVFragment;->lifecycleState:I

    .line 3
    const/4 v1, 0x3

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->updateThemeUI()V

    .line 9
    .line 10
    instance-of v0, p0, Lcom/narvii/theme/IFakeActionBar;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    move-object v0, p0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/theme/IFakeActionBar;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Lcom/narvii/theme/IFakeActionBar;->updateFakeActionBarThemeUI()V

    .line 19
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/theme/NVThemeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p0}, Lcom/narvii/logging/LogUtils;->tagFragment(Landroid/view/View;Lcom/narvii/app/NVFragment;)V

    .line 7
    return-void
.end method

.method public registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/app/NVFragment;->lifecycleState:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-gt v0, v1, :cond_0

    .line 6
    .line 7
    const-string v0, "register local broadcast receiver after destory"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/app/NVFragment;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 30
    .line 31
    iget-object p2, p0, Lcom/narvii/app/NVFragment;->localReceivers:Ljava/util/ArrayList;

    .line 32
    .line 33
    if-nez p2, :cond_2

    .line 34
    .line 35
    new-instance p2, Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    iput-object p2, p0, Lcom/narvii/app/NVFragment;->localReceivers:Ljava/util/ArrayList;

    .line 41
    .line 42
    :cond_2
    iget-object p2, p0, Lcom/narvii/app/NVFragment;->localReceivers:Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    .line 49
    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v0

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    .line 55
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    if-ne v0, p1, :cond_3

    .line 65
    return-void

    .line 66
    .line 67
    :cond_4
    iget-object p2, p0, Lcom/narvii/app/NVFragment;->localReceivers:Ljava/util/ArrayList;

    .line 68
    .line 69
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public registerPermissionResult(ILcom/narvii/permisson/PermissionListener;)V
    .locals 1

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->permissionArray:Landroid/util/SparseArray;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Landroid/util/SparseArray;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/app/NVFragment;->permissionArray:Landroid/util/SparseArray;

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->permissionArray:Landroid/util/SparseArray;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    return-void
.end method

.method public removeWeakLifecycleListener(Lcom/narvii/app/LifecycleListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 8
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getPageName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/app/NVFragment;->pvId:Ljava/lang/String;

    .line 17
    :cond_0
    return-void
.end method

.method public sendNotification(Lcom/narvii/notification/Notification;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "notification"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 12
    return-void
.end method

.method protected sendPageViewEvent(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->pageViewDelegate:Lcom/narvii/logging/PageViewDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/logging/PageViewDelegate;->sendPageViewEvent(Z)V

    .line 6
    return-void
.end method

.method protected sendPageViewEventToThirdParty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setActionBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVActivity;->setActionBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 21
    :cond_1
    return-void
.end method

.method public setActionBarBackgroundDefault()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->setActionBarBackgroundDefault()V

    .line 21
    :cond_1
    return-void
.end method

.method public setActionBarCustomDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-static {p0, p1}, Lcom/narvii/util/statusbar/StatusBarUtils;->setTranslucentStatusBar(Lcom/narvii/app/NVContext;Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    sget-boolean v0, Lcom/narvii/util/statusbar/StatusBarUtils;->STATUS_BAR_ENABLE:Z

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 21
    :cond_2
    return-void
.end method

.method public setActionBarLeftView(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVActivity;->setActionBarLeftView(Landroid/view/View;)V

    .line 21
    :cond_1
    return-void
.end method

.method public setActionBarRightButton(ILandroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->setActionBarRightButton(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setActionBarRightButton(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    sget-object v0, Lcom/narvii/app/NVFragment;->ACTIONBAR_RIGHT_BUTTON_DEFAULT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/app/NVFragment;->setActionBarRightButton(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setActionBarRightButton(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 4
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/narvii/app/NVFragment;->ACTIONBAR_RIGHT_BUTTON_DEFAULT:Landroid/graphics/drawable/Drawable;

    if-ne p2, v1, :cond_1

    .line 7
    move-object p2, v0

    check-cast p2, Lcom/narvii/app/NVActivity;

    invoke-virtual {p2}, Lcom/narvii/app/NVActivity;->getRightButtonDefaultBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 8
    :cond_1
    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->setActionBarRightButton(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public setActionBarRightButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1

    sget-object v0, Lcom/narvii/app/NVFragment;->ACTIONBAR_RIGHT_BUTTON_DEFAULT:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/app/NVFragment;->setActionBarRightButton(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setActionBarRightView(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVActivity;->setActionBarRightView(Landroid/view/View;)V

    .line 21
    :cond_1
    return-void
.end method

.method public setActionBarTitleColor(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVActivity;->setActionBarTitleColor(I)V

    .line 21
    :cond_1
    return-void
.end method

.method public setActionBarTitleView(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVActivity;->setActionBarTitleView(Landroid/view/View;)V

    .line 21
    :cond_1
    return-void
.end method

.method public setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVActivity;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    :cond_1
    return-void
.end method

.method public setBackButtonTint(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVActivity;->setBackButtonTint(I)V

    .line 21
    :cond_1
    return-void
.end method

.method public setCrossBackIcon()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    sget v1, Lcom/narvii/lib/R$id;->actionbar_back:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    check-cast v0, Landroid/widget/ImageView;

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    sget v1, Lcom/narvii/lib/R$drawable;->ic_back_cross:I

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .line 51
    const-string v1, "fail to set cross back icon"

    .line 52
    .line 53
    .line 54
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    :cond_0
    :goto_0
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/app/NVFragment;->isDarkTheme:Z

    return-void
.end method

.method public setEmbedServiceManager(Lcom/narvii/services/ServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/app/NVFragment;->serviceManager:Lcom/narvii/services/ServiceManager;

    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getMenuController()Lcom/narvii/app/NVFragment$MenuController;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p0}, Lcom/narvii/app/NVFragment$MenuController;->registerMenu(Lcom/narvii/app/NVFragment;)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-interface {v0, p0}, Lcom/narvii/app/NVFragment$MenuController;->unregisterMenu(Lcom/narvii/app/NVFragment;)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 26
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

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method public setResult(ILandroid/content/Intent;)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/narvii/app/NVFragment;->lifecycleState:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setScreenName(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->setScreenName(Ljava/lang/String;)V

    .line 12
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setVisibleHint(Z)V

    .line 7
    return-void
.end method

.method public setVisibleHint(Z)V
    .locals 2

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/app/NVFragment;->isVisibleHint:Z

    .line 3
    .line 4
    iget v0, p0, Lcom/narvii/app/NVFragment;->lifecycleState:I

    .line 5
    const/4 v1, 0x3

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->updateChildrenVisibleHint(Z)V

    .line 11
    .line 12
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->refreshActive:Ljava/lang/Runnable;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/app/NVFragment;->refreshActive:Ljava/lang/Runnable;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 23
    :cond_0
    return-void
.end method

.method public shouldShowLoginPage()Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    .line 18
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    .line 25
    const/4 v0, 0x1

    .line 26
    return v0
.end method

.method public shouldShowPageBackground()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->shouldShowPageBackground()Z

    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method public showImageToast(I)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    move-object v1, v0

    .line 14
    .line 15
    check-cast v1, Lcom/narvii/app/NVActivity;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    sget v2, Lcom/narvii/lib/R$drawable;->check:I

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    sget v4, Lcom/narvii/lib/R$anim;->toast_scale_in:I

    .line 36
    .line 37
    const-wide/16 v5, 0x1f4

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/app/NVActivity;->toastImageWithText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IJ)V

    .line 41
    goto :goto_0

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 45
    move-result-object v0

    .line 46
    const/4 v1, 0x0

    .line 47
    .line 48
    .line 49
    invoke-static {v0, p1, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 54
    :goto_0
    return-void
.end method

.method public showShortToast(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->showShortToast(Ljava/lang/String;)V

    return-void
.end method

.method public showShortToast(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
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

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->permissionArray:Landroid/util/SparseArray;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-ne v0, p2, :cond_1

    .line 14
    .line 15
    iget-object p2, p0, Lcom/narvii/app/NVFragment;->permissionArray:Landroid/util/SparseArray;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 19
    :cond_1
    return-void
.end method

.method public unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVFragment;->localReceivers:Ljava/util/ArrayList;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    if-ne v1, p1, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    return-void
.end method

.method protected updateChildrenVisibleHint(Z)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->B0()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 27
    .line 28
    instance-of v2, v1, Lcom/narvii/app/NVFragment;

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    check-cast v1, Lcom/narvii/app/NVFragment;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Lcom/narvii/app/NVFragment;->setVisibleHint(Z)V

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method public updateThemeUI()V
    .locals 0

    return-void
.end method
