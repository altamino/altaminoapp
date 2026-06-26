.class public Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;
.super Lcom/narvii/widget/HorizontalRecyclerView;
.source "AutoScrollHorizontalRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$IPositionChangeListener;
    }
.end annotation


# instance fields
.field public autoScroll:Z

.field private final autoScroller:Ljava/lang/Runnable;

.field private currentPos:I

.field public delay:J

.field private linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private listener:Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$IPositionChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/HorizontalRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x1388

    .line 17
    iput-wide p1, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->delay:J

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->currentPos:I

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->listener:Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$IPositionChangeListener;

    .line 25
    new-instance p1, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$1;

    invoke-direct {p1, p0}, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$1;-><init>(Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;)V

    iput-object p1, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->autoScroller:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;)Landroid/support/v7/widget/LinearLayoutManager;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$102(Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;I)I
    .locals 0

    .line 15
    iput p1, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->currentPos:I

    return p1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p0, v1}, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->setAutoScroll(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, v0}, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->setAutoScroll(Z)V

    .line 90
    :goto_0
    invoke-super {p0, p1}, Lcom/narvii/widget/HorizontalRecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getListener()Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$IPositionChangeListener;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->listener:Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$IPositionChangeListener;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 42
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onAttachedToWindow()V

    .line 43
    iget v0, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->currentPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 44
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 45
    iget-object v0, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->listener:Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$IPositionChangeListener;

    if-eqz v0, :cond_0

    .line 46
    iget v1, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->currentPos:I

    invoke-interface {v0, v1}, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$IPositionChangeListener;->onCurrPositionChanged(I)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 53
    invoke-super {p0}, Lcom/narvii/widget/recycleview/NVRecyclerView;->onDetachedFromWindow()V

    return-void
.end method

.method public setAutoScroll(Z)V
    .locals 2

    .line 57
    iget-boolean v0, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->autoScroll:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 60
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->autoScroll:Z

    if-eqz p1, :cond_1

    .line 62
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->autoScroller:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 63
    iget-object p1, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->autoScroller:Ljava/lang/Runnable;

    iget-wide v0, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->delay:J

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 65
    :cond_1
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->autoScroller:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 2

    .line 75
    new-instance p1, Lcom/narvii/widget/LinearLayoutManagerWithSmoothScroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1}, Lcom/narvii/widget/LinearLayoutManagerWithSmoothScroller;-><init>(Landroid/content/Context;IZ)V

    iput-object p1, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public setPositionChangeListener(Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$IPositionChangeListener;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->listener:Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$IPositionChangeListener;

    return-void
.end method
