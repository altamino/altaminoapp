.class public Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent;
.implements Landroidx/core/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;,
        Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final ALPHA_ANIMATION_DURATION:I = 0x12c

.field private static final ANIMATE_TO_START_DURATION:I = 0xc8

.field private static final ANIMATE_TO_TRIGGER_DURATION:I = 0xc8

.field private static final CIRCLE_BG_LIGHT:I = -0x50506

.field static final CIRCLE_DIAMETER:I = 0x28
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final CIRCLE_DIAMETER_LARGE:I = 0x38
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final DECELERATE_INTERPOLATION_FACTOR:F = 2.0f

.field public static final DEFAULT:I = 0x1

.field private static final DEFAULT_CIRCLE_TARGET:I = 0x40

.field public static final DEFAULT_SLINGSHOT_DISTANCE:I = -0x1

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

.field private mChildScrollUpCallback:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

.field private mCircleDiameter:I

.field mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

.field private mCircleViewIndex:I

.field mCurrentTargetOffsetTop:I

.field mCustomSlingshotDistance:I

.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mFrom:I

.field private mInitialDownY:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field mListener:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;

.field private mMediumAnimationDuration:I

.field private mNestedScrollInProgress:Z

.field private final mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field private final mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field mNotify:Z

.field protected mOriginalOffsetTop:I

.field private final mParentOffsetInWindow:[I

.field private final mParentScrollConsumed:[I

.field mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

.field private mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

.field mRefreshing:Z

.field private mReturningToStart:Z

.field mScale:Z

.field private mScaleAnimation:Landroid/view/animation/Animation;

.field private mScaleDownAnimation:Landroid/view/animation/Animation;

.field private mScaleDownToStartAnimation:Landroid/view/animation/Animation;

.field mSpinnerOffsetEnd:I

.field mStartingScale:F

.field private mTarget:Landroid/view/View;

.field private mTotalDragDistance:F

.field private mTotalUnconsumed:F

.field private mTouchSlop:I

.field mUsingCustomStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x101000e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mParentScrollConsumed:[I

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 3
    new-instance v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$1;

    invoke-direct {v1, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$1;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    iput-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    .line 4
    new-instance v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$6;

    invoke-direct {v1, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$6;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    iput-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    .line 5
    new-instance v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$7;

    invoke-direct {v1, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$7;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    iput-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    .line 6
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTouchSlop:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 9
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 11
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42200000    # 40.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleDiameter:I

    .line 12
    invoke-direct {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->d()V

    const/4 v2, 0x1

    .line 13
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    const/high16 v3, 0x42800000    # 64.0f

    .line 14
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    int-to-float v1, v1

    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 15
    new-instance v1, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {v1, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 16
    new-instance v1, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v1, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 17
    invoke-virtual {p0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleDiameter:I

    neg-int v1, v1

    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 18
    invoke-virtual {p0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->i(F)V

    sget-object v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    .line 19
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 20
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 21
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    .line 1
    .line 2
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mFrom:I

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    .line 10
    .line 11
    const-wide/16 v0, 0xc8

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 15
    .line 16
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/CircleImageView;->b(Landroid/view/animation/Animation$AnimationListener;)V

    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 34
    .line 35
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 36
    .line 37
    iget-object p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 41
    return-void
.end method

.method private b(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScale:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mFrom:I

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 16
    .line 17
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    .line 18
    .line 19
    const-wide/16 v0, 0xc8

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 23
    .line 24
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/CircleImageView;->b(Landroid/view/animation/Animation$AnimationListener;)V

    .line 37
    .line 38
    :cond_1
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 42
    .line 43
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 44
    .line 45
    iget-object p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 49
    :goto_0
    return-void
.end method

.method private d()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    const v2, -0x50506

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Landroidx/swiperefreshlayout/widget/CircleImageView;-><init>(Landroid/content/Context;I)V

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 15
    .line 16
    new-instance v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    iput-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    .line 26
    const/4 v1, 0x1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->l(I)V

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 32
    .line 33
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 39
    .line 40
    const/16 v1, 0x8

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 49
    return-void
.end method

.method private e()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

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
    iget-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

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
    iput-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

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

.method private f(F)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalDragDistance:F

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
    invoke-direct {p0, p1, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->l(ZZ)V

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    .line 14
    iput-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->j(FF)V

    .line 21
    .line 22
    iget-boolean v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScale:Z

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    new-instance v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$5;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$5;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    .line 33
    :goto_0
    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->b(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->d(Z)V

    .line 42
    :goto_1
    return-void
.end method

.method private g(Landroid/view/animation/Animation;)Z
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

.method private h(F)V
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->d(Z)V

    .line 7
    .line 8
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalDragDistance:F

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
    const/high16 v1, 0x3f800000    # 1.0f

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 20
    move-result v0

    .line 21
    float-to-double v2, v0

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    const-wide v4, 0x3fd999999999999aL    # 0.4

    .line 27
    sub-double/2addr v2, v4

    .line 28
    .line 29
    const-wide/16 v4, 0x0

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    .line 33
    move-result-wide v2

    .line 34
    double-to-float v2, v2

    .line 35
    .line 36
    const/high16 v3, 0x40a00000    # 5.0f

    .line 37
    mul-float/2addr v2, v3

    .line 38
    .line 39
    const/high16 v3, 0x40400000    # 3.0f

    .line 40
    div-float/2addr v2, v3

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 44
    move-result v3

    .line 45
    .line 46
    iget v4, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 47
    sub-float/2addr v3, v4

    .line 48
    .line 49
    iget v4, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCustomSlingshotDistance:I

    .line 50
    .line 51
    if-lez v4, :cond_0

    .line 52
    :goto_0
    int-to-float v4, v4

    .line 53
    goto :goto_1

    .line 54
    .line 55
    :cond_0
    iget-boolean v4, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    .line 56
    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    iget v4, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    .line 60
    .line 61
    iget v5, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 62
    sub-int/2addr v4, v5

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :cond_1
    iget v4, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :goto_1
    const/high16 v5, 0x40000000    # 2.0f

    .line 69
    .line 70
    mul-float v6, v4, v5

    .line 71
    .line 72
    .line 73
    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    .line 74
    move-result v3

    .line 75
    div-float/2addr v3, v4

    .line 76
    const/4 v6, 0x0

    .line 77
    .line 78
    .line 79
    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    .line 80
    move-result v3

    .line 81
    .line 82
    const/high16 v7, 0x40800000    # 4.0f

    .line 83
    div-float/2addr v3, v7

    .line 84
    float-to-double v7, v3

    .line 85
    .line 86
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 87
    .line 88
    .line 89
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 90
    move-result-wide v9

    .line 91
    sub-double/2addr v7, v9

    .line 92
    double-to-float v3, v7

    .line 93
    mul-float/2addr v3, v5

    .line 94
    .line 95
    mul-float v7, v4, v3

    .line 96
    mul-float/2addr v7, v5

    .line 97
    .line 98
    iget v8, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 99
    mul-float/2addr v4, v0

    .line 100
    add-float/2addr v4, v7

    .line 101
    float-to-int v0, v4

    .line 102
    add-int/2addr v8, v0

    .line 103
    .line 104
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 108
    move-result v0

    .line 109
    .line 110
    if-eqz v0, :cond_2

    .line 111
    .line 112
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 113
    const/4 v4, 0x0

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    :cond_2
    iget-boolean v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScale:Z

    .line 119
    .line 120
    if-nez v0, :cond_3

    .line 121
    .line 122
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 126
    .line 127
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 131
    .line 132
    :cond_3
    iget-boolean v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScale:Z

    .line 133
    .line 134
    if-eqz v0, :cond_4

    .line 135
    .line 136
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 137
    .line 138
    div-float v0, p1, v0

    .line 139
    .line 140
    .line 141
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 142
    move-result v0

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 146
    .line 147
    :cond_4
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 148
    .line 149
    cmpg-float p1, p1, v0

    .line 150
    .line 151
    if-gez p1, :cond_5

    .line 152
    .line 153
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->getAlpha()I

    .line 157
    move-result p1

    .line 158
    .line 159
    const/16 v0, 0x4c

    .line 160
    .line 161
    if-le p1, v0, :cond_6

    .line 162
    .line 163
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    .line 164
    .line 165
    .line 166
    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->g(Landroid/view/animation/Animation;)Z

    .line 167
    move-result p1

    .line 168
    .line 169
    if-nez p1, :cond_6

    .line 170
    .line 171
    .line 172
    invoke-direct {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->p()V

    .line 173
    goto :goto_2

    .line 174
    .line 175
    :cond_5
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->getAlpha()I

    .line 179
    move-result p1

    .line 180
    .line 181
    const/16 v0, 0xff

    .line 182
    .line 183
    if-ge p1, v0, :cond_6

    .line 184
    .line 185
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    .line 186
    .line 187
    .line 188
    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->g(Landroid/view/animation/Animation;)Z

    .line 189
    move-result p1

    .line 190
    .line 191
    if-nez p1, :cond_6

    .line 192
    .line 193
    .line 194
    invoke-direct {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->o()V

    .line 195
    .line 196
    .line 197
    :cond_6
    :goto_2
    const p1, 0x3f4ccccd    # 0.8f

    .line 198
    .line 199
    mul-float v0, v2, p1

    .line 200
    .line 201
    iget-object v4, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    .line 202
    .line 203
    .line 204
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 205
    move-result p1

    .line 206
    .line 207
    .line 208
    invoke-virtual {v4, v6, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->j(FF)V

    .line 209
    .line 210
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    .line 211
    .line 212
    .line 213
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 214
    move-result v0

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->e(F)V

    .line 218
    .line 219
    .line 220
    const p1, 0x3ecccccd    # 0.4f

    .line 221
    mul-float/2addr v2, p1

    .line 222
    .line 223
    const/high16 p1, -0x41800000    # -0.25f

    .line 224
    add-float/2addr v2, p1

    .line 225
    mul-float/2addr v3, v5

    .line 226
    add-float/2addr v2, v3

    .line 227
    .line 228
    const/high16 p1, 0x3f000000    # 0.5f

    .line 229
    mul-float/2addr v2, p1

    .line 230
    .line 231
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->g(F)V

    .line 235
    .line 236
    iget p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 237
    sub-int/2addr v8, p1

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0, v8}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 241
    return-void
.end method

.method private j(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 8
    move-result v1

    .line 9
    .line 10
    iget v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

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
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 21
    move-result p1

    .line 22
    .line 23
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 24
    :cond_1
    return-void
.end method

.method private l(ZZ)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 3
    .line 4
    if-eq v0, p1, :cond_1

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNotify:Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e()V

    .line 10
    .line 11
    iput-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 16
    .line 17
    iget-object p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->a(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->q(Landroid/view/animation/Animation$AnimationListener;)V

    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method private m(II)Landroid/view/animation/Animation;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$4;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$4;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;II)V

    .line 6
    .line 7
    const-wide/16 p1, 0x12c

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 13
    const/4 p2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/CircleImageView;->b(Landroid/view/animation/Animation$AnimationListener;)V

    .line 17
    .line 18
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 22
    .line 23
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 27
    return-object v0
.end method

.method private n(F)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mInitialDownY:F

    .line 3
    sub-float/2addr p1, v0

    .line 4
    .line 5
    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTouchSlop:I

    .line 6
    int-to-float v2, v1

    .line 7
    .line 8
    cmpl-float p1, p1, v2

    .line 9
    .line 10
    if-lez p1, :cond_0

    .line 11
    .line 12
    iget-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    int-to-float p1, v1

    .line 16
    add-float/2addr v0, p1

    .line 17
    .line 18
    iput v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mInitialMotionY:F

    .line 19
    const/4 p1, 0x1

    .line 20
    .line 21
    iput-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 22
    .line 23
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    .line 24
    .line 25
    const/16 v0, 0x4c

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setAlpha(I)V

    .line 29
    :cond_0
    return-void
.end method

.method private o()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->getAlpha()I

    .line 6
    move-result v0

    .line 7
    .line 8
    const/16 v1, 0xff

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->m(II)Landroid/view/animation/Animation;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    .line 15
    return-void
.end method

.method private p()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->getAlpha()I

    .line 6
    move-result v0

    .line 7
    .line 8
    const/16 v1, 0x4c

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->m(II)Landroid/view/animation/Animation;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    .line 15
    return-void
.end method

.method private r(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    .line 1
    .line 2
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mFrom:I

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    .line 8
    move-result p1

    .line 9
    .line 10
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mStartingScale:F

    .line 11
    .line 12
    new-instance p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$8;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$8;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    .line 18
    .line 19
    const-wide/16 v0, 0x96

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/CircleImageView;->b(Landroid/view/animation/Animation$AnimationListener;)V

    .line 30
    .line 31
    :cond_0
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 35
    .line 36
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 37
    .line 38
    iget-object p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 42
    return-void
.end method

.method private s(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    .line 9
    .line 10
    const/16 v1, 0xff

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setAlpha(I)V

    .line 14
    .line 15
    new-instance v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$2;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$2;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    .line 19
    .line 20
    iput-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    .line 21
    .line 22
    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

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
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircleImageView;->b(Landroid/view/animation/Animation$AnimationListener;)V

    .line 34
    .line 35
    :cond_0
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 39
    .line 40
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 41
    .line 42
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 46
    return-void
.end method

.method private setColorViewAlpha(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

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
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setAlpha(I)V

    .line 15
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mChildScrollUpCallback:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;->a(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroid/view/View;)Z

    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 14
    .line 15
    instance-of v1, v0, Landroid/widget/ListView;

    .line 16
    const/4 v2, -0x1

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    check-cast v0, Landroid/widget/ListView;

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v2}, Landroidx/core/widget/ListViewCompat;->a(Landroid/widget/ListView;I)Z

    .line 24
    move-result v0

    .line 25
    return v0

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    .line 29
    move-result v0

    .line 30
    return v0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->a(FFZ)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->b(FF)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->c(II[I[I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move-object v5, p5

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->f(IIII[I)Z

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleViewIndex:I

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
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

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

    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleDiameter:I

    return v0
.end method

.method public getProgressViewEndOffset()I
    .locals 1

    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    return v0
.end method

.method public getProgressViewStartOffset()I
    .locals 1

    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->k()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method i(F)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mFrom:I

    .line 3
    .line 4
    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

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
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 15
    move-result p1

    .line 16
    sub-int/2addr v0, p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 20
    return-void
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->m()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method k()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->stop()V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

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
    invoke-direct {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    .line 23
    .line 24
    iget-boolean v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScale:Z

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 34
    .line 35
    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 36
    sub-int/2addr v0, v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 40
    .line 41
    :goto_0
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 45
    move-result v0

    .line 46
    .line 47
    iput v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 48
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
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->k()V

    .line 7
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 7
    move-result v0

    .line 8
    .line 9
    iget-boolean v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mReturningToStart:Z

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iput-boolean v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mReturningToStart:Z

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_9

    .line 23
    .line 24
    iget-boolean v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mReturningToStart:Z

    .line 25
    .line 26
    if-nez v1, :cond_9

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->c()Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-nez v1, :cond_9

    .line 33
    .line 34
    iget-boolean v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 35
    .line 36
    if-nez v1, :cond_9

    .line 37
    .line 38
    iget-boolean v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_1
    if-eqz v0, :cond_7

    .line 44
    const/4 v1, 0x1

    .line 45
    const/4 v3, -0x1

    .line 46
    .line 47
    if-eq v0, v1, :cond_6

    .line 48
    const/4 v1, 0x2

    .line 49
    .line 50
    if-eq v0, v1, :cond_3

    .line 51
    const/4 v1, 0x3

    .line 52
    .line 53
    if-eq v0, v1, :cond_6

    .line 54
    const/4 v1, 0x6

    .line 55
    .line 56
    if-eq v0, v1, :cond_2

    .line 57
    goto :goto_0

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->j(Landroid/view/MotionEvent;)V

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_3
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 64
    .line 65
    if-ne v0, v3, :cond_4

    .line 66
    .line 67
    sget-object p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    .line 68
    .line 69
    const-string v0, "Got ACTION_MOVE event but don\'t have an active pointer id."

    .line 70
    .line 71
    .line 72
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return v2

    .line 74
    .line 75
    .line 76
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 77
    move-result v0

    .line 78
    .line 79
    if-gez v0, :cond_5

    .line 80
    return v2

    .line 81
    .line 82
    .line 83
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 84
    move-result p1

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->n(F)V

    .line 88
    goto :goto_0

    .line 89
    .line 90
    :cond_6
    iput-boolean v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 91
    .line 92
    iput v3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 93
    goto :goto_0

    .line 94
    .line 95
    :cond_7
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 96
    .line 97
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 101
    move-result v1

    .line 102
    sub-int/2addr v0, v1

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 109
    move-result v0

    .line 110
    .line 111
    iput v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 112
    .line 113
    iput-boolean v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 117
    move-result v0

    .line 118
    .line 119
    if-gez v0, :cond_8

    .line 120
    return v2

    .line 121
    .line 122
    .line 123
    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 124
    move-result p1

    .line 125
    .line 126
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mInitialDownY:F

    .line 127
    .line 128
    :goto_0
    iget-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 129
    return p1

    .line 130
    :cond_9
    :goto_1
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
    iget-object p3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 18
    .line 19
    if-nez p3, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e()V

    .line 23
    .line 24
    :cond_1
    iget-object p3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

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
    iget-object p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 67
    move-result p2

    .line 68
    .line 69
    iget-object p3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 73
    move-result p3

    .line 74
    .line 75
    iget-object p4, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

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
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

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
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e()V

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

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
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 59
    .line 60
    iget p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleDiameter:I

    .line 61
    .line 62
    .line 63
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 64
    move-result p2

    .line 65
    .line 66
    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleDiameter:I

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
    const/4 p1, -0x1

    .line 75
    .line 76
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 77
    const/4 p1, 0x0

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 81
    move-result p2

    .line 82
    .line 83
    if-ge p1, p2, :cond_3

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 87
    move-result-object p2

    .line 88
    .line 89
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 90
    .line 91
    if-ne p2, v0, :cond_2

    .line 92
    .line 93
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 94
    goto :goto_1

    .line 95
    .line 96
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 97
    goto :goto_0

    .line 98
    :cond_3
    :goto_1
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2, p3, p4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->dispatchNestedFling(FFZ)Z

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
    invoke-virtual {p0, p2, p3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->dispatchNestedPreFling(FF)Z

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
    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

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
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sub-float/2addr v1, v2

    .line 25
    .line 26
    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 27
    .line 28
    aput p3, p4, v0

    .line 29
    .line 30
    :goto_0
    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->h(F)V

    .line 34
    .line 35
    :cond_1
    iget-boolean v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    if-lez p3, :cond_2

    .line 40
    .line 41
    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

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
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

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
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mParentScrollConsumed:[I

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
    invoke-virtual {p0, p2, p3, p1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

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
    iget-object v5, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mParentOffsetInWindow:[I

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
    invoke-virtual/range {v0 .. v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->dispatchNestedScroll(IIII[I)Z

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mParentOffsetInWindow:[I

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
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->c()Z

    .line 22
    move-result p1

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    iget p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

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
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->h(F)V

    .line 38
    :cond_0
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

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
    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startNestedScroll(I)Z

    .line 11
    const/4 p1, 0x0

    .line 12
    .line 13
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 14
    const/4 p1, 0x1

    .line 15
    .line 16
    iput-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

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
    iget-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mReturningToStart:Z

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    iget-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

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
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingParentHelper;->d(Landroid/view/View;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    iput-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 9
    .line 10
    iget p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

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
    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->f(F)V

    .line 19
    .line 20
    iput v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->stopNestedScroll()V

    .line 24
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-boolean v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mReturningToStart:Z

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
    iput-boolean v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mReturningToStart:Z

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_e

    .line 20
    .line 21
    iget-boolean v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mReturningToStart:Z

    .line 22
    .line 23
    if-nez v1, :cond_e

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->c()Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-nez v1, :cond_e

    .line 30
    .line 31
    iget-boolean v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 32
    .line 33
    if-nez v1, :cond_e

    .line 34
    .line 35
    iget-boolean v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    goto/16 :goto_1

    .line 40
    :cond_1
    const/4 v1, 0x1

    .line 41
    .line 42
    if-eqz v0, :cond_c

    .line 43
    .line 44
    const/high16 v3, 0x3f000000    # 0.5f

    .line 45
    .line 46
    if-eq v0, v1, :cond_9

    .line 47
    const/4 v4, 0x2

    .line 48
    .line 49
    if-eq v0, v4, :cond_6

    .line 50
    const/4 v3, 0x3

    .line 51
    .line 52
    if-eq v0, v3, :cond_5

    .line 53
    const/4 v3, 0x5

    .line 54
    .line 55
    if-eq v0, v3, :cond_3

    .line 56
    const/4 v2, 0x6

    .line 57
    .line 58
    if-eq v0, v2, :cond_2

    .line 59
    goto :goto_0

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->j(Landroid/view/MotionEvent;)V

    .line 63
    goto :goto_0

    .line 64
    .line 65
    .line 66
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 67
    move-result v0

    .line 68
    .line 69
    if-gez v0, :cond_4

    .line 70
    .line 71
    sget-object p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    .line 72
    .line 73
    const-string v0, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    .line 74
    .line 75
    .line 76
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return v2

    .line 78
    .line 79
    .line 80
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 81
    move-result p1

    .line 82
    .line 83
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 84
    goto :goto_0

    .line 85
    :cond_5
    return v2

    .line 86
    .line 87
    :cond_6
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 91
    move-result v0

    .line 92
    .line 93
    if-gez v0, :cond_7

    .line 94
    .line 95
    sget-object p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    .line 96
    .line 97
    const-string v0, "Got ACTION_MOVE event but have an invalid active pointer id."

    .line 98
    .line 99
    .line 100
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return v2

    .line 102
    .line 103
    .line 104
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 105
    move-result p1

    .line 106
    .line 107
    .line 108
    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->n(F)V

    .line 109
    .line 110
    iget-boolean v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 111
    .line 112
    if-eqz v0, :cond_d

    .line 113
    .line 114
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mInitialMotionY:F

    .line 115
    sub-float/2addr p1, v0

    .line 116
    mul-float/2addr p1, v3

    .line 117
    const/4 v0, 0x0

    .line 118
    .line 119
    cmpl-float v0, p1, v0

    .line 120
    .line 121
    if-lez v0, :cond_8

    .line 122
    .line 123
    .line 124
    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->h(F)V

    .line 125
    goto :goto_0

    .line 126
    :cond_8
    return v2

    .line 127
    .line 128
    :cond_9
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 132
    move-result v0

    .line 133
    .line 134
    if-gez v0, :cond_a

    .line 135
    .line 136
    sget-object p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    .line 137
    .line 138
    const-string v0, "Got ACTION_UP event but don\'t have an active pointer id."

    .line 139
    .line 140
    .line 141
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return v2

    .line 143
    .line 144
    :cond_a
    iget-boolean v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 145
    .line 146
    if-eqz v1, :cond_b

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 150
    move-result p1

    .line 151
    .line 152
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mInitialMotionY:F

    .line 153
    sub-float/2addr p1, v0

    .line 154
    mul-float/2addr p1, v3

    .line 155
    .line 156
    iput-boolean v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 157
    .line 158
    .line 159
    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->f(F)V

    .line 160
    :cond_b
    const/4 p1, -0x1

    .line 161
    .line 162
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 163
    return v2

    .line 164
    .line 165
    .line 166
    :cond_c
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 167
    move-result p1

    .line 168
    .line 169
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 170
    .line 171
    iput-boolean v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 172
    :cond_d
    :goto_0
    return v1

    .line 173
    :cond_e
    :goto_1
    return v2
.end method

.method q(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$3;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$3;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    .line 8
    .line 9
    const-wide/16 v1, 0x96

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircleImageView;->b(Landroid/view/animation/Animation$AnimationListener;)V

    .line 18
    .line 19
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 23
    .line 24
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 30
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->Y(Landroid/view/View;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 15
    :goto_0
    return-void
.end method

.method setAnimationProgress(F)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 11
    return-void
.end method

.method public varargs setColorScheme([I)V
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 4
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->f([I)V

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
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

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
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

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
    invoke-virtual {p0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 26
    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->k()V

    .line 9
    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->n(Z)V

    .line 6
    return-void
.end method

.method public setOnChildScrollUpCallback(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;)V
    .locals 0
    .param p1    # Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mChildScrollUpCallback:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

    return-void
.end method

.method public setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V
    .locals 0
    .param p1    # Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mListener:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;

    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

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
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setBackgroundColor(I)V

    .line 6
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
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 8
    move-result p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 12
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 6
    .line 7
    if-eq v1, p1, :cond_1

    .line 8
    .line 9
    iput-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 10
    .line 11
    iget-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    .line 16
    .line 17
    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 18
    add-int/2addr p1, v1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    .line 22
    .line 23
    :goto_0
    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 24
    sub-int/2addr p1, v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 28
    .line 29
    iput-boolean v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNotify:Z

    .line 30
    .line 31
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s(Landroid/view/animation/Animation$AnimationListener;)V

    .line 35
    goto :goto_1

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-direct {p0, p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->l(ZZ)V

    .line 39
    :goto_1
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
    iput v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleDiameter:I

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    const/high16 v1, 0x42200000    # 40.0f

    .line 28
    .line 29
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 30
    mul-float/2addr v0, v1

    .line 31
    float-to-int v0, v0

    .line 32
    .line 33
    iput v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleDiameter:I

    .line 34
    .line 35
    :goto_0
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 36
    const/4 v1, 0x0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    .line 41
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->l(I)V

    .line 45
    .line 46
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 47
    .line 48
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    return-void
.end method

.method public setSlingshotDistance(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCustomSlingshotDistance:I

    return-void
.end method

.method setTargetOffsetTopAndBottom(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->e0(Landroid/view/View;I)V

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 16
    move-result p1

    .line 17
    .line 18
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 19
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

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
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->r()V

    .line 6
    return-void
.end method
