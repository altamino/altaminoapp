.class public Lcom/narvii/list/refresh/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent;
.implements Landroidx/core/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final ALPHA_ANIMATION_DURATION:I = 0x12c

.field private static final ANIMATE_TO_START_DURATION:I = 0xc8

.field private static final ANIMATE_TO_TRIGGER_DURATION:I = 0xc8

.field private static final CIRCLE_BG_LIGHT:I = -0x50506

.field private static final CIRCLE_DIAMETER:I = 0x28

.field private static final CIRCLE_DIAMETER_LARGE:I = 0x38

.field private static final DECELERATE_INTERPOLATION_FACTOR:F = 2.0f

.field public static final DEFAULT:I = 0x1

.field private static final DEFAULT_CIRCLE_TARGET:I = 0x40

.field private static final DRAG_RATE:F = 0.5f

.field private static final INVALID_POINTER:I = -0x1

.field public static final LARGE:I = 0x0

.field private static final LAYOUT_ATTRS:[I

.field private static final LOG_TAG:Ljava/lang/String; = "SwipeRefreshLayout"

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_PROGRESS_ANGLE:F = 0.8f

.field private static final SCALE_DOWN_DURATION:I = 0x96

.field private static final STARTING_PROGRESS_ALPHA:I = 0x4c


# instance fields
.field private mActivePointerId:I

.field private mAlphaMaxAnimation:Landroid/view/animation/Animation;

.field private mAlphaStartAnimation:Landroid/view/animation/Animation;

.field private final mAnimateToCorrectPosition:Landroid/view/animation/Animation;

.field private final mAnimateToStartPosition:Landroid/view/animation/Animation;

.field private mCircleHeight:I

.field private mCircleView:Lcom/narvii/list/refresh/CircleImageView;

.field private mCircleViewIndex:I

.field private mCircleWidth:I

.field private mCurrentTargetOffsetTop:I

.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mFrom:I

.field private mInitialDownY:F

.field private mInitialMotionY:F

.field public mIsBeingDragged:Z

.field private mListener:Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;

.field private mMediumAnimationDuration:I

.field private mNestedScrollInProgress:Z

.field private final mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field private final mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field private mNotify:Z

.field private mOriginalOffsetCalculated:Z

.field protected mOriginalOffsetTop:I

.field private final mParentOffsetInWindow:[I

.field private final mParentScrollConsumed:[I

.field private mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

.field private mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

.field private mRefreshing:Z

.field private mReturningToStart:Z

.field private mReversed:Z

.field private mScale:Z

.field private mScaleAnimation:Landroid/view/animation/Animation;

.field private mScaleDownAnimation:Landroid/view/animation/Animation;

.field private mScaleDownToStartAnimation:Landroid/view/animation/Animation;

.field private mSpinnerFinalOffset:F

.field private mStartingScale:F

.field private mTarget:Landroid/view/View;

.field private mTotalDragDistance:F

.field private mTotalUnconsumed:F

.field private mTouchSlop:I

.field private mUsingCustomStart:Z

.field private shouldDispatchNestedScrollingEvents:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x101000e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mRefreshing:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalDragDistance:F

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mParentScrollConsumed:[I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    iput-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mOriginalOffsetCalculated:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mActivePointerId:I

    iput v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleViewIndex:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->shouldDispatchNestedScrollingEvents:Z

    .line 3
    new-instance v2, Lcom/narvii/list/refresh/SwipeRefreshLayout$1;

    invoke-direct {v2, p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout$1;-><init>(Lcom/narvii/list/refresh/SwipeRefreshLayout;)V

    iput-object v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    .line 4
    new-instance v2, Lcom/narvii/list/refresh/SwipeRefreshLayout$6;

    invoke-direct {v2, p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout$6;-><init>(Lcom/narvii/list/refresh/SwipeRefreshLayout;)V

    iput-object v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    .line 5
    new-instance v2, Lcom/narvii/list/refresh/SwipeRefreshLayout$7;

    invoke-direct {v2, p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout$7;-><init>(Lcom/narvii/list/refresh/SwipeRefreshLayout;)V

    iput-object v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    .line 6
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTouchSlop:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mMediumAnimationDuration:I

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 9
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    sget-object v2, Lcom/narvii/list/refresh/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    .line 10
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 14
    iget p2, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x42200000    # 40.0f

    mul-float v2, p2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleWidth:I

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleHeight:I

    .line 15
    invoke-direct {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->createProgressView()V

    .line 16
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    const/high16 p2, 0x42800000    # 64.0f

    .line 17
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 18
    new-instance p1, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 19
    new-instance p1, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 20
    invoke-virtual {p0, v1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Lcom/narvii/list/refresh/CircleImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    return-object p0
.end method

.method private animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mFrom:I

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    .line 10
    .line 11
    const-wide/16 v0, 0xc8

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Lcom/narvii/list/refresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 36
    .line 37
    iget-object p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 41
    return-void
.end method

.method private animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScale:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mFrom:I

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    .line 18
    .line 19
    const-wide/16 v0, 0xc8

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lcom/narvii/list/refresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 37
    .line 38
    :cond_1
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 44
    .line 45
    iget-object p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 49
    :goto_0
    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mListener:Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNotify:Z

    return p0
.end method

.method private createProgressView()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/list/refresh/CircleImageView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    const/high16 v2, 0x41a00000    # 20.0f

    .line 9
    .line 10
    .line 11
    const v3, -0x50506

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, v3, v2}, Lcom/narvii/list/refresh/CircleImageView;-><init>(Landroid/content/Context;IF)V

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 17
    .line 18
    new-instance v0, Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1, p0}, Lcom/narvii/list/refresh/MaterialProgressDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v3}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setBackgroundColor(I)V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 40
    .line 41
    const/16 v1, 0x8

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 50
    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Lcom/narvii/list/refresh/MaterialProgressDrawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mRefreshing:Z

    return p0
.end method

.method private ensureTarget()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 9
    move-result v1

    .line 10
    .line 11
    if-ge v0, v1, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v2

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    iput-object v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    :goto_1
    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScale:Z

    return p0
.end method

.method static bridge synthetic g(Lcom/narvii/list/refresh/SwipeRefreshLayout;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    return p0
.end method

.method private getMotionEventY(Landroid/view/MotionEvent;I)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/core/view/MotionEventCompat;->a(Landroid/view/MotionEvent;I)I

    .line 4
    move-result p2

    .line 5
    .line 6
    if-gez p2, :cond_0

    .line 7
    .line 8
    const/high16 p1, -0x40800000    # -1.0f

    .line 9
    return p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p1, p2}, Landroidx/core/view/MotionEventCompat;->g(Landroid/view/MotionEvent;I)F

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method static bridge synthetic h(Lcom/narvii/list/refresh/SwipeRefreshLayout;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mStartingScale:F

    return p0
.end method

.method static bridge synthetic i(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mUsingCustomStart:Z

    return p0
.end method

.method private isAlphaUsedForScale()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isAnimationRunning(Landroid/view/animation/Animation;)Z
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method

.method static bridge synthetic j(Lcom/narvii/list/refresh/SwipeRefreshLayout;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    return-void
.end method

.method static bridge synthetic k(Lcom/narvii/list/refresh/SwipeRefreshLayout;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->moveToStart(F)V

    return-void
.end method

.method static bridge synthetic l(Lcom/narvii/list/refresh/SwipeRefreshLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->reset()V

    return-void
.end method

.method static bridge synthetic m(Lcom/narvii/list/refresh/SwipeRefreshLayout;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setAnimationProgress(F)V

    return-void
.end method

.method private moveToStart(F)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mFrom:I

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 5
    sub-int/2addr v1, v0

    .line 6
    int-to-float v1, v1

    .line 7
    mul-float/2addr v1, p1

    .line 8
    float-to-int p1, v1

    .line 9
    add-int/2addr v0, p1

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 15
    move-result p1

    .line 16
    sub-int/2addr v0, p1

    .line 17
    const/4 p1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 21
    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/list/refresh/SwipeRefreshLayout;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    return-void
.end method

.method static bridge synthetic o(Lcom/narvii/list/refresh/SwipeRefreshLayout;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->b(Landroid/view/MotionEvent;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->e(Landroid/view/MotionEvent;I)I

    .line 8
    move-result v1

    .line 9
    .line 10
    iget v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mActivePointerId:I

    .line 11
    .line 12
    if-ne v1, v2, :cond_1

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
    .line 20
    :goto_0
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->e(Landroid/view/MotionEvent;I)I

    .line 21
    move-result p1

    .line 22
    .line 23
    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mActivePointerId:I

    .line 24
    :cond_1
    return-void
.end method

.method private reset()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->stop()V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    const/16 v0, 0xff

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setColorViewAlpha(I)V

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScale:Z

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 34
    .line 35
    iget v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 36
    sub-int/2addr v0, v1

    .line 37
    const/4 v1, 0x1

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v0, v1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 41
    .line 42
    :goto_0
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 46
    move-result v0

    .line 47
    .line 48
    iput v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 49
    return-void
.end method

.method private setAnimationProgress(F)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->isAlphaUsedForScale()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/high16 v0, 0x437f0000    # 255.0f

    .line 9
    mul-float/2addr p1, v0

    .line 10
    float-to-int p1, p1

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setColorViewAlpha(I)V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->R0(Landroid/view/View;F)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 22
    .line 23
    .line 24
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->S0(Landroid/view/View;F)V

    .line 25
    :goto_0
    return-void
.end method

.method private setColorViewAlpha(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setAlpha(I)V

    .line 15
    return-void
.end method

.method private setRefreshing(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mRefreshing:Z

    if-eq v0, p1, :cond_1

    iput-boolean p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNotify:Z

    .line 4
    invoke-direct {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->ensureTarget()V

    iput-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mRefreshing:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iget-object p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    .line 6
    invoke-direct {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setTargetOffsetTopAndBottom(IZ)V
    .locals 0

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/view/View;->bringToFront()V

    .line 6
    .line 7
    iget-object p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 16
    move-result p1

    .line 17
    .line 18
    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 19
    return-void
.end method

.method private startAlphaAnimation(II)Landroid/view/animation/Animation;
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScale:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->isAlphaUsedForScale()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    return-object v1

    .line 13
    .line 14
    :cond_0
    new-instance v0, Lcom/narvii/list/refresh/SwipeRefreshLayout$4;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/list/refresh/SwipeRefreshLayout$4;-><init>(Lcom/narvii/list/refresh/SwipeRefreshLayout;II)V

    .line 18
    .line 19
    const-wide/16 p1, 0x12c

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1}, Lcom/narvii/list/refresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 38
    return-object v0
.end method

.method private startProgressAlphaMaxAnimation()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->getAlpha()I

    .line 6
    move-result v0

    .line 7
    .line 8
    const/16 v1, 0xff

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    .line 15
    return-void
.end method

.method private startProgressAlphaStartAnimation()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->getAlpha()I

    .line 6
    move-result v0

    .line 7
    .line 8
    const/16 v1, 0x4c

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    .line 15
    return-void
.end method

.method private startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/list/refresh/SwipeRefreshLayout$3;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout$3;-><init>(Lcom/narvii/list/refresh/SwipeRefreshLayout;)V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    .line 8
    .line 9
    const-wide/16 v1, 0x96

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 30
    return-void
.end method

.method private startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mFrom:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->isAlphaUsedForScale()Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->getAlpha()I

    .line 14
    move-result p1

    .line 15
    int-to-float p1, p1

    .line 16
    .line 17
    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mStartingScale:F

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->L(Landroid/view/View;)F

    .line 24
    move-result p1

    .line 25
    .line 26
    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mStartingScale:F

    .line 27
    .line 28
    :goto_0
    new-instance p1, Lcom/narvii/list/refresh/SwipeRefreshLayout$8;

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout$8;-><init>(Lcom/narvii/list/refresh/SwipeRefreshLayout;)V

    .line 32
    .line 33
    iput-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    .line 34
    .line 35
    const-wide/16 v0, 0x96

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 39
    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Lcom/narvii/list/refresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 46
    .line 47
    :cond_1
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 53
    .line 54
    iget-object p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 58
    return-void
.end method

.method private startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 9
    .line 10
    const/16 v1, 0xff

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setAlpha(I)V

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/list/refresh/SwipeRefreshLayout$2;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout$2;-><init>(Lcom/narvii/list/refresh/SwipeRefreshLayout;)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    .line 21
    .line 22
    iget v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mMediumAnimationDuration:I

    .line 23
    int-to-long v1, v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 34
    .line 35
    :cond_0
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 46
    return-void
.end method


# virtual methods
.method public canChildScrollUp()Z
    .locals 5

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mReversed:Z

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 7
    .line 8
    instance-of v1, v0, Landroid/widget/AbsListView;

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    check-cast v0, Landroid/widget/AbsListView;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    move-result v1

    .line 18
    .line 19
    if-lez v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 23
    move-result v3

    .line 24
    const/4 v4, 0x1

    .line 25
    sub-int/2addr v1, v4

    .line 26
    .line 27
    if-lt v3, v1, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 35
    move-result v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 39
    move-result v3

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 43
    move-result v0

    .line 44
    sub-int/2addr v3, v0

    .line 45
    .line 46
    if-le v1, v3, :cond_1

    .line 47
    :cond_0
    move v2, v4

    .line 48
    :cond_1
    return v2

    .line 49
    .line 50
    :cond_2
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 51
    const/4 v1, -0x1

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->g(Landroid/view/View;I)Z

    .line 55
    move-result v0

    .line 56
    return v0
.end method

.method public configSpinnerBeforeMove()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 6
    .line 7
    const/16 v1, 0x4c

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setAlpha(I)V

    .line 11
    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->shouldDispatchNestedScrollingEvents:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

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
    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->shouldDispatchNestedScrollingEvents:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

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
    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->shouldDispatchNestedScrollingEvents:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

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
    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->shouldDispatchNestedScrollingEvents:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

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

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mReversed:Z

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 8
    .line 9
    if-ne p2, v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 13
    move-result v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 17
    move-result v2

    .line 18
    int-to-float v2, v2

    .line 19
    const/4 v3, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 23
    .line 24
    const/high16 v2, 0x3f800000    # 1.0f

    .line 25
    .line 26
    const/high16 v3, -0x40800000    # -1.0f

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v0, v1

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 35
    move-result p2

    .line 36
    .line 37
    if-eq v0, v1, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 41
    :cond_1
    return p2
.end method

.method public finishSpinner(F)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 3
    .line 4
    cmpl-float p1, p1, v0

    .line 5
    .line 6
    if-lez p1, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setRefreshing(ZZ)V

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mRefreshing:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScale:Z

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    new-instance v0, Lcom/narvii/list/refresh/SwipeRefreshLayout$5;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout$5;-><init>(Lcom/narvii/list/refresh/SwipeRefreshLayout;)V

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    .line 33
    :goto_0
    iget v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->showArrow(Z)V

    .line 42
    :goto_1
    return-void
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleViewIndex:I

    if-gez v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_1

    return v0

    :cond_1
    if-lt p2, v0, :cond_2

    add-int/lit8 p2, p2, 0x1

    :cond_2
    return p2
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->a()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getProgressCircleDiameter()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

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
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->m()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isRefreshing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mRefreshing:Z

    return v0
.end method

.method public moveSpinner(F)V
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->showArrow(Z)V

    .line 7
    .line 8
    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 9
    .line 10
    div-float v0, p1, v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 14
    move-result v0

    .line 15
    .line 16
    const/high16 v2, 0x3f800000    # 1.0f

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    .line 20
    move-result v0

    .line 21
    float-to-double v3, v0

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    const-wide v5, 0x3fd999999999999aL    # 0.4

    .line 27
    sub-double/2addr v3, v5

    .line 28
    .line 29
    const-wide/16 v5, 0x0

    .line 30
    .line 31
    .line 32
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    .line 33
    move-result-wide v3

    .line 34
    double-to-float v3, v3

    .line 35
    .line 36
    const/high16 v4, 0x40a00000    # 5.0f

    .line 37
    mul-float/2addr v3, v4

    .line 38
    .line 39
    const/high16 v4, 0x40400000    # 3.0f

    .line 40
    div-float/2addr v3, v4

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 44
    move-result v4

    .line 45
    .line 46
    iget v5, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 47
    sub-float/2addr v4, v5

    .line 48
    .line 49
    iget-boolean v5, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mUsingCustomStart:Z

    .line 50
    .line 51
    if-eqz v5, :cond_0

    .line 52
    .line 53
    iget v5, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    .line 54
    .line 55
    iget v6, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 56
    int-to-float v6, v6

    .line 57
    sub-float/2addr v5, v6

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_0
    iget v5, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    .line 61
    .line 62
    :goto_0
    const/high16 v6, 0x40000000    # 2.0f

    .line 63
    .line 64
    mul-float v7, v5, v6

    .line 65
    .line 66
    .line 67
    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    .line 68
    move-result v4

    .line 69
    div-float/2addr v4, v5

    .line 70
    const/4 v7, 0x0

    .line 71
    .line 72
    .line 73
    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    .line 74
    move-result v4

    .line 75
    .line 76
    const/high16 v8, 0x40800000    # 4.0f

    .line 77
    div-float/2addr v4, v8

    .line 78
    float-to-double v8, v4

    .line 79
    .line 80
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 81
    .line 82
    .line 83
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 84
    move-result-wide v10

    .line 85
    sub-double/2addr v8, v10

    .line 86
    double-to-float v4, v8

    .line 87
    mul-float/2addr v4, v6

    .line 88
    .line 89
    mul-float v8, v5, v4

    .line 90
    mul-float/2addr v8, v6

    .line 91
    .line 92
    iget v9, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 93
    mul-float/2addr v5, v0

    .line 94
    add-float/2addr v5, v8

    .line 95
    float-to-int v0, v5

    .line 96
    add-int/2addr v9, v0

    .line 97
    .line 98
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 102
    move-result v0

    .line 103
    .line 104
    if-eqz v0, :cond_1

    .line 105
    .line 106
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 107
    const/4 v5, 0x0

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScale:Z

    .line 113
    .line 114
    if-nez v0, :cond_2

    .line 115
    .line 116
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 117
    .line 118
    .line 119
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->R0(Landroid/view/View;F)V

    .line 120
    .line 121
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 122
    .line 123
    .line 124
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->S0(Landroid/view/View;F)V

    .line 125
    .line 126
    :cond_2
    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScale:Z

    .line 127
    .line 128
    if-eqz v0, :cond_3

    .line 129
    .line 130
    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 131
    .line 132
    div-float v0, p1, v0

    .line 133
    .line 134
    .line 135
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    .line 136
    move-result v0

    .line 137
    .line 138
    .line 139
    invoke-direct {p0, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 140
    .line 141
    :cond_3
    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 142
    .line 143
    cmpg-float p1, p1, v0

    .line 144
    .line 145
    if-gez p1, :cond_4

    .line 146
    .line 147
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->getAlpha()I

    .line 151
    move-result p1

    .line 152
    .line 153
    const/16 v0, 0x4c

    .line 154
    .line 155
    if-le p1, v0, :cond_5

    .line 156
    .line 157
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    .line 158
    .line 159
    .line 160
    invoke-direct {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    .line 161
    move-result p1

    .line 162
    .line 163
    if-nez p1, :cond_5

    .line 164
    .line 165
    .line 166
    invoke-direct {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->startProgressAlphaStartAnimation()V

    .line 167
    goto :goto_1

    .line 168
    .line 169
    :cond_4
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->getAlpha()I

    .line 173
    move-result p1

    .line 174
    .line 175
    const/16 v0, 0xff

    .line 176
    .line 177
    if-ge p1, v0, :cond_5

    .line 178
    .line 179
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    .line 180
    .line 181
    .line 182
    invoke-direct {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    .line 183
    move-result p1

    .line 184
    .line 185
    if-nez p1, :cond_5

    .line 186
    .line 187
    .line 188
    invoke-direct {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->startProgressAlphaMaxAnimation()V

    .line 189
    .line 190
    .line 191
    :cond_5
    :goto_1
    const p1, 0x3f4ccccd    # 0.8f

    .line 192
    .line 193
    mul-float v0, v3, p1

    .line 194
    .line 195
    iget-object v5, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 196
    .line 197
    .line 198
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 199
    move-result p1

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5, v7, p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 203
    .line 204
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 205
    .line 206
    .line 207
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 208
    move-result v0

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setArrowScale(F)V

    .line 212
    .line 213
    .line 214
    const p1, 0x3ecccccd    # 0.4f

    .line 215
    mul-float/2addr v3, p1

    .line 216
    .line 217
    const/high16 p1, -0x41800000    # -0.25f

    .line 218
    add-float/2addr v3, p1

    .line 219
    mul-float/2addr v4, v6

    .line 220
    add-float/2addr v3, v4

    .line 221
    .line 222
    const/high16 p1, 0x3f000000    # 0.5f

    .line 223
    mul-float/2addr v3, p1

    .line 224
    .line 225
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1, v3}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setProgressRotation(F)V

    .line 229
    .line 230
    iget p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 231
    sub-int/2addr v9, p1

    .line 232
    .line 233
    .line 234
    invoke-direct {p0, v9, v1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 235
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->reset()V

    .line 7
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->ensureTarget()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 6
    .line 7
    instance-of v0, v0, Lcom/narvii/widget/NVListView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 13
    move-result v0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 20
    .line 21
    iget-object v1, v0, Lcom/narvii/widget/NVListView;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/widget/NVListView;->getOverscrollStretchView()Landroid/view/View;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iput-object p0, v0, Lcom/narvii/widget/NVListView;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 34
    .line 35
    instance-of v1, v0, Lcom/narvii/widget/NVListView;

    .line 36
    const/4 v2, 0x0

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    move-object v1, v0

    .line 40
    .line 41
    check-cast v1, Lcom/narvii/widget/NVListView;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/narvii/widget/NVListView;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 44
    .line 45
    if-ne v1, p0, :cond_1

    .line 46
    return v2

    .line 47
    .line 48
    :cond_1
    instance-of v1, v0, Lcom/narvii/widget/NVScrollView;

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    check-cast v0, Lcom/narvii/widget/NVScrollView;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/narvii/widget/NVScrollView;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 55
    .line 56
    if-ne v0, p0, :cond_2

    .line 57
    return v2

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->c(Landroid/view/MotionEvent;)I

    .line 61
    move-result v0

    .line 62
    .line 63
    iget-boolean v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mReturningToStart:Z

    .line 64
    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    if-nez v0, :cond_3

    .line 68
    .line 69
    iput-boolean v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mReturningToStart:Z

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 73
    move-result v1

    .line 74
    .line 75
    if-eqz v1, :cond_e

    .line 76
    .line 77
    iget-boolean v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mReturningToStart:Z

    .line 78
    .line 79
    if-nez v1, :cond_e

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->canChildScrollUp()Z

    .line 83
    move-result v1

    .line 84
    .line 85
    if-nez v1, :cond_e

    .line 86
    .line 87
    iget-boolean v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mRefreshing:Z

    .line 88
    .line 89
    if-nez v1, :cond_e

    .line 90
    .line 91
    iget-boolean v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 92
    .line 93
    if-eqz v1, :cond_4

    .line 94
    .line 95
    goto/16 :goto_2

    .line 96
    .line 97
    :cond_4
    const/high16 v1, -0x40800000    # -1.0f

    .line 98
    const/4 v3, 0x1

    .line 99
    .line 100
    if-eqz v0, :cond_b

    .line 101
    const/4 v4, -0x1

    .line 102
    .line 103
    if-eq v0, v3, :cond_a

    .line 104
    const/4 v5, 0x2

    .line 105
    .line 106
    if-eq v0, v5, :cond_6

    .line 107
    const/4 v1, 0x3

    .line 108
    .line 109
    if-eq v0, v1, :cond_a

    .line 110
    const/4 v1, 0x6

    .line 111
    .line 112
    if-eq v0, v1, :cond_5

    .line 113
    goto :goto_1

    .line 114
    .line 115
    .line 116
    :cond_5
    invoke-direct {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 117
    goto :goto_1

    .line 118
    .line 119
    :cond_6
    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mActivePointerId:I

    .line 120
    .line 121
    if-ne v0, v4, :cond_7

    .line 122
    .line 123
    sget-object p1, Lcom/narvii/list/refresh/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    .line 124
    .line 125
    const-string v0, "Got ACTION_MOVE event but don\'t have an active pointer id."

    .line 126
    .line 127
    .line 128
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return v2

    .line 130
    .line 131
    .line 132
    :cond_7
    invoke-direct {p0, p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->getMotionEventY(Landroid/view/MotionEvent;I)F

    .line 133
    move-result p1

    .line 134
    .line 135
    cmpl-float v0, p1, v1

    .line 136
    .line 137
    if-nez v0, :cond_8

    .line 138
    return v2

    .line 139
    .line 140
    :cond_8
    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mInitialDownY:F

    .line 141
    sub-float/2addr p1, v0

    .line 142
    .line 143
    iget-boolean v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mReversed:Z

    .line 144
    .line 145
    if-eqz v1, :cond_9

    .line 146
    goto :goto_0

    .line 147
    :cond_9
    move v4, v3

    .line 148
    :goto_0
    int-to-float v1, v4

    .line 149
    mul-float/2addr v1, p1

    .line 150
    .line 151
    iget p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTouchSlop:I

    .line 152
    int-to-float v2, p1

    .line 153
    .line 154
    cmpl-float v1, v1, v2

    .line 155
    .line 156
    if-lez v1, :cond_d

    .line 157
    .line 158
    iget-boolean v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 159
    .line 160
    if-nez v1, :cond_d

    .line 161
    int-to-float p1, p1

    .line 162
    add-float/2addr v0, p1

    .line 163
    .line 164
    iput v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mInitialMotionY:F

    .line 165
    .line 166
    iput-boolean v3, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 167
    .line 168
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 169
    .line 170
    const/16 v0, 0x4c

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setAlpha(I)V

    .line 174
    goto :goto_1

    .line 175
    .line 176
    :cond_a
    iput-boolean v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 177
    .line 178
    iput v4, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mActivePointerId:I

    .line 179
    goto :goto_1

    .line 180
    .line 181
    :cond_b
    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 182
    .line 183
    iget-object v4, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 187
    move-result v4

    .line 188
    sub-int/2addr v0, v4

    .line 189
    .line 190
    .line 191
    invoke-direct {p0, v0, v3}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 192
    .line 193
    .line 194
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->e(Landroid/view/MotionEvent;I)I

    .line 195
    move-result v0

    .line 196
    .line 197
    iput v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mActivePointerId:I

    .line 198
    .line 199
    iput-boolean v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 200
    .line 201
    .line 202
    invoke-direct {p0, p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->getMotionEventY(Landroid/view/MotionEvent;I)F

    .line 203
    move-result p1

    .line 204
    .line 205
    cmpl-float v0, p1, v1

    .line 206
    .line 207
    if-nez v0, :cond_c

    .line 208
    return v2

    .line 209
    .line 210
    :cond_c
    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mInitialDownY:F

    .line 211
    .line 212
    :cond_d
    :goto_1
    iget-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 213
    return p1

    .line 214
    :cond_e
    :goto_2
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 8
    move-result p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    move-result p3

    .line 13
    .line 14
    if-nez p3, :cond_0

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    iget-object p3, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 18
    .line 19
    if-nez p3, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->ensureTarget()V

    .line 23
    .line 24
    :cond_1
    iget-object p3, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 25
    .line 26
    if-nez p3, :cond_2

    .line 27
    return-void

    .line 28
    .line 29
    .line 30
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 31
    move-result p4

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 35
    move-result p5

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 39
    move-result v0

    .line 40
    .line 41
    sub-int v0, p1, v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 45
    move-result v1

    .line 46
    sub-int/2addr v0, v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 50
    move-result v1

    .line 51
    sub-int/2addr p2, v1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 55
    move-result v1

    .line 56
    sub-int/2addr p2, v1

    .line 57
    add-int/2addr v0, p4

    .line 58
    add-int/2addr p2, p5

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3, p4, p5, v0, p2}, Landroid/view/View;->layout(IIII)V

    .line 62
    .line 63
    iget-object p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 67
    move-result p2

    .line 68
    .line 69
    iget-object p3, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 73
    move-result p3

    .line 74
    .line 75
    iget-object p4, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 76
    .line 77
    div-int/lit8 p1, p1, 0x2

    .line 78
    .line 79
    div-int/lit8 p2, p2, 0x2

    .line 80
    .line 81
    sub-int p5, p1, p2

    .line 82
    .line 83
    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 84
    add-int/2addr p1, p2

    .line 85
    add-int/2addr p3, v0

    .line 86
    .line 87
    .line 88
    invoke-virtual {p4, p5, v0, p1, p3}, Landroid/view/View;->layout(IIII)V

    .line 89
    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->ensureTarget()V

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    return-void

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 19
    move-result p2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 23
    move-result v0

    .line 24
    sub-int/2addr p2, v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 28
    move-result v0

    .line 29
    sub-int/2addr p2, v0

    .line 30
    .line 31
    const/high16 v0, 0x40000000    # 2.0f

    .line 32
    .line 33
    .line 34
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 35
    move-result p2

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 39
    move-result v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 43
    move-result v2

    .line 44
    sub-int/2addr v1, v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 48
    move-result v2

    .line 49
    sub-int/2addr v1, v2

    .line 50
    .line 51
    .line 52
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 53
    move-result v1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2, v1}, Landroid/view/View;->measure(II)V

    .line 57
    .line 58
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 59
    .line 60
    iget p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleWidth:I

    .line 61
    .line 62
    .line 63
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 64
    move-result p2

    .line 65
    .line 66
    iget v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleHeight:I

    .line 67
    .line 68
    .line 69
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 70
    move-result v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    .line 74
    .line 75
    iget-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mUsingCustomStart:Z

    .line 76
    .line 77
    if-nez p1, :cond_2

    .line 78
    .line 79
    iget-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mOriginalOffsetCalculated:Z

    .line 80
    .line 81
    if-nez p1, :cond_2

    .line 82
    const/4 p1, 0x1

    .line 83
    .line 84
    iput-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mOriginalOffsetCalculated:Z

    .line 85
    .line 86
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 90
    move-result p1

    .line 91
    neg-int p1, p1

    .line 92
    .line 93
    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 94
    .line 95
    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 96
    :cond_2
    const/4 p1, -0x1

    .line 97
    .line 98
    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 99
    const/4 p1, 0x0

    .line 100
    .line 101
    .line 102
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 103
    move-result p2

    .line 104
    .line 105
    if-ge p1, p2, :cond_4

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 109
    move-result-object p2

    .line 110
    .line 111
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 112
    .line 113
    if-ne p2, v0, :cond_3

    .line 114
    .line 115
    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 116
    goto :goto_1

    .line 117
    .line 118
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 119
    goto :goto_0

    .line 120
    :cond_4
    :goto_1
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2, p3, p4}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->dispatchNestedFling(FFZ)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->dispatchNestedPreFling(FF)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 4

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    .line 4
    if-lez p3, :cond_1

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 7
    .line 8
    cmpl-float v2, v1, p1

    .line 9
    .line 10
    if-lez v2, :cond_1

    .line 11
    int-to-float v2, p3

    .line 12
    .line 13
    cmpl-float v3, v2, v1

    .line 14
    .line 15
    if-lez v3, :cond_0

    .line 16
    float-to-int v1, v1

    .line 17
    .line 18
    sub-int v1, p3, v1

    .line 19
    .line 20
    aput v1, p4, v0

    .line 21
    .line 22
    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sub-float/2addr v1, v2

    .line 25
    .line 26
    iput v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 27
    .line 28
    aput p3, p4, v0

    .line 29
    .line 30
    :goto_0
    iget v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->moveSpinner(F)V

    .line 34
    .line 35
    :cond_1
    iget-boolean v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mUsingCustomStart:Z

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    if-lez p3, :cond_2

    .line 40
    .line 41
    iget v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 42
    .line 43
    cmpl-float p1, v1, p1

    .line 44
    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    aget p1, p4, v0

    .line 48
    .line 49
    sub-int p1, p3, p1

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 53
    move-result p1

    .line 54
    .line 55
    if-lez p1, :cond_2

    .line 56
    .line 57
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 58
    .line 59
    const/16 v1, 0x8

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    :cond_2
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mParentScrollConsumed:[I

    .line 65
    const/4 v1, 0x0

    .line 66
    .line 67
    aget v2, p4, v1

    .line 68
    sub-int/2addr p2, v2

    .line 69
    .line 70
    aget v2, p4, v0

    .line 71
    sub-int/2addr p3, v2

    .line 72
    const/4 v2, 0x0

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p2, p3, p1, v2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    .line 76
    move-result p2

    .line 77
    .line 78
    if-eqz p2, :cond_3

    .line 79
    .line 80
    aget p2, p4, v1

    .line 81
    .line 82
    aget p3, p1, v1

    .line 83
    add-int/2addr p2, p3

    .line 84
    .line 85
    aput p2, p4, v1

    .line 86
    .line 87
    aget p2, p4, v0

    .line 88
    .line 89
    aget p1, p1, v0

    .line 90
    add-int/2addr p2, p1

    .line 91
    .line 92
    aput p2, p4, v0

    .line 93
    :cond_3
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6

    .line 1
    .line 2
    iget-object v5, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    .line 3
    move-object v0, p0

    .line 4
    move v1, p2

    .line 5
    move v2, p3

    .line 6
    move v3, p4

    .line 7
    move v4, p5

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->dispatchNestedScroll(IIII[I)Z

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    .line 13
    const/4 p2, 0x1

    .line 14
    .line 15
    aget p1, p1, p2

    .line 16
    add-int/2addr p5, p1

    .line 17
    .line 18
    if-gez p5, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->canChildScrollUp()Z

    .line 22
    move-result p1

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    iget p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 27
    .line 28
    .line 29
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    .line 30
    move-result p2

    .line 31
    int-to-float p2, p2

    .line 32
    add-float/2addr p1, p2

    .line 33
    .line 34
    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->moveSpinner(F)V

    .line 38
    :cond_0
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->b(Landroid/view/View;Landroid/view/View;I)V

    .line 6
    .line 7
    and-int/lit8 p1, p3, 0x2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->startNestedScroll(I)Z

    .line 11
    const/4 p1, 0x0

    .line 12
    .line 13
    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 14
    const/4 p1, 0x1

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 17
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mReturningToStart:Z

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mRefreshing:Z

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    and-int/lit8 p1, p3, 0x2

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingParentHelper;->d(Landroid/view/View;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 9
    .line 10
    iget p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    cmpl-float v1, p1, v0

    .line 14
    .line 15
    if-lez v1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->finishSpinner(F)V

    .line 19
    .line 20
    iput v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->stopNestedScroll()V

    .line 24
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->c(Landroid/view/MotionEvent;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mReturningToStart:Z

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iput-boolean v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mReturningToStart:Z

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_f

    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mReturningToStart:Z

    .line 22
    .line 23
    if-nez v1, :cond_f

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->canChildScrollUp()Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-nez v1, :cond_f

    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    goto/16 :goto_2

    .line 36
    :cond_1
    const/4 v1, 0x1

    .line 37
    .line 38
    if-eqz v0, :cond_d

    .line 39
    .line 40
    const/high16 v3, 0x3f000000    # 0.5f

    .line 41
    const/4 v4, -0x1

    .line 42
    .line 43
    if-eq v0, v1, :cond_a

    .line 44
    const/4 v5, 0x2

    .line 45
    .line 46
    if-eq v0, v5, :cond_6

    .line 47
    const/4 v3, 0x3

    .line 48
    .line 49
    if-eq v0, v3, :cond_5

    .line 50
    const/4 v3, 0x5

    .line 51
    .line 52
    if-eq v0, v3, :cond_3

    .line 53
    const/4 v2, 0x6

    .line 54
    .line 55
    if-eq v0, v2, :cond_2

    .line 56
    .line 57
    goto/16 :goto_1

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-direct {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 61
    .line 62
    goto/16 :goto_1

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->b(Landroid/view/MotionEvent;)I

    .line 66
    move-result v0

    .line 67
    .line 68
    if-gez v0, :cond_4

    .line 69
    .line 70
    sget-object p1, Lcom/narvii/list/refresh/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    .line 71
    .line 72
    const-string v0, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    .line 73
    .line 74
    .line 75
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return v2

    .line 77
    .line 78
    .line 79
    :cond_4
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->e(Landroid/view/MotionEvent;I)I

    .line 80
    move-result p1

    .line 81
    .line 82
    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mActivePointerId:I

    .line 83
    goto :goto_1

    .line 84
    :cond_5
    return v2

    .line 85
    .line 86
    :cond_6
    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mActivePointerId:I

    .line 87
    .line 88
    .line 89
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->a(Landroid/view/MotionEvent;I)I

    .line 90
    move-result v0

    .line 91
    .line 92
    if-gez v0, :cond_7

    .line 93
    .line 94
    sget-object p1, Lcom/narvii/list/refresh/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    .line 95
    .line 96
    const-string v0, "Got ACTION_MOVE event but have an invalid active pointer id."

    .line 97
    .line 98
    .line 99
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return v2

    .line 101
    .line 102
    .line 103
    :cond_7
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->g(Landroid/view/MotionEvent;I)F

    .line 104
    move-result p1

    .line 105
    .line 106
    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mInitialMotionY:F

    .line 107
    sub-float/2addr p1, v0

    .line 108
    mul-float/2addr p1, v3

    .line 109
    .line 110
    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mReversed:Z

    .line 111
    .line 112
    if-eqz v0, :cond_8

    .line 113
    goto :goto_0

    .line 114
    :cond_8
    move v4, v1

    .line 115
    :goto_0
    int-to-float v0, v4

    .line 116
    mul-float/2addr p1, v0

    .line 117
    .line 118
    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 119
    .line 120
    if-eqz v0, :cond_e

    .line 121
    const/4 v0, 0x0

    .line 122
    .line 123
    cmpl-float v0, p1, v0

    .line 124
    .line 125
    if-lez v0, :cond_9

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->moveSpinner(F)V

    .line 129
    goto :goto_1

    .line 130
    :cond_9
    return v2

    .line 131
    .line 132
    :cond_a
    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mActivePointerId:I

    .line 133
    .line 134
    .line 135
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->a(Landroid/view/MotionEvent;I)I

    .line 136
    move-result v0

    .line 137
    .line 138
    if-gez v0, :cond_b

    .line 139
    .line 140
    sget-object p1, Lcom/narvii/list/refresh/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    .line 141
    .line 142
    const-string v0, "Got ACTION_UP event but don\'t have an active pointer id."

    .line 143
    .line 144
    .line 145
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return v2

    .line 147
    .line 148
    .line 149
    :cond_b
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->g(Landroid/view/MotionEvent;I)F

    .line 150
    move-result p1

    .line 151
    .line 152
    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mInitialMotionY:F

    .line 153
    sub-float/2addr p1, v0

    .line 154
    mul-float/2addr p1, v3

    .line 155
    .line 156
    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mReversed:Z

    .line 157
    .line 158
    if-eqz v0, :cond_c

    .line 159
    move v1, v4

    .line 160
    :cond_c
    int-to-float v0, v1

    .line 161
    mul-float/2addr p1, v0

    .line 162
    .line 163
    iput-boolean v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->finishSpinner(F)V

    .line 167
    .line 168
    iput v4, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mActivePointerId:I

    .line 169
    return v2

    .line 170
    .line 171
    .line 172
    :cond_d
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->e(Landroid/view/MotionEvent;I)I

    .line 173
    move-result p1

    .line 174
    .line 175
    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mActivePointerId:I

    .line 176
    .line 177
    iput-boolean v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 178
    :cond_e
    :goto_1
    return v1

    .line 179
    :cond_f
    :goto_2
    return v2
.end method

.method public varargs setColorScheme([I)V
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 4
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->ensureTarget()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setColorSchemeColors([I)V

    .line 9
    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    array-length v1, p1

    .line 6
    .line 7
    new-array v1, v1, [I

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    array-length v3, p1

    .line 10
    .line 11
    if-ge v2, v3, :cond_0

    .line 12
    .line 13
    aget v3, p1, v2

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 17
    move-result v3

    .line 18
    .line 19
    aput v3, v1, v2

    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0, v1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 26
    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalDragDistance:F

    return-void
.end method

.method public setIsNestedScrollingChild(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->shouldDispatchNestedScrollingEvents:Z

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->n(Z)V

    .line 6
    return-void
.end method

.method public setOnRefreshListener(Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mListener:Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;

    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    .line 4
    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/CircleImageView;->setBackgroundColor(I)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setBackgroundColor(I)V

    .line 11
    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    .line 8
    move-result p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 12
    return-void
.end method

.method public setProgressViewEndTarget(ZI)V
    .locals 0

    .line 1
    int-to-float p2, p2

    .line 2
    .line 3
    iput p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScale:Z

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 11
    return-void
.end method

.method public setProgressViewOffset(ZII)V
    .locals 1

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScale:Z

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 5
    .line 6
    const/16 v0, 0x8

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    iput p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 12
    .line 13
    iput p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 14
    int-to-float p1, p3

    .line 15
    .line 16
    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    .line 17
    const/4 p1, 0x1

    .line 18
    .line 19
    iput-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mUsingCustomStart:Z

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 25
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mRefreshing:Z

    if-eq v1, p1, :cond_1

    iput-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mRefreshing:Z

    iget-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez p1, :cond_0

    iget p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    iget v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    :goto_0
    float-to-int p1, p1

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    goto :goto_0

    :goto_1
    iget v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr p1, v1

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, p1, v1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    iput-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNotify:Z

    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2
    invoke-direct {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_2

    .line 3
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setRefreshing(ZZ)V

    :goto_2
    return-void
.end method

.method public setReversed(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mReversed:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public setSize(I)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    return-void

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    const/high16 v1, 0x42600000    # 56.0f

    .line 19
    .line 20
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 21
    mul-float/2addr v0, v1

    .line 22
    float-to-int v0, v0

    .line 23
    .line 24
    iput v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleWidth:I

    .line 25
    .line 26
    iput v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleHeight:I

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    const/high16 v1, 0x42200000    # 40.0f

    .line 30
    .line 31
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 32
    mul-float/2addr v0, v1

    .line 33
    float-to-int v0, v0

    .line 34
    .line 35
    iput v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleWidth:I

    .line 36
    .line 37
    iput v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleHeight:I

    .line 38
    .line 39
    :goto_0
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 40
    const/4 v1, 0x0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->updateSizes(I)V

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    return-void
.end method

.method public setTarget(Lcom/narvii/widget/NVListView;)V
    .locals 0

    .line 1
    iput-object p0, p1, Lcom/narvii/widget/NVListView;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    return-void
.end method

.method public setTarget(Lcom/narvii/widget/NVScrollView;)V
    .locals 0

    .line 2
    iput-object p0, p1, Lcom/narvii/widget/NVScrollView;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

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
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->r()V

    .line 6
    return-void
.end method
