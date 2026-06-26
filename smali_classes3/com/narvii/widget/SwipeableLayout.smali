.class public Lcom/narvii/widget/SwipeableLayout;
.super Landroid/widget/FrameLayout;
.source "SwipeableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/SwipeableLayout$SwipeListener;
    }
.end annotation


# static fields
.field public static final DIRECTION_DOWN:I = 0x2

.field public static final DIRECTION_LEFT:I = 0x4

.field public static final DIRECTION_RIGHT:I = 0x8

.field public static final DIRECTION_UP:I = 0x1

.field private static final LEFT_RIGHT:I = 0x2

.field private static final NONE:I = 0x0

.field private static final SWIPE_MIN_PADDING:I = 0xa

.field private static final UP_DOWN:I = 0x1


# instance fields
.field private allowDirection:I

.field private appearAnimationDirection:I

.field private baseLayoutPositionX:I

.field private baseLayoutPositionY:I

.field private direction:I

.field private lb:I

.field private listView:Landroid/widget/AbsListView;

.field private listener:Lcom/narvii/widget/SwipeableLayout$SwipeListener;

.field private lt:I

.field private previousFingerPositionX:I

.field private previousFingerPositionY:I

.field private rb:I

.field private rt:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lcom/narvii/widget/SwipeableLayout;->appearAnimationDirection:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lcom/narvii/widget/SwipeableLayout;->appearAnimationDirection:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lcom/narvii/widget/SwipeableLayout;->appearAnimationDirection:I

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/widget/SwipeableLayout;)Lcom/narvii/widget/SwipeableLayout$SwipeListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/narvii/widget/SwipeableLayout;->listener:Lcom/narvii/widget/SwipeableLayout$SwipeListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/widget/SwipeableLayout;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionX:I

    return p0
.end method

.method static synthetic access$200(Lcom/narvii/widget/SwipeableLayout;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionY:I

    return p0
.end method

.method private canListScroll(Landroid/view/MotionEvent;I)Z
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/narvii/widget/SwipeableLayout;->listView:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 221
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/narvii/widget/SwipeableLayout;->isTouchPointInView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    if-eq p2, p1, :cond_5

    const/4 v0, 0x2

    const/4 v2, -0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x4

    if-eq p2, v0, :cond_3

    const/16 p1, 0x8

    if-eq p2, p1, :cond_2

    return v1

    .line 231
    :cond_2
    iget-object p1, p0, Lcom/narvii/widget/SwipeableLayout;->listView:Landroid/widget/AbsListView;

    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result p1

    return p1

    .line 233
    :cond_3
    iget-object p2, p0, Lcom/narvii/widget/SwipeableLayout;->listView:Landroid/widget/AbsListView;

    invoke-static {p2, p1}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result p1

    return p1

    .line 227
    :cond_4
    iget-object p1, p0, Lcom/narvii/widget/SwipeableLayout;->listView:Landroid/widget/AbsListView;

    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result p1

    return p1

    .line 229
    :cond_5
    iget-object p2, p0, Lcom/narvii/widget/SwipeableLayout;->listView:Landroid/widget/AbsListView;

    invoke-static {p2, p1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method private isTouchPointInView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 250
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 251
    aget v2, v1, v0

    const/4 v3, 0x1

    .line 252
    aget v1, v1, v3

    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, v1

    .line 256
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    int-to-float v1, v1

    cmpl-float v1, v5, v1

    if-ltz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    int-to-float p1, p1

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    int-to-float v1, v2

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    int-to-float p2, v4

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_1

    return v3

    :cond_1
    return v0
.end method


# virtual methods
.method public appearAnimation(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p1, v1, :cond_4

    if-ne p1, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x4

    const/16 v4, 0x8

    if-eq p1, v3, :cond_2

    if-ne p1, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_4

    :cond_2
    :goto_0
    if-ne p1, v4, :cond_3

    .line 354
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    neg-int p1, p1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_1
    new-array v2, v2, [F

    int-to-float p1, p1

    aput p1, v2, v0

    .line 356
    iget p1, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionX:I

    int-to-float p1, p1

    aput p1, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 357
    new-instance v1, Lcom/narvii/widget/SwipeableLayout$7;

    invoke-direct {v1, p0}, Lcom/narvii/widget/SwipeableLayout$7;-><init>(Lcom/narvii/widget/SwipeableLayout;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_4

    :cond_4
    :goto_2
    if-ne p1, v2, :cond_5

    .line 341
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    neg-int p1, p1

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_3
    new-array v2, v2, [F

    int-to-float p1, p1

    aput p1, v2, v0

    .line 342
    iget p1, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionY:I

    int-to-float p1, p1

    aput p1, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 343
    new-instance v1, Lcom/narvii/widget/SwipeableLayout$6;

    invoke-direct {v1, p0}, Lcom/narvii/widget/SwipeableLayout$6;-><init>(Lcom/narvii/widget/SwipeableLayout;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_4
    if-eqz p1, :cond_6

    const-wide/16 v1, 0x12c

    .line 369
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 370
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 372
    :cond_6
    iput v0, p0, Lcom/narvii/widget/SwipeableLayout;->appearAnimationDirection:I

    return-void
.end method

.method public bindListView(Landroid/widget/AbsListView;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/narvii/widget/SwipeableLayout;->listView:Landroid/widget/AbsListView;

    return-void
.end method

.method public dismiss(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    if-ne p1, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x4

    if-eq p1, v3, :cond_2

    const/16 v4, 0x8

    if-ne p1, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_4

    :cond_2
    :goto_0
    if-ne p1, v3, :cond_3

    .line 288
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    neg-int p1, p1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_1
    new-array v1, v1, [F

    .line 290
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v3

    aput v3, v1, v0

    int-to-float p1, p1

    aput p1, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 291
    new-instance v0, Lcom/narvii/widget/SwipeableLayout$4;

    invoke-direct {v0, p0}, Lcom/narvii/widget/SwipeableLayout$4;-><init>(Lcom/narvii/widget/SwipeableLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_4

    :cond_4
    :goto_2
    if-ne p1, v2, :cond_5

    .line 275
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    neg-int p1, p1

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_3
    new-array v1, v1, [F

    .line 276
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    aput v3, v1, v0

    int-to-float p1, p1

    aput p1, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 277
    new-instance v0, Lcom/narvii/widget/SwipeableLayout$3;

    invoke-direct {v0, p0}, Lcom/narvii/widget/SwipeableLayout$3;-><init>(Lcom/narvii/widget/SwipeableLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_4
    if-eqz p1, :cond_6

    .line 303
    new-instance v0, Lcom/narvii/widget/SwipeableLayout$5;

    invoke-direct {v0, p0}, Lcom/narvii/widget/SwipeableLayout$5;-><init>(Lcom/narvii/widget/SwipeableLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x12c

    .line 310
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 311
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_6
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 264
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 265
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 266
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/narvii/widget/SwipeableLayout;->lt:I

    int-to-float v5, v4

    aput v5, v2, v3

    const/4 v3, 0x1

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/narvii/widget/SwipeableLayout;->rt:I

    int-to-float v5, v4

    aput v5, v2, v3

    const/4 v3, 0x3

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/narvii/widget/SwipeableLayout;->rb:I

    int-to-float v5, v4

    aput v5, v2, v3

    const/4 v3, 0x5

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x6

    iget v4, p0, Lcom/narvii/widget/SwipeableLayout;->lb:I

    int-to-float v5, v4

    aput v5, v2, v3

    const/4 v3, 0x7

    int-to-float v4, v4

    aput v4, v2, v3

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 267
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 269
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 94
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 318
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 319
    iget p1, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionY:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setY(F)V

    .line 320
    iget p1, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionX:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setX(F)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_0

    .line 72
    iput v1, p0, Lcom/narvii/widget/SwipeableLayout;->previousFingerPositionX:I

    .line 73
    iput v0, p0, Lcom/narvii/widget/SwipeableLayout;->previousFingerPositionY:I

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 77
    iget v2, p0, Lcom/narvii/widget/SwipeableLayout;->previousFingerPositionY:I

    sub-int/2addr v0, v2

    .line 78
    iget v2, p0, Lcom/narvii/widget/SwipeableLayout;->previousFingerPositionX:I

    sub-int/2addr v1, v2

    .line 80
    iget v2, p0, Lcom/narvii/widget/SwipeableLayout;->allowDirection:I

    and-int/2addr v2, v3

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    if-ge v2, v0, :cond_1

    invoke-direct {p0, p1, v3}, Lcom/narvii/widget/SwipeableLayout;->canListScroll(Landroid/view/MotionEvent;I)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    iget v2, p0, Lcom/narvii/widget/SwipeableLayout;->allowDirection:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_2

    .line 81
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    neg-int v3, v0

    if-ge v2, v3, :cond_2

    invoke-direct {p0, p1, v4}, Lcom/narvii/widget/SwipeableLayout;->canListScroll(Landroid/view/MotionEvent;I)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget v2, p0, Lcom/narvii/widget/SwipeableLayout;->allowDirection:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 82
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    neg-int v5, v1

    if-ge v2, v5, :cond_3

    invoke-direct {p0, p1, v3}, Lcom/narvii/widget/SwipeableLayout;->canListScroll(Landroid/view/MotionEvent;I)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget v2, p0, Lcom/narvii/widget/SwipeableLayout;->allowDirection:I

    const/16 v3, 0x8

    and-int/2addr v2, v3

    if-eqz v2, :cond_4

    .line 83
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    if-ge v0, v1, :cond_4

    invoke-direct {p0, p1, v3}, Lcom/narvii/widget/SwipeableLayout;->canListScroll(Landroid/view/MotionEvent;I)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    iget p1, p0, Lcom/narvii/widget/SwipeableLayout;->direction:I

    if-eqz p1, :cond_6

    :cond_5
    return v4

    :cond_6
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 325
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 326
    iput p2, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionX:I

    .line 327
    iput p3, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionY:I

    .line 328
    iget p1, p0, Lcom/narvii/widget/SwipeableLayout;->appearAnimationDirection:I

    if-eqz p1, :cond_0

    .line 329
    invoke-virtual {p0, p1}, Lcom/narvii/widget/SwipeableLayout;->appearAnimation(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 101
    iput v1, p0, Lcom/narvii/widget/SwipeableLayout;->previousFingerPositionX:I

    .line 102
    iput v0, p0, Lcom/narvii/widget/SwipeableLayout;->previousFingerPositionY:I

    goto/16 :goto_3

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v4, 0x8

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ne v2, v7, :cond_d

    .line 107
    iget p1, p0, Lcom/narvii/widget/SwipeableLayout;->previousFingerPositionY:I

    sub-int/2addr v0, p1

    .line 108
    iget p1, p0, Lcom/narvii/widget/SwipeableLayout;->previousFingerPositionX:I

    sub-int/2addr v1, p1

    .line 109
    iget p1, p0, Lcom/narvii/widget/SwipeableLayout;->direction:I

    if-nez p1, :cond_3

    .line 110
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le p1, v2, :cond_1

    .line 111
    iput v7, p0, Lcom/narvii/widget/SwipeableLayout;->direction:I

    goto :goto_0

    .line 112
    :cond_1
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 113
    iput v3, p0, Lcom/narvii/widget/SwipeableLayout;->direction:I

    goto :goto_0

    .line 115
    :cond_2
    iput v6, p0, Lcom/narvii/widget/SwipeableLayout;->direction:I

    .line 119
    :cond_3
    :goto_0
    iget p1, p0, Lcom/narvii/widget/SwipeableLayout;->direction:I

    if-ne p1, v3, :cond_8

    .line 120
    iget p1, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionY:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    .line 121
    iget v1, p0, Lcom/narvii/widget/SwipeableLayout;->allowDirection:I

    and-int/2addr v1, v3

    if-nez v1, :cond_4

    if-ltz v0, :cond_5

    :cond_4
    iget v1, p0, Lcom/narvii/widget/SwipeableLayout;->allowDirection:I

    and-int/2addr v1, v7

    if-nez v1, :cond_6

    if-lez v0, :cond_6

    .line 122
    :cond_5
    iget p1, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionY:I

    int-to-float p1, p1

    .line 124
    :cond_6
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setY(F)V

    .line 125
    iget-object v0, p0, Lcom/narvii/widget/SwipeableLayout;->listener:Lcom/narvii/widget/SwipeableLayout$SwipeListener;

    if-eqz v0, :cond_7

    .line 126
    iget v1, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionX:I

    iget v2, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionY:I

    float-to-int p1, p1

    invoke-interface {v0, v1, v1, v2, p1}, Lcom/narvii/widget/SwipeableLayout$SwipeListener;->onLayoutMoved(IIII)V

    .line 128
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return v3

    :cond_8
    if-ne p1, v7, :cond_13

    .line 131
    iget p1, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionX:I

    add-int/2addr p1, v1

    int-to-float p1, p1

    .line 132
    iget v0, p0, Lcom/narvii/widget/SwipeableLayout;->allowDirection:I

    and-int/2addr v0, v5

    if-nez v0, :cond_9

    if-ltz v1, :cond_a

    :cond_9
    iget v0, p0, Lcom/narvii/widget/SwipeableLayout;->allowDirection:I

    and-int/2addr v0, v4

    if-nez v0, :cond_b

    if-lez v1, :cond_b

    .line 133
    :cond_a
    iget p1, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionX:I

    int-to-float p1, p1

    .line 136
    :cond_b
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setX(F)V

    .line 137
    iget-object v0, p0, Lcom/narvii/widget/SwipeableLayout;->listener:Lcom/narvii/widget/SwipeableLayout$SwipeListener;

    if-eqz v0, :cond_c

    .line 138
    iget v1, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionX:I

    float-to-int p1, p1

    iget v2, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionY:I

    invoke-interface {v0, v1, p1, v2, v2}, Lcom/narvii/widget/SwipeableLayout$SwipeListener;->onLayoutMoved(IIII)V

    .line 140
    :cond_c
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto/16 :goto_3

    .line 144
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v3, :cond_13

    .line 145
    iget p1, p0, Lcom/narvii/widget/SwipeableLayout;->direction:I

    const-wide/16 v0, 0x12c

    if-ne p1, v3, :cond_10

    .line 146
    iput v6, p0, Lcom/narvii/widget/SwipeableLayout;->direction:I

    .line 148
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result p1

    iget v2, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionY:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    div-int/2addr v2, v5

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_f

    iget-object p1, p0, Lcom/narvii/widget/SwipeableLayout;->listener:Lcom/narvii/widget/SwipeableLayout$SwipeListener;

    if-eqz p1, :cond_f

    .line 149
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result p1

    iget v0, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionY:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_e

    goto :goto_1

    :cond_e
    const/4 v7, 0x1

    :goto_1
    invoke-virtual {p0, v7}, Lcom/narvii/widget/SwipeableLayout;->dismiss(I)V

    return v3

    :cond_f
    new-array p1, v7, [F

    .line 153
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    aput v2, p1, v6

    iget v2, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionY:I

    int-to-float v2, v2

    aput v2, p1, v3

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 154
    new-instance v2, Lcom/narvii/widget/SwipeableLayout$1;

    invoke-direct {v2, p0}, Lcom/narvii/widget/SwipeableLayout$1;-><init>(Lcom/narvii/widget/SwipeableLayout;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 164
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 165
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return v3

    :cond_10
    if-ne p1, v7, :cond_13

    .line 170
    iput v6, p0, Lcom/narvii/widget/SwipeableLayout;->direction:I

    .line 172
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result p1

    iget v2, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionX:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    div-int/2addr v2, v5

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_12

    iget-object p1, p0, Lcom/narvii/widget/SwipeableLayout;->listener:Lcom/narvii/widget/SwipeableLayout$SwipeListener;

    if-eqz p1, :cond_12

    .line 173
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result p1

    iget v0, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionX:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_11

    goto :goto_2

    :cond_11
    const/4 v4, 0x4

    :goto_2
    invoke-virtual {p0, v4}, Lcom/narvii/widget/SwipeableLayout;->dismiss(I)V

    return v3

    :cond_12
    new-array p1, v7, [F

    .line 177
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    aput v2, p1, v6

    iget v2, p0, Lcom/narvii/widget/SwipeableLayout;->baseLayoutPositionX:I

    int-to-float v2, v2

    aput v2, p1, v3

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 178
    new-instance v2, Lcom/narvii/widget/SwipeableLayout$2;

    invoke-direct {v2, p0}, Lcom/narvii/widget/SwipeableLayout$2;-><init>(Lcom/narvii/widget/SwipeableLayout;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 188
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 189
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 190
    iput v6, p0, Lcom/narvii/widget/SwipeableLayout;->direction:I

    :cond_13
    :goto_3
    return v3
.end method

.method public setAllowDirection(I)V
    .locals 0

    .line 211
    iput p1, p0, Lcom/narvii/widget/SwipeableLayout;->allowDirection:I

    return-void
.end method

.method public setAppearAnimation(I)V
    .locals 0

    .line 334
    iput p1, p0, Lcom/narvii/widget/SwipeableLayout;->appearAnimationDirection:I

    return-void
.end method

.method public setRadius(IIII)V
    .locals 0

    .line 239
    iput p1, p0, Lcom/narvii/widget/SwipeableLayout;->lt:I

    .line 240
    iput p2, p0, Lcom/narvii/widget/SwipeableLayout;->rt:I

    .line 241
    iput p3, p0, Lcom/narvii/widget/SwipeableLayout;->lb:I

    .line 242
    iput p4, p0, Lcom/narvii/widget/SwipeableLayout;->rb:I

    return-void
.end method

.method public setSwipeListener(Lcom/narvii/widget/SwipeableLayout$SwipeListener;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/narvii/widget/SwipeableLayout;->listener:Lcom/narvii/widget/SwipeableLayout$SwipeListener;

    return-void
.end method
