.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final GAP_HANDLING_LAZY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS:I = 0x2

.field public static final GAP_HANDLING_NONE:I = 0x0

.field public static final HORIZONTAL:I = 0x0

.field static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33333334f

.field private static final TAG:Ljava/lang/String; = "StaggeredGridLManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field private final mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

.field private final mCheckForGapsRunnable:Ljava/lang/Runnable;

.field private mFullSizeSpec:I

.field private mGapStrategy:I

.field private mLaidOutInvalidFullSpan:Z

.field private mLastLayoutFromEnd:Z

.field private mLastLayoutRTL:Z

.field private final mLayoutState:Landroidx/recyclerview/widget/LayoutState;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

.field private mOrientation:I

.field private mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mPrefetchDistances:[I

.field mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mRemainingSpans:Ljava/util/BitSet;

.field mReverseLayout:Z

.field mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field mShouldReverseLayout:Z

.field private mSizePerSpan:I

.field private mSmoothScrollbarEnabled:Z

.field private mSpanCount:I

.field mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 12
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 13
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    const/4 v0, 0x2

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 14
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    .line 15
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 16
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$1;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 17
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q(I)V

    .line 18
    new-instance p1, Landroidx/recyclerview/widget/LayoutState;

    invoke-direct {p1}, Landroidx/recyclerview/widget/LayoutState;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 19
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    const/4 v0, 0x2

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 5
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$1;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    .line 6
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    move-result-object p1

    .line 7
    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setOrientation(I)V

    .line 8
    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q(I)V

    .line 9
    iget-boolean p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    .line 10
    new-instance p1, Landroidx/recyclerview/widget/LayoutState;

    invoke-direct {p1}, Landroidx/recyclerview/widget/LayoutState;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 11
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k()V

    return-void
.end method

.method private A(Landroidx/recyclerview/widget/LayoutState;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    .locals 7

    .line 1
    .line 2
    iget v0, p1, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I(I)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 12
    sub-int/2addr v0, v1

    .line 13
    const/4 v2, -0x1

    .line 14
    move v3, v2

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 18
    const/4 v0, 0x0

    .line 19
    move v3, v1

    .line 20
    .line 21
    :goto_0
    iget p1, p1, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    .line 22
    const/4 v4, 0x0

    .line 23
    .line 24
    if-ne p1, v1, :cond_3

    .line 25
    .line 26
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->m()I

    .line 30
    move-result p1

    .line 31
    .line 32
    .line 33
    const v1, 0x7fffffff

    .line 34
    .line 35
    :goto_1
    if-eq v0, v2, :cond_2

    .line 36
    .line 37
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 38
    .line 39
    aget-object v5, v5, v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->n(I)I

    .line 43
    move-result v6

    .line 44
    .line 45
    if-ge v6, v1, :cond_1

    .line 46
    move-object v4, v5

    .line 47
    move v1, v6

    .line 48
    :cond_1
    add-int/2addr v0, v3

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    return-object v4

    .line 51
    .line 52
    :cond_3
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->i()I

    .line 56
    move-result p1

    .line 57
    .line 58
    const/high16 v1, -0x80000000

    .line 59
    .line 60
    :goto_2
    if-eq v0, v2, :cond_5

    .line 61
    .line 62
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 63
    .line 64
    aget-object v5, v5, v0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->r(I)I

    .line 68
    move-result v6

    .line 69
    .line 70
    if-le v6, v1, :cond_4

    .line 71
    move-object v4, v5

    .line 72
    move v1, v6

    .line 73
    :cond_4
    add-int/2addr v0, v3

    .line 74
    goto :goto_2

    .line 75
    :cond_5
    return-object v4
.end method

.method private C(III)V
    .locals 6

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v()I

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u()I

    .line 13
    move-result v0

    .line 14
    .line 15
    :goto_0
    const/16 v1, 0x8

    .line 16
    .line 17
    if-ne p3, v1, :cond_2

    .line 18
    .line 19
    if-ge p1, p2, :cond_1

    .line 20
    .line 21
    add-int/lit8 v2, p2, 0x1

    .line 22
    :goto_1
    move v3, p1

    .line 23
    goto :goto_2

    .line 24
    .line 25
    :cond_1
    add-int/lit8 v2, p1, 0x1

    .line 26
    move v3, p2

    .line 27
    goto :goto_2

    .line 28
    .line 29
    :cond_2
    add-int v2, p1, p2

    .line 30
    goto :goto_1

    .line 31
    .line 32
    :goto_2
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->h(I)I

    .line 36
    const/4 v4, 0x1

    .line 37
    .line 38
    if-eq p3, v4, :cond_5

    .line 39
    const/4 v5, 0x2

    .line 40
    .line 41
    if-eq p3, v5, :cond_4

    .line 42
    .line 43
    if-eq p3, v1, :cond_3

    .line 44
    goto :goto_3

    .line 45
    .line 46
    :cond_3
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3, p1, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->k(II)V

    .line 50
    .line 51
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->j(II)V

    .line 55
    goto :goto_3

    .line 56
    .line 57
    :cond_4
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->k(II)V

    .line 61
    goto :goto_3

    .line 62
    .line 63
    :cond_5
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->j(II)V

    .line 67
    .line 68
    :goto_3
    if-gt v2, v0, :cond_6

    .line 69
    return-void

    .line 70
    .line 71
    :cond_6
    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 72
    .line 73
    if-eqz p1, :cond_7

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u()I

    .line 77
    move-result p1

    .line 78
    goto :goto_4

    .line 79
    .line 80
    .line 81
    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v()I

    .line 82
    move-result p1

    .line 83
    .line 84
    :goto_4
    if-gt v3, p1, :cond_8

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 88
    :cond_8
    return-void
.end method

.method private F(Landroid/view/View;IIZ)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 12
    .line 13
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    .line 16
    .line 17
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 18
    add-int/2addr v1, v3

    .line 19
    .line 20
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 21
    .line 22
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 23
    add-int/2addr v3, v2

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p2, v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Y(III)I

    .line 27
    move-result p2

    .line 28
    .line 29
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 30
    .line 31
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    .line 32
    .line 33
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 34
    add-int/2addr v1, v3

    .line 35
    .line 36
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 37
    .line 38
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 39
    add-int/2addr v3, v2

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p3, v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Y(III)I

    .line 43
    move-result p3

    .line 44
    .line 45
    if-eqz p4, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->shouldReMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    .line 49
    move-result p4

    .line 50
    goto :goto_0

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    .line 54
    move-result p4

    .line 55
    .line 56
    :goto_0
    if-eqz p4, :cond_1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 60
    :cond_1
    return-void
.end method

.method private G(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;Z)V
    .locals 6

    .line 1
    .line 2
    iget-boolean v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 15
    move-result v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    .line 19
    move-result v3

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 23
    move-result v4

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 27
    move-result v5

    .line 28
    add-int/2addr v4, v5

    .line 29
    .line 30
    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 31
    .line 32
    .line 33
    invoke-static {v2, v3, v4, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 34
    move-result p2

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F(Landroid/view/View;IIZ)V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 42
    move-result v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    .line 46
    move-result v2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 50
    move-result v3

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 54
    move-result v4

    .line 55
    add-int/2addr v3, v4

    .line 56
    .line 57
    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v2, v3, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 61
    move-result p2

    .line 62
    .line 63
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F(Landroid/view/View;IIZ)V

    .line 67
    goto :goto_0

    .line 68
    .line 69
    :cond_1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 70
    const/4 v2, 0x0

    .line 71
    .line 72
    if-ne v0, v1, :cond_2

    .line 73
    .line 74
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    .line 78
    move-result v3

    .line 79
    .line 80
    iget v4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 81
    .line 82
    .line 83
    invoke-static {v0, v3, v2, v4, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 84
    move-result v0

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 88
    move-result v2

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    .line 92
    move-result v3

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 96
    move-result v4

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 100
    move-result v5

    .line 101
    add-int/2addr v4, v5

    .line 102
    .line 103
    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 104
    .line 105
    .line 106
    invoke-static {v2, v3, v4, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 107
    move-result p2

    .line 108
    .line 109
    .line 110
    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F(Landroid/view/View;IIZ)V

    .line 111
    goto :goto_0

    .line 112
    .line 113
    .line 114
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 115
    move-result v0

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    .line 119
    move-result v3

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 123
    move-result v4

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 127
    move-result v5

    .line 128
    add-int/2addr v4, v5

    .line 129
    .line 130
    iget v5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 131
    .line 132
    .line 133
    invoke-static {v0, v3, v4, v5, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 134
    move-result v0

    .line 135
    .line 136
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    .line 140
    move-result v3

    .line 141
    .line 142
    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 143
    .line 144
    .line 145
    invoke-static {v1, v3, v2, p2, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 146
    move-result p2

    .line 147
    .line 148
    .line 149
    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F(Landroid/view/View;IIZ)V

    .line 150
    :goto_0
    return-void
.end method

.method private H(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 5
    const/4 v2, -0x1

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 10
    .line 11
    if-eq v1, v2, :cond_1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->b()I

    .line 15
    move-result v1

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->c()V

    .line 24
    return-void

    .line 25
    .line 26
    :cond_1
    iget-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mValid:Z

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x1

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 33
    .line 34
    if-ne v1, v2, :cond_3

    .line 35
    .line 36
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move v1, v3

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    :goto_0
    move v1, v4

    .line 43
    .line 44
    :goto_1
    if-eqz v1, :cond_5

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->c()V

    .line 48
    .line 49
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 50
    .line 51
    if-eqz v5, :cond_4

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)V

    .line 55
    goto :goto_2

    .line 56
    .line 57
    .line 58
    :cond_4
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 59
    .line 60
    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 61
    .line 62
    iput-boolean v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 63
    .line 64
    .line 65
    :goto_2
    invoke-virtual {p0, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->U(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)V

    .line 66
    .line 67
    iput-boolean v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mValid:Z

    .line 68
    .line 69
    :cond_5
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 70
    .line 71
    if-nez v5, :cond_7

    .line 72
    .line 73
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 74
    .line 75
    if-ne v5, v2, :cond_7

    .line 76
    .line 77
    iget-boolean v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 78
    .line 79
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 80
    .line 81
    if-ne v5, v6, :cond_6

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 85
    move-result v5

    .line 86
    .line 87
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    .line 88
    .line 89
    if-eq v5, v6, :cond_7

    .line 90
    .line 91
    :cond_6
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->b()V

    .line 95
    .line 96
    iput-boolean v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    .line 97
    .line 98
    .line 99
    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 100
    move-result v5

    .line 101
    .line 102
    if-lez v5, :cond_e

    .line 103
    .line 104
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 105
    .line 106
    if-eqz v5, :cond_8

    .line 107
    .line 108
    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 109
    .line 110
    if-ge v5, v4, :cond_e

    .line 111
    .line 112
    :cond_8
    iget-boolean v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    .line 113
    .line 114
    if-eqz v5, :cond_a

    .line 115
    move v1, v3

    .line 116
    .line 117
    :goto_3
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 118
    .line 119
    if-ge v1, v5, :cond_e

    .line 120
    .line 121
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 122
    .line 123
    aget-object v5, v5, v1

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->e()V

    .line 127
    .line 128
    iget v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 129
    .line 130
    const/high16 v6, -0x80000000

    .line 131
    .line 132
    if-eq v5, v6, :cond_9

    .line 133
    .line 134
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 135
    .line 136
    aget-object v6, v6, v1

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->x(I)V

    .line 140
    .line 141
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 142
    goto :goto_3

    .line 143
    .line 144
    :cond_a
    if-nez v1, :cond_c

    .line 145
    .line 146
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 147
    .line 148
    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    .line 149
    .line 150
    if-nez v1, :cond_b

    .line 151
    goto :goto_5

    .line 152
    :cond_b
    move v1, v3

    .line 153
    .line 154
    :goto_4
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 155
    .line 156
    if-ge v1, v5, :cond_e

    .line 157
    .line 158
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 159
    .line 160
    aget-object v5, v5, v1

    .line 161
    .line 162
    .line 163
    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->e()V

    .line 164
    .line 165
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 166
    .line 167
    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    .line 168
    .line 169
    aget v6, v6, v1

    .line 170
    .line 171
    .line 172
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->x(I)V

    .line 173
    .line 174
    add-int/lit8 v1, v1, 0x1

    .line 175
    goto :goto_4

    .line 176
    :cond_c
    :goto_5
    move v1, v3

    .line 177
    .line 178
    :goto_6
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 179
    .line 180
    if-ge v1, v5, :cond_d

    .line 181
    .line 182
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 183
    .line 184
    aget-object v5, v5, v1

    .line 185
    .line 186
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 187
    .line 188
    iget v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 189
    .line 190
    .line 191
    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->b(ZI)V

    .line 192
    .line 193
    add-int/lit8 v1, v1, 0x1

    .line 194
    goto :goto_6

    .line 195
    .line 196
    :cond_d
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 197
    .line 198
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->d([Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;)V

    .line 202
    .line 203
    .line 204
    :cond_e
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 205
    .line 206
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 207
    .line 208
    iput-boolean v3, v1, Landroidx/recyclerview/widget/LayoutState;->mRecycle:Z

    .line 209
    .line 210
    iput-boolean v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 211
    .line 212
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->n()I

    .line 216
    move-result v1

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->W(I)V

    .line 220
    .line 221
    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 222
    .line 223
    .line 224
    invoke-direct {p0, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->V(ILandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 225
    .line 226
    iget-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 227
    .line 228
    if-eqz v1, :cond_f

    .line 229
    .line 230
    .line 231
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P(I)V

    .line 232
    .line 233
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 234
    .line 235
    .line 236
    invoke-direct {p0, p1, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 237
    .line 238
    .line 239
    invoke-direct {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P(I)V

    .line 240
    .line 241
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 242
    .line 243
    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 244
    .line 245
    iget v5, v1, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    .line 246
    add-int/2addr v2, v5

    .line 247
    .line 248
    iput v2, v1, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    .line 249
    .line 250
    .line 251
    invoke-direct {p0, p1, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 252
    goto :goto_7

    .line 253
    .line 254
    .line 255
    :cond_f
    invoke-direct {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P(I)V

    .line 256
    .line 257
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 258
    .line 259
    .line 260
    invoke-direct {p0, p1, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 261
    .line 262
    .line 263
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P(I)V

    .line 264
    .line 265
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 266
    .line 267
    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 268
    .line 269
    iget v5, v1, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    .line 270
    add-int/2addr v2, v5

    .line 271
    .line 272
    iput v2, v1, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    .line 273
    .line 274
    .line 275
    invoke-direct {p0, p1, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 276
    .line 277
    .line 278
    :goto_7
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 282
    move-result v1

    .line 283
    .line 284
    if-lez v1, :cond_11

    .line 285
    .line 286
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 287
    .line 288
    if-eqz v1, :cond_10

    .line 289
    .line 290
    .line 291
    invoke-direct {p0, p1, p2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    .line 292
    .line 293
    .line 294
    invoke-direct {p0, p1, p2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    .line 295
    goto :goto_8

    .line 296
    .line 297
    .line 298
    :cond_10
    invoke-direct {p0, p1, p2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    .line 299
    .line 300
    .line 301
    invoke-direct {p0, p1, p2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    .line 302
    .line 303
    :cond_11
    :goto_8
    if-eqz p3, :cond_13

    .line 304
    .line 305
    .line 306
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->e()Z

    .line 307
    move-result p3

    .line 308
    .line 309
    if-nez p3, :cond_13

    .line 310
    .line 311
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 312
    .line 313
    if-eqz p3, :cond_13

    .line 314
    .line 315
    .line 316
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 317
    move-result p3

    .line 318
    .line 319
    if-lez p3, :cond_13

    .line 320
    .line 321
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 322
    .line 323
    if-nez p3, :cond_12

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D()Landroid/view/View;

    .line 327
    move-result-object p3

    .line 328
    .line 329
    if-eqz p3, :cond_13

    .line 330
    .line 331
    :cond_12
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    .line 332
    .line 333
    .line 334
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 335
    .line 336
    .line 337
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g()Z

    .line 338
    move-result p3

    .line 339
    .line 340
    if-eqz p3, :cond_13

    .line 341
    goto :goto_9

    .line 342
    :cond_13
    move v4, v3

    .line 343
    .line 344
    .line 345
    :goto_9
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->e()Z

    .line 346
    move-result p3

    .line 347
    .line 348
    if-eqz p3, :cond_14

    .line 349
    .line 350
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 351
    .line 352
    .line 353
    invoke-virtual {p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->c()V

    .line 354
    .line 355
    :cond_14
    iget-boolean p3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 356
    .line 357
    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 358
    .line 359
    .line 360
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 361
    move-result p3

    .line 362
    .line 363
    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    .line 364
    .line 365
    if-eqz v4, :cond_15

    .line 366
    .line 367
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 368
    .line 369
    .line 370
    invoke-virtual {p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->c()V

    .line 371
    .line 372
    .line 373
    invoke-direct {p0, p1, p2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    .line 374
    :cond_15
    return-void
.end method

.method private I(I)Z
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    if-ne p1, v1, :cond_0

    .line 10
    move p1, v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move p1, v2

    .line 13
    .line 14
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 15
    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    move v2, v3

    .line 18
    :cond_1
    return v2

    .line 19
    .line 20
    :cond_2
    if-ne p1, v1, :cond_3

    .line 21
    move p1, v3

    .line 22
    goto :goto_1

    .line 23
    :cond_3
    move p1, v2

    .line 24
    .line 25
    :goto_1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 26
    .line 27
    if-ne p1, v0, :cond_4

    .line 28
    move p1, v3

    .line 29
    goto :goto_2

    .line 30
    :cond_4
    move p1, v2

    .line 31
    .line 32
    .line 33
    :goto_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-ne p1, v0, :cond_5

    .line 37
    move v2, v3

    .line 38
    :cond_5
    return v2
.end method

.method private K(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    :goto_0
    if-ltz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 9
    .line 10
    aget-object v1, v1, v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->w(Landroid/view/View;)V

    .line 14
    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method private L(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;)V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p2, Landroidx/recyclerview/widget/LayoutState;->mRecycle:Z

    .line 3
    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    iget-boolean v0, p2, Landroidx/recyclerview/widget/LayoutState;->mInfinite:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_2

    .line 10
    .line 11
    :cond_0
    iget v0, p2, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    .line 12
    const/4 v1, -0x1

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    iget v0, p2, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    iget p2, p2, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    .line 24
    goto :goto_2

    .line 25
    .line 26
    :cond_1
    iget p2, p2, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    .line 30
    goto :goto_2

    .line 31
    .line 32
    :cond_2
    iget v0, p2, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    .line 33
    .line 34
    if-ne v0, v1, :cond_4

    .line 35
    .line 36
    iget v0, p2, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x(I)I

    .line 40
    move-result v1

    .line 41
    sub-int/2addr v0, v1

    .line 42
    .line 43
    if-gez v0, :cond_3

    .line 44
    .line 45
    iget p2, p2, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_3
    iget v1, p2, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    .line 49
    .line 50
    iget p2, p2, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    .line 51
    .line 52
    .line 53
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 54
    move-result p2

    .line 55
    .line 56
    sub-int p2, v1, p2

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    .line 60
    goto :goto_2

    .line 61
    .line 62
    :cond_4
    iget v0, p2, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y(I)I

    .line 66
    move-result v0

    .line 67
    .line 68
    iget v1, p2, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    .line 69
    sub-int/2addr v0, v1

    .line 70
    .line 71
    if-gez v0, :cond_5

    .line 72
    .line 73
    iget p2, p2, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    .line 74
    goto :goto_1

    .line 75
    .line 76
    :cond_5
    iget v1, p2, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    .line 77
    .line 78
    iget p2, p2, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    .line 79
    .line 80
    .line 81
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 82
    move-result p2

    .line 83
    add-int/2addr p2, v1

    .line 84
    .line 85
    .line 86
    :goto_1
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    .line 87
    :cond_6
    :goto_2
    return-void
.end method

.method private M(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    .line 8
    :goto_0
    if-ltz v0, :cond_5

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/OrientationHelper;->g(Landroid/view/View;)I

    .line 18
    move-result v3

    .line 19
    .line 20
    if-lt v3, p2, :cond_5

    .line 21
    .line 22
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/OrientationHelper;->q(Landroid/view/View;)I

    .line 26
    move-result v3

    .line 27
    .line 28
    if-lt v3, p2, :cond_5

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    check-cast v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 35
    .line 36
    iget-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 37
    .line 38
    if-eqz v4, :cond_2

    .line 39
    const/4 v3, 0x0

    .line 40
    move v4, v3

    .line 41
    .line 42
    :goto_1
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 43
    .line 44
    if-ge v4, v5, :cond_1

    .line 45
    .line 46
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 47
    .line 48
    aget-object v5, v5, v4

    .line 49
    .line 50
    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 54
    move-result v5

    .line 55
    .line 56
    if-ne v5, v1, :cond_0

    .line 57
    return-void

    .line 58
    .line 59
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 60
    goto :goto_1

    .line 61
    .line 62
    :cond_1
    :goto_2
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 63
    .line 64
    if-ge v3, v4, :cond_4

    .line 65
    .line 66
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 67
    .line 68
    aget-object v4, v4, v3

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->u()V

    .line 72
    .line 73
    add-int/lit8 v3, v3, 0x1

    .line 74
    goto :goto_2

    .line 75
    .line 76
    :cond_2
    iget-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 77
    .line 78
    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 82
    move-result v4

    .line 83
    .line 84
    if-ne v4, v1, :cond_3

    .line 85
    return-void

    .line 86
    .line 87
    :cond_3
    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->u()V

    .line 91
    .line 92
    .line 93
    :cond_4
    invoke-virtual {p0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 94
    .line 95
    add-int/lit8 v0, v0, -0x1

    .line 96
    goto :goto_0

    .line 97
    :cond_5
    return-void
.end method

.method private N(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V
    .locals 5

    .line 1
    .line 2
    .line 3
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-lez v0, :cond_5

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/OrientationHelper;->d(Landroid/view/View;)I

    .line 17
    move-result v2

    .line 18
    .line 19
    if-gt v2, p2, :cond_5

    .line 20
    .line 21
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/OrientationHelper;->p(Landroid/view/View;)I

    .line 25
    move-result v2

    .line 26
    .line 27
    if-gt v2, p2, :cond_5

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 34
    .line 35
    iget-boolean v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 36
    const/4 v4, 0x1

    .line 37
    .line 38
    if-eqz v3, :cond_2

    .line 39
    move v2, v0

    .line 40
    .line 41
    :goto_1
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 42
    .line 43
    if-ge v2, v3, :cond_1

    .line 44
    .line 45
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 46
    .line 47
    aget-object v3, v3, v2

    .line 48
    .line 49
    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 53
    move-result v3

    .line 54
    .line 55
    if-ne v3, v4, :cond_0

    .line 56
    return-void

    .line 57
    .line 58
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_1
    :goto_2
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 62
    .line 63
    if-ge v0, v2, :cond_4

    .line 64
    .line 65
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 66
    .line 67
    aget-object v2, v2, v0

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->v()V

    .line 71
    .line 72
    add-int/lit8 v0, v0, 0x1

    .line 73
    goto :goto_2

    .line 74
    .line 75
    :cond_2
    iget-object v0, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 76
    .line 77
    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 81
    move-result v0

    .line 82
    .line 83
    if-ne v0, v4, :cond_3

    .line 84
    return-void

    .line 85
    .line 86
    :cond_3
    iget-object v0, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->v()V

    .line 90
    .line 91
    .line 92
    :cond_4
    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 93
    goto :goto_0

    .line 94
    :cond_5
    return-void
.end method

.method private O()V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->k()I

    .line 6
    move-result v0

    .line 7
    .line 8
    const/high16 v1, 0x40000000    # 2.0f

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v1

    .line 19
    .line 20
    :goto_0
    if-ge v3, v0, :cond_3

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 24
    move-result-object v4

    .line 25
    .line 26
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/OrientationHelper;->e(Landroid/view/View;)I

    .line 30
    move-result v5

    .line 31
    int-to-float v5, v5

    .line 32
    .line 33
    cmpg-float v6, v5, v2

    .line 34
    .line 35
    if-gez v6, :cond_1

    .line 36
    goto :goto_1

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 40
    move-result-object v4

    .line 41
    .line 42
    check-cast v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->f()Z

    .line 46
    move-result v4

    .line 47
    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    const/high16 v4, 0x3f800000    # 1.0f

    .line 51
    mul-float/2addr v5, v4

    .line 52
    .line 53
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 54
    int-to-float v4, v4

    .line 55
    div-float/2addr v5, v4

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    .line 59
    move-result v2

    .line 60
    .line 61
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_3
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 65
    .line 66
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 67
    int-to-float v4, v4

    .line 68
    mul-float/2addr v2, v4

    .line 69
    .line 70
    .line 71
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 72
    move-result v2

    .line 73
    .line 74
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Landroidx/recyclerview/widget/OrientationHelper;->k()I

    .line 78
    move-result v4

    .line 79
    .line 80
    const/high16 v5, -0x80000000

    .line 81
    .line 82
    if-ne v4, v5, :cond_4

    .line 83
    .line 84
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Landroidx/recyclerview/widget/OrientationHelper;->n()I

    .line 88
    move-result v4

    .line 89
    .line 90
    .line 91
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 92
    move-result v2

    .line 93
    .line 94
    .line 95
    :cond_4
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->W(I)V

    .line 96
    .line 97
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 98
    .line 99
    if-ne v2, v3, :cond_5

    .line 100
    return-void

    .line 101
    .line 102
    :cond_5
    :goto_2
    if-ge v1, v0, :cond_9

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 106
    move-result-object v2

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 110
    move-result-object v4

    .line 111
    .line 112
    check-cast v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 113
    .line 114
    iget-boolean v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 115
    .line 116
    if-eqz v5, :cond_6

    .line 117
    goto :goto_3

    .line 118
    .line 119
    .line 120
    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 121
    move-result v5

    .line 122
    const/4 v6, 0x1

    .line 123
    .line 124
    if-eqz v5, :cond_7

    .line 125
    .line 126
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 127
    .line 128
    if-ne v5, v6, :cond_7

    .line 129
    .line 130
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 131
    .line 132
    add-int/lit8 v7, v5, -0x1

    .line 133
    .line 134
    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 135
    .line 136
    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    .line 137
    sub-int/2addr v7, v4

    .line 138
    neg-int v7, v7

    .line 139
    .line 140
    iget v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 141
    mul-int/2addr v7, v8

    .line 142
    sub-int/2addr v5, v6

    .line 143
    sub-int/2addr v5, v4

    .line 144
    neg-int v4, v5

    .line 145
    mul-int/2addr v4, v3

    .line 146
    sub-int/2addr v7, v4

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 150
    goto :goto_3

    .line 151
    .line 152
    :cond_7
    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 153
    .line 154
    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    .line 155
    .line 156
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 157
    mul-int/2addr v5, v4

    .line 158
    mul-int/2addr v4, v3

    .line 159
    .line 160
    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 161
    .line 162
    if-ne v7, v6, :cond_8

    .line 163
    sub-int/2addr v5, v4

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 167
    goto :goto_3

    .line 168
    :cond_8
    sub-int/2addr v5, v4

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 172
    .line 173
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 174
    goto :goto_2

    .line 175
    :cond_9
    return-void
.end method

.method private P(I)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 3
    .line 4
    iput p1, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    .line 5
    .line 6
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, -0x1

    .line 9
    .line 10
    if-ne p1, v3, :cond_0

    .line 11
    move p1, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    .line 15
    :goto_0
    if-ne v1, p1, :cond_1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move v2, v3

    .line 18
    .line 19
    :goto_1
    iput v2, v0, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    .line 20
    return-void
.end method

.method private R(II)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 8
    .line 9
    aget-object v1, v1, v0

    .line 10
    .line 11
    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 21
    .line 22
    aget-object v1, v1, v0

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;II)V

    .line 26
    .line 27
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method private S(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->b()I

    .line 8
    move-result p1

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q(I)I

    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->b()I

    .line 17
    move-result p1

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m(I)I

    .line 21
    move-result p1

    .line 22
    .line 23
    :goto_0
    iput p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 24
    .line 25
    const/high16 p1, -0x80000000

    .line 26
    .line 27
    iput p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 28
    const/4 p1, 0x1

    .line 29
    return p1
.end method

.method private V(ILandroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    iput v1, v0, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    .line 6
    .line 7
    iput p1, v0, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x1

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->c()I

    .line 18
    move-result p2

    .line 19
    const/4 v0, -0x1

    .line 20
    .line 21
    if-eq p2, v0, :cond_2

    .line 22
    .line 23
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 24
    .line 25
    if-ge p2, p1, :cond_0

    .line 26
    move p1, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move p1, v1

    .line 29
    .line 30
    :goto_0
    if-ne v0, p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->n()I

    .line 36
    move-result p1

    .line 37
    move p2, v1

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->n()I

    .line 44
    move-result p1

    .line 45
    move p2, p1

    .line 46
    move p1, v1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move p1, v1

    .line 49
    move p2, p1

    .line 50
    .line 51
    .line 52
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    .line 53
    move-result v0

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 58
    .line 59
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->m()I

    .line 63
    move-result v3

    .line 64
    sub-int/2addr v3, p2

    .line 65
    .line 66
    iput v3, v0, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    .line 67
    .line 68
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 69
    .line 70
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->i()I

    .line 74
    move-result v0

    .line 75
    add-int/2addr v0, p1

    .line 76
    .line 77
    iput v0, p2, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    .line 78
    goto :goto_2

    .line 79
    .line 80
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 81
    .line 82
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->h()I

    .line 86
    move-result v3

    .line 87
    add-int/2addr v3, p1

    .line 88
    .line 89
    iput v3, v0, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    .line 90
    .line 91
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 92
    neg-int p2, p2

    .line 93
    .line 94
    iput p2, p1, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    .line 95
    .line 96
    :goto_2
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 97
    .line 98
    iput-boolean v1, p1, Landroidx/recyclerview/widget/LayoutState;->mStopInFocusable:Z

    .line 99
    .line 100
    iput-boolean v2, p1, Landroidx/recyclerview/widget/LayoutState;->mRecycle:Z

    .line 101
    .line 102
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->k()I

    .line 106
    move-result p2

    .line 107
    .line 108
    if-nez p2, :cond_4

    .line 109
    .line 110
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->h()I

    .line 114
    move-result p2

    .line 115
    .line 116
    if-nez p2, :cond_4

    .line 117
    move v1, v2

    .line 118
    .line 119
    :cond_4
    iput-boolean v1, p1, Landroidx/recyclerview/widget/LayoutState;->mInfinite:Z

    .line 120
    return-void
.end method

.method private X(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;II)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->l()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-ne p2, v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->q()I

    .line 12
    move-result p2

    .line 13
    add-int/2addr p2, v0

    .line 14
    .line 15
    if-gt p2, p3, :cond_1

    .line 16
    .line 17
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    .line 18
    .line 19
    iget p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->m()I

    .line 27
    move-result p2

    .line 28
    sub-int/2addr p2, v0

    .line 29
    .line 30
    if-lt p2, p3, :cond_1

    .line 31
    .line 32
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    .line 33
    .line 34
    iget p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method private Y(III)I
    .locals 2

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    return p1

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 9
    move-result v0

    .line 10
    .line 11
    const/high16 v1, -0x80000000

    .line 12
    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/high16 v1, 0x40000000    # 2.0f

    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    return p1

    .line 20
    .line 21
    .line 22
    :cond_2
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 23
    move-result p1

    .line 24
    sub-int/2addr p1, p2

    .line 25
    sub-int/2addr p1, p3

    .line 26
    const/4 p2, 0x0

    .line 27
    .line 28
    .line 29
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 30
    move-result p1

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 34
    move-result p1

    .line 35
    return p1
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    :goto_0
    if-ltz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 9
    .line 10
    aget-object v1, v1, v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->a(Landroid/view/View;)V

    .line 14
    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method private b(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 3
    .line 4
    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 5
    .line 6
    if-lez v1, :cond_3

    .line 7
    .line 8
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 9
    .line 10
    if-ne v1, v2, :cond_2

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 14
    .line 15
    if-ge v0, v1, :cond_3

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 18
    .line 19
    aget-object v1, v1, v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->e()V

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 25
    .line 26
    iget-object v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    .line 27
    .line 28
    aget v2, v2, v0

    .line 29
    .line 30
    const/high16 v3, -0x80000000

    .line 31
    .line 32
    if-eq v2, v3, :cond_1

    .line 33
    .line 34
    iget-boolean v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->i()I

    .line 42
    move-result v1

    .line 43
    :goto_1
    add-int/2addr v2, v1

    .line 44
    goto :goto_2

    .line 45
    .line 46
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->m()I

    .line 50
    move-result v1

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_1
    :goto_2
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 54
    .line 55
    aget-object v1, v1, v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->x(I)V

    .line 59
    .line 60
    add-int/lit8 v0, v0, 0x1

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->e()V

    .line 65
    .line 66
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 67
    .line 68
    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 69
    .line 70
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 71
    .line 72
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 73
    .line 74
    iget-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    .line 75
    .line 76
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    .line 77
    .line 78
    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    .line 82
    .line 83
    .line 84
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 85
    .line 86
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 87
    .line 88
    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 89
    const/4 v2, -0x1

    .line 90
    .line 91
    if-eq v1, v2, :cond_4

    .line 92
    .line 93
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 94
    .line 95
    iget-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 96
    .line 97
    iput-boolean v1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 98
    goto :goto_3

    .line 99
    .line 100
    :cond_4
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 101
    .line 102
    iput-boolean v1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 103
    .line 104
    :goto_3
    iget p1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 105
    const/4 v1, 0x1

    .line 106
    .line 107
    if-le p1, v1, :cond_5

    .line 108
    .line 109
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 110
    .line 111
    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    .line 112
    .line 113
    iput-object v1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 114
    .line 115
    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    .line 116
    .line 117
    iput-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 118
    :cond_5
    return-void
.end method

.method private computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    .line 10
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 11
    .line 12
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 13
    .line 14
    xor-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o(Z)Landroid/view/View;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 21
    .line 22
    xor-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n(Z)Landroid/view/View;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 29
    move-object v0, p1

    .line 30
    move-object v4, p0

    .line 31
    .line 32
    .line 33
    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/ScrollbarHelper;->a(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I

    .line 34
    move-result p1

    .line 35
    return p1
.end method

.method private computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    .line 10
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 11
    .line 12
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 13
    .line 14
    xor-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o(Z)Landroid/view/View;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 21
    .line 22
    xor-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n(Z)Landroid/view/View;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 29
    .line 30
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 31
    move-object v0, p1

    .line 32
    move-object v4, p0

    .line 33
    .line 34
    .line 35
    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/ScrollbarHelper;->b(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;ZZ)I

    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method private computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    .line 10
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 11
    .line 12
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 13
    .line 14
    xor-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o(Z)Landroid/view/View;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 21
    .line 22
    xor-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n(Z)Landroid/view/View;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 29
    move-object v0, p1

    .line 30
    move-object v4, p0

    .line 31
    .line 32
    .line 33
    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/ScrollbarHelper;->c(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I

    .line 34
    move-result p1

    .line 35
    return p1
.end method

.method private convertFocusDirectionToLayoutDirection(I)I
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    if-eq p1, v1, :cond_b

    .line 5
    const/4 v2, 0x2

    .line 6
    .line 7
    if-eq p1, v2, :cond_8

    .line 8
    .line 9
    const/16 v2, 0x11

    .line 10
    .line 11
    const/high16 v3, -0x80000000

    .line 12
    .line 13
    if-eq p1, v2, :cond_6

    .line 14
    .line 15
    const/16 v2, 0x21

    .line 16
    .line 17
    if-eq p1, v2, :cond_4

    .line 18
    .line 19
    const/16 v0, 0x42

    .line 20
    .line 21
    if-eq p1, v0, :cond_2

    .line 22
    .line 23
    const/16 v0, 0x82

    .line 24
    .line 25
    if-eq p1, v0, :cond_0

    .line 26
    return v3

    .line 27
    .line 28
    :cond_0
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 29
    .line 30
    if-ne p1, v1, :cond_1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v1, v3

    .line 33
    :goto_0
    return v1

    .line 34
    .line 35
    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 36
    .line 37
    if-nez p1, :cond_3

    .line 38
    goto :goto_1

    .line 39
    :cond_3
    move v1, v3

    .line 40
    :goto_1
    return v1

    .line 41
    .line 42
    :cond_4
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 43
    .line 44
    if-ne p1, v1, :cond_5

    .line 45
    goto :goto_2

    .line 46
    :cond_5
    move v0, v3

    .line 47
    :goto_2
    return v0

    .line 48
    .line 49
    :cond_6
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 50
    .line 51
    if-nez p1, :cond_7

    .line 52
    goto :goto_3

    .line 53
    :cond_7
    move v0, v3

    .line 54
    :goto_3
    return v0

    .line 55
    .line 56
    :cond_8
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 57
    .line 58
    if-ne p1, v1, :cond_9

    .line 59
    return v1

    .line 60
    .line 61
    .line 62
    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 63
    move-result p1

    .line 64
    .line 65
    if-eqz p1, :cond_a

    .line 66
    return v0

    .line 67
    :cond_a
    return v1

    .line 68
    .line 69
    :cond_b
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 70
    .line 71
    if-ne p1, v1, :cond_c

    .line 72
    return v0

    .line 73
    .line 74
    .line 75
    :cond_c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 76
    move-result p1

    .line 77
    .line 78
    if-eqz p1, :cond_d

    .line 79
    return v1

    .line 80
    :cond_d
    return v0
.end method

.method private e(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;Landroidx/recyclerview/widget/LayoutState;)V
    .locals 1

    .line 1
    .line 2
    iget p3, p3, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-ne p3, v0, :cond_1

    .line 6
    .line 7
    iget-boolean p3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;)V

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->a(Landroid/view/View;)V

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_1
    iget-boolean p3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 22
    .line 23
    if-eqz p3, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K(Landroid/view/View;)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_2
    iget-object p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->w(Landroid/view/View;)V

    .line 33
    :goto_0
    return-void
.end method

.method private f(I)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    move v1, v2

    .line 14
    :cond_0
    return v1

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u()I

    .line 18
    move-result v0

    .line 19
    .line 20
    if-ge p1, v0, :cond_2

    .line 21
    move p1, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const/4 p1, 0x0

    .line 24
    .line 25
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 26
    .line 27
    if-eq p1, v0, :cond_3

    .line 28
    goto :goto_1

    .line 29
    :cond_3
    move v1, v2

    .line 30
    :goto_1
    return v1
.end method

.method private h(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;)Z
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->m()I

    .line 9
    move-result v0

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->i()I

    .line 15
    move-result v2

    .line 16
    .line 17
    if-ge v0, v2, :cond_1

    .line 18
    .line 19
    iget-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    move-result v1

    .line 24
    .line 25
    add-int/lit8 v1, v1, -0x1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Landroid/view/View;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->p(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    iget-boolean p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 38
    .line 39
    xor-int/lit8 p1, p1, 0x1

    .line 40
    return p1

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->q()I

    .line 44
    move-result v0

    .line 45
    .line 46
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->m()I

    .line 50
    move-result v2

    .line 51
    .line 52
    if-le v0, v2, :cond_1

    .line 53
    .line 54
    iget-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    check-cast v0, Landroid/view/View;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->p(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    iget-boolean p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 67
    .line 68
    xor-int/lit8 p1, p1, 0x1

    .line 69
    return p1

    .line 70
    :cond_1
    return v1
.end method

.method private i(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 6
    .line 7
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 8
    .line 9
    new-array v1, v1, [I

    .line 10
    .line 11
    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 15
    .line 16
    if-ge v1, v2, :cond_0

    .line 17
    .line 18
    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    .line 19
    .line 20
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 21
    .line 22
    aget-object v3, v3, v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->n(I)I

    .line 26
    move-result v3

    .line 27
    .line 28
    sub-int v3, p1, v3

    .line 29
    .line 30
    aput v3, v2, v1

    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-object v0
.end method

.method private j(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 6
    .line 7
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 8
    .line 9
    new-array v1, v1, [I

    .line 10
    .line 11
    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 15
    .line 16
    if-ge v1, v2, :cond_0

    .line 17
    .line 18
    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    .line 19
    .line 20
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 21
    .line 22
    aget-object v3, v3, v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->r(I)I

    .line 26
    move-result v3

    .line 27
    sub-int/2addr v3, p1

    .line 28
    .line 29
    aput v3, v2, v1

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-object v0
.end method

.method private k()V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Landroidx/recyclerview/widget/OrientationHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/OrientationHelper;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 9
    .line 10
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 11
    .line 12
    rsub-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Landroidx/recyclerview/widget/OrientationHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/OrientationHelper;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 19
    return-void
.end method

.method private l(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 16

    .line 1
    .line 2
    move-object/from16 v6, p0

    .line 3
    .line 4
    move-object/from16 v7, p1

    .line 5
    .line 6
    move-object/from16 v8, p2

    .line 7
    .line 8
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    .line 9
    .line 10
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 11
    const/4 v9, 0x0

    .line 12
    const/4 v10, 0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v9, v1, v10}, Ljava/util/BitSet;->set(IIZ)V

    .line 16
    .line 17
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 18
    .line 19
    iget-boolean v0, v0, Landroidx/recyclerview/widget/LayoutState;->mInfinite:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget v0, v8, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    .line 24
    .line 25
    if-ne v0, v10, :cond_0

    .line 26
    .line 27
    .line 28
    const v0, 0x7fffffff

    .line 29
    :goto_0
    move v11, v0

    .line 30
    goto :goto_1

    .line 31
    .line 32
    :cond_0
    const/high16 v0, -0x80000000

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    iget v0, v8, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    .line 36
    .line 37
    if-ne v0, v10, :cond_2

    .line 38
    .line 39
    iget v0, v8, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    .line 40
    .line 41
    iget v1, v8, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    .line 42
    add-int/2addr v0, v1

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_2
    iget v0, v8, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    .line 46
    .line 47
    iget v1, v8, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    .line 48
    sub-int/2addr v0, v1

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :goto_1
    iget v0, v8, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    .line 52
    .line 53
    .line 54
    invoke-direct {v6, v0, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->R(II)V

    .line 55
    .line 56
    iget-boolean v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->i()I

    .line 64
    move-result v0

    .line 65
    :goto_2
    move v12, v0

    .line 66
    goto :goto_3

    .line 67
    .line 68
    :cond_3
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->m()I

    .line 72
    move-result v0

    .line 73
    goto :goto_2

    .line 74
    :goto_3
    move v0, v9

    .line 75
    .line 76
    .line 77
    :goto_4
    invoke-virtual/range {p2 .. p3}, Landroidx/recyclerview/widget/LayoutState;->a(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    .line 78
    move-result v1

    .line 79
    const/4 v2, -0x1

    .line 80
    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 84
    .line 85
    iget-boolean v1, v1, Landroidx/recyclerview/widget/LayoutState;->mInfinite:Z

    .line 86
    .line 87
    if-nez v1, :cond_5

    .line 88
    .line 89
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    .line 93
    move-result v1

    .line 94
    .line 95
    if-nez v1, :cond_4

    .line 96
    goto :goto_5

    .line 97
    :cond_4
    move v3, v9

    .line 98
    .line 99
    goto/16 :goto_17

    .line 100
    .line 101
    .line 102
    :cond_5
    :goto_5
    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/LayoutState;->b(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    .line 103
    move-result-object v13

    .line 104
    .line 105
    .line 106
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 107
    move-result-object v0

    .line 108
    move-object v14, v0

    .line 109
    .line 110
    check-cast v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->b()I

    .line 114
    move-result v0

    .line 115
    .line 116
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->g(I)I

    .line 120
    move-result v1

    .line 121
    .line 122
    if-ne v1, v2, :cond_6

    .line 123
    move v3, v10

    .line 124
    goto :goto_6

    .line 125
    :cond_6
    move v3, v9

    .line 126
    .line 127
    :goto_6
    if-eqz v3, :cond_8

    .line 128
    .line 129
    iget-boolean v1, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 130
    .line 131
    if-eqz v1, :cond_7

    .line 132
    .line 133
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 134
    .line 135
    aget-object v1, v1, v9

    .line 136
    goto :goto_7

    .line 137
    .line 138
    .line 139
    :cond_7
    invoke-direct {v6, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A(Landroidx/recyclerview/widget/LayoutState;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 140
    move-result-object v1

    .line 141
    .line 142
    :goto_7
    iget-object v4, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4, v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->n(ILandroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;)V

    .line 146
    :goto_8
    move-object v15, v1

    .line 147
    goto :goto_9

    .line 148
    .line 149
    :cond_8
    iget-object v4, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 150
    .line 151
    aget-object v1, v4, v1

    .line 152
    goto :goto_8

    .line 153
    .line 154
    :goto_9
    iput-object v15, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 155
    .line 156
    iget v1, v8, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    .line 157
    .line 158
    if-ne v1, v10, :cond_9

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6, v13}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    .line 162
    goto :goto_a

    .line 163
    .line 164
    .line 165
    :cond_9
    invoke-virtual {v6, v13, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 166
    .line 167
    .line 168
    :goto_a
    invoke-direct {v6, v13, v14, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;Z)V

    .line 169
    .line 170
    iget v1, v8, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    .line 171
    .line 172
    if-ne v1, v10, :cond_c

    .line 173
    .line 174
    iget-boolean v1, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 175
    .line 176
    if-eqz v1, :cond_a

    .line 177
    .line 178
    .line 179
    invoke-direct {v6, v12}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w(I)I

    .line 180
    move-result v1

    .line 181
    goto :goto_b

    .line 182
    .line 183
    .line 184
    :cond_a
    invoke-virtual {v15, v12}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->n(I)I

    .line 185
    move-result v1

    .line 186
    .line 187
    :goto_b
    iget-object v4, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v4, v13}, Landroidx/recyclerview/widget/OrientationHelper;->e(Landroid/view/View;)I

    .line 191
    move-result v4

    .line 192
    add-int/2addr v4, v1

    .line 193
    .line 194
    if-eqz v3, :cond_b

    .line 195
    .line 196
    iget-boolean v5, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 197
    .line 198
    if-eqz v5, :cond_b

    .line 199
    .line 200
    .line 201
    invoke-direct {v6, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 202
    move-result-object v5

    .line 203
    .line 204
    iput v2, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 205
    .line 206
    iput v0, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 207
    .line 208
    iget-object v9, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v9, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    .line 212
    :cond_b
    move v5, v4

    .line 213
    move v4, v1

    .line 214
    goto :goto_d

    .line 215
    .line 216
    :cond_c
    iget-boolean v1, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 217
    .line 218
    if-eqz v1, :cond_d

    .line 219
    .line 220
    .line 221
    invoke-direct {v6, v12}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z(I)I

    .line 222
    move-result v1

    .line 223
    goto :goto_c

    .line 224
    .line 225
    .line 226
    :cond_d
    invoke-virtual {v15, v12}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->r(I)I

    .line 227
    move-result v1

    .line 228
    .line 229
    :goto_c
    iget-object v4, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v4, v13}, Landroidx/recyclerview/widget/OrientationHelper;->e(Landroid/view/View;)I

    .line 233
    move-result v4

    .line 234
    .line 235
    sub-int v4, v1, v4

    .line 236
    .line 237
    if-eqz v3, :cond_e

    .line 238
    .line 239
    iget-boolean v5, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 240
    .line 241
    if-eqz v5, :cond_e

    .line 242
    .line 243
    .line 244
    invoke-direct {v6, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 245
    move-result-object v5

    .line 246
    .line 247
    iput v10, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 248
    .line 249
    iput v0, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 250
    .line 251
    iget-object v9, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v9, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    .line 255
    :cond_e
    move v5, v1

    .line 256
    .line 257
    :goto_d
    iget-boolean v1, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 258
    .line 259
    if-eqz v1, :cond_12

    .line 260
    .line 261
    iget v1, v8, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    .line 262
    .line 263
    if-ne v1, v2, :cond_12

    .line 264
    .line 265
    if-eqz v3, :cond_f

    .line 266
    .line 267
    iput-boolean v10, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 268
    goto :goto_10

    .line 269
    .line 270
    :cond_f
    iget v1, v8, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    .line 271
    .line 272
    if-ne v1, v10, :cond_10

    .line 273
    .line 274
    .line 275
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c()Z

    .line 276
    move-result v1

    .line 277
    :goto_e
    xor-int/2addr v1, v10

    .line 278
    goto :goto_f

    .line 279
    .line 280
    .line 281
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d()Z

    .line 282
    move-result v1

    .line 283
    goto :goto_e

    .line 284
    .line 285
    :goto_f
    if-eqz v1, :cond_12

    .line 286
    .line 287
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->f(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 291
    move-result-object v0

    .line 292
    .line 293
    if-eqz v0, :cond_11

    .line 294
    .line 295
    iput-boolean v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mHasUnwantedGapAfter:Z

    .line 296
    .line 297
    :cond_11
    iput-boolean v10, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 298
    .line 299
    .line 300
    :cond_12
    :goto_10
    invoke-direct {v6, v13, v14, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;Landroidx/recyclerview/widget/LayoutState;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 304
    move-result v0

    .line 305
    .line 306
    if-eqz v0, :cond_14

    .line 307
    .line 308
    iget v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 309
    .line 310
    if-ne v0, v10, :cond_14

    .line 311
    .line 312
    iget-boolean v0, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 313
    .line 314
    if-eqz v0, :cond_13

    .line 315
    .line 316
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->i()I

    .line 320
    move-result v0

    .line 321
    goto :goto_11

    .line 322
    .line 323
    :cond_13
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->i()I

    .line 327
    move-result v0

    .line 328
    .line 329
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 330
    sub-int/2addr v1, v10

    .line 331
    .line 332
    iget v2, v15, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    .line 333
    sub-int/2addr v1, v2

    .line 334
    .line 335
    iget v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 336
    mul-int/2addr v1, v2

    .line 337
    sub-int/2addr v0, v1

    .line 338
    .line 339
    :goto_11
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1, v13}, Landroidx/recyclerview/widget/OrientationHelper;->e(Landroid/view/View;)I

    .line 343
    move-result v1

    .line 344
    .line 345
    sub-int v1, v0, v1

    .line 346
    move v9, v0

    .line 347
    move v3, v1

    .line 348
    goto :goto_13

    .line 349
    .line 350
    :cond_14
    iget-boolean v0, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 351
    .line 352
    if-eqz v0, :cond_15

    .line 353
    .line 354
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->m()I

    .line 358
    move-result v0

    .line 359
    goto :goto_12

    .line 360
    .line 361
    :cond_15
    iget v0, v15, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    .line 362
    .line 363
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 364
    mul-int/2addr v0, v1

    .line 365
    .line 366
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->m()I

    .line 370
    move-result v1

    .line 371
    add-int/2addr v0, v1

    .line 372
    .line 373
    :goto_12
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v1, v13}, Landroidx/recyclerview/widget/OrientationHelper;->e(Landroid/view/View;)I

    .line 377
    move-result v1

    .line 378
    add-int/2addr v1, v0

    .line 379
    move v3, v0

    .line 380
    move v9, v1

    .line 381
    .line 382
    :goto_13
    iget v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 383
    .line 384
    if-ne v0, v10, :cond_16

    .line 385
    .line 386
    move-object/from16 v0, p0

    .line 387
    move-object v1, v13

    .line 388
    move v2, v3

    .line 389
    move v3, v4

    .line 390
    move v4, v9

    .line 391
    .line 392
    .line 393
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 394
    goto :goto_14

    .line 395
    .line 396
    :cond_16
    move-object/from16 v0, p0

    .line 397
    move-object v1, v13

    .line 398
    move v2, v4

    .line 399
    move v4, v5

    .line 400
    move v5, v9

    .line 401
    .line 402
    .line 403
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 404
    .line 405
    :goto_14
    iget-boolean v0, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 406
    .line 407
    if-eqz v0, :cond_17

    .line 408
    .line 409
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 410
    .line 411
    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    .line 412
    .line 413
    .line 414
    invoke-direct {v6, v0, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->R(II)V

    .line 415
    goto :goto_15

    .line 416
    .line 417
    :cond_17
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 418
    .line 419
    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    .line 420
    .line 421
    .line 422
    invoke-direct {v6, v15, v0, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;II)V

    .line 423
    .line 424
    :goto_15
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 425
    .line 426
    .line 427
    invoke-direct {v6, v7, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;)V

    .line 428
    .line 429
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 430
    .line 431
    iget-boolean v0, v0, Landroidx/recyclerview/widget/LayoutState;->mStopInFocusable:Z

    .line 432
    .line 433
    if-eqz v0, :cond_18

    .line 434
    .line 435
    .line 436
    invoke-virtual {v13}, Landroid/view/View;->hasFocusable()Z

    .line 437
    move-result v0

    .line 438
    .line 439
    if-eqz v0, :cond_18

    .line 440
    .line 441
    iget-boolean v0, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 442
    .line 443
    if-eqz v0, :cond_19

    .line 444
    .line 445
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 449
    :cond_18
    const/4 v3, 0x0

    .line 450
    goto :goto_16

    .line 451
    .line 452
    :cond_19
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    .line 453
    .line 454
    iget v1, v15, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    .line 455
    const/4 v3, 0x0

    .line 456
    .line 457
    .line 458
    invoke-virtual {v0, v1, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 459
    :goto_16
    move v9, v3

    .line 460
    move v0, v10

    .line 461
    .line 462
    goto/16 :goto_4

    .line 463
    .line 464
    :goto_17
    if-nez v0, :cond_1a

    .line 465
    .line 466
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 467
    .line 468
    .line 469
    invoke-direct {v6, v7, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;)V

    .line 470
    .line 471
    :cond_1a
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 472
    .line 473
    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    .line 474
    .line 475
    if-ne v0, v2, :cond_1b

    .line 476
    .line 477
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->m()I

    .line 481
    move-result v0

    .line 482
    .line 483
    .line 484
    invoke-direct {v6, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z(I)I

    .line 485
    move-result v0

    .line 486
    .line 487
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->m()I

    .line 491
    move-result v1

    .line 492
    sub-int/2addr v1, v0

    .line 493
    goto :goto_18

    .line 494
    .line 495
    :cond_1b
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->i()I

    .line 499
    move-result v0

    .line 500
    .line 501
    .line 502
    invoke-direct {v6, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w(I)I

    .line 503
    move-result v0

    .line 504
    .line 505
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->i()I

    .line 509
    move-result v1

    .line 510
    .line 511
    sub-int v1, v0, v1

    .line 512
    .line 513
    :goto_18
    if-lez v1, :cond_1c

    .line 514
    .line 515
    iget v0, v8, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    .line 516
    .line 517
    .line 518
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 519
    move-result v9

    .line 520
    goto :goto_19

    .line 521
    :cond_1c
    move v9, v3

    .line 522
    :goto_19
    return v9
.end method

.method private m(I)I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    .line 8
    :goto_0
    if-ge v2, v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v3

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 16
    move-result v3

    .line 17
    .line 18
    if-ltz v3, :cond_0

    .line 19
    .line 20
    if-ge v3, p1, :cond_0

    .line 21
    return v3

    .line 22
    .line 23
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    return v1
.end method

.method private q(I)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    :goto_0
    if-ltz v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 16
    move-result v1

    .line 17
    .line 18
    if-ltz v1, :cond_0

    .line 19
    .line 20
    if-ge v1, p1, :cond_0

    .line 21
    return v1

    .line 22
    .line 23
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 15
    xor-int/2addr v0, v1

    .line 16
    .line 17
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 23
    :goto_1
    return-void
.end method

.method private s(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V
    .locals 2

    .line 1
    .line 2
    const/high16 v0, -0x80000000

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w(I)I

    .line 6
    move-result v1

    .line 7
    .line 8
    if-ne v1, v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->i()I

    .line 15
    move-result v0

    .line 16
    sub-int/2addr v0, v1

    .line 17
    .line 18
    if-lez v0, :cond_1

    .line 19
    neg-int v1, v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 23
    move-result p1

    .line 24
    neg-int p1, p1

    .line 25
    sub-int/2addr v0, p1

    .line 26
    .line 27
    if-eqz p3, :cond_1

    .line 28
    .line 29
    if-lez v0, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/OrientationHelper;->r(I)V

    .line 35
    :cond_1
    return-void
.end method

.method private t(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    const v0, 0x7fffffff

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z(I)I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-ne v1, v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->m()I

    .line 16
    move-result v0

    .line 17
    sub-int/2addr v1, v0

    .line 18
    .line 19
    if-lez v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 23
    move-result p1

    .line 24
    sub-int/2addr v1, p1

    .line 25
    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    if-lez v1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 31
    neg-int p2, v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/OrientationHelper;->r(I)V

    .line 35
    :cond_1
    return-void
.end method

.method private w(I)I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->n(I)I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 13
    .line 14
    if-ge v1, v2, :cond_1

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 17
    .line 18
    aget-object v2, v2, v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->n(I)I

    .line 22
    move-result v2

    .line 23
    .line 24
    if-le v2, v0, :cond_0

    .line 25
    move v0, v2

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return v0
.end method

.method private x(I)I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->r(I)I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 13
    .line 14
    if-ge v1, v2, :cond_1

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 17
    .line 18
    aget-object v2, v2, v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->r(I)I

    .line 22
    move-result v2

    .line 23
    .line 24
    if-le v2, v0, :cond_0

    .line 25
    move v0, v2

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return v0
.end method

.method private y(I)I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->n(I)I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 13
    .line 14
    if-ge v1, v2, :cond_1

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 17
    .line 18
    aget-object v2, v2, v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->n(I)I

    .line 22
    move-result v2

    .line 23
    .line 24
    if-ge v2, v0, :cond_0

    .line 25
    move v0, v2

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return v0
.end method

.method private z(I)I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->r(I)I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 13
    .line 14
    if-ge v1, v2, :cond_1

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 17
    .line 18
    aget-object v2, v2, v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->r(I)I

    .line 22
    move-result v2

    .line 23
    .line 24
    if-ge v2, v0, :cond_0

    .line 25
    move v0, v2

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return v0
.end method


# virtual methods
.method public B()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    return v0
.end method

.method D()Landroid/view/View;
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v1, v0, -0x1

    .line 7
    .line 8
    new-instance v2, Ljava/util/BitSet;

    .line 9
    .line 10
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 11
    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    .line 14
    .line 15
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v4, v3, v5}, Ljava/util/BitSet;->set(IIZ)V

    .line 21
    .line 22
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 23
    const/4 v6, -0x1

    .line 24
    .line 25
    if-ne v3, v5, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 29
    move-result v3

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    move v3, v5

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v3, v6

    .line 35
    .line 36
    :goto_0
    iget-boolean v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 37
    .line 38
    if-eqz v7, :cond_1

    .line 39
    move v0, v6

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v1, v4

    .line 42
    .line 43
    :goto_1
    if-ge v1, v0, :cond_2

    .line 44
    move v6, v5

    .line 45
    .line 46
    :cond_2
    :goto_2
    if-eq v1, v0, :cond_c

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 50
    move-result-object v7

    .line 51
    .line 52
    .line 53
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 54
    move-result-object v8

    .line 55
    .line 56
    check-cast v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 57
    .line 58
    iget-object v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 59
    .line 60
    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v9}, Ljava/util/BitSet;->get(I)Z

    .line 64
    move-result v9

    .line 65
    .line 66
    if-eqz v9, :cond_4

    .line 67
    .line 68
    iget-object v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;)Z

    .line 72
    move-result v9

    .line 73
    .line 74
    if-eqz v9, :cond_3

    .line 75
    return-object v7

    .line 76
    .line 77
    :cond_3
    iget-object v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 78
    .line 79
    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v9}, Ljava/util/BitSet;->clear(I)V

    .line 83
    .line 84
    :cond_4
    iget-boolean v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 85
    .line 86
    if-eqz v9, :cond_5

    .line 87
    goto :goto_6

    .line 88
    .line 89
    :cond_5
    add-int v9, v1, v6

    .line 90
    .line 91
    if-eq v9, v0, :cond_b

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 95
    move-result-object v9

    .line 96
    .line 97
    iget-boolean v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 98
    .line 99
    if-eqz v10, :cond_7

    .line 100
    .line 101
    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v10, v7}, Landroidx/recyclerview/widget/OrientationHelper;->d(Landroid/view/View;)I

    .line 105
    move-result v10

    .line 106
    .line 107
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/OrientationHelper;->d(Landroid/view/View;)I

    .line 111
    move-result v11

    .line 112
    .line 113
    if-ge v10, v11, :cond_6

    .line 114
    return-object v7

    .line 115
    .line 116
    :cond_6
    if-ne v10, v11, :cond_b

    .line 117
    goto :goto_3

    .line 118
    .line 119
    :cond_7
    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v10, v7}, Landroidx/recyclerview/widget/OrientationHelper;->g(Landroid/view/View;)I

    .line 123
    move-result v10

    .line 124
    .line 125
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/OrientationHelper;->g(Landroid/view/View;)I

    .line 129
    move-result v11

    .line 130
    .line 131
    if-le v10, v11, :cond_8

    .line 132
    return-object v7

    .line 133
    .line 134
    :cond_8
    if-ne v10, v11, :cond_b

    .line 135
    .line 136
    .line 137
    :goto_3
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 138
    move-result-object v9

    .line 139
    .line 140
    check-cast v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 141
    .line 142
    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 143
    .line 144
    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    .line 145
    .line 146
    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 147
    .line 148
    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    .line 149
    sub-int/2addr v8, v9

    .line 150
    .line 151
    if-gez v8, :cond_9

    .line 152
    move v8, v5

    .line 153
    goto :goto_4

    .line 154
    :cond_9
    move v8, v4

    .line 155
    .line 156
    :goto_4
    if-gez v3, :cond_a

    .line 157
    move v9, v5

    .line 158
    goto :goto_5

    .line 159
    :cond_a
    move v9, v4

    .line 160
    .line 161
    :goto_5
    if-eq v8, v9, :cond_b

    .line 162
    return-object v7

    .line 163
    :cond_b
    :goto_6
    add-int/2addr v1, v6

    .line 164
    goto :goto_2

    .line 165
    :cond_c
    const/4 v0, 0x0

    .line 166
    return-object v0
.end method

.method public E()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->b()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 9
    return-void
.end method

.method J(ILandroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-lez p1, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v()I

    .line 7
    move-result v1

    .line 8
    move v2, v0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, -0x1

    .line 15
    .line 16
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 17
    .line 18
    iput-boolean v0, v3, Landroidx/recyclerview/widget/LayoutState;->mRecycle:Z

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->V(ILandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P(I)V

    .line 25
    .line 26
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 27
    .line 28
    iget v0, p2, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    .line 29
    add-int/2addr v1, v0

    .line 30
    .line 31
    iput v1, p2, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 35
    move-result p1

    .line 36
    .line 37
    iput p1, p2, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    .line 38
    return-void
.end method

.method public Q(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5
    .line 6
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E()V

    .line 12
    .line 13
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 14
    .line 15
    new-instance p1, Ljava/util/BitSet;

    .line 16
    .line 17
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 21
    .line 22
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    .line 23
    .line 24
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 25
    .line 26
    new-array p1, p1, [Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 27
    .line 28
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 29
    const/4 p1, 0x0

    .line 30
    .line 31
    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 32
    .line 33
    if-ge p1, v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 36
    .line 37
    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V

    .line 41
    .line 42
    aput-object v1, v0, p1

    .line 43
    .line 44
    add-int/lit8 p1, p1, 0x1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 49
    :cond_1
    return-void
.end method

.method T(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->e()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_f

    .line 8
    .line 9
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 10
    const/4 v2, -0x1

    .line 11
    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    goto/16 :goto_7

    .line 15
    .line 16
    :cond_0
    const/high16 v3, -0x80000000

    .line 17
    .line 18
    if-ltz v0, :cond_e

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->b()I

    .line 22
    move-result p1

    .line 23
    .line 24
    if-lt v0, p1, :cond_1

    .line 25
    .line 26
    goto/16 :goto_6

    .line 27
    .line 28
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 29
    const/4 v0, 0x1

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    iget v4, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 34
    .line 35
    if-eq v4, v2, :cond_3

    .line 36
    .line 37
    iget p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 38
    .line 39
    if-ge p1, v0, :cond_2

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_2
    iput v3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 43
    .line 44
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 45
    .line 46
    iput p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 47
    .line 48
    goto/16 :goto_5

    .line 49
    .line 50
    :cond_3
    :goto_0
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    if-eqz p1, :cond_b

    .line 57
    .line 58
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 59
    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v()I

    .line 64
    move-result v1

    .line 65
    goto :goto_1

    .line 66
    .line 67
    .line 68
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u()I

    .line 69
    move-result v1

    .line 70
    .line 71
    :goto_1
    iput v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 72
    .line 73
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 74
    .line 75
    if-eq v1, v3, :cond_6

    .line 76
    .line 77
    iget-boolean v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 78
    .line 79
    if-eqz v1, :cond_5

    .line 80
    .line 81
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->i()I

    .line 85
    move-result v1

    .line 86
    .line 87
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 88
    sub-int/2addr v1, v2

    .line 89
    .line 90
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/OrientationHelper;->d(Landroid/view/View;)I

    .line 94
    move-result p1

    .line 95
    sub-int/2addr v1, p1

    .line 96
    .line 97
    iput v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 98
    goto :goto_2

    .line 99
    .line 100
    :cond_5
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->m()I

    .line 104
    move-result v1

    .line 105
    .line 106
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 107
    add-int/2addr v1, v2

    .line 108
    .line 109
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/OrientationHelper;->g(Landroid/view/View;)I

    .line 113
    move-result p1

    .line 114
    sub-int/2addr v1, p1

    .line 115
    .line 116
    iput v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 117
    :goto_2
    return v0

    .line 118
    .line 119
    :cond_6
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/OrientationHelper;->e(Landroid/view/View;)I

    .line 123
    move-result v1

    .line 124
    .line 125
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->n()I

    .line 129
    move-result v2

    .line 130
    .line 131
    if-le v1, v2, :cond_8

    .line 132
    .line 133
    iget-boolean p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 134
    .line 135
    if-eqz p1, :cond_7

    .line 136
    .line 137
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->i()I

    .line 141
    move-result p1

    .line 142
    goto :goto_3

    .line 143
    .line 144
    :cond_7
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->m()I

    .line 148
    move-result p1

    .line 149
    .line 150
    :goto_3
    iput p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 151
    return v0

    .line 152
    .line 153
    :cond_8
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/OrientationHelper;->g(Landroid/view/View;)I

    .line 157
    move-result v1

    .line 158
    .line 159
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->m()I

    .line 163
    move-result v2

    .line 164
    sub-int/2addr v1, v2

    .line 165
    .line 166
    if-gez v1, :cond_9

    .line 167
    neg-int p1, v1

    .line 168
    .line 169
    iput p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 170
    return v0

    .line 171
    .line 172
    :cond_9
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->i()I

    .line 176
    move-result v1

    .line 177
    .line 178
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/OrientationHelper;->d(Landroid/view/View;)I

    .line 182
    move-result p1

    .line 183
    sub-int/2addr v1, p1

    .line 184
    .line 185
    if-gez v1, :cond_a

    .line 186
    .line 187
    iput v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 188
    return v0

    .line 189
    .line 190
    :cond_a
    iput v3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 191
    goto :goto_5

    .line 192
    .line 193
    :cond_b
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 194
    .line 195
    iput p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 196
    .line 197
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 198
    .line 199
    if-ne v2, v3, :cond_d

    .line 200
    .line 201
    .line 202
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f(I)I

    .line 203
    move-result p1

    .line 204
    .line 205
    if-ne p1, v0, :cond_c

    .line 206
    move v1, v0

    .line 207
    .line 208
    :cond_c
    iput-boolean v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->a()V

    .line 212
    goto :goto_4

    .line 213
    .line 214
    .line 215
    :cond_d
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->b(I)V

    .line 216
    .line 217
    :goto_4
    iput-boolean v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    .line 218
    :goto_5
    return v0

    .line 219
    .line 220
    :cond_e
    :goto_6
    iput v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 221
    .line 222
    iput v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 223
    :cond_f
    :goto_7
    return v1
.end method

.method U(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)Z

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
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->S(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)Z

    .line 11
    move-result p1

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    return-void

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->a()V

    .line 18
    const/4 p1, 0x0

    .line 19
    .line 20
    iput p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 21
    return-void
.end method

.method W(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 3
    .line 4
    div-int v0, p1, v0

    .line 5
    .line 6
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->k()I

    .line 12
    move-result v0

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 16
    move-result p1

    .line 17
    .line 18
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    .line 19
    return-void
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 8
    :cond_0
    return-void
.end method

.method c()Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    const/high16 v2, -0x80000000

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->n(I)I

    .line 11
    move-result v0

    .line 12
    const/4 v3, 0x1

    .line 13
    move v4, v3

    .line 14
    .line 15
    :goto_0
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 16
    .line 17
    if-ge v4, v5, :cond_1

    .line 18
    .line 19
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 20
    .line 21
    aget-object v5, v5, v4

    .line 22
    .line 23
    .line 24
    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->n(I)I

    .line 25
    move-result v5

    .line 26
    .line 27
    if-eq v5, v0, :cond_0

    .line 28
    return v1

    .line 29
    .line 30
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return v3
.end method

.method public canScrollHorizontally()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canScrollVertically()Z
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 0

    .line 1
    .line 2
    instance-of p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 3
    return p1
.end method

.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move p1, p2

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 10
    move-result p2

    .line 11
    .line 12
    if-eqz p2, :cond_7

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    goto/16 :goto_5

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J(ILandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 20
    .line 21
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    array-length p1, p1

    .line 25
    .line 26
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 27
    .line 28
    if-ge p1, p2, :cond_3

    .line 29
    .line 30
    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 31
    .line 32
    new-array p1, p1, [I

    .line 33
    .line 34
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    .line 35
    :cond_3
    const/4 p1, 0x0

    .line 36
    move p2, p1

    .line 37
    move v0, p2

    .line 38
    .line 39
    :goto_1
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 40
    .line 41
    if-ge p2, v1, :cond_6

    .line 42
    .line 43
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 44
    .line 45
    iget v2, v1, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    .line 46
    const/4 v3, -0x1

    .line 47
    .line 48
    if-ne v2, v3, :cond_4

    .line 49
    .line 50
    iget v1, v1, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    .line 51
    .line 52
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 53
    .line 54
    aget-object v2, v2, p2

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->r(I)I

    .line 58
    move-result v2

    .line 59
    :goto_2
    sub-int/2addr v1, v2

    .line 60
    goto :goto_3

    .line 61
    .line 62
    :cond_4
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 63
    .line 64
    aget-object v2, v2, p2

    .line 65
    .line 66
    iget v1, v1, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->n(I)I

    .line 70
    move-result v1

    .line 71
    .line 72
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 73
    .line 74
    iget v2, v2, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    .line 75
    goto :goto_2

    .line 76
    .line 77
    :goto_3
    if-ltz v1, :cond_5

    .line 78
    .line 79
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    .line 80
    .line 81
    aput v1, v2, v0

    .line 82
    .line 83
    add-int/lit8 v0, v0, 0x1

    .line 84
    .line 85
    :cond_5
    add-int/lit8 p2, p2, 0x1

    .line 86
    goto :goto_1

    .line 87
    .line 88
    :cond_6
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    .line 89
    .line 90
    .line 91
    invoke-static {p2, p1, v0}, Ljava/util/Arrays;->sort([III)V

    .line 92
    .line 93
    :goto_4
    if-ge p1, v0, :cond_7

    .line 94
    .line 95
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/LayoutState;->a(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    .line 99
    move-result p2

    .line 100
    .line 101
    if-eqz p2, :cond_7

    .line 102
    .line 103
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 104
    .line 105
    iget p2, p2, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    .line 106
    .line 107
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    .line 108
    .line 109
    aget v1, v1, p1

    .line 110
    .line 111
    .line 112
    invoke-interface {p4, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->a(II)V

    .line 113
    .line 114
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 115
    .line 116
    iget v1, p2, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    .line 117
    .line 118
    iget v2, p2, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    .line 119
    add-int/2addr v1, v2

    .line 120
    .line 121
    iput v1, p2, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    .line 122
    .line 123
    add-int/lit8 p1, p1, 0x1

    .line 124
    goto :goto_4

    .line 125
    :cond_7
    :goto_5
    return-void
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    new-instance v0, Landroid/graphics/PointF;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    const/4 p1, 0x0

    .line 13
    return-object p1

    .line 14
    .line 15
    :cond_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    int-to-float p1, p1

    .line 20
    .line 21
    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 22
    .line 23
    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 27
    int-to-float p1, p1

    .line 28
    .line 29
    iput p1, v0, Landroid/graphics/PointF;->y:F

    .line 30
    :goto_0
    return-object v0
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method d()Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    const/high16 v2, -0x80000000

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->r(I)I

    .line 11
    move-result v0

    .line 12
    const/4 v3, 0x1

    .line 13
    move v4, v3

    .line 14
    .line 15
    :goto_0
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 16
    .line 17
    if-ge v4, v5, :cond_1

    .line 18
    .line 19
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 20
    .line 21
    aget-object v5, v5, v4

    .line 22
    .line 23
    .line 24
    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->r(I)I

    .line 25
    move-result v5

    .line 26
    .line 27
    if-eq v5, v0, :cond_0

    .line 28
    return v1

    .line 29
    .line 30
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return v3
.end method

.method g()Z
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_7

    .line 8
    .line 9
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 10
    .line 11
    if-eqz v0, :cond_7

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isAttachedToWindow()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    goto :goto_3

    .line 19
    .line 20
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v()I

    .line 26
    move-result v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u()I

    .line 30
    move-result v2

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u()I

    .line 35
    move-result v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v()I

    .line 39
    move-result v2

    .line 40
    :goto_0
    const/4 v3, 0x1

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D()Landroid/view/View;

    .line 46
    move-result-object v4

    .line 47
    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->b()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 60
    return v3

    .line 61
    .line 62
    :cond_2
    iget-boolean v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 63
    .line 64
    if-nez v4, :cond_3

    .line 65
    return v1

    .line 66
    .line 67
    :cond_3
    iget-boolean v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 68
    const/4 v5, -0x1

    .line 69
    .line 70
    if-eqz v4, :cond_4

    .line 71
    move v4, v5

    .line 72
    goto :goto_1

    .line 73
    :cond_4
    move v4, v3

    .line 74
    .line 75
    :goto_1
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 76
    add-int/2addr v2, v3

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6, v0, v2, v4, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->e(IIIZ)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 80
    move-result-object v6

    .line 81
    .line 82
    if-nez v6, :cond_5

    .line 83
    .line 84
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 85
    .line 86
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->d(I)I

    .line 90
    return v1

    .line 91
    .line 92
    :cond_5
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 93
    .line 94
    iget v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 95
    mul-int/2addr v4, v5

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v0, v2, v4, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->e(IIIZ)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    if-nez v0, :cond_6

    .line 102
    .line 103
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 104
    .line 105
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->d(I)I

    .line 109
    goto :goto_2

    .line 110
    .line 111
    :cond_6
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 112
    .line 113
    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 114
    add-int/2addr v0, v3

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->d(I)I

    .line 118
    .line 119
    .line 120
    :goto_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 124
    return v3

    .line 125
    :cond_7
    :goto_3
    return v1
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, -0x2

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    .line 12
    return-object v0

    .line 13
    .line 14
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    .line 18
    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 2
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public isAutoMeasureEnabled()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isLayoutRTL()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    return v1
.end method

.method n(Z)Landroid/view/View;
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->m()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->i()I

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 16
    move-result v2

    .line 17
    .line 18
    add-int/lit8 v2, v2, -0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    .line 21
    :goto_0
    if-ltz v2, :cond_4

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 25
    move-result-object v4

    .line 26
    .line 27
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/OrientationHelper;->g(Landroid/view/View;)I

    .line 31
    move-result v5

    .line 32
    .line 33
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/OrientationHelper;->d(Landroid/view/View;)I

    .line 37
    move-result v6

    .line 38
    .line 39
    if-le v6, v0, :cond_3

    .line 40
    .line 41
    if-lt v5, v1, :cond_0

    .line 42
    goto :goto_2

    .line 43
    .line 44
    :cond_0
    if-le v6, v1, :cond_2

    .line 45
    .line 46
    if-nez p1, :cond_1

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_1
    if-nez v3, :cond_3

    .line 50
    move-object v3, v4

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    :goto_1
    return-object v4

    .line 53
    .line 54
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_4
    return-object v3
.end method

.method o(Z)Landroid/view/View;
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->m()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->i()I

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    .line 20
    :goto_0
    if-ge v4, v2, :cond_4

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 24
    move-result-object v5

    .line 25
    .line 26
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/OrientationHelper;->g(Landroid/view/View;)I

    .line 30
    move-result v6

    .line 31
    .line 32
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/OrientationHelper;->d(Landroid/view/View;)I

    .line 36
    move-result v7

    .line 37
    .line 38
    if-le v7, v0, :cond_3

    .line 39
    .line 40
    if-lt v6, v1, :cond_0

    .line 41
    goto :goto_2

    .line 42
    .line 43
    :cond_0
    if-ge v6, v0, :cond_2

    .line 44
    .line 45
    if-nez p1, :cond_1

    .line 46
    goto :goto_1

    .line 47
    .line 48
    :cond_1
    if-nez v3, :cond_3

    .line 49
    move-object v3, v5

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    :goto_1
    return-object v5

    .line 52
    .line 53
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_4
    return-object v3
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 7
    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 11
    .line 12
    aget-object v1, v1, v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->t(I)V

    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 7
    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 11
    .line 12
    aget-object v1, v1, v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->t(I)V

    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->b()V

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    :goto_0
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 9
    .line 10
    if-ge p1, p2, :cond_0

    .line 11
    .line 12
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 13
    .line 14
    aget-object p2, p2, p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->e()V

    .line 18
    .line 19
    add-int/lit8 p1, p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 4
    .line 5
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 12
    .line 13
    if-ge p2, v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 16
    .line 17
    aget-object v0, v0, p2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->e()V

    .line 21
    .line 22
    add-int/lit8 p2, p2, 0x1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 27
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

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
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    return-object v1

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    .line 22
    move-result p2

    .line 23
    .line 24
    const/high16 v0, -0x80000000

    .line 25
    .line 26
    if-ne p2, v0, :cond_2

    .line 27
    return-object v1

    .line 28
    .line 29
    .line 30
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 34
    .line 35
    iget-boolean v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 36
    .line 37
    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 38
    const/4 v3, 0x1

    .line 39
    .line 40
    if-ne p2, v3, :cond_3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v()I

    .line 44
    move-result v4

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u()I

    .line 49
    move-result v4

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-direct {p0, v4, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->V(ILandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P(I)V

    .line 56
    .line 57
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 58
    .line 59
    iget v6, v5, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    .line 60
    add-int/2addr v6, v4

    .line 61
    .line 62
    iput v6, v5, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    .line 63
    .line 64
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6}, Landroidx/recyclerview/widget/OrientationHelper;->n()I

    .line 68
    move-result v6

    .line 69
    int-to-float v6, v6

    .line 70
    .line 71
    .line 72
    const v7, 0x3eaaaaab

    .line 73
    mul-float/2addr v6, v7

    .line 74
    float-to-int v6, v6

    .line 75
    .line 76
    iput v6, v5, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    .line 77
    .line 78
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 79
    .line 80
    iput-boolean v3, v5, Landroidx/recyclerview/widget/LayoutState;->mStopInFocusable:Z

    .line 81
    const/4 v6, 0x0

    .line 82
    .line 83
    iput-boolean v6, v5, Landroidx/recyclerview/widget/LayoutState;->mRecycle:Z

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, p3, v5, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 87
    .line 88
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 89
    .line 90
    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 91
    .line 92
    if-nez v2, :cond_4

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v4, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->o(II)Landroid/view/View;

    .line 96
    move-result-object p3

    .line 97
    .line 98
    if-eqz p3, :cond_4

    .line 99
    .line 100
    if-eq p3, p1, :cond_4

    .line 101
    return-object p3

    .line 102
    .line 103
    .line 104
    :cond_4
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I(I)Z

    .line 105
    move-result p3

    .line 106
    .line 107
    if-eqz p3, :cond_6

    .line 108
    .line 109
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 110
    sub-int/2addr p3, v3

    .line 111
    .line 112
    :goto_1
    if-ltz p3, :cond_8

    .line 113
    .line 114
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 115
    .line 116
    aget-object p4, p4, p3

    .line 117
    .line 118
    .line 119
    invoke-virtual {p4, v4, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->o(II)Landroid/view/View;

    .line 120
    move-result-object p4

    .line 121
    .line 122
    if-eqz p4, :cond_5

    .line 123
    .line 124
    if-eq p4, p1, :cond_5

    .line 125
    return-object p4

    .line 126
    .line 127
    :cond_5
    add-int/lit8 p3, p3, -0x1

    .line 128
    goto :goto_1

    .line 129
    :cond_6
    move p3, v6

    .line 130
    .line 131
    :goto_2
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 132
    .line 133
    if-ge p3, p4, :cond_8

    .line 134
    .line 135
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 136
    .line 137
    aget-object p4, p4, p3

    .line 138
    .line 139
    .line 140
    invoke-virtual {p4, v4, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->o(II)Landroid/view/View;

    .line 141
    move-result-object p4

    .line 142
    .line 143
    if-eqz p4, :cond_7

    .line 144
    .line 145
    if-eq p4, p1, :cond_7

    .line 146
    return-object p4

    .line 147
    .line 148
    :cond_7
    add-int/lit8 p3, p3, 0x1

    .line 149
    goto :goto_2

    .line 150
    .line 151
    :cond_8
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 152
    xor-int/2addr p3, v3

    .line 153
    const/4 p4, -0x1

    .line 154
    .line 155
    if-ne p2, p4, :cond_9

    .line 156
    move p4, v3

    .line 157
    goto :goto_3

    .line 158
    :cond_9
    move p4, v6

    .line 159
    .line 160
    :goto_3
    if-ne p3, p4, :cond_a

    .line 161
    move p3, v3

    .line 162
    goto :goto_4

    .line 163
    :cond_a
    move p3, v6

    .line 164
    .line 165
    :goto_4
    if-nez v2, :cond_c

    .line 166
    .line 167
    if-eqz p3, :cond_b

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->f()I

    .line 171
    move-result p4

    .line 172
    goto :goto_5

    .line 173
    .line 174
    .line 175
    :cond_b
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->g()I

    .line 176
    move-result p4

    .line 177
    .line 178
    .line 179
    :goto_5
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 180
    move-result-object p4

    .line 181
    .line 182
    if-eqz p4, :cond_c

    .line 183
    .line 184
    if-eq p4, p1, :cond_c

    .line 185
    return-object p4

    .line 186
    .line 187
    .line 188
    :cond_c
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I(I)Z

    .line 189
    move-result p2

    .line 190
    .line 191
    if-eqz p2, :cond_10

    .line 192
    .line 193
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 194
    sub-int/2addr p2, v3

    .line 195
    .line 196
    :goto_6
    if-ltz p2, :cond_13

    .line 197
    .line 198
    iget p4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    .line 199
    .line 200
    if-ne p2, p4, :cond_d

    .line 201
    goto :goto_8

    .line 202
    .line 203
    :cond_d
    if-eqz p3, :cond_e

    .line 204
    .line 205
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 206
    .line 207
    aget-object p4, p4, p2

    .line 208
    .line 209
    .line 210
    invoke-virtual {p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->f()I

    .line 211
    move-result p4

    .line 212
    goto :goto_7

    .line 213
    .line 214
    :cond_e
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 215
    .line 216
    aget-object p4, p4, p2

    .line 217
    .line 218
    .line 219
    invoke-virtual {p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->g()I

    .line 220
    move-result p4

    .line 221
    .line 222
    .line 223
    :goto_7
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 224
    move-result-object p4

    .line 225
    .line 226
    if-eqz p4, :cond_f

    .line 227
    .line 228
    if-eq p4, p1, :cond_f

    .line 229
    return-object p4

    .line 230
    .line 231
    :cond_f
    :goto_8
    add-int/lit8 p2, p2, -0x1

    .line 232
    goto :goto_6

    .line 233
    .line 234
    :cond_10
    :goto_9
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 235
    .line 236
    if-ge v6, p2, :cond_13

    .line 237
    .line 238
    if-eqz p3, :cond_11

    .line 239
    .line 240
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 241
    .line 242
    aget-object p2, p2, v6

    .line 243
    .line 244
    .line 245
    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->f()I

    .line 246
    move-result p2

    .line 247
    goto :goto_a

    .line 248
    .line 249
    :cond_11
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 250
    .line 251
    aget-object p2, p2, v6

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->g()I

    .line 255
    move-result p2

    .line 256
    .line 257
    .line 258
    :goto_a
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 259
    move-result-object p2

    .line 260
    .line 261
    if-eqz p2, :cond_12

    .line 262
    .line 263
    if-eq p2, p1, :cond_12

    .line 264
    return-object p2

    .line 265
    .line 266
    :cond_12
    add-int/lit8 v6, v6, 0x1

    .line 267
    goto :goto_9

    .line 268
    :cond_13
    return-object v1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 7
    move-result v0

    .line 8
    .line 9
    if-lez v0, :cond_2

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o(Z)Landroid/view/View;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n(Z)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 27
    move-result v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 31
    move-result v0

    .line 32
    .line 33
    if-ge v1, v0, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 47
    nop

    .line 48
    :cond_2
    :goto_0
    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C(III)V

    .line 5
    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->b()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 9
    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    .line 1
    .line 2
    const/16 p1, 0x8

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C(III)V

    .line 6
    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    const/4 p1, 0x2

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C(III)V

    .line 5
    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    .line 1
    const/4 p1, 0x4

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C(III)V

    .line 5
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    .line 5
    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 4
    const/4 p1, -0x1

    .line 5
    .line 6
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 7
    .line 8
    const/high16 p1, -0x80000000

    .line 9
    .line 10
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 11
    const/4 p1, 0x0

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 14
    .line 15
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->c()V

    .line 19
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 7
    .line 8
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 9
    .line 10
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 11
    const/4 v1, -0x1

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->c()V

    .line 17
    .line 18
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->e()V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 25
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;)V

    .line 12
    return-object v0

    .line 13
    .line 14
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;-><init>()V

    .line 18
    .line 19
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 20
    .line 21
    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 22
    .line 23
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 24
    .line 25
    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 26
    .line 27
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    .line 28
    .line 29
    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    .line 30
    .line 31
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 32
    const/4 v2, 0x0

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget-object v3, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 37
    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    iput-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    .line 41
    array-length v3, v3

    .line 42
    .line 43
    iput v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 44
    .line 45
    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 46
    .line 47
    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_1
    iput v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 54
    move-result v1

    .line 55
    .line 56
    if-lez v1, :cond_5

    .line 57
    .line 58
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v()I

    .line 64
    move-result v1

    .line 65
    goto :goto_1

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u()I

    .line 69
    move-result v1

    .line 70
    .line 71
    :goto_1
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p()I

    .line 75
    move-result v1

    .line 76
    .line 77
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 78
    .line 79
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 80
    .line 81
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 82
    .line 83
    new-array v1, v1, [I

    .line 84
    .line 85
    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    .line 86
    .line 87
    :goto_2
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 88
    .line 89
    if-ge v2, v1, :cond_6

    .line 90
    .line 91
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 92
    .line 93
    const/high16 v3, -0x80000000

    .line 94
    .line 95
    if-eqz v1, :cond_3

    .line 96
    .line 97
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 98
    .line 99
    aget-object v1, v1, v2

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->n(I)I

    .line 103
    move-result v1

    .line 104
    .line 105
    if-eq v1, v3, :cond_4

    .line 106
    .line 107
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->i()I

    .line 111
    move-result v3

    .line 112
    :goto_3
    sub-int/2addr v1, v3

    .line 113
    goto :goto_4

    .line 114
    .line 115
    :cond_3
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 116
    .line 117
    aget-object v1, v1, v2

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->r(I)I

    .line 121
    move-result v1

    .line 122
    .line 123
    if-eq v1, v3, :cond_4

    .line 124
    .line 125
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->m()I

    .line 129
    move-result v3

    .line 130
    goto :goto_3

    .line 131
    .line 132
    :cond_4
    :goto_4
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    .line 133
    .line 134
    aput v1, v3, v2

    .line 135
    .line 136
    add-int/lit8 v2, v2, 0x1

    .line 137
    goto :goto_2

    .line 138
    :cond_5
    const/4 v1, -0x1

    .line 139
    .line 140
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 141
    .line 142
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 143
    .line 144
    iput v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 145
    :cond_6
    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g()Z

    .line 6
    :cond_0
    return-void
.end method

.method p()I
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n(Z)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o(Z)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    :goto_0
    if-nez v0, :cond_1

    .line 17
    const/4 v0, -0x1

    .line 18
    goto :goto_1

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 22
    move-result v0

    .line 23
    :goto_1
    return v0
.end method

.method public r([I)[I
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 5
    .line 6
    new-array p1, p1, [I

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    array-length v0, p1

    .line 9
    .line 10
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 11
    .line 12
    if-lt v0, v1, :cond_2

    .line 13
    :goto_0
    const/4 v0, 0x0

    .line 14
    .line 15
    :goto_1
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 16
    .line 17
    if-ge v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 20
    .line 21
    aget-object v1, v1, v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->h()I

    .line 25
    move-result v1

    .line 26
    .line 27
    aput v1, p1, v0

    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    return-object p1

    .line 32
    .line 33
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    const-string v2, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v2, ", array size:"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    array-length p1, p1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    throw v0
.end method

.method scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    goto :goto_1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J(ILandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p2, v0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 19
    move-result p3

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 22
    .line 23
    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    .line 24
    .line 25
    if-ge v0, p3, :cond_1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_1
    if-gez p1, :cond_2

    .line 29
    neg-int p1, p3

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    move p1, p3

    .line 32
    .line 33
    :goto_0
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 34
    neg-int v0, p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/OrientationHelper;->r(I)V

    .line 38
    .line 39
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 40
    .line 41
    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 42
    .line 43
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 44
    .line 45
    iput v1, p3, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;)V

    .line 49
    return p1

    .line 50
    :cond_3
    :goto_1
    return v1
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public scrollToPosition(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 7
    .line 8
    if-eq v1, p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->c()V

    .line 12
    .line 13
    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 14
    .line 15
    const/high16 p1, -0x80000000

    .line 16
    .line 17
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 21
    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 8
    move-result v1

    .line 9
    add-int/2addr v0, v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 13
    move-result v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 17
    move-result v2

    .line 18
    add-int/2addr v1, v2

    .line 19
    .line 20
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 21
    const/4 v3, 0x1

    .line 22
    .line 23
    if-ne v2, v3, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 27
    move-result p1

    .line 28
    add-int/2addr p1, v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getMinimumHeight()I

    .line 32
    move-result v1

    .line 33
    .line 34
    .line 35
    invoke-static {p3, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    .line 36
    move-result p1

    .line 37
    .line 38
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 39
    .line 40
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 41
    mul-int/2addr p3, v1

    .line 42
    add-int/2addr p3, v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getMinimumWidth()I

    .line 46
    move-result v0

    .line 47
    .line 48
    .line 49
    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    .line 50
    move-result p2

    .line 51
    goto :goto_0

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 55
    move-result p1

    .line 56
    add-int/2addr p1, v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getMinimumWidth()I

    .line 60
    move-result v0

    .line 61
    .line 62
    .line 63
    invoke-static {p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    .line 64
    move-result p2

    .line 65
    .line 66
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 67
    .line 68
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 69
    mul-int/2addr p1, v0

    .line 70
    add-int/2addr p1, v1

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getMinimumHeight()I

    .line 74
    move-result v0

    .line 75
    .line 76
    .line 77
    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    .line 78
    move-result p1

    .line 79
    .line 80
    .line 81
    :goto_0
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    .line 82
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v0, "invalid orientation."

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    throw p1

    .line 15
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 19
    .line 20
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 21
    .line 22
    if-ne p1, v0, :cond_2

    .line 23
    return-void

    .line 24
    .line 25
    :cond_2
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 26
    .line 27
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 32
    .line 33
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 37
    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 11
    .line 12
    if-eq v1, p1, :cond_0

    .line 13
    .line 14
    iput-boolean p1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 15
    .line 16
    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 20
    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 1
    .line 2
    new-instance p2, Landroidx/recyclerview/widget/LinearSmoothScroller;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 16
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method u()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 16
    move-result v1

    .line 17
    :goto_0
    return v1
.end method

.method v()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 18
    move-result v0

    .line 19
    :goto_0
    return v0
.end method
