.class public Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;
.super Lcom/narvii/widget/HorizontalRecyclerView;
.source "SourceFile"


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

.field private linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listener:Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$IPositionChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/HorizontalRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    const-wide/16 p1, 0x1388

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->delay:J

    .line 8
    const/4 p1, -0x1

    .line 9
    .line 10
    iput p1, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->currentPos:I

    .line 11
    const/4 p1, 0x0

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->listener:Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$IPositionChangeListener;

    .line 14
    .line 15
    new-instance p1, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$1;

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$1;-><init>(Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;)V

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->autoScroller:Ljava/lang/Runnable;

    .line 21
    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->currentPos:I

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    const/4 v2, 0x3

    .line 11
    .line 12
    if-eq v0, v2, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0, v1}, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->setAutoScroll(Z)V

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->setAutoScroll(Z)V

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-super {p0, p1}, Lcom/narvii/widget/HorizontalRecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method public getListener()Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$IPositionChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->listener:Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$IPositionChangeListener;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    .line 4
    .line 5
    iget v0, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->currentPos:I

    .line 6
    const/4 v1, -0x1

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->listener:Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$IPositionChangeListener;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget v1, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->currentPos:I

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1}, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$IPositionChangeListener;->onCurrPositionChanged(I)V

    .line 21
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/widget/recycleview/NVRecyclerView;->onDetachedFromWindow()V

    .line 4
    return-void
.end method

.method public setAutoScroll(Z)V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->autoScroll:Z

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->autoScroll:Z

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->autoScroller:Ljava/lang/Runnable;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->autoScroller:Ljava/lang/Runnable;

    .line 19
    .line 20
    iget-wide v0, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->delay:J

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->autoScroller:Ljava/lang/Runnable;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    :goto_0
    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/widget/LinearLayoutManagerWithSmoothScroller;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, v0, v1, v1}, Lcom/narvii/widget/LinearLayoutManagerWithSmoothScroller;-><init>(Landroid/content/Context;IZ)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 13
    .line 14
    .line 15
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 16
    return-void
.end method

.method public setPositionChangeListener(Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$IPositionChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->listener:Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$IPositionChangeListener;

    return-void
.end method
