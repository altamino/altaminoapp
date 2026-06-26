.class public Lcom/narvii/widget/NVListView;
.super Landroid/widget/ListView;
.source "NVListView.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingChild;
.implements Lcom/narvii/nvplayerview/delegate/IVideoListView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/NVListView$NoEdgeEffect;,
        Lcom/narvii/widget/NVListView$OnLayoutListener;,
        Lcom/narvii/widget/NVListView$OnOverscrollListener;,
        Lcom/narvii/widget/NVListView$DispatchTouchEventEndListener;,
        Lcom/narvii/widget/NVListView$InterceptTouchEventListener;,
        Lcom/narvii/widget/NVListView$ActionbarOverlayPadding;,
        Lcom/narvii/widget/NVListView$ListPaddingProvider;
    }
.end annotation


# static fields
.field public static final OVERSCROLL_STRETCH_TAG:I

.field public static final SECTION_HEADER_TAG:I

.field private static final SP_WAIT_TIME:I = 0xc8

.field private static final STATE_PRESSED:[I

.field private static fEdgeGlowBottom:Ljava/lang/reflect/Field;

.field private static fEdgeGlowTop:Ljava/lang/reflect/Field;

.field private static fFlingRunnable:Ljava/lang/reflect/Field;

.field private static fOverflingDistance:Ljava/lang/reflect/Field;

.field private static fOverscrollDistance:Ljava/lang/reflect/Field;

.field private static fScroller:Ljava/lang/reflect/Field;

.field private static fScrollerInited:Z

.field private static fTouchMode:Ljava/lang/reflect/Field;

.field private static final handler:Landroid/os/Handler;

.field private static inited:Z

.field private static mTrackMotionScroll:Ljava/lang/reflect/Method;

.field private static removeEdgeGlowInited:Z


# instance fields
.field private adapter:Landroid/widget/ListAdapter;

.field private final agentScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private blDrawable:Landroid/graphics/drawable/Drawable;

.field private blId:J

.field private blPosition:I

.field private blStartTime:J

.field private blT1:I

.field private blT2:I

.field private blT3:I

.field private blockLayout:Z

.field private bottomStretchDrawable:Landroid/graphics/drawable/Drawable;

.field private changed:Z

.field private clipOffsetRect:Landroid/graphics/Rect;

.field dispatchTouchEventEndListener:Lcom/narvii/widget/NVListView$DispatchTouchEventEndListener;

.field footerPadding:I

.field private headerPadding:Ljava/lang/Object;

.field interceptTouchEventListener:Lcom/narvii/widget/NVListView$InterceptTouchEventListener;

.field private isDown:Z

.field private isFirst:Z

.field private lastDy:I

.field private layoutListener:Lcom/narvii/widget/NVListView$OnLayoutListener;

.field private listContentBackground:Landroid/graphics/drawable/Drawable;

.field private mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private mNestedOffsets:[I

.field private mScrollConsumed:[I

.field private mScrollOffset:[I

.field private mScrollPointerId:I

.field private final observer:Landroid/database/DataSetObserver;

.field overlay:Lcom/narvii/widget/NVListOverlay;

.field private overlayTouchEvents:Z

.field private overscrollListener:Lcom/narvii/widget/NVListView$OnOverscrollListener;

.field private overscrollListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/widget/NVListView$OnOverscrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private overscrollStretchY:I

.field private overscrollY:I

.field private pendingLayout:Z

.field private postRequestLayout:Ljava/lang/Runnable;

.field private final resetChanged:Ljava/lang/Runnable;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private scrollListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/AbsListView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private sectionHeaderEnabled:Z

.field private shouldDispatchNestedScrollingEvents:Z

.field private spId:J

.field private spPosition:I

.field private spState:I

.field private spTime:J

.field private swipeRefreshActivePointerId:I

.field public swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

.field private swipeRefreshOverscrollY:I

.field private swipeRefreshStartY:I

.field private swipeRefreshStatus:I

.field private swipeRefreshY:I

.field private tListPadding:Landroid/graphics/Rect;

.field private topStretchDrawable:Landroid/graphics/drawable/Drawable;

.field private videoListDelegateScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private videoListScrollListener:Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    sget v0, Lcom/narvii/lib/R$id;->list_overscroll_stretch:I

    sput v0, Lcom/narvii/widget/NVListView;->OVERSCROLL_STRETCH_TAG:I

    .line 48
    sget v0, Lcom/narvii/lib/R$id;->list_section_header:I

    sput v0, Lcom/narvii/widget/NVListView;->SECTION_HEADER_TAG:I

    .line 777
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/narvii/widget/NVListView;->handler:Landroid/os/Handler;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    .line 1157
    sput-object v0, Lcom/narvii/widget/NVListView;->STATE_PRESSED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 178
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/NVListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 182
    invoke-static {p1}, Lcom/narvii/widget/NVListView;->getNoEdgeGlowEffectContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/narvii/widget/NVListView;->shouldDispatchNestedScrollingEvents:Z

    const/4 p2, -0x1

    .line 67
    iput p2, p0, Lcom/narvii/widget/NVListView;->footerPadding:I

    .line 93
    new-instance p2, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {p2, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/narvii/widget/NVListView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 353
    new-instance p2, Lcom/narvii/widget/NVListView$1;

    invoke-direct {p2, p0}, Lcom/narvii/widget/NVListView$1;-><init>(Lcom/narvii/widget/NVListView;)V

    iput-object p2, p0, Lcom/narvii/widget/NVListView;->agentScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 779
    new-instance p2, Lcom/narvii/widget/NVListView$3;

    invoke-direct {p2, p0}, Lcom/narvii/widget/NVListView$3;-><init>(Lcom/narvii/widget/NVListView;)V

    iput-object p2, p0, Lcom/narvii/widget/NVListView;->observer:Landroid/database/DataSetObserver;

    .line 807
    new-instance p2, Lcom/narvii/widget/NVListView$4;

    invoke-direct {p2, p0}, Lcom/narvii/widget/NVListView$4;-><init>(Lcom/narvii/widget/NVListView;)V

    iput-object p2, p0, Lcom/narvii/widget/NVListView;->resetChanged:Ljava/lang/Runnable;

    const/4 p2, 0x2

    new-array v0, p2, [I

    .line 894
    iput-object v0, p0, Lcom/narvii/widget/NVListView;->mNestedOffsets:[I

    new-array v0, p2, [I

    .line 895
    iput-object v0, p0, Lcom/narvii/widget/NVListView;->mScrollConsumed:[I

    new-array p2, p2, [I

    .line 896
    iput-object p2, p0, Lcom/narvii/widget/NVListView;->mScrollOffset:[I

    .line 900
    iput-boolean p1, p0, Lcom/narvii/widget/NVListView;->isFirst:Z

    const/4 p2, 0x0

    .line 1311
    iput-object p2, p0, Lcom/narvii/widget/NVListView;->videoListScrollListener:Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;

    .line 1312
    new-instance p2, Lcom/narvii/widget/NVListView$7;

    invoke-direct {p2, p0}, Lcom/narvii/widget/NVListView$7;-><init>(Lcom/narvii/widget/NVListView;)V

    iput-object p2, p0, Lcom/narvii/widget/NVListView;->videoListDelegateScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 184
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->setNestedScrollingEnabled(Z)V

    .line 185
    invoke-direct {p0}, Lcom/narvii/widget/NVListView;->initOverscroll()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 186
    invoke-static {p0}, Lcom/narvii/widget/NVListView;->removeEdgeGlowEffect(Landroid/widget/ListView;)V

    .line 188
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/NVListView;->agentScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/widget/NVListView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/narvii/widget/NVListView;->overlayTouchCancel()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/widget/NVListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/narvii/widget/NVListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object p0
.end method

.method static synthetic access$1000()Landroid/os/Handler;
    .locals 1

    .line 45
    sget-object v0, Lcom/narvii/widget/NVListView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/narvii/widget/NVListView;)Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/narvii/widget/NVListView;->videoListScrollListener:Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/widget/NVListView;)Ljava/util/ArrayList;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/narvii/widget/NVListView;->scrollListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/widget/NVListView;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/narvii/widget/NVListView;->blockLayout:Z

    return p0
.end method

.method static synthetic access$400(Lcom/narvii/widget/NVListView;)Ljava/lang/Runnable;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/narvii/widget/NVListView;->postRequestLayout:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$402(Lcom/narvii/widget/NVListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/narvii/widget/NVListView;->postRequestLayout:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/narvii/widget/NVListView;)Landroid/widget/ListAdapter;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/narvii/widget/NVListView;->adapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/widget/NVListView;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/narvii/widget/NVListView;->overscrollY:I

    return p0
.end method

.method static synthetic access$702(Lcom/narvii/widget/NVListView;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/narvii/widget/NVListView;->changed:Z

    return p1
.end method

.method static synthetic access$802(Lcom/narvii/widget/NVListView;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/narvii/widget/NVListView;->pendingLayout:Z

    return p1
.end method

.method static synthetic access$900(Lcom/narvii/widget/NVListView;)Ljava/lang/Runnable;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/narvii/widget/NVListView;->resetChanged:Ljava/lang/Runnable;

    return-object p0
.end method

.method private ensureListPadding()Z
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->tListPadding:Landroid/graphics/Rect;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 235
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    const-string v2, "mListPadding"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 237
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/narvii/widget/NVListView;->tListPadding:Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "fail to setup HF padding"

    .line 239
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    :goto_0
    return v1
.end method

.method static getNoEdgeGlowEffectContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    .line 518
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 519
    new-instance v0, Lcom/narvii/widget/ContextWrapperNoEdgeEffect;

    invoke-direct {v0, p0}, Lcom/narvii/widget/ContextWrapperNoEdgeEffect;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method private initOverscroll()Z
    .locals 6

    .line 411
    sget-boolean v0, Lcom/narvii/widget/NVListView;->inited:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 413
    :try_start_0
    sput-boolean v2, Lcom/narvii/widget/NVListView;->inited:Z

    .line 414
    const-class v0, Landroid/widget/AbsListView;

    const-string v3, "mOverflingDistance"

    .line 415
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/narvii/widget/NVListView;->fOverflingDistance:Ljava/lang/reflect/Field;

    .line 416
    sget-object v0, Lcom/narvii/widget/NVListView;->fOverflingDistance:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 417
    const-class v0, Landroid/widget/AbsListView;

    const-string v3, "mOverscrollDistance"

    .line 418
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/narvii/widget/NVListView;->fOverscrollDistance:Ljava/lang/reflect/Field;

    .line 419
    sget-object v0, Lcom/narvii/widget/NVListView;->fOverscrollDistance:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 420
    const-class v0, Landroid/widget/AbsListView;

    const-string v3, "trackMotionScroll"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/narvii/widget/NVListView;->mTrackMotionScroll:Ljava/lang/reflect/Method;

    .line 422
    sget-object v0, Lcom/narvii/widget/NVListView;->mTrackMotionScroll:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 423
    const-class v0, Landroid/widget/AbsListView;

    const-string v3, "mTouchMode"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/narvii/widget/NVListView;->fTouchMode:Ljava/lang/reflect/Field;

    .line 424
    sget-object v0, Lcom/narvii/widget/NVListView;->fTouchMode:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "fail to init overscroll"

    .line 426
    invoke-static {v3, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 429
    :cond_0
    :goto_0
    sget-object v0, Lcom/narvii/widget/NVListView;->fOverscrollDistance:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/narvii/widget/NVListView;->fOverflingDistance:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    goto :goto_1

    .line 433
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/narvii/lib/R$dimen;->overscroll_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 435
    sget-object v3, Lcom/narvii/widget/NVListView;->fOverflingDistance:Ljava/lang/reflect/Field;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 436
    sget-object v3, Lcom/narvii/widget/NVListView;->fOverscrollDistance:Ljava/lang/reflect/Field;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 437
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    :catch_1
    :cond_2
    :goto_1
    return v1
.end method

.method private isScrollerFinished()Ljava/lang/Boolean;
    .locals 4

    .line 1060
    sget-boolean v0, Lcom/narvii/widget/NVListView;->fScrollerInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1061
    sput-boolean v0, Lcom/narvii/widget/NVListView;->fScrollerInited:Z

    .line 1063
    :try_start_0
    const-class v2, Landroid/widget/AbsListView;

    const-string v3, "mFlingRunnable"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1064
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1065
    sput-object v2, Lcom/narvii/widget/NVListView;->fFlingRunnable:Ljava/lang/reflect/Field;

    .line 1066
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mScroller"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1067
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1068
    sput-object v2, Lcom/narvii/widget/NVListView;->fScroller:Ljava/lang/reflect/Field;

    .line 1070
    sget-object v0, Lcom/narvii/widget/NVListView;->fFlingRunnable:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1072
    sget-object v2, Lcom/narvii/widget/NVListView;->fScroller:Ljava/lang/reflect/Field;

    .line 1073
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/OverScroller;

    .line 1074
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    return-object v1

    :catch_0
    const-string v0, "overscroll unknown scroller"

    .line 1078
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1080
    :cond_1
    sget-object v0, Lcom/narvii/widget/NVListView;->fScroller:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    .line 1082
    :try_start_1
    sget-object v0, Lcom/narvii/widget/NVListView;->fFlingRunnable:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1084
    sget-object v2, Lcom/narvii/widget/NVListView;->fScroller:Ljava/lang/reflect/Field;

    .line 1085
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/OverScroller;

    .line 1086
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    :cond_2
    :goto_0
    return-object v1
.end method

.method private isSignOpposite(II)Z
    .locals 0

    if-lez p1, :cond_0

    if-ltz p2, :cond_1

    :cond_0
    if-gez p1, :cond_2

    if-lez p2, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private onSwipeRefreshOverscroll(I)V
    .locals 2

    .line 587
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    if-nez v0, :cond_0

    return-void

    .line 589
    :cond_0
    iput p1, p0, Lcom/narvii/widget/NVListView;->swipeRefreshOverscrollY:I

    .line 590
    iget v0, p0, Lcom/narvii/widget/NVListView;->swipeRefreshStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-gez p1, :cond_1

    const/4 p1, 0x2

    .line 591
    iput p1, p0, Lcom/narvii/widget/NVListView;->swipeRefreshStatus:I

    .line 592
    iget p1, p0, Lcom/narvii/widget/NVListView;->swipeRefreshY:I

    iput p1, p0, Lcom/narvii/widget/NVListView;->swipeRefreshStartY:I

    :cond_1
    return-void
.end method

.method private onSwipeRefreshTouch(Landroid/view/MotionEvent;)V
    .locals 5

    .line 597
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    if-nez v0, :cond_0

    return-void

    .line 600
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_6

    if-eq v0, v3, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_6

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    goto/16 :goto_0

    .line 629
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 630
    iget v3, p0, Lcom/narvii/widget/NVListView;->swipeRefreshActivePointerId:I

    if-ne v0, v3, :cond_b

    if-nez v0, :cond_2

    const/4 v1, 0x1

    .line 633
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/NVListView;->swipeRefreshActivePointerId:I

    goto/16 :goto_0

    .line 626
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/NVListView;->swipeRefreshActivePointerId:I

    goto/16 :goto_0

    .line 614
    :cond_4
    iget v0, p0, Lcom/narvii/widget/NVListView;->swipeRefreshActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ltz v0, :cond_b

    .line 615
    iget v1, p0, Lcom/narvii/widget/NVListView;->swipeRefreshStatus:I

    if-lt v1, v3, :cond_b

    .line 616
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lcom/narvii/widget/NVListView;->swipeRefreshStartY:I

    sub-int/2addr p1, v0

    div-int/2addr p1, v3

    .line 617
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    iput-boolean v2, v0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-lez p1, :cond_5

    int-to-float p1, p1

    .line 619
    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->moveSpinner(F)V

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 621
    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->finishSpinner(F)V

    goto :goto_0

    .line 638
    :cond_6
    iget v0, p0, Lcom/narvii/widget/NVListView;->swipeRefreshStatus:I

    if-lt v0, v3, :cond_7

    .line 639
    iget v0, p0, Lcom/narvii/widget/NVListView;->swipeRefreshActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ltz v0, :cond_7

    .line 641
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lcom/narvii/widget/NVListView;->swipeRefreshStartY:I

    sub-int/2addr p1, v0

    div-int/2addr p1, v3

    if-lez p1, :cond_7

    .line 643
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    iput-boolean v2, v0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    int-to-float p1, p1

    .line 644
    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->finishSpinner(F)V

    .line 648
    :cond_7
    iput v1, p0, Lcom/narvii/widget/NVListView;->swipeRefreshStatus:I

    goto :goto_0

    .line 602
    :cond_8
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-virtual {v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 603
    iput v1, p0, Lcom/narvii/widget/NVListView;->swipeRefreshStatus:I

    goto :goto_0

    .line 605
    :cond_9
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/NVListView;->swipeRefreshActivePointerId:I

    .line 606
    iget v0, p0, Lcom/narvii/widget/NVListView;->swipeRefreshOverscrollY:I

    if-gez v0, :cond_a

    const/4 v2, 0x2

    :cond_a
    iput v2, p0, Lcom/narvii/widget/NVListView;->swipeRefreshStatus:I

    .line 607
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/narvii/widget/NVListView;->swipeRefreshY:I

    .line 608
    iget p1, p0, Lcom/narvii/widget/NVListView;->swipeRefreshStatus:I

    if-ne p1, v3, :cond_b

    .line 609
    iget p1, p0, Lcom/narvii/widget/NVListView;->swipeRefreshY:I

    iput p1, p0, Lcom/narvii/widget/NVListView;->swipeRefreshStartY:I

    :cond_b
    :goto_0
    return-void
.end method

.method private onTouchEventCompat(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 904
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 905
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    .line 906
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 908
    iget-object v5, p0, Lcom/narvii/widget/NVListView;->mNestedOffsets:[I

    aput v4, v5, v3

    aput v4, v5, v4

    .line 910
    :cond_0
    iget-object v5, p0, Lcom/narvii/widget/NVListView;->mNestedOffsets:[I

    aget v6, v5, v4

    int-to-float v6, v6

    aget v5, v5, v3

    int-to-float v5, v5

    invoke-virtual {v0, v6, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    if-eq v1, v3, :cond_9

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/high16 v7, 0x3f000000    # 0.5f

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_9

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    goto/16 :goto_3

    .line 914
    :cond_1
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/NVListView;->mScrollPointerId:I

    .line 915
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Lcom/narvii/widget/NVListView;->mLastTouchX:I

    .line 916
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Lcom/narvii/widget/NVListView;->mLastTouchY:I

    goto/16 :goto_3

    .line 921
    :cond_2
    iget v1, p0, Lcom/narvii/widget/NVListView;->mScrollPointerId:I

    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v1

    if-gez v1, :cond_3

    return v4

    .line 926
    :cond_3
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    add-float/2addr v2, v7

    float-to-int v2, v2

    .line 927
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    add-float/2addr v1, v7

    float-to-int v1, v1

    .line 928
    iget v7, p0, Lcom/narvii/widget/NVListView;->mLastTouchX:I

    sub-int/2addr v7, v2

    .line 929
    iget v8, p0, Lcom/narvii/widget/NVListView;->mLastTouchY:I

    sub-int/2addr v8, v1

    .line 930
    iget-boolean v9, p0, Lcom/narvii/widget/NVListView;->isFirst:Z

    const-string v10, "pyt"

    if-eqz v9, :cond_4

    const-string v0, "FIRST"

    .line 931
    invoke-static {v10, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    iput-boolean v4, p0, Lcom/narvii/widget/NVListView;->isFirst:Z

    .line 933
    invoke-direct {p0, p1}, Lcom/narvii/widget/NVListView;->resetScrollCompat(Landroid/view/MotionEvent;)V

    return v3

    .line 936
    :cond_4
    iget v9, p0, Lcom/narvii/widget/NVListView;->lastDy:I

    invoke-direct {p0, v9, v8}, Lcom/narvii/widget/NVListView;->isSignOpposite(II)Z

    move-result v9

    if-nez v9, :cond_a

    .line 937
    iput v8, p0, Lcom/narvii/widget/NVListView;->lastDy:I

    .line 939
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "move lastY"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/narvii/widget/NVListView;->mLastTouchY:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",y="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",dy="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    iget-object v9, p0, Lcom/narvii/widget/NVListView;->mScrollConsumed:[I

    iget-object v10, p0, Lcom/narvii/widget/NVListView;->mScrollOffset:[I

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/narvii/widget/NVListView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 941
    iget-object v7, p0, Lcom/narvii/widget/NVListView;->mScrollOffset:[I

    aget v8, v7, v4

    int-to-float v8, v8

    aget v7, v7, v3

    int-to-float v7, v7

    invoke-virtual {v0, v8, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 943
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->mNestedOffsets:[I

    aget v7, v0, v4

    iget-object v8, p0, Lcom/narvii/widget/NVListView;->mScrollOffset:[I

    aget v9, v8, v4

    add-int/2addr v7, v9

    aput v7, v0, v4

    .line 944
    aget v7, v0, v3

    aget v8, v8, v3

    add-int/2addr v7, v8

    aput v7, v0, v3

    .line 945
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->mScrollConsumed:[I

    aget v0, v0, v3

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 947
    :goto_0
    iget v7, p0, Lcom/narvii/widget/NVListView;->mLastTouchY:I

    sub-int v8, v1, v7

    const/high16 v9, -0x80000000

    if-eq v7, v9, :cond_6

    sub-int v7, v1, v7

    add-int/2addr v0, v7

    goto :goto_1

    :cond_6
    move v0, v8

    .line 950
    :goto_1
    :try_start_0
    sget-object v7, Lcom/narvii/widget/NVListView;->fTouchMode:Ljava/lang/reflect/Field;

    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, v5, :cond_8

    .line 951
    iget v5, p0, Lcom/narvii/widget/NVListView;->mLastTouchY:I

    if-eq v1, v5, :cond_8

    if-eqz v0, :cond_7

    .line 954
    sget-object v5, Lcom/narvii/widget/NVListView;->mTrackMotionScroll:Ljava/lang/reflect/Method;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 957
    iget v0, p0, Lcom/narvii/widget/NVListView;->mLastTouchY:I

    sub-int v9, v0, v1

    iget-object v10, p0, Lcom/narvii/widget/NVListView;->mScrollOffset:[I

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/narvii/widget/NVListView;->dispatchNestedScroll(IIII[I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    :catch_0
    :cond_8
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->mScrollOffset:[I

    aget v4, v0, v4

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/narvii/widget/NVListView;->mLastTouchX:I

    .line 964
    aget v0, v0, v3

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/narvii/widget/NVListView;->mLastTouchY:I

    goto :goto_3

    .line 970
    :cond_9
    invoke-virtual {p0}, Lcom/narvii/widget/NVListView;->stopNestedScroll()V

    .line 971
    iput-boolean v3, p0, Lcom/narvii/widget/NVListView;->isFirst:Z

    .line 975
    :cond_a
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v3
.end method

.method private overlayTouchCancel()V
    .locals 9

    .line 340
    iget-boolean v0, p0, Lcom/narvii/widget/NVListView;->overlayTouchEvents:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/widget/NVListView;->overlay:Lcom/narvii/widget/NVListOverlay;

    if-eqz v0, :cond_0

    .line 341
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    .line 342
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    const/16 v1, 0x1002

    .line 343
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 344
    iget-object v1, p0, Lcom/narvii/widget/NVListView;->overlay:Lcom/narvii/widget/NVListOverlay;

    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVListOverlay;->dispatchTouchEventRelay(Landroid/view/MotionEvent;)Z

    .line 345
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    return-void
.end method

.method private overlayTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 319
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->overlay:Lcom/narvii/widget/NVListOverlay;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/widget/NVListView;->overlayTouchEvents:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 320
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 321
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->overlay:Lcom/narvii/widget/NVListOverlay;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListOverlay;->dispatchTouchEventRelay(Landroid/view/MotionEvent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/widget/NVListView;->overlayTouchEvents:Z

    return p1

    .line 327
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/widget/NVListView;->overlayTouchEvents:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/widget/NVListView;->overlay:Lcom/narvii/widget/NVListOverlay;

    if-eqz v0, :cond_2

    .line 328
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListOverlay;->dispatchTouchEventRelay(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v0, v1

    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 332
    :cond_1
    iput-boolean v1, p0, Lcom/narvii/widget/NVListView;->overlayTouchEvents:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static removeEdgeGlowEffect(Landroid/widget/ListView;)V
    .locals 3

    .line 530
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    .line 533
    :cond_0
    sget-boolean v0, Lcom/narvii/widget/NVListView;->removeEdgeGlowInited:Z

    if-nez v0, :cond_1

    .line 534
    const-class v0, Landroid/widget/ListView;

    const-string v1, "mEdgeGlowTop"

    invoke-static {v0, v1}, Lcom/narvii/widget/NVListView;->searchDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/narvii/widget/NVListView;->fEdgeGlowTop:Ljava/lang/reflect/Field;

    .line 535
    const-class v0, Landroid/widget/ListView;

    const-string v1, "mEdgeGlowBottom"

    invoke-static {v0, v1}, Lcom/narvii/widget/NVListView;->searchDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/narvii/widget/NVListView;->fEdgeGlowBottom:Ljava/lang/reflect/Field;

    const/4 v0, 0x1

    .line 536
    sput-boolean v0, Lcom/narvii/widget/NVListView;->removeEdgeGlowInited:Z

    .line 539
    :cond_1
    :try_start_0
    sget-object v0, Lcom/narvii/widget/NVListView;->fEdgeGlowTop:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    .line 540
    sget-object v0, Lcom/narvii/widget/NVListView;->fEdgeGlowTop:Ljava/lang/reflect/Field;

    new-instance v1, Lcom/narvii/widget/NVListView$NoEdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/widget/NVListView$NoEdgeEffect;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 542
    :cond_2
    sget-object v0, Lcom/narvii/widget/NVListView;->fEdgeGlowBottom:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    .line 543
    sget-object v0, Lcom/narvii/widget/NVListView;->fEdgeGlowBottom:Ljava/lang/reflect/Field;

    new-instance v1, Lcom/narvii/widget/NVListView$NoEdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/widget/NVListView$NoEdgeEffect;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method private resetScrollCompat(Landroid/view/MotionEvent;)V
    .locals 3

    .line 980
    invoke-static {}, Lcom/narvii/util/Utils;->applyCompat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 981
    iput v0, p0, Lcom/narvii/widget/NVListView;->lastDy:I

    .line 982
    iget-object v1, p0, Lcom/narvii/widget/NVListView;->mNestedOffsets:[I

    const/4 v2, 0x1

    aput v0, v1, v2

    aput v0, v1, v0

    .line 983
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/NVListView;->mScrollPointerId:I

    .line 984
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/narvii/widget/NVListView;->mLastTouchX:I

    .line 985
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/narvii/widget/NVListView;->mLastTouchY:I

    const/4 p1, 0x2

    .line 988
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->startNestedScroll(I)Z

    :cond_0
    return-void
.end method

.method static searchDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2

    .line 551
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 552
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    nop

    .line 555
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 559
    :cond_0
    invoke-static {p0, p1}, Lcom/narvii/widget/NVListView;->searchDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method public static smoothScrollToPositionFromTop(Lcom/narvii/widget/NVListView;II)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1280
    :cond_0
    new-instance v0, Lcom/narvii/widget/NVListView$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/widget/NVListView$5;-><init>(Lcom/narvii/widget/NVListView;II)V

    invoke-virtual {p0, v0}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1303
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/narvii/widget/NVListView$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/widget/NVListView$6;-><init>(Lcom/narvii/widget/NVListView;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startSpringback()V
    .locals 4

    .line 1097
    :try_start_0
    sget-object v0, Lcom/narvii/widget/NVListView;->fFlingRunnable:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "startSpringback"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 1099
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1100
    sget-object v1, Lcom/narvii/widget/NVListView;->fFlingRunnable:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1101
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method protected _scrollListBy(I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 844
    invoke-static {}, Lcom/narvii/util/Utils;->applyCompat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    :try_start_0
    sget-object v0, Lcom/narvii/widget/NVListView;->mTrackMotionScroll:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    neg-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 850
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->scrollListBy(I)V

    :catch_0
    :goto_0
    return-void
.end method

.method public addActionBarOverlayHeader(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 218
    new-instance v0, Lcom/narvii/widget/NVListView$ActionbarOverlayPadding;

    invoke-direct {v0, p1}, Lcom/narvii/widget/NVListView$ActionbarOverlayPadding;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p0, v0}, Lcom/narvii/widget/NVListView;->setHeaderPadding(Lcom/narvii/widget/NVListView$ListPaddingProvider;)V

    return-void
.end method

.method public addOnOverscrollListener(Lcom/narvii/widget/NVListView$OnOverscrollListener;)V
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->overscrollListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 464
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/NVListView;->overscrollListeners:Ljava/util/ArrayList;

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->overscrollListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->scrollListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/NVListView;->scrollListeners:Ljava/util/ArrayList;

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->scrollListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnVideoListScrollListener(Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;)V
    .locals 0

    .line 1330
    iput-object p1, p0, Lcom/narvii/widget/NVListView;->videoListScrollListener:Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;

    .line 1331
    iget-object p1, p0, Lcom/narvii/widget/NVListView;->videoListDelegateScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1164
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->blDrawable:Landroid/graphics/drawable/Drawable;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1166
    :cond_0
    iget-wide v3, p0, Lcom/narvii/widget/NVListView;->blStartTime:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 1168
    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/narvii/widget/NVListView;->blStartTime:J

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-ltz v0, :cond_b

    .line 1169
    iget v0, p0, Lcom/narvii/widget/NVListView;->blT1:I

    iget v5, p0, Lcom/narvii/widget/NVListView;->blT2:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/narvii/widget/NVListView;->blT3:I

    add-int/2addr v0, v5

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    goto/16 :goto_1

    .line 1171
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1172
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v5

    .line 1173
    iget v6, p0, Lcom/narvii/widget/NVListView;->blPosition:I

    if-lt v6, v0, :cond_b

    if-le v6, v5, :cond_3

    goto/16 :goto_1

    .line 1175
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    if-nez v5, :cond_4

    goto/16 :goto_1

    .line 1178
    :cond_4
    iget v6, p0, Lcom/narvii/widget/NVListView;->blPosition:I

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v6, v7, :cond_5

    goto/16 :goto_1

    .line 1180
    :cond_5
    iget v6, p0, Lcom/narvii/widget/NVListView;->blPosition:I

    invoke-interface {v5, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    iget-wide v7, p0, Lcom/narvii/widget/NVListView;->blId:J

    cmp-long v9, v5, v7

    if-eqz v9, :cond_6

    goto :goto_1

    .line 1183
    :cond_6
    iget v5, p0, Lcom/narvii/widget/NVListView;->blPosition:I

    sub-int/2addr v5, v0

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_1

    .line 1186
    :cond_7
    iget-object v5, p0, Lcom/narvii/widget/NVListView;->blDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v5, v6, v7, v8, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1188
    iget v0, p0, Lcom/narvii/widget/NVListView;->blT1:I

    int-to-long v5, v0

    const/high16 v7, 0x3f800000    # 1.0f

    cmp-long v8, v3, v5

    if-gez v8, :cond_8

    long-to-float v3, v3

    mul-float v3, v3, v7

    int-to-float v0, v0

    div-float v7, v3, v0

    goto :goto_0

    .line 1190
    :cond_8
    iget v5, p0, Lcom/narvii/widget/NVListView;->blT2:I

    add-int v6, v0, v5

    int-to-long v8, v6

    cmp-long v6, v3, v8

    if-gez v6, :cond_9

    goto :goto_0

    :cond_9
    add-int/2addr v0, v5

    .line 1193
    iget v5, p0, Lcom/narvii/widget/NVListView;->blT3:I

    add-int/2addr v0, v5

    int-to-long v8, v0

    sub-long/2addr v8, v3

    long-to-float v0, v8

    mul-float v0, v0, v7

    int-to-float v3, v5

    div-float v7, v0, v3

    .line 1195
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->blDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_a

    .line 1196
    sget-object v3, Lcom/narvii/widget/NVListView;->STATE_PRESSED:[I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1198
    :cond_a
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->blDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v7, v7, v3

    float-to-int v3, v7

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1199
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->blDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x1

    goto :goto_2

    :cond_b
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_c

    .line 1203
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    goto :goto_3

    .line 1205
    :cond_c
    iput-wide v1, p0, Lcom/narvii/widget/NVListView;->blStartTime:J

    .line 1208
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcom/narvii/widget/NVListView;->shouldDispatchNestedScrollingEvents:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/widget/NVListView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 144
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/narvii/widget/NVListView;->shouldDispatchNestedScrollingEvents:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/widget/NVListView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 150
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/narvii/widget/NVListView;->shouldDispatchNestedScrollingEvents:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/widget/NVListView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 138
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 7

    .line 131
    iget-boolean v0, p0, Lcom/narvii/widget/NVListView;->shouldDispatchNestedScrollingEvents:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/widget/NVListView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 132
    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 656
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 658
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 659
    invoke-direct {p0, p1}, Lcom/narvii/widget/NVListView;->onSwipeRefreshTouch(Landroid/view/MotionEvent;)V

    .line 660
    iget-object v1, p0, Lcom/narvii/widget/NVListView;->dispatchTouchEventEndListener:Lcom/narvii/widget/NVListView$DispatchTouchEventEndListener;

    if-eqz v1, :cond_1

    .line 661
    invoke-interface {v1, p1}, Lcom/narvii/widget/NVListView$DispatchTouchEventEndListener;->onDispatchTouchEventEnd(Landroid/view/MotionEvent;)V

    :cond_1
    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 8

    .line 701
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 702
    iget v1, p0, Lcom/narvii/widget/NVListView;->overscrollStretchY:I

    const/4 v2, 0x0

    if-gez v1, :cond_1

    invoke-virtual {p0}, Lcom/narvii/widget/NVListView;->getOverscrollStretchView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p2, :cond_1

    .line 703
    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v3

    .line 704
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v4

    sub-int v5, v3, v4

    .line 705
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 706
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v6, :cond_0

    const-string v1, "overscroll stretch view must have a specific height"

    .line 708
    invoke-static {v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 710
    :cond_0
    iget v7, p0, Lcom/narvii/widget/NVListView;->overscrollStretchY:I

    neg-int v7, v7

    add-int/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    .line 711
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 712
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 711
    invoke-virtual {v1, v3, v7}, Landroid/view/View;->measure(II)V

    .line 713
    iget v3, p0, Lcom/narvii/widget/NVListView;->overscrollStretchY:I

    add-int/2addr v6, v3

    invoke-virtual {v1, v4, v3, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 714
    iput v2, p0, Lcom/narvii/widget/NVListView;->overscrollStretchY:I

    goto :goto_0

    .line 716
    :cond_1
    iget v1, p0, Lcom/narvii/widget/NVListView;->overscrollY:I

    if-gez v1, :cond_2

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/narvii/widget/NVListView;->topStretchDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p2, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    if-ltz v1, :cond_2

    .line 717
    iget-object v1, p0, Lcom/narvii/widget/NVListView;->topStretchDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/narvii/widget/NVListView;->overscrollY:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 718
    iget-object v1, p0, Lcom/narvii/widget/NVListView;->topStretchDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    const/4 v1, 0x1

    if-lez v0, :cond_3

    .line 720
    iget-object v3, p0, Lcom/narvii/widget/NVListView;->bottomStretchDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p2, v0, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    if-gt v0, v3, :cond_3

    .line 721
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->bottomStretchDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/narvii/widget/NVListView;->overscrollY:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 722
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->bottomStretchDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 726
    :cond_3
    iget-boolean v0, p0, Lcom/narvii/widget/NVListView;->sectionHeaderEnabled:Z

    const/4 v3, -0x1

    if-eqz v0, :cond_4

    sget v0, Lcom/narvii/widget/NVListView;->SECTION_HEADER_TAG:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v4, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    if-gez v0, :cond_4

    .line 727
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/4 v4, 0x0

    .line 728
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    :cond_4
    const/4 v0, -0x1

    .line 733
    :goto_1
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    :goto_2
    if-eq v0, v3, :cond_5

    .line 737
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_5
    return v1
.end method

.method protected drawListContentBackground(Landroid/graphics/Canvas;)V
    .locals 5

    .line 288
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->listContentBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 292
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_1

    .line 293
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 295
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    .line 296
    iget v3, p0, Lcom/narvii/widget/NVListView;->overscrollY:I

    if-lez v3, :cond_2

    add-int/2addr v2, v3

    .line 299
    :cond_2
    iget-object v3, p0, Lcom/narvii/widget/NVListView;->listContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v4

    invoke-virtual {v3, v1, v0, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 300
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->listContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected getChildDrawingOrder(II)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    return p2
.end method

.method public getFooterPadding()I
    .locals 1

    .line 229
    iget v0, p0, Lcom/narvii/widget/NVListView;->footerPadding:I

    return v0
.end method

.method public getItemInAdapter(I)Ljava/lang/Object;
    .locals 1

    .line 1350
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1351
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getListContentBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->listContentBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollStretchView()Landroid/view/View;
    .locals 3

    .line 677
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 678
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 679
    sget v1, Lcom/narvii/widget/NVListView;->OVERSCROLL_STRETCH_TAG:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTotalCountInAdapter()I
    .locals 1

    .line 1342
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1343
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1044
    iget v0, p0, Lcom/narvii/widget/NVListView;->overscrollY:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/widget/NVListView;->isDown:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/narvii/widget/NVListView;->isScrollerFinished()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    .line 1045
    invoke-direct {p0}, Lcom/narvii/widget/NVListView;->startSpringback()V

    const/4 v0, 0x0

    .line 1046
    iput v0, p0, Lcom/narvii/widget/NVListView;->overscrollY:I

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->clipOffsetRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 1049
    invoke-virtual {p0}, Landroid/widget/ListView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/widget/NVListView;->clipOffsetRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/narvii/widget/NVListView;->clipOffsetRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/narvii/widget/NVListView;->clipOffsetRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getBottom()I

    move-result v3

    iget-object v4, p0, Lcom/narvii/widget/NVListView;->clipOffsetRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1051
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1052
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->drawListContentBackground(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1003
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->interceptTouchEventListener:Lcom/narvii/widget/NVListView$InterceptTouchEventListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/narvii/widget/NVListView$InterceptTouchEventListener;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1006
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1007
    iput-boolean v1, p0, Lcom/narvii/widget/NVListView;->isDown:Z

    return v1

    .line 1012
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1016
    :cond_2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/narvii/widget/NVListView;->resetScrollCompat(Landroid/view/MotionEvent;)V

    .line 1017
    sget-object p1, Lcom/narvii/widget/NVListView;->fTouchMode:Ljava/lang/reflect/Field;

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 1018
    sget-object p1, Lcom/narvii/widget/NVListView;->fTouchMode:Ljava/lang/reflect/Field;

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 832
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 833
    iget p1, p0, Lcom/narvii/widget/NVListView;->overscrollY:I

    if-eqz p1, :cond_0

    .line 834
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->_scrollListBy(I)V

    const/4 p1, 0x0

    .line 835
    iput p1, p0, Lcom/narvii/widget/NVListView;->overscrollY:I

    .line 837
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/NVListView;->layoutListener:Lcom/narvii/widget/NVListView$OnLayoutListener;

    if-eqz p1, :cond_1

    .line 838
    invoke-interface {p1, p0}, Lcom/narvii/widget/NVListView$OnLayoutListener;->onLayout(Lcom/narvii/widget/NVListView;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 248
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 249
    iget-object p1, p0, Lcom/narvii/widget/NVListView;->tListPadding:Landroid/graphics/Rect;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 252
    iget-object p2, p0, Lcom/narvii/widget/NVListView;->headerPadding:Ljava/lang/Object;

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 253
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    .line 254
    :cond_0
    instance-of v0, p2, Lcom/narvii/widget/NVListView$ListPaddingProvider;

    if-eqz v0, :cond_1

    .line 255
    check-cast p2, Lcom/narvii/widget/NVListView$ListPaddingProvider;

    invoke-interface {p2, p0}, Lcom/narvii/widget/NVListView$ListPaddingProvider;->getPadding(Lcom/narvii/widget/NVListView;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 258
    iget-object p2, p0, Lcom/narvii/widget/NVListView;->tListPadding:Landroid/graphics/Rect;

    iput p1, p2, Landroid/graphics/Rect;->top:I

    :cond_2
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3

    .line 478
    iput p2, p0, Lcom/narvii/widget/NVListView;->overscrollStretchY:I

    iput p2, p0, Lcom/narvii/widget/NVListView;->overscrollY:I

    .line 479
    invoke-direct {p0}, Lcom/narvii/widget/NVListView;->overlayTouchCancel()V

    .line 480
    invoke-direct {p0, p2}, Lcom/narvii/widget/NVListView;->onSwipeRefreshOverscroll(I)V

    .line 481
    iget-boolean v0, p0, Lcom/narvii/widget/NVListView;->blockLayout:Z

    .line 482
    invoke-virtual {p0}, Lcom/narvii/widget/NVListView;->getOverscrollStretchView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-gez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/narvii/widget/NVListView;->blockLayout:Z

    .line 483
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onOverScrolled(IIZZ)V

    .line 484
    iget-boolean p1, p0, Lcom/narvii/widget/NVListView;->blockLayout:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/narvii/widget/NVListView;->pendingLayout:Z

    if-nez p1, :cond_1

    if-eqz v0, :cond_3

    .line 486
    :cond_1
    iput-boolean v2, p0, Lcom/narvii/widget/NVListView;->pendingLayout:Z

    .line 487
    iget-object p1, p0, Lcom/narvii/widget/NVListView;->postRequestLayout:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 488
    sget-object p2, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 490
    :cond_2
    new-instance p1, Lcom/narvii/widget/NVListView$2;

    invoke-direct {p1, p0}, Lcom/narvii/widget/NVListView$2;-><init>(Lcom/narvii/widget/NVListView;)V

    iput-object p1, p0, Lcom/narvii/widget/NVListView;->postRequestLayout:Ljava/lang/Runnable;

    .line 501
    iget-object p1, p0, Lcom/narvii/widget/NVListView;->postRequestLayout:Ljava/lang/Runnable;

    const-wide/16 p2, 0x3c

    invoke-static {p1, p2, p3}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 503
    :cond_3
    iget-object p1, p0, Lcom/narvii/widget/NVListView;->overscrollListener:Lcom/narvii/widget/NVListView$OnOverscrollListener;

    if-eqz p1, :cond_4

    .line 504
    iget p2, p0, Lcom/narvii/widget/NVListView;->overscrollY:I

    invoke-interface {p1, p0, p2}, Lcom/narvii/widget/NVListView$OnOverscrollListener;->onOverscroll(Lcom/narvii/widget/NVListView;I)V

    .line 506
    :cond_4
    iget-object p1, p0, Lcom/narvii/widget/NVListView;->overscrollListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    .line 507
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVListView$OnOverscrollListener;

    .line 508
    iget p3, p0, Lcom/narvii/widget/NVListView;->overscrollY:I

    invoke-interface {p2, p0, p3}, Lcom/narvii/widget/NVListView$OnOverscrollListener;->onOverscroll(Lcom/narvii/widget/NVListView;I)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 877
    invoke-static {}, Lcom/narvii/util/Utils;->applyCompat()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/narvii/widget/NVListView;->onTouchEventCompat(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 878
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 884
    iput-boolean v1, p0, Lcom/narvii/widget/NVListView;->isDown:Z

    goto :goto_1

    .line 880
    :cond_2
    iput-boolean v2, p0, Lcom/narvii/widget/NVListView;->isDown:Z

    .line 887
    :goto_1
    invoke-direct {p0, p1}, Lcom/narvii/widget/NVListView;->overlayTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 7

    .line 1246
    invoke-super {p0, p1}, Landroid/widget/ListView;->onWindowVisibilityChanged(I)V

    const/4 v0, 0x2

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    .line 1247
    iget v1, p0, Lcom/narvii/widget/NVListView;->spState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1248
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1249
    iget-wide v3, p0, Lcom/narvii/widget/NVListView;->spTime:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    const-wide/16 v5, 0xc8

    add-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 1250
    iput v0, p0, Lcom/narvii/widget/NVListView;->spState:I

    :cond_0
    if-nez p1, :cond_4

    .line 1253
    iget p1, p0, Lcom/narvii/widget/NVListView;->spState:I

    if-ne p1, v0, :cond_4

    .line 1256
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p1

    .line 1257
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    .line 1258
    iget v1, p0, Lcom/narvii/widget/NVListView;->spPosition:I

    if-lt v1, p1, :cond_4

    iget p1, p0, Lcom/narvii/widget/NVListView;->spPosition:I

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 1260
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    .line 1261
    iget v0, p0, Lcom/narvii/widget/NVListView;->spPosition:I

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    goto :goto_0

    .line 1263
    :cond_2
    iget v0, p0, Lcom/narvii/widget/NVListView;->spPosition:I

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/narvii/widget/NVListView;->spId:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    goto :goto_0

    .line 1266
    :cond_3
    iget p1, p0, Lcom/narvii/widget/NVListView;->spPosition:I

    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->startBlinkShort(I)V

    const/4 p1, 0x3

    .line 1267
    iput p1, p0, Lcom/narvii/widget/NVListView;->spState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_0
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 1

    .line 818
    iget-boolean v0, p0, Lcom/narvii/widget/NVListView;->changed:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 821
    :cond_0
    invoke-super/range {p0 .. p9}, Landroid/widget/ListView;->overScrollBy(IIIIIIIIZ)Z

    move-result p1

    return p1
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 3

    .line 1223
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1224
    iput p1, p0, Lcom/narvii/widget/NVListView;->spState:I

    .line 1225
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/narvii/widget/NVListView;->spTime:J

    .line 1226
    iput p2, p0, Lcom/narvii/widget/NVListView;->spPosition:I

    .line 1227
    iput-wide p3, p0, Lcom/narvii/widget/NVListView;->spId:J

    const/16 p3, 0xc8

    const/16 p4, 0x64

    .line 1228
    invoke-virtual {p0, p2, v0, p3, p4}, Lcom/narvii/widget/NVListView;->startBlink(IIII)V

    return p1

    :cond_0
    return v0
.end method

.method public removeOnOverscrollListener(Lcom/narvii/widget/NVListView$OnOverscrollListener;)V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->overscrollListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->scrollListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeOnVideoListScrollListener(Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;)V
    .locals 0

    const/4 p1, 0x0

    .line 1336
    iput-object p1, p0, Lcom/narvii/widget/NVListView;->videoListScrollListener:Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;

    .line 1337
    iget-object p1, p0, Lcom/narvii/widget/NVListView;->videoListDelegateScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->removeOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public requestLayout()V
    .locals 2

    .line 688
    iget-boolean v0, p0, Lcom/narvii/widget/NVListView;->blockLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 689
    iput-boolean v0, p0, Lcom/narvii/widget/NVListView;->pendingLayout:Z

    goto :goto_0

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->postRequestLayout:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 692
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 694
    :cond_1
    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    :goto_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 45
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 856
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->adapter:Landroid/widget/ListAdapter;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    .line 859
    iget-object v1, p0, Lcom/narvii/widget/NVListView;->observer:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 861
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 862
    iput-object p1, p0, Lcom/narvii/widget/NVListView;->adapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_1

    .line 864
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->observer:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    return-void
.end method

.method public setBlinkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1119
    iput-object p1, p0, Lcom/narvii/widget/NVListView;->blDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setClipOffsetRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 1038
    iput-object p1, p0, Lcom/narvii/widget/NVListView;->clipOffsetRect:Landroid/graphics/Rect;

    .line 1039
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method public setDispatchTouchEventEndListener(Lcom/narvii/widget/NVListView$DispatchTouchEventEndListener;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/narvii/widget/NVListView;->dispatchTouchEventEndListener:Lcom/narvii/widget/NVListView$DispatchTouchEventEndListener;

    return-void
.end method

.method public setFooterPadding(I)V
    .locals 3

    const/high16 v0, 0x2000000

    .line 222
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 224
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 225
    iput p1, p0, Lcom/narvii/widget/NVListView;->footerPadding:I

    return-void
.end method

.method public setHeaderOverlay(Lcom/narvii/widget/NVListOverlay;)V
    .locals 1

    .line 308
    iput-object p1, p0, Lcom/narvii/widget/NVListView;->overlay:Lcom/narvii/widget/NVListOverlay;

    if-eqz p1, :cond_0

    .line 310
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 311
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->addOnOverscrollListener(Lcom/narvii/widget/NVListView$OnOverscrollListener;)V

    .line 312
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->setOnLayoutListener(Lcom/narvii/widget/NVListView$OnLayoutListener;)V

    .line 313
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->setHeaderPadding(Lcom/narvii/widget/NVListView$ListPaddingProvider;)V

    const/4 v0, 0x1

    .line 314
    iput-boolean v0, p1, Lcom/narvii/widget/NVListOverlay;->attached:Z

    :cond_0
    return-void
.end method

.method public setHeaderPadding(I)V
    .locals 1

    .line 204
    invoke-direct {p0}, Lcom/narvii/widget/NVListView;->ensureListPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/NVListView;->headerPadding:Ljava/lang/Object;

    .line 206
    invoke-virtual {p0}, Lcom/narvii/widget/NVListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setHeaderPadding(Lcom/narvii/widget/NVListView$ListPaddingProvider;)V
    .locals 1

    .line 211
    invoke-direct {p0}, Lcom/narvii/widget/NVListView;->ensureListPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iput-object p1, p0, Lcom/narvii/widget/NVListView;->headerPadding:Ljava/lang/Object;

    .line 213
    invoke-virtual {p0}, Lcom/narvii/widget/NVListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setInterceptTouchEventListener(Lcom/narvii/widget/NVListView$InterceptTouchEventListener;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/narvii/widget/NVListView;->interceptTouchEventListener:Lcom/narvii/widget/NVListView$InterceptTouchEventListener;

    return-void
.end method

.method public setIsNestedScrollingChild(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/narvii/widget/NVListView;->shouldDispatchNestedScrollingEvents:Z

    return-void
.end method

.method public setListContentBackground(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->setListContentBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setListContentBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/narvii/widget/NVListView;->listContentBackground:Landroid/graphics/drawable/Drawable;

    .line 276
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method public setListContentBackgroundColor(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 284
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->setListContentBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnLayoutListener(Lcom/narvii/widget/NVListView$OnLayoutListener;)V
    .locals 0

    .line 827
    iput-object p1, p0, Lcom/narvii/widget/NVListView;->layoutListener:Lcom/narvii/widget/NVListView$OnLayoutListener;

    return-void
.end method

.method public setOnOverscrollListener(Lcom/narvii/widget/NVListView$OnOverscrollListener;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/narvii/widget/NVListView;->overscrollListener:Lcom/narvii/widget/NVListView$OnOverscrollListener;

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/narvii/widget/NVListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method protected setOverflingDistance(I)V
    .locals 1

    .line 446
    :try_start_0
    sget-object v0, Lcom/narvii/widget/NVListView;->fOverflingDistance:Ljava/lang/reflect/Field;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setOverscrollDistance(I)V
    .locals 1

    .line 453
    :try_start_0
    sget-object v0, Lcom/narvii/widget/NVListView;->fOverscrollDistance:Ljava/lang/reflect/Field;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setOverscrollStretchFooter(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 758
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/narvii/widget/NVListView;->bottomStretchDrawable:Landroid/graphics/drawable/Drawable;

    .line 759
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method public setOverscrollStretchFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 753
    iput-object p1, p0, Lcom/narvii/widget/NVListView;->bottomStretchDrawable:Landroid/graphics/drawable/Drawable;

    .line 754
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method public setOverscrollStretchHeader(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 748
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/narvii/widget/NVListView;->topStretchDrawable:Landroid/graphics/drawable/Drawable;

    .line 749
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method public setOverscrollStretchHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 743
    iput-object p1, p0, Lcom/narvii/widget/NVListView;->topStretchDrawable:Landroid/graphics/drawable/Drawable;

    .line 744
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method public setSectionHeaderEnabled(Z)V
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/narvii/widget/NVListView;->sectionHeaderEnabled:Z

    if-eq v0, p1, :cond_0

    .line 193
    iput-boolean p1, p0, Lcom/narvii/widget/NVListView;->sectionHeaderEnabled:Z

    .line 194
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setChildrenDrawingOrderEnabled(Z)V

    .line 195
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_0
    return-void
.end method

.method public spOnPause()V
    .locals 6

    .line 1236
    iget v0, p0, Lcom/narvii/widget/NVListView;->spState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1237
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1238
    iget-wide v2, p0, Lcom/narvii/widget/NVListView;->spTime:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/16 v4, 0xc8

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x2

    .line 1239
    iput v0, p0, Lcom/narvii/widget/NVListView;->spState:I

    :cond_0
    return-void
.end method

.method public startBlink(IIII)V
    .locals 2

    .line 1123
    iput p1, p0, Lcom/narvii/widget/NVListView;->blPosition:I

    .line 1124
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1125
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/narvii/widget/NVListView;->blId:J

    .line 1126
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/widget/NVListView;->blStartTime:J

    .line 1127
    iput p2, p0, Lcom/narvii/widget/NVListView;->blT1:I

    .line 1128
    iput p3, p0, Lcom/narvii/widget/NVListView;->blT2:I

    .line 1129
    iput p4, p0, Lcom/narvii/widget/NVListView;->blT3:I

    .line 1130
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method public startBlink(Landroid/view/View;III)V
    .locals 4

    .line 1134
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1137
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 1138
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_1

    add-int/2addr v1, v0

    .line 1139
    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/narvii/widget/NVListView;->startBlink(IIII)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public startBlinkLong(I)V
    .locals 3

    const/16 v0, 0xc8

    const/16 v1, 0x12c

    const/16 v2, 0x320

    .line 1146
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/narvii/widget/NVListView;->startBlink(IIII)V

    return-void
.end method

.method public startBlinkLong(Landroid/view/View;)V
    .locals 3

    const/16 v0, 0xc8

    const/16 v1, 0x12c

    const/16 v2, 0x320

    .line 1150
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/narvii/widget/NVListView;->startBlink(Landroid/view/View;III)V

    return-void
.end method

.method public startBlinkShort(I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xc8

    const/16 v2, 0x190

    .line 1154
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/narvii/widget/NVListView;->startBlink(IIII)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method
