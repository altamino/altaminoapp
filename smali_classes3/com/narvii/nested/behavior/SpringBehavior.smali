.class public Lcom/narvii/nested/behavior/SpringBehavior;
.super Lcom/narvii/nested/NVAppBarLayout$Behavior;
.source "SpringBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/nested/behavior/SpringBehavior$SpringOffsetCallback;
    }
.end annotation


# static fields
.field private static final MAX_OFFSET_ANIMATION_DURATION:I = 0x258

.field private static final TAG:Ljava/lang/String; = "SpringBehav"


# instance fields
.field private mFlingAnimator:Landroid/animation/ValueAnimator;

.field private mOffsetAnimator:Landroid/animation/ValueAnimator;

.field private mOffsetDelta:I

.field protected mOffsetSpring:I

.field protected mPreHeadHeight:I

.field private mSpringOffsetCallback:Lcom/narvii/nested/behavior/SpringBehavior$SpringOffsetCallback;

.field private mSpringRecoverAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/narvii/nested/NVAppBarLayout$Behavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/narvii/nested/NVAppBarLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/nested/behavior/SpringBehavior;Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/nested/behavior/SpringBehavior;->updateSpringHeaderHeight(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/nested/behavior/SpringBehavior;Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/narvii/nested/behavior/SpringBehavior;->checkShouldSpringRecover(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V

    return-void
.end method

.method private animateFlingSpring(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;I)V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mFlingAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mFlingAnimator:Landroid/animation/ValueAnimator;

    .line 91
    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mFlingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 92
    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mFlingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 93
    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mFlingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/narvii/nested/behavior/SpringBehavior$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/nested/behavior/SpringBehavior$1;-><init>(Lcom/narvii/nested/behavior/SpringBehavior;Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 99
    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mFlingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/narvii/nested/behavior/SpringBehavior$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/nested/behavior/SpringBehavior$2;-><init>(Lcom/narvii/nested/behavior/SpringBehavior;Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 108
    iget-object p1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mFlingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 111
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mFlingAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array v0, p2, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetSpring:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mPreHeadHeight:I

    mul-int/lit8 v2, v2, 0x3

    div-int/2addr v2, p2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    aput p2, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 112
    iget-object p1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mFlingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IF)V
    .locals 2

    .line 210
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/SpringBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 213
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x447a0000    # 1000.0f

    int-to-float v0, v0

    div-float/2addr v0, p4

    mul-float v0, v0, v1

    .line 215
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p4

    mul-int/lit8 p4, p4, 0x3

    goto :goto_0

    :cond_0
    int-to-float p4, v0

    .line 217
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p4, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p4, v0

    const/high16 v0, 0x43160000    # 150.0f

    mul-float p4, p4, v0

    float-to-int p4, p4

    .line 221
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/nested/behavior/SpringBehavior;->animateOffsetWithDuration(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;II)V

    return-void
.end method

.method private animateOffsetWithDuration(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;II)V
    .locals 3

    .line 226
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/SpringBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    if-ne v0, p3, :cond_1

    .line 228
    iget-object p1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 229
    iget-object p1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_2

    .line 235
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 236
    iget-object v1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/narvii/nested/utils/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 237
    iget-object v1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/narvii/nested/behavior/SpringBehavior$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/narvii/nested/behavior/SpringBehavior$4;-><init>(Lcom/narvii/nested/behavior/SpringBehavior;Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 245
    :cond_2
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 248
    :goto_0
    iget-object p1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    const/16 p2, 0x258

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 249
    iget-object p1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [I

    const/4 p4, 0x0

    aput v0, p2, p4

    const/4 p4, 0x1

    aput p3, p2, p4

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 250
    iget-object p1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animateRecoverBySpring(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    .line 118
    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 119
    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 120
    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/narvii/nested/behavior/SpringBehavior$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/nested/behavior/SpringBehavior$3;-><init>(Lcom/narvii/nested/behavior/SpringBehavior;Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 128
    iget-object p1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 131
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [I

    iget v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetSpring:I

    const/4 v1, 0x0

    aput v0, p2, v1

    const/4 v0, 0x1

    aput v1, p2, v0

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 132
    iget-object p1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static checkFlag(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private checkShouldSpringRecover(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V
    .locals 1

    .line 85
    iget v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetSpring:I

    if-lez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/narvii/nested/behavior/SpringBehavior;->animateRecoverBySpring(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V

    :cond_0
    return-void
.end method

.method private clamp(III)I
    .locals 0

    if-ge p1, p2, :cond_0

    return p2

    :cond_0
    if-le p1, p3, :cond_1

    return p3

    :cond_1
    return p1
.end method

.method private static getAppBarChildOnOffset(Lcom/narvii/nested/NVAppBarLayout;I)Landroid/view/View;
    .locals 4

    .line 399
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 400
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 401
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 402
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getChildIndexOnOffset(Lcom/narvii/nested/NVAppBarLayout;I)I
    .locals 5

    .line 254
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 255
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 256
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    neg-int v4, p2

    if-gt v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    if-lt v2, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private interpolateOffset(Lcom/narvii/nested/NVAppBarLayout;I)I
    .locals 8

    .line 335
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 337
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 338
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 339
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    .line 340
    invoke-virtual {v5}, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 342
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    if-lt v0, v7, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    if-gt v0, v7, :cond_2

    if-eqz v6, :cond_3

    .line 345
    invoke-virtual {v5}, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v1

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    .line 348
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v7

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v5

    add-int/2addr v2, v3

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 354
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v2, v1

    .line 358
    :cond_0
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    invoke-virtual {p1}, Lcom/narvii/nested/NVAppBarLayout;->getTopInset()I

    move-result p1

    sub-int/2addr v2, p1

    :cond_1
    if-lez v2, :cond_3

    .line 363
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v2

    int-to-float v0, v0

    div-float/2addr v0, p1

    .line 365
    invoke-interface {v6, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float p1, p1, v0

    .line 364
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 368
    invoke-static {p2}, Ljava/lang/Integer;->signum(I)I

    move-result p2

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, p1

    mul-int p2, p2, v0

    return p2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return p2
.end method

.method private resetFlingAnimator()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mFlingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mFlingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mFlingAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method

.method private shouldJumpElevationState(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)Z
    .locals 4

    .line 384
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->getDependents(Landroid/view/View;)Ljava/util/List;

    move-result-object p1

    .line 385
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 386
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 388
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 389
    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v2

    .line 391
    instance-of v3, v2, Lcom/narvii/nested/NVAppBarLayout$ScrollingViewBehavior;

    if-eqz v3, :cond_1

    .line 392
    check-cast v2, Lcom/narvii/nested/NVAppBarLayout$ScrollingViewBehavior;

    invoke-virtual {v2}, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->getOverlayTop()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private snapToChildIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V
    .locals 7

    .line 167
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/SpringBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    .line 168
    invoke-direct {p0, p2, v0}, Lcom/narvii/nested/behavior/SpringBehavior;->getChildIndexOnOffset(Lcom/narvii/nested/NVAppBarLayout;I)I

    move-result v1

    if-ltz v1, :cond_5

    .line 170
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 171
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    .line 172
    invoke-virtual {v3}, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v3

    and-int/lit8 v4, v3, 0x11

    const/16 v5, 0x11

    if-ne v4, v5, :cond_5

    .line 176
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    neg-int v4, v4

    .line 177
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    neg-int v5, v5

    .line 179
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_0

    .line 181
    invoke-virtual {p2}, Lcom/narvii/nested/NVAppBarLayout;->getTopInset()I

    move-result v1

    add-int/2addr v5, v1

    :cond_0
    const/4 v1, 0x2

    .line 184
    invoke-static {v3, v1}, Lcom/narvii/nested/behavior/SpringBehavior;->checkFlag(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 186
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    add-int/2addr v5, v2

    goto :goto_0

    :cond_1
    const/4 v6, 0x5

    .line 187
    invoke-static {v3, v6}, Lcom/narvii/nested/behavior/SpringBehavior;->checkFlag(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 191
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v5

    if-ge v0, v2, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v5, v2

    :cond_3
    :goto_0
    add-int v2, v5, v4

    .line 199
    div-int/2addr v2, v1

    if-ge v0, v2, :cond_4

    move v4, v5

    .line 203
    :cond_4
    invoke-virtual {p2}, Lcom/narvii/nested/NVAppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, v4, v0, v1}, Lcom/narvii/nested/behavior/SpringBehavior;->clamp(III)I

    move-result v0

    const/4 v1, 0x0

    .line 202
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/narvii/nested/behavior/SpringBehavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IF)V

    :cond_5
    return-void
.end method

.method private updateAppBarLayoutDrawableState(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IIZ)V
    .locals 5

    .line 445
    invoke-static {p2, p3}, Lcom/narvii/nested/behavior/SpringBehavior;->getAppBarChildOnOffset(Lcom/narvii/nested/NVAppBarLayout;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 447
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    .line 448
    invoke-virtual {v1}, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 452
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    const/4 v4, 0x1

    if-lez p4, :cond_0

    and-int/lit8 p4, v1, 0xc

    if-eqz p4, :cond_0

    neg-int p3, p3

    .line 458
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p4

    sub-int/2addr p4, v2

    invoke-virtual {p2}, Lcom/narvii/nested/NVAppBarLayout;->getTopInset()I

    move-result v0

    sub-int/2addr p4, v0

    if-lt p3, p4, :cond_1

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    and-int/lit8 p4, v1, 0x2

    if-eqz p4, :cond_1

    neg-int p3, p3

    .line 462
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p4

    sub-int/2addr p4, v2

    invoke-virtual {p2}, Lcom/narvii/nested/NVAppBarLayout;->getTopInset()I

    move-result v0

    sub-int/2addr p4, v0

    if-lt p3, p4, :cond_1

    goto :goto_0

    .line 466
    :cond_1
    :goto_1
    invoke-virtual {p2, v3}, Lcom/narvii/nested/NVAppBarLayout;->setCollapsedState(Z)Z

    move-result p3

    .line 468
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p4, v0, :cond_3

    if-nez p5, :cond_2

    if-eqz p3, :cond_3

    .line 469
    invoke-direct {p0, p1, p2}, Lcom/narvii/nested/behavior/SpringBehavior;->shouldJumpElevationState(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 472
    :cond_2
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->jumpDrawablesToCurrentState()V

    :cond_3
    return-void
.end method

.method private updateSpringByScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;II)I
    .locals 2

    .line 318
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mPreHeadHeight:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 319
    iget-object p3, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mFlingAnimator:Landroid/animation/ValueAnimator;

    if-nez p3, :cond_0

    .line 320
    invoke-direct {p0, p1, p2, p4}, Lcom/narvii/nested/behavior/SpringBehavior;->animateFlingSpring(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;I)V

    :cond_0
    return p4

    .line 323
    :cond_1
    iget p3, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetSpring:I

    div-int/lit8 v0, p4, 0x3

    add-int/2addr p3, v0

    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/nested/behavior/SpringBehavior;->updateSpringOffsetByscroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;I)V

    .line 324
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/SpringBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result p1

    sub-int/2addr p1, p4

    return p1
.end method

.method private updateSpringHeaderHeight(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;I)V
    .locals 2

    .line 416
    iget v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mPreHeadHeight:I

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mPreHeadHeight:I

    if-lt v0, v1, :cond_2

    if-gez p3, :cond_0

    goto :goto_0

    .line 417
    :cond_0
    iput p3, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetSpring:I

    .line 418
    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mSpringOffsetCallback:Lcom/narvii/nested/behavior/SpringBehavior$SpringOffsetCallback;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetSpring:I

    invoke-interface {v0, v1}, Lcom/narvii/nested/behavior/SpringBehavior$SpringOffsetCallback;->springCallback(I)V

    .line 419
    :cond_1
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 420
    iget v1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mPreHeadHeight:I

    add-int/2addr v1, p3

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 421
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateSpringOffsetByscroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;I)V
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 412
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/nested/behavior/SpringBehavior;->updateSpringHeaderHeight(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;I)V

    return-void
.end method


# virtual methods
.method protected getHeaderExpandedHeight(Lcom/narvii/nested/NVAppBarLayout;)I
    .locals 7

    .line 150
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 151
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 152
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    .line 153
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 154
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v5

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :cond_0
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public getOffsetSpring()I
    .locals 1

    .line 426
    iget v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetSpring:I

    return v0
.end method

.method public getSpringOffsetCallback()Lcom/narvii/nested/behavior/SpringBehavior$SpringOffsetCallback;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mSpringOffsetCallback:Lcom/narvii/nested/behavior/SpringBehavior$SpringOffsetCallback;

    return-object v0
.end method

.method public getTopBottomOffsetForScrollingSibling()I
    .locals 2

    .line 331
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result v0

    iget v1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetDelta:I

    add-int/2addr v0, v1

    return v0
.end method

.method isOffsetAnimatorRunning()Z
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/narvii/nested/NVAppBarLayout;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/nested/behavior/SpringBehavior;->onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V

    return-void
.end method

.method public onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V
    .locals 0

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/narvii/nested/behavior/SpringBehavior;->snapToChildIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V

    .line 163
    invoke-direct {p0, p1, p2}, Lcom/narvii/nested/behavior/SpringBehavior;->animateRecoverBySpring(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V

    return-void
.end method

.method public bridge synthetic onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 0

    .line 23
    check-cast p2, Lcom/narvii/nested/NVAppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/narvii/nested/behavior/SpringBehavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IIII)Z

    move-result p1

    return p1
.end method

.method public onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IIII)Z
    .locals 0

    .line 141
    invoke-super/range {p0 .. p6}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IIII)Z

    move-result p1

    .line 142
    iget p3, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mPreHeadHeight:I

    if-nez p3, :cond_0

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p3

    if-eqz p3, :cond_0

    .line 143
    invoke-virtual {p0, p2}, Lcom/narvii/nested/behavior/SpringBehavior;->getHeaderExpandedHeight(Lcom/narvii/nested/NVAppBarLayout;)I

    move-result p2

    iput p2, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mPreHeadHeight:I

    :cond_0
    return p1
.end method

.method public bridge synthetic onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V
    .locals 0

    .line 23
    check-cast p2, Lcom/narvii/nested/NVAppBarLayout;

    invoke-virtual/range {p0 .. p8}, Lcom/narvii/nested/behavior/SpringBehavior;->onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;Landroid/view/View;IIIII)V

    return-void
.end method

.method public onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;Landroid/view/View;IIIII)V
    .locals 7

    if-gez p7, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/SpringBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result p3

    sub-int v3, p3, p7

    invoke-virtual {p2}, Lcom/narvii/nested/NVAppBarLayout;->getDownNestedScrollRange()I

    move-result p3

    neg-int v4, p3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p8

    .line 69
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/nested/behavior/SpringBehavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IIII)I

    :cond_0
    return-void
.end method

.method public bridge synthetic onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 23
    check-cast p2, Lcom/narvii/nested/NVAppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/narvii/nested/behavior/SpringBehavior;->onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 49
    invoke-super/range {p0 .. p6}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 50
    iget-object p2, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 51
    iget-object p2, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/narvii/nested/behavior/SpringBehavior;->resetFlingAnimator()V

    return p1
.end method

.method public bridge synthetic onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 23
    check-cast p2, Lcom/narvii/nested/NVAppBarLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/nested/behavior/SpringBehavior;->onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;Landroid/view/View;I)V
    .locals 0

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;Landroid/view/View;I)V

    const/4 p3, 0x1

    if-ne p4, p3, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/narvii/nested/behavior/SpringBehavior;->resetFlingAnimator()V

    .line 81
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/nested/behavior/SpringBehavior;->checkShouldSpringRecover(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V

    return-void
.end method

.method public bridge synthetic setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 0

    .line 23
    check-cast p2, Lcom/narvii/nested/NVAppBarLayout;

    invoke-virtual/range {p0 .. p5}, Lcom/narvii/nested/behavior/SpringBehavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;III)I

    move-result p1

    return p1
.end method

.method public setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;III)I
    .locals 7

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 266
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/nested/behavior/SpringBehavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IIII)I

    move-result p1

    return p1
.end method

.method setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IIII)I
    .locals 6

    .line 272
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/SpringBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    .line 274
    iget v1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetSpring:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-gez p3, :cond_1

    add-int/2addr v1, p3

    if-gez v1, :cond_0

    move v3, v1

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v3, p3

    .line 280
    :goto_0
    invoke-direct {p0, p1, p2, v1}, Lcom/narvii/nested/behavior/SpringBehavior;->updateSpringOffsetByscroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;I)V

    .line 281
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/SpringBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v4

    sub-int/2addr v4, p3

    if-ltz v1, :cond_2

    return v4

    :cond_1
    move v3, p3

    const/4 v4, 0x0

    .line 286
    :cond_2
    iget v1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetSpring:I

    if-lez v1, :cond_3

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    iget v5, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mPreHeadHeight:I

    if-lt v1, v5, :cond_3

    if-lez v3, :cond_3

    .line 287
    invoke-direct {p0, p1, p2, p6, p3}, Lcom/narvii/nested/behavior/SpringBehavior;->updateSpringByScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;II)I

    move-result p1

    return p1

    :cond_3
    if-eqz p4, :cond_8

    if-lt v0, p4, :cond_8

    if-gt v0, p5, :cond_8

    .line 292
    invoke-direct {p0, v3, p4, p5}, Lcom/narvii/nested/behavior/SpringBehavior;->clamp(III)I

    move-result v3

    if-eq v0, v3, :cond_7

    .line 294
    invoke-virtual {p2}, Lcom/narvii/nested/NVAppBarLayout;->hasChildWithInterpolator()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 295
    invoke-direct {p0, p2, v3}, Lcom/narvii/nested/behavior/SpringBehavior;->interpolateOffset(Lcom/narvii/nested/NVAppBarLayout;I)I

    move-result p3

    goto :goto_1

    :cond_4
    move p3, v3

    .line 298
    :goto_1
    invoke-virtual {p0, p3}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->setTopAndBottomOffset(I)Z

    move-result p4

    sub-int p5, v0, v3

    sub-int p3, v3, p3

    .line 300
    iput p3, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetDelta:I

    if-nez p4, :cond_5

    .line 301
    invoke-virtual {p2}, Lcom/narvii/nested/NVAppBarLayout;->hasChildWithInterpolator()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 302
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    .line 304
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/narvii/nested/NVAppBarLayout;->dispatchOffsetUpdates(I)V

    if-ge v3, v0, :cond_6

    const/4 p3, -0x1

    const/4 v4, -0x1

    goto :goto_2

    :cond_6
    const/4 p3, 0x1

    const/4 v4, 0x1

    :goto_2
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 305
    invoke-direct/range {v0 .. v5}, Lcom/narvii/nested/behavior/SpringBehavior;->updateAppBarLayoutDrawableState(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IIZ)V

    move v4, p5

    goto :goto_3

    :cond_7
    if-eq v0, p4, :cond_9

    .line 308
    invoke-direct {p0, p1, p2, p6, p3}, Lcom/narvii/nested/behavior/SpringBehavior;->updateSpringByScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;II)I

    move-result v4

    goto :goto_3

    .line 311
    :cond_8
    iput v2, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetDelta:I

    :cond_9
    :goto_3
    return v4
.end method

.method public setSpringOffsetCallback(Lcom/narvii/nested/behavior/SpringBehavior$SpringOffsetCallback;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mSpringOffsetCallback:Lcom/narvii/nested/behavior/SpringBehavior$SpringOffsetCallback;

    return-void
.end method
