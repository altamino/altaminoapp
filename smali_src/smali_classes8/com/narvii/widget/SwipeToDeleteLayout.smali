.class public Lcom/narvii/widget/SwipeToDeleteLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p2, 0x1

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->swipable:Z

    .line 7
    .line 8
    const/high16 p2, 0x7fc00000    # Float.NaN

    .line 9
    .line 10
    iput p2, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->downX:F

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 18
    move-result p2

    .line 19
    .line 20
    iput p2, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->touchSlop:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    .line 24
    move-result p1

    .line 25
    .line 26
    mul-int/lit8 p1, p1, 0x2

    .line 27
    .line 28
    iput p1, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->edgeSlop:I

    .line 29
    return-void
.end method

.method private releaseTouch(IZ)V
    .locals 2

    .line 1
    .line 2
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 3
    .line 4
    iput v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->downX:F

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/widget/SwipeToDeleteLayout;->getRightButton()Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 15
    move-result v0

    .line 16
    mul-int/2addr p1, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move p1, v1

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/SwipeToDeleteLayout;->updateTranslationX(IZ)V

    .line 22
    .line 23
    iput-boolean v1, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->intercepted:Z

    .line 24
    .line 25
    iput-boolean v1, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->resetTranslation:Z

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->disallowIntercept:Z

    .line 28
    return-void
.end method

.method private updateTranslationX(IZ)V
    .locals 7

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->translationX:I

    .line 3
    .line 4
    if-eq v0, p1, :cond_6

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->edgeSlop:I

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v2

    .line 13
    .line 14
    :goto_0
    iput p1, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->translationX:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    move-result v1

    .line 19
    .line 20
    :goto_1
    if-ge v2, v1, :cond_6

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/widget/SwipeToDeleteLayout;->getRightButton()Landroid/view/View;

    .line 28
    move-result-object v4

    .line 29
    .line 30
    iget v5, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->edgeSlop:I

    .line 31
    .line 32
    if-le p1, v5, :cond_1

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    move v5, p1

    .line 35
    .line 36
    :goto_2
    if-ne v3, v4, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 40
    move-result v4

    .line 41
    neg-int v4, v4

    .line 42
    .line 43
    if-ge v5, v4, :cond_3

    .line 44
    move v5, v4

    .line 45
    goto :goto_3

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 49
    move-result v4

    .line 50
    neg-int v6, v4

    .line 51
    .line 52
    if-ge v5, v6, :cond_3

    .line 53
    add-int/2addr v5, v4

    .line 54
    .line 55
    div-int/lit8 v5, v5, 0x3

    .line 56
    add-int/2addr v5, v6

    .line 57
    .line 58
    :cond_3
    :goto_3
    if-eqz p2, :cond_5

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 62
    move-result-object v3

    .line 63
    int-to-float v4, v5

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 67
    move-result-object v3

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    .line 72
    .line 73
    const/high16 v5, 0x40800000    # 4.0f

    .line 74
    .line 75
    .line 76
    invoke-direct {v4, v5}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 80
    goto :goto_4

    .line 81
    .line 82
    :cond_4
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    .line 83
    .line 84
    .line 85
    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 89
    goto :goto_4

    .line 90
    :cond_5
    int-to-float v4, v5

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 94
    .line 95
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 96
    goto :goto_1

    .line 97
    :cond_6
    return-void
.end method


# virtual methods
.method protected getRightButton()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    move-result v0

    .line 11
    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->swipable:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    if-eq v0, v2, :cond_2

    .line 20
    const/4 v3, 0x2

    .line 21
    .line 22
    if-eq v0, v3, :cond_1

    .line 23
    const/4 v2, 0x3

    .line 24
    .line 25
    if-eq v0, v2, :cond_2

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->disallowIntercept:Z

    .line 29
    .line 30
    if-nez v0, :cond_6

    .line 31
    .line 32
    iget v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->downX:F

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-nez v0, :cond_6

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 42
    move-result v0

    .line 43
    .line 44
    iget v1, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->downX:F

    .line 45
    sub-float/2addr v0, v1

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 49
    move-result v0

    .line 50
    .line 51
    iget v1, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->touchSlop:I

    .line 52
    int-to-float v1, v1

    .line 53
    .line 54
    cmpl-float v0, v0, v1

    .line 55
    .line 56
    if-lez v0, :cond_6

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 60
    move-result p1

    .line 61
    .line 62
    iput p1, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->downX:F

    .line 63
    .line 64
    iput-boolean v2, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->intercepted:Z

    .line 65
    .line 66
    .line 67
    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 68
    return v2

    .line 69
    .line 70
    :cond_2
    iget v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->downX:F

    .line 71
    .line 72
    .line 73
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 74
    move-result v0

    .line 75
    .line 76
    if-nez v0, :cond_6

    .line 77
    .line 78
    .line 79
    invoke-direct {p0, v1, v1}, Lcom/narvii/widget/SwipeToDeleteLayout;->releaseTouch(IZ)V

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_3
    iget v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->translationX:I

    .line 83
    .line 84
    if-eqz v0, :cond_5

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/narvii/widget/SwipeToDeleteLayout;->getRightButton()Landroid/view/View;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 94
    move-result v3

    .line 95
    int-to-float v3, v3

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    .line 99
    move-result v0

    .line 100
    add-float/2addr v3, v0

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 104
    move-result p1

    .line 105
    .line 106
    cmpl-float p1, p1, v3

    .line 107
    .line 108
    if-lez p1, :cond_4

    .line 109
    .line 110
    iput-boolean v2, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->resetTranslation:Z

    .line 111
    return v1

    .line 112
    .line 113
    .line 114
    :cond_4
    invoke-direct {p0, v1, v2}, Lcom/narvii/widget/SwipeToDeleteLayout;->releaseTouch(IZ)V

    .line 115
    .line 116
    iput-boolean v2, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->resetTranslation:Z

    .line 117
    return v2

    .line 118
    .line 119
    .line 120
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 121
    move-result v0

    .line 122
    .line 123
    iput v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->downX:F

    .line 124
    .line 125
    .line 126
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 127
    move-result p1

    .line 128
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/widget/SwipeToDeleteLayout;->getRightButton()Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    sub-int/2addr p4, p2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 14
    move-result p2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 18
    move-result p3

    .line 19
    add-int/2addr p3, p4

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 23
    move-result p5

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p4, p2, p3, p5}, Landroid/view/View;->layout(IIII)V

    .line 27
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->swipable:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    if-eqz v0, :cond_9

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    if-eq v0, v1, :cond_5

    .line 20
    const/4 v3, 0x2

    .line 21
    .line 22
    if-eq v0, v3, :cond_2

    .line 23
    const/4 p1, 0x3

    .line 24
    .line 25
    if-eq v0, p1, :cond_1

    .line 26
    return v1

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-direct {p0, v2, v2}, Lcom/narvii/widget/SwipeToDeleteLayout;->releaseTouch(IZ)V

    .line 30
    return v1

    .line 31
    .line 32
    :cond_2
    iget v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->downX:F

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-nez v0, :cond_4

    .line 39
    .line 40
    iget-boolean v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->resetTranslation:Z

    .line 41
    .line 42
    if-nez v0, :cond_4

    .line 43
    .line 44
    iget-boolean v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->intercepted:Z

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 50
    move-result p1

    .line 51
    .line 52
    iget v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->downX:F

    .line 53
    sub-float/2addr p1, v0

    .line 54
    float-to-int p1, p1

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p1, v2}, Lcom/narvii/widget/SwipeToDeleteLayout;->updateTranslationX(IZ)V

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_3
    iget-boolean v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->disallowIntercept:Z

    .line 61
    .line 62
    if-nez v0, :cond_4

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 66
    move-result v0

    .line 67
    .line 68
    iget v2, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->downX:F

    .line 69
    sub-float/2addr v0, v2

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 73
    move-result v0

    .line 74
    .line 75
    iget v2, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->touchSlop:I

    .line 76
    int-to-float v2, v2

    .line 77
    .line 78
    cmpl-float v0, v0, v2

    .line 79
    .line 80
    if-lez v0, :cond_4

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 84
    move-result p1

    .line 85
    .line 86
    iput p1, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->downX:F

    .line 87
    .line 88
    iput-boolean v1, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->intercepted:Z

    .line 89
    .line 90
    .line 91
    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 92
    :cond_4
    :goto_0
    return v1

    .line 93
    .line 94
    :cond_5
    iget-boolean v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->intercepted:Z

    .line 95
    .line 96
    if-eqz v0, :cond_8

    .line 97
    .line 98
    iget v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->downX:F

    .line 99
    .line 100
    .line 101
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 102
    move-result v0

    .line 103
    .line 104
    if-nez v0, :cond_8

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 108
    move-result p1

    .line 109
    .line 110
    iget v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->downX:F

    .line 111
    sub-float/2addr p1, v0

    .line 112
    .line 113
    iget v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->touchSlop:I

    .line 114
    .line 115
    mul-int/lit8 v0, v0, -0x2

    .line 116
    int-to-float v0, v0

    .line 117
    .line 118
    cmpg-float v0, p1, v0

    .line 119
    .line 120
    if-gez v0, :cond_6

    .line 121
    const/4 p1, -0x1

    .line 122
    .line 123
    .line 124
    invoke-direct {p0, p1, v1}, Lcom/narvii/widget/SwipeToDeleteLayout;->releaseTouch(IZ)V

    .line 125
    goto :goto_1

    .line 126
    .line 127
    :cond_6
    iget v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->edgeSlop:I

    .line 128
    int-to-float v0, v0

    .line 129
    .line 130
    cmpl-float p1, p1, v0

    .line 131
    .line 132
    if-ltz p1, :cond_7

    .line 133
    .line 134
    .line 135
    invoke-direct {p0, v2, v1}, Lcom/narvii/widget/SwipeToDeleteLayout;->releaseTouch(IZ)V

    .line 136
    goto :goto_1

    .line 137
    .line 138
    .line 139
    :cond_7
    invoke-direct {p0, v2, v1}, Lcom/narvii/widget/SwipeToDeleteLayout;->releaseTouch(IZ)V

    .line 140
    goto :goto_1

    .line 141
    .line 142
    .line 143
    :cond_8
    invoke-direct {p0, v2, v2}, Lcom/narvii/widget/SwipeToDeleteLayout;->releaseTouch(IZ)V

    .line 144
    :goto_1
    return v1

    .line 145
    .line 146
    :cond_9
    iget-boolean v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->intercepted:Z

    .line 147
    .line 148
    if-nez v0, :cond_a

    .line 149
    .line 150
    iget-boolean v0, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->resetTranslation:Z

    .line 151
    .line 152
    if-nez v0, :cond_a

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 156
    move-result p1

    .line 157
    .line 158
    iput p1, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->downX:F

    .line 159
    :cond_a
    return v1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->disallowIntercept:Z

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 6
    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 1

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/widget/SwipeToDeleteLayout;->swipable:Z

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/narvii/widget/SwipeToDeleteLayout;->setSwipeRight(ZZ)V

    .line 10
    :cond_0
    return-void
.end method

.method public setSwipeRight(ZZ)V
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    const/4 p1, -0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/SwipeToDeleteLayout;->releaseTouch(IZ)V

    .line 9
    return-void
.end method
