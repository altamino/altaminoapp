.class public Lcom/narvii/nested/NVAppBarLayout$Behavior;
.super Lcom/narvii/nested/behavior/HeaderBehavior;
.source "NVAppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/nested/NVAppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/nested/NVAppBarLayout$Behavior$SavedState;,
        Lcom/narvii/nested/NVAppBarLayout$Behavior$DragCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/nested/behavior/HeaderBehavior<",
        "Lcom/narvii/nested/NVAppBarLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final INVALID_POSITION:I = -0x1

.field private static final MAX_OFFSET_ANIMATION_DURATION:I = 0x258


# instance fields
.field private mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOffsetAnimator:Landroid/animation/ValueAnimator;

.field private mOffsetDelta:I

.field private mOffsetToChildIndexOnLayout:I

.field private mOffsetToChildIndexOnLayoutIsMinHeight:Z

.field private mOffsetToChildIndexOnLayoutPerc:F

.field private mOnDragCallback:Lcom/narvii/nested/NVAppBarLayout$Behavior$DragCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 737
    invoke-direct {p0}, Lcom/narvii/nested/behavior/HeaderBehavior;-><init>()V

    const/4 v0, -0x1

    .line 730
    iput v0, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 741
    invoke-direct {p0, p1, p2}, Lcom/narvii/nested/behavior/HeaderBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 730
    iput p1, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/nested/NVAppBarLayout$Behavior;)I
    .locals 0

    .line 707
    iget p0, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;->mOffsetDelta:I

    return p0
.end method

.method private animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IF)V
    .locals 2

    .line 831
    invoke-virtual {p0}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 834
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x447a0000    # 1000.0f

    int-to-float v0, v0

    div-float/2addr v0, p4

    mul-float v0, v0, v1

    .line 836
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p4

    mul-int/lit8 p4, p4, 0x3

    goto :goto_0

    :cond_0
    int-to-float p4, v0

    .line 838
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p4, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p4, v0

    const/high16 v0, 0x43160000    # 150.0f

    mul-float p4, p4, v0

    float-to-int p4, p4

    .line 842
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->animateOffsetWithDuration(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;II)V

    return-void
.end method

.method private animateOffsetWithDuration(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;II)V
    .locals 3

    .line 847
    invoke-virtual {p0}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    if-ne v0, p3, :cond_1

    .line 849
    iget-object p1, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 850
    iget-object p1, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void

    .line 855
    :cond_1
    iget-object v1, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_2

    .line 856
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 857
    iget-object v1, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/narvii/nested/utils/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 858
    iget-object v1, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/narvii/nested/NVAppBarLayout$Behavior$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/narvii/nested/NVAppBarLayout$Behavior$1;-><init>(Lcom/narvii/nested/NVAppBarLayout$Behavior;Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 866
    :cond_2
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 869
    :goto_0
    iget-object p1, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    const/16 p2, 0x258

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 870
    iget-object p1, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [I

    const/4 p4, 0x0

    aput v0, p2, p4

    const/4 p4, 0x1

    aput p3, p2, p4

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 871
    iget-object p1, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

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

.method private static getAppBarChildOnOffset(Lcom/narvii/nested/NVAppBarLayout;I)Landroid/view/View;
    .locals 4

    .line 1193
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 1194
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1195
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1196
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

    .line 875
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 876
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 877
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

    .line 1094
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1096
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 1097
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1098
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    .line 1099
    invoke-virtual {v5}, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 1101
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    if-lt v0, v7, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    if-gt v0, v7, :cond_2

    if-eqz v6, :cond_3

    .line 1104
    invoke-virtual {v5}, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v1

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    .line 1107
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v7

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v5

    add-int/2addr v2, v3

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 1113
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v2, v1

    .line 1117
    :cond_0
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1118
    invoke-virtual {p1}, Lcom/narvii/nested/NVAppBarLayout;->getTopInset()I

    move-result p1

    sub-int/2addr v2, p1

    :cond_1
    if-lez v2, :cond_3

    .line 1122
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v2

    int-to-float v0, v0

    div-float/2addr v0, p1

    .line 1124
    invoke-interface {v6, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float p1, p1, v0

    .line 1123
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 1127
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

.method private shouldJumpElevationState(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)Z
    .locals 4

    .line 1178
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->getDependents(Landroid/view/View;)Ljava/util/List;

    move-result-object p1

    .line 1179
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 1180
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1182
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1183
    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v2

    .line 1185
    instance-of v3, v2, Lcom/narvii/nested/NVAppBarLayout$ScrollingViewBehavior;

    if-eqz v3, :cond_1

    .line 1186
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

    .line 885
    invoke-virtual {p0}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    .line 886
    invoke-direct {p0, p2, v0}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->getChildIndexOnOffset(Lcom/narvii/nested/NVAppBarLayout;I)I

    move-result v1

    if-ltz v1, :cond_5

    .line 888
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 889
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    .line 890
    invoke-virtual {v3}, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v3

    and-int/lit8 v4, v3, 0x11

    const/16 v5, 0x11

    if-ne v4, v5, :cond_5

    .line 894
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    neg-int v4, v4

    .line 895
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    neg-int v5, v5

    .line 897
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_0

    .line 899
    invoke-virtual {p2}, Lcom/narvii/nested/NVAppBarLayout;->getTopInset()I

    move-result v1

    add-int/2addr v5, v1

    :cond_0
    const/4 v1, 0x2

    .line 902
    invoke-static {v3, v1}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->checkFlag(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 904
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    add-int/2addr v5, v2

    goto :goto_0

    :cond_1
    const/4 v6, 0x5

    .line 905
    invoke-static {v3, v6}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->checkFlag(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 909
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

    .line 917
    div-int/2addr v2, v1

    if-ge v0, v2, :cond_4

    move v4, v5

    .line 921
    :cond_4
    invoke-virtual {p2}, Lcom/narvii/nested/NVAppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-static {v4, v0, v1}, Landroid/support/v4/math/MathUtils;->clamp(III)I

    move-result v0

    const/4 v1, 0x0

    .line 920
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IF)V

    :cond_5
    return-void
.end method

.method private stopNestedScrollIfNeeded(ILcom/narvii/nested/NVAppBarLayout;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p4, v0, :cond_2

    .line 800
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result p4

    if-gez p1, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    if-lez p1, :cond_2

    .line 802
    invoke-virtual {p2}, Lcom/narvii/nested/NVAppBarLayout;->getTotalScrollRange()I

    move-result p1

    neg-int p1, p1

    if-ne p4, p1, :cond_2

    .line 803
    :cond_1
    invoke-static {p3, v0}, Landroid/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method private updateAppBarLayoutDrawableState(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IIZ)V
    .locals 5

    .line 1143
    invoke-static {p2, p3}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->getAppBarChildOnOffset(Lcom/narvii/nested/NVAppBarLayout;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1145
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    .line 1146
    invoke-virtual {v1}, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1150
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    const/4 v4, 0x1

    if-lez p4, :cond_0

    and-int/lit8 p4, v1, 0xc

    if-eqz p4, :cond_0

    neg-int p3, p3

    .line 1156
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

    .line 1160
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p4

    sub-int/2addr p4, v2

    invoke-virtual {p2}, Lcom/narvii/nested/NVAppBarLayout;->getTopInset()I

    move-result v0

    sub-int/2addr p4, v0

    if-lt p3, p4, :cond_1

    goto :goto_0

    .line 1164
    :cond_1
    :goto_1
    invoke-virtual {p2, v3}, Lcom/narvii/nested/NVAppBarLayout;->setCollapsedState(Z)Z

    move-result p3

    .line 1166
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p4, v0, :cond_3

    if-nez p5, :cond_2

    if-eqz p3, :cond_3

    .line 1167
    invoke-direct {p0, p1, p2}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->shouldJumpElevationState(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1170
    :cond_2
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->jumpDrawablesToCurrentState()V

    :cond_3
    return-void
.end method


# virtual methods
.method public bridge synthetic canDragView(Landroid/view/View;)Z
    .locals 0

    .line 707
    check-cast p1, Lcom/narvii/nested/NVAppBarLayout;

    invoke-virtual {p0, p1}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->canDragView(Lcom/narvii/nested/NVAppBarLayout;)Z

    move-result p1

    return p1
.end method

.method public canDragView(Lcom/narvii/nested/NVAppBarLayout;)Z
    .locals 2

    .line 1010
    iget-object v0, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;->mOnDragCallback:Lcom/narvii/nested/NVAppBarLayout$Behavior$DragCallback;

    if-eqz v0, :cond_0

    .line 1012
    invoke-virtual {v0, p1}, Lcom/narvii/nested/NVAppBarLayout$Behavior$DragCallback;->canDrag(Lcom/narvii/nested/NVAppBarLayout;)Z

    move-result p1

    return p1

    .line 1016
    :cond_0
    iget-object p1, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 1018
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_1

    .line 1019
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    .line 1020
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public bridge synthetic getMaxDragOffset(Landroid/view/View;)I
    .locals 0

    .line 707
    check-cast p1, Lcom/narvii/nested/NVAppBarLayout;

    invoke-virtual {p0, p1}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->getMaxDragOffset(Lcom/narvii/nested/NVAppBarLayout;)I

    move-result p1

    return p1
.end method

.method public getMaxDragOffset(Lcom/narvii/nested/NVAppBarLayout;)I
    .locals 0

    .line 1035
    invoke-virtual {p1}, Lcom/narvii/nested/NVAppBarLayout;->getDownNestedScrollRange()I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method public bridge synthetic getScrollRangeForDragFling(Landroid/view/View;)I
    .locals 0

    .line 707
    check-cast p1, Lcom/narvii/nested/NVAppBarLayout;

    invoke-virtual {p0, p1}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->getScrollRangeForDragFling(Lcom/narvii/nested/NVAppBarLayout;)I

    move-result p1

    return p1
.end method

.method public getScrollRangeForDragFling(Lcom/narvii/nested/NVAppBarLayout;)I
    .locals 0

    .line 1040
    invoke-virtual {p1}, Lcom/narvii/nested/NVAppBarLayout;->getTotalScrollRange()I

    move-result p1

    return p1
.end method

.method public getTopBottomOffsetForScrollingSibling()I
    .locals 2

    .line 1205
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result v0

    iget v1, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;->mOffsetDelta:I

    add-int/2addr v0, v1

    return v0
.end method

.method isOffsetAnimatorRunning()Z
    .locals 1

    .line 1090
    iget-object v0, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

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

    .line 707
    check-cast p2, Lcom/narvii/nested/NVAppBarLayout;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V

    return-void
.end method

.method public onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V
    .locals 0

    .line 1030
    invoke-direct {p0, p1, p2}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->snapToChildIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V

    return-void
.end method

.method public bridge synthetic onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    .line 707
    check-cast p2, Lcom/narvii/nested/NVAppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;I)Z

    move-result p1

    return p1
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;I)Z
    .locals 7

    .line 954
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p3

    .line 960
    invoke-virtual {p2}, Lcom/narvii/nested/NVAppBarLayout;->getPendingAction()I

    move-result v0

    .line 961
    iget v1, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    const/4 v2, 0x0

    if-ltz v1, :cond_1

    and-int/lit8 v3, v0, 0x8

    if-nez v3, :cond_1

    .line 962
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 963
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    neg-int v1, v1

    .line 964
    iget-boolean v3, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutIsMinHeight:Z

    if-eqz v3, :cond_0

    .line 965
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2}, Lcom/narvii/nested/NVAppBarLayout;->getTopInset()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 967
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutPerc:F

    mul-float v0, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    .line 969
    invoke-virtual {p0, p1, p2, v1}, Lcom/narvii/nested/behavior/HeaderBehavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_6

    and-int/lit8 v1, v0, 0x4

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    and-int/lit8 v4, v0, 0x2

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 973
    invoke-virtual {p2}, Lcom/narvii/nested/NVAppBarLayout;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v0, v0

    if-eqz v1, :cond_3

    .line 975
    invoke-direct {p0, p1, p2, v0, v5}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IF)V

    goto :goto_2

    .line 977
    :cond_3
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/nested/behavior/HeaderBehavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_2

    :cond_4
    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    if-eqz v1, :cond_5

    .line 981
    invoke-direct {p0, p1, p2, v2, v5}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IF)V

    goto :goto_2

    .line 983
    :cond_5
    invoke-virtual {p0, p1, p2, v2}, Lcom/narvii/nested/behavior/HeaderBehavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    .line 989
    :cond_6
    :goto_2
    invoke-virtual {p2}, Lcom/narvii/nested/NVAppBarLayout;->resetPendingAction()V

    const/4 v0, -0x1

    .line 990
    iput v0, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 995
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result v0

    invoke-virtual {p2}, Lcom/narvii/nested/NVAppBarLayout;->getTotalScrollRange()I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1, v2}, Landroid/support/v4/math/MathUtils;->clamp(III)I

    move-result v0

    .line 994
    invoke-virtual {p0, v0}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->setTopAndBottomOffset(I)Z

    .line 1000
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->updateAppBarLayoutDrawableState(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IIZ)V

    .line 1003
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/narvii/nested/NVAppBarLayout;->dispatchOffsetUpdates(I)V

    return p3
.end method

.method public bridge synthetic onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 0

    .line 707
    check-cast p2, Lcom/narvii/nested/NVAppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IIII)Z

    move-result p1

    return p1
.end method

.method public onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IIII)Z
    .locals 6

    .line 935
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 936
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 p5, 0x0

    .line 942
    invoke-static {p5, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v5, p6

    .line 941
    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    const/4 p1, 0x1

    return p1

    .line 947
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 0

    .line 707
    check-cast p2, Lcom/narvii/nested/NVAppBarLayout;

    invoke-virtual/range {p0 .. p7}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;Landroid/view/View;II[II)V
    .locals 7

    if-eqz p5, :cond_1

    if-gez p5, :cond_0

    .line 771
    invoke-virtual {p2}, Lcom/narvii/nested/NVAppBarLayout;->getTotalScrollRange()I

    move-result p4

    neg-int p4, p4

    .line 772
    invoke-virtual {p2}, Lcom/narvii/nested/NVAppBarLayout;->getDownNestedPreScrollRange()I

    move-result v0

    add-int/2addr v0, p4

    move v5, p4

    move v6, v0

    goto :goto_0

    .line 775
    :cond_0
    invoke-virtual {p2}, Lcom/narvii/nested/NVAppBarLayout;->getUpNestedPreScrollRange()I

    move-result p4

    neg-int p4, p4

    const/4 v0, 0x0

    move v5, p4

    const/4 v6, 0x0

    :goto_0
    if-eq v5, v6, :cond_1

    const/4 p4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    .line 779
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/nested/behavior/HeaderBehavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p1

    aput p1, p6, p4

    .line 782
    :cond_1
    invoke-direct {p0, p5, p2, p3, p7}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->stopNestedScrollIfNeeded(ILcom/narvii/nested/NVAppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V
    .locals 0

    .line 707
    check-cast p2, Lcom/narvii/nested/NVAppBarLayout;

    invoke-virtual/range {p0 .. p8}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;Landroid/view/View;IIIII)V

    return-void
.end method

.method public onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;Landroid/view/View;IIIII)V
    .locals 6

    if-gez p7, :cond_0

    .line 793
    invoke-virtual {p2}, Lcom/narvii/nested/NVAppBarLayout;->getDownNestedScrollRange()I

    move-result p4

    neg-int v4, p4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p7

    .line 792
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/nested/behavior/HeaderBehavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    .line 795
    :cond_0
    invoke-direct {p0, p7, p2, p3, p8}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->stopNestedScrollIfNeeded(ILcom/narvii/nested/NVAppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    .line 707
    check-cast p2, Lcom/narvii/nested/NVAppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;Landroid/os/Parcelable;)V
    .locals 1

    .line 1235
    instance-of v0, p3, Lcom/narvii/nested/NVAppBarLayout$Behavior$SavedState;

    if-eqz v0, :cond_0

    .line 1236
    check-cast p3, Lcom/narvii/nested/NVAppBarLayout$Behavior$SavedState;

    .line 1237
    invoke-virtual {p3}, Landroid/support/v4/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 1238
    iget p1, p3, Lcom/narvii/nested/NVAppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    iput p1, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 1239
    iget p1, p3, Lcom/narvii/nested/NVAppBarLayout$Behavior$SavedState;->firstVisibleChildPercentageShown:F

    iput p1, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutPerc:F

    .line 1240
    iget-boolean p1, p3, Lcom/narvii/nested/NVAppBarLayout$Behavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    iput-boolean p1, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutIsMinHeight:Z

    goto :goto_0

    .line 1242
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    const/4 p1, -0x1

    .line 1243
    iput p1, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    :goto_0
    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 0

    .line 707
    check-cast p2, Lcom/narvii/nested/NVAppBarLayout;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)Landroid/os/Parcelable;
    .locals 7

    .line 1210
    invoke-super {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object p1

    .line 1211
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result v0

    .line 1214
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 1215
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1216
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v0

    .line 1218
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v6, v0

    if-gtz v6, :cond_1

    if-ltz v5, :cond_1

    .line 1219
    new-instance v0, Lcom/narvii/nested/NVAppBarLayout$Behavior$SavedState;

    invoke-direct {v0, p1}, Lcom/narvii/nested/NVAppBarLayout$Behavior$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1220
    iput v3, v0, Lcom/narvii/nested/NVAppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    .line 1222
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2}, Lcom/narvii/nested/NVAppBarLayout;->getTopInset()I

    move-result p2

    add-int/2addr p1, p2

    if-ne v5, p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, v0, Lcom/narvii/nested/NVAppBarLayout$Behavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    int-to-float p1, v5

    .line 1223
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, v0, Lcom/narvii/nested/NVAppBarLayout$Behavior$SavedState;->firstVisibleChildPercentageShown:F

    return-object v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public bridge synthetic onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 707
    check-cast p2, Lcom/narvii/nested/NVAppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    and-int/lit8 p4, p5, 0x2

    if-eqz p4, :cond_0

    .line 750
    invoke-virtual {p2}, Lcom/narvii/nested/NVAppBarLayout;->hasScrollableChildren()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 751
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 753
    iget-object p2, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1

    .line 755
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 p2, 0x0

    .line 759
    iput-object p2, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    return p1
.end method

.method public bridge synthetic onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 707
    check-cast p2, Lcom/narvii/nested/NVAppBarLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;Landroid/view/View;I)V
    .locals 0

    if-nez p4, :cond_0

    .line 813
    invoke-direct {p0, p1, p2}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->snapToChildIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V

    .line 817
    :cond_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setDragCallback(Lcom/narvii/nested/NVAppBarLayout$Behavior$DragCallback;)V
    .locals 0

    .line 826
    iput-object p1, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;->mOnDragCallback:Lcom/narvii/nested/NVAppBarLayout$Behavior$DragCallback;

    return-void
.end method

.method public bridge synthetic setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 0

    .line 707
    check-cast p2, Lcom/narvii/nested/NVAppBarLayout;

    invoke-virtual/range {p0 .. p5}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;III)I

    move-result p1

    return p1
.end method

.method public setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;III)I
    .locals 8

    .line 1046
    invoke-virtual {p0}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p4, :cond_3

    if-lt v0, p4, :cond_3

    if-gt v0, p5, :cond_3

    .line 1052
    invoke-static {p3, p4, p5}, Landroid/support/v4/math/MathUtils;->clamp(III)I

    move-result v5

    if-eq v0, v5, :cond_4

    .line 1054
    invoke-virtual {p2}, Lcom/narvii/nested/NVAppBarLayout;->hasChildWithInterpolator()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1055
    invoke-direct {p0, p2, v5}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->interpolateOffset(Lcom/narvii/nested/NVAppBarLayout;I)I

    move-result p3

    goto :goto_0

    :cond_0
    move p3, v5

    .line 1058
    :goto_0
    invoke-virtual {p0, p3}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->setTopAndBottomOffset(I)Z

    move-result p4

    sub-int v1, v0, v5

    sub-int p3, v5, p3

    .line 1063
    iput p3, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;->mOffsetDelta:I

    if-nez p4, :cond_1

    .line 1065
    invoke-virtual {p2}, Lcom/narvii/nested/NVAppBarLayout;->hasChildWithInterpolator()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1070
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    .line 1074
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/narvii/nested/NVAppBarLayout;->dispatchOffsetUpdates(I)V

    if-ge v5, v0, :cond_2

    const/4 p3, -0x1

    const/4 v6, -0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x1

    const/4 v6, 0x1

    :goto_1
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 1077
    invoke-direct/range {v2 .. v7}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->updateAppBarLayoutDrawableState(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IIZ)V

    goto :goto_2

    .line 1082
    :cond_3
    iput v1, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;->mOffsetDelta:I

    :cond_4
    :goto_2
    return v1
.end method
