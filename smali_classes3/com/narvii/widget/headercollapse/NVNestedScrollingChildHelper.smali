.class public Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;
.super Ljava/lang/Object;
.source "NVNestedScrollingChildHelper.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingChild;


# instance fields
.field private mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field private mLastY:I

.field private mNestedOffsetY:I

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private final target:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 18
    iput-object v1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mScrollOffset:[I

    new-array v0, v0, [I

    .line 19
    iput-object v0, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mScrollConsumed:[I

    .line 24
    iput-object p1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->target:Landroid/view/View;

    .line 25
    new-instance p1, Landroid/support/v4/view/NestedScrollingChildHelper;

    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->target:Landroid/view/View;

    invoke-direct {p1, v0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 26
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->target:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 106
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    return p1
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 12

    .line 30
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 31
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 33
    iput v2, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mNestedOffsetY:I

    .line 35
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 36
    iget v4, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mNestedOffsetY:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 p1, 0x2

    if-eqz v1, :cond_5

    const/4 v4, 0x1

    if-eq v1, v4, :cond_4

    if-eq v1, p1, :cond_1

    const/4 p1, 0x3

    if-eq v1, p1, :cond_4

    const/4 p1, 0x5

    if-eq v1, p1, :cond_4

    goto/16 :goto_0

    .line 39
    :cond_1
    iget p1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mLastY:I

    sub-int/2addr p1, v3

    .line 41
    iget-object v1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mScrollConsumed:[I

    iget-object v6, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mScrollOffset:[I

    invoke-virtual {p0, v2, p1, v1, v6}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    iget-object v1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mScrollConsumed:[I

    aget v1, v1, v4

    sub-int/2addr p1, v1

    .line 43
    iget-object v1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mScrollOffset:[I

    aget v1, v1, v4

    int-to-float v1, v1

    invoke-virtual {v0, v5, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 44
    iget v1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mNestedOffsetY:I

    iget-object v6, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mScrollOffset:[I

    aget v6, v6, v4

    add-int/2addr v1, v6

    iput v1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mNestedOffsetY:I

    .line 47
    :cond_2
    iget-object v1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mScrollOffset:[I

    aget v1, v1, v4

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mLastY:I

    .line 49
    iget-object v1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->target:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    add-int v3, v1, p1

    .line 50
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v8, v2, v1

    sub-int v10, p1, v8

    if-gez p1, :cond_3

    .line 55
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->target:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    if-nez p1, :cond_3

    const/4 v7, 0x0

    const/4 v9, 0x0

    iget-object v11, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mScrollOffset:[I

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 56
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mScrollOffset:[I

    aget p1, p1, v4

    int-to-float p1, p1

    invoke-virtual {v0, v5, p1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 57
    iget p1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mNestedOffsetY:I

    iget-object v1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mScrollOffset:[I

    aget v2, v1, v4

    add-int/2addr p1, v2

    iput p1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mNestedOffsetY:I

    .line 58
    iget p1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mLastY:I

    aget v1, v1, v4

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mLastY:I

    .line 61
    :cond_3
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 72
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->stopNestedScroll()V

    goto :goto_0

    .line 64
    :cond_5
    iput v3, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mLastY:I

    .line 66
    invoke-virtual {p0, p1}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->startNestedScroll(I)Z

    :goto_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method
