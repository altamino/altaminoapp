.class public Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ScrollInterceptNestedFrameLayout.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingChild;
.implements Landroid/support/v4/view/NestedScrollingParent;


# instance fields
.field gestureDetector:Landroid/view/GestureDetector;

.field private hasIntercepted:Z

.field private nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

.field private nestedParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

.field private pointerDownDx:F

.field private pointerDownDy:F

.field private shouldInterceptScrollEvent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->shouldInterceptScrollEvent:Z

    .line 28
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout$1;

    invoke-direct {v0, p0}, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout$1;-><init>(Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;)V

    invoke-direct {p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->gestureDetector:Landroid/view/GestureDetector;

    .line 59
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 60
    new-instance p2, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    invoke-direct {p2, p0}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 61
    new-instance p2, Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {p2, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p2, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->nestedParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 62
    invoke-virtual {p0, p1}, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->shouldInterceptScrollEvent:Z

    return p0
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 197
    iget-object v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 74
    iget-boolean v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->shouldInterceptScrollEvent:Z

    if-nez v0, :cond_0

    .line 75
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->pointerDownDy:F

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->pointerDownDx:F

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_5

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->pointerDownDy:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v4, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->pointerDownDx:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v4, 0x0

    cmpl-float v5, v1, v4

    if-nez v5, :cond_2

    cmpl-float v5, v0, v4

    if-nez v5, :cond_2

    .line 85
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    cmpl-float v5, v1, v0

    if-ltz v5, :cond_3

    cmpl-float v5, v1, v4

    if-lez v5, :cond_3

    .line 88
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_3
    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_4

    .line 90
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 93
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 95
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 96
    :cond_6
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 99
    :cond_7
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->nestedParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->shouldInterceptScrollEvent:Z

    if-nez v0, :cond_0

    .line 105
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 109
    iget-object v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 110
    iput-boolean p1, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->hasIntercepted:Z

    return p1

    .line 113
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    .line 166
    invoke-virtual {p0, p2, p3, p4}, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    .line 171
    invoke-virtual {p0, p2, p3}, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0

    const/4 p1, 0x0

    .line 161
    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->dispatchNestedPreScroll(II[I[I)Z

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    .line 156
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->dispatchNestedScroll(IIII[I)Z

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->nestedParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    .line 139
    iget-boolean p1, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->shouldInterceptScrollEvent:Z

    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->hasIntercepted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->shouldInterceptScrollEvent:Z

    if-nez v0, :cond_1

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->nestedParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->shouldInterceptScrollEvent:Z

    if-nez v0, :cond_0

    .line 119
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setShouldInterceptScrollEvent(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->shouldInterceptScrollEvent:Z

    .line 68
    invoke-virtual {p0, p1}, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->setNestedScrollingEnabled(Z)V

    .line 69
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method
