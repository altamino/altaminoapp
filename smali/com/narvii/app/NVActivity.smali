.class public Lcom/narvii/app/NVActivity;
.super Lcom/narvii/app/theme/NVThemeActivity;
.source "NVActivity.java"

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
        Lcom/narvii/app/NVActivity$ResetStartingActivity;,
        Lcom/narvii/app/NVActivity$CleanLeakReceivers;,
        Lcom/narvii/app/NVActivity$DispatchTouchEventListener;
    }
.end annotation


# static fields
.field public static final BACK_CLICK_LISTENER:Landroid/view/View$OnClickListener;

.field private static BACK_RECORDS:[J = null

.field public static final COMMUNITY_ID:Ljava/lang/String; = "__communityId"

.field public static final INTERACTION_SCOPE:Ljava/lang/String; = "__interactionScope"

.field public static final REQUEST_ATO:I = 0x4f

.field private static final REQUEST_LOGIN:I

.field public static final REQUEST_MAPPING_MASK:I = 0xe800

.field public static final THEME_ACTIONBAR_OVERLAY:I = 0x2

.field public static final THEME_AMINO:I = 0x1

.field public static final THEME_DARK:I = 0x8

.field public static final THEME_TRANSPARENT_STATUS:I = 0x4

.field private static final hsv:[F

.field private static pendingForAttach:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/app/NVActivity;",
            ">;"
        }
    .end annotation
.end field

.field private static pendingForAttachExpires:J

.field private static final state_normal:[I

.field private static final state_pressed:[I

.field private static trackStartActivityTmp:Lcom/narvii/util/statistics/TmpValue;

.field public static userTouching:Z


# instance fields
.field _fromPush:Z

.field _pushTrackId:Ljava/lang/String;

.field private abAvailable:Z

.field private abFlags:I

.field private abInited:Z

.field private abTitle:Landroid/widget/TextView;

.field private actionBarCustomed:Z

.field private activeCid:I

.field private activityRequestMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field affiliationsService:Lcom/narvii/community/AffiliationsService;

.field private atoDialog:Lcom/narvii/widget/ACMAlertDialog;

.field private atoDialogMessage:Ljava/lang/String;

.field private final backListener:Landroid/view/View$OnClickListener;

.field private cid:J

.field protected final crashlyticsParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected crashlyticsStatus:I

.field private dispatchTouchEventListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/app/NVActivity$DispatchTouchEventListener;",
            ">;"
        }
    .end annotation
.end field

.field inVisitorMode:Z

.field private initStatus:I

.field public initTaskActivity:Z

.field private isStartingActivity:Z

.field private joinCommunityDialog:Landroid/app/Dialog;

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

.field newCreate:Z

.field private newIntent:Landroid/content/Intent;

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

.field pvId:Ljava/lang/String;

.field private requireAccountReceiver:Landroid/content/BroadcastReceiver;

.field private resetStartingActivity:Ljava/lang/Runnable;

.field private resetTaskId:I

.field public restoreProcess:Z

.field private serviceManager:Lcom/narvii/services/ServiceManager;

.field private statsCid:I

.field protected themeDownloadObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/app/NVFragment;",
            ">;"
        }
    .end annotation
.end field

.field updateVisitorModePending:Z

.field visitorModeListener:Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 110
    sget v0, Lcom/narvii/lib/R$id;->login:I

    const v1, 0xffff

    and-int/2addr v0, v1

    sput v0, Lcom/narvii/app/NVActivity;->REQUEST_LOGIN:I

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 1281
    sput-object v1, Lcom/narvii/app/NVActivity;->hsv:[F

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    .line 1282
    sput-object v1, Lcom/narvii/app/NVActivity;->state_pressed:[I

    new-array v1, v2, [I

    .line 1283
    sput-object v1, Lcom/narvii/app/NVActivity;->state_normal:[I

    .line 1611
    new-instance v1, Lcom/narvii/util/statistics/TmpValue;

    invoke-direct {v1}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    sput-object v1, Lcom/narvii/app/NVActivity;->trackStartActivityTmp:Lcom/narvii/util/statistics/TmpValue;

    new-array v0, v0, [J

    .line 1833
    sput-object v0, Lcom/narvii/app/NVActivity;->BACK_RECORDS:[J

    .line 2020
    new-instance v0, Lcom/narvii/app/NVActivity$15;

    invoke-direct {v0}, Lcom/narvii/app/NVActivity$15;-><init>()V

    sput-object v0, Lcom/narvii/app/NVActivity;->BACK_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 108
    invoke-direct {p0}, Lcom/narvii/app/theme/NVThemeActivity;-><init>()V

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/narvii/app/NVActivity;->actionBarCustomed:Z

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/NVActivity;->themeDownloadObservers:Ljava/util/List;

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/narvii/app/NVActivity;->visitorModeListener:Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;

    const/4 v0, -0x1

    .line 897
    iput v0, p0, Lcom/narvii/app/NVActivity;->statsCid:I

    .line 898
    iput v0, p0, Lcom/narvii/app/NVActivity;->activeCid:I

    .line 1361
    new-instance v0, Lcom/narvii/app/NVActivity$11;

    invoke-direct {v0, p0}, Lcom/narvii/app/NVActivity$11;-><init>(Lcom/narvii/app/NVActivity;)V

    iput-object v0, p0, Lcom/narvii/app/NVActivity;->backListener:Landroid/view/View$OnClickListener;

    .line 1386
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/app/NVActivity;->crashlyticsParams:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$202(Lcom/narvii/app/NVActivity;Z)Z
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/narvii/app/NVActivity;->isStartingActivity:Z

    return p1
.end method

.method static synthetic access$300(Lcom/narvii/app/NVActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/narvii/app/NVActivity;->resetStartingActivity:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$302(Lcom/narvii/app/NVActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/narvii/app/NVActivity;->resetStartingActivity:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/narvii/app/NVActivity;)Landroid/content/Intent;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/narvii/app/NVActivity;->loginIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$402(Lcom/narvii/app/NVActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/narvii/app/NVActivity;->loginIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$500(Lcom/narvii/app/NVActivity;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/narvii/app/NVActivity;->startRemoveViewAnimation(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/app/NVActivity;)Lcom/narvii/widget/ACMAlertDialog;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/narvii/app/NVActivity;->atoDialog:Lcom/narvii/widget/ACMAlertDialog;

    return-object p0
.end method

.method static synthetic access$602(Lcom/narvii/app/NVActivity;Lcom/narvii/widget/ACMAlertDialog;)Lcom/narvii/widget/ACMAlertDialog;
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/narvii/app/NVActivity;->atoDialog:Lcom/narvii/widget/ACMAlertDialog;

    return-object p1
.end method

.method static synthetic access$702(Lcom/narvii/app/NVActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/narvii/app/NVActivity;->atoDialogMessage:Ljava/lang/String;

    return-object p1
.end method

.method private static addBack()V
    .locals 7

    const/4 v0, 0x0

    const-wide v1, 0x7fffffffffffffffL

    move-wide v2, v1

    const/4 v1, 0x0

    .line 1844
    :goto_0
    sget-object v4, Lcom/narvii/app/NVActivity;->BACK_RECORDS:[J

    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 1845
    aget-wide v5, v4, v0

    cmp-long v4, v5, v2

    if-gez v4, :cond_0

    move v1, v0

    move-wide v2, v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1851
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    aput-wide v2, v4, v1

    return-void
.end method

.method public static addPendingForAttach(Lcom/narvii/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/app/NVActivity;",
            ">;)V"
        }
    .end annotation

    .line 2016
    sput-object p0, Lcom/narvii/app/NVActivity;->pendingForAttach:Lcom/narvii/util/Callback;

    .line 2017
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    sput-wide v0, Lcom/narvii/app/NVActivity;->pendingForAttachExpires:J

    return-void
.end method

.method private cleanLeakLocalReceivers()V
    .locals 3

    .line 857
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/app/NVActivity;->localReceivers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 858
    new-instance v0, Lcom/narvii/app/NVActivity$CleanLeakReceivers;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/app/NVActivity$CleanLeakReceivers;-><init>(Lcom/narvii/app/NVActivity$1;)V

    .line 859
    iget-object v2, p0, Lcom/narvii/app/NVActivity;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iput-object v2, v0, Lcom/narvii/app/NVActivity$CleanLeakReceivers;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    .line 860
    iget-object v2, p0, Lcom/narvii/app/NVActivity;->localReceivers:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/narvii/app/NVActivity$CleanLeakReceivers;->list:Ljava/util/ArrayList;

    .line 861
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 862
    iput-object v1, p0, Lcom/narvii/app/NVActivity;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 863
    iput-object v1, p0, Lcom/narvii/app/NVActivity;->localReceivers:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method private forceEllipsize()V
    .locals 3

    .line 1152
    :try_start_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1153
    const-class v1, Landroid/view/ViewConfiguration;

    const-string/jumbo v2, "sHasPermanentMenuKey"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 1155
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 1156
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static getRightButtonBackground(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1295
    sget-object v0, Lcom/narvii/app/NVActivity;->hsv:[F

    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1296
    sget-object v0, Lcom/narvii/app/NVActivity;->hsv:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float v2, v2, v3

    aput v2, v0, v1

    .line 1297
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 1299
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$dimen;->actionbar_button_corner_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 1302
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v3}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 1303
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1304
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1305
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    new-instance v3, Landroid/graphics/CornerPathEffect;

    invoke-direct {v3, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1307
    new-instance p0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v3}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {p0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 1308
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1309
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1310
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    new-instance v3, Landroid/graphics/CornerPathEffect;

    invoke-direct {v3, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1312
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1313
    sget-object v1, Lcom/narvii/app/NVActivity;->state_pressed:[I

    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1314
    sget-object p0, Lcom/narvii/app/NVActivity;->state_normal:[I

    invoke-virtual {v0, p0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private static getStartActivityTrack(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    .line 1639
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    const-string v2, "__trackStartActivityId"

    .line 1642
    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 1643
    sget-object v2, Lcom/narvii/app/NVActivity;->trackStartActivityTmp:Lcom/narvii/util/statistics/TmpValue;

    invoke-virtual {v2}, Lcom/narvii/util/statistics/TmpValue;->getAndRemove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1645
    aget-object v0, v2, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    .line 1646
    aget-object p0, v2, p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    return-object v1
.end method

.method private inheritIntent(Landroid/content/Intent;Landroid/support/v4/app/Fragment;)V
    .locals 7

    const-string v0, "__interactionScope"

    .line 1521
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "config"

    const-string v4, "__communityId"

    const/4 v5, 0x0

    if-nez v1, :cond_3

    .line 1522
    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1523
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 1524
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1525
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 1527
    :cond_1
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 1528
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 1529
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1532
    :cond_3
    :goto_1
    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1533
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 1534
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    .line 1535
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_4
    const-string v1, "__pageRefererInfo"

    .line 1538
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1539
    sget-object v6, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    if-eqz v6, :cond_5

    .line 1541
    invoke-static {v6}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 1543
    :cond_5
    instance-of v6, p2, Lcom/narvii/app/NVContext;

    if-eqz v6, :cond_6

    check-cast p2, Lcom/narvii/app/NVContext;

    goto :goto_2

    :cond_6
    move-object p2, p0

    :goto_2
    invoke-static {p2}, Lcom/narvii/logging/LogUtils;->getLogContextInfo(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogContextInfo;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 1544
    iget-object p2, p2, Lcom/narvii/logging/LogContextInfo;->pageName:Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 1545
    new-instance v6, Lcom/narvii/logging/PageRefererInfo;

    invoke-direct {v6, p2}, Lcom/narvii/logging/PageRefererInfo;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    :goto_3
    const-string p2, "__strategyInfo"

    .line 1550
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1551
    sget-object v1, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1552
    sget-object v1, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 1554
    :cond_8
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_9
    :goto_4
    const-string p2, "__storyDraftId"

    .line 1558
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "__ignoreStoryDraftId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1559
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_a
    const-string p2, "__model"

    .line 1562
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1563
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 1564
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    if-eqz v1, :cond_b

    .line 1565
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1567
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_5

    .line 1569
    :cond_b
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isModel()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_c
    :goto_5
    const-string p2, "__community"

    .line 1572
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1573
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_d
    const-string p2, "__fromGlobalChat"

    .line 1575
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1576
    invoke-virtual {p0, p2, v5}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_e
    const-string p2, "__hideDrawer"

    .line 1579
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1580
    invoke-virtual {p0, p2, v5}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_f
    const-string p2, "__visitorMode"

    .line 1582
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1583
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getConfigCid()I

    move-result v0

    const/4 v1, -0x1

    .line 1584
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_10

    if-lez v0, :cond_10

    .line 1586
    invoke-virtual {p0, p2, v5}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_10
    return-void
.end method

.method protected static isBackTooFast()Z
    .locals 11

    .line 1856
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1857
    sget-object v2, Lcom/narvii/app/NVActivity;->BACK_RECORDS:[J

    array-length v3, v2

    const/4 v4, 0x0

    const-wide v5, 0x7fffffffffffffffL

    move-wide v6, v5

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-wide v8, v2, v5

    cmp-long v10, v8, v6

    if-gez v10, :cond_0

    move-wide v6, v8

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    sub-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v5, v0, v2

    if-lez v5, :cond_2

    const-wide/16 v2, 0x4b0

    cmp-long v5, v0, v2

    if-gez v5, :cond_2

    const/4 v4, 0x1

    :cond_2
    return v4
.end method

.method static justStartActivity(Landroid/content/Intent;)Z
    .locals 8

    .line 1653
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1657
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 1658
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1661
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_e

    aget-object v5, v0, v3

    .line 1662
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, ""

    :cond_1
    const-string v6, "com.facebook.ads."

    .line 1664
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    :cond_2
    :goto_1
    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const-string v6, "com.amazon.device.ads."

    .line 1666
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    const-string v6, "com.mopub."

    .line 1668
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_1

    :cond_5
    const-string v6, "com.fyber."

    .line 1670
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_1

    :cond_6
    const-string v6, "com.inmobi."

    .line 1672
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_1

    :cond_7
    const-string v6, "com.applovin."

    .line 1674
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_1

    :cond_8
    const-string v6, "com.verizon.ads."

    .line 1676
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_1

    :cond_9
    const-string v6, "com.tapjoy."

    .line 1678
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_1

    :cond_a
    const-string v6, "com.tapdaq."

    .line 1680
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_1

    :cond_b
    const-string v6, "com.taboola."

    .line 1682
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "com.outbrain."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_1

    :cond_c
    :goto_2
    if-eqz v4, :cond_d

    goto :goto_3

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_e
    :goto_3
    if-eqz v4, :cond_f

    .line 1692
    invoke-static {p0}, Lcom/narvii/app/NVActivity;->openWebUrlDirectly(Landroid/content/Intent;)Z

    move-result p0

    return p0

    :cond_f
    return v1
.end method

.method private logActive()V
    .locals 3

    const-string v0, "_communityActiveHelper"

    .line 924
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/CommunityActiveHelper;

    if-eqz v0, :cond_1

    .line 926
    iget v1, p0, Lcom/narvii/app/NVActivity;->activeCid:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v1, "config"

    .line 927
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 928
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    iput v1, p0, Lcom/narvii/app/NVActivity;->activeCid:I

    .line 930
    :cond_0
    iget v1, p0, Lcom/narvii/app/NVActivity;->activeCid:I

    if-eqz v1, :cond_1

    .line 931
    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityActiveHelper;->logActive(I)V

    :cond_1
    return-void
.end method

.method static openWebUrlDirectly(Landroid/content/Intent;)Z
    .locals 7

    .line 1699
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1700
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v3, "http"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v3, "https"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1703
    new-instance v3, Lcom/narvii/util/PackageUtils;

    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 1704
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/narvii/util/PackageUtils;->isPermalinkHost(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    :cond_2
    if-eqz v0, :cond_c

    .line 1710
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v3, 0x10000

    .line 1712
    invoke-virtual {v0, p0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1713
    iget-boolean v4, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eqz v4, :cond_3

    .line 1714
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return v1

    .line 1717
    :cond_3
    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1718
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_c

    .line 1719
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1721
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1723
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.android.chrome"

    .line 1724
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x63

    goto :goto_2

    :cond_5
    const-string v6, "com.chrome.beta"

    .line 1727
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0x62

    goto :goto_2

    :cond_6
    const-string v6, "com.chrome.dev"

    .line 1730
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x61

    goto :goto_2

    :cond_7
    const-string v6, "com.chrome.canary"

    .line 1733
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0x60

    goto :goto_2

    :cond_8
    const-string v6, "com.sec.android.app.sbrowser"

    .line 1736
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/16 v6, 0x59

    goto :goto_2

    :cond_9
    const-string v6, "org.mozilla.firefox"

    .line 1739
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v6, 0x45

    goto :goto_2

    :cond_a
    const/4 v6, 0x0

    :goto_2
    if-le v6, v3, :cond_4

    .line 1743
    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v5, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move v3, v6

    goto :goto_1

    :cond_b
    return v1

    :cond_c
    return v2
.end method

.method private startRemoveViewAnimation(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2

    .line 1914
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$anim;->fade_out_fast:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1915
    new-instance v1, Lcom/narvii/app/NVActivity$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/app/NVActivity$14;-><init>(Lcom/narvii/app/NVActivity;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1931
    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static trackStartActivity(Landroid/content/Intent;)V
    .locals 7

    .line 1614
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-nez v0, :cond_0

    return-void

    .line 1617
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 1618
    array-length v1, v0

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    :goto_0
    if-lez v1, :cond_3

    .line 1619
    aget-object v3, v0, v1

    .line 1620
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "startActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 1621
    aget-object v0, v0, v1

    .line 1622
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x2e

    .line 1623
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-lez v4, :cond_1

    add-int/2addr v4, v3

    .line 1625
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1627
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "():"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1628
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 1629
    sget-object v4, Lcom/narvii/app/NVActivity;->trackStartActivityTmp:Lcom/narvii/util/statistics/TmpValue;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    aput-object v0, v2, v3

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v2, v5, v6}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;J)V

    const-string v0, "__trackStartActivityId"

    .line 1630
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catch_0
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public _communityId()I
    .locals 3

    .line 769
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isGlobal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 772
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "__communityId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public addDispatchTouchEventListener(Lcom/narvii/app/NVActivity$DispatchTouchEventListener;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->dispatchTouchEventListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/NVActivity;->dispatchTouchEventListeners:Ljava/util/ArrayList;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->dispatchTouchEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addThemeDownloadObserver(Lcom/narvii/app/NVFragment;)V
    .locals 1

    .line 2311
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->themeDownloadObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addWeakLifecycleListener(Lcom/narvii/app/LifecycleListener;)V
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    if-nez v0, :cond_0

    .line 803
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/NVActivity;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 259
    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    .line 260
    iget-object p1, p0, Lcom/narvii/app/NVActivity;->serviceManager:Lcom/narvii/services/ServiceManager;

    if-nez p1, :cond_0

    .line 261
    new-instance p1, Lcom/narvii/services/ServiceManager;

    invoke-direct {p1, p0}, Lcom/narvii/services/ServiceManager;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/app/NVActivity;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 262
    iget-object p1, p0, Lcom/narvii/app/NVActivity;->serviceManager:Lcom/narvii/services/ServiceManager;

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->initServiceManager(Lcom/narvii/services/ServiceManager;)V

    :cond_0
    return-void
.end method

.method public bottomPadding(Lcom/narvii/app/NVFragment;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public canScrollUp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public clearToast()V
    .locals 2

    const v0, 0x1020002

    .line 1985
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 1989
    :cond_0
    sget v1, Lcom/narvii/lib/R$id;->toast_frame:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1991
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1992
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V
    .locals 2

    .line 201
    iget-boolean v0, p0, Lcom/narvii/app/NVActivity;->_fromPush:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 202
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

.method public configPageBackground()V
    .locals 6

    .line 1039
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$id;->page_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1040
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v0, :cond_0

    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    return-void

    .line 1044
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1045
    new-instance v2, Lcom/narvii/theme/PageBackgroundView;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/narvii/theme/PageBackgroundView;-><init>(Landroid/content/Context;)V

    const-string v4, "config"

    .line 1046
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/config/ConfigService;

    .line 1047
    invoke-virtual {v4}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v5

    invoke-interface {v5}, Lcom/narvii/config/ConfigTheme;->pageBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1048
    invoke-virtual {v2, v5}, Lcom/narvii/theme/PageBackgroundView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1049
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->showThemeColorAsAlternativeBackground()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v4}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v4

    invoke-interface {v4}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v4

    invoke-direct {v5, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1050
    sget v4, Lcom/narvii/lib/R$id;->page_background:I

    invoke-virtual {v2, v4, v3}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 1051
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1052
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$id;->page_background:I

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 903
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 907
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 909
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string/jumbo p1, "stats"

    .line 910
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/stats/StatsService;

    if-eqz p1, :cond_2

    .line 912
    iget v1, p0, Lcom/narvii/app/NVActivity;->statsCid:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const-string v1, "config"

    .line 913
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 914
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    iput v1, p0, Lcom/narvii/app/NVActivity;->statsCid:I

    .line 916
    :cond_1
    iget v1, p0, Lcom/narvii/app/NVActivity;->statsCid:I

    invoke-virtual {p1, v1}, Lcom/narvii/util/stats/StatsService;->touchOrResume(I)V

    .line 918
    :cond_2
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;->logActive()V

    :cond_3
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 938
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->dispatchTouchEventListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 940
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/app/NVActivity$DispatchTouchEventListener;

    .line 941
    invoke-interface {v1}, Lcom/narvii/app/NVActivity$DispatchTouchEventListener;->onDispatchTouchEvent()V

    goto :goto_0

    .line 945
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 946
    sput-boolean v1, Lcom/narvii/app/NVActivity;->userTouching:Z

    goto :goto_1

    .line 947
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v0, 0x0

    .line 948
    sput-boolean v0, Lcom/narvii/app/NVActivity;->userTouching:Z

    .line 951
    :cond_3
    :goto_1
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 952
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/TouchTrackUtils;->findTouchTargetView(Landroid/view/Window;)Landroid/view/View;

    move-result-object v0

    .line 953
    invoke-static {v0}, Lcom/narvii/util/TouchTrackUtils;->getViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TouchTrack"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    :cond_4
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 957
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_7

    const-string/jumbo p1, "stats"

    .line 958
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/stats/StatsService;

    if-eqz p1, :cond_6

    .line 960
    iget v1, p0, Lcom/narvii/app/NVActivity;->statsCid:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    const-string v1, "config"

    .line 961
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 962
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    iput v1, p0, Lcom/narvii/app/NVActivity;->statsCid:I

    .line 964
    :cond_5
    iget v1, p0, Lcom/narvii/app/NVActivity;->statsCid:I

    invoke-virtual {p1, v1}, Lcom/narvii/util/stats/StatsService;->touchOrResume(I)V

    .line 966
    :cond_6
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;->logActive()V

    :cond_7
    return v0
.end method

.method public ensureLogin(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 1767
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVActivity;->ensureLogin(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public ensureLogin(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3

    const-string v0, "account"

    .line 1771
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 1772
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    .line 1773
    invoke-virtual {p0, p2, p1}, Lcom/narvii/app/NVActivity;->onLoginResult(ZLandroid/content/Intent;)V

    goto :goto_1

    .line 1775
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ndc://login"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "Source"

    .line 1776
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "promptType"

    const-string v1, "Required"

    .line 1777
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1778
    iput-object p1, p0, Lcom/narvii/app/NVActivity;->loginIntent:Landroid/content/Intent;

    .line 1780
    :try_start_0
    sget p1, Lcom/narvii/app/NVActivity;->REQUEST_LOGIN:I

    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p1, "unable to start login activity"

    .line 1782
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 1785
    :goto_0
    sget p1, Lcom/narvii/lib/R$string;->login_first:I

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :goto_1
    return-void
.end method

.method public finish()V
    .locals 4

    .line 783
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 784
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "customFinishAnimIn"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 786
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "customFinishAnimOut"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 787
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionBarOverlaySize()I
    .locals 1

    .line 1147
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isActionBarOverlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/narvii/util/Utils;->getActionBarHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getActionbarLayoutId(ZII)I
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    return p2
.end method

.method public getAtoMessage()Ljava/lang/String;
    .locals 1

    .line 2285
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->atoDialogMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getBooleanParam(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 723
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getBooleanParam(Ljava/lang/String;Z)Z
    .locals 2

    .line 712
    invoke-static {p0, p1, p2}, Lcom/narvii/util/ParamUtils;->getBooleanParam(Landroid/app/Activity;Ljava/lang/String;Z)Z

    move-result p2

    .line 713
    iget v0, p0, Lcom/narvii/app/NVActivity;->crashlyticsStatus:I

    if-lez v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->crashlyticsParams:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return p2
.end method

.method public getConfigCid()I
    .locals 1

    const-string v0, "config"

    .line 1447
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 1448
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getContextId()J
    .locals 2

    .line 752
    iget-wide v0, p0, Lcom/narvii/app/NVActivity;->cid:J

    return-wide v0
.end method

.method protected getCrashlyticsClassName()Ljava/lang/String;
    .locals 1

    .line 1452
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCrashlyticsFootprint()Ljava/lang/String;
    .locals 6

    .line 1389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activity "

    .line 1390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1391
    iget v1, p0, Lcom/narvii/app/NVActivity;->crashlyticsStatus:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "create "

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "restore "

    .line 1392
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1394
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getCrashlyticsClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    .line 1395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/app/NVActivity;->getStartActivityTrack(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ", "

    if-eqz v1, :cond_2

    .line 1398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1400
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->_communityId()I

    move-result v1

    if-gez v1, :cond_3

    const/16 v1, 0x3f

    .line 1402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    const/16 v1, 0x67

    .line 1404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/16 v3, 0x78

    .line 1406
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1408
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, ", url="

    .line 1409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1411
    :cond_5
    iget-object v1, p0, Lcom/narvii/app/NVActivity;->crashlyticsParams:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1412
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    .line 1414
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1415
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    const/16 v1, 0x5d

    .line 1417
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1418
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCrashlyticsKey()Ljava/lang/String;
    .locals 6

    .line 1422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1423
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getCrashlyticsClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    .line 1424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->_communityId()I

    move-result v1

    if-gez v1, :cond_0

    const/16 v1, 0x3f

    .line 1427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const/16 v1, 0x67

    .line 1429
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v2, 0x78

    .line 1431
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1433
    :goto_0
    iget-object v1, p0, Lcom/narvii/app/NVActivity;->crashlyticsParams:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1434
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x26

    if-eq v3, v4, :cond_3

    goto :goto_1

    .line 1436
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    const/16 v5, 0x25

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1437
    invoke-static {v3}, Lcom/narvii/util/StringUtils;->isUuid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, ","

    .line 1438
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1439
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/16 v1, 0x5d

    .line 1442
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1443
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultToastImageDuration()I
    .locals 1

    const/16 v0, 0x578

    return v0
.end method

.method public getDefaultToastTextDuration()I
    .locals 1

    const/16 v0, 0x960

    return v0
.end method

.method public getInitStatus()I
    .locals 1

    .line 759
    iget v0, p0, Lcom/narvii/app/NVActivity;->initStatus:I

    return v0
.end method

.method public getIntParam(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 705
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getIntParam(Ljava/lang/String;I)I
    .locals 2

    .line 694
    invoke-static {p0, p1, p2}, Lcom/narvii/util/ParamUtils;->getIntParam(Landroid/app/Activity;Ljava/lang/String;I)I

    move-result p2

    .line 695
    iget v0, p0, Lcom/narvii/app/NVActivity;->crashlyticsStatus:I

    if-lez v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->crashlyticsParams:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return p2
.end method

.method public getLifecycleState()I
    .locals 1

    .line 797
    iget v0, p0, Lcom/narvii/app/NVActivity;->lifecycleState:I

    return v0
.end method

.method public getMainFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 664
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getRootFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "__storyDraftId"

    .line 177
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isValidPage()Z

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

    .line 431
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/logging/PageRefererInfo;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/logging/PageRefererInfo;

    return-object v0
.end method

.method public getParentContext()Lcom/narvii/app/NVContext;
    .locals 1

    .line 743
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVContext;

    if-eqz v0, :cond_0

    .line 744
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVContext;

    return-object v0

    :cond_0
    const-string v0, "Application is not a NVContext"

    .line 746
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPvId()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->pvId:Ljava/lang/String;

    return-object v0
.end method

.method public getRightButtonDefaultBackground()Landroid/graphics/drawable/Drawable;
    .locals 4

    const-string v0, "config"

    .line 1286
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 1287
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v0

    .line 1288
    sget-object v1, Lcom/narvii/app/NVActivity;->hsv:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1289
    sget-object v0, Lcom/narvii/app/NVActivity;->hsv:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float v2, v2, v3

    aput v2, v0, v1

    .line 1290
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 1291
    invoke-static {v0}, Lcom/narvii/app/NVActivity;->getRightButtonBackground(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getRightTextView()Landroid/widget/TextView;
    .locals 2

    .line 2104
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->initActionBar()V

    .line 2105
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2108
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "right"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getRootFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 728
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->serviceManager:Lcom/narvii/services/ServiceManager;

    invoke-virtual {v0, p1}, Lcom/narvii/services/ServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 730
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVApplication;

    invoke-virtual {v0, p0, p1}, Lcom/narvii/app/NVApplication;->getService(Lcom/narvii/app/NVContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1

    .line 890
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public getStatusBarOverlaySize()I
    .locals 1

    .line 1140
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isTranslucentStatusBar()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getStrategyInfo()Ljava/lang/String;
    .locals 1

    const-string v0, "__strategyInfo"

    .line 208
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 671
    invoke-static {p0, p1}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 672
    iget v1, p0, Lcom/narvii/app/NVActivity;->crashlyticsStatus:I

    if-lez v1, :cond_3

    if-nez v0, :cond_0

    const-string v1, "<null>"

    goto :goto_0

    .line 676
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-ge v1, v2, :cond_1

    .line 677
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 679
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_2

    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 682
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 685
    :goto_0
    iget-object v2, p0, Lcom/narvii/app/NVActivity;->crashlyticsParams:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method public handleATO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 2197
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isHandlingATO()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2201
    :cond_0
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    invoke-direct {v0, p0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/app/NVActivity;->atoDialog:Lcom/narvii/widget/ACMAlertDialog;

    .line 2204
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->atoDialog:Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {v0, p3}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2205
    iget-object p3, p0, Lcom/narvii/app/NVActivity;->atoDialog:Lcom/narvii/widget/ACMAlertDialog;

    iput-object p4, p0, Lcom/narvii/app/NVActivity;->atoDialogMessage:Ljava/lang/String;

    invoke-virtual {p3, p4}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2207
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x104000a

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    .line 2208
    :cond_1
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/narvii/lib/R$string;->cancel:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p6

    .line 2209
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p3

    sget p4, Lcom/narvii/lib/R$color;->dialog_option_blue:I

    invoke-static {p3, p4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    if-nez p7, :cond_3

    .line 2212
    iget-object p4, p0, Lcom/narvii/app/NVActivity;->atoDialog:Lcom/narvii/widget/ACMAlertDialog;

    new-instance p7, Lcom/narvii/app/NVActivity$16;

    invoke-direct {p7, p0}, Lcom/narvii/app/NVActivity$16;-><init>(Lcom/narvii/app/NVActivity;)V

    invoke-virtual {p4, p6, p3, p7}, Lcom/narvii/widget/ACMAlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 2222
    :cond_3
    iget-object p4, p0, Lcom/narvii/app/NVActivity;->atoDialog:Lcom/narvii/widget/ACMAlertDialog;

    new-instance p6, Lcom/narvii/app/NVActivity$17;

    invoke-direct {p6, p0, p2, p1}, Lcom/narvii/app/NVActivity$17;-><init>(Lcom/narvii/app/NVActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, p5, p3, p6}, Lcom/narvii/widget/ACMAlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 2247
    iget-object p1, p0, Lcom/narvii/app/NVActivity;->atoDialog:Lcom/narvii/widget/ACMAlertDialog;

    new-instance p2, Lcom/narvii/app/NVActivity$18;

    invoke-direct {p2, p0}, Lcom/narvii/app/NVActivity$18;-><init>(Lcom/narvii/app/NVActivity;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2254
    iget-object p1, p0, Lcom/narvii/app/NVActivity;->atoDialog:Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    :cond_4
    :goto_0
    return-void
.end method

.method public handleCommunityNotJoined(I)V
    .locals 1

    .line 2177
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isHandlingJoinCommunity()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-gtz p1, :cond_1

    return-void

    .line 2185
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getConfigCid()I

    move-result v0

    if-eq v0, p1, :cond_2

    return-void

    :cond_2
    const-string v0, "joinCommunity"

    .line 2189
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/IJoinCommunityService;

    if-eqz v0, :cond_3

    .line 2191
    invoke-interface {v0, p0, p1}, Lcom/narvii/community/IJoinCommunityService;->showJoinCommunityDialog(Lcom/narvii/app/NVActivity;I)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/app/NVActivity;->joinCommunityDialog:Landroid/app/Dialog;

    :cond_3
    :goto_0
    return-void
.end method

.method public hasActionBar()Z
    .locals 1

    .line 1124
    iget-boolean v0, p0, Lcom/narvii/app/NVActivity;->abAvailable:Z

    return v0
.end method

.method public hasPageBackground()Z
    .locals 1

    const-string v0, "config"

    .line 996
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 997
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->pageBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected initActionBar()V
    .locals 4

    .line 1075
    iget-boolean v0, p0, Lcom/narvii/app/NVActivity;->abInited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1077
    iput-boolean v0, p0, Lcom/narvii/app/NVActivity;->abInited:Z

    .line 1079
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/narvii/lib/R$styleable;->AminoTheme:[I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 1080
    iput v2, p0, Lcom/narvii/app/NVActivity;->abFlags:I

    .line 1081
    sget v3, Lcom/narvii/lib/R$styleable;->AminoTheme_themeAmino:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1082
    iget v3, p0, Lcom/narvii/app/NVActivity;->abFlags:I

    or-int/2addr v3, v0

    iput v3, p0, Lcom/narvii/app/NVActivity;->abFlags:I

    .line 1083
    :cond_1
    sget v3, Lcom/narvii/lib/R$styleable;->AminoTheme_themeDark:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1084
    iget v3, p0, Lcom/narvii/app/NVActivity;->abFlags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/narvii/app/NVActivity;->abFlags:I

    .line 1085
    :cond_2
    sget v3, Lcom/narvii/lib/R$styleable;->AminoTheme_themeActionbarOverlay:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1086
    iget v3, p0, Lcom/narvii/app/NVActivity;->abFlags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/narvii/app/NVActivity;->abFlags:I

    .line 1087
    :cond_3
    sget v3, Lcom/narvii/lib/R$styleable;->AminoTheme_themeTranslucentStatus:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1088
    iget v2, p0, Lcom/narvii/app/NVActivity;->abFlags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/narvii/app/NVActivity;->abFlags:I

    .line 1089
    :cond_4
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1091
    iget v1, p0, Lcom/narvii/app/NVActivity;->abFlags:I

    and-int/2addr v1, v0

    if-nez v1, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 1100
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v1, :cond_7

    .line 1105
    iput-boolean v0, p0, Lcom/narvii/app/NVActivity;->abAvailable:Z

    .line 1106
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;->forceEllipsize()V

    .line 1107
    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/narvii/lib/R$id;->actionbar_title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1108
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isDarkTheme()Z

    move-result v0

    sget v2, Lcom/narvii/lib/R$layout;->actionbar_dark_layout:I

    sget v3, Lcom/narvii/lib/R$layout;->actionbar_layout:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/narvii/app/NVActivity;->getActionbarLayoutId(ZII)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 1109
    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 1110
    sget v1, Lcom/narvii/lib/R$id;->actionbar_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/narvii/app/NVActivity;->abTitle:Landroid/widget/TextView;

    .line 1112
    sget v1, Lcom/narvii/lib/R$id;->actionbar_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/app/NVActivity;->backListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1114
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->setActionBarBackgroundDefault()V

    :cond_7
    return-void
.end method

.method public initPageBackground()V
    .locals 3

    .line 1005
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isPagebackgroundEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1009
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    return-void

    .line 1015
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    .line 1016
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/narvii/app/NVActivity$9;

    invoke-direct {v1, p0}, Lcom/narvii/app/NVActivity$9;-><init>(Lcom/narvii/app/NVActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    goto :goto_0

    .line 1028
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/narvii/app/NVActivity$10;

    invoke-direct {v1, p0}, Lcom/narvii/app/NVActivity$10;-><init>(Lcom/narvii/app/NVActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method

.method protected initServiceManager(Lcom/narvii/services/ServiceManager;)V
    .locals 1

    .line 267
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/narvii/app/NVApplication;->initActivityServices(Lcom/narvii/app/NVActivity;Lcom/narvii/services/ServiceManager;)V

    return-void
.end method

.method public isActionBarCustomed()Z
    .locals 1

    .line 2303
    iget-boolean v0, p0, Lcom/narvii/app/NVActivity;->actionBarCustomed:Z

    return v0
.end method

.method public isActionBarOverlaying()Z
    .locals 1

    .line 1128
    iget v0, p0, Lcom/narvii/app/NVActivity;->abFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isActivityResumed()Z
    .locals 2

    .line 656
    iget v0, p0, Lcom/narvii/app/NVActivity;->lifecycleState:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCurrentCommunityJoined()Z
    .locals 2

    const-string v0, "config"

    .line 551
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 552
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 556
    :cond_0
    iget-object v1, p0, Lcom/narvii/app/NVActivity;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {v1, v0}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v0

    return v0
.end method

.method public isDarkTheme()Z
    .locals 1

    .line 1132
    iget v0, p0, Lcom/narvii/app/NVActivity;->abFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDestoryed()Z
    .locals 2

    .line 646
    iget v0, p0, Lcom/narvii/app/NVActivity;->lifecycleState:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFinalPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGlobal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGlobalInteractionScope()Z
    .locals 2

    const-string v0, "config"

    .line 227
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 228
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "__interactionScope"

    .line 229
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHandlingATO()Z
    .locals 1

    .line 2280
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->atoDialog:Lcom/narvii/widget/ACMAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHandlingJoinCommunity()Z
    .locals 1

    .line 2173
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->joinCommunityDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInVisitorMode()Z
    .locals 1

    .line 593
    iget-boolean v0, p0, Lcom/narvii/app/NVActivity;->inVisitorMode:Z

    return v0
.end method

.method public isModel()Z
    .locals 3

    .line 282
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "__model"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    return v2
.end method

.method public isPagebackgroundEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStartingActivity()Z
    .locals 1

    .line 1595
    iget-boolean v0, p0, Lcom/narvii/app/NVActivity;->isStartingActivity:Z

    return v0
.end method

.method public isTranslucentStatusBar()Z
    .locals 1

    .line 1136
    iget v0, p0, Lcom/narvii/app/NVActivity;->abFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVisitorNotJoined()Z
    .locals 1

    .line 560
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isInVisitorMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isCurrentCommunityJoined()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onCreate$0$NVActivity()V
    .locals 2

    .line 311
    iget-boolean v0, p0, Lcom/narvii/app/NVActivity;->inVisitorMode:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isCurrentCommunityJoined()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->onJoinCommunitySuccessInVisitorMode()V

    .line 313
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isActivityResumed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 314
    iput-boolean v0, p0, Lcom/narvii/app/NVActivity;->updateVisitorModePending:Z

    return-void

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->updateVisitorModeUI()V

    .line 318
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->visitorModeListener:Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;

    if-eqz v0, :cond_1

    .line 319
    iget-object v1, p0, Lcom/narvii/app/NVActivity;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {v1, v0}, Lcom/narvii/community/AffiliationsService;->removeAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    const/4 v0, 0x0

    .line 320
    iput-object v0, p0, Lcom/narvii/app/NVActivity;->visitorModeListener:Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;

    :cond_1
    return-void
.end method

.method protected logPageViewEvent()Z
    .locals 1

    .line 212
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isValidPage()Z

    move-result v0

    return v0
.end method

.method protected onActiveChanged(Z)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->pageViewDelegate:Lcom/narvii/logging/PageViewDelegate;

    invoke-virtual {v0, p1}, Lcom/narvii/logging/PageViewDelegate;->sendPageViewEvent(Z)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1801
    sget v0, Lcom/narvii/app/NVActivity;->REQUEST_LOGIN:I

    if-ne p1, v0, :cond_0

    .line 1802
    new-instance p1, Lcom/narvii/app/NVActivity$12;

    invoke-direct {p1, p0}, Lcom/narvii/app/NVActivity$12;-><init>(Lcom/narvii/app/NVActivity;)V

    .line 1815
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void

    .line 1819
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->activityRequestMapping:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 1820
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    .line 1822
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    .line 1826
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1837
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 1838
    invoke-static {}, Lcom/narvii/app/NVActivity;->addBack()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 300
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 301
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 302
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->_communityId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    const-string v0, "__visitorMode"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/narvii/app/NVActivity;->inVisitorMode:Z

    const-string v0, "affiliations"

    .line 308
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/AffiliationsService;

    iput-object v0, p0, Lcom/narvii/app/NVActivity;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 309
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isVisitorNotJoined()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 310
    new-instance v0, Lcom/narvii/app/-$$Lambda$NVActivity$66PcSpu-gMrn6dXLuW3opbkJ4Cc;

    invoke-direct {v0, p0}, Lcom/narvii/app/-$$Lambda$NVActivity$66PcSpu-gMrn6dXLuW3opbkJ4Cc;-><init>(Lcom/narvii/app/NVActivity;)V

    iput-object v0, p0, Lcom/narvii/app/NVActivity;->visitorModeListener:Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;

    .line 324
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    iget-object v3, p0, Lcom/narvii/app/NVActivity;->visitorModeListener:Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;

    invoke-virtual {v0, v3}, Lcom/narvii/community/AffiliationsService;->addAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    :cond_2
    if-nez p1, :cond_3

    .line 328
    invoke-static {}, Lcom/narvii/util/Utils;->generateUniqueLongId()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/narvii/app/NVActivity;->cid:J

    goto :goto_1

    :cond_3
    const-string v0, "__cid"

    .line 330
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/narvii/app/NVActivity;->cid:J

    .line 333
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isValidPage()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "_pushTrackId"

    .line 334
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/app/NVActivity;->_pushTrackId:Ljava/lang/String;

    const-string v0, "_pushIntent"

    .line 335
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/app/NVActivity;->_fromPush:Z

    .line 340
    :cond_4
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->serviceManager:Lcom/narvii/services/ServiceManager;

    if-nez v0, :cond_5

    .line 341
    new-instance v0, Lcom/narvii/services/ServiceManager;

    invoke-direct {v0, p0}, Lcom/narvii/services/ServiceManager;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/app/NVActivity;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 342
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->serviceManager:Lcom/narvii/services/ServiceManager;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->initServiceManager(Lcom/narvii/services/ServiceManager;)V

    :cond_5
    if-nez p1, :cond_9

    .line 349
    iput-boolean v2, p0, Lcom/narvii/app/NVActivity;->newCreate:Z

    .line 350
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->getTaskId()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    .line 353
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->getTaskId()I

    move-result v3

    if-eq v0, v3, :cond_8

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has a different taskId "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    goto :goto_3

    .line 351
    :cond_7
    :goto_2
    iput-boolean v2, p0, Lcom/narvii/app/NVActivity;->initTaskActivity:Z

    .line 352
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    iput v0, p0, Lcom/narvii/app/NVActivity;->resetTaskId:I

    invoke-static {v0}, Lcom/narvii/app/ApplicationSessionHelper;->setNewTask(I)V

    .line 356
    :cond_8
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "__forwardInitTaskActivity"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 358
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/app/NVActivity;->initTaskActivity:Z

    goto :goto_4

    :cond_9
    const-string v0, "__resetTaskId"

    .line 361
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/app/NVActivity;->resetTaskId:I

    .line 362
    invoke-static {p0, p1}, Lcom/narvii/app/ApplicationSessionHelper;->restore(Lcom/narvii/app/NVActivity;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 363
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_a
    const-string v0, "__restoreProcess"

    .line 365
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/app/NVActivity;->restoreProcess:Z

    const-string v0, "__initTaskActivity"

    .line 366
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/app/NVActivity;->initTaskActivity:Z

    .line 369
    :cond_b
    :goto_4
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/narvii/app/NVApplication;->activityOnCreate(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_c

    .line 370
    iget v0, p0, Lcom/narvii/app/NVActivity;->initStatus:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/narvii/app/NVActivity;->initStatus:I

    :cond_c
    if-eqz p1, :cond_e

    const-string v0, "__loginIntent"

    .line 374
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/narvii/app/NVActivity;->loginIntent:Landroid/content/Intent;

    const-string v0, "_newIntent"

    .line 375
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_d

    .line 377
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->setIntent(Landroid/content/Intent;)V

    :cond_d
    const-string v0, "__initStatus"

    .line 379
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 380
    iget v3, p0, Lcom/narvii/app/NVActivity;->initStatus:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/narvii/app/NVActivity;->initStatus:I

    .line 383
    :cond_e
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getCustomTheme()I

    move-result v0

    if-eqz v0, :cond_f

    .line 385
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 388
    :cond_f
    invoke-super {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 389
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->serviceManager:Lcom/narvii/services/ServiceManager;

    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->create()V

    if-nez p1, :cond_10

    const/4 v1, 0x1

    .line 391
    :cond_10
    iput v1, p0, Lcom/narvii/app/NVActivity;->crashlyticsStatus:I

    .line 392
    invoke-static {p0}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->setInitializingActivity(Lcom/narvii/app/NVActivity;)V

    .line 394
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->initActionBar()V

    .line 395
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->setStatusBar()V

    .line 396
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->initPageBackground()V

    .line 398
    new-instance p1, Lcom/narvii/app/NVActivity$1;

    const-string v0, "__storyDraftId"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, p0, p0, v0}, Lcom/narvii/app/NVActivity$1;-><init>(Lcom/narvii/app/NVActivity;Lcom/narvii/app/NVContext;Lcom/narvii/logging/Page;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/app/NVActivity;->pageViewDelegate:Lcom/narvii/logging/PageViewDelegate;

    .line 414
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->resetPvId()V

    .line 415
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 417
    invoke-static {p0, p1}, Lcom/narvii/util/statusbar/StatusBarUtils;->setTranslucentStatusBar(Lcom/narvii/app/NVContext;Landroid/graphics/drawable/Drawable;)V

    .line 418
    sget-boolean v0, Lcom/narvii/util/statusbar/StatusBarUtils;->STATUS_BAR_ENABLE:Z

    if-nez v0, :cond_11

    .line 419
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->setActionBarBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_11
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v0, -0x1

    .line 494
    iput v0, p0, Lcom/narvii/app/NVActivity;->lifecycleState:I

    .line 495
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    if-eqz v0, :cond_0

    .line 496
    new-instance v1, Lcom/narvii/app/NVActivity$4;

    invoke-direct {v1, p0}, Lcom/narvii/app/NVActivity$4;-><init>(Lcom/narvii/app/NVActivity;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 504
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->clearToast()V

    .line 505
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 506
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 507
    iput-object v0, p0, Lcom/narvii/app/NVActivity;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    .line 511
    :cond_1
    invoke-super {p0}, Lcom/narvii/app/theme/NVThemeActivity;->onDestroy()V

    const-string v0, "notification"

    .line 513
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 514
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/narvii/notification/NotificationCenter;->unregisterListener(Lcom/narvii/app/NVContext;Z)V

    .line 515
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->serviceManager:Lcom/narvii/services/ServiceManager;

    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->destroy()V

    .line 517
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;->cleanLeakLocalReceivers()V

    .line 519
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/narvii/app/NVApplication;->activityOnDestory(Landroid/app/Activity;)V

    .line 521
    iget v0, p0, Lcom/narvii/app/NVActivity;->resetTaskId:I

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->getTaskId()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 522
    invoke-static {v0}, Lcom/narvii/app/ApplicationSessionHelper;->setNewTask(I)V

    .line 525
    :cond_2
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->visitorModeListener:Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/narvii/app/NVActivity;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    if-eqz v1, :cond_3

    .line 526
    invoke-virtual {v1, v0}, Lcom/narvii/community/AffiliationsService;->removeAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    :cond_3
    return-void
.end method

.method protected onJoinCommunitySuccessInVisitorMode()V
    .locals 0

    return-void
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 598
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    const/4 v0, 0x2

    .line 600
    iput v0, p0, Lcom/narvii/app/NVActivity;->lifecycleState:I

    .line 601
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    if-eqz v0, :cond_0

    .line 602
    new-instance v1, Lcom/narvii/app/NVActivity$7;

    invoke-direct {v1, p0}, Lcom/narvii/app/NVActivity$7;-><init>(Lcom/narvii/app/NVActivity;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->serviceManager:Lcom/narvii/services/ServiceManager;

    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->pause()V

    .line 612
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/narvii/app/NVApplication;->activityOnPause(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 614
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->onActiveChanged(Z)V

    .line 616
    sget-object v0, Lcom/narvii/logging/LogUtils;->resumingContextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

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

    .line 2159
    sget-boolean p1, Lcom/narvii/permisson/PermissionRationaleDialog;->isShowing:Z

    if-nez p1, :cond_0

    .line 2160
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/permisson/PermissionRationaleDialog;->builder(Landroid/content/Context;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    move-result-object p1

    .line 2161
    invoke-virtual {p1, p3}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->setRationalePermissionList(Ljava/util/List;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    move-result-object p1

    .line 2162
    invoke-virtual {p1, p3}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->setDeniedPermissionList(Ljava/util/List;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    move-result-object p1

    .line 2163
    invoke-virtual {p1}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->show()V

    :cond_0
    return-void
.end method

.method public onPermissionGranted(I)V
    .locals 0

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 436
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 438
    instance-of p1, p0, Lcom/narvii/notification/NotificationListener;

    if-eqz p1, :cond_0

    const-string p1, "notification"

    .line 439
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 440
    move-object v0, p0

    check-cast v0, Lcom/narvii/notification/NotificationListener;

    invoke-virtual {p1, p0, v0}, Lcom/narvii/notification/NotificationCenter;->registerListener(Lcom/narvii/app/NVContext;Lcom/narvii/notification/NotificationListener;)V

    :cond_0
    const/4 p1, 0x0

    .line 443
    invoke-static {p1}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->setInitializingActivity(Lcom/narvii/app/NVActivity;)V

    .line 444
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getCrashlyticsFootprint()Ljava/lang/String;

    move-result-object v0

    .line 445
    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 446
    iput v0, p0, Lcom/narvii/app/NVActivity;->crashlyticsStatus:I

    .line 448
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->requireAccount()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    new-instance v0, Lcom/narvii/app/NVActivity$2;

    invoke-direct {v0, p0}, Lcom/narvii/app/NVActivity$2;-><init>(Lcom/narvii/app/NVActivity;)V

    iput-object v0, p0, Lcom/narvii/app/NVActivity;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    .line 458
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVActivity;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 459
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    const/4 p1, 0x1

    .line 462
    iput p1, p0, Lcom/narvii/app/NVActivity;->lifecycleState:I

    .line 463
    iget-object p1, p0, Lcom/narvii/app/NVActivity;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    if-eqz p1, :cond_2

    .line 464
    new-instance v0, Lcom/narvii/app/NVActivity$3;

    invoke-direct {v0, p0}, Lcom/narvii/app/NVActivity$3;-><init>(Lcom/narvii/app/NVActivity;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_2
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 2141
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->permissionArray:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 2142
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/permisson/PermissionListener;

    if-eqz v0, :cond_0

    .line 2144
    invoke-static {p0, v0, p1, p2, p3}, Lcom/narvii/permisson/NVPermission;->onRequestPermissionResult(Landroid/app/Activity;Lcom/narvii/permisson/PermissionListener;I[Ljava/lang/String;[I)V

    return-void

    .line 2148
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2149
    invoke-static {p0, p0, p1, p2, p3}, Lcom/narvii/permisson/NVPermission;->onRequestPermissionResult(Landroid/app/Activity;Lcom/narvii/permisson/PermissionListener;I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 6

    .line 565
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/narvii/app/NVApplication;->activityOnResume(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 566
    iget v0, p0, Lcom/narvii/app/NVActivity;->initStatus:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/narvii/app/NVActivity;->initStatus:I

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->serviceManager:Lcom/narvii/services/ServiceManager;

    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->resume()V

    .line 570
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    const/4 v0, 0x3

    .line 572
    iput v0, p0, Lcom/narvii/app/NVActivity;->lifecycleState:I

    .line 573
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    if-eqz v0, :cond_1

    .line 574
    new-instance v2, Lcom/narvii/app/NVActivity$6;

    invoke-direct {v2, p0}, Lcom/narvii/app/NVActivity$6;-><init>(Lcom/narvii/app/NVActivity;)V

    invoke-virtual {v0, v2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 582
    :cond_1
    invoke-static {p0}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->setActiveActivity(Lcom/narvii/app/NVActivity;)V

    .line 583
    sget-object v0, Lcom/narvii/app/NVActivity;->pendingForAttach:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_2

    .line 584
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/narvii/app/NVActivity;->pendingForAttachExpires:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 585
    sget-object v0, Lcom/narvii/app/NVActivity;->pendingForAttach:Lcom/narvii/util/Callback;

    invoke-interface {v0, p0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x0

    .line 587
    sput-object v0, Lcom/narvii/app/NVActivity;->pendingForAttach:Lcom/narvii/util/Callback;

    .line 589
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->onActiveChanged(Z)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 475
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 476
    iget-wide v0, p0, Lcom/narvii/app/NVActivity;->cid:J

    const-string v2, "__cid"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 477
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->loginIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v1, "__loginIntent"

    .line 478
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->newIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    const-string v1, "_newIntent"

    .line 481
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 483
    :cond_1
    iget v0, p0, Lcom/narvii/app/NVActivity;->resetTaskId:I

    const-string v1, "__resetTaskId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 484
    iget v0, p0, Lcom/narvii/app/NVActivity;->initStatus:I

    const-string v1, "__initStatus"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 485
    iget-boolean v0, p0, Lcom/narvii/app/NVActivity;->restoreProcess:Z

    const-string v1, "__restoreProcess"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 486
    iget-boolean v0, p0, Lcom/narvii/app/NVActivity;->initTaskActivity:Z

    const-string v1, "__initTaskActivity"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 488
    invoke-static {p0, p1}, Lcom/narvii/app/ApplicationSessionHelper;->save(Lcom/narvii/app/NVActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 533
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/narvii/app/NVApplication;->activityOnStart(Landroid/app/Activity;)V

    .line 534
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->serviceManager:Lcom/narvii/services/ServiceManager;

    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->start()V

    const/4 v0, 0x2

    .line 536
    iput v0, p0, Lcom/narvii/app/NVActivity;->lifecycleState:I

    .line 537
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    if-eqz v0, :cond_0

    .line 538
    new-instance v1, Lcom/narvii/app/NVActivity$5;

    invoke-direct {v1, p0}, Lcom/narvii/app/NVActivity$5;-><init>(Lcom/narvii/app/NVActivity;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 546
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/theme/NVThemeActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 621
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    const/4 v0, 0x1

    .line 623
    iput v0, p0, Lcom/narvii/app/NVActivity;->lifecycleState:I

    .line 624
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    if-eqz v0, :cond_0

    .line 625
    new-instance v1, Lcom/narvii/app/NVActivity$8;

    invoke-direct {v1, p0}, Lcom/narvii/app/NVActivity$8;-><init>(Lcom/narvii/app/NVActivity;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->serviceManager:Lcom/narvii/services/ServiceManager;

    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->stop()V

    .line 635
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->resetStartingActivity:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 636
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 637
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->resetStartingActivity:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 640
    :cond_1
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/narvii/app/NVApplication;->activityOnStop(Landroid/app/Activity;)V

    .line 641
    invoke-static {p0}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->removeActiveActivity(Lcom/narvii/app/NVActivity;)V

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getCrashlyticsKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1375
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 1376
    iget-object p2, p0, Lcom/narvii/app/NVActivity;->abTitle:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 1377
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public registerActivityRequestCallback(ILandroid/support/v4/app/Fragment;)V
    .locals 2

    .line 2259
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->activityRequestMapping:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/NVActivity;->activityRequestMapping:Ljava/util/HashMap;

    goto :goto_0

    .line 2262
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    if-eq v0, p2, :cond_1

    .line 2264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code already registered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 2267
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->activityRequestMapping:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1

    .line 820
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "register local broadcast receiver after destory"

    .line 821
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    if-nez v0, :cond_1

    .line 824
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/app/NVActivity;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 826
    :cond_1
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 828
    iget-object p2, p0, Lcom/narvii/app/NVActivity;->localReceivers:Ljava/util/ArrayList;

    if-nez p2, :cond_2

    .line 829
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/app/NVActivity;->localReceivers:Ljava/util/ArrayList;

    .line 832
    :cond_2
    iget-object p2, p0, Lcom/narvii/app/NVActivity;->localReceivers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 833
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_3

    return-void

    .line 837
    :cond_4
    iget-object p2, p0, Lcom/narvii/app/NVActivity;->localReceivers:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerPermissionResult(ILcom/narvii/permisson/PermissionListener;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->permissionArray:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 159
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/NVActivity;->permissionArray:Landroid/util/SparseArray;

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->permissionArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public removeOnScrollListener(Lcom/narvii/app/NVActivity$DispatchTouchEventListener;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->dispatchTouchEventListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeRightView()V
    .locals 2

    .line 2113
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->initActionBar()V

    .line 2114
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2117
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2118
    sget v1, Lcom/narvii/lib/R$id;->tv_right:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2120
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public removeThemeDownloadObserver(Lcom/narvii/app/NVFragment;)V
    .locals 1

    .line 2315
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->themeDownloadObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeWeakLifecycleListener(Lcom/narvii/app/LifecycleListener;)V
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    if-eqz v0, :cond_0

    .line 811
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

    .line 293
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getPageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/app/NVActivity;->pvId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public rightViewEnabled()Z
    .locals 3

    .line 2125
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->initActionBar()V

    .line 2126
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2129
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const-string/jumbo v2, "right"

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2131
    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public sendNotification(Lcom/narvii/notification/Notification;)V
    .locals 1

    const-string v0, "notification"

    .line 777
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 778
    invoke-virtual {v0, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public setActionBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1164
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->initActionBar()V

    .line 1165
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1168
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1169
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 1170
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->setActionBarCustomed(Z)V

    return-void
.end method

.method public setActionBarBackgroundDefault()V
    .locals 4

    .line 1174
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->initActionBar()V

    .line 1175
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1178
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1179
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isActionBarOverlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1180
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isDarkTheme()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1181
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/narvii/lib/R$color;->dark_theme_overlay:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1182
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1184
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    const-string v1, "config"

    .line 1187
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 1188
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/config/ConfigTheme;->actionbarBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1189
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1194
    instance-of v2, v1, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1196
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mContainerView"

    .line 1197
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 1198
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1199
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1200
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1201
    instance-of v0, v1, Lcom/narvii/theme/TitlebarGifDrawable;

    if-eqz v0, :cond_3

    .line 1202
    check-cast v1, Lcom/narvii/theme/TitlebarGifDrawable;

    iput-boolean v3, v1, Lcom/narvii/theme/TitlebarGifDrawable;->invalidateDirectly:Z

    goto :goto_0

    .line 1203
    :cond_3
    instance-of v0, v1, Lcom/narvii/theme/ThemeBackgroundGifDrawable;

    if-eqz v0, :cond_4

    .line 1204
    check-cast v1, Lcom/narvii/theme/ThemeBackgroundGifDrawable;

    iput-boolean v3, v1, Lcom/narvii/theme/ThemeBackgroundGifDrawable;->invalidateDirectly:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_0
    return-void
.end method

.method public setActionBarCustomed(Z)V
    .locals 0

    .line 2307
    iput-boolean p1, p0, Lcom/narvii/app/NVActivity;->actionBarCustomed:Z

    return-void
.end method

.method public setActionBarLeftTextView(I)Landroid/widget/TextView;
    .locals 0

    .line 2038
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->setActionBarLeftTextView(Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public setActionBarLeftTextView(Ljava/lang/CharSequence;)Landroid/widget/TextView;
    .locals 3

    .line 2030
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$layout;->actionbar_left_tv:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2031
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2032
    sget-object p1, Lcom/narvii/app/NVActivity;->BACK_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2033
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->setActionBarLeftView(Landroid/view/View;)V

    return-object v0
.end method

.method public setActionBarLeftView(Landroid/view/View;)V
    .locals 2

    .line 1235
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->initActionBar()V

    .line 1236
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1239
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1241
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1242
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$id;->actionbar_left:I

    .line 1243
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1244
    check-cast v0, Landroid/view/ViewGroup;

    .line 1245
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p1, :cond_1

    .line 1247
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setActionBarRightButton(ILandroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1253
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->setActionBarRightButton(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setActionBarRightButton(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 1257
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getRightButtonDefaultBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/app/NVActivity;->setActionBarRightButton(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setActionBarRightButton(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 1265
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->initActionBar()V

    .line 1266
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1269
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1270
    sget v1, Lcom/narvii/lib/R$id;->actionbar_right_btn:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1272
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$layout;->actionbar_btn:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1273
    sget v1, Lcom/narvii/lib/R$id;->actionbar_right_btn:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1275
    :cond_1
    sget v0, Lcom/narvii/lib/R$id;->actionbar_right_btn_btn:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1276
    sget p2, Lcom/narvii/lib/R$id;->actionbar_right_btn_btn:I

    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 1277
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1278
    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setActionBarRightButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1261
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getRightButtonDefaultBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/app/NVActivity;->setActionBarRightButton(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setActionBarRightView(IIZLandroid/view/View$OnClickListener;)V
    .locals 4

    .line 2042
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$layout;->actionbar_right_tv:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2043
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    if-eqz p3, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz p3, :cond_2

    const/high16 p2, 0x40000000    # 2.0f

    :cond_2
    if-eqz p3, :cond_3

    const p3, -0xaaaaab

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    .line 2044
    :goto_2
    invoke-virtual {v0, v1, v3, p2, p3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 2045
    invoke-virtual {p0, p1, v0, p4}, Lcom/narvii/app/NVActivity;->setRightView(ILandroid/widget/TextView;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setActionBarRightView(ILandroid/content/res/ColorStateList;ZLandroid/view/View$OnClickListener;)V
    .locals 4

    .line 2049
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$layout;->actionbar_right_tv:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2050
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    if-eqz p3, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz p3, :cond_2

    const/high16 p2, 0x40000000    # 2.0f

    :cond_2
    if-eqz p3, :cond_3

    const p3, -0xaaaaab

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    .line 2051
    :goto_2
    invoke-virtual {v0, v1, v3, p2, p3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 2052
    invoke-virtual {p0, p1, v0, p4}, Lcom/narvii/app/NVActivity;->setRightView(ILandroid/widget/TextView;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setActionBarRightView(ILandroid/view/View$OnClickListener;)V
    .locals 2

    .line 2056
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$color;->actionbar_text:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/content/res/ColorStateList;ZLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setActionBarRightView(Landroid/view/View;)V
    .locals 4

    .line 1345
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->initActionBar()V

    .line 1346
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1349
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1350
    sget v1, Lcom/narvii/lib/R$id;->actionbar_right_btn:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1352
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 1355
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$layout;->actionbar_btn:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1356
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1357
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public setActionBarTitleColor(I)V
    .locals 1

    .line 1213
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->abTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1214
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setActionBarTitleView(Landroid/view/View;)V
    .locals 3

    .line 1219
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->initActionBar()V

    .line 1220
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1223
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1224
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$id;->actionbar_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1225
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1227
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1228
    sget v2, Lcom/narvii/lib/R$id;->actionbar_title:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setId(I)V

    .line 1229
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1230
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1320
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->initActionBar()V

    .line 1321
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1324
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 1325
    sget v1, Lcom/narvii/lib/R$id;->actionbar_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_1

    return-void

    .line 1329
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackButtonTint(I)V
    .locals 2

    .line 1333
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->initActionBar()V

    .line 1334
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1337
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 1338
    sget v1, Lcom/narvii/lib/R$id;->actionbar_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1339
    instance-of v1, v0, Lcom/narvii/widget/TintButton;

    if-eqz v1, :cond_1

    .line 1340
    check-cast v0, Lcom/narvii/widget/TintButton;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    :cond_1
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 651
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 652
    iput-object p1, p0, Lcom/narvii/app/NVActivity;->newIntent:Landroid/content/Intent;

    return-void
.end method

.method public setRightButtonEnabled(Z)V
    .locals 2

    .line 2089
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->initActionBar()V

    .line 2090
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2093
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2096
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$id;->actionbar_right_btn_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2098
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setRightView(ILandroid/widget/TextView;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 2060
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2061
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo p1, "right"

    .line 2062
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2063
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVActivity;->setActionBarRightView(Landroid/view/View;)V

    return-void
.end method

.method public setRightViewEnabled(Z)V
    .locals 2

    .line 2078
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->initActionBar()V

    .line 2079
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2082
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "right"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2084
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setRightViewVisible(Z)V
    .locals 2

    .line 2067
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->initActionBar()V

    .line 2068
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2071
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "right"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 2073
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setStatusBar()V
    .locals 2

    .line 1070
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->shouldShowPageBackground()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->hasPageBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lcom/narvii/util/statusbar/StatusBarUtils;->setTranslucentStatusBar(Lcom/narvii/app/NVContext;Landroid/graphics/drawable/Drawable;)V

    .line 1071
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->setActionBarCustomed(Z)V

    return-void
.end method

.method public shouldShowPageBackground()Z
    .locals 1

    .line 1001
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isPagebackgroundEnabled()Z

    move-result v0

    return v0
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

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1461
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1469
    :cond_0
    invoke-static {p1}, Lcom/narvii/app/NVActivity;->justStartActivity(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "navigator"

    .line 1471
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/navigator/Navigator;

    if-eqz v0, :cond_1

    .line 1473
    invoke-interface {v0, p1}, Lcom/narvii/navigator/Navigator;->intentMapping(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 1476
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1477
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const-string v2, "__noInheritance"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1478
    invoke-direct {p0, p1, v1}, Lcom/narvii/app/NVActivity;->inheritIntent(Landroid/content/Intent;Landroid/support/v4/app/Fragment;)V

    .line 1480
    :cond_3
    invoke-static {p1}, Lcom/narvii/app/NVActivity;->trackStartActivity(Landroid/content/Intent;)V

    .line 1481
    invoke-static {p1}, Lcom/narvii/util/ParamUtils;->processIntentNow(Landroid/content/Intent;)Z

    const/4 v0, 0x1

    .line 1482
    iput-boolean v0, p0, Lcom/narvii/app/NVActivity;->isStartingActivity:Z

    .line 1483
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1484
    iget-object p1, p0, Lcom/narvii/app/NVActivity;->resetStartingActivity:Ljava/lang/Runnable;

    if-nez p1, :cond_4

    .line 1485
    new-instance p1, Lcom/narvii/app/NVActivity$ResetStartingActivity;

    invoke-direct {p1, p0, v1}, Lcom/narvii/app/NVActivity$ResetStartingActivity;-><init>(Lcom/narvii/app/NVActivity;Lcom/narvii/app/NVActivity$1;)V

    iput-object p1, p0, Lcom/narvii/app/NVActivity;->resetStartingActivity:Ljava/lang/Runnable;

    goto :goto_1

    .line 1487
    :cond_4
    sget-object p2, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1489
    :goto_1
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/narvii/app/NVActivity;->resetStartingActivity:Ljava/lang/Runnable;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 1497
    :cond_0
    invoke-static {p2}, Lcom/narvii/app/NVActivity;->justStartActivity(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "navigator"

    .line 1499
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/navigator/Navigator;

    if-eqz v0, :cond_1

    .line 1501
    invoke-interface {v0, p2}, Lcom/narvii/navigator/Navigator;->intentMapping(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    .line 1504
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1505
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const-string v2, "__noInheritance"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1506
    invoke-direct {p0, p2, p1}, Lcom/narvii/app/NVActivity;->inheritIntent(Landroid/content/Intent;Landroid/support/v4/app/Fragment;)V

    .line 1508
    :cond_3
    invoke-static {p2}, Lcom/narvii/app/NVActivity;->trackStartActivity(Landroid/content/Intent;)V

    .line 1509
    invoke-static {p2}, Lcom/narvii/util/ParamUtils;->processIntentNow(Landroid/content/Intent;)Z

    const/4 v0, 0x1

    .line 1510
    iput-boolean v0, p0, Lcom/narvii/app/NVActivity;->isStartingActivity:Z

    .line 1511
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1512
    iget-object p1, p0, Lcom/narvii/app/NVActivity;->resetStartingActivity:Ljava/lang/Runnable;

    if-nez p1, :cond_4

    .line 1513
    new-instance p1, Lcom/narvii/app/NVActivity$ResetStartingActivity;

    invoke-direct {p1, p0, v1}, Lcom/narvii/app/NVActivity$ResetStartingActivity;-><init>(Lcom/narvii/app/NVActivity;Lcom/narvii/app/NVActivity$1;)V

    iput-object p1, p0, Lcom/narvii/app/NVActivity;->resetStartingActivity:Ljava/lang/Runnable;

    goto :goto_1

    .line 1515
    :cond_4
    sget-object p2, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1517
    :goto_1
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/narvii/app/NVActivity;->resetStartingActivity:Ljava/lang/Runnable;

    const-wide/16 p3, 0x190

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public toastImage(I)V
    .locals 1

    .line 1950
    sget v0, Lcom/narvii/lib/R$anim;->toast_drop:I

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVActivity;->toastImage(II)V

    return-void
.end method

.method public toastImage(II)V
    .locals 1

    .line 1935
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/NVActivity;->toastImage(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public toastImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1954
    sget v0, Lcom/narvii/lib/R$anim;->toast_drop:I

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVActivity;->toastImage(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public toastImage(Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    .line 1939
    sget v0, Lcom/narvii/lib/R$layout;->toast_image:I

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/narvii/app/NVActivity;->toastView(IIJ)Landroid/view/View;

    move-result-object p2

    .line 1940
    sget v0, Lcom/narvii/lib/R$id;->toast_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public toastImageWithText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IJ)V
    .locals 1

    .line 1944
    sget v0, Lcom/narvii/lib/R$layout;->toast_image_text:I

    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/narvii/app/NVActivity;->toastView(IIJ)Landroid/view/View;

    move-result-object p3

    .line 1945
    sget p4, Lcom/narvii/lib/R$id;->toast_image:I

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1946
    sget p1, Lcom/narvii/lib/R$id;->toast_text:I

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public toastText(I)V
    .locals 1

    .line 1977
    sget v0, Lcom/narvii/lib/R$anim;->toast_pop:I

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVActivity;->toastText(II)V

    return-void
.end method

.method public toastText(II)V
    .locals 0

    .line 1958
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/NVActivity;->toastText(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public toastText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1981
    sget v0, Lcom/narvii/lib/R$anim;->toast_pop:I

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVActivity;->toastText(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public toastText(Ljava/lang/CharSequence;I)V
    .locals 3

    .line 1962
    sget v0, Lcom/narvii/lib/R$layout;->toast_text:I

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/narvii/app/NVActivity;->toastView(IIJ)Landroid/view/View;

    move-result-object p2

    .line 1963
    sget v0, Lcom/narvii/lib/R$id;->toast_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public toastTextFromTop(II)V
    .locals 5

    .line 1967
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v0, v1

    .line 1968
    sget v1, Lcom/narvii/lib/R$layout;->toast_text_top:I

    sget v2, Lcom/narvii/lib/R$anim;->toast_slide_in_top:I

    int-to-long v3, p2

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/narvii/app/NVActivity;->toastView(IIJ)Landroid/view/View;

    move-result-object p2

    .line 1969
    sget v1, Lcom/narvii/lib/R$id;->toast_frame:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 1971
    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1973
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->toast_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public toastView(II)Landroid/view/View;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1870
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/narvii/app/NVActivity;->toastView(IIJ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public toastView(IIJ)Landroid/view/View;
    .locals 7

    .line 1874
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->clearToast()V

    const v0, 0x1020002

    .line 1875
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/ViewGroup;

    .line 1876
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-nez v6, :cond_0

    goto :goto_0

    .line 1880
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1881
    sget v0, Lcom/narvii/lib/R$id;->toast_frame:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    const/4 v0, 0x4

    .line 1882
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1883
    invoke-virtual {v6, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1884
    invoke-static {p0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    .line 1885
    new-instance v0, Lcom/narvii/app/NVActivity$13;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/narvii/app/NVActivity$13;-><init>(Lcom/narvii/app/NVActivity;Landroid/view/View;JLandroid/view/ViewGroup;)V

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1909
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-object p1

    .line 1877
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public unRegisterPermissionResult(ILcom/narvii/permisson/PermissionListener;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->permissionArray:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 171
    iget-object p2, p0, Lcom/narvii/app/NVActivity;->permissionArray:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    return-void
.end method

.method public unregisterActivityRequestCallback(ILandroid/support/v4/app/Fragment;)V
    .locals 2

    .line 2271
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->activityRequestMapping:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 2272
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    if-ne v0, p2, :cond_0

    .line 2274
    iget-object p2, p0, Lcom/narvii/app/NVActivity;->activityRequestMapping:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 2

    .line 841
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    if-eqz v0, :cond_0

    .line 842
    invoke-virtual {v0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->localReceivers:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 846
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 847
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 848
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 849
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 850
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateThemeUI()V
    .locals 3

    .line 2289
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2291
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2292
    instance-of v1, v0, Lcom/narvii/theme/PageBackgroundView;

    if-eqz v1, :cond_1

    .line 2293
    check-cast v0, Lcom/narvii/theme/PageBackgroundView;

    const-string v1, "config"

    .line 2294
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 2295
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v2

    invoke-interface {v2}, Lcom/narvii/config/ConfigTheme;->pageBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2296
    invoke-virtual {v0, v2}, Lcom/narvii/theme/PageBackgroundView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2297
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->showThemeColorAsAlternativeBackground()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v1

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method protected updateVisitorModeUI()V
    .locals 0

    return-void
.end method
