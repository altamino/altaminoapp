.class public Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/NestedScrollingChild;
.implements Landroidx/core/view/NestedScrollingParent;


# instance fields
.field gestureDetector:Landroid/view/GestureDetector;

.field private hasIntercepted:Z

.field private nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

.field private nestedParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field private pointerDownDx:F

.field private pointerDownDy:F

.field private shouldInterceptScrollEvent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->shouldInterceptScrollEvent:Z

    .line 7
    .line 8
    new-instance p2, Landroid/view/GestureDetector;

    .line 9
    .line 10
    new-instance v0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout$1;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout$1;-><init>(Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    .line 17
    .line 18
    iput-object p2, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->gestureDetector:Landroid/view/GestureDetector;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 22
    .line 23
    new-instance p2, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, p0}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    .line 27
    .line 28
    iput-object p2, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 29
    .line 30
    new-instance p2, Landroidx/core/view/NestedScrollingParentHelper;

    .line 31
    .line 32
    .line 33
    invoke-direct {p2, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    .line 34
    .line 35
    iput-object p2, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->nestedParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->setNestedScrollingEnabled(Z)V

    .line 39
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->shouldInterceptScrollEvent:Z

    return p0
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

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
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->shouldInterceptScrollEvent:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

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
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 19
    move-result v0

    .line 20
    .line 21
    iput v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->pointerDownDy:F

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 25
    move-result v0

    .line 26
    .line 27
    iput v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->pointerDownDx:F

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x2

    .line 34
    const/4 v2, 0x0

    .line 35
    const/4 v3, 0x1

    .line 36
    .line 37
    if-ne v0, v1, :cond_5

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 41
    move-result v0

    .line 42
    .line 43
    iget v1, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->pointerDownDy:F

    .line 44
    sub-float/2addr v0, v1

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 48
    move-result v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 52
    move-result v1

    .line 53
    .line 54
    iget v4, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->pointerDownDx:F

    .line 55
    sub-float/2addr v1, v4

    .line 56
    .line 57
    .line 58
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 59
    move-result v1

    .line 60
    const/4 v4, 0x0

    .line 61
    .line 62
    cmpl-float v5, v1, v4

    .line 63
    .line 64
    if-nez v5, :cond_2

    .line 65
    .line 66
    cmpl-float v6, v0, v4

    .line 67
    .line 68
    if-nez v6, :cond_2

    .line 69
    .line 70
    .line 71
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 72
    move-result p1

    .line 73
    return p1

    .line 74
    .line 75
    :cond_2
    cmpl-float v6, v1, v0

    .line 76
    .line 77
    if-ltz v6, :cond_3

    .line 78
    .line 79
    if-lez v5, :cond_3

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 83
    goto :goto_0

    .line 84
    .line 85
    :cond_3
    cmpl-float v1, v0, v1

    .line 86
    .line 87
    if-lez v1, :cond_4

    .line 88
    .line 89
    cmpl-float v0, v0, v4

    .line 90
    .line 91
    if-lez v0, :cond_4

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    .line 98
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 99
    goto :goto_0

    .line 100
    .line 101
    .line 102
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    .line 106
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 107
    goto :goto_0

    .line 108
    .line 109
    .line 110
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 111
    move-result v0

    .line 112
    .line 113
    if-eq v0, v3, :cond_6

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 117
    move-result v0

    .line 118
    const/4 v1, 0x3

    .line 119
    .line 120
    if-ne v0, v1, :cond_7

    .line 121
    .line 122
    .line 123
    :cond_6
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 124
    .line 125
    .line 126
    :cond_7
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 127
    move-result p1

    .line 128
    return p1
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->nestedParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->a()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->hasNestedScrollingParent()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->shouldInterceptScrollEvent:Z

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
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->gestureDetector:Landroid/view/GestureDetector;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    const/4 p1, 0x1

    .line 24
    .line 25
    iput-boolean p1, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->hasIntercepted:Z

    .line 26
    return p1

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 30
    move-result p1

    .line 31
    return p1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2, p3, p4}, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->dispatchNestedFling(FFZ)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->dispatchNestedPreFling(FF)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->dispatchNestedPreScroll(II[I[I)Z

    .line 5
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move v1, p2

    .line 4
    move v2, p3

    .line 5
    move v3, p4

    .line 6
    move v4, p5

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->dispatchNestedScroll(IIII[I)Z

    .line 10
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->nestedParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->b(Landroid/view/View;Landroid/view/View;I)V

    .line 6
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    iget-boolean p1, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->shouldInterceptScrollEvent:Z

    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->hasIntercepted:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->shouldInterceptScrollEvent:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->nestedParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingParentHelper;->d(Landroid/view/View;)V

    .line 14
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->shouldInterceptScrollEvent:Z

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
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 15
    const/4 p1, 0x1

    .line 16
    return p1
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 6
    return-void
.end method

.method public setShouldInterceptScrollEvent(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->shouldInterceptScrollEvent:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->setNestedScrollingEnabled(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 9
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->startNestedScroll(I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->stopNestedScroll()V

    .line 6
    return-void
.end method
