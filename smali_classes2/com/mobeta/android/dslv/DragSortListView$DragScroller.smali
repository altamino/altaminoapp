.class Lcom/mobeta/android/dslv/DragSortListView$DragScroller;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobeta/android/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragScroller"
.end annotation


# static fields
.field public static final DOWN:I = 0x1

.field public static final STOP:I = -0x1

.field public static final UP:I


# instance fields
.field private dt:F

.field private dy:I

.field private mAbort:Z

.field private mCurrTime:J

.field private mFirstFooter:I

.field private mLastHeader:I

.field private mPrevTime:J

.field private mScrollSpeed:F

.field private mScrolling:Z

.field private scrollDir:I

.field private tStart:J

.field final synthetic this$0:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0

    .line 2670
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2657
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    return-void
.end method


# virtual methods
.method public getScrollDir()I
    .locals 1

    .line 2667
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->scrollDir:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public isScrolling()Z
    .locals 1

    .line 2663
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    return v0
.end method

.method public run()V
    .locals 12

    .line 2698
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mAbort:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2699
    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    return-void

    .line 2705
    :cond_0
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 2706
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    .line 2707
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    .line 2708
    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v4

    .line 2709
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v4

    iget-object v6, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 2711
    iget-object v6, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v6}, Lcom/mobeta/android/dslv/DragSortListView;->access$700(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v6

    iget-object v7, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v7}, Lcom/mobeta/android/dslv/DragSortListView;->access$1400(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v7

    iget-object v8, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v8}, Lcom/mobeta/android/dslv/DragSortListView;->access$500(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2712
    iget-object v7, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v7}, Lcom/mobeta/android/dslv/DragSortListView;->access$700(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v7

    iget-object v8, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v8}, Lcom/mobeta/android/dslv/DragSortListView;->access$1400(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v8

    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v9}, Lcom/mobeta/android/dslv/DragSortListView;->access$500(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2714
    iget v8, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->scrollDir:I

    const/4 v9, 0x1

    if-nez v8, :cond_3

    .line 2715
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2718
    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 2721
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 2722
    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    return-void

    .line 2726
    :cond_2
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v3}, Lcom/mobeta/android/dslv/DragSortListView;->access$1700(Lcom/mobeta/android/dslv/DragSortListView;)Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;

    move-result-object v3

    iget-object v6, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v6}, Lcom/mobeta/android/dslv/DragSortListView;->access$1500(Lcom/mobeta/android/dslv/DragSortListView;)F

    move-result v6

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 2727
    invoke-static {v7}, Lcom/mobeta/android/dslv/DragSortListView;->access$1600(Lcom/mobeta/android/dslv/DragSortListView;)F

    move-result v7

    div-float/2addr v6, v7

    iget-wide v7, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mPrevTime:J

    .line 2726
    invoke-interface {v3, v6, v7, v8}, Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v3

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrollSpeed:F

    goto :goto_0

    .line 2729
    :cond_3
    iget-object v7, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    sub-int v8, v2, v0

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_4

    .line 2731
    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    return-void

    :cond_4
    sub-int/2addr v3, v9

    if-ne v2, v3, :cond_5

    .line 2734
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int v7, v5, v4

    if-gt v3, v7, :cond_5

    .line 2735
    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    return-void

    .line 2739
    :cond_5
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v3}, Lcom/mobeta/android/dslv/DragSortListView;->access$1700(Lcom/mobeta/android/dslv/DragSortListView;)Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;

    move-result-object v3

    int-to-float v6, v6

    iget-object v7, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v7}, Lcom/mobeta/android/dslv/DragSortListView;->access$1800(Lcom/mobeta/android/dslv/DragSortListView;)F

    move-result v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 2740
    invoke-static {v7}, Lcom/mobeta/android/dslv/DragSortListView;->access$1900(Lcom/mobeta/android/dslv/DragSortListView;)F

    move-result v7

    div-float/2addr v6, v7

    iget-wide v7, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mPrevTime:J

    .line 2739
    invoke-interface {v3, v6, v7, v8}, Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v3

    neg-float v3, v3

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrollSpeed:F

    .line 2743
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mCurrTime:J

    .line 2744
    iget-wide v6, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mCurrTime:J

    iget-wide v10, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mPrevTime:J

    sub-long/2addr v6, v10

    long-to-float v3, v6

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->dt:F

    .line 2750
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrollSpeed:F

    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->dt:F

    mul-float v3, v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->dy:I

    .line 2753
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->dy:I

    if-ltz v3, :cond_6

    .line 2754
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->dy:I

    move v2, v0

    goto :goto_1

    :cond_6
    neg-int v5, v5

    .line 2757
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->dy:I

    .line 2761
    :goto_1
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    sub-int v0, v2, v0

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2762
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->dy:I

    add-int/2addr v3, v5

    if-nez v2, :cond_7

    if-le v3, v4, :cond_7

    move v3, v4

    .line 2769
    :cond_7
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v5, v9}, Lcom/mobeta/android/dslv/DragSortListView;->access$2002(Lcom/mobeta/android/dslv/DragSortListView;Z)Z

    .line 2771
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    sub-int/2addr v3, v4

    invoke-virtual {v5, v2, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 2772
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v3}, Lcom/mobeta/android/dslv/DragSortListView;->layoutChildren()V

    .line 2773
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidate()V

    .line 2775
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v3, v1}, Lcom/mobeta/android/dslv/DragSortListView;->access$2002(Lcom/mobeta/android/dslv/DragSortListView;Z)Z

    .line 2778
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v3, v2, v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->access$2100(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)V

    .line 2780
    iget-wide v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mCurrTime:J

    iput-wide v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mPrevTime:J

    .line 2783
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startScrolling(I)V
    .locals 2

    .line 2674
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2676
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mAbort:Z

    const/4 v0, 0x1

    .line 2677
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    .line 2678
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->tStart:J

    .line 2679
    iget-wide v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->tStart:J

    iput-wide v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mPrevTime:J

    .line 2680
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->scrollDir:I

    .line 2681
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public stopScrolling(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2687
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 2688
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mScrolling:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 2690
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->mAbort:Z

    :goto_0
    return-void
.end method
