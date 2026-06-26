.class public Lcom/narvii/widget/SwipeToDeleteLayout;
.super Landroid/widget/FrameLayout;
.source "SwipeToDeleteLayout.java"


# instance fields
.field disallowIntercept:Z

.field downX:F

.field final edgeSlop:I

.field intercepted:Z

.field resetTranslation:Z

.field swipable:Z

.field final touchSlop:I

.field translationX:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 19
    iput-boolean p2, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->swipable:Z

    const/high16 p2, 0x7fc00000    # Float.NaN

    .line 23
    iput p2, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->downX:F

    .line 31
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->touchSlop:I

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->edgeSlop:I

    return-void
.end method

.method private releaseTouch(IZ)V
    .locals 2

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 154
    iput v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->downX:F

    .line 156
    invoke-virtual {p0}, Lcom/narvii/widget/SwipeToDeleteLayout;->getRightButton()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    mul-int p1, p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 160
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/SwipeToDeleteLayout;->updateTranslationX(IZ)V

    .line 161
    iput-boolean v1, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->intercepted:Z

    .line 162
    iput-boolean v1, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->resetTranslation:Z

    .line 163
    iput-boolean v1, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->disallowIntercept:Z

    return-void
.end method

.method private updateTranslationX(IZ)V
    .locals 7

    .line 167
    iget v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->translationX:I

    if-eq v0, p1, :cond_6

    .line 168
    iget v1, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->edgeSlop:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 169
    :goto_0
    iput p1, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->translationX:I

    .line 170
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_6

    .line 171
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 172
    invoke-virtual {p0}, Lcom/narvii/widget/SwipeToDeleteLayout;->getRightButton()Landroid/view/View;

    move-result-object v4

    .line 174
    iget v5, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->edgeSlop:I

    if-le p1, v5, :cond_1

    goto :goto_2

    :cond_1
    move v5, p1

    :goto_2
    if-ne v3, v4, :cond_2

    .line 178
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    neg-int v4, v4

    if-ge v5, v4, :cond_3

    move v5, v4

    goto :goto_3

    .line 183
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    neg-int v6, v4

    if-ge v5, v6, :cond_3

    add-int/2addr v5, v4

    .line 185
    div-int/lit8 v5, v5, 0x3

    add-int/2addr v5, v6

    :cond_3
    :goto_3
    if-eqz p2, :cond_5

    .line 189
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-float v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v0, :cond_4

    .line 191
    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    const/high16 v5, 0x40800000    # 4.0f

    invoke-direct {v4, v5}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    goto :goto_4

    .line 193
    :cond_4
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    goto :goto_4

    :cond_5
    int-to-float v4, v5

    .line 196
    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method


# virtual methods
.method protected getRightButton()Landroid/view/View;
    .locals 1

    .line 44
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 62
    iget-boolean v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->swipable:Z

    if-nez v0, :cond_0

    .line 63
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 65
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 83
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->disallowIntercept:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->downX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->downX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->touchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->downX:F

    .line 85
    iput-boolean v2, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->intercepted:Z

    .line 86
    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return v2

    .line 92
    :cond_2
    iget v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->downX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_6

    .line 93
    invoke-direct {p0, v1, v1}, Lcom/narvii/widget/SwipeToDeleteLayout;->releaseTouch(IZ)V

    goto :goto_0

    .line 67
    :cond_3
    iget v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->translationX:I

    if-eqz v0, :cond_5

    .line 68
    invoke-virtual {p0}, Lcom/narvii/widget/SwipeToDeleteLayout;->getRightButton()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 70
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    add-float/2addr v3, v0

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    cmpl-float p1, p1, v3

    if-lez p1, :cond_4

    .line 72
    iput-boolean v2, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->resetTranslation:Z

    return v1

    .line 76
    :cond_4
    invoke-direct {p0, v1, v2}, Lcom/narvii/widget/SwipeToDeleteLayout;->releaseTouch(IZ)V

    .line 77
    iput-boolean v2, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->resetTranslation:Z

    return v2

    .line 80
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->downX:F

    .line 97
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 53
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 54
    invoke-virtual {p0}, Lcom/narvii/widget/SwipeToDeleteLayout;->getRightButton()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    sub-int/2addr p4, p2

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p3, p4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p5

    invoke-virtual {p1, p4, p2, p3, p5}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 102
    iget-boolean v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->swipable:Z

    if-nez v0, :cond_0

    .line 103
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 105
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    return v1

    .line 137
    :cond_1
    invoke-direct {p0, v2, v2}, Lcom/narvii/widget/SwipeToDeleteLayout;->releaseTouch(IZ)V

    return v1

    .line 112
    :cond_2
    iget v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->downX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->resetTranslation:Z

    if-nez v0, :cond_4

    .line 113
    iget-boolean v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->intercepted:Z

    if-eqz v0, :cond_3

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->downX:F

    sub-float/2addr p1, v0

    float-to-int p1, p1

    invoke-direct {p0, p1, v2}, Lcom/narvii/widget/SwipeToDeleteLayout;->updateTranslationX(IZ)V

    goto :goto_0

    .line 115
    :cond_3
    iget-boolean v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->disallowIntercept:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->downX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->touchSlop:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->downX:F

    .line 117
    iput-boolean v1, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->intercepted:Z

    .line 118
    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    :goto_0
    return v1

    .line 123
    :cond_5
    iget-boolean v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->intercepted:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->downX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->downX:F

    sub-float/2addr p1, v0

    .line 125
    iget v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->touchSlop:I

    mul-int/lit8 v0, v0, -0x2

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_6

    const/4 p1, -0x1

    .line 126
    invoke-direct {p0, p1, v1}, Lcom/narvii/widget/SwipeToDeleteLayout;->releaseTouch(IZ)V

    goto :goto_1

    .line 127
    :cond_6
    iget v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->edgeSlop:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_7

    .line 128
    invoke-direct {p0, v2, v1}, Lcom/narvii/widget/SwipeToDeleteLayout;->releaseTouch(IZ)V

    goto :goto_1

    .line 130
    :cond_7
    invoke-direct {p0, v2, v1}, Lcom/narvii/widget/SwipeToDeleteLayout;->releaseTouch(IZ)V

    goto :goto_1

    .line 133
    :cond_8
    invoke-direct {p0, v2, v2}, Lcom/narvii/widget/SwipeToDeleteLayout;->releaseTouch(IZ)V

    :goto_1
    return v1

    .line 107
    :cond_9
    iget-boolean v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->intercepted:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->resetTranslation:Z

    if-nez v0, :cond_a

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->downX:F

    :cond_a
    return v1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->disallowIntercept:Z

    .line 146
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 1

    .line 37
    iput-boolean p1, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->swipable:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/narvii/widget/SwipeToDeleteLayout;->setSwipeRight(ZZ)V

    :cond_0
    return-void
.end method

.method public setSwipeRight(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 150
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/SwipeToDeleteLayout;->releaseTouch(IZ)V

    return-void
.end method
