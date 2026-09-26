.class public Lcom/narvii/widget/NVListView;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/NestedScrollingChild;
.implements Lcom/narvii/nvplayerview/delegate/IVideoListView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/NVListView$InterceptTouchEventListener;,
        Lcom/narvii/widget/NVListView$DispatchTouchEventEndListener;,
        Lcom/narvii/widget/NVListView$ActionbarOverlayPadding;,
        Lcom/narvii/widget/NVListView$ListPaddingProvider;,
        Lcom/narvii/widget/NVListView$OnOverscrollListener;,
        Lcom/narvii/widget/NVListView$OnLayoutListener;,
        Lcom/narvii/widget/NVListView$NoEdgeEffect;
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

.field private mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

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
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->list_overscroll_stretch:I

    .line 3
    .line 4
    sput v0, Lcom/narvii/widget/NVListView;->OVERSCROLL_STRETCH_TAG:I

    .line 5
    .line 6
    sget v0, Lcom/narvii/lib/R$id;->list_section_header:I

    .line 7
    .line 8
    sput v0, Lcom/narvii/widget/NVListView;->SECTION_HEADER_TAG:I

    .line 9
    .line 10
    new-instance v0, Landroid/os/Handler;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    .line 19
    sput-object v0, Lcom/narvii/widget/NVListView;->handler:Landroid/os/Handler;

    .line 20
    .line 21
    .line 22
    const v0, 0x10100a7

    .line 23
    .line 24
    .line 25
    filled-new-array {v0}, [I

    .line 26
    move-result-object v0

    .line 27
    .line 28
    sput-object v0, Lcom/narvii/widget/NVListView;->STATE_PRESSED:[I

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/NVListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    invoke-static {p1}, Lcom/narvii/widget/NVListView;->getNoEdgeGlowEffectContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/widget/NVListView;->shouldDispatchNestedScrollingEvents:Z

    const/4 p2, -0x1

    iput p2, p0, Lcom/narvii/widget/NVListView;->footerPadding:I

    .line 3
    new-instance p2, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {p2, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/narvii/widget/NVListView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 4
    new-instance p2, Lcom/narvii/widget/NVListView$1;

    invoke-direct {p2, p0}, Lcom/narvii/widget/NVListView$1;-><init>(Lcom/narvii/widget/NVListView;)V

    iput-object p2, p0, Lcom/narvii/widget/NVListView;->agentScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 5
    new-instance v0, Lcom/narvii/widget/NVListView$3;

    invoke-direct {v0, p0}, Lcom/narvii/widget/NVListView$3;-><init>(Lcom/narvii/widget/NVListView;)V

    iput-object v0, p0, Lcom/narvii/widget/NVListView;->observer:Landroid/database/DataSetObserver;

    .line 6
    new-instance v0, Lcom/narvii/widget/NVListView$4;

    invoke-direct {v0, p0}, Lcom/narvii/widget/NVListView$4;-><init>(Lcom/narvii/widget/NVListView;)V

    iput-object v0, p0, Lcom/narvii/widget/NVListView;->resetChanged:Ljava/lang/Runnable;

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/narvii/widget/NVListView;->mNestedOffsets:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/narvii/widget/NVListView;->mScrollConsumed:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/narvii/widget/NVListView;->mScrollOffset:[I

    iput-boolean p1, p0, Lcom/narvii/widget/NVListView;->isFirst:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/widget/NVListView;->videoListScrollListener:Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;

    .line 7
    new-instance v0, Lcom/narvii/widget/NVListView$7;

    invoke-direct {v0, p0}, Lcom/narvii/widget/NVListView$7;-><init>(Lcom/narvii/widget/NVListView;)V

    iput-object v0, p0, Lcom/narvii/widget/NVListView;->videoListDelegateScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->setNestedScrollingEnabled(Z)V

    .line 9
    invoke-direct {p0}, Lcom/narvii/widget/NVListView;->initOverscroll()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    invoke-static {p0}, Lcom/narvii/widget/NVListView;->removeEdgeGlowEffect(Landroid/widget/ListView;)V

    .line 11
    :cond_0
    invoke-super {p0, p2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/widget/NVListView;)Landroid/widget/ListAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/NVListView;->adapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/widget/NVListView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/widget/NVListView;->blockLayout:Z

    return p0
.end method

.method static bridge synthetic c(Lcom/narvii/widget/NVListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/widget/NVListView;->overscrollY:I

    return p0
.end method

.method static bridge synthetic d(Lcom/narvii/widget/NVListView;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/NVListView;->postRequestLayout:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/widget/NVListView;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/NVListView;->resetChanged:Ljava/lang/Runnable;

    return-object p0
.end method

.method private ensureListPadding()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->tListPadding:Landroid/graphics/Rect;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    .line 8
    .line 9
    const-string v2, "mListPadding"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Landroid/graphics/Rect;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/widget/NVListView;->tListPadding:Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .line 28
    const-string v1, "fail to setup HF padding"

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    const/4 v0, 0x0

    .line 33
    return v0

    .line 34
    :cond_0
    :goto_0
    return v1
.end method

.method static bridge synthetic f(Lcom/narvii/widget/NVListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/NVListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/narvii/widget/NVListView;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/NVListView;->scrollListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static getNoEdgeGlowEffectContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method static bridge synthetic h(Lcom/narvii/widget/NVListView;)Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/NVListView;->videoListScrollListener:Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/narvii/widget/NVListView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/widget/NVListView;->changed:Z

    return-void
.end method

.method private initOverscroll()Z
    .locals 6

    .line 1
    .line 2
    const-class v0, Landroid/widget/AbsListView;

    .line 3
    .line 4
    sget-boolean v1, Lcom/narvii/widget/NVListView;->inited:Z

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    :try_start_0
    sput-boolean v3, Lcom/narvii/widget/NVListView;->inited:Z

    .line 11
    .line 12
    const-string v1, "mOverflingDistance"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    sput-object v1, Lcom/narvii/widget/NVListView;->fOverflingDistance:Ljava/lang/reflect/Field;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 22
    .line 23
    const-string v1, "mOverscrollDistance"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    sput-object v1, Lcom/narvii/widget/NVListView;->fOverscrollDistance:Ljava/lang/reflect/Field;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 33
    .line 34
    .line 35
    const-string/jumbo v1, "trackMotionScroll"

    .line 36
    const/4 v4, 0x2

    .line 37
    .line 38
    new-array v4, v4, [Ljava/lang/Class;

    .line 39
    .line 40
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 41
    .line 42
    aput-object v5, v4, v2

    .line 43
    .line 44
    aput-object v5, v4, v3

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    sput-object v1, Lcom/narvii/widget/NVListView;->mTrackMotionScroll:Ljava/lang/reflect/Method;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 54
    .line 55
    const-string v1, "mTouchMode"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    sput-object v0, Lcom/narvii/widget/NVListView;->fTouchMode:Ljava/lang/reflect/Field;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .line 68
    const-string v1, "fail to init overscroll"

    .line 69
    .line 70
    .line 71
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    :cond_0
    :goto_0
    sget-object v0, Lcom/narvii/widget/NVListView;->fOverscrollDistance:Ljava/lang/reflect/Field;

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    sget-object v0, Lcom/narvii/widget/NVListView;->fOverflingDistance:Ljava/lang/reflect/Field;

    .line 78
    .line 79
    if-nez v0, :cond_1

    .line 80
    goto :goto_1

    .line 81
    .line 82
    .line 83
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    sget v1, Lcom/narvii/lib/R$dimen;->overscroll_height:I

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 90
    move-result v0

    .line 91
    .line 92
    sget-object v1, Lcom/narvii/widget/NVListView;->fOverflingDistance:Ljava/lang/reflect/Field;

    .line 93
    .line 94
    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object v4

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    .line 101
    sget-object v1, Lcom/narvii/widget/NVListView;->fOverscrollDistance:Ljava/lang/reflect/Field;

    .line 102
    .line 103
    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v2}, Landroid/view/View;->setOverScrollMode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    return v3

    .line 113
    :catch_1
    :cond_2
    :goto_1
    return v2
.end method

.method private isScrollerFinished()Ljava/lang/Boolean;
    .locals 4

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/widget/NVListView;->fScrollerInited:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    sput-boolean v0, Lcom/narvii/widget/NVListView;->fScrollerInited:Z

    .line 9
    .line 10
    :try_start_0
    const-class v2, Landroid/widget/AbsListView;

    .line 11
    .line 12
    const-string v3, "mFlingRunnable"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 20
    .line 21
    sput-object v2, Lcom/narvii/widget/NVListView;->fFlingRunnable:Ljava/lang/reflect/Field;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    const-string v3, "mScroller"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 35
    .line 36
    sput-object v2, Lcom/narvii/widget/NVListView;->fScroller:Ljava/lang/reflect/Field;

    .line 37
    .line 38
    sget-object v0, Lcom/narvii/widget/NVListView;->fFlingRunnable:Ljava/lang/reflect/Field;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    sget-object v2, Lcom/narvii/widget/NVListView;->fScroller:Ljava/lang/reflect/Field;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    check-cast v0, Landroid/widget/OverScroller;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    .line 56
    move-result v0

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 60
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return-object v0

    .line 62
    :cond_0
    return-object v1

    .line 63
    .line 64
    :catch_0
    const-string v0, "overscroll unknown scroller"

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :cond_1
    sget-object v0, Lcom/narvii/widget/NVListView;->fScroller:Ljava/lang/reflect/Field;

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    :try_start_1
    sget-object v0, Lcom/narvii/widget/NVListView;->fFlingRunnable:Ljava/lang/reflect/Field;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    sget-object v2, Lcom/narvii/widget/NVListView;->fScroller:Ljava/lang/reflect/Field;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    check-cast v0, Landroid/widget/OverScroller;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    .line 92
    move-result v0

    .line 93
    .line 94
    .line 95
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 96
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    return-object v0

    .line 98
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

.method static bridge synthetic j(Lcom/narvii/widget/NVListView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/widget/NVListView;->pendingLayout:Z

    return-void
.end method

.method static bridge synthetic k(Lcom/narvii/widget/NVListView;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/widget/NVListView;->postRequestLayout:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic l(Lcom/narvii/widget/NVListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/widget/NVListView;->overlayTouchCancel()V

    return-void
.end method

.method static bridge synthetic m()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/widget/NVListView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private onSwipeRefreshOverscroll(I)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/widget/NVListView;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/narvii/widget/NVListView;->swipeRefreshOverscrollY:I

    iget v0, p0, Lcom/narvii/widget/NVListView;->swipeRefreshStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-gez p1, :cond_1

    const/4 p1, 0x2

    iput p1, p0, Lcom/narvii/widget/NVListView;->swipeRefreshStatus:I

    iget p1, p0, Lcom/narvii/widget/NVListView;->swipeRefreshY:I

    iput p1, p0, Lcom/narvii/widget/NVListView;->swipeRefreshStartY:I

    :cond_1
    return-void
.end method

.method private onSwipeRefreshTouch(Landroid/view/MotionEvent;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x2

    .line 13
    .line 14
    if-eqz v0, :cond_8

    .line 15
    .line 16
    if-eq v0, v2, :cond_6

    .line 17
    .line 18
    if-eq v0, v3, :cond_4

    .line 19
    const/4 v4, 0x3

    .line 20
    .line 21
    if-eq v0, v4, :cond_6

    .line 22
    const/4 v3, 0x5

    .line 23
    .line 24
    if-eq v0, v3, :cond_3

    .line 25
    const/4 v3, 0x6

    .line 26
    .line 27
    if-eq v0, v3, :cond_1

    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 33
    move-result v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 37
    move-result v0

    .line 38
    .line 39
    iget v3, p0, Lcom/narvii/widget/NVListView;->swipeRefreshActivePointerId:I

    .line 40
    .line 41
    if-ne v0, v3, :cond_b

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    move v1, v2

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 48
    move-result p1

    .line 49
    .line 50
    iput p1, p0, Lcom/narvii/widget/NVListView;->swipeRefreshActivePointerId:I

    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    .line 55
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 56
    move-result v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 60
    move-result p1

    .line 61
    .line 62
    iput p1, p0, Lcom/narvii/widget/NVListView;->swipeRefreshActivePointerId:I

    .line 63
    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :cond_4
    iget v0, p0, Lcom/narvii/widget/NVListView;->swipeRefreshActivePointerId:I

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 70
    move-result v0

    .line 71
    .line 72
    if-ltz v0, :cond_b

    .line 73
    .line 74
    iget v1, p0, Lcom/narvii/widget/NVListView;->swipeRefreshStatus:I

    .line 75
    .line 76
    if-lt v1, v3, :cond_b

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 80
    move-result p1

    .line 81
    float-to-int p1, p1

    .line 82
    .line 83
    iget v0, p0, Lcom/narvii/widget/NVListView;->swipeRefreshStartY:I

    .line 84
    sub-int/2addr p1, v0

    .line 85
    div-int/2addr p1, v3

    .line 86
    .line 87
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 88
    .line 89
    iput-boolean v2, v0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 90
    .line 91
    if-lez p1, :cond_5

    .line 92
    int-to-float p1, p1

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->moveSpinner(F)V

    .line 96
    goto :goto_0

    .line 97
    :cond_5
    const/4 p1, 0x0

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->finishSpinner(F)V

    .line 101
    goto :goto_0

    .line 102
    .line 103
    :cond_6
    iget v0, p0, Lcom/narvii/widget/NVListView;->swipeRefreshStatus:I

    .line 104
    .line 105
    if-lt v0, v3, :cond_7

    .line 106
    .line 107
    iget v0, p0, Lcom/narvii/widget/NVListView;->swipeRefreshActivePointerId:I

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 111
    move-result v0

    .line 112
    .line 113
    if-ltz v0, :cond_7

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 117
    move-result p1

    .line 118
    float-to-int p1, p1

    .line 119
    .line 120
    iget v0, p0, Lcom/narvii/widget/NVListView;->swipeRefreshStartY:I

    .line 121
    sub-int/2addr p1, v0

    .line 122
    div-int/2addr p1, v3

    .line 123
    .line 124
    if-lez p1, :cond_7

    .line 125
    .line 126
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 127
    .line 128
    iput-boolean v2, v0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 129
    int-to-float p1, p1

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->finishSpinner(F)V

    .line 133
    .line 134
    :cond_7
    iput v1, p0, Lcom/narvii/widget/NVListView;->swipeRefreshStatus:I

    .line 135
    goto :goto_0

    .line 136
    .line 137
    :cond_8
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->isRefreshing()Z

    .line 141
    move-result v0

    .line 142
    .line 143
    if-eqz v0, :cond_9

    .line 144
    .line 145
    iput v1, p0, Lcom/narvii/widget/NVListView;->swipeRefreshStatus:I

    .line 146
    goto :goto_0

    .line 147
    .line 148
    .line 149
    :cond_9
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 150
    move-result v0

    .line 151
    .line 152
    iput v0, p0, Lcom/narvii/widget/NVListView;->swipeRefreshActivePointerId:I

    .line 153
    .line 154
    iget v0, p0, Lcom/narvii/widget/NVListView;->swipeRefreshOverscrollY:I

    .line 155
    .line 156
    if-gez v0, :cond_a

    .line 157
    move v2, v3

    .line 158
    .line 159
    :cond_a
    iput v2, p0, Lcom/narvii/widget/NVListView;->swipeRefreshStatus:I

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 163
    move-result p1

    .line 164
    float-to-int p1, p1

    .line 165
    .line 166
    iput p1, p0, Lcom/narvii/widget/NVListView;->swipeRefreshY:I

    .line 167
    .line 168
    iget v0, p0, Lcom/narvii/widget/NVListView;->swipeRefreshStatus:I

    .line 169
    .line 170
    if-ne v0, v3, :cond_b

    .line 171
    .line 172
    iput p1, p0, Lcom/narvii/widget/NVListView;->swipeRefreshStartY:I

    .line 173
    :cond_b
    :goto_0
    return-void
.end method

.method private onTouchEventCompat(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->c(Landroid/view/MotionEvent;)I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->b(Landroid/view/MotionEvent;)I

    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    iget-object v5, p0, Lcom/narvii/widget/NVListView;->mNestedOffsets:[I

    .line 19
    .line 20
    aput v3, v5, v4

    .line 21
    .line 22
    aput v3, v5, v3

    .line 23
    .line 24
    :cond_0
    iget-object v5, p0, Lcom/narvii/widget/NVListView;->mNestedOffsets:[I

    .line 25
    .line 26
    aget v6, v5, v3

    .line 27
    int-to-float v6, v6

    .line 28
    .line 29
    aget v5, v5, v4

    .line 30
    int-to-float v5, v5

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v6, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 34
    .line 35
    if-eq v1, v4, :cond_8

    .line 36
    const/4 v5, 0x3

    .line 37
    const/4 v6, 0x2

    .line 38
    .line 39
    const/high16 v7, 0x3f000000    # 0.5f

    .line 40
    .line 41
    if-eq v1, v6, :cond_2

    .line 42
    .line 43
    if-eq v1, v5, :cond_8

    .line 44
    const/4 v0, 0x5

    .line 45
    .line 46
    if-eq v1, v0, :cond_1

    .line 47
    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->e(Landroid/view/MotionEvent;I)I

    .line 52
    move-result v0

    .line 53
    .line 54
    iput v0, p0, Lcom/narvii/widget/NVListView;->mScrollPointerId:I

    .line 55
    .line 56
    .line 57
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->f(Landroid/view/MotionEvent;I)F

    .line 58
    move-result v0

    .line 59
    add-float/2addr v0, v7

    .line 60
    float-to-int v0, v0

    .line 61
    .line 62
    iput v0, p0, Lcom/narvii/widget/NVListView;->mLastTouchX:I

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->g(Landroid/view/MotionEvent;I)F

    .line 66
    move-result v0

    .line 67
    add-float/2addr v0, v7

    .line 68
    float-to-int v0, v0

    .line 69
    .line 70
    iput v0, p0, Lcom/narvii/widget/NVListView;->mLastTouchY:I

    .line 71
    .line 72
    goto/16 :goto_2

    .line 73
    .line 74
    :cond_2
    iget v1, p0, Lcom/narvii/widget/NVListView;->mScrollPointerId:I

    .line 75
    .line 76
    .line 77
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->a(Landroid/view/MotionEvent;I)I

    .line 78
    move-result v1

    .line 79
    .line 80
    if-gez v1, :cond_3

    .line 81
    return v3

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->f(Landroid/view/MotionEvent;I)F

    .line 85
    move-result v2

    .line 86
    add-float/2addr v2, v7

    .line 87
    float-to-int v2, v2

    .line 88
    .line 89
    .line 90
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->g(Landroid/view/MotionEvent;I)F

    .line 91
    move-result v1

    .line 92
    add-float/2addr v1, v7

    .line 93
    float-to-int v1, v1

    .line 94
    .line 95
    iget v7, p0, Lcom/narvii/widget/NVListView;->mLastTouchX:I

    .line 96
    sub-int/2addr v7, v2

    .line 97
    .line 98
    iget v8, p0, Lcom/narvii/widget/NVListView;->mLastTouchY:I

    .line 99
    sub-int/2addr v8, v1

    .line 100
    .line 101
    iget-boolean v9, p0, Lcom/narvii/widget/NVListView;->isFirst:Z

    .line 102
    .line 103
    const-string v10, "pyt"

    .line 104
    .line 105
    if-eqz v9, :cond_4

    .line 106
    .line 107
    const-string v0, "FIRST"

    .line 108
    .line 109
    .line 110
    invoke-static {v10, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    iput-boolean v3, p0, Lcom/narvii/widget/NVListView;->isFirst:Z

    .line 113
    .line 114
    .line 115
    invoke-direct {p0, p1}, Lcom/narvii/widget/NVListView;->resetScrollCompat(Landroid/view/MotionEvent;)V

    .line 116
    return v4

    .line 117
    .line 118
    :cond_4
    iget v9, p0, Lcom/narvii/widget/NVListView;->lastDy:I

    .line 119
    .line 120
    .line 121
    invoke-direct {p0, v9, v8}, Lcom/narvii/widget/NVListView;->isSignOpposite(II)Z

    .line 122
    move-result v9

    .line 123
    .line 124
    if-nez v9, :cond_9

    .line 125
    .line 126
    iput v8, p0, Lcom/narvii/widget/NVListView;->lastDy:I

    .line 127
    .line 128
    new-instance v9, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    const-string v11, "move lastY"

    .line 134
    .line 135
    .line 136
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    iget v11, p0, Lcom/narvii/widget/NVListView;->mLastTouchY:I

    .line 139
    .line 140
    .line 141
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v11, ",y="

    .line 144
    .line 145
    .line 146
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v11, ",dy="

    .line 152
    .line 153
    .line 154
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object v9

    .line 162
    .line 163
    .line 164
    invoke-static {v10, v9}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    iget-object v9, p0, Lcom/narvii/widget/NVListView;->mScrollConsumed:[I

    .line 167
    .line 168
    iget-object v10, p0, Lcom/narvii/widget/NVListView;->mScrollOffset:[I

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/narvii/widget/NVListView;->dispatchNestedPreScroll(II[I[I)Z

    .line 172
    move-result v7

    .line 173
    .line 174
    if-eqz v7, :cond_5

    .line 175
    .line 176
    iget-object v7, p0, Lcom/narvii/widget/NVListView;->mScrollOffset:[I

    .line 177
    .line 178
    aget v8, v7, v3

    .line 179
    int-to-float v8, v8

    .line 180
    .line 181
    aget v7, v7, v4

    .line 182
    int-to-float v7, v7

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v8, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 186
    .line 187
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->mNestedOffsets:[I

    .line 188
    .line 189
    aget v7, v0, v3

    .line 190
    .line 191
    iget-object v8, p0, Lcom/narvii/widget/NVListView;->mScrollOffset:[I

    .line 192
    .line 193
    aget v9, v8, v3

    .line 194
    add-int/2addr v7, v9

    .line 195
    .line 196
    aput v7, v0, v3

    .line 197
    .line 198
    aget v7, v0, v4

    .line 199
    .line 200
    aget v8, v8, v4

    .line 201
    add-int/2addr v7, v8

    .line 202
    .line 203
    aput v7, v0, v4

    .line 204
    .line 205
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->mScrollConsumed:[I

    .line 206
    .line 207
    aget v0, v0, v4

    .line 208
    goto :goto_0

    .line 209
    :cond_5
    move v0, v3

    .line 210
    .line 211
    :goto_0
    iget v7, p0, Lcom/narvii/widget/NVListView;->mLastTouchY:I

    .line 212
    .line 213
    sub-int v8, v1, v7

    .line 214
    .line 215
    const/high16 v9, -0x80000000

    .line 216
    .line 217
    if-eq v7, v9, :cond_6

    .line 218
    .line 219
    sub-int v7, v1, v7

    .line 220
    add-int/2addr v7, v0

    .line 221
    goto :goto_1

    .line 222
    :cond_6
    move v7, v8

    .line 223
    .line 224
    :goto_1
    :try_start_0
    sget-object v0, Lcom/narvii/widget/NVListView;->fTouchMode:Ljava/lang/reflect/Field;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 228
    move-result v0

    .line 229
    .line 230
    if-ne v0, v5, :cond_7

    .line 231
    .line 232
    iget v0, p0, Lcom/narvii/widget/NVListView;->mLastTouchY:I

    .line 233
    .line 234
    if-eq v1, v0, :cond_7

    .line 235
    .line 236
    if-eqz v7, :cond_7

    .line 237
    .line 238
    sget-object v0, Lcom/narvii/widget/NVListView;->mTrackMotionScroll:Ljava/lang/reflect/Method;

    .line 239
    .line 240
    new-array v5, v6, [Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    move-result-object v6

    .line 245
    .line 246
    aput-object v6, v5, v3

    .line 247
    .line 248
    .line 249
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    move-result-object v6

    .line 251
    .line 252
    aput-object v6, v5, v4

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    move-result-object v0

    .line 257
    .line 258
    check-cast v0, Ljava/lang/Boolean;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 262
    move-result v0

    .line 263
    .line 264
    if-eqz v0, :cond_7

    .line 265
    const/4 v6, 0x0

    .line 266
    const/4 v7, 0x0

    .line 267
    const/4 v8, 0x0

    .line 268
    .line 269
    iget v0, p0, Lcom/narvii/widget/NVListView;->mLastTouchY:I

    .line 270
    .line 271
    sub-int v9, v0, v1

    .line 272
    .line 273
    iget-object v10, p0, Lcom/narvii/widget/NVListView;->mScrollOffset:[I

    .line 274
    move-object v5, p0

    .line 275
    .line 276
    .line 277
    invoke-virtual/range {v5 .. v10}, Lcom/narvii/widget/NVListView;->dispatchNestedScroll(IIII[I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .line 279
    :catch_0
    :cond_7
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->mScrollOffset:[I

    .line 280
    .line 281
    aget v3, v0, v3

    .line 282
    sub-int/2addr v2, v3

    .line 283
    .line 284
    iput v2, p0, Lcom/narvii/widget/NVListView;->mLastTouchX:I

    .line 285
    .line 286
    aget v0, v0, v4

    .line 287
    sub-int/2addr v1, v0

    .line 288
    .line 289
    iput v1, p0, Lcom/narvii/widget/NVListView;->mLastTouchY:I

    .line 290
    goto :goto_2

    .line 291
    .line 292
    .line 293
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/widget/NVListView;->stopNestedScroll()V

    .line 294
    .line 295
    iput-boolean v4, p0, Lcom/narvii/widget/NVListView;->isFirst:Z

    .line 296
    .line 297
    .line 298
    :cond_9
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 299
    return v4
.end method

.method private overlayTouchCancel()V
    .locals 9

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/NVListView;->overlayTouchEvents:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->overlay:Lcom/narvii/widget/NVListOverlay;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 12
    move-result-wide v3

    .line 13
    const/4 v5, 0x3

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x0

    .line 17
    move-wide v1, v3

    .line 18
    .line 19
    .line 20
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    const/16 v1, 0x1002

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/widget/NVListView;->overlay:Lcom/narvii/widget/NVListOverlay;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVListOverlay;->dispatchTouchEventRelay(Landroid/view/MotionEvent;)Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 35
    :cond_0
    return-void
.end method

.method private overlayTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->overlay:Lcom/narvii/widget/NVListOverlay;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/narvii/widget/NVListView;->overlayTouchEvents:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    move-result v0

    .line 14
    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 19
    move-result v0

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 25
    move-result v0

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 35
    move-result v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 39
    move-result v2

    .line 40
    int-to-float v0, v0

    .line 41
    .line 42
    cmpg-float v0, v2, v0

    .line 43
    .line 44
    if-gez v0, :cond_0

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->overlay:Lcom/narvii/widget/NVListOverlay;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListOverlay;->dispatchTouchEventRelay(Landroid/view/MotionEvent;)Z

    .line 50
    move-result p1

    .line 51
    .line 52
    iput-boolean p1, p0, Lcom/narvii/widget/NVListView;->overlayTouchEvents:Z

    .line 53
    return p1

    .line 54
    .line 55
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/widget/NVListView;->overlayTouchEvents:Z

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->overlay:Lcom/narvii/widget/NVListOverlay;

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListOverlay;->dispatchTouchEventRelay(Landroid/view/MotionEvent;)Z

    .line 65
    move-result v0

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 69
    move-result p1

    .line 70
    const/4 v2, 0x1

    .line 71
    .line 72
    if-eq p1, v2, :cond_1

    .line 73
    const/4 v2, 0x3

    .line 74
    .line 75
    if-eq p1, v2, :cond_1

    .line 76
    goto :goto_0

    .line 77
    .line 78
    :cond_1
    iput-boolean v1, p0, Lcom/narvii/widget/NVListView;->overlayTouchEvents:Z

    .line 79
    :goto_0
    move v1, v0

    .line 80
    :cond_2
    return v1
.end method

.method static removeEdgeGlowEffect(Landroid/widget/ListView;)V
    .locals 3

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/widget/NVListView;->removeEdgeGlowInited:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "mEdgeGlowTop"

    .line 7
    .line 8
    const-class v1, Landroid/widget/ListView;

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v0}, Lcom/narvii/widget/NVListView;->searchDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    sput-object v0, Lcom/narvii/widget/NVListView;->fEdgeGlowTop:Ljava/lang/reflect/Field;

    .line 15
    .line 16
    const-string v0, "mEdgeGlowBottom"

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/narvii/widget/NVListView;->searchDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    sput-object v0, Lcom/narvii/widget/NVListView;->fEdgeGlowBottom:Ljava/lang/reflect/Field;

    .line 23
    const/4 v0, 0x1

    .line 24
    .line 25
    sput-boolean v0, Lcom/narvii/widget/NVListView;->removeEdgeGlowInited:Z

    .line 26
    .line 27
    :cond_0
    :try_start_0
    sget-object v0, Lcom/narvii/widget/NVListView;->fEdgeGlowTop:Ljava/lang/reflect/Field;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    new-instance v1, Lcom/narvii/widget/NVListView$NoEdgeEffect;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, v2}, Lcom/narvii/widget/NVListView$NoEdgeEffect;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    :cond_1
    sget-object v0, Lcom/narvii/widget/NVListView;->fEdgeGlowBottom:Ljava/lang/reflect/Field;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    new-instance v1, Lcom/narvii/widget/NVListView$NoEdgeEffect;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    .line 54
    invoke-direct {v1, v2}, Lcom/narvii/widget/NVListView$NoEdgeEffect;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :catch_0
    :cond_2
    return-void
.end method

.method private resetScrollCompat(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/Utils;->applyCompat()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput v0, p0, Lcom/narvii/widget/NVListView;->lastDy:I

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/widget/NVListView;->mNestedOffsets:[I

    .line 12
    const/4 v2, 0x1

    .line 13
    .line 14
    aput v0, v1, v2

    .line 15
    .line 16
    aput v0, v1, v0

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->e(Landroid/view/MotionEvent;I)I

    .line 20
    move-result v0

    .line 21
    .line 22
    iput v0, p0, Lcom/narvii/widget/NVListView;->mScrollPointerId:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 26
    move-result v0

    .line 27
    .line 28
    const/high16 v1, 0x3f000000    # 0.5f

    .line 29
    add-float/2addr v0, v1

    .line 30
    float-to-int v0, v0

    .line 31
    .line 32
    iput v0, p0, Lcom/narvii/widget/NVListView;->mLastTouchX:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 36
    move-result p1

    .line 37
    add-float/2addr p1, v1

    .line 38
    float-to-int p1, p1

    .line 39
    .line 40
    iput p1, p0, Lcom/narvii/widget/NVListView;->mLastTouchY:I

    .line 41
    const/4 p1, 0x2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->startNestedScroll(I)Z

    .line 45
    :cond_0
    return-void
.end method

.method static searchDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object v0

    .line 10
    .line 11
    .line 12
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    const/4 p0, 0x0

    .line 17
    return-object p0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-static {p0, p1}, Lcom/narvii/widget/NVListView;->searchDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static smoothScrollToPositionFromTop(Lcom/narvii/widget/NVListView;II)V
    .locals 2

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    new-instance v0, Lcom/narvii/widget/NVListView$5;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/widget/NVListView$5;-><init>(Lcom/narvii/widget/NVListView;II)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 12
    .line 13
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v1, Lcom/narvii/widget/NVListView$6;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/widget/NVListView$6;-><init>(Lcom/narvii/widget/NVListView;II)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    return-void
.end method

.method private startSpringback()V
    .locals 4

    .line 1
    .line 2
    :try_start_0
    sget-object v0, Lcom/narvii/widget/NVListView;->fFlingRunnable:Ljava/lang/reflect/Field;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "startSpringback"

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    new-array v3, v2, [Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 20
    .line 21
    sget-object v1, Lcom/narvii/widget/NVListView;->fFlingRunnable:Ljava/lang/reflect/Field;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    new-array v2, v2, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
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

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/Utils;->applyCompat()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    sget-object v0, Lcom/narvii/widget/NVListView;->mTrackMotionScroll:Ljava/lang/reflect/Method;

    .line 9
    const/4 v1, 0x2

    .line 10
    .line 11
    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    neg-int p1, p1

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x0

    .line 18
    .line 19
    aput-object v2, v1, v3

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object p1

    .line 24
    const/4 v2, 0x1

    .line 25
    .line 26
    aput-object p1, v1, v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->scrollListBy(I)V

    .line 34
    :catch_0
    :goto_0
    return-void
.end method

.method public addActionBarOverlayHeader(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/widget/NVListView$ActionbarOverlayPadding;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/narvii/widget/NVListView$ActionbarOverlayPadding;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/widget/NVListView;->setHeaderPadding(Lcom/narvii/widget/NVListView$ListPaddingProvider;)V

    .line 9
    return-void
.end method

.method public addOnOverscrollListener(Lcom/narvii/widget/NVListView$OnOverscrollListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->overscrollListeners:Ljava/util/ArrayList;

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
    iput-object v0, p0, Lcom/narvii/widget/NVListView;->overscrollListeners:Ljava/util/ArrayList;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->overscrollListeners:Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->scrollListeners:Ljava/util/ArrayList;

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
    iput-object v0, p0, Lcom/narvii/widget/NVListView;->scrollListeners:Ljava/util/ArrayList;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->scrollListeners:Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public addOnVideoListScrollListener(Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/NVListView;->videoListScrollListener:Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/widget/NVListView;->videoListDelegateScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 8
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->blDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto/16 :goto_1

    .line 9
    .line 10
    :cond_0
    iget-wide v3, p0, Lcom/narvii/widget/NVListView;->blStartTime:J

    .line 11
    .line 12
    cmp-long v0, v3, v1

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 20
    move-result-wide v3

    .line 21
    .line 22
    iget-wide v5, p0, Lcom/narvii/widget/NVListView;->blStartTime:J

    .line 23
    sub-long/2addr v3, v5

    .line 24
    .line 25
    cmp-long v0, v3, v1

    .line 26
    .line 27
    if-ltz v0, :cond_b

    .line 28
    .line 29
    iget v0, p0, Lcom/narvii/widget/NVListView;->blT1:I

    .line 30
    .line 31
    iget v5, p0, Lcom/narvii/widget/NVListView;->blT2:I

    .line 32
    add-int/2addr v0, v5

    .line 33
    .line 34
    iget v5, p0, Lcom/narvii/widget/NVListView;->blT3:I

    .line 35
    add-int/2addr v0, v5

    .line 36
    int-to-long v5, v0

    .line 37
    .line 38
    cmp-long v0, v3, v5

    .line 39
    .line 40
    if-ltz v0, :cond_2

    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 46
    move-result v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 50
    move-result v5

    .line 51
    .line 52
    iget v6, p0, Lcom/narvii/widget/NVListView;->blPosition:I

    .line 53
    .line 54
    if-lt v6, v0, :cond_b

    .line 55
    .line 56
    if-le v6, v5, :cond_3

    .line 57
    .line 58
    goto/16 :goto_1

    .line 59
    .line 60
    .line 61
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 62
    move-result-object v5

    .line 63
    .line 64
    if-nez v5, :cond_4

    .line 65
    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    :cond_4
    iget v6, p0, Lcom/narvii/widget/NVListView;->blPosition:I

    .line 69
    .line 70
    .line 71
    invoke-interface {v5}, Landroid/widget/Adapter;->getCount()I

    .line 72
    move-result v7

    .line 73
    .line 74
    if-lt v6, v7, :cond_5

    .line 75
    goto :goto_1

    .line 76
    .line 77
    :cond_5
    iget v6, p0, Lcom/narvii/widget/NVListView;->blPosition:I

    .line 78
    .line 79
    .line 80
    invoke-interface {v5, v6}, Landroid/widget/Adapter;->getItemId(I)J

    .line 81
    move-result-wide v5

    .line 82
    .line 83
    iget-wide v7, p0, Lcom/narvii/widget/NVListView;->blId:J

    .line 84
    .line 85
    cmp-long v5, v5, v7

    .line 86
    .line 87
    if-eqz v5, :cond_6

    .line 88
    goto :goto_1

    .line 89
    .line 90
    :cond_6
    iget v5, p0, Lcom/narvii/widget/NVListView;->blPosition:I

    .line 91
    sub-int/2addr v5, v0

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    if-nez v0, :cond_7

    .line 98
    goto :goto_1

    .line 99
    .line 100
    :cond_7
    iget-object v1, p0, Lcom/narvii/widget/NVListView;->blDrawable:Landroid/graphics/drawable/Drawable;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 104
    move-result v2

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 108
    move-result v5

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 112
    move-result v6

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 116
    move-result v0

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v2, v5, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 120
    .line 121
    iget v0, p0, Lcom/narvii/widget/NVListView;->blT1:I

    .line 122
    int-to-long v1, v0

    .line 123
    .line 124
    cmp-long v1, v3, v1

    .line 125
    .line 126
    const/high16 v2, 0x3f800000    # 1.0f

    .line 127
    .line 128
    if-gez v1, :cond_8

    .line 129
    long-to-float v1, v3

    .line 130
    mul-float/2addr v1, v2

    .line 131
    int-to-float v0, v0

    .line 132
    .line 133
    div-float v2, v1, v0

    .line 134
    goto :goto_0

    .line 135
    .line 136
    :cond_8
    iget v1, p0, Lcom/narvii/widget/NVListView;->blT2:I

    .line 137
    .line 138
    add-int v5, v0, v1

    .line 139
    int-to-long v5, v5

    .line 140
    .line 141
    cmp-long v5, v3, v5

    .line 142
    .line 143
    if-gez v5, :cond_9

    .line 144
    goto :goto_0

    .line 145
    :cond_9
    add-int/2addr v0, v1

    .line 146
    .line 147
    iget v1, p0, Lcom/narvii/widget/NVListView;->blT3:I

    .line 148
    add-int/2addr v0, v1

    .line 149
    int-to-long v5, v0

    .line 150
    sub-long/2addr v5, v3

    .line 151
    long-to-float v0, v5

    .line 152
    mul-float/2addr v0, v2

    .line 153
    int-to-float v1, v1

    .line 154
    .line 155
    div-float v2, v0, v1

    .line 156
    .line 157
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->blDrawable:Landroid/graphics/drawable/Drawable;

    .line 158
    .line 159
    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    .line 160
    .line 161
    if-eqz v1, :cond_a

    .line 162
    .line 163
    sget-object v1, Lcom/narvii/widget/NVListView;->STATE_PRESSED:[I

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 167
    .line 168
    :cond_a
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->blDrawable:Landroid/graphics/drawable/Drawable;

    .line 169
    .line 170
    const/high16 v1, 0x437f0000    # 255.0f

    .line 171
    mul-float/2addr v2, v1

    .line 172
    float-to-int v1, v2

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 176
    .line 177
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->blDrawable:Landroid/graphics/drawable/Drawable;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 184
    goto :goto_2

    .line 185
    .line 186
    :cond_b
    :goto_1
    iput-wide v1, p0, Lcom/narvii/widget/NVListView;->blStartTime:J

    .line 187
    .line 188
    .line 189
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 190
    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/NVListView;->shouldDispatchNestedScrollingEvents:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->a(FFZ)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/NVListView;->shouldDispatchNestedScrollingEvents:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->b(FF)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/NVListView;->shouldDispatchNestedScrollingEvents:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->c(II[I[I)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 7

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/NVListView;->shouldDispatchNestedScrollingEvents:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/widget/NVListView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 7
    move v2, p1

    .line 8
    move v3, p2

    .line 9
    move v4, p3

    .line 10
    move v5, p4

    .line 11
    move-object v6, p5

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {v1 .. v6}, Landroidx/core/view/NestedScrollingChildHelper;->f(IIII[I)Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/narvii/widget/NVListView;->onSwipeRefreshTouch(Landroid/view/MotionEvent;)V

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/widget/NVListView;->dispatchTouchEventEndListener:Lcom/narvii/widget/NVListView$DispatchTouchEventEndListener;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, p1}, Lcom/narvii/widget/NVListView$DispatchTouchEventEndListener;->onDispatchTouchEventEnd(Landroid/view/MotionEvent;)V

    .line 23
    :cond_1
    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/widget/NVListView;->overscrollStretchY:I

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-gez v1, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/widget/NVListView;->getOverscrollStretchView()Landroid/view/View;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    if-ne v1, p2, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 19
    move-result v3

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 23
    move-result v4

    .line 24
    .line 25
    sub-int v5, v3, v4

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 29
    move-result v6

    .line 30
    sub-int/2addr v5, v6

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    move-result-object v6

    .line 35
    .line 36
    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 37
    .line 38
    if-gez v6, :cond_0

    .line 39
    .line 40
    const-string v1, "overscroll stretch view must have a specific height"

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_0
    iget v7, p0, Lcom/narvii/widget/NVListView;->overscrollStretchY:I

    .line 47
    neg-int v7, v7

    .line 48
    add-int/2addr v6, v7

    .line 49
    .line 50
    const/high16 v7, 0x40000000    # 2.0f

    .line 51
    .line 52
    .line 53
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 54
    move-result v3

    .line 55
    .line 56
    .line 57
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 58
    move-result v7

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v3, v7}, Landroid/view/View;->measure(II)V

    .line 62
    .line 63
    iget v3, p0, Lcom/narvii/widget/NVListView;->overscrollStretchY:I

    .line 64
    add-int/2addr v6, v3

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v4, v3, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 68
    .line 69
    iput v2, p0, Lcom/narvii/widget/NVListView;->overscrollStretchY:I

    .line 70
    goto :goto_0

    .line 71
    .line 72
    :cond_1
    iget v1, p0, Lcom/narvii/widget/NVListView;->overscrollY:I

    .line 73
    .line 74
    if-gez v1, :cond_2

    .line 75
    .line 76
    if-lez v0, :cond_2

    .line 77
    .line 78
    iget-object v1, p0, Lcom/narvii/widget/NVListView;->topStretchDrawable:Landroid/graphics/drawable/Drawable;

    .line 79
    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    if-ne p2, v1, :cond_2

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 90
    move-result v1

    .line 91
    .line 92
    if-ltz v1, :cond_2

    .line 93
    .line 94
    iget-object v1, p0, Lcom/narvii/widget/NVListView;->topStretchDrawable:Landroid/graphics/drawable/Drawable;

    .line 95
    .line 96
    iget v3, p0, Lcom/narvii/widget/NVListView;->overscrollY:I

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 100
    move-result v4

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 104
    move-result v5

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 108
    .line 109
    iget-object v1, p0, Lcom/narvii/widget/NVListView;->topStretchDrawable:Landroid/graphics/drawable/Drawable;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 113
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 114
    .line 115
    if-lez v0, :cond_3

    .line 116
    .line 117
    iget-object v3, p0, Lcom/narvii/widget/NVListView;->bottomStretchDrawable:Landroid/graphics/drawable/Drawable;

    .line 118
    .line 119
    if-eqz v3, :cond_3

    .line 120
    sub-int/2addr v0, v1

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    if-ne p2, v0, :cond_3

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 130
    move-result v0

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 134
    move-result v3

    .line 135
    .line 136
    if-gt v0, v3, :cond_3

    .line 137
    .line 138
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->bottomStretchDrawable:Landroid/graphics/drawable/Drawable;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 142
    move-result v3

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 146
    move-result v4

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 150
    move-result v5

    .line 151
    .line 152
    iget v6, p0, Lcom/narvii/widget/NVListView;->overscrollY:I

    .line 153
    add-int/2addr v5, v6

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 157
    .line 158
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->bottomStretchDrawable:Landroid/graphics/drawable/Drawable;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 162
    .line 163
    :cond_3
    iget-boolean v0, p0, Lcom/narvii/widget/NVListView;->sectionHeaderEnabled:Z

    .line 164
    const/4 v3, -0x1

    .line 165
    .line 166
    if-eqz v0, :cond_4

    .line 167
    .line 168
    sget v0, Lcom/narvii/widget/NVListView;->SECTION_HEADER_TAG:I

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 172
    move-result-object v0

    .line 173
    .line 174
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 175
    .line 176
    if-ne v0, v4, :cond_4

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 180
    move-result v0

    .line 181
    .line 182
    if-gez v0, :cond_4

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 186
    move-result v0

    .line 187
    .line 188
    .line 189
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 190
    move-result v4

    .line 191
    sub-int/2addr v2, v4

    .line 192
    int-to-float v2, v2

    .line 193
    const/4 v4, 0x0

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 197
    goto :goto_1

    .line 198
    :cond_4
    move v0, v3

    .line 199
    .line 200
    .line 201
    :goto_1
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 202
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .line 204
    :catch_0
    if-eq v0, v3, :cond_5

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 208
    :cond_5
    return v1
.end method

.method protected drawListContentBackground(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->listContentBackground:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    if-lez v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 26
    move-result v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v0, v1

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 32
    move-result v2

    .line 33
    .line 34
    iget v3, p0, Lcom/narvii/widget/NVListView;->overscrollY:I

    .line 35
    .line 36
    if-lez v3, :cond_2

    .line 37
    add-int/2addr v2, v3

    .line 38
    .line 39
    :cond_2
    iget-object v3, p0, Lcom/narvii/widget/NVListView;->listContentBackground:Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 43
    move-result v4

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v1, v0, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->listContentBackground:Landroid/graphics/drawable/Drawable;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 52
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

    iget v0, p0, Lcom/narvii/widget/NVListView;->footerPadding:I

    return v0
.end method

.method public getItemInAdapter(I)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method public getListContentBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/NVListView;->listContentBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollStretchView()Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    sget v1, Lcom/narvii/widget/NVListView;->OVERSCROLL_STRETCH_TAG:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 26
    .line 27
    if-ne v1, v2, :cond_0

    .line 28
    return-object v0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    return-object v0
.end method

.method public getTotalCountInAdapter()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->k()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->m()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/NVListView;->overscrollY:I

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/narvii/widget/NVListView;->isDown:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/widget/NVListView;->isScrollerFinished()Ljava/lang/Boolean;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/narvii/widget/NVListView;->startSpringback()V

    .line 20
    const/4 v0, 0x0

    .line 21
    .line 22
    iput v0, p0, Lcom/narvii/widget/NVListView;->overscrollY:I

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->clipOffsetRect:Landroid/graphics/Rect;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 30
    move-result v0

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/widget/NVListView;->clipOffsetRect:Landroid/graphics/Rect;

    .line 33
    .line 34
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 35
    add-int/2addr v0, v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 39
    move-result v1

    .line 40
    .line 41
    iget-object v2, p0, Lcom/narvii/widget/NVListView;->clipOffsetRect:Landroid/graphics/Rect;

    .line 42
    .line 43
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 44
    add-int/2addr v1, v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 48
    move-result v2

    .line 49
    .line 50
    iget-object v3, p0, Lcom/narvii/widget/NVListView;->clipOffsetRect:Landroid/graphics/Rect;

    .line 51
    .line 52
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 53
    sub-int/2addr v2, v3

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 57
    move-result v3

    .line 58
    .line 59
    iget-object v4, p0, Lcom/narvii/widget/NVListView;->clipOffsetRect:Landroid/graphics/Rect;

    .line 60
    .line 61
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 62
    sub-int/2addr v3, v4

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->drawListContentBackground(Landroid/graphics/Canvas;)V

    .line 72
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->interceptTouchEventListener:Lcom/narvii/widget/NVListView$InterceptTouchEventListener;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/narvii/widget/NVListView$InterceptTouchEventListener;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    return v1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/narvii/widget/NVListView;->isDown:Z

    .line 21
    return v1

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/narvii/widget/NVListView;->resetScrollCompat(Landroid/view/MotionEvent;)V

    .line 33
    .line 34
    sget-object p1, Lcom/narvii/widget/NVListView;->fTouchMode:Ljava/lang/reflect/Field;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 38
    move-result p1

    .line 39
    const/4 v0, -0x1

    .line 40
    .line 41
    if-ne p1, v0, :cond_3

    .line 42
    .line 43
    sget-object p1, Lcom/narvii/widget/NVListView;->fTouchMode:Ljava/lang/reflect/Field;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :catch_0
    :cond_3
    :goto_0
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 4
    .line 5
    iget p1, p0, Lcom/narvii/widget/NVListView;->overscrollY:I

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->_scrollListBy(I)V

    .line 11
    const/4 p1, 0x0

    .line 12
    .line 13
    iput p1, p0, Lcom/narvii/widget/NVListView;->overscrollY:I

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/NVListView;->layoutListener:Lcom/narvii/widget/NVListView$OnLayoutListener;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, p0}, Lcom/narvii/widget/NVListView$OnLayoutListener;->onLayout(Lcom/narvii/widget/NVListView;)V

    .line 21
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/widget/NVListView;->tListPadding:Landroid/graphics/Rect;

    .line 6
    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/widget/NVListView;->headerPadding:Ljava/lang/Object;

    .line 10
    .line 11
    instance-of p2, p1, Ljava/lang/Integer;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    check-cast p1, Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 19
    move-result p1

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    instance-of p2, p1, Lcom/narvii/widget/NVListView$ListPaddingProvider;

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    check-cast p1, Lcom/narvii/widget/NVListView$ListPaddingProvider;

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, p0}, Lcom/narvii/widget/NVListView$ListPaddingProvider;->getPadding(Lcom/narvii/widget/NVListView;)I

    .line 30
    move-result p1

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 38
    move-result p1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 p1, 0x0

    .line 41
    .line 42
    :goto_0
    if-eqz p1, :cond_2

    .line 43
    .line 44
    iget-object p2, p0, Lcom/narvii/widget/NVListView;->tListPadding:Landroid/graphics/Rect;

    .line 45
    .line 46
    iput p1, p2, Landroid/graphics/Rect;->top:I

    .line 47
    :cond_2
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3

    .line 1
    .line 2
    iput p2, p0, Lcom/narvii/widget/NVListView;->overscrollStretchY:I

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/widget/NVListView;->overscrollY:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/widget/NVListView;->overlayTouchCancel()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/widget/NVListView;->onSwipeRefreshOverscroll(I)V

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/narvii/widget/NVListView;->blockLayout:Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/widget/NVListView;->getOverscrollStretchView()Landroid/view/View;

    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    if-gez p2, :cond_0

    .line 22
    const/4 v1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v1, v2

    .line 25
    .line 26
    :goto_0
    iput-boolean v1, p0, Lcom/narvii/widget/NVListView;->blockLayout:Z

    .line 27
    .line 28
    .line 29
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onOverScrolled(IIZZ)V

    .line 30
    .line 31
    iget-boolean p1, p0, Lcom/narvii/widget/NVListView;->blockLayout:Z

    .line 32
    .line 33
    if-nez p1, :cond_3

    .line 34
    .line 35
    iget-boolean p1, p0, Lcom/narvii/widget/NVListView;->pendingLayout:Z

    .line 36
    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    :cond_1
    iput-boolean v2, p0, Lcom/narvii/widget/NVListView;->pendingLayout:Z

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/widget/NVListView;->postRequestLayout:Ljava/lang/Runnable;

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    sget-object p2, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    :cond_2
    new-instance p1, Lcom/narvii/widget/NVListView$2;

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, p0}, Lcom/narvii/widget/NVListView$2;-><init>(Lcom/narvii/widget/NVListView;)V

    .line 56
    .line 57
    iput-object p1, p0, Lcom/narvii/widget/NVListView;->postRequestLayout:Ljava/lang/Runnable;

    .line 58
    .line 59
    const-wide/16 p2, 0x3c

    .line 60
    .line 61
    .line 62
    invoke-static {p1, p2, p3}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 63
    .line 64
    :cond_3
    iget-object p1, p0, Lcom/narvii/widget/NVListView;->overscrollListener:Lcom/narvii/widget/NVListView$OnOverscrollListener;

    .line 65
    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    iget p2, p0, Lcom/narvii/widget/NVListView;->overscrollY:I

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, p0, p2}, Lcom/narvii/widget/NVListView$OnOverscrollListener;->onOverscroll(Lcom/narvii/widget/NVListView;I)V

    .line 72
    .line 73
    :cond_4
    iget-object p1, p0, Lcom/narvii/widget/NVListView;->overscrollListeners:Ljava/util/ArrayList;

    .line 74
    .line 75
    if-eqz p1, :cond_5

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    move-result p2

    .line 84
    .line 85
    if-eqz p2, :cond_5

    .line 86
    .line 87
    .line 88
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object p2

    .line 90
    .line 91
    check-cast p2, Lcom/narvii/widget/NVListView$OnOverscrollListener;

    .line 92
    .line 93
    iget p3, p0, Lcom/narvii/widget/NVListView;->overscrollY:I

    .line 94
    .line 95
    .line 96
    invoke-interface {p2, p0, p3}, Lcom/narvii/widget/NVListView$OnOverscrollListener;->onOverscroll(Lcom/narvii/widget/NVListView;I)V

    .line 97
    goto :goto_1

    .line 98
    :cond_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/Utils;->applyCompat()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/narvii/widget/NVListView;->onTouchEventCompat(Landroid/view/MotionEvent;)Z

    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x1

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    if-eq v1, v2, :cond_1

    .line 25
    const/4 v2, 0x3

    .line 26
    .line 27
    if-eq v1, v2, :cond_1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    .line 31
    iput-boolean v1, p0, Lcom/narvii/widget/NVListView;->isDown:Z

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :cond_2
    iput-boolean v2, p0, Lcom/narvii/widget/NVListView;->isDown:Z

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-direct {p0, p1}, Lcom/narvii/widget/NVListView;->overlayTouchEvent(Landroid/view/MotionEvent;)Z

    .line 38
    move-result p1

    .line 39
    or-int/2addr p1, v0

    .line 40
    return p1
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/ListView;->onWindowVisibilityChanged(I)V

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    const/4 v1, 0x2

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lcom/narvii/widget/NVListView;->spState:I

    .line 11
    const/4 v2, 0x1

    .line 12
    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 17
    move-result-wide v2

    .line 18
    .line 19
    iget-wide v4, p0, Lcom/narvii/widget/NVListView;->spTime:J

    .line 20
    .line 21
    cmp-long v0, v2, v4

    .line 22
    .line 23
    if-ltz v0, :cond_0

    .line 24
    .line 25
    const-wide/16 v6, 0xc8

    .line 26
    add-long/2addr v4, v6

    .line 27
    .line 28
    cmp-long v0, v2, v4

    .line 29
    .line 30
    if-gez v0, :cond_0

    .line 31
    .line 32
    iput v1, p0, Lcom/narvii/widget/NVListView;->spState:I

    .line 33
    .line 34
    :cond_0
    if-nez p1, :cond_4

    .line 35
    .line 36
    iget p1, p0, Lcom/narvii/widget/NVListView;->spState:I

    .line 37
    .line 38
    if-ne p1, v1, :cond_4

    .line 39
    .line 40
    .line 41
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 42
    move-result p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 46
    move-result v0

    .line 47
    .line 48
    iget v1, p0, Lcom/narvii/widget/NVListView;->spPosition:I

    .line 49
    .line 50
    if-lt v1, p1, :cond_4

    .line 51
    .line 52
    if-le v1, v0, :cond_1

    .line 53
    goto :goto_0

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    iget v0, p0, Lcom/narvii/widget/NVListView;->spPosition:I

    .line 60
    .line 61
    .line 62
    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    .line 63
    move-result v1

    .line 64
    .line 65
    if-lt v0, v1, :cond_2

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_2
    iget v0, p0, Lcom/narvii/widget/NVListView;->spPosition:I

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, v0}, Landroid/widget/Adapter;->getItemId(I)J

    .line 72
    move-result-wide v0

    .line 73
    .line 74
    iget-wide v2, p0, Lcom/narvii/widget/NVListView;->spId:J

    .line 75
    .line 76
    cmp-long p1, v0, v2

    .line 77
    .line 78
    if-eqz p1, :cond_3

    .line 79
    goto :goto_0

    .line 80
    .line 81
    :cond_3
    iget p1, p0, Lcom/narvii/widget/NVListView;->spPosition:I

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->startBlinkShort(I)V

    .line 85
    const/4 p1, 0x3

    .line 86
    .line 87
    iput p1, p0, Lcom/narvii/widget/NVListView;->spState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :catch_0
    :cond_4
    :goto_0
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/NVListView;->changed:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 p1, 0x1

    .line 6
    return p1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-super/range {p0 .. p9}, Landroid/widget/ListView;->overScrollBy(IIIIIIIIZ)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    const/4 p1, 0x1

    .line 9
    .line 10
    iput p1, p0, Lcom/narvii/widget/NVListView;->spState:I

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v1

    .line 15
    .line 16
    iput-wide v1, p0, Lcom/narvii/widget/NVListView;->spTime:J

    .line 17
    .line 18
    iput p2, p0, Lcom/narvii/widget/NVListView;->spPosition:I

    .line 19
    .line 20
    iput-wide p3, p0, Lcom/narvii/widget/NVListView;->spId:J

    .line 21
    .line 22
    const/16 p3, 0xc8

    .line 23
    .line 24
    const/16 p4, 0x64

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p2, v0, p3, p4}, Lcom/narvii/widget/NVListView;->startBlink(IIII)V

    .line 28
    return p1

    .line 29
    :cond_0
    return v0
.end method

.method public removeOnOverscrollListener(Lcom/narvii/widget/NVListView$OnOverscrollListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->overscrollListeners:Ljava/util/ArrayList;

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

.method public removeOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->scrollListeners:Ljava/util/ArrayList;

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

.method public removeOnVideoListScrollListener(Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/narvii/widget/NVListView;->videoListScrollListener:Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/widget/NVListView;->videoListDelegateScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->removeOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 9
    return-void
.end method

.method public requestLayout()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/NVListView;->blockLayout:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/narvii/widget/NVListView;->pendingLayout:Z

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->postRequestLayout:Ljava/lang/Runnable;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 21
    :goto_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/widget/NVListView;->adapter:Landroid/widget/ListAdapter;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/widget/NVListView;->observer:Landroid/database/DataSetObserver;

    .line 2
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iput-object p1, p0, Lcom/narvii/widget/NVListView;->adapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/narvii/widget/NVListView;->observer:Landroid/database/DataSetObserver;

    .line 4
    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    return-void
.end method

.method public setBlinkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/NVListView;->blDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setClipOffsetRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/NVListView;->clipOffsetRect:Landroid/graphics/Rect;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public setDispatchTouchEventEndListener(Lcom/narvii/widget/NVListView$DispatchTouchEventEndListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/NVListView;->dispatchTouchEventEndListener:Lcom/narvii/widget/NVListView$DispatchTouchEventEndListener;

    return-void
.end method

.method public setFooterPadding(I)V
    .locals 3

    .line 1
    .line 2
    const/high16 v0, 0x2000000

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 13
    move-result v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 17
    move-result v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 21
    move-result v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 25
    .line 26
    iput p1, p0, Lcom/narvii/widget/NVListView;->footerPadding:I

    .line 27
    return-void
.end method

.method public setHeaderOverlay(Lcom/narvii/widget/NVListOverlay;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/NVListView;->overlay:Lcom/narvii/widget/NVListOverlay;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->addOnOverscrollListener(Lcom/narvii/widget/NVListView$OnOverscrollListener;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->setOnLayoutListener(Lcom/narvii/widget/NVListView$OnLayoutListener;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->setHeaderPadding(Lcom/narvii/widget/NVListView$ListPaddingProvider;)V

    .line 17
    const/4 v0, 0x1

    .line 18
    .line 19
    iput-boolean v0, p1, Lcom/narvii/widget/NVListOverlay;->attached:Z

    .line 20
    :cond_0
    return-void
.end method

.method public setHeaderPadding(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/narvii/widget/NVListView;->ensureListPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/NVListView;->headerPadding:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/narvii/widget/NVListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setHeaderPadding(Lcom/narvii/widget/NVListView$ListPaddingProvider;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/narvii/widget/NVListView;->ensureListPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/narvii/widget/NVListView;->headerPadding:Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/narvii/widget/NVListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setInterceptTouchEventListener(Lcom/narvii/widget/NVListView$InterceptTouchEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/NVListView;->interceptTouchEventListener:Lcom/narvii/widget/NVListView$InterceptTouchEventListener;

    return-void
.end method

.method public setIsNestedScrollingChild(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/widget/NVListView;->shouldDispatchNestedScrollingEvents:Z

    return-void
.end method

.method public setListContentBackground(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->setListContentBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setListContentBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/NVListView;->listContentBackground:Landroid/graphics/drawable/Drawable;

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setListContentBackgroundColor(I)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 10
    move-object p1, v0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->setListContentBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->n(Z)V

    .line 6
    return-void
.end method

.method public setOnLayoutListener(Lcom/narvii/widget/NVListView$OnLayoutListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/NVListView;->layoutListener:Lcom/narvii/widget/NVListView$OnLayoutListener;

    return-void
.end method

.method public setOnOverscrollListener(Lcom/narvii/widget/NVListView$OnOverscrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/NVListView;->overscrollListener:Lcom/narvii/widget/NVListView$OnOverscrollListener;

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/NVListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method protected setOverflingDistance(I)V
    .locals 1

    .line 1
    .line 2
    :try_start_0
    sget-object v0, Lcom/narvii/widget/NVListView;->fOverflingDistance:Ljava/lang/reflect/Field;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    return-void
.end method

.method public setOverscrollDistance(I)V
    .locals 1

    .line 1
    .line 2
    :try_start_0
    sget-object v0, Lcom/narvii/widget/NVListView;->fOverscrollDistance:Ljava/lang/reflect/Field;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    return-void
.end method

.method public setOverscrollStretchFooter(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/narvii/widget/NVListView;->bottomStretchDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOverscrollStretchFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/NVListView;->bottomStretchDrawable:Landroid/graphics/drawable/Drawable;

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOverscrollStretchHeader(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/narvii/widget/NVListView;->topStretchDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOverscrollStretchHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/NVListView;->topStretchDrawable:Landroid/graphics/drawable/Drawable;

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSectionHeaderEnabled(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/NVListView;->sectionHeaderEnabled:Z

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/widget/NVListView;->sectionHeaderEnabled:Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 13
    :cond_0
    return-void
.end method

.method public spOnPause()V
    .locals 6

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/NVListView;->spState:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    move-result-wide v0

    .line 10
    .line 11
    iget-wide v2, p0, Lcom/narvii/widget/NVListView;->spTime:J

    .line 12
    .line 13
    cmp-long v4, v0, v2

    .line 14
    .line 15
    if-ltz v4, :cond_0

    .line 16
    .line 17
    const-wide/16 v4, 0xc8

    .line 18
    add-long/2addr v2, v4

    .line 19
    .line 20
    cmp-long v0, v0, v2

    .line 21
    .line 22
    if-gez v0, :cond_0

    .line 23
    const/4 v0, 0x2

    .line 24
    .line 25
    iput v0, p0, Lcom/narvii/widget/NVListView;->spState:I

    .line 26
    :cond_0
    return-void
.end method

.method public startBlink(IIII)V
    .locals 2

    iput p1, p0, Lcom/narvii/widget/NVListView;->blPosition:I

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/narvii/widget/NVListView;->blId:J

    .line 3
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/widget/NVListView;->blStartTime:J

    iput p2, p0, Lcom/narvii/widget/NVListView;->blT1:I

    iput p3, p0, Lcom/narvii/widget/NVListView;->blT2:I

    iput p4, p0, Lcom/narvii/widget/NVListView;->blT3:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public startBlink(Landroid/view/View;III)V
    .locals 4

    .line 5
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 7
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_1

    add-int/2addr v2, v0

    .line 8
    invoke-virtual {p0, v2, p2, p3, p4}, Lcom/narvii/widget/NVListView;->startBlink(IIII)V

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public startBlinkLong(I)V
    .locals 3

    const/16 v0, 0x12c

    const/16 v1, 0x320

    const/16 v2, 0xc8

    .line 1
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/narvii/widget/NVListView;->startBlink(IIII)V

    return-void
.end method

.method public startBlinkLong(Landroid/view/View;)V
    .locals 3

    const/16 v0, 0x12c

    const/16 v1, 0x320

    const/16 v2, 0xc8

    .line 2
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/narvii/widget/NVListView;->startBlink(Landroid/view/View;III)V

    return-void
.end method

.method public startBlinkShort(I)V
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0xc8

    .line 3
    .line 4
    const/16 v1, 0x190

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/narvii/widget/NVListView;->startBlink(IIII)V

    .line 9
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->p(I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVListView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->r()V

    .line 6
    return-void
.end method
