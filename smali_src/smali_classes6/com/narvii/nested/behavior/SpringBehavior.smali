.class public Lcom/narvii/nested/behavior/SpringBehavior;
.super Lcom/narvii/nested/NVAppBarLayout$Behavior;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0}, Lcom/narvii/nested/NVAppBarLayout$Behavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/narvii/nested/NVAppBarLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private animateFlingSpring(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mFlingAnimator:Landroid/animation/ValueAnimator;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mFlingAnimator:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    const-wide/16 v1, 0xc8

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mFlingAnimator:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mFlingAnimator:Landroid/animation/ValueAnimator;

    .line 29
    .line 30
    new-instance v1, Lcom/narvii/nested/behavior/SpringBehavior$1;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/nested/behavior/SpringBehavior$1;-><init>(Lcom/narvii/nested/behavior/SpringBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mFlingAnimator:Landroid/animation/ValueAnimator;

    .line 39
    .line 40
    new-instance v1, Lcom/narvii/nested/behavior/SpringBehavior$2;

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/nested/behavior/SpringBehavior$2;-><init>(Lcom/narvii/nested/behavior/SpringBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 51
    move-result p1

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mFlingAnimator:Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 59
    .line 60
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mFlingAnimator:Landroid/animation/ValueAnimator;

    .line 61
    .line 62
    iget p2, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetSpring:I

    .line 63
    .line 64
    iget v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mPreHeadHeight:I

    .line 65
    .line 66
    mul-int/lit8 v0, v0, 0x3

    .line 67
    .line 68
    div-int/lit8 v0, v0, 0x2

    .line 69
    .line 70
    .line 71
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    .line 72
    move-result p3

    .line 73
    .line 74
    .line 75
    filled-new-array {p2, p3}, [I

    .line 76
    move-result-object p2

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 80
    .line 81
    iget-object p1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mFlingAnimator:Landroid/animation/ValueAnimator;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 85
    return-void
.end method

.method private animateOffsetTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IF)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/SpringBehavior;->getTopBottomOffsetForScrollingSibling()I

    .line 4
    move-result v0

    .line 5
    sub-int/2addr v0, p3

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 9
    move-result v0

    .line 10
    .line 11
    .line 12
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 13
    move-result p4

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    cmpl-float v1, p4, v1

    .line 17
    .line 18
    if-lez v1, :cond_0

    .line 19
    int-to-float v0, v0

    .line 20
    div-float/2addr v0, p4

    .line 21
    .line 22
    const/high16 p4, 0x447a0000    # 1000.0f

    .line 23
    mul-float/2addr v0, p4

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 27
    move-result p4

    .line 28
    .line 29
    mul-int/lit8 p4, p4, 0x3

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    int-to-float p4, v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 35
    move-result v0

    .line 36
    int-to-float v0, v0

    .line 37
    div-float/2addr p4, v0

    .line 38
    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    .line 40
    add-float/2addr p4, v0

    .line 41
    .line 42
    const/high16 v0, 0x43160000    # 150.0f

    .line 43
    mul-float/2addr p4, v0

    .line 44
    float-to-int p4, p4

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/nested/behavior/SpringBehavior;->animateOffsetWithDuration(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;II)V

    .line 48
    return-void
.end method

.method private animateOffsetWithDuration(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;II)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/SpringBehavior;->getTopBottomOffsetForScrollingSibling()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-ne v0, p3, :cond_1

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 22
    :cond_0
    return-void

    .line 23
    .line 24
    :cond_1
    iget-object v1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    new-instance v1, Landroid/animation/ValueAnimator;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 32
    .line 33
    iput-object v1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 34
    .line 35
    sget-object v2, Lcom/narvii/nested/utils/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 41
    .line 42
    new-instance v2, Lcom/narvii/nested/behavior/SpringBehavior$4;

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, p0, p1, p2}, Lcom/narvii/nested/behavior/SpringBehavior$4;-><init>(Lcom/narvii/nested/behavior/SpringBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 49
    goto :goto_0

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 53
    .line 54
    :goto_0
    iget-object p1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 55
    .line 56
    const/16 p2, 0x258

    .line 57
    .line 58
    .line 59
    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    .line 60
    move-result p2

    .line 61
    int-to-long v1, p2

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 65
    .line 66
    iget-object p1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 67
    .line 68
    .line 69
    filled-new-array {v0, p3}, [I

    .line 70
    move-result-object p2

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 74
    .line 75
    iget-object p1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 79
    return-void
.end method

.method private animateRecoverBySpring(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    const-wide/16 v1, 0xc8

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    .line 29
    .line 30
    new-instance v1, Lcom/narvii/nested/behavior/SpringBehavior$3;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/nested/behavior/SpringBehavior$3;-><init>(Lcom/narvii/nested/behavior/SpringBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 41
    move-result p1

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 49
    .line 50
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    .line 51
    .line 52
    iget p2, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetSpring:I

    .line 53
    const/4 v0, 0x0

    .line 54
    .line 55
    .line 56
    filled-new-array {p2, v0}, [I

    .line 57
    move-result-object p2

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 61
    .line 62
    iget-object p1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 66
    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/nested/behavior/SpringBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/nested/behavior/SpringBehavior;->checkShouldSpringRecover(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V

    return-void
.end method

.method static bridge synthetic c(Lcom/narvii/nested/behavior/SpringBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/nested/behavior/SpringBehavior;->updateSpringHeaderHeight(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;I)V

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

.method private checkShouldSpringRecover(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetSpring:I

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/narvii/nested/behavior/SpringBehavior;->animateRecoverBySpring(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V

    .line 8
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

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    :goto_0
    if-ge v1, v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 19
    move-result v3

    .line 20
    .line 21
    if-lt p1, v3, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 25
    move-result v3

    .line 26
    .line 27
    if-gt p1, v3, :cond_0

    .line 28
    return-object v2

    .line 29
    .line 30
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method private getChildIndexOnOffset(Lcom/narvii/nested/NVAppBarLayout;I)I
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

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
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 15
    move-result v3

    .line 16
    neg-int v4, p2

    .line 17
    .line 18
    if-gt v3, v4, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 22
    move-result v2

    .line 23
    .line 24
    if-lt v2, v4, :cond_0

    .line 25
    return v1

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, -0x1

    .line 30
    return p1
.end method

.method private interpolateOffset(Lcom/narvii/nested/NVAppBarLayout;I)I
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    .line 12
    :goto_0
    if-ge v3, v1, :cond_3

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object v4

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    move-result-object v5

    .line 21
    .line 22
    check-cast v5, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v5}, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    .line 26
    move-result-object v6

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 30
    move-result v7

    .line 31
    .line 32
    if-lt v0, v7, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    .line 36
    move-result v7

    .line 37
    .line 38
    if-gt v0, v7, :cond_2

    .line 39
    .line 40
    if-eqz v6, :cond_3

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5}, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->getScrollFlags()I

    .line 44
    move-result v1

    .line 45
    .line 46
    and-int/lit8 v3, v1, 0x1

    .line 47
    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 52
    move-result v2

    .line 53
    .line 54
    iget v3, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 55
    add-int/2addr v2, v3

    .line 56
    .line 57
    iget v3, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 58
    add-int/2addr v2, v3

    .line 59
    .line 60
    and-int/lit8 v1, v1, 0x2

    .line 61
    .line 62
    if-eqz v1, :cond_0

    .line 63
    .line 64
    .line 65
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->E(Landroid/view/View;)I

    .line 66
    move-result v1

    .line 67
    sub-int/2addr v2, v1

    .line 68
    .line 69
    .line 70
    :cond_0
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->A(Landroid/view/View;)Z

    .line 71
    move-result v1

    .line 72
    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/narvii/nested/NVAppBarLayout;->getTopInset()I

    .line 77
    move-result p1

    .line 78
    sub-int/2addr v2, p1

    .line 79
    .line 80
    :cond_1
    if-lez v2, :cond_3

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 84
    move-result p1

    .line 85
    sub-int/2addr v0, p1

    .line 86
    int-to-float p1, v2

    .line 87
    int-to-float v0, v0

    .line 88
    div-float/2addr v0, p1

    .line 89
    .line 90
    .line 91
    invoke-interface {v6, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 92
    move-result v0

    .line 93
    mul-float/2addr p1, v0

    .line 94
    .line 95
    .line 96
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 97
    move-result p1

    .line 98
    .line 99
    .line 100
    invoke-static {p2}, Ljava/lang/Integer;->signum(I)I

    .line 101
    move-result p2

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 105
    move-result v0

    .line 106
    add-int/2addr v0, p1

    .line 107
    mul-int/2addr p2, v0

    .line 108
    return p2

    .line 109
    .line 110
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 111
    goto :goto_0

    .line 112
    :cond_3
    return p2
.end method

.method private resetFlingAnimator()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mFlingAnimator:Landroid/animation/ValueAnimator;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mFlingAnimator:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mFlingAnimator:Landroid/animation/ValueAnimator;

    .line 19
    :cond_1
    return-void
.end method

.method private shouldJumpElevationState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependents(Landroid/view/View;)Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    move-result p2

    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    .line 12
    :goto_0
    if-ge v1, p2, :cond_2

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    check-cast v2, Landroid/view/View;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    instance-of v3, v2, Lcom/narvii/nested/NVAppBarLayout$ScrollingViewBehavior;

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    check-cast v2, Lcom/narvii/nested/NVAppBarLayout$ScrollingViewBehavior;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->getOverlayTop()I

    .line 38
    move-result p1

    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    const/4 v0, 0x1

    .line 42
    :cond_0
    return v0

    .line 43
    .line 44
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return v0
.end method

.method private snapToChildIfNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/SpringBehavior;->getTopBottomOffsetForScrollingSibling()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2, v0}, Lcom/narvii/nested/behavior/SpringBehavior;->getChildIndexOnOffset(Lcom/narvii/nested/NVAppBarLayout;I)I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-ltz v1, :cond_5

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    check-cast v3, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->getScrollFlags()I

    .line 24
    move-result v3

    .line 25
    .line 26
    and-int/lit8 v4, v3, 0x11

    .line 27
    .line 28
    const/16 v5, 0x11

    .line 29
    .line 30
    if-ne v4, v5, :cond_5

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 34
    move-result v4

    .line 35
    neg-int v4, v4

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 39
    move-result v5

    .line 40
    neg-int v5, v5

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 44
    move-result v6

    .line 45
    .line 46
    add-int/lit8 v6, v6, -0x1

    .line 47
    .line 48
    if-ne v1, v6, :cond_0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/narvii/nested/NVAppBarLayout;->getTopInset()I

    .line 52
    move-result v1

    .line 53
    add-int/2addr v5, v1

    .line 54
    :cond_0
    const/4 v1, 0x2

    .line 55
    .line 56
    .line 57
    invoke-static {v3, v1}, Lcom/narvii/nested/behavior/SpringBehavior;->checkFlag(II)Z

    .line 58
    move-result v6

    .line 59
    .line 60
    if-eqz v6, :cond_1

    .line 61
    .line 62
    .line 63
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->E(Landroid/view/View;)I

    .line 64
    move-result v2

    .line 65
    add-int/2addr v5, v2

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/4 v6, 0x5

    .line 68
    .line 69
    .line 70
    invoke-static {v3, v6}, Lcom/narvii/nested/behavior/SpringBehavior;->checkFlag(II)Z

    .line 71
    move-result v3

    .line 72
    .line 73
    if-eqz v3, :cond_3

    .line 74
    .line 75
    .line 76
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->E(Landroid/view/View;)I

    .line 77
    move-result v2

    .line 78
    add-int/2addr v2, v5

    .line 79
    .line 80
    if-ge v0, v2, :cond_2

    .line 81
    move v4, v2

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    move v5, v2

    .line 84
    .line 85
    :cond_3
    :goto_0
    add-int v2, v5, v4

    .line 86
    div-int/2addr v2, v1

    .line 87
    .line 88
    if-ge v0, v2, :cond_4

    .line 89
    move v4, v5

    .line 90
    .line 91
    .line 92
    :cond_4
    invoke-virtual {p2}, Lcom/narvii/nested/NVAppBarLayout;->getTotalScrollRange()I

    .line 93
    move-result v0

    .line 94
    neg-int v0, v0

    .line 95
    const/4 v1, 0x0

    .line 96
    .line 97
    .line 98
    invoke-direct {p0, v4, v0, v1}, Lcom/narvii/nested/behavior/SpringBehavior;->clamp(III)I

    .line 99
    move-result v0

    .line 100
    const/4 v1, 0x0

    .line 101
    .line 102
    .line 103
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/narvii/nested/behavior/SpringBehavior;->animateOffsetTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IF)V

    .line 104
    :cond_5
    return-void
.end method

.method private updateAppBarLayoutDrawableState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IIZ)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {p2, p3}, Lcom/narvii/nested/behavior/SpringBehavior;->getAppBarChildOnOffset(Lcom/narvii/nested/NVAppBarLayout;I)Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    check-cast v1, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->getScrollFlags()I

    .line 16
    move-result v1

    .line 17
    .line 18
    and-int/lit8 v2, v1, 0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->E(Landroid/view/View;)I

    .line 25
    move-result v2

    .line 26
    const/4 v4, 0x1

    .line 27
    .line 28
    if-lez p4, :cond_0

    .line 29
    .line 30
    and-int/lit8 p4, v1, 0xc

    .line 31
    .line 32
    if-eqz p4, :cond_0

    .line 33
    neg-int p3, p3

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 37
    move-result p4

    .line 38
    sub-int/2addr p4, v2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/narvii/nested/NVAppBarLayout;->getTopInset()I

    .line 42
    move-result v0

    .line 43
    sub-int/2addr p4, v0

    .line 44
    .line 45
    if-lt p3, p4, :cond_1

    .line 46
    :goto_0
    move v3, v4

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_0
    and-int/lit8 p4, v1, 0x2

    .line 50
    .line 51
    if-eqz p4, :cond_1

    .line 52
    neg-int p3, p3

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 56
    move-result p4

    .line 57
    sub-int/2addr p4, v2

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Lcom/narvii/nested/NVAppBarLayout;->getTopInset()I

    .line 61
    move-result v0

    .line 62
    sub-int/2addr p4, v0

    .line 63
    .line 64
    if-lt p3, p4, :cond_1

    .line 65
    goto :goto_0

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_1
    invoke-virtual {p2, v3}, Lcom/narvii/nested/NVAppBarLayout;->setCollapsedState(Z)Z

    .line 69
    move-result p3

    .line 70
    .line 71
    if-nez p5, :cond_2

    .line 72
    .line 73
    if-eqz p3, :cond_3

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/narvii/nested/behavior/SpringBehavior;->shouldJumpElevationState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)Z

    .line 77
    move-result p1

    .line 78
    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 83
    :cond_3
    return-void
.end method

.method private updateSpringByScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;II)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mPreHeadHeight:I

    .line 7
    .line 8
    if-lt v0, v1, :cond_1

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    if-ne p3, v0, :cond_1

    .line 12
    .line 13
    iget-object p3, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mFlingAnimator:Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1, p2, p4}, Lcom/narvii/nested/behavior/SpringBehavior;->animateFlingSpring(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;I)V

    .line 19
    :cond_0
    return p4

    .line 20
    .line 21
    :cond_1
    iget p3, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetSpring:I

    .line 22
    .line 23
    div-int/lit8 v0, p4, 0x3

    .line 24
    add-int/2addr p3, v0

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/nested/behavior/SpringBehavior;->updateSpringOffsetByscroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/SpringBehavior;->getTopBottomOffsetForScrollingSibling()I

    .line 31
    move-result p1

    .line 32
    sub-int/2addr p1, p4

    .line 33
    return p1
.end method

.method private updateSpringHeaderHeight(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;I)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mPreHeadHeight:I

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 8
    move-result v0

    .line 9
    .line 10
    iget v1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mPreHeadHeight:I

    .line 11
    .line 12
    if-lt v0, v1, :cond_2

    .line 13
    .line 14
    if-gez p3, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iput p3, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetSpring:I

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mSpringOffsetCallback:Lcom/narvii/nested/behavior/SpringBehavior$SpringOffsetCallback;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, p3}, Lcom/narvii/nested/behavior/SpringBehavior$SpringOffsetCallback;->springCallback(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 31
    .line 32
    iget v1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mPreHeadHeight:I

    .line 33
    add-int/2addr v1, p3

    .line 34
    .line 35
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    .line 42
    :cond_2
    :goto_0
    return-void
.end method

.method private updateSpringOffsetByscroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/nested/behavior/SpringBehavior;->updateSpringHeaderHeight(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;I)V

    .line 19
    return-void
.end method


# virtual methods
.method protected getHeaderExpandedHeight(Lcom/narvii/nested/NVAppBarLayout;)I
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    move v3, v2

    .line 8
    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    move-result-object v4

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    move-result-object v5

    .line 18
    .line 19
    check-cast v5, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 23
    move-result v4

    .line 24
    .line 25
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 26
    .line 27
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 28
    add-int/2addr v6, v5

    .line 29
    add-int/2addr v4, v6

    .line 30
    add-int/2addr v3, v4

    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 37
    move-result p1

    .line 38
    return p1
.end method

.method public getOffsetSpring()I
    .locals 1

    iget v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetSpring:I

    return v0
.end method

.method public getSpringOffsetCallback()Lcom/narvii/nested/behavior/SpringBehavior$SpringOffsetCallback;
    .locals 1

    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mSpringOffsetCallback:Lcom/narvii/nested/behavior/SpringBehavior$SpringOffsetCallback;

    return-object v0
.end method

.method public getTopBottomOffsetForScrollingSibling()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->getTopAndBottomOffset()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetDelta:I

    .line 7
    add-int/2addr v0, v1

    .line 8
    return v0
.end method

.method isOffsetAnimatorRunning()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public bridge synthetic onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/nested/NVAppBarLayout;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/nested/behavior/SpringBehavior;->onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V

    return-void
.end method

.method public onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/narvii/nested/behavior/SpringBehavior;->snapToChildIfNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/nested/behavior/SpringBehavior;->animateRecoverBySpring(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V

    return-void
.end method

.method public bridge synthetic onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/nested/NVAppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/narvii/nested/behavior/SpringBehavior;->onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IIII)Z

    move-result p1

    return p1
.end method

.method public onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IIII)Z
    .locals 0

    .line 2
    invoke-super/range {p0 .. p6}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IIII)Z

    move-result p1

    iget p3, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mPreHeadHeight:I

    if-nez p3, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p0, p2}, Lcom/narvii/nested/behavior/SpringBehavior;->getHeaderExpandedHeight(Lcom/narvii/nested/NVAppBarLayout;)I

    move-result p2

    iput p2, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mPreHeadHeight:I

    :cond_0
    return p1
.end method

.method public bridge synthetic onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/nested/NVAppBarLayout;

    invoke-virtual/range {p0 .. p8}, Lcom/narvii/nested/behavior/SpringBehavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;Landroid/view/View;IIIII)V

    return-void
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;Landroid/view/View;IIIII)V
    .locals 7

    if-gez p7, :cond_0

    .line 2
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

    .line 3
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/nested/behavior/SpringBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IIII)I

    :cond_0
    return-void
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/nested/NVAppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/narvii/nested/behavior/SpringBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 2
    invoke-super/range {p0 .. p6}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mSpringRecoverAnimator:Landroid/animation/ValueAnimator;

    .line 4
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/narvii/nested/behavior/SpringBehavior;->resetFlingAnimator()V

    return p1
.end method

.method public bridge synthetic onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/nested/NVAppBarLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/nested/behavior/SpringBehavior;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;Landroid/view/View;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;Landroid/view/View;I)V

    const/4 p3, 0x1

    if-ne p4, p3, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/narvii/nested/behavior/SpringBehavior;->resetFlingAnimator()V

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/nested/behavior/SpringBehavior;->checkShouldSpringRecover(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V

    return-void
.end method

.method public bridge synthetic setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/nested/NVAppBarLayout;

    invoke-virtual/range {p0 .. p5}, Lcom/narvii/nested/behavior/SpringBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;III)I

    move-result p1

    return p1
.end method

.method public setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;III)I
    .locals 7

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/nested/behavior/SpringBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IIII)I

    move-result p1

    return p1
.end method

.method setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IIII)I
    .locals 6

    .line 3
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/SpringBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    iget v1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetSpring:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-gez p3, :cond_1

    add-int/2addr v1, p3

    if-gez v1, :cond_0

    move v3, v1

    move v1, v2

    goto :goto_0

    :cond_0
    move v3, p3

    .line 4
    :goto_0
    invoke-direct {p0, p1, p2, v1}, Lcom/narvii/nested/behavior/SpringBehavior;->updateSpringOffsetByscroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;I)V

    .line 5
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/SpringBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v4

    sub-int/2addr v4, p3

    if-ltz v1, :cond_2

    return v4

    :cond_1
    move v3, p3

    move v4, v2

    :cond_2
    iget v1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetSpring:I

    if-lez v1, :cond_3

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v5, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mPreHeadHeight:I

    if-lt v1, v5, :cond_3

    if-lez v3, :cond_3

    .line 7
    invoke-direct {p0, p1, p2, p6, p3}, Lcom/narvii/nested/behavior/SpringBehavior;->updateSpringByScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;II)I

    move-result p1

    return p1

    :cond_3
    if-eqz p4, :cond_8

    if-lt v0, p4, :cond_8

    if-gt v0, p5, :cond_8

    .line 8
    invoke-direct {p0, v3, p4, p5}, Lcom/narvii/nested/behavior/SpringBehavior;->clamp(III)I

    move-result v3

    if-eq v0, v3, :cond_7

    .line 9
    invoke-virtual {p2}, Lcom/narvii/nested/NVAppBarLayout;->hasChildWithInterpolator()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 10
    invoke-direct {p0, p2, v3}, Lcom/narvii/nested/behavior/SpringBehavior;->interpolateOffset(Lcom/narvii/nested/NVAppBarLayout;I)I

    move-result p3

    goto :goto_1

    :cond_4
    move p3, v3

    .line 11
    :goto_1
    invoke-virtual {p0, p3}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->setTopAndBottomOffset(I)Z

    move-result p4

    sub-int p5, v0, v3

    sub-int p3, v3, p3

    iput p3, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetDelta:I

    if-nez p4, :cond_5

    .line 12
    invoke-virtual {p2}, Lcom/narvii/nested/NVAppBarLayout;->hasChildWithInterpolator()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 13
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    .line 14
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/narvii/nested/NVAppBarLayout;->dispatchOffsetUpdates(I)V

    if-ge v3, v0, :cond_6

    const/4 p3, -0x1

    :goto_2
    move v4, p3

    goto :goto_3

    :cond_6
    const/4 p3, 0x1

    goto :goto_2

    :goto_3
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/narvii/nested/behavior/SpringBehavior;->updateAppBarLayoutDrawableState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IIZ)V

    move v4, p5

    goto :goto_4

    :cond_7
    if-eq v0, p4, :cond_9

    .line 16
    invoke-direct {p0, p1, p2, p6, p3}, Lcom/narvii/nested/behavior/SpringBehavior;->updateSpringByScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;II)I

    move-result v4

    goto :goto_4

    :cond_8
    iput v2, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetDelta:I

    :cond_9
    :goto_4
    return v4
.end method

.method public setSpringOffsetCallback(Lcom/narvii/nested/behavior/SpringBehavior$SpringOffsetCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mSpringOffsetCallback:Lcom/narvii/nested/behavior/SpringBehavior$SpringOffsetCallback;

    return-void
.end method
