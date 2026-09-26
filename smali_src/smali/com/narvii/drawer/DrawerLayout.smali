.class public Lcom/narvii/drawer/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/drawer/DrawerLayoutImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/drawer/DrawerLayout$ChildAccessibilityDelegate;,
        Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;,
        Lcom/narvii/drawer/DrawerLayout$AccessibilityDelegate;,
        Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImpl;,
        Lcom/narvii/drawer/DrawerLayout$DrawerListener;,
        Lcom/narvii/drawer/DrawerLayout$LayoutParams;,
        Lcom/narvii/drawer/DrawerLayout$SavedState;,
        Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImplApi21;,
        Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImplBase;,
        Lcom/narvii/drawer/DrawerLayout$SimpleDrawerListener;,
        Lcom/narvii/drawer/DrawerLayout$EdgeGravity;,
        Lcom/narvii/drawer/DrawerLayout$LockMode;,
        Lcom/narvii/drawer/DrawerLayout$State;
    }
.end annotation


# static fields
.field private static final ALLOW_EDGE_LOCK:Z = false

.field private static final CAN_HIDE_DESCENDANTS:Z

.field private static final CHILDREN_DISALLOW_INTERCEPT:Z = true

.field private static final DEFAULT_SCRIM_COLOR:I = -0x67000000

.field private static final DRAWER_ELEVATION:I = 0xa

.field static final IMPL:Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImpl;

.field private static final LAYOUT_ATTRS:[I

.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x1

.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x2

.field public static final LOCK_MODE_UNDEFINED:I = 0x3

.field public static final LOCK_MODE_UNLOCKED:I = 0x0

.field private static final MIN_DRAWER_MARGIN:I = 0x40

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final PEEK_DELAY:I = 0xa0

.field private static final SET_DRAWER_SHADOW_FROM_ELEVATION:Z

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DrawerLayout"

.field private static final TOUCH_SLOP_SENSITIVITY:F = 1.0f

.field public static disallowIntercept:Z


# instance fields
.field private final mChildAccessibilityDelegate:Lcom/narvii/drawer/DrawerLayout$ChildAccessibilityDelegate;

.field private mChildrenCanceledTouch:Z

.field private mDisallowInterceptRequested:Z

.field private mDrawStatusBarBackground:Z

.field private mDrawerElevation:F

.field private mDrawerState:I

.field private mFirstLayout:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mLastInsets:Ljava/lang/Object;

.field private final mLeftCallback:Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;

.field protected final mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

.field private mListener:Lcom/narvii/drawer/DrawerLayout$DrawerListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/drawer/DrawerLayout$DrawerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLockModeEnd:I

.field private mLockModeLeft:I

.field private mLockModeRight:I

.field private mLockModeStart:I

.field private mMinDrawerMargin:I

.field private final mNonDrawerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mRightCallback:Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;

.field protected final mRightDragger:Landroidx/customview/widget/ViewDragHelper;

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mShadowEnd:Landroid/graphics/drawable/Drawable;

.field private mShadowLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowRight:Landroid/graphics/drawable/Drawable;

.field private mShadowRightResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowStart:Landroid/graphics/drawable/Drawable;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private mTitleLeft:Ljava/lang/CharSequence;

.field private mTitleRight:Ljava/lang/CharSequence;

.field private final requestLayoutRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x10100b3

    .line 4
    .line 5
    .line 6
    filled-new-array {v0}, [I

    .line 7
    move-result-object v0

    .line 8
    .line 9
    sput-object v0, Lcom/narvii/drawer/DrawerLayout;->LAYOUT_ATTRS:[I

    .line 10
    const/4 v0, 0x1

    .line 11
    .line 12
    sput-boolean v0, Lcom/narvii/drawer/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    .line 13
    .line 14
    sput-boolean v0, Lcom/narvii/drawer/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImplApi21;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImplApi21;-><init>()V

    .line 20
    .line 21
    sput-object v0, Lcom/narvii/drawer/DrawerLayout;->IMPL:Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImpl;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/drawer/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/drawer/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Lcom/narvii/drawer/DrawerLayout$ChildAccessibilityDelegate;

    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerLayout$ChildAccessibilityDelegate;-><init>(Lcom/narvii/drawer/DrawerLayout;)V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerLayout;->mChildAccessibilityDelegate:Lcom/narvii/drawer/DrawerLayout$ChildAccessibilityDelegate;

    const/high16 p2, -0x67000000

    iput p2, p0, Lcom/narvii/drawer/DrawerLayout;->mScrimColor:I

    .line 5
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/narvii/drawer/DrawerLayout;->mFirstLayout:Z

    const/4 p3, 0x3

    iput p3, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeLeft:I

    iput p3, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeRight:I

    iput p3, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeStart:I

    iput p3, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeEnd:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    .line 6
    new-instance v0, Lcom/narvii/drawer/DrawerLayout$1;

    invoke-direct {v0, p0}, Lcom/narvii/drawer/DrawerLayout$1;-><init>(Lcom/narvii/drawer/DrawerLayout;)V

    iput-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->requestLayoutRunnable:Ljava/lang/Runnable;

    const/high16 v0, 0x40000

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42800000    # 64.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/narvii/drawer/DrawerLayout;->mMinDrawerMargin:I

    const/high16 v1, 0x43c80000    # 400.0f

    mul-float/2addr v1, v0

    .line 9
    new-instance v2, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;

    invoke-direct {v2, p0, p3}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;-><init>(Lcom/narvii/drawer/DrawerLayout;I)V

    iput-object v2, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftCallback:Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;

    .line 10
    new-instance p3, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;

    const/4 v3, 0x5

    invoke-direct {p3, p0, v3}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;-><init>(Lcom/narvii/drawer/DrawerLayout;I)V

    iput-object p3, p0, Lcom/narvii/drawer/DrawerLayout;->mRightCallback:Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 11
    invoke-static {p0, v3, v2}, Landroidx/customview/widget/ViewDragHelper;->o(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v4

    iput-object v4, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 12
    invoke-virtual {v4, p2}, Landroidx/customview/widget/ViewDragHelper;->N(I)V

    .line 13
    invoke-virtual {v4, v1}, Landroidx/customview/widget/ViewDragHelper;->O(F)V

    .line 14
    invoke-virtual {v2, v4}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->setDragger(Landroidx/customview/widget/ViewDragHelper;)V

    .line 15
    invoke-static {p0, v3, p3}, Landroidx/customview/widget/ViewDragHelper;->o(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/drawer/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    const/4 v3, 0x2

    .line 16
    invoke-virtual {v2, v3}, Landroidx/customview/widget/ViewDragHelper;->N(I)V

    .line 17
    invoke-virtual {v2, v1}, Landroidx/customview/widget/ViewDragHelper;->O(F)V

    .line 18
    invoke-virtual {p3, v2}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->setDragger(Landroidx/customview/widget/ViewDragHelper;)V

    .line 19
    invoke-virtual {p0, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 20
    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->F0(Landroid/view/View;I)V

    .line 21
    new-instance p2, Lcom/narvii/drawer/DrawerLayout$AccessibilityDelegate;

    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerLayout$AccessibilityDelegate;-><init>(Lcom/narvii/drawer/DrawerLayout;)V

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->u0(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    const/4 p2, 0x0

    .line 22
    invoke-static {p0, p2}, Landroidx/core/view/ViewGroupCompat;->b(Landroid/view/ViewGroup;Z)V

    .line 23
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->A(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/narvii/drawer/DrawerLayout;->IMPL:Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImpl;

    .line 24
    invoke-interface {p2, p0}, Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImpl;->configureApplyInsets(Landroid/view/View;)V

    .line 25
    invoke-interface {p2, p1}, Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImpl;->getDefaultStatusBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    :cond_0
    const/high16 p1, 0x41200000    # 10.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/narvii/drawer/DrawerLayout;->mDrawerElevation:F

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/drawer/DrawerLayout;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic b()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/narvii/drawer/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    return v0
.end method

.method static bridge synthetic c()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/drawer/DrawerLayout;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method static bridge synthetic d(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/drawer/DrawerLayout;->includeChildForAccessibility(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private findVisibleDrawer()Landroid/view/View;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    :goto_0
    if-ge v1, v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v2}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    .line 15
    move-result v3

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v2}, Lcom/narvii/drawer/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    .line 21
    move-result v3

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    return-object v2

    .line 25
    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    return-object v0
.end method

.method static gravityToString(I)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    and-int/lit8 v0, p0, 0x3

    .line 3
    const/4 v1, 0x3

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const-string p0, "LEFT"

    .line 8
    return-object p0

    .line 9
    .line 10
    :cond_0
    and-int/lit8 v0, p0, 0x5

    .line 11
    const/4 v1, 0x5

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    const-string p0, "RIGHT"

    .line 16
    return-object p0

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 11
    move-result p0

    .line 12
    const/4 v1, -0x1

    .line 13
    .line 14
    if-ne p0, v1, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    :cond_0
    return v0
.end method

.method private hasPeekingDrawer()Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

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
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v3

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    check-cast v3, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 19
    .line 20
    iget-boolean v3, v3, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->isPeeking:Z

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return v1
.end method

.method private hasVisibleDrawer()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method private static includeChildForAccessibility(Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->B(Landroid/view/View;)I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->B(Landroid/view/View;)I

    .line 11
    move-result p0

    .line 12
    const/4 v0, 0x2

    .line 13
    .line 14
    if-eq p0, v0, :cond_0

    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method private mirror(Landroid/graphics/drawable/Drawable;I)Z
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->h(Landroid/graphics/drawable/Drawable;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->m(Landroid/graphics/drawable/Drawable;I)Z

    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method private resolveLeftShadow()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->D(Landroid/view/View;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v1, v0}, Lcom/narvii/drawer/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    .line 16
    return-object v0

    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v1, v0}, Lcom/narvii/drawer/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    .line 26
    return-object v0

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    .line 29
    return-object v0
.end method

.method private resolveRightShadow()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->D(Landroid/view/View;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v1, v0}, Lcom/narvii/drawer/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    .line 16
    return-object v0

    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v1, v0}, Lcom/narvii/drawer/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    .line 26
    return-object v0

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    .line 29
    return-object v0
.end method

.method private resolveShadowDrawables()V
    .locals 1

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/drawer/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerLayout;->resolveLeftShadow()Landroid/graphics/drawable/Drawable;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerLayout;->resolveRightShadow()Landroid/graphics/drawable/Drawable;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    .line 18
    return-void
.end method

.method private updateChildrenImportantForAccessibility(Landroid/view/View;Z)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    :goto_0
    if-ge v1, v0, :cond_3

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v2}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    .line 17
    move-result v3

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    :cond_0
    if-eqz p2, :cond_2

    .line 22
    .line 23
    if-ne v2, p1, :cond_2

    .line 24
    :cond_1
    const/4 v3, 0x1

    .line 25
    .line 26
    .line 27
    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->F0(Landroid/view/View;I)V

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    const/4 v3, 0x4

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->F0(Landroid/view/View;I)V

    .line 33
    .line 34
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_3
    return-void
.end method


# virtual methods
.method public addDrawerListener(Lcom/narvii/drawer/DrawerLayout$DrawerListener;)V
    .locals 1
    .param p1    # Lcom/narvii/drawer/DrawerLayout$DrawerListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mListeners:Ljava/util/List;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mListeners:Ljava/util/List;

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mListeners:Ljava/util/List;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/high16 v1, 0x60000

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    move v3, v2

    .line 17
    .line 18
    :goto_0
    if-ge v2, v0, :cond_3

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    move-result-object v4

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v4}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    .line 26
    move-result v5

    .line 27
    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v4}, Lcom/narvii/drawer/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    .line 32
    move-result v5

    .line 33
    .line 34
    if-eqz v5, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 38
    const/4 v3, 0x1

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_1
    iget-object v5, p0, Lcom/narvii/drawer/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_3
    if-nez v3, :cond_5

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 55
    move-result v0

    .line 56
    .line 57
    :goto_2
    if-ge v1, v0, :cond_5

    .line 58
    .line 59
    iget-object v2, p0, Lcom/narvii/drawer/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    check-cast v2, Landroid/view/View;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 69
    move-result v3

    .line 70
    .line 71
    if-nez v3, :cond_4

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 75
    .line 76
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 77
    goto :goto_2

    .line 78
    .line 79
    :cond_5
    iget-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 83
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    if-nez p2, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    .line 13
    move-result p2

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p2, 0x1

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->F0(Landroid/view/View;I)V

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p2, 0x4

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->F0(Landroid/view/View;I)V

    .line 26
    .line 27
    :goto_1
    sget-boolean p2, Lcom/narvii/drawer/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    .line 28
    .line 29
    if-nez p2, :cond_2

    .line 30
    .line 31
    iget-object p2, p0, Lcom/narvii/drawer/DrawerLayout;->mChildAccessibilityDelegate:Lcom/narvii/drawer/DrawerLayout$ChildAccessibilityDelegate;

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->u0(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 35
    :cond_2
    return-void
.end method

.method cancelChildViewTouch()V
    .locals 9

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    move-result-wide v3

    .line 9
    const/4 v5, 0x3

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v8, 0x0

    .line 13
    move-wide v1, v3

    .line 14
    .line 15
    .line 16
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    .line 24
    :goto_0
    if-ge v2, v1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 38
    const/4 v0, 0x1

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/narvii/drawer/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 41
    :cond_1
    return-void
.end method

.method checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    .line 4
    move-result p1

    .line 5
    and-int/2addr p1, p2

    .line 6
    .line 7
    if-ne p1, p2, :cond_0

    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return p1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public closeDrawer(I)V
    .locals 3

    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0, v0}, Lcom/narvii/drawer/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No drawer view found with gravity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-static {p1}, Lcom/narvii/drawer/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public closeDrawer(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/narvii/drawer/DrawerLayout;->mFirstLayout:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput p1, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->onScreen:F

    const/4 p1, 0x0

    .line 4
    iput p1, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    goto :goto_0

    .line 5
    :cond_0
    iget v1, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/narvii/drawer/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 9
    invoke-virtual {v0, p1, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->R(Landroid/view/View;II)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->R(Landroid/view/View;II)Z

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerLayout;->requestLayout()V

    return-void

    .line 12
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a sliding drawer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public closeDrawers()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/narvii/drawer/DrawerLayout;->closeDrawers(Z)V

    return-void
.end method

.method closeDrawers(Z)V
    .locals 9

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_3

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 5
    invoke-virtual {p0, v4}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz p1, :cond_0

    iget-boolean v6, v5, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->isPeeking:Z

    if-nez v6, :cond_0

    goto :goto_3

    .line 6
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    const/4 v7, 0x3

    .line 7
    invoke-virtual {p0, v4, v7}, Lcom/narvii/drawer/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    neg-int v6, v6

    .line 8
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    .line 9
    invoke-virtual {v7, v4, v6, v8}, Landroidx/customview/widget/ViewDragHelper;->R(Landroid/view/View;II)Z

    move-result v4

    :goto_1
    or-int/2addr v3, v4

    goto :goto_2

    :cond_1
    iget-object v6, p0, Lcom/narvii/drawer/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    .line 11
    invoke-virtual {v6, v4, v7, v8}, Landroidx/customview/widget/ViewDragHelper;->R(Landroid/view/View;II)Z

    move-result v4

    goto :goto_1

    .line 12
    :goto_2
    iput-boolean v1, v5, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->isPeeking:Z

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftCallback:Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;

    .line 13
    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    iget-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mRightCallback:Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;

    .line 14
    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    if-eqz v3, :cond_4

    .line 15
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerLayout;->requestLayout()V

    :cond_4
    return-void
.end method

.method dispatchOnDrawerClosed(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 7
    .line 8
    iget v1, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    .line 9
    const/4 v2, 0x1

    .line 10
    and-int/2addr v1, v2

    .line 11
    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    iput v1, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mListeners:Ljava/util/List;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    move-result v0

    .line 24
    sub-int/2addr v0, v2

    .line 25
    .line 26
    :goto_0
    if-ltz v0, :cond_0

    .line 27
    .line 28
    iget-object v2, p0, Lcom/narvii/drawer/DrawerLayout;->mListeners:Ljava/util/List;

    .line 29
    .line 30
    .line 31
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    check-cast v2, Lcom/narvii/drawer/DrawerLayout$DrawerListener;

    .line 35
    .line 36
    .line 37
    invoke-interface {v2, p1}, Lcom/narvii/drawer/DrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    .line 38
    .line 39
    add-int/lit8 v0, v0, -0x1

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/narvii/drawer/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    .line 47
    move-result p1

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    const/16 v0, 0x20

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 61
    :cond_1
    return-void
.end method

.method dispatchOnDrawerOpened(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 7
    .line 8
    iget v1, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    .line 9
    const/4 v2, 0x1

    .line 10
    and-int/2addr v1, v2

    .line 11
    .line 12
    if-nez v1, :cond_2

    .line 13
    .line 14
    iput v2, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mListeners:Ljava/util/List;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    move-result v0

    .line 23
    sub-int/2addr v0, v2

    .line 24
    .line 25
    :goto_0
    if-ltz v0, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/drawer/DrawerLayout;->mListeners:Ljava/util/List;

    .line 28
    .line 29
    .line 30
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    check-cast v1, Lcom/narvii/drawer/DrawerLayout$DrawerListener;

    .line 34
    .line 35
    .line 36
    invoke-interface {v1, p1}, Lcom/narvii/drawer/DrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    .line 37
    .line 38
    add-int/lit8 v0, v0, -0x1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/narvii/drawer/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    .line 46
    move-result v0

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    const/16 v0, 0x20

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 57
    :cond_2
    return-void
.end method

.method dispatchOnDrawerSlide(Landroid/view/View;F)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mListeners:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    :goto_0
    if-ltz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/drawer/DrawerLayout;->mListeners:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/drawer/DrawerLayout$DrawerListener;

    .line 21
    .line 22
    .line 23
    invoke-interface {v1, p1, p2}, Lcom/narvii/drawer/DrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    .line 24
    .line 25
    add-int/lit8 v0, v0, -0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/narvii/drawer/DrawerLayout;->isContentView(Landroid/view/View;)Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    .line 14
    const v1, 0x1020002

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    const/4 v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v1, v2

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 27
    move-result v3

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 31
    move-result v4

    .line 32
    const/4 v5, 0x3

    .line 33
    .line 34
    if-eqz v1, :cond_5

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 38
    move-result v6

    .line 39
    move v7, v2

    .line 40
    move v8, v7

    .line 41
    .line 42
    :goto_1
    if-ge v7, v6, :cond_4

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 46
    move-result-object v9

    .line 47
    .line 48
    if-eq v9, p2, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 52
    move-result v10

    .line 53
    .line 54
    if-nez v10, :cond_3

    .line 55
    .line 56
    .line 57
    invoke-static {v9}, Lcom/narvii/drawer/DrawerLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    .line 58
    move-result v10

    .line 59
    .line 60
    if-eqz v10, :cond_3

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v9}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    .line 64
    move-result v10

    .line 65
    .line 66
    if-eqz v10, :cond_3

    .line 67
    .line 68
    .line 69
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 70
    move-result v10

    .line 71
    .line 72
    if-ge v10, v0, :cond_1

    .line 73
    goto :goto_2

    .line 74
    .line 75
    .line 76
    :cond_1
    invoke-virtual {p0, v9, v5}, Lcom/narvii/drawer/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    .line 77
    move-result v10

    .line 78
    .line 79
    if-eqz v10, :cond_2

    .line 80
    .line 81
    .line 82
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    .line 83
    move-result v9

    .line 84
    .line 85
    if-le v9, v8, :cond_3

    .line 86
    move v8, v9

    .line 87
    goto :goto_2

    .line 88
    .line 89
    .line 90
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    .line 91
    move-result v9

    .line 92
    .line 93
    if-ge v9, v3, :cond_3

    .line 94
    move v3, v9

    .line 95
    .line 96
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 97
    goto :goto_1

    .line 98
    .line 99
    .line 100
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 101
    move-result v0

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v8, v2, v3, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 105
    move v2, v8

    .line 106
    .line 107
    .line 108
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 109
    move-result p3

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 113
    .line 114
    iget p4, p0, Lcom/narvii/drawer/DrawerLayout;->mScrimOpacity:F

    .line 115
    const/4 v0, 0x0

    .line 116
    .line 117
    cmpl-float v4, p4, v0

    .line 118
    .line 119
    if-lez v4, :cond_6

    .line 120
    .line 121
    if-eqz v1, :cond_6

    .line 122
    .line 123
    iget p2, p0, Lcom/narvii/drawer/DrawerLayout;->mScrimColor:I

    .line 124
    .line 125
    const/high16 v0, -0x1000000

    .line 126
    and-int/2addr v0, p2

    .line 127
    .line 128
    ushr-int/lit8 v0, v0, 0x18

    .line 129
    int-to-float v0, v0

    .line 130
    mul-float/2addr v0, p4

    .line 131
    float-to-int p4, v0

    .line 132
    .line 133
    shl-int/lit8 p4, p4, 0x18

    .line 134
    .line 135
    .line 136
    const v0, 0xffffff

    .line 137
    and-int/2addr p2, v0

    .line 138
    or-int/2addr p2, p4

    .line 139
    .line 140
    iget-object p4, p0, Lcom/narvii/drawer/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    int-to-float v5, v2

    .line 145
    const/4 v6, 0x0

    .line 146
    int-to-float v7, v3

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 150
    move-result p2

    .line 151
    int-to-float v8, p2

    .line 152
    .line 153
    iget-object v9, p0, Lcom/narvii/drawer/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 154
    move-object v4, p1

    .line 155
    .line 156
    .line 157
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 158
    .line 159
    goto/16 :goto_3

    .line 160
    .line 161
    :cond_6
    iget-object p4, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    .line 162
    .line 163
    const/high16 v1, 0x437f0000    # 255.0f

    .line 164
    .line 165
    const/high16 v2, 0x3f800000    # 1.0f

    .line 166
    .line 167
    if-eqz p4, :cond_7

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, p2, v5}, Lcom/narvii/drawer/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    .line 171
    move-result p4

    .line 172
    .line 173
    if-eqz p4, :cond_7

    .line 174
    .line 175
    iget-object p4, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 179
    move-result p4

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 183
    move-result v3

    .line 184
    .line 185
    iget-object v4, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4}, Landroidx/customview/widget/ViewDragHelper;->y()I

    .line 189
    move-result v4

    .line 190
    int-to-float v5, v3

    .line 191
    int-to-float v4, v4

    .line 192
    div-float/2addr v5, v4

    .line 193
    .line 194
    .line 195
    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    .line 196
    move-result v2

    .line 197
    .line 198
    .line 199
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    .line 200
    move-result v0

    .line 201
    .line 202
    iget-object v2, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 206
    move-result v4

    .line 207
    add-int/2addr p4, v3

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 211
    move-result p2

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2, v3, v4, p4, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 215
    .line 216
    iget-object p2, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    .line 217
    mul-float/2addr v0, v1

    .line 218
    float-to-int p4, v0

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 222
    .line 223
    iget-object p2, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 227
    goto :goto_3

    .line 228
    .line 229
    :cond_7
    iget-object p4, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    .line 230
    .line 231
    if-eqz p4, :cond_8

    .line 232
    const/4 p4, 0x5

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, p2, p4}, Lcom/narvii/drawer/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    .line 236
    move-result p4

    .line 237
    .line 238
    if-eqz p4, :cond_8

    .line 239
    .line 240
    iget-object p4, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 244
    move-result p4

    .line 245
    .line 246
    .line 247
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 248
    move-result v3

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 252
    move-result v4

    .line 253
    sub-int/2addr v4, v3

    .line 254
    .line 255
    iget-object v5, p0, Lcom/narvii/drawer/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v5}, Landroidx/customview/widget/ViewDragHelper;->y()I

    .line 259
    move-result v5

    .line 260
    int-to-float v4, v4

    .line 261
    int-to-float v5, v5

    .line 262
    div-float/2addr v4, v5

    .line 263
    .line 264
    .line 265
    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    .line 266
    move-result v2

    .line 267
    .line 268
    .line 269
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    .line 270
    move-result v0

    .line 271
    .line 272
    iget-object v2, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    .line 273
    .line 274
    sub-int p4, v3, p4

    .line 275
    .line 276
    .line 277
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 278
    move-result v4

    .line 279
    .line 280
    .line 281
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 282
    move-result p2

    .line 283
    .line 284
    .line 285
    invoke-virtual {v2, p4, v4, v3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 286
    .line 287
    iget-object p2, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    .line 288
    mul-float/2addr v0, v1

    .line 289
    float-to-int p4, v0

    .line 290
    .line 291
    .line 292
    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 293
    .line 294
    iget-object p2, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    .line 295
    .line 296
    .line 297
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 298
    :cond_8
    :goto_3
    return p3
.end method

.method findDrawerWithGravity(I)Landroid/view/View;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->D(Landroid/view/View;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Landroidx/core/view/GravityCompat;->b(II)I

    .line 8
    move-result p1

    .line 9
    .line 10
    and-int/lit8 p1, p1, 0x7

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    :goto_0
    if-ge v1, v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v2}, Lcom/narvii/drawer/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    .line 25
    move-result v3

    .line 26
    .line 27
    and-int/lit8 v3, v3, 0x7

    .line 28
    .line 29
    if-ne v3, p1, :cond_0

    .line 30
    return-object v2

    .line 31
    .line 32
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    return-object p1
.end method

.method findOpenDrawer()Landroid/view/View;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    :goto_0
    if-ge v1, v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    check-cast v3, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 18
    .line 19
    iget v3, v3, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    .line 20
    const/4 v4, 0x1

    .line 21
    and-int/2addr v3, v4

    .line 22
    .line 23
    if-ne v3, v4, :cond_0

    .line 24
    return-object v2

    .line 25
    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, v1}, Lcom/narvii/drawer/DrawerLayout$LayoutParams;-><init>(II)V

    .line 7
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 6
    new-instance v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/narvii/drawer/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    check-cast p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/narvii/drawer/DrawerLayout$LayoutParams;-><init>(Lcom/narvii/drawer/DrawerLayout$LayoutParams;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/narvii/drawer/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/narvii/drawer/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0
.end method

.method public getDrawerElevation()F
    .locals 1

    sget-boolean v0, Lcom/narvii/drawer/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/drawer/DrawerLayout;->mDrawerElevation:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDrawerLockMode(I)I
    .locals 3

    .line 1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->D(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_9

    const/4 v2, 0x5

    if-eq p1, v2, :cond_6

    const v2, 0x800003

    if-eq p1, v2, :cond_3

    const v2, 0x800005

    if-eq p1, v2, :cond_0

    goto :goto_4

    :cond_0
    iget p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeEnd:I

    if-eq p1, v1, :cond_1

    return p1

    :cond_1
    if-nez v0, :cond_2

    iget p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeRight:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeLeft:I

    :goto_0
    if-eq p1, v1, :cond_c

    return p1

    :cond_3
    iget p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeStart:I

    if-eq p1, v1, :cond_4

    return p1

    :cond_4
    if-nez v0, :cond_5

    iget p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeLeft:I

    goto :goto_1

    :cond_5
    iget p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeRight:I

    :goto_1
    if-eq p1, v1, :cond_c

    return p1

    :cond_6
    iget p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeRight:I

    if-eq p1, v1, :cond_7

    return p1

    :cond_7
    if-nez v0, :cond_8

    iget p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeEnd:I

    goto :goto_2

    :cond_8
    iget p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeStart:I

    :goto_2
    if-eq p1, v1, :cond_c

    return p1

    :cond_9
    iget p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeLeft:I

    if-eq p1, v1, :cond_a

    return p1

    :cond_a
    if-nez v0, :cond_b

    iget p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeStart:I

    goto :goto_3

    :cond_b
    iget p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeEnd:I

    :goto_3
    if-eq p1, v1, :cond_c

    return p1

    :cond_c
    :goto_4
    const/4 p1, 0x0

    return p1
.end method

.method public getDrawerLockMode(Landroid/view/View;)I
    .locals 3

    .line 2
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    iget p1, p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->gravity:I

    .line 4
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->getDrawerLockMode(I)I

    move-result p1

    return p1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a drawer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDrawerTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->D(Landroid/view/View;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Landroidx/core/view/GravityCompat;->b(II)I

    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x3

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    .line 14
    return-object p1

    .line 15
    :cond_0
    const/4 v0, 0x5

    .line 16
    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    .line 20
    return-object p1

    .line 21
    :cond_1
    const/4 p1, 0x0

    .line 22
    return-object p1
.end method

.method getDrawerViewAbsoluteGravity(Landroid/view/View;)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 7
    .line 8
    iget p1, p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->gravity:I

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->D(Landroid/view/View;)I

    .line 12
    move-result v0

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Landroidx/core/view/GravityCompat;->b(II)I

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method getDrawerViewOffset(Landroid/view/View;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 7
    .line 8
    iget p1, p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->onScreen:F

    .line 9
    return p1
.end method

.method public getStatusBarBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method isContentView(Landroid/view/View;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 7
    .line 8
    iget p1, p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->gravity:I

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public isDrawerOpen(I)Z
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isDrawerOpen(Landroid/view/View;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 3
    iget p1, p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a drawer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isDrawerView(Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 7
    .line 8
    iget v0, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->gravity:I

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->D(Landroid/view/View;)I

    .line 12
    move-result p1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p1}, Landroidx/core/view/GravityCompat;->b(II)I

    .line 16
    move-result p1

    .line 17
    .line 18
    and-int/lit8 v0, p1, 0x3

    .line 19
    const/4 v1, 0x1

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    return v1

    .line 23
    .line 24
    :cond_0
    and-int/lit8 p1, p1, 0x5

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    return v1

    .line 28
    :cond_1
    const/4 p1, 0x0

    .line 29
    return p1
.end method

.method public isDrawerVisible(I)Z
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isDrawerVisible(Landroid/view/View;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    iget p1, p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a drawer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method moveDrawerToOffset(Landroid/view/View;F)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 8
    move-result v1

    .line 9
    int-to-float v1, v1

    .line 10
    mul-float/2addr v0, v1

    .line 11
    float-to-int v0, v0

    .line 12
    mul-float/2addr v1, p2

    .line 13
    float-to-int v1, v1

    .line 14
    sub-int/2addr v1, v0

    .line 15
    const/4 v0, 0x3

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/narvii/drawer/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    neg-int v1, v1

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/narvii/drawer/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 30
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/drawer/DrawerLayout;->mFirstLayout:Z

    .line 7
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/drawer/DrawerLayout;->mFirstLayout:Z

    .line 7
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerLayout;->mDrawStatusBarBackground:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/narvii/drawer/DrawerLayout;->IMPL:Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImpl;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/drawer/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImpl;->getTopInset(Ljava/lang/Object;)I

    .line 19
    move-result v0

    .line 20
    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/drawer/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 37
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, p1}, Landroidx/customview/widget/ViewDragHelper;->Q(Landroid/view/MotionEvent;)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    iget-object v2, p0, Lcom/narvii/drawer/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p1}, Landroidx/customview/widget/ViewDragHelper;->Q(Landroid/view/MotionEvent;)Z

    .line 16
    move-result v2

    .line 17
    or-int/2addr v1, v2

    .line 18
    const/4 v2, 0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    if-eq v0, v2, :cond_1

    .line 24
    const/4 p1, 0x2

    .line 25
    const/4 v4, 0x3

    .line 26
    .line 27
    if-eq v0, p1, :cond_0

    .line 28
    .line 29
    if-eq v0, v4, :cond_1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v4}, Landroidx/customview/widget/ViewDragHelper;->e(I)Z

    .line 36
    move-result p1

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftCallback:Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mRightCallback:Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 49
    goto :goto_0

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {p0, v2}, Lcom/narvii/drawer/DrawerLayout;->closeDrawers(Z)V

    .line 53
    .line 54
    iput-boolean v3, p0, Lcom/narvii/drawer/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 55
    .line 56
    sput-boolean v3, Lcom/narvii/drawer/DrawerLayout;->disallowIntercept:Z

    .line 57
    .line 58
    iput-boolean v3, p0, Lcom/narvii/drawer/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 59
    :cond_2
    :goto_0
    move p1, v3

    .line 60
    goto :goto_2

    .line 61
    .line 62
    .line 63
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 64
    move-result v0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 68
    move-result p1

    .line 69
    .line 70
    iput v0, p0, Lcom/narvii/drawer/DrawerLayout;->mInitialMotionX:F

    .line 71
    .line 72
    iput p1, p0, Lcom/narvii/drawer/DrawerLayout;->mInitialMotionY:F

    .line 73
    .line 74
    iget v1, p0, Lcom/narvii/drawer/DrawerLayout;->mScrimOpacity:F

    .line 75
    const/4 v4, 0x0

    .line 76
    .line 77
    cmpl-float v1, v1, v4

    .line 78
    .line 79
    if-lez v1, :cond_4

    .line 80
    .line 81
    iget-object v1, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 82
    float-to-int v0, v0

    .line 83
    float-to-int p1, p1

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v0, p1}, Landroidx/customview/widget/ViewDragHelper;->u(II)Landroid/view/View;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->isContentView(Landroid/view/View;)Z

    .line 93
    move-result p1

    .line 94
    .line 95
    if-eqz p1, :cond_4

    .line 96
    move p1, v2

    .line 97
    goto :goto_1

    .line 98
    :cond_4
    move p1, v3

    .line 99
    .line 100
    :goto_1
    iput-boolean v3, p0, Lcom/narvii/drawer/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 101
    .line 102
    sput-boolean v3, Lcom/narvii/drawer/DrawerLayout;->disallowIntercept:Z

    .line 103
    .line 104
    iput-boolean v3, p0, Lcom/narvii/drawer/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 105
    move v1, v3

    .line 106
    .line 107
    :goto_2
    sget-boolean v0, Lcom/narvii/drawer/DrawerLayout;->disallowIntercept:Z

    .line 108
    .line 109
    if-eqz v0, :cond_5

    .line 110
    return v3

    .line 111
    .line 112
    :cond_5
    if-nez v1, :cond_7

    .line 113
    .line 114
    if-nez p1, :cond_7

    .line 115
    .line 116
    .line 117
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerLayout;->hasPeekingDrawer()Z

    .line 118
    move-result p1

    .line 119
    .line 120
    if-nez p1, :cond_7

    .line 121
    .line 122
    iget-boolean p1, p0, Lcom/narvii/drawer/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 123
    .line 124
    if-eqz p1, :cond_6

    .line 125
    goto :goto_3

    .line 126
    :cond_6
    move v2, v3

    .line 127
    :cond_7
    :goto_3
    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerLayout;->hasVisibleDrawer()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    if-ne p1, v0, :cond_2

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    .line 13
    move-result p2

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerLayout;->closeDrawers()V

    .line 19
    .line 20
    :cond_0
    if-eqz p1, :cond_1

    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1

    .line 25
    .line 26
    .line 27
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    iput-boolean v1, v0, Lcom/narvii/drawer/DrawerLayout;->mInLayout:Z

    .line 6
    .line 7
    iget-object v2, v0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, v1}, Landroidx/customview/widget/ViewDragHelper;->n(Z)Z

    .line 11
    move-result v2

    .line 12
    .line 13
    iget-object v3, v0, Lcom/narvii/drawer/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, v1}, Landroidx/customview/widget/ViewDragHelper;->n(Z)Z

    .line 17
    move-result v3

    .line 18
    or-int/2addr v2, v3

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 22
    move-result v3

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    .line 26
    :goto_0
    if-ge v6, v3, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    move-result-object v8

    .line 31
    .line 32
    .line 33
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    move-result-object v8

    .line 35
    .line 36
    check-cast v8, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 37
    .line 38
    iget v8, v8, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->onScreen:F

    .line 39
    .line 40
    .line 41
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    .line 42
    move-result v7

    .line 43
    .line 44
    add-int/lit8 v6, v6, 0x1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_0
    iput v7, v0, Lcom/narvii/drawer/DrawerLayout;->mScrimOpacity:F

    .line 48
    .line 49
    sub-int v6, p4, p2

    .line 50
    const/4 v7, 0x0

    .line 51
    .line 52
    :goto_1
    if-ge v7, v3, :cond_c

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 56
    move-result-object v8

    .line 57
    .line 58
    .line 59
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 60
    move-result v9

    .line 61
    .line 62
    const/16 v10, 0x8

    .line 63
    .line 64
    if-ne v9, v10, :cond_1

    .line 65
    .line 66
    :goto_2
    move/from16 v16, v3

    .line 67
    const/4 v3, 0x0

    .line 68
    .line 69
    goto/16 :goto_9

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 73
    move-result-object v9

    .line 74
    .line 75
    check-cast v9, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v8}, Lcom/narvii/drawer/DrawerLayout;->isContentView(Landroid/view/View;)Z

    .line 79
    move-result v10

    .line 80
    .line 81
    if-eqz v10, :cond_2

    .line 82
    .line 83
    iget v10, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 84
    .line 85
    iget v11, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 86
    .line 87
    .line 88
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 89
    move-result v12

    .line 90
    add-int/2addr v12, v10

    .line 91
    .line 92
    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 93
    .line 94
    .line 95
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 96
    move-result v13

    .line 97
    add-int/2addr v9, v13

    .line 98
    .line 99
    .line 100
    invoke-virtual {v8, v10, v11, v12, v9}, Landroid/view/View;->layout(IIII)V

    .line 101
    goto :goto_2

    .line 102
    .line 103
    .line 104
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 105
    move-result v10

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 109
    move-result v11

    .line 110
    const/4 v12, 0x3

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v8, v12}, Lcom/narvii/drawer/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    .line 114
    move-result v12

    .line 115
    .line 116
    if-eqz v12, :cond_3

    .line 117
    neg-int v12, v10

    .line 118
    int-to-float v13, v10

    .line 119
    .line 120
    iget v14, v9, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->onScreen:F

    .line 121
    mul-float/2addr v14, v13

    .line 122
    float-to-int v14, v14

    .line 123
    add-int/2addr v12, v14

    .line 124
    .line 125
    add-int v14, v10, v12

    .line 126
    int-to-float v14, v14

    .line 127
    div-float/2addr v14, v13

    .line 128
    goto :goto_3

    .line 129
    :cond_3
    int-to-float v12, v10

    .line 130
    .line 131
    iget v13, v9, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->onScreen:F

    .line 132
    mul-float/2addr v13, v12

    .line 133
    float-to-int v13, v13

    .line 134
    .line 135
    sub-int v13, v6, v13

    .line 136
    .line 137
    sub-int v14, v6, v13

    .line 138
    int-to-float v14, v14

    .line 139
    div-float/2addr v14, v12

    .line 140
    move v12, v13

    .line 141
    .line 142
    :goto_3
    iget v13, v9, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->onScreen:F

    .line 143
    .line 144
    cmpl-float v13, v14, v13

    .line 145
    .line 146
    if-eqz v13, :cond_4

    .line 147
    move v13, v1

    .line 148
    goto :goto_4

    .line 149
    :cond_4
    const/4 v13, 0x0

    .line 150
    .line 151
    :goto_4
    iget v15, v9, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->gravity:I

    .line 152
    .line 153
    and-int/lit8 v15, v15, 0x70

    .line 154
    .line 155
    const/16 v1, 0x10

    .line 156
    .line 157
    if-eq v15, v1, :cond_6

    .line 158
    .line 159
    const/16 v1, 0x50

    .line 160
    .line 161
    if-eq v15, v1, :cond_5

    .line 162
    .line 163
    iget v1, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 164
    add-int/2addr v10, v12

    .line 165
    add-int/2addr v11, v1

    .line 166
    .line 167
    .line 168
    invoke-virtual {v8, v12, v1, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 169
    .line 170
    :goto_5
    move/from16 v16, v3

    .line 171
    goto :goto_7

    .line 172
    .line 173
    :cond_5
    sub-int v1, p5, p3

    .line 174
    .line 175
    iget v11, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 176
    .line 177
    sub-int v11, v1, v11

    .line 178
    .line 179
    .line 180
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 181
    move-result v15

    .line 182
    sub-int/2addr v11, v15

    .line 183
    add-int/2addr v10, v12

    .line 184
    .line 185
    iget v15, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 186
    sub-int/2addr v1, v15

    .line 187
    .line 188
    .line 189
    invoke-virtual {v8, v12, v11, v10, v1}, Landroid/view/View;->layout(IIII)V

    .line 190
    goto :goto_5

    .line 191
    .line 192
    :cond_6
    sub-int v1, p5, p3

    .line 193
    .line 194
    sub-int v15, v1, v11

    .line 195
    .line 196
    div-int/lit8 v15, v15, 0x2

    .line 197
    .line 198
    iget v5, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 199
    .line 200
    if-ge v15, v5, :cond_7

    .line 201
    .line 202
    move/from16 v16, v3

    .line 203
    move v15, v5

    .line 204
    goto :goto_6

    .line 205
    .line 206
    :cond_7
    add-int v5, v15, v11

    .line 207
    .line 208
    iget v4, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 209
    .line 210
    move/from16 v16, v3

    .line 211
    .line 212
    sub-int v3, v1, v4

    .line 213
    .line 214
    if-le v5, v3, :cond_8

    .line 215
    sub-int/2addr v1, v4

    .line 216
    .line 217
    sub-int v15, v1, v11

    .line 218
    :cond_8
    :goto_6
    add-int/2addr v10, v12

    .line 219
    add-int/2addr v11, v15

    .line 220
    .line 221
    .line 222
    invoke-virtual {v8, v12, v15, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 223
    .line 224
    :goto_7
    if-eqz v13, :cond_9

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v8, v14}, Lcom/narvii/drawer/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 228
    .line 229
    :cond_9
    iget v1, v9, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->onScreen:F

    .line 230
    const/4 v3, 0x0

    .line 231
    .line 232
    cmpl-float v1, v1, v3

    .line 233
    .line 234
    if-lez v1, :cond_a

    .line 235
    const/4 v1, 0x0

    .line 236
    goto :goto_8

    .line 237
    :cond_a
    const/4 v1, 0x4

    .line 238
    .line 239
    .line 240
    :goto_8
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 241
    move-result v4

    .line 242
    .line 243
    if-eq v4, v1, :cond_b

    .line 244
    .line 245
    .line 246
    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    .line 247
    .line 248
    :cond_b
    :goto_9
    add-int/lit8 v7, v7, 0x1

    .line 249
    .line 250
    move/from16 v3, v16

    .line 251
    const/4 v1, 0x1

    .line 252
    .line 253
    goto/16 :goto_1

    .line 254
    :cond_c
    const/4 v1, 0x0

    .line 255
    .line 256
    iput-boolean v1, v0, Lcom/narvii/drawer/DrawerLayout;->mInLayout:Z

    .line 257
    .line 258
    iput-boolean v1, v0, Lcom/narvii/drawer/DrawerLayout;->mFirstLayout:Z

    .line 259
    .line 260
    if-eqz v2, :cond_d

    .line 261
    .line 262
    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/drawer/DrawerLayout;->postRequestLayout()V

    .line 264
    :cond_d
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 10
    move-result v2

    .line 11
    .line 12
    .line 13
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 14
    move-result v3

    .line 15
    .line 16
    .line 17
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 18
    move-result v4

    .line 19
    .line 20
    const/high16 v5, 0x40000000    # 2.0f

    .line 21
    .line 22
    if-ne v1, v5, :cond_0

    .line 23
    .line 24
    if-eq v2, v5, :cond_4

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    .line 28
    move-result v6

    .line 29
    .line 30
    if-eqz v6, :cond_12

    .line 31
    .line 32
    const/16 v6, 0x12c

    .line 33
    .line 34
    const/high16 v7, -0x80000000

    .line 35
    .line 36
    if-ne v1, v7, :cond_1

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_1
    if-nez v1, :cond_2

    .line 40
    move v3, v6

    .line 41
    .line 42
    :cond_2
    :goto_0
    if-ne v2, v7, :cond_3

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_3
    if-nez v2, :cond_4

    .line 46
    move v4, v6

    .line 47
    .line 48
    .line 49
    :cond_4
    :goto_1
    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 50
    .line 51
    iget-object v1, v0, Lcom/narvii/drawer/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    .line 52
    const/4 v6, 0x1

    .line 53
    .line 54
    if-eqz v1, :cond_5

    .line 55
    .line 56
    .line 57
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->A(Landroid/view/View;)Z

    .line 58
    move-result v1

    .line 59
    .line 60
    if-eqz v1, :cond_5

    .line 61
    move v1, v6

    .line 62
    goto :goto_2

    .line 63
    :cond_5
    const/4 v1, 0x0

    .line 64
    .line 65
    .line 66
    :goto_2
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->D(Landroid/view/View;)I

    .line 67
    move-result v7

    .line 68
    .line 69
    .line 70
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 71
    move-result v8

    .line 72
    const/4 v9, 0x0

    .line 73
    const/4 v10, 0x0

    .line 74
    const/4 v11, 0x0

    .line 75
    .line 76
    :goto_3
    if-ge v9, v8, :cond_11

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 80
    move-result-object v12

    .line 81
    .line 82
    .line 83
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    .line 84
    move-result v13

    .line 85
    .line 86
    const/16 v14, 0x8

    .line 87
    .line 88
    if-ne v13, v14, :cond_6

    .line 89
    goto :goto_5

    .line 90
    .line 91
    .line 92
    :cond_6
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 93
    move-result-object v13

    .line 94
    .line 95
    check-cast v13, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 96
    .line 97
    if-eqz v1, :cond_8

    .line 98
    .line 99
    iget v14, v13, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->gravity:I

    .line 100
    .line 101
    .line 102
    invoke-static {v14, v7}, Landroidx/core/view/GravityCompat;->b(II)I

    .line 103
    move-result v14

    .line 104
    .line 105
    .line 106
    invoke-static {v12}, Landroidx/core/view/ViewCompat;->A(Landroid/view/View;)Z

    .line 107
    move-result v15

    .line 108
    .line 109
    if-eqz v15, :cond_7

    .line 110
    .line 111
    sget-object v15, Lcom/narvii/drawer/DrawerLayout;->IMPL:Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImpl;

    .line 112
    .line 113
    iget-object v2, v0, Lcom/narvii/drawer/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    invoke-interface {v15, v12, v2, v14}, Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImpl;->dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V

    .line 117
    goto :goto_4

    .line 118
    .line 119
    :cond_7
    sget-object v2, Lcom/narvii/drawer/DrawerLayout;->IMPL:Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImpl;

    .line 120
    .line 121
    iget-object v15, v0, Lcom/narvii/drawer/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    invoke-interface {v2, v13, v15, v14}, Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImpl;->applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V

    .line 125
    .line 126
    .line 127
    :cond_8
    :goto_4
    invoke-virtual {v0, v12}, Lcom/narvii/drawer/DrawerLayout;->isContentView(Landroid/view/View;)Z

    .line 128
    move-result v2

    .line 129
    .line 130
    if-eqz v2, :cond_9

    .line 131
    .line 132
    iget v2, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 133
    .line 134
    sub-int v2, v3, v2

    .line 135
    .line 136
    iget v14, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 137
    sub-int/2addr v2, v14

    .line 138
    .line 139
    .line 140
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 141
    move-result v2

    .line 142
    .line 143
    iget v14, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 144
    .line 145
    sub-int v14, v4, v14

    .line 146
    .line 147
    iget v13, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 148
    sub-int/2addr v14, v13

    .line 149
    .line 150
    .line 151
    invoke-static {v14, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 152
    move-result v13

    .line 153
    .line 154
    .line 155
    invoke-virtual {v12, v2, v13}, Landroid/view/View;->measure(II)V

    .line 156
    .line 157
    :goto_5
    move/from16 v15, p1

    .line 158
    .line 159
    move/from16 v13, p2

    .line 160
    .line 161
    goto/16 :goto_9

    .line 162
    .line 163
    .line 164
    :cond_9
    invoke-virtual {v0, v12}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    .line 165
    move-result v2

    .line 166
    .line 167
    if-eqz v2, :cond_10

    .line 168
    .line 169
    sget-boolean v2, Lcom/narvii/drawer/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    .line 170
    .line 171
    if-eqz v2, :cond_a

    .line 172
    .line 173
    .line 174
    invoke-static {v12}, Landroidx/core/view/ViewCompat;->y(Landroid/view/View;)F

    .line 175
    move-result v2

    .line 176
    .line 177
    iget v14, v0, Lcom/narvii/drawer/DrawerLayout;->mDrawerElevation:F

    .line 178
    .line 179
    cmpl-float v2, v2, v14

    .line 180
    .line 181
    if-eqz v2, :cond_a

    .line 182
    .line 183
    .line 184
    invoke-static {v12, v14}, Landroidx/core/view/ViewCompat;->C0(Landroid/view/View;F)V

    .line 185
    .line 186
    .line 187
    :cond_a
    invoke-virtual {v0, v12}, Lcom/narvii/drawer/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    .line 188
    move-result v2

    .line 189
    .line 190
    and-int/lit8 v2, v2, 0x7

    .line 191
    const/4 v14, 0x3

    .line 192
    .line 193
    if-ne v2, v14, :cond_b

    .line 194
    move v14, v6

    .line 195
    goto :goto_6

    .line 196
    :cond_b
    const/4 v14, 0x0

    .line 197
    .line 198
    :goto_6
    if-eqz v14, :cond_c

    .line 199
    .line 200
    if-nez v10, :cond_d

    .line 201
    .line 202
    :cond_c
    if-nez v14, :cond_e

    .line 203
    .line 204
    if-nez v11, :cond_d

    .line 205
    goto :goto_7

    .line 206
    .line 207
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 208
    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    const-string v4, "Child drawer has absolute gravity "

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-static {v2}, Lcom/narvii/drawer/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    .line 221
    move-result-object v2

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    const-string v2, " but this "

    .line 227
    .line 228
    .line 229
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    const-string v2, "DrawerLayout"

    .line 232
    .line 233
    .line 234
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    const-string v2, " already has a drawer view along that edge"

    .line 237
    .line 238
    .line 239
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    move-result-object v2

    .line 244
    .line 245
    .line 246
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 247
    throw v1

    .line 248
    .line 249
    :cond_e
    :goto_7
    if-eqz v14, :cond_f

    .line 250
    move v10, v6

    .line 251
    goto :goto_8

    .line 252
    :cond_f
    move v11, v6

    .line 253
    .line 254
    :goto_8
    iget v2, v0, Lcom/narvii/drawer/DrawerLayout;->mMinDrawerMargin:I

    .line 255
    .line 256
    iget v14, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 257
    add-int/2addr v2, v14

    .line 258
    .line 259
    iget v14, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 260
    add-int/2addr v2, v14

    .line 261
    .line 262
    iget v14, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 263
    .line 264
    move/from16 v15, p1

    .line 265
    .line 266
    .line 267
    invoke-static {v15, v2, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 268
    move-result v2

    .line 269
    .line 270
    iget v14, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 271
    .line 272
    iget v5, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 273
    add-int/2addr v14, v5

    .line 274
    .line 275
    iget v5, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 276
    .line 277
    move/from16 v13, p2

    .line 278
    .line 279
    .line 280
    invoke-static {v13, v14, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 281
    move-result v5

    .line 282
    .line 283
    .line 284
    invoke-virtual {v12, v2, v5}, Landroid/view/View;->measure(II)V

    .line 285
    .line 286
    :goto_9
    add-int/lit8 v9, v9, 0x1

    .line 287
    .line 288
    const/high16 v5, 0x40000000    # 2.0f

    .line 289
    .line 290
    goto/16 :goto_3

    .line 291
    .line 292
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 293
    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .line 299
    const-string v3, "Child "

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    const-string v3, " at index "

    .line 308
    .line 309
    .line 310
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    const-string v3, " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY"

    .line 316
    .line 317
    .line 318
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    move-result-object v2

    .line 323
    .line 324
    .line 325
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 326
    throw v1

    .line 327
    :cond_11
    return-void

    .line 328
    .line 329
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 330
    .line 331
    const-string v2, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    .line 332
    .line 333
    .line 334
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 335
    throw v1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/drawer/DrawerLayout$SavedState;

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
    check-cast p1, Lcom/narvii/drawer/DrawerLayout$SavedState;

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
    iget v0, p1, Lcom/narvii/drawer/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/narvii/drawer/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/narvii/drawer/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 31
    .line 32
    :cond_1
    iget v0, p1, Lcom/narvii/drawer/DrawerLayout$SavedState;->lockModeLeft:I

    .line 33
    const/4 v1, 0x3

    .line 34
    .line 35
    if-eq v0, v1, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0, v1}, Lcom/narvii/drawer/DrawerLayout;->setDrawerLockMode(II)V

    .line 39
    .line 40
    :cond_2
    iget v0, p1, Lcom/narvii/drawer/DrawerLayout$SavedState;->lockModeRight:I

    .line 41
    .line 42
    if-eq v0, v1, :cond_3

    .line 43
    const/4 v2, 0x5

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0, v2}, Lcom/narvii/drawer/DrawerLayout;->setDrawerLockMode(II)V

    .line 47
    .line 48
    :cond_3
    iget v0, p1, Lcom/narvii/drawer/DrawerLayout$SavedState;->lockModeStart:I

    .line 49
    .line 50
    if-eq v0, v1, :cond_4

    .line 51
    .line 52
    .line 53
    const v2, 0x800003

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0, v2}, Lcom/narvii/drawer/DrawerLayout;->setDrawerLockMode(II)V

    .line 57
    .line 58
    :cond_4
    iget p1, p1, Lcom/narvii/drawer/DrawerLayout$SavedState;->lockModeEnd:I

    .line 59
    .line 60
    if-eq p1, v1, :cond_5

    .line 61
    .line 62
    .line 63
    const v0, 0x800005

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1, v0}, Lcom/narvii/drawer/DrawerLayout;->setDrawerLockMode(II)V

    .line 67
    :cond_5
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerLayout;->resolveShadowDrawables()V

    .line 4
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/narvii/drawer/DrawerLayout$SavedState;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0}, Lcom/narvii/drawer/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    .line 17
    :goto_0
    if-ge v3, v0, :cond_4

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    move-result-object v4

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    move-result-object v4

    .line 26
    .line 27
    check-cast v4, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 28
    .line 29
    iget v5, v4, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    .line 30
    const/4 v6, 0x1

    .line 31
    .line 32
    if-ne v5, v6, :cond_0

    .line 33
    move v7, v6

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    move v7, v2

    .line 36
    :goto_1
    const/4 v8, 0x2

    .line 37
    .line 38
    if-ne v5, v8, :cond_1

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    move v6, v2

    .line 41
    .line 42
    :goto_2
    if-nez v7, :cond_3

    .line 43
    .line 44
    if-eqz v6, :cond_2

    .line 45
    goto :goto_3

    .line 46
    .line 47
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_3
    :goto_3
    iget v0, v4, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->gravity:I

    .line 51
    .line 52
    iput v0, v1, Lcom/narvii/drawer/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 53
    .line 54
    :cond_4
    iget v0, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeLeft:I

    .line 55
    .line 56
    iput v0, v1, Lcom/narvii/drawer/DrawerLayout$SavedState;->lockModeLeft:I

    .line 57
    .line 58
    iget v0, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeRight:I

    .line 59
    .line 60
    iput v0, v1, Lcom/narvii/drawer/DrawerLayout$SavedState;->lockModeRight:I

    .line 61
    .line 62
    iget v0, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeStart:I

    .line 63
    .line 64
    iput v0, v1, Lcom/narvii/drawer/DrawerLayout$SavedState;->lockModeStart:I

    .line 65
    .line 66
    iget v0, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeEnd:I

    .line 67
    .line 68
    iput v0, v1, Lcom/narvii/drawer/DrawerLayout$SavedState;->lockModeEnd:I

    .line 69
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->G(Landroid/view/MotionEvent;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->G(Landroid/view/MotionEvent;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 14
    move-result v0

    .line 15
    .line 16
    and-int/lit16 v0, v0, 0xff

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x1

    .line 19
    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    if-eq v0, v2, :cond_1

    .line 23
    const/4 p1, 0x3

    .line 24
    .line 25
    if-eq v0, p1, :cond_0

    .line 26
    goto :goto_2

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0, v2}, Lcom/narvii/drawer/DrawerLayout;->closeDrawers(Z)V

    .line 30
    .line 31
    iput-boolean v1, p0, Lcom/narvii/drawer/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 32
    .line 33
    sput-boolean v1, Lcom/narvii/drawer/DrawerLayout;->disallowIntercept:Z

    .line 34
    .line 35
    iput-boolean v1, p0, Lcom/narvii/drawer/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 36
    goto :goto_2

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 40
    move-result v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 44
    move-result p1

    .line 45
    .line 46
    iget-object v3, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 47
    float-to-int v4, v0

    .line 48
    float-to-int v5, p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v4, v5}, Landroidx/customview/widget/ViewDragHelper;->u(II)Landroid/view/View;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v3}, Lcom/narvii/drawer/DrawerLayout;->isContentView(Landroid/view/View;)Z

    .line 58
    move-result v3

    .line 59
    .line 60
    if-eqz v3, :cond_3

    .line 61
    .line 62
    iget v3, p0, Lcom/narvii/drawer/DrawerLayout;->mInitialMotionX:F

    .line 63
    sub-float/2addr v0, v3

    .line 64
    .line 65
    iget v3, p0, Lcom/narvii/drawer/DrawerLayout;->mInitialMotionY:F

    .line 66
    sub-float/2addr p1, v3

    .line 67
    .line 68
    iget-object v3, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Landroidx/customview/widget/ViewDragHelper;->A()I

    .line 72
    move-result v3

    .line 73
    mul-float/2addr v0, v0

    .line 74
    mul-float/2addr p1, p1

    .line 75
    add-float/2addr v0, p1

    .line 76
    mul-int/2addr v3, v3

    .line 77
    int-to-float p1, v3

    .line 78
    .line 79
    cmpg-float p1, v0, p1

    .line 80
    .line 81
    if-gez p1, :cond_3

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    .line 91
    move-result p1

    .line 92
    const/4 v0, 0x2

    .line 93
    .line 94
    if-ne p1, v0, :cond_2

    .line 95
    goto :goto_0

    .line 96
    :cond_2
    move p1, v1

    .line 97
    goto :goto_1

    .line 98
    :cond_3
    :goto_0
    move p1, v2

    .line 99
    .line 100
    .line 101
    :goto_1
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->closeDrawers(Z)V

    .line 102
    .line 103
    iput-boolean v1, p0, Lcom/narvii/drawer/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 104
    .line 105
    sput-boolean v1, Lcom/narvii/drawer/DrawerLayout;->disallowIntercept:Z

    .line 106
    goto :goto_2

    .line 107
    .line 108
    .line 109
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 110
    move-result v0

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 114
    move-result p1

    .line 115
    .line 116
    iput v0, p0, Lcom/narvii/drawer/DrawerLayout;->mInitialMotionX:F

    .line 117
    .line 118
    iput p1, p0, Lcom/narvii/drawer/DrawerLayout;->mInitialMotionY:F

    .line 119
    .line 120
    iput-boolean v1, p0, Lcom/narvii/drawer/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 121
    .line 122
    sput-boolean v1, Lcom/narvii/drawer/DrawerLayout;->disallowIntercept:Z

    .line 123
    .line 124
    iput-boolean v1, p0, Lcom/narvii/drawer/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 125
    :goto_2
    return v2
.end method

.method public openDrawer(I)V
    .locals 3

    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0, v0}, Lcom/narvii/drawer/DrawerLayout;->openDrawer(Landroid/view/View;)V

    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No drawer view found with gravity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-static {p1}, Lcom/narvii/drawer/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openDrawer(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/narvii/drawer/DrawerLayout;->mFirstLayout:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    iput v1, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v1, 0x1

    .line 4
    iput v1, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    .line 5
    invoke-direct {p0, p1, v1}, Lcom/narvii/drawer/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    goto :goto_0

    .line 6
    :cond_0
    iget v1, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    const/4 v0, 0x3

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/narvii/drawer/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->R(Landroid/view/View;II)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 11
    invoke-virtual {v0, p1, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->R(Landroid/view/View;II)Z

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerLayout;->requestLayout()V

    return-void

    .line 13
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a sliding drawer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public peekDrawer(IJJ)V
    .locals 6

    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .line 9
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/drawer/DrawerLayout;->peekDrawer(Landroid/view/View;JJ)V

    return-void

    .line 10
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No drawer view found with gravity "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {p1}, Lcom/narvii/drawer/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public peekDrawer(Landroid/view/View;JJ)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 3
    iget v1, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    if-nez v1, :cond_2

    iget-boolean v0, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->isPeeking:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/narvii/drawer/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftCallback:Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;

    .line 5
    invoke-static {p1, p2, p3, p4, p5}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->b(Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;JJ)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mRightCallback:Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;

    .line 6
    invoke-static {p1, p2, p3, p4, p5}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->b(Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;JJ)V

    :cond_2
    :goto_0
    return-void

    .line 7
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "View "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a sliding drawer"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method postRequestLayout()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->requestLayoutRunnable:Ljava/lang/Runnable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->requestLayoutRunnable:Ljava/lang/Runnable;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

.method public removeDrawerListener(Lcom/narvii/drawer/DrawerLayout$DrawerListener;)V
    .locals 1
    .param p1    # Lcom/narvii/drawer/DrawerLayout$DrawerListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mListeners:Ljava/util/List;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    return-void

    .line 9
    .line 10
    .line 11
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 12
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/narvii/drawer/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    const/4 p1, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->closeDrawers(Z)V

    .line 12
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerLayout;->mInLayout:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 8
    :cond_0
    return-void
.end method

.method public setChildInsets(Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/drawer/DrawerLayout;->mDrawStatusBarBackground:Z

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerLayout;->requestLayout()V

    .line 22
    return-void
.end method

.method public setDrawerElevation(F)V
    .locals 2

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/drawer/DrawerLayout;->mDrawerElevation:F

    .line 3
    const/4 p1, 0x0

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    move-result v0

    .line 8
    .line 9
    if-ge p1, v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget v1, p0, Lcom/narvii/drawer/DrawerLayout;->mDrawerElevation:F

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->C0(Landroid/view/View;F)V

    .line 25
    .line 26
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method public setDrawerListener(Lcom/narvii/drawer/DrawerLayout$DrawerListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mListener:Lcom/narvii/drawer/DrawerLayout$DrawerListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/drawer/DrawerLayout;->removeDrawerListener(Lcom/narvii/drawer/DrawerLayout$DrawerListener;)V

    .line 8
    .line 9
    :cond_0
    if-eqz p1, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->addDrawerListener(Lcom/narvii/drawer/DrawerLayout$DrawerListener;)V

    .line 13
    .line 14
    :cond_1
    iput-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mListener:Lcom/narvii/drawer/DrawerLayout$DrawerListener;

    .line 15
    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/drawer/DrawerLayout;->setDrawerLockMode(II)V

    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/narvii/drawer/DrawerLayout;->setDrawerLockMode(II)V

    return-void
.end method

.method public setDrawerLockMode(II)V
    .locals 3

    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->D(Landroid/view/View;)I

    move-result v0

    .line 4
    invoke-static {p2, v0}, Landroidx/core/view/GravityCompat;->b(II)I

    move-result v0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_3

    const/4 v2, 0x5

    if-eq p2, v2, :cond_2

    const v2, 0x800003

    if-eq p2, v2, :cond_1

    const v2, 0x800005

    if-eq p2, v2, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeEnd:I

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeStart:I

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeRight:I

    goto :goto_0

    :cond_3
    iput p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeLeft:I

    :goto_0
    if-eqz p1, :cond_5

    if-ne v0, v1, :cond_4

    iget-object p2, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/narvii/drawer/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 5
    :goto_1
    invoke-virtual {p2}, Landroidx/customview/widget/ViewDragHelper;->b()V

    :cond_5
    const/4 p2, 0x1

    if-eq p1, p2, :cond_7

    const/4 p2, 0x2

    if-eq p1, p2, :cond_6

    goto :goto_2

    .line 6
    :cond_6
    invoke-virtual {p0, v0}, Lcom/narvii/drawer/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_2

    .line 8
    :cond_7
    invoke-virtual {p0, v0}, Lcom/narvii/drawer/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public setDrawerLockMode(ILandroid/view/View;)V
    .locals 2

    .line 10
    invoke-virtual {p0, p2}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    iget p2, p2, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->gravity:I

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/narvii/drawer/DrawerLayout;->setDrawerLockMode(II)V

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not a drawer with appropriate layout_gravity"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDrawerShadow(II)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/narvii/drawer/DrawerLayout;->setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    sget-boolean v0, Lcom/narvii/drawer/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x800003

    and-int v1, p2, v0

    if-ne v1, v0, :cond_1

    iput-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    const v0, 0x800005

    and-int v1, p2, v0

    if-ne v1, v0, :cond_2

    iput-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iput-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_4

    iput-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    .line 1
    :goto_0
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerLayout;->resolveShadowDrawables()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void
.end method

.method public setDrawerTitle(ILjava/lang/CharSequence;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->D(Landroid/view/View;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Landroidx/core/view/GravityCompat;->b(II)I

    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x3

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    iput-object p2, p0, Lcom/narvii/drawer/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x5

    .line 16
    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    iput-object p2, p0, Lcom/narvii/drawer/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method setDrawerViewOffset(Landroid/view/View;F)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 7
    .line 8
    iget v1, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->onScreen:F

    .line 9
    .line 10
    cmpl-float v1, p2, v1

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    iput p2, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->onScreen:F

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/narvii/drawer/DrawerLayout;->dispatchOnDrawerSlide(Landroid/view/View;F)V

    .line 19
    return-void
.end method

.method public setScrimColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/drawer/DrawerLayout;->mScrimColor:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public setStatusBarBackground(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    return-void
.end method

.method updateDrawerState(IILandroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/customview/widget/ViewDragHelper;->B()I

    .line 6
    move-result p1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->B()I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    .line 15
    if-eq p1, v1, :cond_2

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v2, 0x2

    .line 20
    .line 21
    if-eq p1, v2, :cond_3

    .line 22
    .line 23
    if-ne v0, v2, :cond_1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 v2, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    :goto_0
    move v2, v1

    .line 28
    .line 29
    :cond_3
    :goto_1
    if-eqz p3, :cond_5

    .line 30
    .line 31
    if-nez p2, :cond_5

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    check-cast p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 38
    .line 39
    iget p1, p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->onScreen:F

    .line 40
    const/4 p2, 0x0

    .line 41
    .line 42
    cmpl-float p2, p1, p2

    .line 43
    .line 44
    if-nez p2, :cond_4

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p3}, Lcom/narvii/drawer/DrawerLayout;->dispatchOnDrawerClosed(Landroid/view/View;)V

    .line 48
    goto :goto_2

    .line 49
    .line 50
    :cond_4
    const/high16 p2, 0x3f800000    # 1.0f

    .line 51
    .line 52
    cmpl-float p1, p1, p2

    .line 53
    .line 54
    if-nez p1, :cond_5

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p3}, Lcom/narvii/drawer/DrawerLayout;->dispatchOnDrawerOpened(Landroid/view/View;)V

    .line 58
    .line 59
    :cond_5
    :goto_2
    iget p1, p0, Lcom/narvii/drawer/DrawerLayout;->mDrawerState:I

    .line 60
    .line 61
    if-eq v2, p1, :cond_6

    .line 62
    .line 63
    iput v2, p0, Lcom/narvii/drawer/DrawerLayout;->mDrawerState:I

    .line 64
    .line 65
    iget-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mListeners:Ljava/util/List;

    .line 66
    .line 67
    if-eqz p1, :cond_6

    .line 68
    .line 69
    .line 70
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 71
    move-result p1

    .line 72
    sub-int/2addr p1, v1

    .line 73
    .line 74
    :goto_3
    if-ltz p1, :cond_6

    .line 75
    .line 76
    iget-object p2, p0, Lcom/narvii/drawer/DrawerLayout;->mListeners:Ljava/util/List;

    .line 77
    .line 78
    .line 79
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    move-result-object p2

    .line 81
    .line 82
    check-cast p2, Lcom/narvii/drawer/DrawerLayout$DrawerListener;

    .line 83
    .line 84
    .line 85
    invoke-interface {p2, v2}, Lcom/narvii/drawer/DrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    .line 86
    .line 87
    add-int/lit8 p1, p1, -0x1

    .line 88
    goto :goto_3

    .line 89
    :cond_6
    return-void
.end method
