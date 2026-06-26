.class public Lcom/narvii/list/refresh/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SwipeRefreshLayout.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingParent;
.implements Landroid/support/v4/view/NestedScrollingChild;


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

.field private static final LOG_TAG:Ljava/lang/String;

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

.field private final mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field private final mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

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
    .locals 3

    .line 75
    const-class v0, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    .line 136
    sput-object v0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 303
    invoke-direct {p0, p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 313
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mRefreshing:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 108
    iput v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalDragDistance:F

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 116
    iput-object v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mParentScrollConsumed:[I

    new-array v1, v1, [I

    .line 117
    iput-object v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    .line 123
    iput-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mOriginalOffsetCalculated:Z

    const/4 v1, -0x1

    .line 128
    iput v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mActivePointerId:I

    .line 141
    iput v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleViewIndex:I

    const/4 v1, 0x1

    .line 172
    iput-boolean v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->shouldDispatchNestedScrollingEvents:Z

    .line 174
    new-instance v2, Lcom/narvii/list/refresh/SwipeRefreshLayout$1;

    invoke-direct {v2, p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout$1;-><init>(Lcom/narvii/list/refresh/SwipeRefreshLayout;)V

    iput-object v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1132
    new-instance v2, Lcom/narvii/list/refresh/SwipeRefreshLayout$6;

    invoke-direct {v2, p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout$6;-><init>(Lcom/narvii/list/refresh/SwipeRefreshLayout;)V

    iput-object v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    .line 1156
    new-instance v2, Lcom/narvii/list/refresh/SwipeRefreshLayout$7;

    invoke-direct {v2, p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout$7;-><init>(Lcom/narvii/list/refresh/SwipeRefreshLayout;)V

    iput-object v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    .line 315
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTouchSlop:I

    .line 317
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mMediumAnimationDuration:I

    .line 320
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 321
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 323
    sget-object v2, Lcom/narvii/list/refresh/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 324
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 325
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 327
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 328
    iget p2, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x42200000    # 40.0f

    mul-float v2, p2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleWidth:I

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 329
    iput p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleHeight:I

    .line 331
    invoke-direct {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->createProgressView()V

    .line 332
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 334
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x42800000    # 64.0f

    mul-float p1, p1, p2

    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    .line 335
    iget p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 336
    new-instance p1, Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {p1, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 338
    new-instance p1, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {p1, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 339
    invoke-virtual {p0, v1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mRefreshing:Z

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Lcom/narvii/list/refresh/MaterialProgressDrawable;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mUsingCustomStart:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/narvii/list/refresh/SwipeRefreshLayout;)F
    .locals 0

    .line 68
    iget p0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    return p0
.end method

.method static synthetic access$1200(Lcom/narvii/list/refresh/SwipeRefreshLayout;IZ)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/narvii/list/refresh/SwipeRefreshLayout;F)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->moveToStart(F)V

    return-void
.end method

.method static synthetic access$1400(Lcom/narvii/list/refresh/SwipeRefreshLayout;)F
    .locals 0

    .line 68
    iget p0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mStartingScale:F

    return p0
.end method

.method static synthetic access$200(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNotify:Z

    return p0
.end method

.method static synthetic access$300(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mListener:Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;

    return-object p0
.end method

.method static synthetic access$402(Lcom/narvii/list/refresh/SwipeRefreshLayout;I)I
    .locals 0

    .line 68
    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    return p1
.end method

.method static synthetic access$500(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Lcom/narvii/list/refresh/CircleImageView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/list/refresh/SwipeRefreshLayout;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->reset()V

    return-void
.end method

.method static synthetic access$700(Lcom/narvii/list/refresh/SwipeRefreshLayout;F)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setAnimationProgress(F)V

    return-void
.end method

.method static synthetic access$800(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScale:Z

    return p0
.end method

.method static synthetic access$900(Lcom/narvii/list/refresh/SwipeRefreshLayout;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    .line 1104
    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mFrom:I

    .line 1105
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 1106
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1107
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz p2, :cond_0

    .line 1109
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-virtual {p1, p2}, Lcom/narvii/list/refresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1111
    :cond_0
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1112
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    iget-object p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    .line 1116
    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScale:Z

    if-eqz v0, :cond_0

    .line 1118
    invoke-direct {p0, p1, p2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 1120
    :cond_0
    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mFrom:I

    .line 1121
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 1122
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1123
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz p2, :cond_1

    .line 1125
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-virtual {p1, p2}, Lcom/narvii/list/refresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1127
    :cond_1
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1128
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    iget-object p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method private createProgressView()V
    .locals 4

    .line 358
    new-instance v0, Lcom/narvii/list/refresh/CircleImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, -0x50506

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/narvii/list/refresh/CircleImageView;-><init>(Landroid/content/Context;IF)V

    iput-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    .line 359
    new-instance v0, Lcom/narvii/list/refresh/MaterialProgressDrawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/narvii/list/refresh/MaterialProgressDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 360
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    invoke-virtual {v0, v2}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setBackgroundColor(I)V

    .line 361
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    iget-object v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 362
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private ensureTarget()V
    .locals 3

    .line 572
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 573
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 574
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 575
    iget-object v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 576
    iput-object v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private getMotionEventY(Landroid/view/MotionEvent;I)F
    .locals 0

    .line 768
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result p2

    if-gez p2, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    .line 772
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    return p1
.end method

.method private isAlphaUsedForScale()Z
    .locals 2

    .line 378
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isAnimationRunning(Landroid/view/animation/Animation;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 941
    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private moveToStart(F)V
    .locals 2

    .line 1151
    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mFrom:I

    iget v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int p1, v1

    add-int/2addr v0, p1

    .line 1152
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    .line 1153
    invoke-direct {p0, v0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1197
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1198
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1199
    iget v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1203
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mActivePointerId:I

    :cond_1
    return-void
.end method

.method private reset()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 203
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->stop()V

    .line 204
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v0, 0xff

    .line 205
    invoke-direct {p0, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setColorViewAlpha(I)V

    .line 207
    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScale:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 208
    invoke-direct {p0, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setAnimationProgress(F)V

    goto :goto_0

    .line 210
    :cond_0
    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iget v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 213
    :goto_0
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    iput v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    return-void
.end method

.method private setAnimationProgress(F)V
    .locals 1

    .line 433
    invoke-direct {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->isAlphaUsedForScale()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 434
    invoke-direct {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setColorViewAlpha(I)V

    goto :goto_0

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 437
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    :goto_0
    return-void
.end method

.method private setColorViewAlpha(I)V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 232
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setAlpha(I)V

    return-void
.end method

.method private setRefreshing(ZZ)V
    .locals 1

    .line 442
    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mRefreshing:Z

    if-eq v0, p1, :cond_1

    .line 443
    iput-boolean p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNotify:Z

    .line 444
    invoke-direct {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->ensureTarget()V

    .line 445
    iput-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mRefreshing:Z

    .line 446
    iget-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mRefreshing:Z

    if-eqz p1, :cond_0

    .line 447
    iget p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iget-object p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, p1, p2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 449
    :cond_0
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setTargetOffsetTopAndBottom(IZ)V
    .locals 1

    .line 1188
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 1189
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 1190
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    if-eqz p2, :cond_0

    .line 1191
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xb

    if-ge p1, p2, :cond_0

    .line 1192
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method private startAlphaAnimation(II)Landroid/view/animation/Animation;
    .locals 2

    .line 478
    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScale:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->isAlphaUsedForScale()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 481
    :cond_0
    new-instance v0, Lcom/narvii/list/refresh/SwipeRefreshLayout$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/list/refresh/SwipeRefreshLayout$4;-><init>(Lcom/narvii/list/refresh/SwipeRefreshLayout;II)V

    const-wide/16 p1, 0x12c

    .line 489
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 491
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-virtual {p1, v1}, Lcom/narvii/list/refresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 492
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 493
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method private startProgressAlphaMaxAnimation()V
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    invoke-direct {p0, v0, v1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method private startProgressAlphaStartAnimation()V
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0x4c

    invoke-direct {p0, v0, v1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method private startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    .line 455
    new-instance v0, Lcom/narvii/list/refresh/SwipeRefreshLayout$3;

    invoke-direct {v0, p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout$3;-><init>(Lcom/narvii/list/refresh/SwipeRefreshLayout;)V

    iput-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    .line 461
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 462
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 463
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 464
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    .line 1165
    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mFrom:I

    .line 1166
    invoke-direct {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->isAlphaUsedForScale()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1167
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    invoke-virtual {p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->getAlpha()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mStartingScale:F

    goto :goto_0

    .line 1169
    :cond_0
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getScaleX(Landroid/view/View;)F

    move-result p1

    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mStartingScale:F

    .line 1171
    :goto_0
    new-instance p1, Lcom/narvii/list/refresh/SwipeRefreshLayout$8;

    invoke-direct {p1, p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout$8;-><init>(Lcom/narvii/list/refresh/SwipeRefreshLayout;)V

    iput-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    .line 1179
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz p2, :cond_1

    .line 1181
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-virtual {p1, p2}, Lcom/narvii/list/refresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1183
    :cond_1
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1184
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    iget-object p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 408
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 412
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setAlpha(I)V

    .line 414
    :cond_0
    new-instance v0, Lcom/narvii/list/refresh/SwipeRefreshLayout$2;

    invoke-direct {v0, p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout$2;-><init>(Lcom/narvii/list/refresh/SwipeRefreshLayout;)V

    iput-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    .line 420
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mMediumAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz p1, :cond_1

    .line 422
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 424
    :cond_1
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 425
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public canChildScrollUp()Z
    .locals 5

    .line 662
    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mReversed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 663
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v3, v0, Landroid/widget/AbsListView;

    if-eqz v3, :cond_2

    .line 664
    check-cast v0, Landroid/widget/AbsListView;

    .line 665
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 666
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v1

    if-lt v4, v3, :cond_1

    .line 667
    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v4, v0

    if-le v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    return v2

    .line 671
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    const/4 v4, -0x1

    if-ge v0, v3, :cond_9

    .line 672
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v3, v0, Landroid/widget/AbsListView;

    if-eqz v3, :cond_6

    .line 673
    check-cast v0, Landroid/widget/AbsListView;

    .line 674
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 675
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_5

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 676
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v0

    if-ge v3, v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_1
    return v1

    .line 678
    :cond_6
    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :cond_8
    :goto_2
    return v1

    .line 681
    :cond_9
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public configSpinnerBeforeMove()V
    .locals 2

    const/4 v0, 0x1

    .line 945
    iput-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 946
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setAlpha(I)V

    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 930
    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->shouldDispatchNestedScrollingEvents:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 931
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

    .line 936
    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->shouldDispatchNestedScrollingEvents:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 937
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

    .line 912
    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->shouldDispatchNestedScrollingEvents:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 913
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

    .line 906
    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->shouldDispatchNestedScrollingEvents:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 907
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

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 1229
    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mReversed:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    if-ne p2, v0, :cond_0

    .line 1230
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/4 v2, 0x0

    .line 1231
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 1232
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 1234
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    if-eq v0, v1, :cond_1

    .line 1236
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    return p2
.end method

.method public finishSpinner(F)V
    .locals 2

    .line 998
    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalDragDistance:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 999
    invoke-direct {p0, p1, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setRefreshing(ZZ)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1002
    iput-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mRefreshing:Z

    .line 1003
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setStartEndTrim(FF)V

    const/4 v0, 0x0

    .line 1005
    iget-boolean v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScale:Z

    if-nez v1, :cond_1

    .line 1006
    new-instance v0, Lcom/narvii/list/refresh/SwipeRefreshLayout$5;

    invoke-direct {v0, p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout$5;-><init>(Lcom/narvii/list/refresh/SwipeRefreshLayout;)V

    .line 1025
    :cond_1
    iget v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    invoke-direct {p0, v1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 1026
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->showArrow(Z)V

    :goto_0
    return-void
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    .line 343
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

    .line 840
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getProgressCircleDiameter()I
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 885
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isRefreshing()Z
    .locals 1

    .line 566
    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mRefreshing:Z

    return v0
.end method

.method public moveSpinner(F)V
    .locals 12

    .line 949
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->showArrow(Z)V

    .line 950
    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalDragDistance:F

    div-float v0, p1, v0

    .line 952
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v3, v0

    const-wide v5, 0x3fd999999999999aL    # 0.4

    .line 953
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v3, v5

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float v3, v3, v4

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    .line 954
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalDragDistance:F

    sub-float/2addr v4, v5

    .line 955
    iget-boolean v5, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    iget v6, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    goto :goto_0

    :cond_0
    iget v5, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    :goto_0
    const/high16 v6, 0x40000000    # 2.0f

    mul-float v7, v5, v6

    .line 957
    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v4, v5

    const/4 v7, 0x0

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v8, 0x40800000    # 4.0f

    div-float/2addr v4, v8

    float-to-double v8, v4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 959
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v8, v10

    double-to-float v4, v8

    mul-float v4, v4, v6

    mul-float v8, v5, v4

    mul-float v8, v8, v6

    .line 963
    iget v9, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    mul-float v5, v5, v0

    add-float/2addr v5, v8

    float-to-int v0, v5

    add-int/2addr v9, v0

    .line 965
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 966
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 968
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScale:Z

    if-nez v0, :cond_2

    .line 969
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 970
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 973
    :cond_2
    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScale:Z

    if-eqz v0, :cond_3

    .line 974
    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalDragDistance:F

    div-float v0, p1, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 976
    :cond_3
    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalDragDistance:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_4

    .line 977
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    invoke-virtual {p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->getAlpha()I

    move-result p1

    const/16 v0, 0x4c

    if-le p1, v0, :cond_5

    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    .line 978
    invoke-direct {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 980
    invoke-direct {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->startProgressAlphaStartAnimation()V

    goto :goto_1

    .line 983
    :cond_4
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    invoke-virtual {p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->getAlpha()I

    move-result p1

    const/16 v0, 0xff

    if-ge p1, v0, :cond_5

    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 985
    invoke-direct {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->startProgressAlphaMaxAnimation()V

    :cond_5
    :goto_1
    const p1, 0x3f4ccccd    # 0.8f

    mul-float v0, v3, p1

    .line 989
    iget-object v5, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {v5, v7, p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 990
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setArrowScale(F)V

    const/high16 p1, -0x41800000    # -0.25f

    const v0, 0x3ecccccd    # 0.4f

    mul-float v3, v3, v0

    add-float/2addr v3, p1

    mul-float v4, v4, v6

    add-float/2addr v3, v4

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float v3, v3, p1

    .line 993
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    invoke-virtual {p1, v3}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setProgressRotation(F)V

    .line 994
    iget p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v9, p1

    invoke-direct {p0, v9, v1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 226
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 227
    invoke-direct {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->reset()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 697
    invoke-direct {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->ensureTarget()V

    .line 698
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v0, v0, Lcom/narvii/widget/NVListView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 700
    iget-object v1, v0, Lcom/narvii/widget/NVListView;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/narvii/widget/NVListView;->getOverscrollStretchView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 701
    iput-object p0, v0, Lcom/narvii/widget/NVListView;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v1, v0, Lcom/narvii/widget/NVListView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lcom/narvii/widget/NVListView;

    iget-object v0, v0, Lcom/narvii/widget/NVListView;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    if-ne v0, p0, :cond_1

    return v2

    .line 707
    :cond_1
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v1, v0, Lcom/narvii/widget/NVScrollView;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/narvii/widget/NVScrollView;

    iget-object v0, v0, Lcom/narvii/widget/NVScrollView;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    if-ne v0, p0, :cond_2

    return v2

    .line 711
    :cond_2
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 713
    iget-boolean v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mReturningToStart:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 714
    iput-boolean v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mReturningToStart:Z

    .line 717
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v1, :cond_e

    invoke-virtual {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v1

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mRefreshing:Z

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    if-eqz v1, :cond_4

    goto/16 :goto_2

    :cond_4
    const/high16 v1, -0x40800000    # -1.0f

    const/4 v3, 0x1

    if-eqz v0, :cond_b

    const/4 v4, -0x1

    if-eq v0, v3, :cond_a

    const/4 v5, 0x2

    if-eq v0, v5, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    goto :goto_1

    .line 754
    :cond_5
    invoke-direct {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 736
    :cond_6
    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mActivePointerId:I

    if-ne v0, v4, :cond_7

    .line 737
    sget-object p1, Lcom/narvii/list/refresh/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 741
    :cond_7
    invoke-direct {p0, p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->getMotionEventY(Landroid/view/MotionEvent;I)F

    move-result p1

    cmpl-float v0, p1, v1

    if-nez v0, :cond_8

    return v2

    .line 745
    :cond_8
    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mInitialDownY:F

    sub-float/2addr p1, v0

    .line 746
    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mReversed:Z

    if-eqz v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v4, 0x1

    :goto_0
    int-to-float v0, v4

    mul-float v0, v0, p1

    iget p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTouchSlop:I

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_d

    .line 747
    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mInitialDownY:F

    int-to-float p1, p1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mInitialMotionY:F

    .line 748
    iput-boolean v3, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 749
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    const/16 v0, 0x4c

    invoke-virtual {p1, v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setAlpha(I)V

    goto :goto_1

    .line 759
    :cond_a
    iput-boolean v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 760
    iput v4, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mActivePointerId:I

    goto :goto_1

    .line 725
    :cond_b
    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iget-object v4, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-direct {p0, v0, v3}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 726
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mActivePointerId:I

    .line 727
    iput-boolean v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 728
    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mActivePointerId:I

    invoke-direct {p0, p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->getMotionEventY(Landroid/view/MotionEvent;I)F

    move-result p1

    cmpl-float v0, p1, v1

    if-nez v0, :cond_c

    return v2

    .line 732
    :cond_c
    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mInitialDownY:F

    .line 764
    :cond_d
    :goto_1
    iget-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    return p1

    :cond_e
    :goto_2
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 594
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    .line 595
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    .line 596
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 599
    :cond_0
    iget-object p3, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez p3, :cond_1

    .line 600
    invoke-direct {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->ensureTarget()V

    .line 602
    :cond_1
    iget-object p3, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez p3, :cond_2

    return-void

    .line 606
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p4

    .line 607
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p5

    .line 608
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 609
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    add-int/2addr v0, p4

    add-int/2addr p2, p5

    .line 610
    invoke-virtual {p3, p4, p5, v0, p2}, Landroid/view/View;->layout(IIII)V

    .line 611
    iget-object p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    .line 612
    iget-object p3, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p3

    .line 613
    iget-object p4, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p2, p2, 0x2

    sub-int p5, p1, p2

    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    add-int/2addr p1, p2

    add-int/2addr p3, v0

    invoke-virtual {p4, p5, v0, p1, p3}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .line 619
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 620
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez p1, :cond_0

    .line 621
    invoke-direct {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->ensureTarget()V

    .line 623
    :cond_0
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez p1, :cond_1

    return-void

    .line 627
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    .line 626
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 629
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 628
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 626
    invoke-virtual {p1, p2, v1}, Landroid/view/View;->measure(II)V

    .line 630
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    iget p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleWidth:I

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleHeight:I

    .line 631
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 630
    invoke-virtual {p1, p2, v0}, Landroid/widget/ImageView;->measure(II)V

    .line 632
    iget-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mOriginalOffsetCalculated:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 633
    iput-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mOriginalOffsetCalculated:Z

    .line 634
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p1

    neg-int p1, p1

    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    :cond_2
    const/4 p1, -0x1

    .line 636
    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleViewIndex:I

    const/4 p1, 0x0

    .line 638
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 639
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    if-ne p2, v0, :cond_3

    .line 640
    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleViewIndex:I

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    .line 925
    invoke-virtual {p0, p2, p3, p4}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    .line 919
    invoke-virtual {p0, p2, p3}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 4

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-lez p3, :cond_1

    .line 810
    iget v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v2, v1, p1

    if-lez v2, :cond_1

    int-to-float v2, p3

    cmpl-float v3, v2, v1

    if-lez v3, :cond_0

    float-to-int v1, v1

    sub-int v1, p3, v1

    .line 812
    aput v1, p4, v0

    .line 813
    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalUnconsumed:F

    goto :goto_0

    :cond_0
    sub-float/2addr v1, v2

    .line 815
    iput v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 816
    aput p3, p4, v0

    .line 818
    :goto_0
    iget v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-virtual {p0, v1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->moveSpinner(F)V

    .line 825
    :cond_1
    iget-boolean v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v1, :cond_2

    if-lez p3, :cond_2

    iget v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_2

    aget p1, p4, v0

    sub-int p1, p3, p1

    .line 826
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-lez p1, :cond_2

    .line 827
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 831
    :cond_2
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mParentScrollConsumed:[I

    const/4 v1, 0x0

    .line 832
    aget v2, p4, v1

    sub-int/2addr p2, v2

    aget v2, p4, v0

    sub-int/2addr p3, v2

    const/4 v2, 0x0

    invoke-virtual {p0, p2, p3, p1, v2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 833
    aget p2, p4, v1

    aget p3, p1, v1

    add-int/2addr p2, p3

    aput p2, p4, v1

    .line 834
    aget p2, p4, v0

    aget p1, p1, v0

    add-int/2addr p2, p1

    aput p2, p4, v0

    :cond_3
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6

    .line 861
    iget-object v5, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->dispatchNestedScroll(IIII[I)Z

    .line 869
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    const/4 p2, 0x1

    aget p1, p1, p2

    add-int/2addr p5, p1

    if-gez p5, :cond_0

    .line 870
    invoke-virtual {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result p1

    if-nez p1, :cond_0

    .line 871
    iget p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 872
    iget p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-virtual {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->moveSpinner(F)V

    :cond_0
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    and-int/lit8 p1, p3, 0x2

    .line 801
    invoke-virtual {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->startNestedScroll(I)Z

    const/4 p1, 0x0

    .line 802
    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalUnconsumed:F

    const/4 p1, 0x1

    .line 803
    iput-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    .line 792
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mRefreshing:Z

    if-nez p1, :cond_0

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2

    .line 845
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 846
    iput-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 849
    iget p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalUnconsumed:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    .line 850
    invoke-virtual {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->finishSpinner(F)V

    .line 851
    iput v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 854
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->stopNestedScroll()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1032
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1035
    iget-boolean v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mReturningToStart:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 1036
    iput-boolean v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mReturningToStart:Z

    .line 1039
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v1, :cond_f

    invoke-virtual {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v1

    if-nez v1, :cond_f

    iget-boolean v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v1, 0x1

    if-eqz v0, :cond_d

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, -0x1

    if-eq v0, v1, :cond_a

    const/4 v5, 0x2

    if-eq v0, v5, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    goto/16 :goto_1

    .line 1079
    :cond_2
    invoke-direct {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1069
    :cond_3
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    if-gez v0, :cond_4

    .line 1071
    sget-object p1, Lcom/narvii/list/refresh/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1074
    :cond_4
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mActivePointerId:I

    goto :goto_1

    :cond_5
    return v2

    .line 1051
    :cond_6
    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    if-gez v0, :cond_7

    .line 1053
    sget-object p1, Lcom/narvii/list/refresh/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1057
    :cond_7
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 1058
    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mInitialMotionY:F

    sub-float/2addr p1, v0

    mul-float p1, p1, v3

    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mReversed:Z

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v4, 0x1

    :goto_0
    int-to-float v0, v4

    mul-float p1, p1, v0

    .line 1059
    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_9

    .line 1061
    invoke-virtual {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->moveSpinner(F)V

    goto :goto_1

    :cond_9
    return v2

    .line 1083
    :cond_a
    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    if-gez v0, :cond_b

    .line 1085
    sget-object p1, Lcom/narvii/list/refresh/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1089
    :cond_b
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 1090
    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mInitialMotionY:F

    sub-float/2addr p1, v0

    mul-float p1, p1, v3

    iget-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mReversed:Z

    if-eqz v0, :cond_c

    const/4 v1, -0x1

    :cond_c
    int-to-float v0, v1

    mul-float p1, p1, v0

    .line 1091
    iput-boolean v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 1092
    invoke-virtual {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->finishSpinner(F)V

    .line 1093
    iput v4, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mActivePointerId:I

    return v2

    .line 1046
    :cond_d
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mActivePointerId:I

    .line 1047
    iput-boolean v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    :cond_e
    :goto_1
    return v1

    :cond_f
    :goto_2
    return v2
.end method

.method public varargs setColorScheme([I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 529
    invoke-virtual {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setColorSchemeResources([I)V

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1

    .line 557
    invoke-direct {p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->ensureTarget()V

    .line 558
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setColorSchemeColors([I)V

    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4

    .line 540
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 541
    array-length v1, p1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 542
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 543
    aget v3, p1, v2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 545
    :cond_0
    invoke-virtual {p0, v1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setColorSchemeColors([I)V

    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 0

    int-to-float p1, p1

    .line 589
    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTotalDragDistance:F

    return-void
.end method

.method public setIsNestedScrollingChild(Z)V
    .locals 0

    .line 221
    iput-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->shouldDispatchNestedScrollingEvents:Z

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 880
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnRefreshListener(Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mListener:Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;

    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 502
    invoke-virtual {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/CircleImageView;->setBackgroundColor(I)V

    .line 521
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setBackgroundColor(I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 1

    .line 511
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    return-void
.end method

.method public setProgressViewEndTarget(ZI)V
    .locals 0

    int-to-float p2, p2

    .line 271
    iput p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    .line 272
    iput-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScale:Z

    .line 273
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setProgressViewOffset(ZII)V
    .locals 1

    .line 250
    iput-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mScale:Z

    .line 251
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    iput p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iput p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    int-to-float p1, p3

    .line 253
    iput p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    const/4 p1, 0x1

    .line 254
    iput-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mUsingCustomStart:Z

    .line 255
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setRefreshing(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 388
    iget-boolean v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mRefreshing:Z

    if-eq v1, p1, :cond_1

    .line 390
    iput-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mRefreshing:Z

    .line 392
    iget-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez p1, :cond_0

    .line 393
    iget p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    iget v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    goto :goto_0

    .line 395
    :cond_0
    iget p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    :goto_0
    float-to-int p1, p1

    .line 397
    iget v1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr p1, v1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 399
    iput-boolean v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNotify:Z

    .line 400
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    .line 402
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setRefreshing(ZZ)V

    :goto_1
    return-void
.end method

.method public setReversed(Z)V
    .locals 0

    .line 1222
    iput-boolean p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mReversed:Z

    .line 1223
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setSize(I)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 283
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez p1, :cond_1

    const/high16 v1, 0x42600000    # 56.0f

    .line 285
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleWidth:I

    iput v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleHeight:I

    goto :goto_0

    :cond_1
    const/high16 v1, 0x42200000    # 40.0f

    .line 287
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleWidth:I

    iput v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleHeight:I

    .line 292
    :goto_0
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 293
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->updateSizes(I)V

    .line 294
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mCircleView:Lcom/narvii/list/refresh/CircleImageView;

    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mProgress:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTarget(Lcom/narvii/widget/NVListView;)V
    .locals 0

    .line 686
    iput-object p0, p1, Lcom/narvii/widget/NVListView;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 687
    iput-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    return-void
.end method

.method public setTarget(Lcom/narvii/widget/NVScrollView;)V
    .locals 0

    .line 691
    iput-object p0, p1, Lcom/narvii/widget/NVScrollView;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 692
    iput-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 890
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 895
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method
