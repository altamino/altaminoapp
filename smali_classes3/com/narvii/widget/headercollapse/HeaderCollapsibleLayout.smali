.class public Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;
.super Landroid/widget/LinearLayout;
.source "HeaderCollapsibleLayout.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingParent;
.implements Landroid/support/v4/view/NestedScrollingChild;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$OnViewFinishInflateListener;,
        Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$HeaderStatus;
    }
.end annotation


# static fields
.field public static final COLLAPSED:I = 0x2

.field public static final COLLAPSING:I = 0x1

.field public static final EXPANDED:I = 0x4

.field public static final EXPANDING:I = 0x3


# instance fields
.field private headerHeightAnimator:Landroid/animation/Animator;

.field private isFirstLayout:Z

.field private lastHeaderHeight:I

.field private lastVelocityY:F

.field private mAbsorbHeaderThreshold:I

.field private mAutoDrawerModeEnabled:Z

.field private mBottomView:Landroid/view/ViewGroup;

.field private mBounceBackForOvershooting:Landroid/animation/Animator;

.field private mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field private mContext:Landroid/content/Context;

.field protected mCurHeaderStatus:I

.field private mDefaultExpand:Z

.field private mHeaderStatusChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsBeingDragged:Z

.field protected mIsEnabled:Z

.field protected mIsScrollingDown:Z

.field private mOrgHeaderHeight:I

.field private mOrgHeaderHeightBackup:I

.field private mOvershootDistance:I

.field private mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

.field private mStickyFooterHeight:I

.field private mStickyFooterLayoutId:I

.field private mSupportFlingAction:Z

.field private mTopView:Landroid/view/ViewGroup;

.field private mViewFinishInflateListener:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$OnViewFinishInflateListener;

.field protected needAutoExpand:Z

.field private pendingHeaderInvalidateAction:Ljava/lang/Runnable;

.field private skipLayout:Z

.field private unconsumedDy:I

.field private viewVisibleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 85
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 57
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeightBackup:I

    .line 58
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterLayoutId:I

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mAutoDrawerModeEnabled:Z

    .line 63
    iput-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mDefaultExpand:Z

    .line 64
    iput-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsEnabled:Z

    .line 77
    iput-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->isFirstLayout:Z

    .line 80
    iput-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->needAutoExpand:Z

    const v0, -0x42333333    # -0.1f

    .line 1038
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastVelocityY:F

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 57
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeightBackup:I

    .line 58
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterLayoutId:I

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mAutoDrawerModeEnabled:Z

    .line 63
    iput-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mDefaultExpand:Z

    .line 64
    iput-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsEnabled:Z

    .line 77
    iput-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->isFirstLayout:Z

    .line 80
    iput-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->needAutoExpand:Z

    const v0, -0x42333333    # -0.1f

    .line 1038
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastVelocityY:F

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 56
    iput p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 57
    iput p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeightBackup:I

    .line 58
    iput p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterLayoutId:I

    const/4 p3, 0x0

    .line 59
    iput p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    const/4 p3, 0x1

    .line 62
    iput-boolean p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mAutoDrawerModeEnabled:Z

    .line 63
    iput-boolean p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mDefaultExpand:Z

    .line 64
    iput-boolean p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsEnabled:Z

    .line 77
    iput-boolean p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->isFirstLayout:Z

    .line 80
    iput-boolean p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->needAutoExpand:Z

    const p3, -0x42333333    # -0.1f

    .line 1038
    iput p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastVelocityY:F

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->skipLayout:Z

    return p1
.end method

.method static synthetic access$100(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->innerInvalidateHeader()V

    return-void
.end method

.method static synthetic access$202(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->pendingHeaderInvalidateAction:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->runPendingHeaderInvalidate()V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mHeaderStatusChangedListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->innerSmoothExpand()V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)Landroid/view/ViewGroup;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$702(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastHeaderHeight:I

    return p1
.end method

.method static synthetic access$800(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    return p0
.end method

.method static synthetic access$900(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    return p0
.end method

.method private changeHeaderHeightTo(I)V
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 645
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 646
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 103
    iput-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->initStyleable(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    iget-boolean p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mDefaultExpand:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    iput p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mCurHeaderStatus:I

    .line 111
    new-instance p2, Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {p2, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 112
    new-instance p2, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {p2, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 113
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mAbsorbHeaderThreshold:I

    .line 114
    invoke-virtual {p0, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method private initBottomView(ILandroid/view/ViewGroup;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mBottomView:Landroid/view/ViewGroup;

    return-void
.end method

.method private initStyleable(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 307
    :cond_0
    sget-object v0, Lcom/narvii/lib/R$styleable;->HeaderCollapsibleLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 309
    sget p2, Lcom/narvii/lib/R$styleable;->HeaderCollapsibleLayout_topPanelLayoutId:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_1

    .line 310
    sget p2, Lcom/narvii/lib/R$styleable;->HeaderCollapsibleLayout_topPanelLayoutId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-direct {p0, p2, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->initTopView(ILandroid/view/ViewGroup;)V

    .line 313
    :cond_1
    sget p2, Lcom/narvii/lib/R$styleable;->HeaderCollapsibleLayout_bottomPanelLayoutId:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 314
    sget p2, Lcom/narvii/lib/R$styleable;->HeaderCollapsibleLayout_bottomPanelLayoutId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-direct {p0, p2, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->initBottomView(ILandroid/view/ViewGroup;)V

    .line 317
    :cond_2
    sget p2, Lcom/narvii/lib/R$styleable;->HeaderCollapsibleLayout_stickyFooterLayoutId:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 318
    sget p2, Lcom/narvii/lib/R$styleable;->HeaderCollapsibleLayout_stickyFooterLayoutId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterLayoutId:I

    .line 321
    :cond_3
    sget p2, Lcom/narvii/lib/R$styleable;->HeaderCollapsibleLayout_supportFlingAction:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mSupportFlingAction:Z

    .line 324
    sget p2, Lcom/narvii/lib/R$styleable;->HeaderCollapsibleLayout_autoDrawerModeEnabled:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 325
    sget p2, Lcom/narvii/lib/R$styleable;->HeaderCollapsibleLayout_autoDrawerModeEnabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mAutoDrawerModeEnabled:Z

    .line 328
    :cond_4
    sget p2, Lcom/narvii/lib/R$styleable;->HeaderCollapsibleLayout_defaultExpand:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 329
    sget p2, Lcom/narvii/lib/R$styleable;->HeaderCollapsibleLayout_defaultExpand:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mDefaultExpand:Z

    .line 332
    :cond_5
    sget p2, Lcom/narvii/lib/R$styleable;->HeaderCollapsibleLayout_overshootDistance:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 333
    sget p2, Lcom/narvii/lib/R$styleable;->HeaderCollapsibleLayout_overshootDistance:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOvershootDistance:I

    .line 336
    :cond_6
    iget-object p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    if-eqz p2, :cond_7

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 338
    :cond_7
    iget-object p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mBottomView:Landroid/view/ViewGroup;

    if-eqz p2, :cond_8

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 340
    :cond_8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initTopView(ILandroid/view/ViewGroup;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    return-void
.end method

.method private innerInvalidateHeader()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->headerHeightAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v0, -0x1

    .line 173
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 174
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    .line 176
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 177
    iget-object v1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private innerSmoothExpand()V
    .locals 2

    .line 507
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    new-instance v1, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$5;

    invoke-direct {v1, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$5;-><init>(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V

    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->smoothChangeHeaderHeightTo(ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;

    const v0, -0x42333333    # -0.1f

    .line 541
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastVelocityY:F

    return-void
.end method

.method private isReachedEdge(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_1

    .line 635
    iget-object v2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    sub-int/2addr v2, v3

    if-le p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 638
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    iget v3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOvershootDistance:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    if-le p1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private runPendingHeaderInvalidate()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->pendingHeaderInvalidateAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 183
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private shouldConsumeNestedScroll(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_1

    .line 622
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget v2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    if-le p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 625
    :cond_1
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget v2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    iget v3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOvershootDistance:I

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private smoothChangeHeaderHeightTo(IJLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;
    .locals 4

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 682
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 683
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 684
    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 685
    new-instance p1, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$6;

    invoke-direct {p1, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$6;-><init>(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {p1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 695
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 696
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 697
    new-instance p2, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$7;

    invoke-direct {p2, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$7;-><init>(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p4, :cond_1

    .line 713
    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 714
    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 716
    iput-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->headerHeightAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method private smoothChangeHeaderHeightTo(ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;
    .locals 2

    const-wide/16 v0, 0x12c

    .line 659
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->smoothChangeHeaderHeightTo(IJLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method private smoothScrollTo(IJLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "scrollY"

    .line 650
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 651
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 652
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz p4, :cond_0

    .line 653
    invoke-virtual {p1, p4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 654
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-object p1
.end method


# virtual methods
.method public addOnHeaderStatusChangedListener(Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;)V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mHeaderStatusChangedListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mHeaderStatusChangedListeners:Ljava/util/List;

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mHeaderStatusChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mHeaderStatusChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public collapse()V
    .locals 2

    .line 420
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    invoke-direct {p0, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->changeHeaderHeightTo(I)V

    const/4 v0, 0x2

    .line 422
    invoke-virtual {p0, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->onHeaderStatusChanged(I)V

    .line 424
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mHeaderStatusChangedListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 425
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;

    .line 426
    invoke-interface {v1}, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;->onHeaderCollapsed()V

    goto :goto_0

    :cond_0
    const v0, 0x3dcccccd    # 0.1f

    .line 430
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastVelocityY:F

    return-void
.end method

.method public disableCollapsing()V
    .locals 2

    .line 545
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 546
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeightBackup:I

    .line 547
    iput v1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 550
    :cond_0
    iput-boolean v1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsEnabled:Z

    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 595
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    return p1
.end method

.method public enableCollapsing()V
    .locals 1

    .line 554
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeightBackup:I

    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    const/4 v0, 0x1

    .line 555
    iput-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsEnabled:Z

    return-void
.end method

.method public expand()V
    .locals 2

    .line 481
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    invoke-direct {p0, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->changeHeaderHeightTo(I)V

    const/4 v0, 0x4

    .line 483
    invoke-virtual {p0, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->onHeaderStatusChanged(I)V

    .line 485
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mHeaderStatusChangedListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 486
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;

    .line 487
    invoke-interface {v1}, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;->onHeaderExpanded()V

    goto :goto_0

    :cond_0
    const v0, -0x42333333    # -0.1f

    .line 491
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastVelocityY:F

    return-void
.end method

.method public getBottomView()Landroid/view/ViewGroup;
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mBottomView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getCurrentHeaderStatus()I
    .locals 1

    .line 416
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mCurHeaderStatus:I

    return v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 1124
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getTopView()Landroid/view/View;
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public invalidateHeader(Landroid/view/View;Z)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->viewVisibleMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->viewVisibleMap:Ljava/util/HashMap;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->viewVisibleMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 123
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->viewVisibleMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->viewVisibleMap:Ljava/util/HashMap;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->invalidateHeader(Ljava/util/HashMap;Z)V

    return-void
.end method

.method public invalidateHeader(Ljava/util/HashMap;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 129
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 132
    :cond_0
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mCurHeaderStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mBounceBackForOvershooting:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    .line 133
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 140
    :cond_2
    new-instance v0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$1;-><init>(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;ZLjava/util/HashMap;)V

    iput-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->pendingHeaderInvalidateAction:Ljava/lang/Runnable;

    .line 151
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mBounceBackForOvershooting:Landroid/animation/Animator;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 152
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mBounceBackForOvershooting:Landroid/animation/Animator;

    new-instance p2, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$2;

    invoke-direct {p2, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$2;-><init>(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_3

    .line 134
    :cond_3
    :goto_0
    iput-boolean p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->skipLayout:Z

    .line 135
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 136
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 138
    :cond_5
    invoke-direct {p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->innerInvalidateHeader()V

    :cond_6
    :goto_3
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 559
    iget-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsEnabled:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 189
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 191
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 196
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 198
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method protected onFirstLayout()V
    .locals 0

    return-void
.end method

.method public final onGlobalLayout()V
    .locals 4

    .line 204
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    if-gtz v0, :cond_b

    .line 205
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 209
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 210
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOvershootDistance:I

    const/4 v1, 0x0

    if-gez v0, :cond_1

    .line 211
    iput v1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOvershootDistance:I

    goto :goto_0

    :cond_1
    const v2, 0x7fffffff

    .line 212
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_2

    .line 213
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    .line 216
    :cond_2
    :goto_0
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterLayoutId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 217
    iget-object v2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 220
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    .line 221
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    iget v2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    .line 225
    :cond_3
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastHeaderHeight:I

    .line 226
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeightBackup:I

    const/4 v2, 0x1

    if-lez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 227
    :goto_1
    iput-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsEnabled:Z

    .line 230
    iget-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->skipLayout:Z

    if-eqz v0, :cond_5

    .line 231
    invoke-virtual {p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->collapse()V

    .line 233
    iput-boolean v1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->skipLayout:Z

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    .line 237
    :goto_2
    iget-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->isFirstLayout:Z

    if-eqz v0, :cond_8

    .line 238
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mViewFinishInflateListener:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$OnViewFinishInflateListener;

    if-eqz v0, :cond_6

    .line 239
    invoke-interface {v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$OnViewFinishInflateListener;->onViewFinishInflate()V

    .line 242
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->onFirstLayout()V

    .line 244
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 246
    iget-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mDefaultExpand:Z

    if-nez v0, :cond_7

    .line 247
    invoke-virtual {p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->collapse()V

    .line 250
    :cond_7
    iput-boolean v1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->isFirstLayout:Z

    goto :goto_5

    :cond_8
    if-nez v2, :cond_b

    .line 252
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    if-lez v0, :cond_9

    const/4 v0, 0x4

    .line 253
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mCurHeaderStatus:I

    goto :goto_3

    :cond_9
    const/4 v0, 0x2

    .line 255
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mCurHeaderStatus:I

    .line 257
    :goto_3
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mHeaderStatusChangedListeners:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 258
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;

    .line 259
    iget v2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    if-lez v2, :cond_a

    .line 260
    invoke-interface {v1}, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;->onHeaderExpanded()V

    goto :goto_4

    .line 262
    :cond_a
    invoke-interface {v1}, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;->onHeaderCollapsed()V

    goto :goto_4

    :cond_b
    :goto_5
    return-void
.end method

.method protected onHeaderStatusChanged(I)V
    .locals 1

    .line 271
    iput p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mCurHeaderStatus:I

    .line 272
    iget p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mCurHeaderStatus:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 273
    :cond_0
    invoke-direct {p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->runPendingHeaderInvalidate()V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 296
    iget-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->skipLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 299
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 282
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    xor-int/lit8 p1, p4, 0x1

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1

    .line 1046
    iget-boolean p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mSupportFlingAction:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    cmpl-float v0, p3, p1

    if-lez v0, :cond_1

    .line 1047
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastVelocityY:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_1

    .line 1048
    iget p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mCurHeaderStatus:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1050
    iget p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    new-instance v0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$10;

    invoke-direct {v0, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$10;-><init>(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V

    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->smoothChangeHeaderHeightTo(ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;

    .line 1079
    :cond_0
    iput p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastVelocityY:F

    .line 1081
    invoke-virtual {p0, p2, p3}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1

    :cond_1
    cmpg-float p1, p3, p1

    if-gez p1, :cond_3

    .line 1082
    iget p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->unconsumedDy:I

    if-ltz p1, :cond_2

    iget-boolean p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->needAutoExpand:Z

    if-eqz p1, :cond_3

    .line 1084
    :cond_2
    iget p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mCurHeaderStatus:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    .line 1086
    iget p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    new-instance v0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$11;

    invoke-direct {v0, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$11;-><init>(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V

    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->smoothChangeHeaderHeightTo(ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;

    .line 1117
    :cond_3
    iput p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastVelocityY:F

    .line 1119
    invoke-virtual {p0, p2, p3}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 7

    .line 948
    iget-boolean p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsBeingDragged:Z

    if-eqz p1, :cond_3

    .line 952
    iget-boolean p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsScrollingDown:Z

    if-eqz p1, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastHeaderHeight:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int p1, p3, p1

    goto :goto_1

    :cond_1
    if-lez p3, :cond_2

    :goto_0
    move p1, p3

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 953
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastHeaderHeight:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/2addr p1, p3

    :goto_1
    move v5, p1

    goto :goto_2

    :cond_3
    move v5, p3

    .line 955
    :goto_2
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p1, v0, :cond_5

    if-gez v5, :cond_4

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    .line 956
    :goto_3
    iput-boolean p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsScrollingDown:Z

    .line 957
    iput-boolean v2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsBeingDragged:Z

    :cond_5
    const/4 p1, 0x0

    .line 959
    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    if-nez p1, :cond_11

    .line 960
    invoke-direct {p0, v5}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->shouldConsumeNestedScroll(I)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    :cond_6
    if-gez v5, :cond_8

    if-eq v5, p3, :cond_7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    .line 970
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->onNestedScroll(Landroid/view/View;IIII)V

    :cond_7
    return-void

    .line 975
    :cond_8
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    .line 977
    iget p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mCurHeaderStatus:I

    if-eq p2, v2, :cond_a

    .line 979
    iget p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    if-le p1, p2, :cond_a

    iget p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOvershootDistance:I

    add-int/2addr p2, v0

    if-ge p1, p2, :cond_a

    iget-boolean p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsEnabled:Z

    if-eqz p2, :cond_a

    .line 980
    iget-object p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mHeaderStatusChangedListeners:Ljava/util/List;

    if-eqz p2, :cond_9

    .line 981
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;

    .line 982
    invoke-interface {v0}, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;->onHeaderStartCollapsing()V

    goto :goto_4

    .line 986
    :cond_9
    invoke-virtual {p0, v2}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->onHeaderStatusChanged(I)V

    .line 992
    :cond_a
    invoke-direct {p0, v5}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->isReachedEdge(I)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 993
    iget p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    if-le p1, p2, :cond_b

    sub-int p2, p1, p2

    move v5, p2

    goto :goto_5

    :cond_b
    const/4 v5, 0x0

    :cond_c
    :goto_5
    if-eqz v5, :cond_d

    .line 999
    iget-boolean p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsBeingDragged:Z

    if-eqz p2, :cond_d

    .line 1000
    iget-object p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1001
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastHeaderHeight:I

    .line 1002
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    sub-int/2addr v0, v5

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1003
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1006
    :cond_d
    iget-object p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mHeaderStatusChangedListeners:Ljava/util/List;

    if-eqz p2, :cond_e

    iget-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsEnabled:Z

    if-eqz v0, :cond_e

    .line 1007
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;

    .line 1008
    iget v3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    sub-int v4, v3, p1

    sub-int v5, v3, p1

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v5, v5, v6

    iget v6, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    sub-int v6, v3, v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget-boolean v6, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsScrollingDown:Z

    invoke-interface {v0, v4, v3, v5, v6}, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;->onHeaderOffsetChanged(IIFZ)V

    goto :goto_6

    .line 1016
    :cond_e
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    if-ne p1, p2, :cond_10

    iget-boolean p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsEnabled:Z

    if-eqz p1, :cond_10

    .line 1017
    iget p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mCurHeaderStatus:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_10

    .line 1018
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mHeaderStatusChangedListeners:Ljava/util/List;

    if-eqz p1, :cond_f

    .line 1019
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;

    .line 1020
    invoke-interface {v0}, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;->onHeaderCollapsed()V

    goto :goto_7

    .line 1024
    :cond_f
    invoke-virtual {p0, p2}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->onHeaderStatusChanged(I)V

    .line 1028
    :cond_10
    aput v1, p4, v1

    .line 1029
    aput p3, p4, v2

    :cond_11
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 9

    .line 834
    iput p5, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->unconsumedDy:I

    .line 836
    iget-boolean p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsBeingDragged:Z

    if-eqz p1, :cond_1

    if-gez p5, :cond_0

    goto :goto_0

    .line 840
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastHeaderHeight:I

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int p1, p5, p1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p5

    :goto_1
    if-ltz p1, :cond_2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p3

    move v4, p5

    .line 844
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->dispatchNestedScroll(IIII[I)Z

    return-void

    .line 849
    :cond_2
    iget-object p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    .line 852
    iget p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    if-lt p2, p3, :cond_4

    iget-boolean p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsEnabled:Z

    if-eqz p3, :cond_4

    .line 853
    iget p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mCurHeaderStatus:I

    const/4 p4, 0x4

    if-eq p3, p4, :cond_4

    .line 854
    iget-object p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mHeaderStatusChangedListeners:Ljava/util/List;

    if-eqz p3, :cond_3

    .line 855
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;

    .line 856
    invoke-interface {v0}, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;->onHeaderExpanded()V

    goto :goto_2

    .line 860
    :cond_3
    invoke-virtual {p0, p4}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->onHeaderStatusChanged(I)V

    .line 869
    :cond_4
    iget p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    const/4 p4, 0x3

    if-lt p2, p3, :cond_d

    iget p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    if-lez p3, :cond_d

    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOvershootDistance:I

    add-int/2addr p3, v0

    if-ge p2, p3, :cond_d

    .line 870
    invoke-direct {p0, p1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->isReachedEdge(I)Z

    move-result p3

    if-eqz p3, :cond_6

    if-gez p5, :cond_5

    .line 874
    iget p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    sub-int/2addr p1, p2

    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOvershootDistance:I

    add-int/2addr p1, v0

    neg-int p1, p1

    goto :goto_3

    .line 877
    :cond_5
    iget p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    sub-int p1, p2, p1

    :goto_3
    move v0, p1

    goto :goto_5

    .line 881
    :cond_6
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    if-le p2, v0, :cond_7

    .line 882
    div-int/lit8 v0, p1, 0x3

    goto :goto_4

    :cond_7
    move v0, p1

    :goto_4
    move v8, v0

    move v0, p1

    move p1, v8

    :goto_5
    if-eqz p1, :cond_8

    .line 890
    iget-boolean v1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsBeingDragged:Z

    if-eqz v1, :cond_8

    .line 891
    iget-object v1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 892
    iput p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastHeaderHeight:I

    sub-int v2, p2, p1

    .line 893
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 894
    iget-object v2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    int-to-double v1, p2

    .line 899
    iget v3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    iget v4, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    const-wide v5, 0x3fbeb851eb851eb8L    # 0.12

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_b

    iget-boolean v1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsEnabled:Z

    if-eqz v1, :cond_b

    .line 900
    iget-object v1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mHeaderStatusChangedListeners:Ljava/util/List;

    if-eqz v1, :cond_9

    .line 901
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;

    .line 902
    iget v3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    sub-int v4, v3, p2

    sub-int v5, v3, p2

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v5, v5, v6

    iget v6, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    sub-int v6, v3, v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget-boolean v6, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsScrollingDown:Z

    invoke-interface {v2, v4, v3, v5, v6}, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;->onHeaderOffsetChanged(IIFZ)V

    goto :goto_6

    .line 908
    :cond_9
    iget p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mCurHeaderStatus:I

    if-eq p2, p4, :cond_b

    const/4 v1, 0x2

    if-ne p2, v1, :cond_b

    .line 910
    iget-object p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mHeaderStatusChangedListeners:Ljava/util/List;

    if-eqz p2, :cond_a

    .line 911
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;

    .line 912
    invoke-interface {v1}, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;->onHeaderStartExpanding()V

    goto :goto_7

    .line 916
    :cond_a
    invoke-virtual {p0, p4}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->onHeaderStatusChanged(I)V

    :cond_b
    if-eqz p3, :cond_c

    move v4, v0

    goto :goto_8

    :cond_c
    move v4, p1

    :goto_8
    sub-int v6, p5, v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 932
    invoke-virtual/range {v2 .. v7}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->dispatchNestedScroll(IIII[I)Z

    goto :goto_9

    .line 933
    :cond_d
    iget p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    if-nez p2, :cond_e

    iget p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOvershootDistance:I

    if-lez p2, :cond_e

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result p2

    iget p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOvershootDistance:I

    neg-int p3, p3

    if-le p2, p3, :cond_e

    .line 934
    div-int/lit8 v2, p1, 0x3

    const/4 p1, 0x0

    .line 935
    invoke-virtual {p0, p1, v2}, Landroid/widget/LinearLayout;->scrollBy(II)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    sub-int v4, p5, v2

    const/4 v5, 0x0

    move-object v0, p0

    .line 936
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->dispatchNestedScroll(IIII[I)Z

    :cond_e
    :goto_9
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    const/4 p1, 0x2

    .line 736
    invoke-virtual {p0, p1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->startNestedScroll(I)Z

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

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
    .locals 4

    .line 741
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastHeaderHeight:I

    const/4 v0, 0x0

    .line 742
    iput-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsBeingDragged:Z

    .line 743
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->unconsumedDy:I

    .line 744
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 745
    invoke-virtual {p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->stopNestedScroll()V

    .line 747
    iget p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOvershootDistance:I

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    if-gt p1, v0, :cond_0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result p1

    if-gez p1, :cond_4

    .line 748
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mBounceBackForOvershooting:Landroid/animation/Animator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 749
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mBounceBackForOvershooting:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 751
    :cond_1
    iget p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    const/4 v0, 0x0

    const-wide/16 v1, 0x190

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget v3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    if-le p1, v3, :cond_2

    .line 752
    invoke-direct {p0, v3, v1, v2, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->smoothChangeHeaderHeightTo(IJLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mBounceBackForOvershooting:Landroid/animation/Animator;

    goto :goto_0

    .line 753
    :cond_2
    iget p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result p1

    if-gez p1, :cond_3

    .line 754
    iget p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->smoothScrollTo(IJLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mBounceBackForOvershooting:Landroid/animation/Animator;

    :cond_3
    :goto_0
    return-void

    .line 759
    :cond_4
    iget-boolean p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mAutoDrawerModeEnabled:Z

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mCurHeaderStatus:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    goto :goto_1

    .line 763
    :cond_5
    iget-boolean p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsScrollingDown:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mAbsorbHeaderThreshold:I

    if-le p1, v0, :cond_6

    .line 764
    iget p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    new-instance v0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$8;

    invoke-direct {v0, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$8;-><init>(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V

    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->smoothChangeHeaderHeightTo(ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;

    goto :goto_1

    .line 791
    :cond_6
    iget-boolean p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsScrollingDown:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    iget v1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mAbsorbHeaderThreshold:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_7

    .line 792
    iget p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    new-instance v0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$9;

    invoke-direct {v0, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$9;-><init>(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V

    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->smoothChangeHeaderHeightTo(ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;

    :cond_7
    :goto_1
    return-void
.end method

.method public removeOnHeaderStatusChangedListener(Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;)V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mHeaderStatusChangedListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 399
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnViewFinishInflateListener()V
    .locals 1

    const/4 v0, 0x0

    .line 407
    iput-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mViewFinishInflateListener:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$OnViewFinishInflateListener;

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x2

    .line 411
    invoke-virtual {p0, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->onHeaderStatusChanged(I)V

    return-void
.end method

.method public setBottomLayout(I)V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mBottomView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 357
    iput-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mBottomView:Landroid/view/ViewGroup;

    .line 359
    :cond_0
    invoke-direct {p0, p1, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->initBottomView(ILandroid/view/ViewGroup;)V

    .line 360
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mBottomView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 361
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnViewFinishInflateListener(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$OnViewFinishInflateListener;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mViewFinishInflateListener:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$OnViewFinishInflateListener;

    return-void
.end method

.method public setStickyFooterLayoutId(I)V
    .locals 0

    .line 366
    iput p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterLayoutId:I

    .line 367
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public setTopLayout(I)V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 346
    iput-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 348
    :cond_0
    invoke-direct {p0, p1, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->initTopView(ILandroid/view/ViewGroup;)V

    .line 349
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 350
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public smoothCollapse()V
    .locals 2

    .line 434
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    new-instance v1, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$3;

    invoke-direct {v1, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$3;-><init>(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V

    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->smoothChangeHeaderHeightTo(ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;

    const v0, 0x3dcccccd    # 0.1f

    .line 469
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastVelocityY:F

    return-void
.end method

.method public smoothExpand()V
    .locals 3

    .line 495
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    if-gez v0, :cond_0

    .line 496
    new-instance v0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$4;

    invoke-direct {v0, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$4;-><init>(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 503
    :cond_0
    invoke-direct {p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->innerSmoothExpand()V

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method
