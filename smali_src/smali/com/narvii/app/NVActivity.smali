.class public Lcom/narvii/app/NVActivity;
.super Lcom/narvii/app/theme/NVThemeActivity;
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
        Lcom/narvii/app/NVActivity$CleanLeakReceivers;,
        Lcom/narvii/app/NVActivity$DispatchTouchEventListener;,
        Lcom/narvii/app/NVActivity$ResetStartingActivity;
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
            "Landroidx/fragment/app/Fragment;",
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
    sput v0, Lcom/narvii/app/NVActivity;->REQUEST_LOGIN:I

    .line 9
    const/4 v0, 0x3

    .line 10
    .line 11
    new-array v1, v0, [F

    .line 12
    .line 13
    sput-object v1, Lcom/narvii/app/NVActivity;->hsv:[F

    .line 14
    .line 15
    .line 16
    const v1, 0x10100a7

    .line 17
    .line 18
    .line 19
    filled-new-array {v1}, [I

    .line 20
    move-result-object v1

    .line 21
    .line 22
    sput-object v1, Lcom/narvii/app/NVActivity;->state_pressed:[I

    .line 23
    const/4 v1, 0x0

    .line 24
    .line 25
    new-array v1, v1, [I

    .line 26
    .line 27
    sput-object v1, Lcom/narvii/app/NVActivity;->state_normal:[I

    .line 28
    .line 29
    new-instance v1, Lcom/narvii/util/statistics/TmpValue;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    .line 33
    .line 34
    sput-object v1, Lcom/narvii/app/NVActivity;->trackStartActivityTmp:Lcom/narvii/util/statistics/TmpValue;

    .line 35
    .line 36
    new-array v0, v0, [J

    .line 37
    .line 38
    sput-object v0, Lcom/narvii/app/NVActivity;->BACK_RECORDS:[J

    .line 39
    .line 40
    new-instance v0, Lcom/narvii/app/NVActivity$13;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0}, Lcom/narvii/app/NVActivity$13;-><init>()V

    .line 44
    .line 45
    sput-object v0, Lcom/narvii/app/NVActivity;->BACK_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/theme/NVThemeActivity;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/app/NVActivity;->actionBarCustomed:Z

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/app/NVActivity;->themeDownloadObservers:Ljava/util/List;

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/app/NVActivity;->visitorModeListener:Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;

    .line 17
    const/4 v0, -0x1

    .line 18
    .line 19
    iput v0, p0, Lcom/narvii/app/NVActivity;->statsCid:I

    .line 20
    .line 21
    iput v0, p0, Lcom/narvii/app/NVActivity;->activeCid:I

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/app/NVActivity$9;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/narvii/app/NVActivity$9;-><init>(Lcom/narvii/app/NVActivity;)V

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/app/NVActivity;->backListener:Landroid/view/View$OnClickListener;

    .line 29
    .line 30
    new-instance v0, Ljava/util/HashMap;

    .line 31
    const/4 v1, 0x4

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/app/NVActivity;->crashlyticsParams:Ljava/util/HashMap;

    .line 37
    return-void
.end method

.method private static addBack()V
    .locals 7

    .line 1
    .line 2
    .line 3
    .line 4
    .line 5
    const-wide v0, 0x7fffffffffffffffL

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    .line 9
    :goto_0
    sget-object v4, Lcom/narvii/app/NVActivity;->BACK_RECORDS:[J

    .line 10
    array-length v5, v4

    .line 11
    .line 12
    if-ge v2, v5, :cond_1

    .line 13
    .line 14
    aget-wide v5, v4, v2

    .line 15
    .line 16
    cmp-long v4, v5, v0

    .line 17
    .line 18
    if-gez v4, :cond_0

    .line 19
    move v3, v2

    .line 20
    move-wide v0, v5

    .line 21
    .line 22
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    move-result-wide v0

    .line 28
    .line 29
    aput-wide v0, v4, v3

    .line 30
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

    .line 1
    .line 2
    sput-object p0, Lcom/narvii/app/NVActivity;->pendingForAttach:Lcom/narvii/util/Callback;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    const-wide/16 v2, 0x1f4

    .line 9
    add-long/2addr v0, v2

    .line 10
    .line 11
    sput-wide v0, Lcom/narvii/app/NVActivity;->pendingForAttachExpires:J

    .line 12
    return-void
.end method

.method private cleanLeakLocalReceivers()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->localReceivers:Ljava/util/ArrayList;

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
    new-instance v0, Lcom/narvii/app/NVActivity$CleanLeakReceivers;

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/narvii/app/NVActivity$CleanLeakReceivers;-><init>(Lcom/narvii/app/f;)V

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/app/NVActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 23
    .line 24
    iput-object v2, v0, Lcom/narvii/app/NVActivity$CleanLeakReceivers;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/narvii/app/NVActivity;->localReceivers:Ljava/util/ArrayList;

    .line 27
    .line 28
    iput-object v2, v0, Lcom/narvii/app/NVActivity$CleanLeakReceivers;->list:Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    iput-object v1, p0, Lcom/narvii/app/NVActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/narvii/app/NVActivity;->localReceivers:Ljava/util/ArrayList;

    .line 36
    :cond_0
    return-void
.end method

.method private forceEllipsize()V
    .locals 3

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-class v1, Landroid/view/ViewConfiguration;

    .line 7
    .line 8
    const-string v2, "sHasPermanentMenuKey"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :catch_0
    :cond_0
    return-void
.end method

.method public static getRightButtonBackground(I)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/app/NVActivity;->hsv:[F

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 6
    const/4 v1, 0x2

    .line 7
    .line 8
    aget v2, v0, v1

    .line 9
    .line 10
    const/high16 v3, 0x3f400000    # 0.75f

    .line 11
    mul-float/2addr v2, v3

    .line 12
    .line 13
    aput v2, v0, v1

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 17
    move-result v0

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    sget v2, Lcom/narvii/lib/R$dimen;->actionbar_button_corner_radius:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 31
    move-result v1

    .line 32
    .line 33
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    .line 34
    .line 35
    new-instance v3, Landroid/graphics/drawable/shapes/RectShape;

    .line 36
    .line 37
    .line 38
    invoke-direct {v3}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 52
    move-result-object p0

    .line 53
    .line 54
    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 61
    move-result-object p0

    .line 62
    .line 63
    new-instance v4, Landroid/graphics/CornerPathEffect;

    .line 64
    .line 65
    .line 66
    invoke-direct {v4, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 70
    .line 71
    new-instance p0, Landroid/graphics/drawable/ShapeDrawable;

    .line 72
    .line 73
    new-instance v4, Landroid/graphics/drawable/shapes/RectShape;

    .line 74
    .line 75
    .line 76
    invoke-direct {v4}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-direct {p0, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 83
    move-result-object v4

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    new-instance v3, Landroid/graphics/CornerPathEffect;

    .line 100
    .line 101
    .line 102
    invoke-direct {v3, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 106
    .line 107
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    .line 108
    .line 109
    .line 110
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 111
    .line 112
    sget-object v1, Lcom/narvii/app/NVActivity;->state_pressed:[I

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 116
    .line 117
    sget-object p0, Lcom/narvii/app/NVActivity;->state_normal:[I

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, p0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 121
    return-object v0
.end method

.method private static getStartActivityTrack(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    .line 8
    :cond_0
    const-string v0, "__trackStartActivityId"

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 13
    move-result p0

    .line 14
    .line 15
    sget-object v0, Lcom/narvii/app/NVActivity;->trackStartActivityTmp:Lcom/narvii/util/statistics/TmpValue;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/util/statistics/TmpValue;->getAndRemove()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, [Ljava/lang/Object;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    aget-object v2, v0, v2

    .line 26
    .line 27
    check-cast v2, Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 31
    move-result v2

    .line 32
    .line 33
    if-ne p0, v2, :cond_1

    .line 34
    const/4 p0, 0x1

    .line 35
    .line 36
    aget-object p0, v0, p0

    .line 37
    .line 38
    check-cast p0, Ljava/lang/String;

    .line 39
    return-object p0

    .line 40
    :cond_1
    return-object v1
.end method

.method public static synthetic h(Lcom/narvii/app/NVActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;->lambda$onCreate$0()V

    return-void
.end method

.method public static synthetic i(Lcom/narvii/app/NVActivity;Lcom/narvii/app/LifecycleListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/app/NVActivity;->lambda$onStop$1(Lcom/narvii/app/LifecycleListener;)V

    return-void
.end method

.method private inheritIntent(Landroid/content/Intent;Landroidx/fragment/app/Fragment;)V
    .locals 7

    .line 1
    .line 2
    const-string v0, "__interactionScope"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 6
    move-result v1

    .line 7
    .line 8
    const-string v2, "config"

    .line 9
    const/4 v3, 0x1

    .line 10
    .line 11
    const-string v4, "__communityId"

    .line 12
    const/4 v5, 0x0

    .line 13
    .line 14
    if-nez v1, :cond_3

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 30
    goto :goto_1

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    goto :goto_1

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 50
    move-result v1

    .line 51
    .line 52
    if-nez v1, :cond_2

    .line 53
    move v1, v3

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    move v1, v5

    .line 56
    .line 57
    .line 58
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    :cond_3
    :goto_1
    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 62
    move-result v1

    .line 63
    .line 64
    if-nez v1, :cond_4

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 74
    move-result v1

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    .line 79
    :cond_4
    const-string v1, "__pageRefererInfo"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 83
    move-result v6

    .line 84
    .line 85
    if-nez v6, :cond_7

    .line 86
    .line 87
    sget-object v6, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 88
    .line 89
    if-eqz v6, :cond_5

    .line 90
    .line 91
    .line 92
    invoke-static {v6}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    move-result-object p2

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    goto :goto_3

    .line 98
    .line 99
    :cond_5
    instance-of v6, p2, Lcom/narvii/app/NVContext;

    .line 100
    .line 101
    if-eqz v6, :cond_6

    .line 102
    .line 103
    check-cast p2, Lcom/narvii/app/NVContext;

    .line 104
    goto :goto_2

    .line 105
    :cond_6
    move-object p2, p0

    .line 106
    .line 107
    .line 108
    :goto_2
    invoke-static {p2}, Lcom/narvii/logging/LogUtils;->getLogContextInfo(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogContextInfo;

    .line 109
    move-result-object p2

    .line 110
    .line 111
    if-eqz p2, :cond_7

    .line 112
    .line 113
    iget-object p2, p2, Lcom/narvii/logging/LogContextInfo;->pageName:Ljava/lang/String;

    .line 114
    .line 115
    if-eqz p2, :cond_7

    .line 116
    .line 117
    new-instance v6, Lcom/narvii/logging/PageRefererInfo;

    .line 118
    .line 119
    .line 120
    invoke-direct {v6, p2}, Lcom/narvii/logging/PageRefererInfo;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-static {v6}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 124
    move-result-object p2

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    .line 129
    :cond_7
    :goto_3
    const-string p2, "__strategyInfo"

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 133
    move-result v1

    .line 134
    .line 135
    if-nez v1, :cond_9

    .line 136
    .line 137
    sget-object v1, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 141
    move-result v1

    .line 142
    .line 143
    if-nez v1, :cond_8

    .line 144
    .line 145
    sget-object v1, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    goto :goto_4

    .line 150
    .line 151
    .line 152
    :cond_8
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    move-result-object v1

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    .line 158
    :cond_9
    :goto_4
    const-string p2, "__storyDraftId"

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 162
    move-result v1

    .line 163
    .line 164
    if-nez v1, :cond_a

    .line 165
    .line 166
    const-string v1, "__ignoreStoryDraftId"

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 170
    move-result v1

    .line 171
    .line 172
    if-nez v1, :cond_a

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    move-result-object v1

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    .line 181
    :cond_a
    const-string p2, "__model"

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 185
    move-result v1

    .line 186
    .line 187
    if-nez v1, :cond_c

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    move-result-object v1

    .line 192
    .line 193
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 197
    move-result v1

    .line 198
    .line 199
    if-eqz v1, :cond_b

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 203
    move-result v0

    .line 204
    .line 205
    if-eqz v0, :cond_b

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    goto :goto_5

    .line 210
    .line 211
    .line 212
    :cond_b
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isModel()Z

    .line 213
    move-result v0

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 217
    .line 218
    :cond_c
    :goto_5
    const-string p2, "__community"

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 222
    move-result v0

    .line 223
    .line 224
    if-nez v0, :cond_d

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    move-result-object v0

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    .line 233
    :cond_d
    const-string p2, "__fromGlobalChat"

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 237
    move-result v0

    .line 238
    .line 239
    if-nez v0, :cond_e

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0, p2, v5}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 243
    move-result v0

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 247
    .line 248
    :cond_e
    const-string p2, "__hideDrawer"

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 252
    move-result v0

    .line 253
    .line 254
    if-nez v0, :cond_f

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0, p2, v5}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 258
    move-result v0

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 262
    .line 263
    :cond_f
    const-string p2, "__visitorMode"

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 267
    move-result v0

    .line 268
    .line 269
    if-nez v0, :cond_10

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getConfigCid()I

    .line 273
    move-result v0

    .line 274
    const/4 v1, -0x1

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 278
    move-result v1

    .line 279
    .line 280
    if-ne v0, v1, :cond_10

    .line 281
    .line 282
    if-lez v0, :cond_10

    .line 283
    .line 284
    .line 285
    invoke-virtual {p0, p2, v5}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 286
    move-result v0

    .line 287
    .line 288
    .line 289
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 290
    :cond_10
    return-void
.end method

.method protected static isBackTooFast()Z
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    sget-object v2, Lcom/narvii/app/NVActivity;->BACK_RECORDS:[J

    .line 7
    array-length v3, v2

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const-wide v4, 0x7fffffffffffffffL

    .line 13
    const/4 v6, 0x0

    .line 14
    move v7, v6

    .line 15
    .line 16
    :goto_0
    if-ge v7, v3, :cond_1

    .line 17
    .line 18
    aget-wide v8, v2, v7

    .line 19
    .line 20
    cmp-long v10, v8, v4

    .line 21
    .line 22
    if-gez v10, :cond_0

    .line 23
    move-wide v4, v8

    .line 24
    .line 25
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    sub-long/2addr v0, v4

    .line 28
    .line 29
    const-wide/16 v2, 0x0

    .line 30
    .line 31
    cmp-long v2, v0, v2

    .line 32
    .line 33
    if-lez v2, :cond_2

    .line 34
    .line 35
    const-wide/16 v2, 0x4b0

    .line 36
    .line 37
    cmp-long v0, v0, v2

    .line 38
    .line 39
    if-gez v0, :cond_2

    .line 40
    const/4 v6, 0x1

    .line 41
    :cond_2
    return v6
.end method

.method static bridge synthetic j(Lcom/narvii/app/NVActivity;)Lcom/narvii/widget/ACMAlertDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/app/NVActivity;->atoDialog:Lcom/narvii/widget/ACMAlertDialog;

    return-object p0
.end method

.method static justStartActivity(Landroid/content/Intent;)Z
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    if-eqz v0, :cond_9

    .line 20
    array-length v2, v0

    .line 21
    move v3, v1

    .line 22
    move v4, v3

    .line 23
    .line 24
    :goto_0
    if-ge v3, v2, :cond_8

    .line 25
    .line 26
    aget-object v5, v0, v3

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 30
    move-result-object v5

    .line 31
    .line 32
    if-nez v5, :cond_1

    .line 33
    .line 34
    const-string v5, ""

    .line 35
    .line 36
    :cond_1
    const-string v6, "com.facebook.ads."

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 40
    move-result v6

    .line 41
    const/4 v7, 0x1

    .line 42
    .line 43
    if-eqz v6, :cond_2

    .line 44
    :goto_1
    move v4, v7

    .line 45
    goto :goto_2

    .line 46
    .line 47
    :cond_2
    const-string v6, "com.amazon.device.ads."

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 51
    move-result v6

    .line 52
    .line 53
    if-eqz v6, :cond_3

    .line 54
    goto :goto_1

    .line 55
    .line 56
    :cond_3
    const-string v6, "com.mopub."

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 60
    move-result v6

    .line 61
    .line 62
    if-eqz v6, :cond_4

    .line 63
    goto :goto_1

    .line 64
    .line 65
    :cond_4
    const-string v6, "com.fyber."

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 69
    move-result v6

    .line 70
    .line 71
    if-eqz v6, :cond_5

    .line 72
    goto :goto_1

    .line 73
    .line 74
    :cond_5
    const-string v6, "com.verizon.ads."

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 78
    move-result v5

    .line 79
    .line 80
    if-eqz v5, :cond_6

    .line 81
    goto :goto_1

    .line 82
    .line 83
    :cond_6
    :goto_2
    if-eqz v4, :cond_7

    .line 84
    goto :goto_3

    .line 85
    .line 86
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 87
    goto :goto_0

    .line 88
    .line 89
    :cond_8
    :goto_3
    if-eqz v4, :cond_9

    .line 90
    .line 91
    .line 92
    invoke-static {p0}, Lcom/narvii/app/NVActivity;->openWebUrlDirectly(Landroid/content/Intent;)Z

    .line 93
    move-result p0

    .line 94
    return p0

    .line 95
    :cond_9
    return v1
.end method

.method static bridge synthetic k(Lcom/narvii/app/NVActivity;)Landroid/content/Intent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/app/NVActivity;->loginIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic l(Lcom/narvii/app/NVActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/app/NVActivity;->resetStartingActivity:Ljava/lang/Runnable;

    return-object p0
.end method

.method private synthetic lambda$onCreate$0()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/app/NVActivity;->inVisitorMode:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isCurrentCommunityJoined()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->onJoinCommunitySuccessInVisitorMode()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isActivityResumed()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x1

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/narvii/app/NVActivity;->updateVisitorModePending:Z

    .line 23
    return-void

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->updateVisitorModeUI()V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->visitorModeListener:Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/app/NVActivity;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lcom/narvii/community/AffiliationsService;->removeAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 36
    const/4 v0, 0x0

    .line 37
    .line 38
    iput-object v0, p0, Lcom/narvii/app/NVActivity;->visitorModeListener:Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;

    .line 39
    :cond_1
    return-void
.end method

.method private synthetic lambda$onStop$1(Lcom/narvii/app/LifecycleListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/narvii/app/LifecycleListener;->lifecycleOnStop(Lcom/narvii/app/LifecycleHost;)V

    .line 4
    return-void
.end method

.method private logActive()V
    .locals 3

    .line 1
    .line 2
    const-string v0, "_communityActiveHelper"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/community/CommunityActiveHelper;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget v1, p0, Lcom/narvii/app/NVActivity;->activeCid:I

    .line 13
    const/4 v2, -0x1

    .line 14
    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    const-string v1, "config"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 27
    move-result v1

    .line 28
    .line 29
    iput v1, p0, Lcom/narvii/app/NVActivity;->activeCid:I

    .line 30
    .line 31
    :cond_0
    iget v1, p0, Lcom/narvii/app/NVActivity;->activeCid:I

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityActiveHelper;->logActive(I)V

    .line 37
    :cond_1
    return-void
.end method

.method static bridge synthetic m(Lcom/narvii/app/NVActivity;Lcom/narvii/widget/ACMAlertDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/app/NVActivity;->atoDialog:Lcom/narvii/widget/ACMAlertDialog;

    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/app/NVActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/app/NVActivity;->atoDialogMessage:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic o(Lcom/narvii/app/NVActivity;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/app/NVActivity;->isStartingActivity:Z

    return-void
.end method

.method static openWebUrlDirectly(Landroid/content/Intent;)Z
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "android.intent.action.VIEW"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    const-string v3, "http"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    const-string v3, "https"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v0

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    :cond_0
    move v0, v1

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move v0, v2

    .line 56
    .line 57
    :goto_0
    if-eqz v0, :cond_2

    .line 58
    .line 59
    new-instance v3, Lcom/narvii/util/PackageUtils;

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 63
    move-result-object v4

    .line 64
    .line 65
    .line 66
    invoke-direct {v3, v4}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 70
    move-result-object v4

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 74
    move-result-object v4

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v4}, Lcom/narvii/util/PackageUtils;->isPermalinkHost(Ljava/lang/String;)Z

    .line 78
    move-result v3

    .line 79
    .line 80
    if-eqz v3, :cond_2

    .line 81
    .line 82
    goto/16 :goto_3

    .line 83
    .line 84
    :cond_2
    if-eqz v0, :cond_c

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    const/high16 v3, 0x10000

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 98
    move-result-object v3

    .line 99
    .line 100
    if-eqz v3, :cond_3

    .line 101
    .line 102
    iget-boolean v4, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 103
    .line 104
    if-eqz v4, :cond_3

    .line 105
    .line 106
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 107
    .line 108
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 109
    .line 110
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    return v1

    .line 115
    .line 116
    .line 117
    :cond_3
    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 118
    move-result-object v0

    .line 119
    .line 120
    .line 121
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 122
    move-result v3

    .line 123
    .line 124
    if-lez v3, :cond_c

    .line 125
    .line 126
    .line 127
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 128
    move-result-object v3

    .line 129
    .line 130
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 131
    .line 132
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 133
    .line 134
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 138
    move-result-object v4

    .line 139
    .line 140
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 141
    .line 142
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 143
    .line 144
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    .line 149
    .line 150
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 151
    move-result-object v0

    .line 152
    move v3, v2

    .line 153
    .line 154
    .line 155
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    move-result v4

    .line 157
    .line 158
    if-eqz v4, :cond_b

    .line 159
    .line 160
    .line 161
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    move-result-object v4

    .line 163
    .line 164
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 165
    .line 166
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 167
    .line 168
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 169
    .line 170
    const-string v6, "com.android.chrome"

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    move-result v6

    .line 175
    .line 176
    if-eqz v6, :cond_5

    .line 177
    .line 178
    const/16 v6, 0x63

    .line 179
    goto :goto_2

    .line 180
    .line 181
    :cond_5
    const-string v6, "com.chrome.beta"

    .line 182
    .line 183
    .line 184
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    move-result v6

    .line 186
    .line 187
    if-eqz v6, :cond_6

    .line 188
    .line 189
    const/16 v6, 0x62

    .line 190
    goto :goto_2

    .line 191
    .line 192
    :cond_6
    const-string v6, "com.chrome.dev"

    .line 193
    .line 194
    .line 195
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    move-result v6

    .line 197
    .line 198
    if-eqz v6, :cond_7

    .line 199
    .line 200
    const/16 v6, 0x61

    .line 201
    goto :goto_2

    .line 202
    .line 203
    :cond_7
    const-string v6, "com.chrome.canary"

    .line 204
    .line 205
    .line 206
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    move-result v6

    .line 208
    .line 209
    if-eqz v6, :cond_8

    .line 210
    .line 211
    const/16 v6, 0x60

    .line 212
    goto :goto_2

    .line 213
    .line 214
    :cond_8
    const-string v6, "com.sec.android.app.sbrowser"

    .line 215
    .line 216
    .line 217
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    move-result v6

    .line 219
    .line 220
    if-eqz v6, :cond_9

    .line 221
    .line 222
    const/16 v6, 0x59

    .line 223
    goto :goto_2

    .line 224
    .line 225
    :cond_9
    const-string v6, "org.mozilla.firefox"

    .line 226
    .line 227
    .line 228
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    move-result v6

    .line 230
    .line 231
    if-eqz v6, :cond_a

    .line 232
    .line 233
    const/16 v6, 0x45

    .line 234
    goto :goto_2

    .line 235
    :cond_a
    move v6, v2

    .line 236
    .line 237
    :goto_2
    if-le v6, v3, :cond_4

    .line 238
    .line 239
    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 240
    .line 241
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0, v5, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    move v3, v6

    .line 246
    goto :goto_1

    .line 247
    :cond_b
    return v1

    .line 248
    :cond_c
    :goto_3
    return v2
.end method

.method static bridge synthetic p(Lcom/narvii/app/NVActivity;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/app/NVActivity;->loginIntent:Landroid/content/Intent;

    return-void
.end method

.method static bridge synthetic q(Lcom/narvii/app/NVActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/app/NVActivity;->resetStartingActivity:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic r(Lcom/narvii/app/NVActivity;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/app/NVActivity;->startRemoveViewAnimation(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public static safedk_ComponentActivity_startActivityForResult_e42adb0e2f1f6ab5a31f68e8cb5ca256(Landroidx/activity/ComponentActivity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p0, "p0"    # Landroidx/activity/ComponentActivity;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I
    .param p3, "p3"    # Landroid/os/Bundle;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static safedk_FragmentActivity_startActivityFromFragment_dee2891e09a0991938bcd2569510a76c(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/FragmentActivity;
    .param p1, "p1"    # Landroidx/fragment/app/Fragment;
    .param p2, "p2"    # Landroid/content/Intent;
    .param p3, "p3"    # I
    .param p4, "p4"    # Landroid/os/Bundle;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static safedk_NVActivity_startActivityForResult_1e7758655dff1587c7e4c04d4a2a3a59(Lcom/narvii/app/NVActivity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVActivity;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I
    .param p3, "p3"    # Landroid/os/Bundle;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

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

.method private startRemoveViewAnimation(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget v1, Lcom/narvii/lib/R$anim;->fade_out_fast:I

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    new-instance v1, Lcom/narvii/app/NVActivity$12;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/app/NVActivity$12;-><init>(Lcom/narvii/app/NVActivity;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 22
    return-void
.end method

.method static trackStartActivity(Landroid/content/Intent;)V
    .locals 7

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 13
    move-result-object v0

    .line 14
    array-length v1, v0

    .line 15
    const/4 v2, 0x2

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    :goto_0
    if-lez v1, :cond_3

    .line 19
    .line 20
    aget-object v3, v0, v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    const-string/jumbo v4, "startActivity"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    move-result v3

    .line 31
    .line 32
    if-eqz v3, :cond_2

    .line 33
    const/4 v3, 0x1

    .line 34
    add-int/2addr v1, v3

    .line 35
    .line 36
    aget-object v0, v0, v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    const/16 v4, 0x2e

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    .line 46
    move-result v4

    .line 47
    .line 48
    if-lez v4, :cond_1

    .line 49
    add-int/2addr v4, v3

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v1, "."

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v1, "():"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 82
    move-result v0

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    new-instance v1, Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 98
    move-result v1

    .line 99
    .line 100
    sget-object v4, Lcom/narvii/app/NVActivity;->trackStartActivityTmp:Lcom/narvii/util/statistics/TmpValue;

    .line 101
    .line 102
    new-array v2, v2, [Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    move-result-object v5

    .line 107
    const/4 v6, 0x0

    .line 108
    .line 109
    aput-object v5, v2, v6

    .line 110
    .line 111
    aput-object v0, v2, v3

    .line 112
    .line 113
    const-wide/16 v5, 0x1388

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4, v2, v5, v6}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;J)V

    .line 117
    .line 118
    const-string v0, "__trackStartActivityId"

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    goto :goto_1

    .line 123
    .line 124
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 125
    goto :goto_0

    .line 126
    :catch_0
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public _communityId()I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isGlobal()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "__communityId"

    .line 15
    const/4 v2, -0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public addDispatchTouchEventListener(Lcom/narvii/app/NVActivity$DispatchTouchEventListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->dispatchTouchEventListeners:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/app/NVActivity;->dispatchTouchEventListeners:Ljava/util/ArrayList;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->dispatchTouchEventListeners:Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public addThemeDownloadObserver(Lcom/narvii/app/NVFragment;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->themeDownloadObservers:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public addWeakLifecycleListener(Lcom/narvii/app/LifecycleListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

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
    iput-object v0, p0, Lcom/narvii/app/NVActivity;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/app/NVActivity;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/services/ServiceManager;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/narvii/services/ServiceManager;-><init>(Lcom/narvii/app/NVContext;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/app/NVActivity;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->initServiceManager(Lcom/narvii/services/ServiceManager;)V

    .line 18
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

    .line 1
    .line 2
    .line 3
    const v0, 0x1020002

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Landroid/view/ViewGroup;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    sget v1, Lcom/narvii/lib/R$id;->toast_frame:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 27
    :cond_1
    return-void
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
    iget-boolean v0, p0, Lcom/narvii/app/NVActivity;->_fromPush:Z

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
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    return-void
.end method

.method public configPageBackground()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sget v1, Lcom/narvii/lib/R$id;->page_background:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    instance-of v2, v0, Ljava/lang/Boolean;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    check-cast v0, Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    return-void

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    const v2, 0x1020002

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    check-cast v0, Landroid/view/ViewGroup;

    .line 43
    .line 44
    new-instance v2, Lcom/narvii/theme/PageBackgroundView;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    .line 51
    invoke-direct {v2, v3}, Lcom/narvii/theme/PageBackgroundView;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    const-string v3, "config"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    check-cast v3, Lcom/narvii/config/ConfigService;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 63
    move-result-object v4

    .line 64
    .line 65
    .line 66
    invoke-interface {v4}, Lcom/narvii/config/ConfigTheme;->pageBackground()Landroid/graphics/drawable/Drawable;

    .line 67
    move-result-object v4

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v4}, Lcom/narvii/theme/PageBackgroundView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->showThemeColorAsAlternativeBackground()Z

    .line 74
    move-result v4

    .line 75
    .line 76
    if-eqz v4, :cond_1

    .line 77
    .line 78
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 82
    move-result-object v3

    .line 83
    .line 84
    .line 85
    invoke-interface {v3}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 86
    move-result v3

    .line 87
    .line 88
    .line 89
    invoke-direct {v4, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    const/4 v4, 0x0

    .line 92
    .line 93
    .line 94
    :goto_0
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    .line 96
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v1, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 100
    const/4 v4, 0x0

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 115
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isPrintingKey()Z

    .line 17
    move-result p1

    .line 18
    .line 19
    if-eqz p1, :cond_3

    .line 20
    .line 21
    const-string/jumbo p1, "stats"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    check-cast p1, Lcom/narvii/util/stats/StatsService;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iget v1, p0, Lcom/narvii/app/NVActivity;->statsCid:I

    .line 32
    const/4 v2, -0x1

    .line 33
    .line 34
    if-ne v1, v2, :cond_1

    .line 35
    .line 36
    const-string v1, "config"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 46
    move-result v1

    .line 47
    .line 48
    iput v1, p0, Lcom/narvii/app/NVActivity;->statsCid:I

    .line 49
    .line 50
    :cond_1
    iget v1, p0, Lcom/narvii/app/NVActivity;->statsCid:I

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1}, Lcom/narvii/util/stats/StatsService;->touchOrResume(I)V

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;->logActive()V

    .line 57
    :cond_3
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->dispatchTouchEventListeners:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/app/NVActivity$DispatchTouchEventListener;

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Lcom/narvii/app/NVActivity$DispatchTouchEventListener;->onDispatchTouchEvent()V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x1

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    sput-boolean v1, Lcom/narvii/app/NVActivity;->userTouching:Z

    .line 34
    goto :goto_1

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 38
    move-result v0

    .line 39
    .line 40
    if-eq v0, v1, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 44
    move-result v0

    .line 45
    const/4 v2, 0x3

    .line 46
    .line 47
    if-ne v0, v2, :cond_3

    .line 48
    :cond_2
    const/4 v0, 0x0

    .line 49
    .line 50
    sput-boolean v0, Lcom/narvii/app/NVActivity;->userTouching:Z

    .line 51
    .line 52
    :cond_3
    :goto_1
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 58
    move-result v0

    .line 59
    .line 60
    if-ne v0, v1, :cond_4

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Lcom/narvii/util/TouchTrackUtils;->findTouchTargetView(Landroid/view/Window;)Landroid/view/View;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    const-string v1, "TouchTrack"

    .line 71
    .line 72
    .line 73
    invoke-static {v0}, Lcom/narvii/util/TouchTrackUtils;->getViewInfo(Landroid/view/View;)Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_4
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 81
    move-result v0

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 85
    move-result p1

    .line 86
    .line 87
    if-nez p1, :cond_7

    .line 88
    .line 89
    const-string/jumbo p1, "stats"

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    check-cast p1, Lcom/narvii/util/stats/StatsService;

    .line 96
    .line 97
    if-eqz p1, :cond_6

    .line 98
    .line 99
    iget v1, p0, Lcom/narvii/app/NVActivity;->statsCid:I

    .line 100
    const/4 v2, -0x1

    .line 101
    .line 102
    if-ne v1, v2, :cond_5

    .line 103
    .line 104
    const-string v1, "config"

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    move-result-object v1

    .line 109
    .line 110
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 114
    move-result v1

    .line 115
    .line 116
    iput v1, p0, Lcom/narvii/app/NVActivity;->statsCid:I

    .line 117
    .line 118
    :cond_5
    iget v1, p0, Lcom/narvii/app/NVActivity;->statsCid:I

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v1}, Lcom/narvii/util/stats/StatsService;->touchOrResume(I)V

    .line 122
    .line 123
    .line 124
    :cond_6
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;->logActive()V

    .line 125
    :cond_7
    return v0
.end method

.method public ensureLogin(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVActivity;->ensureLogin(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public ensureLogin(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3

    const-string v0, "account"

    .line 2
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 3
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/narvii/app/NVActivity;->onLoginResult(ZLandroid/content/Intent;)V

    goto :goto_1

    .line 5
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ndc://login"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "Source"

    .line 6
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "promptType"

    const-string v1, "Required"

    .line 7
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput-object p1, p0, Lcom/narvii/app/NVActivity;->loginIntent:Landroid/content/Intent;

    :try_start_0
    sget p1, Lcom/narvii/app/NVActivity;->REQUEST_LOGIN:I

    .line 8
    invoke-static {p0, v0, p1}, Lcom/narvii/app/NVActivity;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p1, "unable to start login activity"

    .line 9
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :goto_0
    sget p1, Lcom/narvii/lib/R$string;->login_first:I

    const/4 p2, 0x0

    .line 10
    invoke-static {p0, p1, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :goto_1
    return-void
.end method

.method public finish()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    const-string v1, "customFinishAnimIn"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 19
    move-result-object v0

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 24
    move-result v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    const-string v3, "customFinishAnimOut"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 34
    move-result v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 38
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isActionBarOverlaying()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lcom/narvii/util/Utils;->getActionBarHeight(Landroid/content/Context;)I

    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
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

    iget-object v0, p0, Lcom/narvii/app/NVActivity;->atoDialogMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getBooleanParam(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getBooleanParam(Ljava/lang/String;Z)Z
    .locals 2

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/util/ParamUtils;->getBooleanParam(Landroid/app/Activity;Ljava/lang/String;Z)Z

    move-result p2

    iget v0, p0, Lcom/narvii/app/NVActivity;->crashlyticsStatus:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/app/NVActivity;->crashlyticsParams:Ljava/util/HashMap;

    .line 2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return p2
.end method

.method public getConfigCid()I
    .locals 1

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

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

.method public getContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getContextId()J
    .locals 2

    iget-wide v0, p0, Lcom/narvii/app/NVActivity;->cid:J

    return-wide v0
.end method

.method protected getCrashlyticsClassName()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getCrashlyticsFootprint()Ljava/lang/String;
    .locals 6

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "activity "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v1, p0, Lcom/narvii/app/NVActivity;->crashlyticsStatus:I

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    const-string v1, "create "

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    const-string v1, "restore "

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getCrashlyticsClassName()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v1, " ["

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Lcom/narvii/app/NVActivity;->getStartActivityTrack(Landroid/content/Intent;)Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    const-string v2, ", "

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->_communityId()I

    .line 59
    move-result v1

    .line 60
    .line 61
    if-gez v1, :cond_3

    .line 62
    .line 63
    const/16 v1, 0x3f

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    goto :goto_1

    .line 68
    .line 69
    :cond_3
    if-nez v1, :cond_4

    .line 70
    .line 71
    const/16 v1, 0x67

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    goto :goto_1

    .line 76
    .line 77
    :cond_4
    const/16 v3, 0x78

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    if-eqz v1, :cond_5

    .line 94
    .line 95
    const-string v1, ", url="

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    :cond_5
    iget-object v1, p0, Lcom/narvii/app/NVActivity;->crashlyticsParams:Ljava/util/HashMap;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    .line 118
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 119
    move-result-object v1

    .line 120
    .line 121
    .line 122
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    move-result v3

    .line 124
    .line 125
    if-eqz v3, :cond_7

    .line 126
    .line 127
    .line 128
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    move-result-object v3

    .line 130
    .line 131
    check-cast v3, Ljava/util/Map$Entry;

    .line 132
    .line 133
    .line 134
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 135
    move-result-object v4

    .line 136
    .line 137
    check-cast v4, Ljava/lang/String;

    .line 138
    .line 139
    const-string v5, "_"

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 143
    move-result v4

    .line 144
    .line 145
    if-eqz v4, :cond_6

    .line 146
    goto :goto_2

    .line 147
    .line 148
    .line 149
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 153
    move-result-object v4

    .line 154
    .line 155
    check-cast v4, Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    const/16 v4, 0x3d

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 167
    move-result-object v3

    .line 168
    .line 169
    check-cast v3, Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    goto :goto_2

    .line 174
    .line 175
    :cond_7
    const/16 v1, 0x5d

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object v0

    .line 183
    return-object v0
.end method

.method public getCrashlyticsKey()Ljava/lang/String;
    .locals 6

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getCrashlyticsClassName()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, "["

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->_communityId()I

    .line 21
    move-result v1

    .line 22
    .line 23
    if-gez v1, :cond_0

    .line 24
    .line 25
    const/16 v1, 0x3f

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    if-nez v1, :cond_1

    .line 32
    .line 33
    const/16 v1, 0x67

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_1
    const/16 v2, 0x78

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    :goto_0
    iget-object v1, p0, Lcom/narvii/app/NVActivity;->crashlyticsParams:Ljava/util/HashMap;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v2

    .line 60
    .line 61
    if-eqz v2, :cond_4

    .line 62
    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    check-cast v2, Ljava/util/Map$Entry;

    .line 68
    .line 69
    .line 70
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 71
    move-result-object v3

    .line 72
    .line 73
    check-cast v3, Ljava/lang/String;

    .line 74
    .line 75
    const-string v4, "_"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 79
    move-result v3

    .line 80
    .line 81
    if-nez v3, :cond_2

    .line 82
    .line 83
    .line 84
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 85
    move-result-object v3

    .line 86
    .line 87
    check-cast v3, Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 91
    move-result v3

    .line 92
    .line 93
    const/16 v4, 0x26

    .line 94
    .line 95
    if-eq v3, v4, :cond_3

    .line 96
    goto :goto_1

    .line 97
    .line 98
    .line 99
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 100
    move-result-object v3

    .line 101
    .line 102
    check-cast v3, Ljava/lang/String;

    .line 103
    const/4 v4, 0x1

    .line 104
    .line 105
    const/16 v5, 0x25

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 109
    move-result-object v3

    .line 110
    .line 111
    .line 112
    invoke-static {v3}, Lcom/narvii/util/StringUtils;->isUuid(Ljava/lang/String;)Z

    .line 113
    move-result v4

    .line 114
    .line 115
    if-eqz v4, :cond_2

    .line 116
    .line 117
    const-string v4, ","

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 124
    move-result-object v2

    .line 125
    .line 126
    check-cast v2, Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const/16 v2, 0x3d

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    goto :goto_1

    .line 139
    .line 140
    :cond_4
    const/16 v1, 0x5d

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object v0

    .line 148
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

    iget v0, p0, Lcom/narvii/app/NVActivity;->initStatus:I

    return v0
.end method

.method public getIntParam(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getIntParam(Ljava/lang/String;I)I
    .locals 2

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/util/ParamUtils;->getIntParam(Landroid/app/Activity;Ljava/lang/String;I)I

    move-result p2

    iget v0, p0, Lcom/narvii/app/NVActivity;->crashlyticsStatus:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/app/NVActivity;->crashlyticsParams:Ljava/util/HashMap;

    .line 2
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return p2
.end method

.method public getLifecycleState()I
    .locals 1

    iget v0, p0, Lcom/narvii/app/NVActivity;->lifecycleState:I

    return v0
.end method

.method public getMainFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getRootFragment()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "__storyDraftId"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isValidPage()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string/jumbo v0, "story_edit_wildcard"

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
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-class v1, Lcom/narvii/logging/PageRefererInfo;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/logging/PageRefererInfo;

    .line 15
    return-object v0
.end method

.method public getParentContext()Lcom/narvii/app/NVContext;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/app/NVContext;

    .line 15
    return-object v0

    .line 16
    .line 17
    :cond_0
    const-string v0, "Application is not a NVContext"

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 21
    const/4 v0, 0x0

    .line 22
    return-object v0
.end method

.method public getPvId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/app/NVActivity;->pvId:Ljava/lang/String;

    return-object v0
.end method

.method public getRightButtonDefaultBackground()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 16
    move-result v0

    .line 17
    .line 18
    sget-object v1, Lcom/narvii/app/NVActivity;->hsv:[F

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 22
    const/4 v0, 0x2

    .line 23
    .line 24
    aget v2, v1, v0

    .line 25
    .line 26
    const/high16 v3, 0x3f400000    # 0.75f

    .line 27
    mul-float/2addr v2, v3

    .line 28
    .line 29
    aput v2, v1, v0

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 33
    move-result v0

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lcom/narvii/app/NVActivity;->getRightButtonBackground(I)Landroid/graphics/drawable/Drawable;

    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method

.method public getRightTextView()Landroid/widget/TextView;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->initActionBar()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    const/4 v0, 0x0

    .line 11
    return-object v0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    const-string v1, "right"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Landroid/widget/TextView;

    .line 28
    return-object v0
.end method

.method public getRootFragment()Landroidx/fragment/app/Fragment;
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/services/ServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/app/NVApplication;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0, p1}, Lcom/narvii/app/NVApplication;->getService(Lcom/narvii/app/NVContext;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getStatusBarOverlaySize()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isTranslucentStatusBar()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public getStrategyInfo()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "__strategyInfo"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getStringParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/app/NVActivity;->crashlyticsStatus:I

    .line 7
    .line 8
    if-lez v1, :cond_3

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v1, "<null>"

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 17
    move-result v1

    .line 18
    .line 19
    const/16 v2, 0x40

    .line 20
    .line 21
    if-ge v1, v2, :cond_1

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    const-string v2, "\""

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v1, 0x0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 47
    move-result v1

    .line 48
    .line 49
    const/16 v2, 0x7b

    .line 50
    .line 51
    if-ne v1, v2, :cond_2

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    const-string/jumbo v2, "{"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 65
    move-result v2

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v2, " bytes}"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v1

    .line 78
    goto :goto_0

    .line 79
    .line 80
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    const-string v2, "<"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 92
    move-result v2

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v2, " bytes>"

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    :goto_0
    iget-object v2, p0, Lcom/narvii/app/NVActivity;->crashlyticsParams:Ljava/util/HashMap;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_3
    return-object v0
.end method

.method public handleATO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isHandlingATO()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/app/NVActivity;->atoDialog:Lcom/narvii/widget/ACMAlertDialog;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p3}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    iget-object p3, p0, Lcom/narvii/app/NVActivity;->atoDialog:Lcom/narvii/widget/ACMAlertDialog;

    .line 26
    .line 27
    iput-object p4, p0, Lcom/narvii/app/NVActivity;->atoDialogMessage:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3, p4}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    move-result p3

    .line 35
    .line 36
    if-eqz p3, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    move-result-object p3

    .line 41
    .line 42
    .line 43
    const p4, 0x104000a

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 47
    move-result-object p5

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    move-result p3

    .line 52
    .line 53
    if-eqz p3, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 57
    move-result-object p3

    .line 58
    .line 59
    sget p4, Lcom/narvii/lib/R$string;->cancel:I

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 63
    move-result-object p6

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 67
    move-result-object p3

    .line 68
    .line 69
    sget p4, Lcom/narvii/lib/R$color;->dialog_option_blue:I

    .line 70
    .line 71
    .line 72
    invoke-static {p3, p4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 73
    move-result p3

    .line 74
    .line 75
    if-nez p7, :cond_3

    .line 76
    .line 77
    iget-object p4, p0, Lcom/narvii/app/NVActivity;->atoDialog:Lcom/narvii/widget/ACMAlertDialog;

    .line 78
    .line 79
    new-instance p7, Lcom/narvii/app/NVActivity$14;

    .line 80
    .line 81
    .line 82
    invoke-direct {p7, p0}, Lcom/narvii/app/NVActivity$14;-><init>(Lcom/narvii/app/NVActivity;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p4, p6, p3, p7}, Lcom/narvii/widget/ACMAlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 86
    .line 87
    :cond_3
    iget-object p4, p0, Lcom/narvii/app/NVActivity;->atoDialog:Lcom/narvii/widget/ACMAlertDialog;

    .line 88
    .line 89
    new-instance p6, Lcom/narvii/app/NVActivity$15;

    .line 90
    .line 91
    .line 92
    invoke-direct {p6, p0, p2, p1}, Lcom/narvii/app/NVActivity$15;-><init>(Lcom/narvii/app/NVActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p4, p5, p3, p6}, Lcom/narvii/widget/ACMAlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 96
    .line 97
    iget-object p1, p0, Lcom/narvii/app/NVActivity;->atoDialog:Lcom/narvii/widget/ACMAlertDialog;

    .line 98
    .line 99
    new-instance p2, Lcom/narvii/app/NVActivity$16;

    .line 100
    .line 101
    .line 102
    invoke-direct {p2, p0}, Lcom/narvii/app/NVActivity$16;-><init>(Lcom/narvii/app/NVActivity;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 106
    .line 107
    iget-object p1, p0, Lcom/narvii/app/NVActivity;->atoDialog:Lcom/narvii/widget/ACMAlertDialog;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 111
    :cond_4
    :goto_0
    return-void
.end method

.method public handleCommunityNotJoined(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isHandlingJoinCommunity()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    if-gtz p1, :cond_1

    .line 16
    return-void

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getConfigCid()I

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eq v0, p1, :cond_2

    .line 23
    return-void

    .line 24
    .line 25
    :cond_2
    const-string v0, "joinCommunity"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Lcom/narvii/community/IJoinCommunityService;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, p0, p1}, Lcom/narvii/community/IJoinCommunityService;->showJoinCommunityDialog(Lcom/narvii/app/NVActivity;I)Landroid/app/Dialog;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    iput-object p1, p0, Lcom/narvii/app/NVActivity;->joinCommunityDialog:Landroid/app/Dialog;

    .line 40
    :cond_3
    :goto_0
    return-void
.end method

.method public hasActionBar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/app/NVActivity;->abAvailable:Z

    return v0
.end method

.method public hasPageBackground()Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->pageBackground()Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method protected initActionBar()V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/app/NVActivity;->abInited:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/app/NVActivity;->abInited:Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    sget-object v2, Lcom/narvii/lib/R$styleable;->AminoTheme:[I

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    iput v2, p0, Lcom/narvii/app/NVActivity;->abFlags:I

    .line 22
    .line 23
    sget v3, Lcom/narvii/lib/R$styleable;->AminoTheme_themeAmino:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 27
    move-result v3

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    iget v3, p0, Lcom/narvii/app/NVActivity;->abFlags:I

    .line 32
    or-int/2addr v3, v0

    .line 33
    .line 34
    iput v3, p0, Lcom/narvii/app/NVActivity;->abFlags:I

    .line 35
    .line 36
    :cond_1
    sget v3, Lcom/narvii/lib/R$styleable;->AminoTheme_themeDark:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 40
    move-result v3

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    iget v3, p0, Lcom/narvii/app/NVActivity;->abFlags:I

    .line 45
    .line 46
    or-int/lit8 v3, v3, 0x8

    .line 47
    .line 48
    iput v3, p0, Lcom/narvii/app/NVActivity;->abFlags:I

    .line 49
    .line 50
    :cond_2
    sget v3, Lcom/narvii/lib/R$styleable;->AminoTheme_themeActionbarOverlay:I

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 54
    move-result v3

    .line 55
    .line 56
    if-eqz v3, :cond_3

    .line 57
    .line 58
    iget v3, p0, Lcom/narvii/app/NVActivity;->abFlags:I

    .line 59
    .line 60
    or-int/lit8 v3, v3, 0x2

    .line 61
    .line 62
    iput v3, p0, Lcom/narvii/app/NVActivity;->abFlags:I

    .line 63
    .line 64
    :cond_3
    sget v3, Lcom/narvii/lib/R$styleable;->AminoTheme_themeTranslucentStatus:I

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 68
    move-result v2

    .line 69
    .line 70
    if-eqz v2, :cond_4

    .line 71
    .line 72
    iget v2, p0, Lcom/narvii/app/NVActivity;->abFlags:I

    .line 73
    .line 74
    or-int/lit8 v2, v2, 0x4

    .line 75
    .line 76
    iput v2, p0, Lcom/narvii/app/NVActivity;->abFlags:I

    .line 77
    .line 78
    .line 79
    :cond_4
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    .line 81
    iget v1, p0, Lcom/narvii/app/NVActivity;->abFlags:I

    .line 82
    and-int/2addr v1, v0

    .line 83
    .line 84
    if-nez v1, :cond_5

    .line 85
    return-void

    .line 86
    .line 87
    .line 88
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 89
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_0

    .line 91
    :catch_0
    const/4 v1, 0x0

    .line 92
    .line 93
    :goto_0
    if-eqz v1, :cond_7

    .line 94
    .line 95
    iput-boolean v0, p0, Lcom/narvii/app/NVActivity;->abAvailable:Z

    .line 96
    .line 97
    .line 98
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;->forceEllipsize()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    if-eqz v0, :cond_6

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    sget v2, Lcom/narvii/lib/R$id;->actionbar_title:I

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    if-nez v0, :cond_7

    .line 117
    .line 118
    .line 119
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isDarkTheme()Z

    .line 120
    move-result v0

    .line 121
    .line 122
    sget v2, Lcom/narvii/lib/R$layout;->actionbar_dark_layout:I

    .line 123
    .line 124
    sget v3, Lcom/narvii/lib/R$layout;->actionbar_layout:I

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v0, v2, v3}, Lcom/narvii/app/NVActivity;->getActionbarLayoutId(ZII)I

    .line 128
    move-result v0

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 135
    move-result-object v0

    .line 136
    .line 137
    sget v1, Lcom/narvii/lib/R$id;->actionbar_title:I

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    move-result-object v1

    .line 142
    .line 143
    check-cast v1, Landroid/widget/TextView;

    .line 144
    .line 145
    iput-object v1, p0, Lcom/narvii/app/NVActivity;->abTitle:Landroid/widget/TextView;

    .line 146
    .line 147
    sget v1, Lcom/narvii/lib/R$id;->actionbar_back:I

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 151
    move-result-object v0

    .line 152
    .line 153
    iget-object v1, p0, Lcom/narvii/app/NVActivity;->backListener:Landroid/view/View$OnClickListener;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->setActionBarBackgroundDefault()V

    .line 160
    :cond_7
    return-void
.end method

.method public initPageBackground()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isPagebackgroundEnabled()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    const v1, 0x1020002

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Landroid/view/ViewGroup;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    return-void

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    new-instance v1, Lcom/narvii/app/NVActivity$8;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/narvii/app/NVActivity$8;-><init>(Lcom/narvii/app/NVActivity;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    .line 36
    return-void
.end method

.method protected initServiceManager(Lcom/narvii/services/ServiceManager;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0, p1}, Lcom/narvii/app/NVApplication;->initActivityServices(Lcom/narvii/app/NVActivity;Lcom/narvii/services/ServiceManager;)V

    .line 8
    return-void
.end method

.method public isActionBarCustomed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/app/NVActivity;->actionBarCustomed:Z

    return v0
.end method

.method public isActionBarOverlaying()Z
    .locals 1

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

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

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
    .line 14
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Lcom/narvii/app/NVActivity;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 22
    move-result v0

    .line 23
    return v0
.end method

.method public isDarkTheme()Z
    .locals 1

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

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

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
    .line 14
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    .line 19
    :goto_0
    const-string v1, "__interactionScope"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 23
    move-result v0

    .line 24
    return v0
.end method

.method public isHandlingATO()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->atoDialog:Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

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

.method public isHandlingJoinCommunity()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->joinCommunityDialog:Landroid/app/Dialog;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

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

.method public isInVisitorMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/app/NVActivity;->inVisitorMode:Z

    return v0
.end method

.method public isModel()Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "__model"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
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

    iget-boolean v0, p0, Lcom/narvii/app/NVActivity;->isStartingActivity:Z

    return v0
.end method

.method public isTranslucentStatusBar()Z
    .locals 1

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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isInVisitorMode()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isCurrentCommunityJoined()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method protected logPageViewEvent()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isValidPage()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method protected onActiveChanged(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->pageViewDelegate:Lcom/narvii/logging/PageViewDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/logging/PageViewDelegate;->sendPageViewEvent(Z)V

    .line 6
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/narvii/app/NVActivity;->REQUEST_LOGIN:I

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    new-instance p1, Lcom/narvii/app/NVActivity$10;

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, p0}, Lcom/narvii/app/NVActivity$10;-><init>(Lcom/narvii/app/NVActivity;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->activityRequestMapping:Ljava/util/HashMap;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 33
    return-void

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 37
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/narvii/app/NVActivity;->addBack()V

    .line 7
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "@@@"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    const/16 v1, 0xc

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    const/16 v1, 0xd

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->_communityId()I

    .line 35
    move-result v0

    .line 36
    const/4 v1, 0x0

    .line 37
    const/4 v2, 0x1

    .line 38
    .line 39
    if-lez v0, :cond_0

    .line 40
    .line 41
    const-string v0, "__visitorMode"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    move v0, v2

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move v0, v1

    .line 51
    .line 52
    :goto_0
    iput-boolean v0, p0, Lcom/narvii/app/NVActivity;->inVisitorMode:Z

    .line 53
    .line 54
    const-string v0, "affiliations"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    check-cast v0, Lcom/narvii/community/AffiliationsService;

    .line 61
    .line 62
    iput-object v0, p0, Lcom/narvii/app/NVActivity;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isVisitorNotJoined()Z

    .line 66
    move-result v0

    .line 67
    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    new-instance v0, Lcom/narvii/app/e;

    .line 71
    .line 72
    .line 73
    invoke-direct {v0, p0}, Lcom/narvii/app/e;-><init>(Lcom/narvii/app/NVActivity;)V

    .line 74
    .line 75
    iput-object v0, p0, Lcom/narvii/app/NVActivity;->visitorModeListener:Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;

    .line 76
    .line 77
    iget-object v3, p0, Lcom/narvii/app/NVActivity;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v0}, Lcom/narvii/community/AffiliationsService;->addAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 81
    .line 82
    :cond_1
    if-nez p1, :cond_2

    .line 83
    .line 84
    .line 85
    invoke-static {}, Lcom/narvii/util/Utils;->generateUniqueLongId()J

    .line 86
    move-result-wide v3

    .line 87
    .line 88
    iput-wide v3, p0, Lcom/narvii/app/NVActivity;->cid:J

    .line 89
    goto :goto_1

    .line 90
    .line 91
    :cond_2
    const-string v0, "__cid"

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 95
    move-result-wide v3

    .line 96
    .line 97
    iput-wide v3, p0, Lcom/narvii/app/NVActivity;->cid:J

    .line 98
    .line 99
    .line 100
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isValidPage()Z

    .line 101
    move-result v0

    .line 102
    .line 103
    if-eqz v0, :cond_3

    .line 104
    .line 105
    const-string v0, "_pushTrackId"

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    iput-object v0, p0, Lcom/narvii/app/NVActivity;->_pushTrackId:Ljava/lang/String;

    .line 112
    .line 113
    const-string v0, "_pushIntent"

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    .line 117
    move-result v0

    .line 118
    .line 119
    iput-boolean v0, p0, Lcom/narvii/app/NVActivity;->_fromPush:Z

    .line 120
    .line 121
    :cond_3
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 122
    .line 123
    if-nez v0, :cond_4

    .line 124
    .line 125
    new-instance v0, Lcom/narvii/services/ServiceManager;

    .line 126
    .line 127
    .line 128
    invoke-direct {v0, p0}, Lcom/narvii/services/ServiceManager;-><init>(Lcom/narvii/app/NVContext;)V

    .line 129
    .line 130
    iput-object v0, p0, Lcom/narvii/app/NVActivity;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->initServiceManager(Lcom/narvii/services/ServiceManager;)V

    .line 134
    .line 135
    :cond_4
    if-nez p1, :cond_8

    .line 136
    .line 137
    iput-boolean v2, p0, Lcom/narvii/app/NVActivity;->newCreate:Z

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    .line 141
    move-result v0

    .line 142
    .line 143
    if-nez v0, :cond_6

    .line 144
    .line 145
    .line 146
    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->getTaskId()I

    .line 147
    move-result v0

    .line 148
    .line 149
    if-nez v0, :cond_5

    .line 150
    goto :goto_2

    .line 151
    .line 152
    .line 153
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    .line 154
    move-result v0

    .line 155
    .line 156
    .line 157
    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->getTaskId()I

    .line 158
    move-result v3

    .line 159
    .line 160
    if-eq v0, v3, :cond_7

    .line 161
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string v3, " has a different taskId "

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    .line 177
    move-result v3

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    move-result-object v0

    .line 185
    .line 186
    .line 187
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 188
    goto :goto_3

    .line 189
    .line 190
    :cond_6
    :goto_2
    iput-boolean v2, p0, Lcom/narvii/app/NVActivity;->initTaskActivity:Z

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    .line 194
    move-result v0

    .line 195
    .line 196
    iput v0, p0, Lcom/narvii/app/NVActivity;->resetTaskId:I

    .line 197
    .line 198
    .line 199
    invoke-static {v0}, Lcom/narvii/app/ApplicationSessionHelper;->setNewTask(I)V

    .line 200
    .line 201
    .line 202
    :cond_7
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 203
    move-result-object v0

    .line 204
    .line 205
    if-eqz v0, :cond_a

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 209
    move-result-object v0

    .line 210
    .line 211
    const-string v3, "__forwardInitTaskActivity"

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 215
    move-result v0

    .line 216
    .line 217
    if-eqz v0, :cond_a

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 221
    move-result-object v0

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 225
    move-result v0

    .line 226
    .line 227
    iput-boolean v0, p0, Lcom/narvii/app/NVActivity;->initTaskActivity:Z

    .line 228
    goto :goto_4

    .line 229
    .line 230
    :cond_8
    const-string v0, "__resetTaskId"

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 234
    move-result v0

    .line 235
    .line 236
    iput v0, p0, Lcom/narvii/app/NVActivity;->resetTaskId:I

    .line 237
    .line 238
    .line 239
    invoke-static {p0, p1}, Lcom/narvii/app/ApplicationSessionHelper;->restore(Lcom/narvii/app/NVActivity;Landroid/os/Bundle;)Z

    .line 240
    move-result v0

    .line 241
    .line 242
    if-eqz v0, :cond_9

    .line 243
    .line 244
    new-instance p1, Landroid/os/Bundle;

    .line 245
    .line 246
    .line 247
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 248
    .line 249
    :cond_9
    const-string v0, "__restoreProcess"

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 253
    move-result v0

    .line 254
    .line 255
    iput-boolean v0, p0, Lcom/narvii/app/NVActivity;->restoreProcess:Z

    .line 256
    .line 257
    const-string v0, "__initTaskActivity"

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 261
    move-result v0

    .line 262
    .line 263
    iput-boolean v0, p0, Lcom/narvii/app/NVActivity;->initTaskActivity:Z

    .line 264
    .line 265
    .line 266
    :cond_a
    :goto_4
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 267
    move-result-object v0

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, p0}, Lcom/narvii/app/NVApplication;->activityOnCreate(Landroid/app/Activity;)Z

    .line 271
    move-result v0

    .line 272
    const/4 v1, 0x2

    .line 273
    .line 274
    if-eqz v0, :cond_b

    .line 275
    .line 276
    iget v0, p0, Lcom/narvii/app/NVActivity;->initStatus:I

    .line 277
    or-int/2addr v0, v1

    .line 278
    .line 279
    iput v0, p0, Lcom/narvii/app/NVActivity;->initStatus:I

    .line 280
    .line 281
    :cond_b
    if-eqz p1, :cond_d

    .line 282
    .line 283
    const-string v0, "__loginIntent"

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 287
    move-result-object v0

    .line 288
    .line 289
    check-cast v0, Landroid/content/Intent;

    .line 290
    .line 291
    iput-object v0, p0, Lcom/narvii/app/NVActivity;->loginIntent:Landroid/content/Intent;

    .line 292
    .line 293
    const-string v0, "_newIntent"

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 297
    move-result-object v0

    .line 298
    .line 299
    check-cast v0, Landroid/content/Intent;

    .line 300
    .line 301
    if-eqz v0, :cond_c

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->setIntent(Landroid/content/Intent;)V

    .line 305
    .line 306
    :cond_c
    const-string v0, "__initStatus"

    .line 307
    .line 308
    .line 309
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 310
    move-result v0

    .line 311
    .line 312
    iget v3, p0, Lcom/narvii/app/NVActivity;->initStatus:I

    .line 313
    or-int/2addr v0, v3

    .line 314
    .line 315
    iput v0, p0, Lcom/narvii/app/NVActivity;->initStatus:I

    .line 316
    .line 317
    .line 318
    :cond_d
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getCustomTheme()I

    .line 319
    move-result v0

    .line 320
    .line 321
    if-eqz v0, :cond_e

    .line 322
    .line 323
    .line 324
    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    .line 325
    .line 326
    .line 327
    :cond_e
    invoke-super {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 328
    .line 329
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->create()V

    .line 333
    .line 334
    if-nez p1, :cond_f

    .line 335
    move v1, v2

    .line 336
    .line 337
    :cond_f
    iput v1, p0, Lcom/narvii/app/NVActivity;->crashlyticsStatus:I

    .line 338
    .line 339
    .line 340
    invoke-static {p0}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->setInitializingActivity(Lcom/narvii/app/NVActivity;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->initActionBar()V

    .line 344
    .line 345
    .line 346
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->setStatusBar()V

    .line 347
    .line 348
    .line 349
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->initPageBackground()V

    .line 350
    .line 351
    new-instance p1, Lcom/narvii/app/NVActivity$1;

    .line 352
    .line 353
    const-string v0, "__storyDraftId"

    .line 354
    .line 355
    .line 356
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 357
    move-result-object v0

    .line 358
    .line 359
    .line 360
    invoke-direct {p1, p0, p0, p0, v0}, Lcom/narvii/app/NVActivity$1;-><init>(Lcom/narvii/app/NVActivity;Lcom/narvii/app/NVContext;Lcom/narvii/logging/Page;Ljava/lang/String;)V

    .line 361
    .line 362
    iput-object p1, p0, Lcom/narvii/app/NVActivity;->pageViewDelegate:Lcom/narvii/logging/PageViewDelegate;

    .line 363
    .line 364
    .line 365
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->resetPvId()V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;

    .line 369
    move-result-object p1

    .line 370
    .line 371
    if-eqz p1, :cond_10

    .line 372
    .line 373
    .line 374
    invoke-static {p0, p1}, Lcom/narvii/util/statusbar/StatusBarUtils;->setTranslucentStatusBar(Lcom/narvii/app/NVContext;Landroid/graphics/drawable/Drawable;)V

    .line 375
    .line 376
    sget-boolean v0, Lcom/narvii/util/statusbar/StatusBarUtils;->STATUS_BAR_ENABLE:Z

    .line 377
    .line 378
    if-nez v0, :cond_10

    .line 379
    .line 380
    .line 381
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->setActionBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 382
    .line 383
    :cond_10
    new-instance p1, Lcom/narvii/util/mixpanel/MixpanelAnalytics;

    .line 384
    .line 385
    .line 386
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 387
    move-result-object v0

    .line 388
    .line 389
    .line 390
    invoke-direct {p1, v0}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;-><init>(Landroid/content/Context;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 394
    move-result-object v0

    .line 395
    .line 396
    new-instance v1, Lcom/narvii/util/mixpanel/PageViewTracker;

    .line 397
    .line 398
    .line 399
    invoke-direct {v1, p1}, Lcom/narvii/util/mixpanel/PageViewTracker;-><init>(Lcom/narvii/util/mixpanel/MixpanelAnalytics;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->r1(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    .line 403
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    iput v0, p0, Lcom/narvii/app/NVActivity;->lifecycleState:I

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/narvii/app/NVActivity$4;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/narvii/app/NVActivity$4;-><init>(Lcom/narvii/app/NVActivity;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->clearToast()V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 26
    const/4 v0, 0x0

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/app/NVActivity;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-super {p0}, Lcom/narvii/app/theme/NVThemeActivity;->onDestroy()V

    .line 32
    .line 33
    const-string v0, "notification"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 43
    move-result v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p0, v1}, Lcom/narvii/notification/NotificationCenter;->unregisterListener(Lcom/narvii/app/NVContext;Z)V

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->destroy()V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;->cleanLeakLocalReceivers()V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p0}, Lcom/narvii/app/NVApplication;->activityOnDestroy(Landroid/app/Activity;)V

    .line 62
    .line 63
    iget v0, p0, Lcom/narvii/app/NVActivity;->resetTaskId:I

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->getTaskId()I

    .line 69
    move-result v1

    .line 70
    .line 71
    if-ne v0, v1, :cond_2

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 75
    move-result v0

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    const/4 v0, 0x0

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Lcom/narvii/app/ApplicationSessionHelper;->setNewTask(I)V

    .line 82
    .line 83
    :cond_2
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->visitorModeListener:Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;

    .line 84
    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    iget-object v1, p0, Lcom/narvii/app/NVActivity;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 88
    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v0}, Lcom/narvii/community/AffiliationsService;->removeAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 93
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 4
    const/4 v0, 0x2

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/app/NVActivity;->lifecycleState:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/narvii/app/NVActivity$7;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/narvii/app/NVActivity$7;-><init>(Lcom/narvii/app/NVActivity;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->pause()V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p0}, Lcom/narvii/app/NVApplication;->activityOnPause(Landroid/app/Activity;)V

    .line 31
    const/4 v0, 0x0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->onActiveChanged(Z)V

    .line 35
    .line 36
    sget-object v0, Lcom/narvii/logging/LogUtils;->resumingContextList:Ljava/util/List;

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 40
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
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

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

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    instance-of p1, p0, Lcom/narvii/notification/NotificationListener;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string p1, "notification"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 16
    move-object v0, p0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/notification/NotificationListener;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p0, v0}, Lcom/narvii/notification/NotificationCenter;->registerListener(Lcom/narvii/app/NVContext;Lcom/narvii/notification/NotificationListener;)V

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->setInitializingActivity(Lcom/narvii/app/NVActivity;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getCrashlyticsFootprint()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    .line 34
    .line 35
    iput v0, p0, Lcom/narvii/app/NVActivity;->crashlyticsStatus:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->requireAccount()Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    new-instance v0, Lcom/narvii/app/NVActivity$2;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, p0}, Lcom/narvii/app/NVActivity$2;-><init>(Lcom/narvii/app/NVActivity;)V

    .line 47
    .line 48
    iput-object v0, p0, Lcom/narvii/app/NVActivity;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    .line 50
    new-instance v1, Landroid/content/IntentFilter;

    .line 51
    .line 52
    const-string v2, "com.narvii.action.ACCOUNT_CHANGED"

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVActivity;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p0, p1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 64
    :cond_1
    const/4 p1, 0x1

    .line 65
    .line 66
    iput p1, p0, Lcom/narvii/app/NVActivity;->lifecycleState:I

    .line 67
    .line 68
    iget-object p1, p0, Lcom/narvii/app/NVActivity;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    .line 69
    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    new-instance v0, Lcom/narvii/app/NVActivity$3;

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, p0}, Lcom/narvii/app/NVActivity$3;-><init>(Lcom/narvii/app/NVActivity;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 79
    :cond_2
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
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->permissionArray:Landroid/util/SparseArray;

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
    invoke-static {p0, v0, p1, p2, p3}, Lcom/narvii/permisson/NVPermission;->onRequestPermissionResult(Landroid/app/Activity;Lcom/narvii/permisson/PermissionListener;I[Ljava/lang/String;[I)V

    .line 16
    return-void

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p0, p1, p2, p3}, Lcom/narvii/permisson/NVPermission;->onRequestPermissionResult(Landroid/app/Activity;Lcom/narvii/permisson/PermissionListener;I[Ljava/lang/String;[I)V

    .line 23
    return-void
.end method

.method protected onResume()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/narvii/app/NVApplication;->activityOnResume(Landroid/app/Activity;)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lcom/narvii/app/NVActivity;->initStatus:I

    .line 14
    or-int/2addr v0, v1

    .line 15
    .line 16
    iput v0, p0, Lcom/narvii/app/NVActivity;->initStatus:I

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->resume()V

    .line 22
    .line 23
    .line 24
    invoke-super {p0}, Lcom/narvii/app/theme/NVThemeActivity;->onResume()V

    .line 25
    const/4 v0, 0x3

    .line 26
    .line 27
    iput v0, p0, Lcom/narvii/app/NVActivity;->lifecycleState:I

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    new-instance v2, Lcom/narvii/app/NVActivity$6;

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, p0}, Lcom/narvii/app/NVActivity$6;-><init>(Lcom/narvii/app/NVActivity;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-static {p0}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->setActiveActivity(Lcom/narvii/app/NVActivity;)V

    .line 43
    .line 44
    sget-object v0, Lcom/narvii/app/NVActivity;->pendingForAttach:Lcom/narvii/util/Callback;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 50
    move-result-wide v2

    .line 51
    .line 52
    sget-wide v4, Lcom/narvii/app/NVActivity;->pendingForAttachExpires:J

    .line 53
    .line 54
    cmp-long v0, v2, v4

    .line 55
    .line 56
    if-gez v0, :cond_2

    .line 57
    .line 58
    sget-object v0, Lcom/narvii/app/NVActivity;->pendingForAttach:Lcom/narvii/util/Callback;

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, p0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 62
    :cond_2
    const/4 v0, 0x0

    .line 63
    .line 64
    sput-object v0, Lcom/narvii/app/NVActivity;->pendingForAttach:Lcom/narvii/util/Callback;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->onActiveChanged(Z)V

    .line 68
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "__cid"

    .line 6
    .line 7
    iget-wide v1, p0, Lcom/narvii/app/NVActivity;->cid:J

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->loginIntent:Landroid/content/Intent;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v1, "__loginIntent"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->newIntent:Landroid/content/Intent;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const-string v1, "_newIntent"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 29
    .line 30
    :cond_1
    const-string v0, "__resetTaskId"

    .line 31
    .line 32
    iget v1, p0, Lcom/narvii/app/NVActivity;->resetTaskId:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 36
    .line 37
    const-string v0, "__initStatus"

    .line 38
    .line 39
    iget v1, p0, Lcom/narvii/app/NVActivity;->initStatus:I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 43
    .line 44
    const-string v0, "__restoreProcess"

    .line 45
    .line 46
    iget-boolean v1, p0, Lcom/narvii/app/NVActivity;->restoreProcess:Z

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    .line 51
    const-string v0, "__initTaskActivity"

    .line 52
    .line 53
    iget-boolean v1, p0, Lcom/narvii/app/NVActivity;->initTaskActivity:Z

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    invoke-static {p0, p1}, Lcom/narvii/app/ApplicationSessionHelper;->save(Lcom/narvii/app/NVActivity;Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/narvii/app/NVApplication;->activityOnStart(Landroid/app/Activity;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->start()V

    .line 13
    const/4 v0, 0x2

    .line 14
    .line 15
    iput v0, p0, Lcom/narvii/app/NVActivity;->lifecycleState:I

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-instance v1, Lcom/narvii/app/NVActivity$5;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/narvii/app/NVActivity$5;-><init>(Lcom/narvii/app/NVActivity;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/theme/NVThemeActivity;->onStart()V

    .line 31
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/app/NVActivity;->lifecycleState:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/narvii/app/d;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/narvii/app/d;-><init>(Lcom/narvii/app/NVActivity;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->serviceManager:Lcom/narvii/services/ServiceManager;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/services/ServiceManager;->stop()V

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->resetStartingActivity:Ljava/lang/Runnable;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->resetStartingActivity:Ljava/lang/Runnable;

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p0}, Lcom/narvii/app/NVApplication;->activityOnStop(Landroid/app/Activity;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p0}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->removeActiveActivity(Lcom/narvii/app/NVActivity;)V

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    const-string/jumbo v1, "stop "

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getCrashlyticsKey()Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 4
    .line 5
    iget-object p2, p0, Lcom/narvii/app/NVActivity;->abTitle:Landroid/widget/TextView;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_0
    return-void
.end method

.method public registerActivityRequestCallback(ILandroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->activityRequestMapping:Ljava/util/HashMap;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/app/NVActivity;->activityRequestMapping:Ljava/util/HashMap;

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    if-eq v0, p2, :cond_1

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    const-string v1, "code already registered: "

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 47
    .line 48
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->activityRequestMapping:Ljava/util/HashMap;

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "register local broadcast receiver after destory"

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/app/NVActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 27
    .line 28
    iget-object p2, p0, Lcom/narvii/app/NVActivity;->localReceivers:Ljava/util/ArrayList;

    .line 29
    .line 30
    if-nez p2, :cond_2

    .line 31
    .line 32
    new-instance p2, Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    iput-object p2, p0, Lcom/narvii/app/NVActivity;->localReceivers:Ljava/util/ArrayList;

    .line 38
    .line 39
    :cond_2
    iget-object p2, p0, Lcom/narvii/app/NVActivity;->localReceivers:Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    .line 46
    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    .line 52
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    if-ne v0, p1, :cond_3

    .line 62
    return-void

    .line 63
    .line 64
    :cond_4
    iget-object p2, p0, Lcom/narvii/app/NVActivity;->localReceivers:Ljava/util/ArrayList;

    .line 65
    .line 66
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
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
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->permissionArray:Landroid/util/SparseArray;

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
    iput-object v0, p0, Lcom/narvii/app/NVActivity;->permissionArray:Landroid/util/SparseArray;

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->permissionArray:Landroid/util/SparseArray;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    return-void
.end method

.method public removeOnScrollListener(Lcom/narvii/app/NVActivity$DispatchTouchEventListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->dispatchTouchEventListeners:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    return-void
.end method

.method public removeRightView()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->initActionBar()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Landroid/view/ViewGroup;

    .line 21
    .line 22
    sget v1, Lcom/narvii/lib/R$id;->tv_right:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    check-cast v1, Landroid/view/ViewGroup;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 38
    :cond_1
    return-void
.end method

.method public removeThemeDownloadObserver(Lcom/narvii/app/NVFragment;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->themeDownloadObservers:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public removeWeakLifecycleListener(Lcom/narvii/app/LifecycleListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->lifecycleListeners:Lcom/narvii/util/EventDispatcher;

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
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getPageName()Ljava/lang/String;

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
    iput-object v0, p0, Lcom/narvii/app/NVActivity;->pvId:Ljava/lang/String;

    .line 17
    :cond_0
    return-void
.end method

.method public rightViewEnabled()Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->initActionBar()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    return v1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    const-string v2, "right"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Landroid/widget/TextView;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 33
    move-result v0

    .line 34
    return v0

    .line 35
    :cond_1
    return v1
.end method

.method public sendNotification(Lcom/narvii/notification/Notification;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "notification"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

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

.method public setActionBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->initActionBar()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    const/4 p1, 0x1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->setActionBarCustomed(Z)V

    .line 22
    return-void
.end method

.method public setActionBarBackgroundDefault()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->initActionBar()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isActionBarOverlaying()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isDarkTheme()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    sget v3, Lcom/narvii/lib/R$color;->dark_theme_overlay:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 38
    move-result v2

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v1, 0x0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_2
    const-string v1, "config"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-interface {v1}, Lcom/narvii/config/ConfigTheme;->actionbarBackground()Landroid/graphics/drawable/Drawable;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    .line 71
    instance-of v2, v1, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 72
    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 77
    move-result-object v2

    .line 78
    .line 79
    if-nez v2, :cond_4

    .line 80
    .line 81
    .line 82
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    move-result-object v2

    .line 84
    .line 85
    const-string v3, "mContainerView"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 89
    move-result-object v2

    .line 90
    const/4 v3, 0x1

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    check-cast v0, Landroid/view/View;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 103
    .line 104
    instance-of v0, v1, Lcom/narvii/theme/TitlebarGifDrawable;

    .line 105
    .line 106
    if-eqz v0, :cond_3

    .line 107
    .line 108
    check-cast v1, Lcom/narvii/theme/TitlebarGifDrawable;

    .line 109
    .line 110
    iput-boolean v3, v1, Lcom/narvii/theme/TitlebarGifDrawable;->invalidateDirectly:Z

    .line 111
    goto :goto_0

    .line 112
    .line 113
    :cond_3
    instance-of v0, v1, Lcom/narvii/theme/ThemeBackgroundGifDrawable;

    .line 114
    .line 115
    if-eqz v0, :cond_4

    .line 116
    .line 117
    check-cast v1, Lcom/narvii/theme/ThemeBackgroundGifDrawable;

    .line 118
    .line 119
    iput-boolean v3, v1, Lcom/narvii/theme/ThemeBackgroundGifDrawable;->invalidateDirectly:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :catch_0
    :cond_4
    :goto_0
    return-void
.end method

.method public setActionBarCustomed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/app/NVActivity;->actionBarCustomed:Z

    return-void
.end method

.method public setActionBarLeftTextView(I)Landroid/widget/TextView;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->setActionBarLeftTextView(Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public setActionBarLeftTextView(Ljava/lang/CharSequence;)Landroid/widget/TextView;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$layout;->actionbar_left_tv:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p1, Lcom/narvii/app/NVActivity;->BACK_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->setActionBarLeftView(Landroid/view/View;)V

    return-object v0
.end method

.method public setActionBarLeftView(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->initActionBar()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    sget v1, Lcom/narvii/lib/R$id;->actionbar_left:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    check-cast v0, Landroid/view/ViewGroup;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 43
    :cond_1
    return-void
.end method

.method public setActionBarRightButton(ILandroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->setActionBarRightButton(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setActionBarRightButton(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getRightButtonDefaultBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/app/NVActivity;->setActionBarRightButton(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setActionBarRightButton(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 4
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->initActionBar()V

    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lcom/narvii/lib/R$id;->actionbar_right_btn:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/narvii/lib/R$layout;->actionbar_btn:I

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    :cond_1
    sget v0, Lcom/narvii/lib/R$id;->actionbar_right_btn_btn:I

    .line 10
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 12
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setActionBarRightButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getRightButtonDefaultBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/app/NVActivity;->setActionBarRightButton(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setActionBarRightView(IIZLandroid/view/View$OnClickListener;)V
    .locals 4

    .line 9
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$layout;->actionbar_right_tv:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 10
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    if-eqz p3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    if-eqz p3, :cond_2

    move p2, v2

    :cond_2
    if-eqz p3, :cond_3

    const p3, -0xaaaaab

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    .line 11
    :goto_2
    invoke-virtual {v0, v1, v3, p2, p3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 12
    invoke-virtual {p0, p1, v0, p4}, Lcom/narvii/app/NVActivity;->setRightView(ILandroid/widget/TextView;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setActionBarRightView(ILandroid/content/res/ColorStateList;ZLandroid/view/View$OnClickListener;)V
    .locals 4

    .line 13
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$layout;->actionbar_right_tv:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 14
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    if-eqz p3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    if-eqz p3, :cond_2

    move p2, v2

    :cond_2
    if-eqz p3, :cond_3

    const p3, -0xaaaaab

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    .line 15
    :goto_2
    invoke-virtual {v0, v1, v3, p2, p3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 16
    invoke-virtual {p0, p1, v0, p4}, Lcom/narvii/app/NVActivity;->setRightView(ILandroid/widget/TextView;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setActionBarRightView(ILandroid/view/View$OnClickListener;)V
    .locals 2

    .line 17
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$color;->actionbar_text:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/content/res/ColorStateList;ZLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setActionBarRightView(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->initActionBar()V

    .line 2
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lcom/narvii/lib/R$id;->actionbar_right_btn:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$layout;->actionbar_btn:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public setActionBarTitleColor(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->abTitle:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    :cond_0
    return-void
.end method

.method public setActionBarTitleView(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->initActionBar()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    sget v1, Lcom/narvii/lib/R$id;->actionbar_title:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    check-cast v2, Landroid/view/ViewGroup;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 47
    return-void
.end method

.method public setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->initActionBar()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    sget v1, Lcom/narvii/lib/R$id;->actionbar_back:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Landroid/widget/ImageView;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    return-void

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    return-void
.end method

.method public setBackButtonTint(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->initActionBar()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    sget v1, Lcom/narvii/lib/R$id;->actionbar_back:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Landroid/widget/ImageView;

    .line 27
    .line 28
    instance-of v1, v0, Lcom/narvii/widget/TintButton;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/widget/TintButton;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 36
    :cond_1
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/app/NVActivity;->newIntent:Landroid/content/Intent;

    .line 6
    return-void
.end method

.method public setRightButtonEnabled(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->initActionBar()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    sget v1, Lcom/narvii/lib/R$id;->actionbar_right_btn_btn:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.method public setRightView(ILandroid/widget/TextView;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    const-string p1, "right"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVActivity;->setActionBarRightView(Landroid/view/View;)V

    .line 19
    return-void
.end method

.method public setRightViewEnabled(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->initActionBar()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    const-string v1, "right"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Landroid/widget/TextView;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 32
    :cond_1
    return-void
.end method

.method public setRightViewVisible(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->initActionBar()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    const-string v1, "right"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    const/4 p1, 0x0

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_1
    const/16 p1, 0x8

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    :cond_2
    return-void
.end method

.method public setStatusBar()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->shouldShowPageBackground()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->hasPageBackground()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-static {p0, v0}, Lcom/narvii/util/statusbar/StatusBarUtils;->setTranslucentStatusBar(Lcom/narvii/app/NVContext;Landroid/graphics/drawable/Drawable;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->setActionBarCustomed(Z)V

    .line 27
    return-void
.end method

.method public shouldShowPageBackground()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isPagebackgroundEnabled()Z

    .line 4
    move-result v0

    .line 5
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

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/narvii/app/NVActivity;->safedk_NVActivity_startActivityForResult_1e7758655dff1587c7e4c04d4a2a3a59(Lcom/narvii/app/NVActivity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/narvii/app/NVActivity;->justStartActivity(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "navigator"

    .line 3
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/navigator/Navigator;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1}, Lcom/narvii/navigator/Navigator;->intentMapping(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 5
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

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "__noInheritance"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    invoke-direct {p0, p1, v1}, Lcom/narvii/app/NVActivity;->inheritIntent(Landroid/content/Intent;Landroidx/fragment/app/Fragment;)V

    .line 8
    :cond_3
    invoke-static {p1}, Lcom/narvii/app/NVActivity;->trackStartActivity(Landroid/content/Intent;)V

    .line 9
    invoke-static {p1}, Lcom/narvii/util/ParamUtils;->processIntentNow(Landroid/content/Intent;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/app/NVActivity;->isStartingActivity:Z

    .line 10
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->safedk_ComponentActivity_startActivityForResult_e42adb0e2f1f6ab5a31f68e8cb5ca256(Landroidx/activity/ComponentActivity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    iget-object p1, p0, Lcom/narvii/app/NVActivity;->resetStartingActivity:Ljava/lang/Runnable;

    if-nez p1, :cond_4

    .line 11
    new-instance p1, Lcom/narvii/app/NVActivity$ResetStartingActivity;

    invoke-direct {p1, p0, v1}, Lcom/narvii/app/NVActivity$ResetStartingActivity;-><init>(Lcom/narvii/app/NVActivity;Lcom/narvii/app/g;)V

    iput-object p1, p0, Lcom/narvii/app/NVActivity;->resetStartingActivity:Ljava/lang/Runnable;

    goto :goto_1

    .line 12
    :cond_4
    sget-object p2, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    :goto_1
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/narvii/app/NVActivity;->resetStartingActivity:Ljava/lang/Runnable;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-static {p2}, Lcom/narvii/app/NVActivity;->justStartActivity(Landroid/content/Intent;)Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const-string v0, "navigator"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/navigator/Navigator;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p2}, Lcom/narvii/navigator/Navigator;->intentMapping(Landroid/content/Intent;)Landroid/content/Intent;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    move-object v0, v1

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    move-result v0

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    const-string v0, "__noInheritance"

    .line 53
    const/4 v2, 0x0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 57
    move-result v0

    .line 58
    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, p2, p1}, Lcom/narvii/app/NVActivity;->inheritIntent(Landroid/content/Intent;Landroidx/fragment/app/Fragment;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-static {p2}, Lcom/narvii/app/NVActivity;->trackStartActivity(Landroid/content/Intent;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p2}, Lcom/narvii/util/ParamUtils;->processIntentNow(Landroid/content/Intent;)Z

    .line 69
    const/4 v0, 0x1

    .line 70
    .line 71
    iput-boolean v0, p0, Lcom/narvii/app/NVActivity;->isStartingActivity:Z

    .line 72
    .line 73
    .line 74
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/app/NVActivity;->safedk_FragmentActivity_startActivityFromFragment_dee2891e09a0991938bcd2569510a76c(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 75
    .line 76
    iget-object p1, p0, Lcom/narvii/app/NVActivity;->resetStartingActivity:Ljava/lang/Runnable;

    .line 77
    .line 78
    if-nez p1, :cond_4

    .line 79
    .line 80
    new-instance p1, Lcom/narvii/app/NVActivity$ResetStartingActivity;

    .line 81
    .line 82
    .line 83
    invoke-direct {p1, p0, v1}, Lcom/narvii/app/NVActivity$ResetStartingActivity;-><init>(Lcom/narvii/app/NVActivity;Lcom/narvii/app/g;)V

    .line 84
    .line 85
    iput-object p1, p0, Lcom/narvii/app/NVActivity;->resetStartingActivity:Ljava/lang/Runnable;

    .line 86
    goto :goto_1

    .line 87
    .line 88
    :cond_4
    sget-object p2, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    .line 93
    :goto_1
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 94
    .line 95
    iget-object p2, p0, Lcom/narvii/app/NVActivity;->resetStartingActivity:Ljava/lang/Runnable;

    .line 96
    .line 97
    const-wide/16 p3, 0x190

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 101
    return-void
.end method

.method public toastImage(I)V
    .locals 1

    sget v0, Lcom/narvii/lib/R$anim;->toast_drop:I

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVActivity;->toastImage(II)V

    return-void
.end method

.method public toastImage(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/NVActivity;->toastImage(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public toastImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    sget v0, Lcom/narvii/lib/R$anim;->toast_drop:I

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVActivity;->toastImage(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public toastImage(Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    sget v0, Lcom/narvii/lib/R$layout;->toast_image:I

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/narvii/app/NVActivity;->toastView(IIJ)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/narvii/lib/R$id;->toast_image:I

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public toastImageWithText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IJ)V
    .locals 1

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$layout;->toast_image_text:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/narvii/app/NVActivity;->toastView(IIJ)Landroid/view/View;

    .line 6
    move-result-object p3

    .line 7
    .line 8
    sget p4, Lcom/narvii/lib/R$id;->toast_image:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object p4

    .line 13
    .line 14
    check-cast p4, Landroid/widget/ImageView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    .line 19
    sget p1, Lcom/narvii/lib/R$id;->toast_text:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Landroid/widget/TextView;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    return-void
.end method

.method public toastText(I)V
    .locals 1

    sget v0, Lcom/narvii/lib/R$anim;->toast_pop:I

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVActivity;->toastText(II)V

    return-void
.end method

.method public toastText(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/NVActivity;->toastText(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public toastText(Ljava/lang/CharSequence;)V
    .locals 1

    sget v0, Lcom/narvii/lib/R$anim;->toast_pop:I

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVActivity;->toastText(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public toastText(Ljava/lang/CharSequence;I)V
    .locals 3

    sget v0, Lcom/narvii/lib/R$layout;->toast_text:I

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/narvii/app/NVActivity;->toastView(IIJ)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/narvii/lib/R$id;->toast_text:I

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public toastTextFromTop(II)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    .line 8
    move-result v1

    .line 9
    add-int/2addr v0, v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    const/high16 v2, 0x41a00000    # 20.0f

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 19
    move-result v1

    .line 20
    add-int/2addr v0, v1

    .line 21
    .line 22
    sget v1, Lcom/narvii/lib/R$layout;->toast_text_top:I

    .line 23
    .line 24
    sget v2, Lcom/narvii/lib/R$anim;->toast_slide_in_top:I

    .line 25
    int-to-long v3, p2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/narvii/app/NVActivity;->toastView(IIJ)Landroid/view/View;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    sget v1, Lcom/narvii/lib/R$id;->toast_frame:I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    const/4 v2, 0x0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 42
    .line 43
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->toast_text:I

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    check-cast p2, Landroid/widget/TextView;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method public toastView(II)Landroid/view/View;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/narvii/app/NVActivity;->toastView(IIJ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public toastView(IIJ)Landroid/view/View;
    .locals 7

    .line 2
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->clearToast()V

    const v0, 0x1020002

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-nez v6, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$id;->toast_frame:I

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    const/4 v0, 0x4

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-virtual {v6, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9
    invoke-static {p0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    .line 10
    new-instance v0, Lcom/narvii/app/NVActivity$11;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/narvii/app/NVActivity$11;-><init>(Lcom/narvii/app/NVActivity;Landroid/view/View;JLandroid/view/ViewGroup;)V

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-object p1

    .line 12
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

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->permissionArray:Landroid/util/SparseArray;

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
    iget-object p2, p0, Lcom/narvii/app/NVActivity;->permissionArray:Landroid/util/SparseArray;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 19
    :cond_1
    return-void
.end method

.method public unregisterActivityRequestCallback(ILandroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->activityRequestMapping:Ljava/util/HashMap;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    if-ne v0, p2, :cond_0

    .line 19
    .line 20
    iget-object p2, p0, Lcom/narvii/app/NVActivity;->activityRequestMapping:Ljava/util/HashMap;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_0
    return-void
.end method

.method public unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

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
    iget-object v0, p0, Lcom/narvii/app/NVActivity;->localReceivers:Ljava/util/ArrayList;

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

.method public updateThemeUI()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const v1, 0x1020002

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    instance-of v1, v0, Lcom/narvii/theme/PageBackgroundView;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    check-cast v0, Lcom/narvii/theme/PageBackgroundView;

    .line 27
    .line 28
    const-string v1, "config"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    .line 41
    invoke-interface {v2}, Lcom/narvii/config/ConfigTheme;->pageBackground()Landroid/graphics/drawable/Drawable;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2}, Lcom/narvii/theme/PageBackgroundView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->showThemeColorAsAlternativeBackground()Z

    .line 49
    move-result v2

    .line 50
    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-interface {v1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 61
    move-result v1

    .line 62
    .line 63
    .line 64
    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const/4 v2, 0x0

    .line 67
    .line 68
    .line 69
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    :cond_1
    return-void
.end method

.method protected updateVisitorModeUI()V
    .locals 0

    return-void
.end method
