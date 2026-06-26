.class public Lcom/narvii/drawer/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "DrawerLayout.java"

# interfaces
.implements Lcom/narvii/drawer/DrawerLayoutImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/drawer/DrawerLayout$ChildAccessibilityDelegate;,
        Lcom/narvii/drawer/DrawerLayout$AccessibilityDelegate;,
        Lcom/narvii/drawer/DrawerLayout$LayoutParams;,
        Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;,
        Lcom/narvii/drawer/DrawerLayout$SavedState;,
        Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImplApi21;,
        Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImplBase;,
        Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImpl;,
        Lcom/narvii/drawer/DrawerLayout$SimpleDrawerListener;,
        Lcom/narvii/drawer/DrawerLayout$DrawerListener;,
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

.field protected final mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private mListener:Lcom/narvii/drawer/DrawerLayout$DrawerListener;
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

.field protected final mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

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
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100b3

    aput v3, v1, v2

    .line 161
    sput-object v1, Lcom/narvii/drawer/DrawerLayout;->LAYOUT_ATTRS:[I

    .line 166
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/narvii/drawer/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    .line 169
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sput-boolean v0, Lcom/narvii/drawer/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    .line 334
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_2

    .line 336
    new-instance v0, Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImplApi21;

    invoke-direct {v0}, Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImplApi21;-><init>()V

    sput-object v0, Lcom/narvii/drawer/DrawerLayout;->IMPL:Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImpl;

    goto :goto_2

    .line 338
    :cond_2
    new-instance v0, Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImplBase;

    invoke-direct {v0}, Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImplBase;-><init>()V

    sput-object v0, Lcom/narvii/drawer/DrawerLayout;->IMPL:Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImpl;

    :goto_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 345
    invoke-direct {p0, p1, v0}, Lcom/narvii/drawer/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 349
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/drawer/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 353
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 172
    new-instance p2, Lcom/narvii/drawer/DrawerLayout$ChildAccessibilityDelegate;

    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerLayout$ChildAccessibilityDelegate;-><init>(Lcom/narvii/drawer/DrawerLayout;)V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerLayout;->mChildAccessibilityDelegate:Lcom/narvii/drawer/DrawerLayout$ChildAccessibilityDelegate;

    const/high16 p2, -0x67000000

    .line 178
    iput p2, p0, Lcom/narvii/drawer/DrawerLayout;->mScrimColor:I

    .line 180
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 188
    iput-boolean p2, p0, Lcom/narvii/drawer/DrawerLayout;->mFirstLayout:Z

    const/4 p3, 0x3

    .line 190
    iput p3, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeLeft:I

    .line 191
    iput p3, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeRight:I

    .line 192
    iput p3, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeStart:I

    .line 193
    iput p3, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeEnd:I

    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    .line 216
    iput-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    .line 217
    iput-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    .line 218
    iput-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    .line 1256
    new-instance v0, Lcom/narvii/drawer/DrawerLayout$1;

    invoke-direct {v0, p0}, Lcom/narvii/drawer/DrawerLayout$1;-><init>(Lcom/narvii/drawer/DrawerLayout;)V

    iput-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->requestLayoutRunnable:Ljava/lang/Runnable;

    const/high16 v0, 0x40000

    .line 354
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 355
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42800000    # 64.0f

    mul-float v1, v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 356
    iput v1, p0, Lcom/narvii/drawer/DrawerLayout;->mMinDrawerMargin:I

    const/high16 v1, 0x43c80000    # 400.0f

    mul-float v1, v1, v0

    .line 359
    new-instance v2, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;

    invoke-direct {v2, p0, p3}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;-><init>(Lcom/narvii/drawer/DrawerLayout;I)V

    iput-object v2, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftCallback:Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;

    .line 360
    new-instance p3, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;

    const/4 v2, 0x5

    invoke-direct {p3, p0, v2}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;-><init>(Lcom/narvii/drawer/DrawerLayout;I)V

    iput-object p3, p0, Lcom/narvii/drawer/DrawerLayout;->mRightCallback:Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;

    .line 362
    iget-object p3, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftCallback:Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v2, p3}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object p3

    iput-object p3, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 363
    iget-object p3, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p3, p2}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 364
    iget-object p3, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p3, v1}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 365
    iget-object p3, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftCallback:Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;

    iget-object v3, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p3, v3}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->setDragger(Landroid/support/v4/widget/ViewDragHelper;)V

    .line 367
    iget-object p3, p0, Lcom/narvii/drawer/DrawerLayout;->mRightCallback:Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;

    invoke-static {p0, v2, p3}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object p3

    iput-object p3, p0, Lcom/narvii/drawer/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 368
    iget-object p3, p0, Lcom/narvii/drawer/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v2, 0x2

    invoke-virtual {p3, v2}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 369
    iget-object p3, p0, Lcom/narvii/drawer/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p3, v1}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 370
    iget-object p3, p0, Lcom/narvii/drawer/DrawerLayout;->mRightCallback:Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;

    iget-object v1, p0, Lcom/narvii/drawer/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p3, v1}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->setDragger(Landroid/support/v4/widget/ViewDragHelper;)V

    .line 373
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 375
    invoke-static {p0, p2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 378
    new-instance p2, Lcom/narvii/drawer/DrawerLayout$AccessibilityDelegate;

    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerLayout$AccessibilityDelegate;-><init>(Lcom/narvii/drawer/DrawerLayout;)V

    invoke-static {p0, p2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    const/4 p2, 0x0

    .line 379
    invoke-static {p0, p2}, Landroid/support/v4/view/ViewGroupCompat;->setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V

    .line 380
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 381
    sget-object p2, Lcom/narvii/drawer/DrawerLayout;->IMPL:Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImpl;

    invoke-interface {p2, p0}, Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImpl;->configureApplyInsets(Landroid/view/View;)V

    .line 382
    sget-object p2, Lcom/narvii/drawer/DrawerLayout;->IMPL:Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImpl;

    invoke-interface {p2, p1}, Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImpl;->getDefaultStatusBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    :cond_0
    const/high16 p1, 0x41200000    # 10.0f

    mul-float v0, v0, p1

    .line 385
    iput v0, p0, Lcom/narvii/drawer/DrawerLayout;->mDrawerElevation:F

    .line 387
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$300()[I
    .locals 1

    .line 81
    sget-object v0, Lcom/narvii/drawer/DrawerLayout;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 81
    sget-boolean v0, Lcom/narvii/drawer/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    return v0
.end method

.method static synthetic access$500(Lcom/narvii/drawer/DrawerLayout;)Landroid/view/View;
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Landroid/view/View;)Z
    .locals 0

    .line 81
    invoke-static {p0}, Lcom/narvii/drawer/DrawerLayout;->includeChildForAccessibility(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private findVisibleDrawer()Landroid/view/View;
    .locals 4

    .line 1843
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1845
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1846
    invoke-virtual {p0, v2}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/narvii/drawer/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static gravityToString(I)Ljava/lang/String;
    .locals 2

    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string p0, "LEFT"

    return-object p0

    :cond_0
    and-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const-string p0, "RIGHT"

    return-object p0

    .line 981
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 2

    .line 1276
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1278
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private hasPeekingDrawer()Z
    .locals 4

    .line 1769
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1771
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 1772
    iget-boolean v3, v3, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->isPeeking:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private hasVisibleDrawer()Z
    .locals 1

    .line 1839
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static includeChildForAccessibility(Landroid/view/View;)Z
    .locals 2

    .line 1978
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1980
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private mirror(Landroid/graphics/drawable/Drawable;I)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1151
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1155
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private resolveLeftShadow()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1109
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1112
    iget-object v1, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1114
    invoke-direct {p0, v1, v0}, Lcom/narvii/drawer/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1115
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 1118
    :cond_0
    iget-object v1, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1120
    invoke-direct {p0, v1, v0}, Lcom/narvii/drawer/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1121
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 1124
    :cond_1
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private resolveRightShadow()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1128
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1130
    iget-object v1, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1132
    invoke-direct {p0, v1, v0}, Lcom/narvii/drawer/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1133
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 1136
    :cond_0
    iget-object v1, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1138
    invoke-direct {p0, v1, v0}, Lcom/narvii/drawer/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1139
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 1142
    :cond_1
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private resolveShadowDrawables()V
    .locals 1

    .line 1101
    sget-boolean v0, Lcom/narvii/drawer/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_0

    return-void

    .line 1104
    :cond_0
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerLayout;->resolveLeftShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    .line 1105
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerLayout;->resolveRightShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private updateChildrenImportantForAccessibility(Landroid/view/View;Z)V
    .locals 4

    .line 869
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 871
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez p2, :cond_0

    .line 872
    invoke-virtual {p0, v2}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    if-ne v2, p1, :cond_2

    :cond_1
    const/4 v3, 0x1

    .line 876
    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x4

    .line 879
    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public addDrawerListener(Lcom/narvii/drawer/DrawerLayout$DrawerListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mListeners:Ljava/util/List;

    if-nez v0, :cond_1

    .line 535
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mListeners:Ljava/util/List;

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    .line 1805
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    return-void

    .line 1811
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1814
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1815
    invoke-virtual {p0, v4}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1816
    invoke-virtual {p0, v4}, Lcom/narvii/drawer/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1818
    invoke-virtual {v4, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    const/4 v3, 0x1

    goto :goto_1

    .line 1821
    :cond_1
    iget-object v5, p0, Lcom/narvii/drawer/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_5

    .line 1826
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_5

    .line 1828
    iget-object v2, p0, Lcom/narvii/drawer/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1829
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 1830
    invoke-virtual {v2, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1835
    :cond_5
    iget-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1950
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1952
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    .line 1953
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 1961
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x4

    .line 1956
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1967
    :goto_1
    sget-boolean p2, Lcom/narvii/drawer/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    if-nez p2, :cond_2

    .line 1968
    iget-object p2, p0, Lcom/narvii/drawer/DrawerLayout;->mChildAccessibilityDelegate:Lcom/narvii/drawer/DrawerLayout$ChildAccessibilityDelegate;

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    :cond_2
    return-void
.end method

.method cancelChildViewTouch()V
    .locals 9

    .line 1855
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerLayout;->mChildrenCanceledTouch:Z

    if-nez v0, :cond_1

    .line 1856
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    .line 1857
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1859
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1861
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1863
    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x1

    .line 1864
    iput-boolean v0, p0, Lcom/narvii/drawer/DrawerLayout;->mChildrenCanceledTouch:Z

    :cond_1
    return-void
.end method

.method checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
    .locals 0

    .line 920
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result p1

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1795
    instance-of v0, p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public closeDrawer(I)V
    .locals 3

    .line 1669
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1674
    invoke-virtual {p0, v0}, Lcom/narvii/drawer/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    return-void

    .line 1671
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No drawer view found with gravity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
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

    .line 1640
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1644
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 1645
    iget-boolean v1, p0, Lcom/narvii/drawer/DrawerLayout;->mFirstLayout:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 1646
    iput p1, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->onScreen:F

    const/4 p1, 0x0

    .line 1647
    iput p1, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    goto :goto_0

    .line 1649
    :cond_0
    iget v1, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    const/4 v0, 0x3

    .line 1651
    invoke-virtual {p0, p1, v0}, Lcom/narvii/drawer/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1652
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    .line 1653
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1652
    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1655
    :cond_1
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 1659
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerLayout;->requestLayout()V

    return-void

    .line 1641
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

    .line 1554
    invoke-virtual {p0, v0}, Lcom/narvii/drawer/DrawerLayout;->closeDrawers(Z)V

    return-void
.end method

.method closeDrawers(Z)V
    .locals 9

    .line 1559
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1561
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1562
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 1564
    invoke-virtual {p0, v4}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz p1, :cond_0

    iget-boolean v6, v5, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->isPeeking:Z

    if-nez v6, :cond_0

    goto :goto_2

    .line 1568
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    const/4 v7, 0x3

    .line 1570
    invoke-virtual {p0, v4, v7}, Lcom/narvii/drawer/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1571
    iget-object v7, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    neg-int v6, v6

    .line 1572
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1571
    invoke-virtual {v7, v4, v6, v8}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v4

    goto :goto_1

    .line 1574
    :cond_1
    iget-object v6, p0, Lcom/narvii/drawer/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 1575
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1574
    invoke-virtual {v6, v4, v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v4

    :goto_1
    or-int/2addr v3, v4

    .line 1578
    iput-boolean v1, v5, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->isPeeking:Z

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1581
    :cond_3
    iget-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftCallback:Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;

    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1582
    iget-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mRightCallback:Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;

    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    if-eqz v3, :cond_4

    .line 1585
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerLayout;->requestLayout()V

    :cond_4
    return-void
.end method

.method dispatchOnDrawerClosed(Landroid/view/View;)V
    .locals 3

    .line 817
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 818
    iget v1, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 819
    iput v1, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    .line 821
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 824
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_0

    .line 826
    iget-object v2, p0, Lcom/narvii/drawer/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/drawer/DrawerLayout$DrawerListener;

    invoke-interface {v2, p1}, Lcom/narvii/drawer/DrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 830
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/narvii/drawer/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 835
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 836
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 v0, 0x20

    .line 838
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method

.method dispatchOnDrawerOpened(Landroid/view/View;)V
    .locals 3

    .line 845
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 846
    iget v1, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_2

    .line 847
    iput v2, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    .line 848
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 851
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_0

    .line 853
    iget-object v1, p0, Lcom/narvii/drawer/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/drawer/DrawerLayout$DrawerListener;

    invoke-interface {v1, p1}, Lcom/narvii/drawer/DrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 857
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/narvii/drawer/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 860
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    .line 861
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 864
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_2
    return-void
.end method

.method dispatchOnDrawerSlide(Landroid/view/View;F)V
    .locals 2

    .line 886
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 889
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 891
    iget-object v1, p0, Lcom/narvii/drawer/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/drawer/DrawerLayout$DrawerListener;

    invoke-interface {v1, p1, p2}, Lcom/narvii/drawer/DrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 11

    .line 1344
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 1346
    invoke-virtual {p0, p2}, Lcom/narvii/drawer/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const v1, 0x1020002

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1347
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    .line 1349
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    const/4 v5, 0x3

    if-eqz v1, :cond_5

    .line 1351
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v8, v3

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v3, v6, :cond_4

    .line 1353
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eq v9, p2, :cond_3

    .line 1354
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_3

    .line 1355
    invoke-static {v9}, Lcom/narvii/drawer/DrawerLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p0, v9}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1356
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v10

    if-ge v10, v0, :cond_1

    goto :goto_2

    .line 1360
    :cond_1
    invoke-virtual {p0, v9, v5}, Lcom/narvii/drawer/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1361
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    if-le v9, v7, :cond_3

    move v7, v9

    goto :goto_2

    .line 1364
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    if-ge v9, v8, :cond_3

    move v8, v9

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1368
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p1, v7, v2, v8, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move v2, v7

    move v3, v8

    .line 1370
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 1371
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1373
    iget p4, p0, Lcom/narvii/drawer/DrawerLayout;->mScrimOpacity:F

    const/4 v0, 0x0

    cmpl-float v4, p4, v0

    if-lez v4, :cond_6

    if-eqz v1, :cond_6

    .line 1374
    iget p2, p0, Lcom/narvii/drawer/DrawerLayout;->mScrimColor:I

    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    ushr-int/lit8 v0, v0, 0x18

    int-to-float v0, v0

    mul-float v0, v0, p4

    float-to-int p4, v0

    shl-int/lit8 p4, p4, 0x18

    const v0, 0xffffff

    and-int/2addr p2, v0

    or-int/2addr p2, p4

    .line 1377
    iget-object p4, p0, Lcom/narvii/drawer/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v5, v2

    const/4 v6, 0x0

    int-to-float v7, v3

    .line 1379
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    int-to-float v8, p2

    iget-object v9, p0, Lcom/narvii/drawer/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 1380
    :cond_6
    iget-object p4, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p4, :cond_7

    .line 1381
    invoke-virtual {p0, p2, v5}, Lcom/narvii/drawer/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result p4

    if-eqz p4, :cond_7

    .line 1382
    iget-object p4, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    .line 1383
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1384
    iget-object v4, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v4}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    move-result v4

    int-to-float v5, v3

    int-to-float v4, v4

    div-float/2addr v5, v4

    .line 1386
    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1387
    iget-object v2, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr p4, v3

    .line 1388
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    .line 1387
    invoke-virtual {v2, v3, v4, p4, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1389
    iget-object p2, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    mul-float v0, v0, v1

    float-to-int p4, v0

    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1390
    iget-object p2, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 1391
    :cond_7
    iget-object p4, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    if-eqz p4, :cond_8

    const/4 p4, 0x5

    .line 1392
    invoke-virtual {p0, p2, p4}, Lcom/narvii/drawer/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result p4

    if-eqz p4, :cond_8

    .line 1393
    iget-object p4, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    .line 1394
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1395
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    .line 1396
    iget-object v5, p0, Lcom/narvii/drawer/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v5}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    move-result v5

    int-to-float v4, v4

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 1398
    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1399
    iget-object v2, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    sub-int p4, v3, p4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1400
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    .line 1399
    invoke-virtual {v2, p4, v4, v3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1401
    iget-object p2, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    mul-float v0, v0, v1

    float-to-int p4, v0

    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1402
    iget-object p2, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_8
    :goto_3
    return p3
.end method

.method findDrawerWithGravity(I)Landroid/view/View;
    .locals 4

    .line 956
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 955
    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    .line 957
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 959
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 960
    invoke-virtual {p0, v2}, Lcom/narvii/drawer/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method findOpenDrawer()Landroid/view/View;
    .locals 5

    .line 925
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 927
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 928
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 929
    iget v3, v3, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1781
    new-instance v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/narvii/drawer/DrawerLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1800
    new-instance v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/narvii/drawer/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1786
    instance-of v0, p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    check-cast p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/narvii/drawer/DrawerLayout$LayoutParams;-><init>(Lcom/narvii/drawer/DrawerLayout$LayoutParams;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/narvii/drawer/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/narvii/drawer/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0
.end method

.method public getDrawerElevation()F
    .locals 1

    .line 414
    sget-boolean v0, Lcom/narvii/drawer/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_0

    .line 415
    iget v0, p0, Lcom/narvii/drawer/DrawerLayout;->mDrawerElevation:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDrawerLockMode(I)I
    .locals 3

    .line 672
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

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

    .line 706
    :cond_0
    iget p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeEnd:I

    if-eq p1, v1, :cond_1

    return p1

    :cond_1
    if-nez v0, :cond_2

    .line 709
    iget p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeRight:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeLeft:I

    :goto_0
    if-eq p1, v1, :cond_c

    return p1

    .line 696
    :cond_3
    iget p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeStart:I

    if-eq p1, v1, :cond_4

    return p1

    :cond_4
    if-nez v0, :cond_5

    .line 699
    iget p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeLeft:I

    goto :goto_1

    :cond_5
    iget p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeRight:I

    :goto_1
    if-eq p1, v1, :cond_c

    return p1

    .line 686
    :cond_6
    iget p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeRight:I

    if-eq p1, v1, :cond_7

    return p1

    :cond_7
    if-nez v0, :cond_8

    .line 689
    iget p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeEnd:I

    goto :goto_2

    :cond_8
    iget p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeStart:I

    :goto_2
    if-eq p1, v1, :cond_c

    return p1

    .line 676
    :cond_9
    iget p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeLeft:I

    if-eq p1, v1, :cond_a

    return p1

    :cond_a
    if-nez v0, :cond_b

    .line 679
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

    .line 729
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    iget p1, p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->gravity:I

    .line 733
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->getDrawerLockMode(I)I

    move-result p1

    return p1

    .line 730
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

    .line 767
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 766
    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 769
    iget-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    return-object p1

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 771
    iget-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method getDrawerViewAbsoluteGravity(Landroid/view/View;)I
    .locals 1

    .line 915
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    iget p1, p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->gravity:I

    .line 916
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p1

    return p1
.end method

.method getDrawerViewOffset(Landroid/view/View;)F
    .locals 0

    .line 907
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    iget p1, p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->onScreen:F

    return p1
.end method

.method public getStatusBarBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1300
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method isContentView(Landroid/view/View;)Z
    .locals 0

    .line 1408
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    iget p1, p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->gravity:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isDrawerOpen(I)Z
    .locals 0

    .line 1730
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1732
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isDrawerOpen(Landroid/view/View;)Z
    .locals 3

    .line 1713
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1716
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 1717
    iget p1, p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1714
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

    .line 1412
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    iget v0, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->gravity:I

    .line 1414
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    .line 1413
    invoke-static {v0, p1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p1

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 p1, p1, 0x5

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isDrawerVisible(I)Z
    .locals 0

    .line 1761
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1763
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isDrawerVisible(Landroid/view/View;)Z
    .locals 3

    .line 1746
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1749
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

    .line 1747
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

    .line 937
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result v0

    .line 938
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    mul-float v1, v1, p2

    float-to-int v1, v1

    sub-int/2addr v1, v0

    const/4 v0, 0x3

    .line 944
    invoke-virtual {p0, p1, v0}, Lcom/narvii/drawer/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    neg-int v1, v1

    .line 943
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 945
    invoke-virtual {p0, p1, p2}, Lcom/narvii/drawer/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 992
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 993
    iput-boolean v0, p0, Lcom/narvii/drawer/DrawerLayout;->mFirstLayout:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 986
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    .line 987
    iput-boolean v0, p0, Lcom/narvii/drawer/DrawerLayout;->mFirstLayout:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1332
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1333
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerLayout;->mDrawStatusBarBackground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1334
    sget-object v0, Lcom/narvii/drawer/DrawerLayout;->IMPL:Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImpl;

    iget-object v1, p0, Lcom/narvii/drawer/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImpl;->getTopInset(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1336
    iget-object v1, p0, Lcom/narvii/drawer/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1337
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1431
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1434
    iget-object v1, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    iget-object v2, p0, Lcom/narvii/drawer/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 1435
    invoke-virtual {v2, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_1

    const/4 p1, 0x2

    const/4 v4, 0x3

    if-eq v0, p1, :cond_0

    if-eq v0, v4, :cond_1

    goto :goto_0

    .line 1460
    :cond_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1, v4}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1461
    iget-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftCallback:Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;

    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1462
    iget-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mRightCallback:Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;

    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    goto :goto_0

    .line 1469
    :cond_1
    invoke-virtual {p0, v2}, Lcom/narvii/drawer/DrawerLayout;->closeDrawers(Z)V

    .line 1470
    iput-boolean v3, p0, Lcom/narvii/drawer/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1471
    sput-boolean v3, Lcom/narvii/drawer/DrawerLayout;->disallowIntercept:Z

    .line 1472
    iput-boolean v3, p0, Lcom/narvii/drawer/DrawerLayout;->mChildrenCanceledTouch:Z

    :cond_2
    :goto_0
    const/4 p1, 0x0

    goto :goto_2

    .line 1442
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1443
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1444
    iput v0, p0, Lcom/narvii/drawer/DrawerLayout;->mInitialMotionX:F

    .line 1445
    iput p1, p0, Lcom/narvii/drawer/DrawerLayout;->mInitialMotionY:F

    .line 1446
    iget v1, p0, Lcom/narvii/drawer/DrawerLayout;->mScrimOpacity:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-lez v1, :cond_4

    .line 1447
    iget-object v1, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    float-to-int v0, v0

    float-to-int p1, p1

    invoke-virtual {v1, v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1448
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 1452
    :goto_1
    iput-boolean v3, p0, Lcom/narvii/drawer/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1453
    sput-boolean v3, Lcom/narvii/drawer/DrawerLayout;->disallowIntercept:Z

    .line 1454
    iput-boolean v3, p0, Lcom/narvii/drawer/DrawerLayout;->mChildrenCanceledTouch:Z

    const/4 v1, 0x0

    .line 1476
    :goto_2
    sget-boolean v0, Lcom/narvii/drawer/DrawerLayout;->disallowIntercept:Z

    if-eqz v0, :cond_5

    return v3

    :cond_5
    if-nez v1, :cond_7

    if-nez p1, :cond_7

    .line 1479
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerLayout;->hasPeekingDrawer()Z

    move-result p1

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/narvii/drawer/DrawerLayout;->mChildrenCanceledTouch:Z

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :cond_7
    :goto_3
    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1870
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerLayout;->hasVisibleDrawer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1873
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1879
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1880
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_0

    .line 1881
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerLayout;->closeDrawers()V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 1885
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 1161
    iput-boolean v1, v0, Lcom/narvii/drawer/DrawerLayout;->mInLayout:Z

    .line 1163
    iget-object v2, v0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v2

    iget-object v3, v0, Lcom/narvii/drawer/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v3

    or-int/2addr v2, v3

    .line 1165
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v3, :cond_0

    .line 1168
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    iget v8, v8, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->onScreen:F

    .line 1169
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1171
    :cond_0
    iput v7, v0, Lcom/narvii/drawer/DrawerLayout;->mScrimOpacity:F

    sub-int v6, p4, p2

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v3, :cond_c

    .line 1175
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1177
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_1

    :goto_2
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 1181
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 1183
    invoke-virtual {v0, v8}, Lcom/narvii/drawer/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1184
    iget v10, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v11, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v12, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1185
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v12, v13

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1186
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v9, v13

    .line 1184
    invoke-virtual {v8, v10, v11, v12, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 1188
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 1189
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    const/4 v12, 0x3

    .line 1193
    invoke-virtual {v0, v8, v12}, Lcom/narvii/drawer/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v12

    if-eqz v12, :cond_3

    neg-int v12, v10

    int-to-float v13, v10

    .line 1194
    iget v14, v9, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->onScreen:F

    mul-float v14, v14, v13

    float-to-int v14, v14

    add-int/2addr v12, v14

    add-int v14, v10, v12

    int-to-float v14, v14

    div-float/2addr v14, v13

    goto :goto_3

    :cond_3
    int-to-float v12, v10

    .line 1197
    iget v13, v9, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->onScreen:F

    mul-float v13, v13, v12

    float-to-int v13, v13

    sub-int v13, v6, v13

    sub-int v14, v6, v13

    int-to-float v14, v14

    div-float/2addr v14, v12

    move v12, v13

    .line 1201
    :goto_3
    iget v13, v9, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->onScreen:F

    cmpl-float v13, v14, v13

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    goto :goto_4

    :cond_4
    const/4 v13, 0x0

    .line 1203
    :goto_4
    iget v15, v9, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->gravity:I

    and-int/lit8 v15, v15, 0x70

    const/16 v1, 0x10

    if-eq v15, v1, :cond_6

    const/16 v1, 0x50

    if-eq v15, v1, :cond_5

    .line 1208
    iget v1, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v12

    iget v15, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v15, v11

    invoke-virtual {v8, v12, v1, v10, v15}, Landroid/view/View;->layout(IIII)V

    goto :goto_6

    :cond_5
    sub-int v1, p5, p3

    .line 1215
    iget v11, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v11, v1, v11

    .line 1216
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v11, v15

    add-int/2addr v10, v12

    iget v15, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v1, v15

    .line 1215
    invoke-virtual {v8, v12, v11, v10, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_6

    :cond_6
    sub-int v1, p5, p3

    sub-int v15, v1, v11

    .line 1224
    div-int/lit8 v15, v15, 0x2

    .line 1228
    iget v5, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-ge v15, v5, :cond_7

    .line 1229
    iget v15, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_5

    :cond_7
    add-int v5, v15, v11

    .line 1230
    iget v4, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v4, v1, v4

    if-le v5, v4, :cond_8

    .line 1231
    iget v4, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v1, v4

    sub-int v15, v1, v11

    :cond_8
    :goto_5
    add-int/2addr v10, v12

    add-int/2addr v11, v15

    .line 1233
    invoke-virtual {v8, v12, v15, v10, v11}, Landroid/view/View;->layout(IIII)V

    :goto_6
    if-eqz v13, :cond_9

    .line 1240
    invoke-virtual {v0, v8, v14}, Lcom/narvii/drawer/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 1243
    :cond_9
    iget v1, v9, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-lez v1, :cond_a

    const/4 v5, 0x0

    goto :goto_7

    :cond_a
    const/4 v5, 0x4

    .line 1244
    :goto_7
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v5, :cond_b

    .line 1245
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    :goto_8
    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_c
    const/4 v1, 0x0

    .line 1249
    iput-boolean v1, v0, Lcom/narvii/drawer/DrawerLayout;->mInLayout:Z

    .line 1250
    iput-boolean v1, v0, Lcom/narvii/drawer/DrawerLayout;->mFirstLayout:Z

    if-eqz v2, :cond_d

    .line 1252
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/drawer/DrawerLayout;->postRequestLayout()V

    :cond_d
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    .line 998
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 999
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1000
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 1001
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    const/16 v5, 0x12c

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v1, v6, :cond_0

    if-eq v2, v6, :cond_4

    .line 1004
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_12

    const/high16 v7, -0x80000000

    if-ne v1, v7, :cond_1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/16 v3, 0x12c

    :cond_2
    :goto_0
    if-ne v2, v7, :cond_3

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    const/16 v4, 0x12c

    .line 1028
    :cond_4
    :goto_1
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 1030
    iget-object v1, v0, Lcom/narvii/drawer/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    if-eqz v1, :cond_5

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 1031
    :goto_2
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v7

    .line 1037
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_3
    if-ge v9, v8, :cond_11

    .line 1039
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1041
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_6

    goto :goto_5

    .line 1045
    :cond_6
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    if-eqz v1, :cond_8

    .line 1048
    iget v14, v13, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->gravity:I

    invoke-static {v14, v7}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v14

    .line 1049
    invoke-static {v12}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1050
    sget-object v15, Lcom/narvii/drawer/DrawerLayout;->IMPL:Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImpl;

    iget-object v2, v0, Lcom/narvii/drawer/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    invoke-interface {v15, v12, v2, v14}, Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImpl;->dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V

    goto :goto_4

    .line 1052
    :cond_7
    sget-object v2, Lcom/narvii/drawer/DrawerLayout;->IMPL:Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImpl;

    iget-object v15, v0, Lcom/narvii/drawer/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    invoke-interface {v2, v13, v15, v14}, Lcom/narvii/drawer/DrawerLayout$DrawerLayoutCompatImpl;->applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V

    .line 1056
    :cond_8
    :goto_4
    invoke-virtual {v0, v12}, Lcom/narvii/drawer/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1058
    iget v2, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int v2, v3, v2

    iget v14, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v14

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1060
    iget v14, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int v14, v4, v14

    iget v13, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v14, v13

    invoke-static {v14, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1062
    invoke-virtual {v12, v2, v13}, Landroid/view/View;->measure(II)V

    :goto_5
    move/from16 v15, p1

    move/from16 v13, p2

    goto/16 :goto_9

    .line 1063
    :cond_9
    invoke-virtual {v0, v12}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1064
    sget-boolean v2, Lcom/narvii/drawer/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v2, :cond_a

    .line 1065
    invoke-static {v12}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v2

    iget v14, v0, Lcom/narvii/drawer/DrawerLayout;->mDrawerElevation:F

    cmpl-float v2, v2, v14

    if-eqz v2, :cond_a

    .line 1066
    invoke-static {v12, v14}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 1070
    :cond_a
    invoke-virtual {v0, v12}, Lcom/narvii/drawer/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    const/4 v14, 0x3

    if-ne v2, v14, :cond_b

    const/4 v14, 0x1

    goto :goto_6

    :cond_b
    const/4 v14, 0x0

    :goto_6
    if-eqz v14, :cond_c

    if-nez v10, :cond_d

    :cond_c
    if-nez v14, :cond_e

    if-nez v11, :cond_d

    goto :goto_7

    .line 1076
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Child drawer has absolute gravity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    invoke-static {v2}, Lcom/narvii/drawer/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but this "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DrawerLayout"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already has a drawer view along that edge"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    :goto_7
    if-eqz v14, :cond_f

    const/4 v10, 0x1

    goto :goto_8

    :cond_f
    const/4 v11, 0x1

    .line 1085
    :goto_8
    iget v2, v0, Lcom/narvii/drawer/DrawerLayout;->mMinDrawerMargin:I

    iget v14, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v14

    iget v14, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v14

    iget v14, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v15, p1

    invoke-static {v15, v2, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 1088
    iget v14, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v5, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v14, v5

    iget v5, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v13, p2

    invoke-static {v13, v14, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 1091
    invoke-virtual {v12, v2, v5}, Landroid/view/View;->measure(II)V

    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 1093
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Child "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    return-void

    .line 1023
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :goto_a
    throw v1

    :goto_b
    goto :goto_a
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1890
    instance-of v0, p1, Lcom/narvii/drawer/DrawerLayout$SavedState;

    if-nez v0, :cond_0

    .line 1891
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1895
    :cond_0
    check-cast p1, Lcom/narvii/drawer/DrawerLayout$SavedState;

    .line 1896
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1898
    iget v0, p1, Lcom/narvii/drawer/DrawerLayout$SavedState;->openDrawerGravity:I

    if-eqz v0, :cond_1

    .line 1899
    invoke-virtual {p0, v0}, Lcom/narvii/drawer/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1901
    invoke-virtual {p0, v0}, Lcom/narvii/drawer/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 1905
    :cond_1
    iget v0, p1, Lcom/narvii/drawer/DrawerLayout$SavedState;->lockModeLeft:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 1906
    invoke-virtual {p0, v0, v1}, Lcom/narvii/drawer/DrawerLayout;->setDrawerLockMode(II)V

    .line 1908
    :cond_2
    iget v0, p1, Lcom/narvii/drawer/DrawerLayout$SavedState;->lockModeRight:I

    if-eq v0, v1, :cond_3

    const/4 v2, 0x5

    .line 1909
    invoke-virtual {p0, v0, v2}, Lcom/narvii/drawer/DrawerLayout;->setDrawerLockMode(II)V

    .line 1911
    :cond_3
    iget v0, p1, Lcom/narvii/drawer/DrawerLayout$SavedState;->lockModeStart:I

    if-eq v0, v1, :cond_4

    const v2, 0x800003

    .line 1912
    invoke-virtual {p0, v0, v2}, Lcom/narvii/drawer/DrawerLayout;->setDrawerLockMode(II)V

    .line 1914
    :cond_4
    iget p1, p1, Lcom/narvii/drawer/DrawerLayout$SavedState;->lockModeEnd:I

    if-eq p1, v1, :cond_5

    const v0, 0x800005

    .line 1915
    invoke-virtual {p0, p1, v0}, Lcom/narvii/drawer/DrawerLayout;->setDrawerLockMode(II)V

    :cond_5
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 1327
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerLayout;->resolveShadowDrawables()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 9

    .line 1921
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1922
    new-instance v1, Lcom/narvii/drawer/DrawerLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/narvii/drawer/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1924
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    .line 1926
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1927
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 1929
    iget v5, v4, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 1931
    :goto_1
    iget v7, v4, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-nez v5, :cond_3

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1935
    :cond_3
    :goto_3
    iget v0, v4, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->gravity:I

    iput v0, v1, Lcom/narvii/drawer/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 1940
    :cond_4
    iget v0, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeLeft:I

    iput v0, v1, Lcom/narvii/drawer/DrawerLayout$SavedState;->lockModeLeft:I

    .line 1941
    iget v0, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeRight:I

    iput v0, v1, Lcom/narvii/drawer/DrawerLayout$SavedState;->lockModeRight:I

    .line 1942
    iget v0, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeStart:I

    iput v0, v1, Lcom/narvii/drawer/DrawerLayout$SavedState;->lockModeStart:I

    .line 1943
    iget v0, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeEnd:I

    iput v0, v1, Lcom/narvii/drawer/DrawerLayout$SavedState;->lockModeEnd:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1484
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1485
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1487
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_2

    .line 1526
    :cond_0
    invoke-virtual {p0, v1}, Lcom/narvii/drawer/DrawerLayout;->closeDrawers(Z)V

    .line 1527
    iput-boolean v2, p0, Lcom/narvii/drawer/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1528
    sput-boolean v2, Lcom/narvii/drawer/DrawerLayout;->disallowIntercept:Z

    .line 1529
    iput-boolean v2, p0, Lcom/narvii/drawer/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_2

    .line 1503
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1504
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1506
    iget-object v3, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    float-to-int v4, v0

    float-to-int v5, p1

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1507
    invoke-virtual {p0, v3}, Lcom/narvii/drawer/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1508
    iget v3, p0, Lcom/narvii/drawer/DrawerLayout;->mInitialMotionX:F

    sub-float/2addr v0, v3

    .line 1509
    iget v3, p0, Lcom/narvii/drawer/DrawerLayout;->mInitialMotionY:F

    sub-float/2addr p1, v3

    .line 1510
    iget-object v3, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v3

    mul-float v0, v0, v0

    mul-float p1, p1, p1

    add-float/2addr v0, p1

    mul-int v3, v3, v3

    int-to-float p1, v3

    cmpg-float p1, v0, p1

    if-gez p1, :cond_3

    .line 1513
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1515
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 1519
    :goto_1
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->closeDrawers(Z)V

    .line 1520
    iput-boolean v2, p0, Lcom/narvii/drawer/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1521
    sput-boolean v2, Lcom/narvii/drawer/DrawerLayout;->disallowIntercept:Z

    goto :goto_2

    .line 1492
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1493
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1494
    iput v0, p0, Lcom/narvii/drawer/DrawerLayout;->mInitialMotionX:F

    .line 1495
    iput p1, p0, Lcom/narvii/drawer/DrawerLayout;->mInitialMotionY:F

    .line 1496
    iput-boolean v2, p0, Lcom/narvii/drawer/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1497
    sput-boolean v2, Lcom/narvii/drawer/DrawerLayout;->disallowIntercept:Z

    .line 1498
    iput-boolean v2, p0, Lcom/narvii/drawer/DrawerLayout;->mChildrenCanceledTouch:Z

    :goto_2
    return v1
.end method

.method public openDrawer(I)V
    .locals 3

    .line 1626
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1631
    invoke-virtual {p0, v0}, Lcom/narvii/drawer/DrawerLayout;->openDrawer(Landroid/view/View;)V

    return-void

    .line 1628
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No drawer view found with gravity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1629
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

    .line 1595
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1599
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 1600
    iget-boolean v1, p0, Lcom/narvii/drawer/DrawerLayout;->mFirstLayout:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1601
    iput v1, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v1, 0x1

    .line 1602
    iput v1, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    .line 1604
    invoke-direct {p0, p1, v1}, Lcom/narvii/drawer/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    goto :goto_0

    .line 1606
    :cond_0
    iget v1, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    const/4 v0, 0x3

    .line 1608
    invoke-virtual {p0, p1, v0}, Lcom/narvii/drawer/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1609
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1611
    :cond_1
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1612
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1611
    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 1616
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerLayout;->requestLayout()V

    return-void

    .line 1596
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

    .line 1694
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .line 1699
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/drawer/DrawerLayout;->peekDrawer(Landroid/view/View;JJ)V

    return-void

    .line 1696
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No drawer view found with gravity "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1697
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

    .line 1678
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1682
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 1683
    iget v1, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    if-nez v1, :cond_2

    iget-boolean v0, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->isPeeking:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 1685
    invoke-virtual {p0, p1, v0}, Lcom/narvii/drawer/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1686
    iget-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftCallback:Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->access$000(Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;JJ)V

    goto :goto_0

    .line 1688
    :cond_1
    iget-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mRightCallback:Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->access$000(Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;JJ)V

    :cond_2
    :goto_0
    return-void

    .line 1679
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

    .line 1264
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->requestLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1265
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->requestLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeDrawerListener(Lcom/narvii/drawer/DrawerLayout$DrawerListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mListeners:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    .line 555
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 1542
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1544
    iput-boolean p1, p0, Lcom/narvii/drawer/DrawerLayout;->mDisallowInterceptRequested:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1546
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->closeDrawers(Z)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1270
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerLayout;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1271
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setChildInsets(Ljava/lang/Object;Z)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    .line 427
    iput-boolean p2, p0, Lcom/narvii/drawer/DrawerLayout;->mDrawStatusBarBackground:Z

    if-nez p2, :cond_0

    .line 428
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 429
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerLayout;->requestLayout()V

    return-void
.end method

.method public setDrawerElevation(F)V
    .locals 2

    .line 397
    iput p1, p0, Lcom/narvii/drawer/DrawerLayout;->mDrawerElevation:F

    const/4 p1, 0x0

    .line 398
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 399
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 400
    invoke-virtual {p0, v0}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    iget v1, p0, Lcom/narvii/drawer/DrawerLayout;->mDrawerElevation:F

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDrawerListener(Lcom/narvii/drawer/DrawerLayout$DrawerListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 513
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mListener:Lcom/narvii/drawer/DrawerLayout$DrawerListener;

    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {p0, v0}, Lcom/narvii/drawer/DrawerLayout;->removeDrawerListener(Lcom/narvii/drawer/DrawerLayout$DrawerListener;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 517
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->addDrawerListener(Lcom/narvii/drawer/DrawerLayout$DrawerListener;)V

    .line 521
    :cond_1
    iput-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mListener:Lcom/narvii/drawer/DrawerLayout$DrawerListener;

    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 1

    const/4 v0, 0x3

    .line 572
    invoke-virtual {p0, p1, v0}, Lcom/narvii/drawer/DrawerLayout;->setDrawerLockMode(II)V

    const/4 v0, 0x5

    .line 573
    invoke-virtual {p0, p1, v0}, Lcom/narvii/drawer/DrawerLayout;->setDrawerLockMode(II)V

    return-void
.end method

.method public setDrawerLockMode(II)V
    .locals 3

    .line 597
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 596
    invoke-static {p2, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

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

    .line 610
    :cond_0
    iput p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeEnd:I

    goto :goto_0

    .line 607
    :cond_1
    iput p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeStart:I

    goto :goto_0

    .line 604
    :cond_2
    iput p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeRight:I

    goto :goto_0

    .line 601
    :cond_3
    iput p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLockModeLeft:I

    :goto_0
    if-eqz p1, :cond_5

    if-ne v0, v1, :cond_4

    .line 616
    iget-object p2, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/narvii/drawer/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 617
    :goto_1
    invoke-virtual {p2}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    :cond_5
    const/4 p2, 0x1

    if-eq p1, p2, :cond_7

    const/4 p2, 0x2

    if-eq p1, p2, :cond_6

    goto :goto_2

    .line 621
    :cond_6
    invoke-virtual {p0, v0}, Lcom/narvii/drawer/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 623
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_2

    .line 627
    :cond_7
    invoke-virtual {p0, v0}, Lcom/narvii/drawer/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 629
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public setDrawerLockMode(ILandroid/view/View;)V
    .locals 2

    .line 655
    invoke-virtual {p0, p2}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    iget p2, p2, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->gravity:I

    .line 660
    invoke-virtual {p0, p1, p2}, Lcom/narvii/drawer/DrawerLayout;->setDrawerLockMode(II)V

    return-void

    .line 656
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

    .line 486
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/narvii/drawer/DrawerLayout;->setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    .line 452
    sget-boolean v0, Lcom/narvii/drawer/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x800003

    and-int v1, p2, v0

    if-ne v1, v0, :cond_1

    .line 457
    iput-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    const v0, 0x800005

    and-int v1, p2, v0

    if-ne v1, v0, :cond_2

    .line 459
    iput-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 461
    iput-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_4

    .line 463
    iput-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    .line 467
    :goto_0
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerLayout;->resolveShadowDrawables()V

    .line 468
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_4
    return-void
.end method

.method public setDrawerTitle(ILjava/lang/CharSequence;)V
    .locals 1

    .line 748
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 747
    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 750
    iput-object p2, p0, Lcom/narvii/drawer/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 752
    iput-object p2, p0, Lcom/narvii/drawer/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    :cond_1
    :goto_0
    return-void
.end method

.method setDrawerViewOffset(Landroid/view/View;F)V
    .locals 2

    .line 897
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 898
    iget v1, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->onScreen:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    return-void

    .line 902
    :cond_0
    iput p2, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->onScreen:F

    .line 903
    invoke-virtual {p0, p1, p2}, Lcom/narvii/drawer/DrawerLayout;->dispatchOnDrawerSlide(Landroid/view/View;F)V

    return-void
.end method

.method public setScrimColor(I)V
    .locals 0

    .line 495
    iput p1, p0, Lcom/narvii/drawer/DrawerLayout;->mScrimColor:I

    .line 496
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setStatusBarBackground(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1310
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1311
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1290
    iput-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1291
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1

    .line 1322
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1323
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method updateDrawerState(IILandroid/view/View;)V
    .locals 3

    .line 781
    iget-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result p1

    .line 782
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eq p1, v1, :cond_3

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :cond_3
    :goto_1
    if-eqz p3, :cond_5

    if-nez p2, :cond_5

    .line 794
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 795
    iget p1, p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->onScreen:F

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-nez p2, :cond_4

    .line 796
    invoke-virtual {p0, p3}, Lcom/narvii/drawer/DrawerLayout;->dispatchOnDrawerClosed(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_5

    .line 798
    invoke-virtual {p0, p3}, Lcom/narvii/drawer/DrawerLayout;->dispatchOnDrawerOpened(Landroid/view/View;)V

    .line 802
    :cond_5
    :goto_2
    iget p1, p0, Lcom/narvii/drawer/DrawerLayout;->mDrawerState:I

    if-eq v1, p1, :cond_6

    .line 803
    iput v1, p0, Lcom/narvii/drawer/DrawerLayout;->mDrawerState:I

    .line 805
    iget-object p1, p0, Lcom/narvii/drawer/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz p1, :cond_6

    .line 808
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_3
    if-ltz p1, :cond_6

    .line 810
    iget-object p2, p0, Lcom/narvii/drawer/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/drawer/DrawerLayout$DrawerListener;

    invoke-interface {p2, v1}, Lcom/narvii/drawer/DrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_6
    return-void
.end method
