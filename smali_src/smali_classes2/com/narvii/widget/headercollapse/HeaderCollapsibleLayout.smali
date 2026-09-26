.class public Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent;
.implements Landroidx/core/view/NestedScrollingChild;
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

.field private mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

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

.field private mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

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

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeightBackup:I

    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterLayoutId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mAutoDrawerModeEnabled:Z

    iput-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mDefaultExpand:Z

    iput-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsEnabled:Z

    iput-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->isFirstLayout:Z

    iput-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->needAutoExpand:Z

    const v0, -0x42333333    # -0.1f

    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastVelocityY:F

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeightBackup:I

    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterLayoutId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mAutoDrawerModeEnabled:Z

    iput-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mDefaultExpand:Z

    iput-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsEnabled:Z

    iput-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->isFirstLayout:Z

    iput-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->needAutoExpand:Z

    const v0, -0x42333333    # -0.1f

    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastVelocityY:F

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    iput p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    iput p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeightBackup:I

    iput p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterLayoutId:I

    const/4 p3, 0x0

    iput p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mAutoDrawerModeEnabled:Z

    iput-boolean p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mDefaultExpand:Z

    iput-boolean p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsEnabled:Z

    iput-boolean p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->isFirstLayout:Z

    iput-boolean p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->needAutoExpand:Z

    const p3, -0x42333333    # -0.1f

    iput p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastVelocityY:F

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mHeaderStatusChangedListeners:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    return p0
.end method

.method static bridge synthetic c(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    return p0
.end method

.method private changeHeaderHeightTo(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 9
    .line 10
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastHeaderHeight:I

    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->pendingHeaderInvalidateAction:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic g(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->skipLayout:Z

    return-void
.end method

.method static bridge synthetic h(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->innerInvalidateHeader()V

    return-void
.end method

.method static bridge synthetic i(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->innerSmoothExpand()V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mContext:Landroid/content/Context;

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->initStyleable(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    .line 11
    iget-boolean p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mDefaultExpand:Z

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    const/4 p2, 0x4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p2, 0x2

    .line 17
    .line 18
    :goto_0
    iput p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mCurHeaderStatus:I

    .line 19
    .line 20
    new-instance p2, Landroidx/core/view/NestedScrollingParentHelper;

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    .line 24
    .line 25
    iput-object p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 26
    .line 27
    new-instance p2, Landroidx/core/view/NestedScrollingChildHelper;

    .line 28
    .line 29
    .line 30
    invoke-direct {p2, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    .line 31
    .line 32
    iput-object p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 40
    move-result p1

    .line 41
    .line 42
    iput p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mAbsorbHeaderThreshold:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->setNestedScrollingEnabled(Z)V

    .line 46
    return-void
.end method

.method private initBottomView(ILandroid/view/ViewGroup;)V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    return-void

    .line 5
    .line 6
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Landroid/view/ViewGroup;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mBottomView:Landroid/view/ViewGroup;

    .line 20
    return-void
.end method

.method private initStyleable(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    sget-object v0, Lcom/narvii/lib/R$styleable;->HeaderCollapsibleLayout:[I

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    sget p2, Lcom/narvii/lib/R$styleable;->HeaderCollapsibleLayout_topPanelLayoutId:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 16
    move-result v0

    .line 17
    const/4 v2, -0x1

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 23
    move-result p2

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p2, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->initTopView(ILandroid/view/ViewGroup;)V

    .line 27
    .line 28
    :cond_1
    sget p2, Lcom/narvii/lib/R$styleable;->HeaderCollapsibleLayout_bottomPanelLayoutId:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 38
    move-result p2

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, p2, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->initBottomView(ILandroid/view/ViewGroup;)V

    .line 42
    .line 43
    :cond_2
    sget p2, Lcom/narvii/lib/R$styleable;->HeaderCollapsibleLayout_stickyFooterLayoutId:I

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 53
    move-result p2

    .line 54
    .line 55
    iput p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterLayoutId:I

    .line 56
    .line 57
    :cond_3
    sget p2, Lcom/narvii/lib/R$styleable;->HeaderCollapsibleLayout_supportFlingAction:I

    .line 58
    const/4 v0, 0x1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 62
    move-result p2

    .line 63
    .line 64
    iput-boolean p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mSupportFlingAction:Z

    .line 65
    .line 66
    sget p2, Lcom/narvii/lib/R$styleable;->HeaderCollapsibleLayout_autoDrawerModeEnabled:I

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 70
    move-result v2

    .line 71
    .line 72
    if-eqz v2, :cond_4

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 76
    move-result p2

    .line 77
    .line 78
    iput-boolean p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mAutoDrawerModeEnabled:Z

    .line 79
    .line 80
    :cond_4
    sget p2, Lcom/narvii/lib/R$styleable;->HeaderCollapsibleLayout_defaultExpand:I

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 84
    move-result v2

    .line 85
    .line 86
    if-eqz v2, :cond_5

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 90
    move-result p2

    .line 91
    .line 92
    iput-boolean p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mDefaultExpand:Z

    .line 93
    .line 94
    :cond_5
    sget p2, Lcom/narvii/lib/R$styleable;->HeaderCollapsibleLayout_overshootDistance:I

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 98
    move-result v0

    .line 99
    .line 100
    if-eqz v0, :cond_6

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 104
    move-result p2

    .line 105
    .line 106
    iput p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOvershootDistance:I

    .line 107
    .line 108
    :cond_6
    iget-object p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 109
    .line 110
    if-eqz p2, :cond_7

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 114
    .line 115
    :cond_7
    iget-object p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mBottomView:Landroid/view/ViewGroup;

    .line 116
    .line 117
    if-eqz p2, :cond_8

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 121
    .line 122
    .line 123
    :cond_8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 124
    return-void
.end method

.method private initTopView(ILandroid/view/ViewGroup;)V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    return-void

    .line 5
    .line 6
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Landroid/view/ViewGroup;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 20
    return-void
.end method

.method private innerInvalidateHeader()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->headerHeightAnimator:Landroid/animation/Animator;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 8
    :cond_0
    const/4 v0, -0x1

    .line 9
    .line 10
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 21
    const/4 v1, -0x2

    .line 22
    .line 23
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    :cond_1
    return-void
.end method

.method private innerSmoothExpand()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$5;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$5;-><init>(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->smoothChangeHeaderHeightTo(ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;

    .line 11
    .line 12
    .line 13
    const v0, -0x42333333    # -0.1f

    .line 14
    .line 15
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastVelocityY:F

    .line 16
    return-void
.end method

.method private isReachedEdge(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    if-lez p1, :cond_1

    .line 5
    .line 6
    iget-object v2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 10
    move-result v2

    .line 11
    .line 12
    iget v3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    .line 13
    sub-int/2addr v2, v3

    .line 14
    .line 15
    if-le p1, v2, :cond_0

    .line 16
    move v0, v1

    .line 17
    :cond_0
    return v0

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 21
    move-result p1

    .line 22
    .line 23
    iget v2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 24
    .line 25
    iget v3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOvershootDistance:I

    .line 26
    add-int/2addr v2, v3

    .line 27
    .line 28
    iget-object v3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 32
    move-result v3

    .line 33
    sub-int/2addr v2, v3

    .line 34
    .line 35
    if-le p1, v2, :cond_2

    .line 36
    move v0, v1

    .line 37
    :cond_2
    return v0
.end method

.method static bridge synthetic j(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->runPendingHeaderInvalidate()V

    return-void
.end method

.method private runPendingHeaderInvalidate()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->pendingHeaderInvalidateAction:Ljava/lang/Runnable;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 8
    :cond_0
    return-void
.end method

.method private shouldConsumeNestedScroll(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    if-lez p1, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 10
    move-result p1

    .line 11
    .line 12
    iget v2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    .line 13
    .line 14
    if-le p1, v2, :cond_0

    .line 15
    move v0, v1

    .line 16
    :cond_0
    return v0

    .line 17
    .line 18
    :cond_1
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 22
    move-result p1

    .line 23
    .line 24
    iget v2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 25
    .line 26
    iget v3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOvershootDistance:I

    .line 27
    add-int/2addr v2, v3

    .line 28
    .line 29
    if-ge p1, v2, :cond_2

    .line 30
    move v0, v1

    .line 31
    :cond_2
    return v0
.end method

.method private smoothChangeHeaderHeightTo(IJLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;
    .locals 4

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 4
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

    .line 5
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    new-instance p2, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$7;

    invoke-direct {p2, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$7;-><init>(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p4, :cond_1

    .line 8
    invoke-virtual {p1, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->headerHeightAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method private smoothChangeHeaderHeightTo(ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;
    .locals 2

    const-wide/16 v0, 0x12c

    .line 1
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->smoothChangeHeaderHeightTo(IJLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method private smoothScrollTo(IJLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;
    .locals 1

    .line 1
    .line 2
    const-string v0, "scrollY"

    .line 3
    .line 4
    .line 5
    filled-new-array {p1}, [I

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 22
    .line 23
    if-eqz p4, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 30
    return-object p1
.end method


# virtual methods
.method public addOnHeaderStatusChangedListener(Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mHeaderStatusChangedListeners:Ljava/util/List;

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
    iput-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mHeaderStatusChangedListeners:Ljava/util/List;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mHeaderStatusChangedListeners:Ljava/util/List;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    return-void

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mHeaderStatusChangedListeners:Ljava/util/List;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public collapse()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->changeHeaderHeightTo(I)V

    .line 6
    const/4 v0, 0x2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->onHeaderStatusChanged(I)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mHeaderStatusChangedListeners:Ljava/util/List;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;

    .line 30
    .line 31
    .line 32
    invoke-interface {v1}, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;->onHeaderCollapsed()V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_0
    const v0, 0x3dcccccd    # 0.1f

    .line 37
    .line 38
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastVelocityY:F

    .line 39
    return-void
.end method

.method public disableCollapsing()V
    .locals 2

    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeightBackup:I

    iput v1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    :cond_0
    iput-boolean v1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsEnabled:Z

    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

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
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

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
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

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
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

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

.method public enableCollapsing()V
    .locals 1

    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeightBackup:I

    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsEnabled:Z

    return-void
.end method

.method public expand()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->changeHeaderHeightTo(I)V

    .line 6
    const/4 v0, 0x4

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->onHeaderStatusChanged(I)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mHeaderStatusChangedListeners:Ljava/util/List;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;

    .line 30
    .line 31
    .line 32
    invoke-interface {v1}, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;->onHeaderExpanded()V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_0
    const v0, -0x42333333    # -0.1f

    .line 37
    .line 38
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastVelocityY:F

    .line 39
    return-void
.end method

.method public getBottomView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mBottomView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getCurrentHeaderStatus()I
    .locals 1

    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mCurHeaderStatus:I

    return v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->a()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getTopView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->k()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public invalidateHeader(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->viewVisibleMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->viewVisibleMap:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->viewVisibleMap:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->viewVisibleMap:Ljava/util/HashMap;

    .line 3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->viewVisibleMap:Ljava/util/HashMap;

    const/4 p2, 0x0

    .line 4
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

    .line 5
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mCurHeaderStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mBounceBackForOvershooting:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    new-instance v0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$1;-><init>(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;ZLjava/util/HashMap;)V

    iput-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->pendingHeaderInvalidateAction:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mBounceBackForOvershooting:Landroid/animation/Animator;

    if-eqz p1, :cond_6

    .line 8
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mBounceBackForOvershooting:Landroid/animation/Animator;

    .line 9
    new-instance p2, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$2;

    invoke-direct {p2, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$2;-><init>(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_3

    :cond_3
    :goto_0
    iput-boolean p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->skipLayout:Z

    .line 10
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

    .line 11
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

    .line 12
    :cond_5
    invoke-direct {p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->innerInvalidateHeader()V

    :cond_6
    :goto_3
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsEnabled:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->m()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 21
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 21
    :cond_0
    return-void
.end method

.method protected onFirstLayout()V
    .locals 0

    return-void
.end method

.method public final onGlobalLayout()V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 3
    .line 4
    if-gtz v0, :cond_b

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 13
    move-result v0

    .line 14
    .line 15
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 16
    .line 17
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOvershootDistance:I

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    if-gez v0, :cond_1

    .line 21
    .line 22
    iput v1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOvershootDistance:I

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_1
    const v2, 0x7fffffff

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 30
    move-result v3

    .line 31
    sub-int/2addr v2, v3

    .line 32
    .line 33
    if-le v0, v2, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 37
    .line 38
    :cond_2
    :goto_0
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterLayoutId:I

    .line 39
    const/4 v2, -0x1

    .line 40
    .line 41
    if-eq v0, v2, :cond_3

    .line 42
    .line 43
    iget-object v2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 53
    move-result v0

    .line 54
    .line 55
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    .line 56
    .line 57
    iget v2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 58
    .line 59
    .line 60
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 61
    move-result v0

    .line 62
    .line 63
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    .line 64
    .line 65
    :cond_3
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    .line 66
    .line 67
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastHeaderHeight:I

    .line 68
    .line 69
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 70
    .line 71
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeightBackup:I

    .line 72
    const/4 v2, 0x1

    .line 73
    .line 74
    if-lez v0, :cond_4

    .line 75
    move v0, v2

    .line 76
    goto :goto_1

    .line 77
    :cond_4
    move v0, v1

    .line 78
    .line 79
    :goto_1
    iput-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsEnabled:Z

    .line 80
    .line 81
    iget-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->skipLayout:Z

    .line 82
    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->collapse()V

    .line 87
    .line 88
    iput-boolean v1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->skipLayout:Z

    .line 89
    goto :goto_2

    .line 90
    :cond_5
    move v2, v1

    .line 91
    .line 92
    :goto_2
    iget-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->isFirstLayout:Z

    .line 93
    .line 94
    if-eqz v0, :cond_8

    .line 95
    .line 96
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mViewFinishInflateListener:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$OnViewFinishInflateListener;

    .line 97
    .line 98
    if-eqz v0, :cond_6

    .line 99
    .line 100
    .line 101
    invoke-interface {v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$OnViewFinishInflateListener;->onViewFinishInflate()V

    .line 102
    .line 103
    .line 104
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->onFirstLayout()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 108
    .line 109
    iget-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mDefaultExpand:Z

    .line 110
    .line 111
    if-nez v0, :cond_7

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->collapse()V

    .line 115
    .line 116
    :cond_7
    iput-boolean v1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->isFirstLayout:Z

    .line 117
    goto :goto_5

    .line 118
    .line 119
    :cond_8
    if-nez v2, :cond_b

    .line 120
    .line 121
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 122
    .line 123
    if-lez v0, :cond_9

    .line 124
    const/4 v0, 0x4

    .line 125
    .line 126
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mCurHeaderStatus:I

    .line 127
    goto :goto_3

    .line 128
    :cond_9
    const/4 v0, 0x2

    .line 129
    .line 130
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mCurHeaderStatus:I

    .line 131
    .line 132
    :goto_3
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mHeaderStatusChangedListeners:Ljava/util/List;

    .line 133
    .line 134
    if-eqz v0, :cond_b

    .line 135
    .line 136
    .line 137
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    .line 141
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    move-result v1

    .line 143
    .line 144
    if-eqz v1, :cond_b

    .line 145
    .line 146
    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    move-result-object v1

    .line 149
    .line 150
    check-cast v1, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;

    .line 151
    .line 152
    iget v2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 153
    .line 154
    if-lez v2, :cond_a

    .line 155
    .line 156
    .line 157
    invoke-interface {v1}, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;->onHeaderExpanded()V

    .line 158
    goto :goto_4

    .line 159
    .line 160
    .line 161
    :cond_a
    invoke-interface {v1}, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;->onHeaderCollapsed()V

    .line 162
    goto :goto_4

    .line 163
    :cond_b
    :goto_5
    return-void
.end method

.method protected onHeaderStatusChanged(I)V
    .locals 1

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mCurHeaderStatus:I

    .line 3
    const/4 v0, 0x4

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    const/4 v0, 0x2

    .line 7
    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->runPendingHeaderInvalidate()V

    .line 12
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->skipLayout:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 9
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 4
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    xor-int/lit8 p1, p4, 0x1

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mSupportFlingAction:Z

    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    cmpl-float v0, p3, p1

    .line 8
    .line 9
    if-lez v0, :cond_1

    .line 10
    .line 11
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastVelocityY:F

    .line 12
    .line 13
    cmpg-float v0, v0, p1

    .line 14
    .line 15
    if-gez v0, :cond_1

    .line 16
    .line 17
    iget p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mCurHeaderStatus:I

    .line 18
    const/4 v0, 0x2

    .line 19
    .line 20
    if-eq p1, v0, :cond_0

    .line 21
    .line 22
    iget p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    .line 23
    .line 24
    new-instance v0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$10;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$10;-><init>(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->smoothChangeHeaderHeightTo(ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;

    .line 31
    .line 32
    :cond_0
    iput p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastVelocityY:F

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p2, p3}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->dispatchNestedPreFling(FF)Z

    .line 36
    move-result p1

    .line 37
    return p1

    .line 38
    .line 39
    :cond_1
    cmpg-float p1, p3, p1

    .line 40
    .line 41
    if-gez p1, :cond_3

    .line 42
    .line 43
    iget p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->unconsumedDy:I

    .line 44
    .line 45
    if-ltz p1, :cond_2

    .line 46
    .line 47
    iget-boolean p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->needAutoExpand:Z

    .line 48
    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    :cond_2
    iget p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mCurHeaderStatus:I

    .line 52
    const/4 v0, 0x4

    .line 53
    .line 54
    if-eq p1, v0, :cond_3

    .line 55
    const/4 v0, 0x3

    .line 56
    .line 57
    if-eq p1, v0, :cond_3

    .line 58
    .line 59
    iget p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 60
    .line 61
    new-instance v0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$11;

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$11;-><init>(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->smoothChangeHeaderHeightTo(ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;

    .line 68
    .line 69
    :cond_3
    iput p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastVelocityY:F

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p2, p3}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->dispatchNestedPreFling(FF)Z

    .line 73
    move-result p1

    .line 74
    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 7

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsBeingDragged:Z

    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsScrollingDown:Z

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    if-gez p3, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 17
    move-result p1

    .line 18
    .line 19
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastHeaderHeight:I

    .line 20
    sub-int/2addr p1, v0

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 24
    move-result p1

    .line 25
    .line 26
    sub-int p1, p3, p1

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_1
    if-lez p3, :cond_2

    .line 30
    :goto_0
    move p1, p3

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_2
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 37
    move-result p1

    .line 38
    .line 39
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastHeaderHeight:I

    .line 40
    sub-int/2addr p1, v0

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 44
    move-result p1

    .line 45
    add-int/2addr p1, p3

    .line 46
    :goto_1
    move v5, p1

    .line 47
    goto :goto_2

    .line 48
    :cond_3
    move v5, p3

    .line 49
    .line 50
    .line 51
    :goto_2
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 52
    move-result p1

    .line 53
    const/4 v0, 0x3

    .line 54
    const/4 v1, 0x0

    .line 55
    const/4 v2, 0x1

    .line 56
    .line 57
    if-le p1, v0, :cond_5

    .line 58
    .line 59
    if-gez v5, :cond_4

    .line 60
    move p1, v2

    .line 61
    goto :goto_3

    .line 62
    :cond_4
    move p1, v1

    .line 63
    .line 64
    :goto_3
    iput-boolean p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsScrollingDown:Z

    .line 65
    .line 66
    iput-boolean v2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsBeingDragged:Z

    .line 67
    :cond_5
    const/4 p1, 0x0

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->dispatchNestedPreScroll(II[I[I)Z

    .line 71
    move-result p1

    .line 72
    .line 73
    if-nez p1, :cond_11

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, v5}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->shouldConsumeNestedScroll(I)Z

    .line 77
    move-result p1

    .line 78
    .line 79
    if-nez p1, :cond_6

    .line 80
    return-void

    .line 81
    .line 82
    :cond_6
    if-gez v5, :cond_8

    .line 83
    .line 84
    if-eq v5, p3, :cond_7

    .line 85
    const/4 v2, 0x0

    .line 86
    const/4 v3, 0x0

    .line 87
    const/4 v4, 0x0

    .line 88
    move-object v0, p0

    .line 89
    move-object v1, p0

    .line 90
    .line 91
    .line 92
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->onNestedScroll(Landroid/view/View;IIII)V

    .line 93
    :cond_7
    return-void

    .line 94
    .line 95
    :cond_8
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 99
    move-result p1

    .line 100
    .line 101
    iget p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mCurHeaderStatus:I

    .line 102
    .line 103
    if-eq p2, v2, :cond_a

    .line 104
    .line 105
    iget p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    .line 106
    .line 107
    if-le p1, p2, :cond_a

    .line 108
    .line 109
    iget p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 110
    .line 111
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOvershootDistance:I

    .line 112
    add-int/2addr p2, v0

    .line 113
    .line 114
    if-ge p1, p2, :cond_a

    .line 115
    .line 116
    iget-boolean p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsEnabled:Z

    .line 117
    .line 118
    if-eqz p2, :cond_a

    .line 119
    .line 120
    iget-object p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mHeaderStatusChangedListeners:Ljava/util/List;

    .line 121
    .line 122
    if-eqz p2, :cond_9

    .line 123
    .line 124
    .line 125
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 126
    move-result-object p2

    .line 127
    .line 128
    .line 129
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    move-result v0

    .line 131
    .line 132
    if-eqz v0, :cond_9

    .line 133
    .line 134
    .line 135
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    move-result-object v0

    .line 137
    .line 138
    check-cast v0, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;

    .line 139
    .line 140
    .line 141
    invoke-interface {v0}, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;->onHeaderStartCollapsing()V

    .line 142
    goto :goto_4

    .line 143
    .line 144
    .line 145
    :cond_9
    invoke-virtual {p0, v2}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->onHeaderStatusChanged(I)V

    .line 146
    .line 147
    .line 148
    :cond_a
    invoke-direct {p0, v5}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->isReachedEdge(I)Z

    .line 149
    move-result p2

    .line 150
    .line 151
    if-eqz p2, :cond_c

    .line 152
    .line 153
    iget p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    .line 154
    .line 155
    if-le p1, p2, :cond_b

    .line 156
    .line 157
    sub-int p2, p1, p2

    .line 158
    move v5, p2

    .line 159
    goto :goto_5

    .line 160
    :cond_b
    move v5, v1

    .line 161
    .line 162
    :cond_c
    :goto_5
    if-eqz v5, :cond_d

    .line 163
    .line 164
    iget-boolean p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsBeingDragged:Z

    .line 165
    .line 166
    if-eqz p2, :cond_d

    .line 167
    .line 168
    iget-object p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 172
    move-result-object p2

    .line 173
    .line 174
    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 175
    .line 176
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 180
    move-result v0

    .line 181
    .line 182
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastHeaderHeight:I

    .line 183
    .line 184
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 188
    move-result v0

    .line 189
    sub-int/2addr v0, v5

    .line 190
    .line 191
    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 192
    .line 193
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    .line 198
    :cond_d
    iget-object p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mHeaderStatusChangedListeners:Ljava/util/List;

    .line 199
    .line 200
    if-eqz p2, :cond_e

    .line 201
    .line 202
    iget-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsEnabled:Z

    .line 203
    .line 204
    if-eqz v0, :cond_e

    .line 205
    .line 206
    .line 207
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 208
    move-result-object p2

    .line 209
    .line 210
    .line 211
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 212
    move-result v0

    .line 213
    .line 214
    if-eqz v0, :cond_e

    .line 215
    .line 216
    .line 217
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    move-result-object v0

    .line 219
    .line 220
    check-cast v0, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;

    .line 221
    .line 222
    iget v3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 223
    .line 224
    sub-int v4, v3, p1

    .line 225
    .line 226
    sub-int v5, v3, p1

    .line 227
    int-to-float v5, v5

    .line 228
    .line 229
    const/high16 v6, 0x3f800000    # 1.0f

    .line 230
    mul-float/2addr v5, v6

    .line 231
    .line 232
    iget v6, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    .line 233
    .line 234
    sub-int v6, v3, v6

    .line 235
    int-to-float v6, v6

    .line 236
    div-float/2addr v5, v6

    .line 237
    .line 238
    iget-boolean v6, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsScrollingDown:Z

    .line 239
    .line 240
    .line 241
    invoke-interface {v0, v4, v3, v5, v6}, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;->onHeaderOffsetChanged(IIFZ)V

    .line 242
    goto :goto_6

    .line 243
    .line 244
    :cond_e
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 248
    move-result p1

    .line 249
    .line 250
    iget p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    .line 251
    .line 252
    if-ne p1, p2, :cond_10

    .line 253
    .line 254
    iget-boolean p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsEnabled:Z

    .line 255
    .line 256
    if-eqz p1, :cond_10

    .line 257
    .line 258
    iget p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mCurHeaderStatus:I

    .line 259
    const/4 p2, 0x2

    .line 260
    .line 261
    if-eq p1, p2, :cond_10

    .line 262
    .line 263
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mHeaderStatusChangedListeners:Ljava/util/List;

    .line 264
    .line 265
    if-eqz p1, :cond_f

    .line 266
    .line 267
    .line 268
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 269
    move-result-object p1

    .line 270
    .line 271
    .line 272
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 273
    move-result v0

    .line 274
    .line 275
    if-eqz v0, :cond_f

    .line 276
    .line 277
    .line 278
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 279
    move-result-object v0

    .line 280
    .line 281
    check-cast v0, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;

    .line 282
    .line 283
    .line 284
    invoke-interface {v0}, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;->onHeaderCollapsed()V

    .line 285
    goto :goto_7

    .line 286
    .line 287
    .line 288
    :cond_f
    invoke-virtual {p0, p2}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->onHeaderStatusChanged(I)V

    .line 289
    .line 290
    :cond_10
    aput v1, p4, v1

    .line 291
    .line 292
    aput p3, p4, v2

    .line 293
    :cond_11
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 9

    .line 1
    .line 2
    iput p5, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->unconsumedDy:I

    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsBeingDragged:Z

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    if-gez p5, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 15
    move-result p1

    .line 16
    .line 17
    iget p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastHeaderHeight:I

    .line 18
    sub-int/2addr p1, p2

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 22
    move-result p1

    .line 23
    .line 24
    sub-int p1, p5, p1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    move p1, p5

    .line 27
    .line 28
    :goto_1
    if-ltz p1, :cond_2

    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    move-object v0, p0

    .line 33
    move v2, p3

    .line 34
    move v4, p5

    .line 35
    .line 36
    .line 37
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->dispatchNestedScroll(IIII[I)Z

    .line 38
    return-void

    .line 39
    .line 40
    :cond_2
    iget-object p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 44
    move-result p2

    .line 45
    .line 46
    iget p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 47
    .line 48
    if-lt p2, p3, :cond_4

    .line 49
    .line 50
    iget-boolean p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsEnabled:Z

    .line 51
    .line 52
    if-eqz p3, :cond_4

    .line 53
    .line 54
    iget p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mCurHeaderStatus:I

    .line 55
    const/4 p4, 0x4

    .line 56
    .line 57
    if-eq p3, p4, :cond_4

    .line 58
    .line 59
    iget-object p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mHeaderStatusChangedListeners:Ljava/util/List;

    .line 60
    .line 61
    if-eqz p3, :cond_3

    .line 62
    .line 63
    .line 64
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object p3

    .line 66
    .line 67
    .line 68
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v0

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    .line 74
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    check-cast v0, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;

    .line 78
    .line 79
    .line 80
    invoke-interface {v0}, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;->onHeaderExpanded()V

    .line 81
    goto :goto_2

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-virtual {p0, p4}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->onHeaderStatusChanged(I)V

    .line 85
    .line 86
    :cond_4
    iget p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    .line 87
    const/4 p4, 0x3

    .line 88
    .line 89
    if-lt p2, p3, :cond_d

    .line 90
    .line 91
    iget p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 92
    .line 93
    if-lez p3, :cond_d

    .line 94
    .line 95
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOvershootDistance:I

    .line 96
    add-int/2addr p3, v0

    .line 97
    .line 98
    if-ge p2, p3, :cond_d

    .line 99
    .line 100
    .line 101
    invoke-direct {p0, p1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->isReachedEdge(I)Z

    .line 102
    move-result p3

    .line 103
    .line 104
    if-eqz p3, :cond_6

    .line 105
    .line 106
    if-gez p5, :cond_5

    .line 107
    .line 108
    iget p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 109
    sub-int/2addr p1, p2

    .line 110
    .line 111
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOvershootDistance:I

    .line 112
    add-int/2addr p1, v0

    .line 113
    neg-int p1, p1

    .line 114
    goto :goto_3

    .line 115
    .line 116
    :cond_5
    iget p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    .line 117
    .line 118
    sub-int p1, p2, p1

    .line 119
    :goto_3
    move v0, p1

    .line 120
    goto :goto_5

    .line 121
    .line 122
    :cond_6
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 123
    .line 124
    if-le p2, v0, :cond_7

    .line 125
    .line 126
    div-int/lit8 v0, p1, 0x3

    .line 127
    goto :goto_4

    .line 128
    :cond_7
    move v0, p1

    .line 129
    :goto_4
    move v8, v0

    .line 130
    move v0, p1

    .line 131
    move p1, v8

    .line 132
    .line 133
    :goto_5
    if-eqz p1, :cond_8

    .line 134
    .line 135
    iget-boolean v1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsBeingDragged:Z

    .line 136
    .line 137
    if-eqz v1, :cond_8

    .line 138
    .line 139
    iget-object v1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 143
    move-result-object v1

    .line 144
    .line 145
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 146
    .line 147
    iput p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastHeaderHeight:I

    .line 148
    .line 149
    sub-int v2, p2, p1

    .line 150
    .line 151
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 152
    .line 153
    iget-object v2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    :cond_8
    int-to-double v1, p2

    .line 158
    .line 159
    iget v3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 160
    .line 161
    iget v4, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    .line 162
    sub-int/2addr v3, v4

    .line 163
    int-to-double v3, v3

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    const-wide v5, 0x3fbeb851eb851eb8L    # 0.12

    .line 169
    mul-double/2addr v3, v5

    .line 170
    .line 171
    cmpl-double v1, v1, v3

    .line 172
    .line 173
    if-ltz v1, :cond_b

    .line 174
    .line 175
    iget-boolean v1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsEnabled:Z

    .line 176
    .line 177
    if-eqz v1, :cond_b

    .line 178
    .line 179
    iget-object v1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mHeaderStatusChangedListeners:Ljava/util/List;

    .line 180
    .line 181
    if-eqz v1, :cond_9

    .line 182
    .line 183
    .line 184
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 185
    move-result-object v1

    .line 186
    .line 187
    .line 188
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    move-result v2

    .line 190
    .line 191
    if-eqz v2, :cond_9

    .line 192
    .line 193
    .line 194
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    move-result-object v2

    .line 196
    .line 197
    check-cast v2, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;

    .line 198
    .line 199
    iget v3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 200
    .line 201
    sub-int v4, v3, p2

    .line 202
    .line 203
    sub-int v5, v3, p2

    .line 204
    int-to-float v5, v5

    .line 205
    .line 206
    const/high16 v6, 0x3f800000    # 1.0f

    .line 207
    mul-float/2addr v5, v6

    .line 208
    .line 209
    iget v6, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    .line 210
    .line 211
    sub-int v6, v3, v6

    .line 212
    int-to-float v6, v6

    .line 213
    div-float/2addr v5, v6

    .line 214
    .line 215
    iget-boolean v6, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsScrollingDown:Z

    .line 216
    .line 217
    .line 218
    invoke-interface {v2, v4, v3, v5, v6}, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;->onHeaderOffsetChanged(IIFZ)V

    .line 219
    goto :goto_6

    .line 220
    .line 221
    :cond_9
    iget p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mCurHeaderStatus:I

    .line 222
    .line 223
    if-eq p2, p4, :cond_b

    .line 224
    const/4 v1, 0x2

    .line 225
    .line 226
    if-ne p2, v1, :cond_b

    .line 227
    .line 228
    iget-object p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mHeaderStatusChangedListeners:Ljava/util/List;

    .line 229
    .line 230
    if-eqz p2, :cond_a

    .line 231
    .line 232
    .line 233
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 234
    move-result-object p2

    .line 235
    .line 236
    .line 237
    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 238
    move-result v1

    .line 239
    .line 240
    if-eqz v1, :cond_a

    .line 241
    .line 242
    .line 243
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 244
    move-result-object v1

    .line 245
    .line 246
    check-cast v1, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;

    .line 247
    .line 248
    .line 249
    invoke-interface {v1}, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;->onHeaderStartExpanding()V

    .line 250
    goto :goto_7

    .line 251
    .line 252
    .line 253
    :cond_a
    invoke-virtual {p0, p4}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->onHeaderStatusChanged(I)V

    .line 254
    .line 255
    :cond_b
    if-eqz p3, :cond_c

    .line 256
    move v4, v0

    .line 257
    goto :goto_8

    .line 258
    :cond_c
    move v4, p1

    .line 259
    .line 260
    :goto_8
    sub-int v6, p5, v4

    .line 261
    const/4 v3, 0x0

    .line 262
    const/4 v5, 0x0

    .line 263
    const/4 v7, 0x0

    .line 264
    move-object v2, p0

    .line 265
    .line 266
    .line 267
    invoke-virtual/range {v2 .. v7}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->dispatchNestedScroll(IIII[I)Z

    .line 268
    goto :goto_9

    .line 269
    .line 270
    :cond_d
    iget p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 271
    .line 272
    if-nez p2, :cond_e

    .line 273
    .line 274
    iget p2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOvershootDistance:I

    .line 275
    .line 276
    if-lez p2, :cond_e

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 280
    move-result p2

    .line 281
    .line 282
    iget p3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOvershootDistance:I

    .line 283
    neg-int p3, p3

    .line 284
    .line 285
    if-le p2, p3, :cond_e

    .line 286
    .line 287
    div-int/lit8 v2, p1, 0x3

    .line 288
    const/4 p1, 0x0

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0, p1, v2}, Landroid/view/View;->scrollBy(II)V

    .line 292
    const/4 v1, 0x0

    .line 293
    const/4 v3, 0x0

    .line 294
    .line 295
    sub-int v4, p5, v2

    .line 296
    const/4 v5, 0x0

    .line 297
    move-object v0, p0

    .line 298
    .line 299
    .line 300
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->dispatchNestedScroll(IIII[I)Z

    .line 301
    :cond_e
    :goto_9
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->b(Landroid/view/View;Landroid/view/View;I)V

    .line 6
    const/4 p1, 0x2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->startNestedScroll(I)Z

    .line 10
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

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    .line 3
    .line 4
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastHeaderHeight:I

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsBeingDragged:Z

    .line 8
    .line 9
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->unconsumedDy:I

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingParentHelper;->d(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->stopNestedScroll()V

    .line 18
    .line 19
    iget p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOvershootDistance:I

    .line 20
    .line 21
    if-lez p1, :cond_4

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 27
    move-result p1

    .line 28
    .line 29
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 30
    .line 31
    if-gt p1, v0, :cond_0

    .line 32
    .line 33
    if-nez v0, :cond_4

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 37
    move-result p1

    .line 38
    .line 39
    if-gez p1, :cond_4

    .line 40
    .line 41
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mBounceBackForOvershooting:Landroid/animation/Animator;

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    .line 47
    move-result p1

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mBounceBackForOvershooting:Landroid/animation/Animator;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 55
    .line 56
    :cond_1
    iget p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 57
    const/4 v0, 0x0

    .line 58
    .line 59
    const-wide/16 v1, 0x190

    .line 60
    .line 61
    if-lez p1, :cond_2

    .line 62
    .line 63
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 67
    move-result p1

    .line 68
    .line 69
    iget v3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 70
    .line 71
    if-le p1, v3, :cond_2

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, v3, v1, v2, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->smoothChangeHeaderHeightTo(IJLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    iput-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mBounceBackForOvershooting:Landroid/animation/Animator;

    .line 78
    goto :goto_0

    .line 79
    .line 80
    :cond_2
    iget p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 81
    .line 82
    if-nez p1, :cond_3

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 86
    move-result p1

    .line 87
    .line 88
    if-gez p1, :cond_3

    .line 89
    .line 90
    iget p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->smoothScrollTo(IJLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    iput-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mBounceBackForOvershooting:Landroid/animation/Animator;

    .line 97
    :cond_3
    :goto_0
    return-void

    .line 98
    .line 99
    :cond_4
    iget-boolean p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mAutoDrawerModeEnabled:Z

    .line 100
    .line 101
    if-eqz p1, :cond_7

    .line 102
    .line 103
    iget p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mCurHeaderStatus:I

    .line 104
    const/4 v0, 0x4

    .line 105
    .line 106
    if-eq p1, v0, :cond_7

    .line 107
    const/4 v0, 0x2

    .line 108
    .line 109
    if-ne p1, v0, :cond_5

    .line 110
    goto :goto_1

    .line 111
    .line 112
    :cond_5
    iget-boolean p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsScrollingDown:Z

    .line 113
    .line 114
    if-eqz p1, :cond_6

    .line 115
    .line 116
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 120
    move-result p1

    .line 121
    .line 122
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mAbsorbHeaderThreshold:I

    .line 123
    .line 124
    if-le p1, v0, :cond_6

    .line 125
    .line 126
    iget p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 127
    .line 128
    new-instance v0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$8;

    .line 129
    .line 130
    .line 131
    invoke-direct {v0, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$8;-><init>(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V

    .line 132
    .line 133
    .line 134
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->smoothChangeHeaderHeightTo(ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;

    .line 135
    goto :goto_1

    .line 136
    .line 137
    :cond_6
    iget-boolean p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsScrollingDown:Z

    .line 138
    .line 139
    if-nez p1, :cond_7

    .line 140
    .line 141
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 145
    move-result p1

    .line 146
    .line 147
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 148
    .line 149
    iget v1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mAbsorbHeaderThreshold:I

    .line 150
    sub-int/2addr v0, v1

    .line 151
    .line 152
    if-ge p1, v0, :cond_7

    .line 153
    .line 154
    iget p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    .line 155
    .line 156
    new-instance v0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$9;

    .line 157
    .line 158
    .line 159
    invoke-direct {v0, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$9;-><init>(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V

    .line 160
    .line 161
    .line 162
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->smoothChangeHeaderHeightTo(ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;

    .line 163
    :cond_7
    :goto_1
    return-void
.end method

.method public removeOnHeaderStatusChangedListener(Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mHeaderStatusChangedListeners:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9
    return-void
.end method

.method public removeOnViewFinishInflateListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mViewFinishInflateListener:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$OnViewFinishInflateListener;

    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->onHeaderStatusChanged(I)V

    .line 5
    return-void
.end method

.method public setBottomLayout(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mBottomView:Landroid/view/ViewGroup;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mBottomView:Landroid/view/ViewGroup;

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0, p1, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->initBottomView(ILandroid/view/ViewGroup;)V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mBottomView:Landroid/view/ViewGroup;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 21
    :cond_1
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->n(Z)V

    .line 6
    return-void
.end method

.method public setOnViewFinishInflateListener(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$OnViewFinishInflateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mViewFinishInflateListener:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$OnViewFinishInflateListener;

    return-void
.end method

.method public setStickyFooterLayoutId(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterLayoutId:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    return-void
.end method

.method public setTopLayout(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0, p1, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->initTopView(ILandroid/view/ViewGroup;)V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mTopView:Landroid/view/ViewGroup;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 21
    :cond_1
    return-void
.end method

.method public smoothCollapse()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mStickyFooterHeight:I

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$3;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$3;-><init>(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->smoothChangeHeaderHeightTo(ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;

    .line 11
    .line 12
    .line 13
    const v0, 0x3dcccccd    # 0.1f

    .line 14
    .line 15
    iput v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->lastVelocityY:F

    .line 16
    return-void
.end method

.method public smoothExpand()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mOrgHeaderHeight:I

    .line 3
    .line 4
    if-gez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$4;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$4;-><init>(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V

    .line 10
    .line 11
    const-wide/16 v1, 0x64

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->innerSmoothExpand()V

    .line 18
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

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
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->r()V

    .line 6
    return-void
.end method
