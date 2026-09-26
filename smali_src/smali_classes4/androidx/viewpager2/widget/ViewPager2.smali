.class public final Landroidx/viewpager2/widget/ViewPager2;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager2/widget/ViewPager2$DataSetChangeObserver;,
        Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;,
        Landroidx/viewpager2/widget/ViewPager2$BasicAccessibilityProvider;,
        Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;,
        Landroidx/viewpager2/widget/ViewPager2$PageTransformer;,
        Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;,
        Landroidx/viewpager2/widget/ViewPager2$SmoothScrollToPosition;,
        Landroidx/viewpager2/widget/ViewPager2$PagerSnapHelperImpl;,
        Landroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;,
        Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;,
        Landroidx/viewpager2/widget/ViewPager2$SavedState;,
        Landroidx/viewpager2/widget/ViewPager2$OffscreenPageLimit;,
        Landroidx/viewpager2/widget/ViewPager2$ScrollState;,
        Landroidx/viewpager2/widget/ViewPager2$Orientation;
    }
.end annotation


# static fields
.field private static final EMPTY_INSETS:Landroidx/core/view/WindowInsetsCompat;

.field public static final OFFSCREEN_PAGE_LIMIT_DEFAULT:I = -0x1

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field static sFeatureEnhancedA11yEnabled:Z = true


# instance fields
.field mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

.field mCurrentItem:I

.field private mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field mCurrentItemDirty:Z

.field private mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

.field private mFakeDragger:Landroidx/viewpager2/widget/FakeDrag;

.field mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mOffscreenPageLimit:I

.field private mPageChangeEventDispatcher:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

.field private mPageTransformerAdapter:Landroidx/viewpager2/widget/PageTransformerAdapter;

.field private mPagerSnapHelper:Landroidx/recyclerview/widget/PagerSnapHelper;

.field private mPendingAdapterState:Landroid/os/Parcelable;

.field private mPendingCurrentItem:I

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

.field private mSavedItemAnimatorPresent:Z

.field mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

.field private final mTmpChildRect:Landroid/graphics/Rect;

.field private final mTmpContainerRect:Landroid/graphics/Rect;

.field private mUserInputEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Builder;->a()Landroidx/core/view/WindowInsetsCompat;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sput-object v0, Landroidx/viewpager2/widget/ViewPager2;->EMPTY_INSETS:Landroidx/core/view/WindowInsetsCompat;

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;-><init>(I)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    .line 5
    new-instance v1, Landroidx/viewpager2/widget/ViewPager2$1;

    invoke-direct {v1, p0}, Landroidx/viewpager2/widget/ViewPager2$1;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    const/4 v1, -0x1

    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    .line 6
    invoke-direct {p0, p1, v2}, Landroidx/viewpager2/widget/ViewPager2;->c(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    .line 10
    new-instance v0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;-><init>(I)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    .line 11
    new-instance v1, Landroidx/viewpager2/widget/ViewPager2$1;

    invoke-direct {v1, p0}, Landroidx/viewpager2/widget/ViewPager2$1;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    const/4 v1, -0x1

    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    .line 12
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->c(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 15
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    .line 16
    new-instance p3, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    const/4 v0, 0x3

    invoke-direct {p3, v0}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;-><init>(I)V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    const/4 p3, 0x0

    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    .line 17
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$1;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$1;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    const/4 p3, 0x1

    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    .line 18
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->c(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 20
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 21
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    .line 22
    new-instance p3, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    const/4 p4, 0x3

    invoke-direct {p3, p4}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;-><init>(I)V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    const/4 p3, 0x0

    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    .line 23
    new-instance p4, Landroidx/viewpager2/widget/ViewPager2$1;

    invoke-direct {p4, p0}, Landroidx/viewpager2/widget/ViewPager2$1;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object p4, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    const/4 p4, -0x1

    iput p4, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    const/4 p3, 0x1

    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    iput p4, p0, Landroidx/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    .line 24
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->c(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/viewpager2/widget/ViewPager2;->EMPTY_INSETS:Landroidx/core/view/WindowInsetsCompat;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->x()Landroid/view/WindowInsets;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->x()Landroid/view/WindowInsets;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method private b()Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$4;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$4;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 6
    return-object v0
.end method

.method private c(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    .line 2
    sget-boolean v0, Landroidx/viewpager2/widget/ViewPager2;->sFeatureEnhancedA11yEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$BasicAccessibilityProvider;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$BasicAccessibilityProvider;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 16
    .line 17
    :goto_0
    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    .line 18
    .line 19
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroid/content/Context;)V

    .line 23
    .line 24
    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroidx/core/view/ViewCompat;->m()I

    .line 28
    move-result v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 34
    .line 35
    const/high16 v1, 0x20000

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 39
    .line 40
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, p0, p1}, Landroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroid/content/Context;)V

    .line 44
    .line 45
    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 46
    .line 47
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 53
    const/4 v1, 0x1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollingTouchSlop(I)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->m(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    .line 61
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    .line 63
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    .line 64
    const/4 v0, -0x1

    .line 65
    .line 66
    .line 67
    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .line 72
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2;->b()Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    .line 76
    move-result-object p2

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 80
    .line 81
    new-instance p1, Landroidx/viewpager2/widget/ScrollEventAdapter;

    .line 82
    .line 83
    .line 84
    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 85
    .line 86
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    .line 87
    .line 88
    new-instance p2, Landroidx/viewpager2/widget/FakeDrag;

    .line 89
    .line 90
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    .line 92
    .line 93
    invoke-direct {p2, p0, p1, v0}, Landroidx/viewpager2/widget/FakeDrag;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroidx/viewpager2/widget/ScrollEventAdapter;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 94
    .line 95
    iput-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mFakeDragger:Landroidx/viewpager2/widget/FakeDrag;

    .line 96
    .line 97
    new-instance p1, Landroidx/viewpager2/widget/ViewPager2$PagerSnapHelperImpl;

    .line 98
    .line 99
    .line 100
    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/ViewPager2$PagerSnapHelperImpl;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 101
    .line 102
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPagerSnapHelper:Landroidx/recyclerview/widget/PagerSnapHelper;

    .line 103
    .line 104
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/SnapHelper;->b(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 108
    .line 109
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 110
    .line 111
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 115
    .line 116
    new-instance p1, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    .line 117
    const/4 p2, 0x3

    .line 118
    .line 119
    .line 120
    invoke-direct {p1, p2}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;-><init>(I)V

    .line 121
    .line 122
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    .line 123
    .line 124
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, p1}, Landroidx/viewpager2/widget/ScrollEventAdapter;->m(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 128
    .line 129
    new-instance p1, Landroidx/viewpager2/widget/ViewPager2$2;

    .line 130
    .line 131
    .line 132
    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/ViewPager2$2;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 133
    .line 134
    new-instance p2, Landroidx/viewpager2/widget/ViewPager2$3;

    .line 135
    .line 136
    .line 137
    invoke-direct {p2, p0}, Landroidx/viewpager2/widget/ViewPager2$3;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 138
    .line 139
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->d(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 143
    .line 144
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->d(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 148
    .line 149
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    .line 150
    .line 151
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    .line 152
    .line 153
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, p2, v0}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->h(Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 157
    .line 158
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    .line 159
    .line 160
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->d(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 164
    .line 165
    new-instance p1, Landroidx/viewpager2/widget/PageTransformerAdapter;

    .line 166
    .line 167
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 168
    .line 169
    .line 170
    invoke-direct {p1, p2}, Landroidx/viewpager2/widget/PageTransformerAdapter;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    .line 171
    .line 172
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageTransformerAdapter:Landroidx/viewpager2/widget/PageTransformerAdapter;

    .line 173
    .line 174
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2, p1}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->d(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 178
    .line 179
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 180
    const/4 p2, 0x0

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 184
    move-result-object v0

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 188
    return-void
.end method

.method private g(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 8
    :cond_0
    return-void
.end method

.method private j()V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    return-void

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    return-void

    .line 14
    .line 15
    :cond_1
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingAdapterState:Landroid/os/Parcelable;

    .line 16
    .line 17
    if-eqz v2, :cond_3

    .line 18
    .line 19
    instance-of v3, v0, Landroidx/viewpager2/adapter/StatefulAdapter;

    .line 20
    .line 21
    if-eqz v3, :cond_2

    .line 22
    move-object v3, v0

    .line 23
    .line 24
    check-cast v3, Landroidx/viewpager2/adapter/StatefulAdapter;

    .line 25
    .line 26
    .line 27
    invoke-interface {v3, v2}, Landroidx/viewpager2/adapter/StatefulAdapter;->f(Landroid/os/Parcelable;)V

    .line 28
    :cond_2
    const/4 v2, 0x0

    .line 29
    .line 30
    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingAdapterState:Landroid/os/Parcelable;

    .line 31
    .line 32
    :cond_3
    iget v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 36
    move-result v0

    .line 37
    .line 38
    add-int/lit8 v0, v0, -0x1

    .line 39
    .line 40
    .line 41
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 42
    move-result v0

    .line 43
    const/4 v2, 0x0

    .line 44
    .line 45
    .line 46
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 47
    move-result v0

    .line 48
    .line 49
    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    .line 50
    .line 51
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    .line 52
    .line 53
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 57
    .line 58
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->n()V

    .line 62
    return-void
.end method

.method private m(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 1
    .line 2
    sget-object v2, Landroidx/viewpager2/R$styleable;->ViewPager2:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    move-result-object v7

    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v6, 0x0

    .line 9
    move-object v0, p0

    .line 10
    move-object v1, p1

    .line 11
    move-object v3, p2

    .line 12
    move-object v4, v7

    .line 13
    .line 14
    .line 15
    invoke-static/range {v0 .. v6}, Landroidx/core/view/ViewCompat;->s0(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 16
    .line 17
    :try_start_0
    sget p1, Landroidx/viewpager2/R$styleable;->ViewPager2_android_orientation:I

    .line 18
    const/4 p2, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v7, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 22
    move-result p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    throw p1
.end method

.method private n(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public canScrollVertically(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public d()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mFakeDragger:Landroidx/viewpager2/widget/FakeDrag;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/viewpager2/widget/FakeDrag;->a()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Landroid/os/Parcelable;

    .line 11
    .line 12
    instance-of v1, v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    .line 17
    .line 18
    iget v0, v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mRecyclerViewId:I

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    check-cast v2, Landroid/os/Parcelable;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2;->j()V

    .line 43
    return-void
.end method

.method e()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    return v1
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->a()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->g()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getAccessibilityClassName()Ljava/lang/CharSequence;

    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    return v0
.end method

.method public getItemDecorationCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method getPageSize()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    .line 6
    move-result v1

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 16
    move-result v2

    .line 17
    sub-int/2addr v1, v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 21
    move-result v0

    .line 22
    :goto_0
    sub-int/2addr v1, v0

    .line 23
    goto :goto_1

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 27
    move-result v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 31
    move-result v2

    .line 32
    sub-int/2addr v1, v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 36
    move-result v0

    .line 37
    goto :goto_0

    .line 38
    :goto_1
    return v1
.end method

.method public getScrollState()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->f()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public h(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V
    .locals 1
    .param p1    # Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->d(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 6
    return-void
.end method

.method public i()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageTransformerAdapter:Landroidx/viewpager2/widget/PageTransformerAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/viewpager2/widget/PageTransformerAdapter;->d()Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->e()D

    .line 15
    move-result-wide v0

    .line 16
    double-to-int v2, v0

    .line 17
    int-to-double v3, v2

    .line 18
    sub-double/2addr v0, v3

    .line 19
    double-to-float v0, v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPageSize()I

    .line 23
    move-result v1

    .line 24
    int-to-float v1, v1

    .line 25
    mul-float/2addr v1, v0

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 29
    move-result v1

    .line 30
    .line 31
    iget-object v3, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageTransformerAdapter:Landroidx/viewpager2/widget/PageTransformerAdapter;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v2, v0, v1}, Landroidx/viewpager2/widget/PageTransformerAdapter;->b(IFI)V

    .line 35
    return-void
.end method

.method public k(IZ)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->d()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->l(IZ)V

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string p2, "Cannot change current item when ViewPager2 is fake dragging"

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p1
.end method

.method l(IZ)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    .line 10
    const/4 v0, -0x1

    .line 11
    .line 12
    if-eq p2, v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 16
    move-result p1

    .line 17
    .line 18
    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    .line 19
    :cond_0
    return-void

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 23
    move-result v2

    .line 24
    .line 25
    if-gtz v2, :cond_2

    .line 26
    return-void

    .line 27
    .line 28
    .line 29
    :cond_2
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 30
    move-result p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 34
    move-result v0

    .line 35
    .line 36
    add-int/lit8 v0, v0, -0x1

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 40
    move-result p1

    .line 41
    .line 42
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    .line 43
    .line 44
    if-ne p1, v0, :cond_3

    .line 45
    .line 46
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->h()Z

    .line 50
    move-result v0

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    return-void

    .line 54
    .line 55
    :cond_3
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    .line 56
    .line 57
    if-ne p1, v0, :cond_4

    .line 58
    .line 59
    if-eqz p2, :cond_4

    .line 60
    return-void

    .line 61
    :cond_4
    int-to-double v0, v0

    .line 62
    .line 63
    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    .line 64
    .line 65
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->r()V

    .line 69
    .line 70
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Landroidx/viewpager2/widget/ScrollEventAdapter;->h()Z

    .line 74
    move-result v2

    .line 75
    .line 76
    if-nez v2, :cond_5

    .line 77
    .line 78
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->e()D

    .line 82
    move-result-wide v0

    .line 83
    .line 84
    :cond_5
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, p1, p2}, Landroidx/viewpager2/widget/ScrollEventAdapter;->k(IZ)V

    .line 88
    .line 89
    if-nez p2, :cond_6

    .line 90
    .line 91
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 95
    return-void

    .line 96
    :cond_6
    int-to-double v2, p1

    .line 97
    .line 98
    sub-double v4, v2, v0

    .line 99
    .line 100
    .line 101
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    .line 102
    move-result-wide v4

    .line 103
    .line 104
    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    .line 105
    .line 106
    cmpl-double p2, v4, v6

    .line 107
    .line 108
    if-lez p2, :cond_8

    .line 109
    .line 110
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 111
    .line 112
    cmpl-double v0, v2, v0

    .line 113
    .line 114
    if-lez v0, :cond_7

    .line 115
    .line 116
    add-int/lit8 v0, p1, -0x3

    .line 117
    goto :goto_0

    .line 118
    .line 119
    :cond_7
    add-int/lit8 v0, p1, 0x3

    .line 120
    .line 121
    .line 122
    :goto_0
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 123
    .line 124
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 125
    .line 126
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$SmoothScrollToPosition;

    .line 127
    .line 128
    .line 129
    invoke-direct {v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2$SmoothScrollToPosition;-><init>(ILandroidx/recyclerview/widget/RecyclerView;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 133
    goto :goto_1

    .line 134
    .line 135
    :cond_8
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 139
    :goto_1
    return-void
.end method

.method public o(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V
    .locals 1
    .param p1    # Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->e(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 6
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5
    .param p1    # Landroid/view/WindowInsets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    return-object v0

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    :goto_0
    if-ge v2, v1, :cond_1

    .line 21
    .line 22
    iget-object v3, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    new-instance v4, Landroid/view/WindowInsets;

    .line 29
    .line 30
    .line 31
    invoke-direct {v4, v0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v4}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->a(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->i(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 9
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 6
    move-result p1

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 12
    move-result v0

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 18
    move-result v2

    .line 19
    .line 20
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 23
    sub-int/2addr p4, p2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 27
    move-result p2

    .line 28
    sub-int/2addr p4, p2

    .line 29
    .line 30
    iput p4, v1, Landroid/graphics/Rect;->right:I

    .line 31
    .line 32
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 36
    move-result p4

    .line 37
    .line 38
    iput p4, p2, Landroid/graphics/Rect;->top:I

    .line 39
    .line 40
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 41
    sub-int/2addr p5, p3

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 45
    move-result p3

    .line 46
    sub-int/2addr p5, p3

    .line 47
    .line 48
    iput p5, p2, Landroid/graphics/Rect;->bottom:I

    .line 49
    .line 50
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 51
    .line 52
    iget-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    .line 53
    .line 54
    .line 55
    const p4, 0x800033

    .line 56
    .line 57
    .line 58
    invoke-static {p4, p1, v0, p2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 59
    .line 60
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    .line 62
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    .line 63
    .line 64
    iget p3, p2, Landroid/graphics/Rect;->left:I

    .line 65
    .line 66
    iget p4, p2, Landroid/graphics/Rect;->top:I

    .line 67
    .line 68
    iget p5, p2, Landroid/graphics/Rect;->right:I

    .line 69
    .line 70
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/view/View;->layout(IIII)V

    .line 74
    .line 75
    iget-boolean p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    .line 76
    .line 77
    if-eqz p1, :cond_0

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->p()V

    .line 81
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 11
    move-result v0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 17
    move-result v1

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    .line 23
    move-result v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 27
    move-result v3

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 31
    move-result v4

    .line 32
    add-int/2addr v3, v4

    .line 33
    add-int/2addr v0, v3

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 37
    move-result v3

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 41
    move-result v4

    .line 42
    add-int/2addr v3, v4

    .line 43
    add-int/2addr v1, v3

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 47
    move-result v3

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 51
    move-result v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 55
    move-result v3

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 59
    move-result v1

    .line 60
    .line 61
    .line 62
    invoke-static {v0, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 63
    move-result p1

    .line 64
    .line 65
    shl-int/lit8 v0, v2, 0x10

    .line 66
    .line 67
    .line 68
    invoke-static {v1, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 69
    move-result p2

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 73
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    return-void

    .line 9
    .line 10
    :cond_0
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 18
    .line 19
    iget v0, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mCurrentItem:I

    .line 20
    .line 21
    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    .line 22
    .line 23
    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mAdapterState:Landroid/os/Parcelable;

    .line 24
    .line 25
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingAdapterState:Landroid/os/Parcelable;

    .line 26
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0}, Landroidx/viewpager2/widget/ViewPager2$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 15
    move-result v0

    .line 16
    .line 17
    iput v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mRecyclerViewId:I

    .line 18
    .line 19
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    .line 20
    const/4 v2, -0x1

    .line 21
    .line 22
    if-ne v0, v2, :cond_0

    .line 23
    .line 24
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    .line 25
    .line 26
    :cond_0
    iput v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mCurrentItem:I

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingAdapterState:Landroid/os/Parcelable;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iput-object v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mAdapterState:Landroid/os/Parcelable;

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    instance-of v2, v0, Landroidx/viewpager2/adapter/StatefulAdapter;

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    check-cast v0, Landroidx/viewpager2/adapter/StatefulAdapter;

    .line 46
    .line 47
    .line 48
    invoke-interface {v0}, Landroidx/viewpager2/adapter/StatefulAdapter;->a()Landroid/os/Parcelable;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    iput-object v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mAdapterState:Landroid/os/Parcelable;

    .line 52
    :cond_2
    :goto_0
    return-object v1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-class v1, Landroidx/viewpager2/widget/ViewPager2;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, " does not support direct child views"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p1
.end method

.method p()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPagerSnapHelper:Landroidx/recyclerview/widget/PagerSnapHelper;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/PagerSnapHelper;->h(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 19
    move-result v0

    .line 20
    .line 21
    iget v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    .line 22
    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getScrollState()I

    .line 27
    move-result v1

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->c(I)V

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    .line 37
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    .line 38
    return-void

    .line 39
    .line 40
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string v1, "Design assumption violated."

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    throw v0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->c(ILandroid/os/Bundle;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->m(ILandroid/os/Bundle;)Z

    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->f(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/ViewPager2;->n(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    const/4 v0, 0x0

    .line 21
    .line 22
    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2;->j()V

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->e(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->g(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 34
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->k(IZ)V

    .line 5
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->q()V

    .line 9
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ge p1, v0, :cond_1

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string v0, "Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0"

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p1

    .line 16
    .line 17
    :cond_1
    :goto_0
    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    .line 18
    .line 19
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 23
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->s()V

    .line 11
    return-void
.end method

.method public setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V
    .locals 3
    .param p1    # Landroidx/viewpager2/widget/ViewPager2$PageTransformer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    iput-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    iget-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    .line 32
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 36
    .line 37
    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 38
    const/4 v0, 0x0

    .line 39
    .line 40
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    .line 41
    .line 42
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageTransformerAdapter:Landroidx/viewpager2/widget/PageTransformerAdapter;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/viewpager2/widget/PageTransformerAdapter;->d()Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    if-ne p1, v0, :cond_3

    .line 49
    return-void

    .line 50
    .line 51
    :cond_3
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageTransformerAdapter:Landroidx/viewpager2/widget/PageTransformerAdapter;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/PageTransformerAdapter;->e(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->i()V

    .line 58
    return-void
.end method

.method public setUserInputEnabled(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->t()V

    .line 8
    return-void
.end method
