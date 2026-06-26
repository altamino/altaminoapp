.class Lcom/narvii/widget/Gallery$FlingRunnable;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastFlingX:I

.field private final mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/narvii/widget/Gallery;


# direct methods
.method public constructor <init>(Lcom/narvii/widget/Gallery;)V
    .locals 1

    .line 1460
    iput-object p1, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1461
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/widget/Gallery$FlingRunnable;Z)V
    .locals 0

    .line 1446
    invoke-direct {p0, p1}, Lcom/narvii/widget/Gallery$FlingRunnable;->endFling(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;
    .locals 0

    .line 1446
    iget-object p0, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method private endFling(Z)V
    .locals 2

    .line 1502
    iget-object v0, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    if-eqz p1, :cond_0

    .line 1504
    iget-object p1, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    invoke-static {p1}, Lcom/narvii/widget/Gallery;->access$500(Lcom/narvii/widget/Gallery;)V

    :cond_0
    return-void
.end method

.method private startCommon()V
    .locals 1

    .line 1467
    iget-object v0, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1510
    iget-object v0, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    iget v1, v0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1511
    invoke-direct {p0, v2}, Lcom/narvii/widget/Gallery$FlingRunnable;->endFling(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1515
    invoke-static {v0, v1}, Lcom/narvii/widget/Gallery;->access$602(Lcom/narvii/widget/Gallery;Z)Z

    .line 1517
    iget-object v0, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 1518
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    .line 1519
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 1523
    iget v3, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->mLastFlingX:I

    sub-int/2addr v3, v0

    if-lez v3, :cond_2

    .line 1528
    iget-object v4, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    invoke-static {v4}, Lcom/narvii/widget/Gallery;->access$800(Lcom/narvii/widget/Gallery;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    iget v6, v5, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/2addr v6, v5

    sub-int/2addr v6, v2

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    iget v6, v5, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    :goto_0
    invoke-static {v4, v6}, Lcom/narvii/widget/Gallery;->access$702(Lcom/narvii/widget/Gallery;I)I

    .line 1532
    iget-object v4, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_2

    .line 1535
    :cond_2
    iget-object v4, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    invoke-static {v4}, Lcom/narvii/widget/Gallery;->access$800(Lcom/narvii/widget/Gallery;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    iget v5, v5, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    iget v6, v5, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 1536
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/2addr v6, v5

    add-int/lit8 v5, v6, -0x1

    .line 1535
    :goto_1
    invoke-static {v4, v5}, Lcom/narvii/widget/Gallery;->access$702(Lcom/narvii/widget/Gallery;I)I

    .line 1539
    iget-object v4, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    neg-int v4, v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1542
    :goto_2
    iget-object v4, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    invoke-virtual {v4, v3}, Lcom/narvii/widget/Gallery;->trackMotionScroll(I)V

    if-eqz v1, :cond_4

    .line 1544
    iget-object v1, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    invoke-static {v1}, Lcom/narvii/widget/Gallery;->access$600(Lcom/narvii/widget/Gallery;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1545
    iput v0, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 1546
    iget-object v0, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 1548
    :cond_4
    invoke-direct {p0, v2}, Lcom/narvii/widget/Gallery$FlingRunnable;->endFling(Z)V

    :goto_3
    return-void
.end method

.method public startUsingDistance(I)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1485
    :cond_0
    invoke-direct {p0}, Lcom/narvii/widget/Gallery$FlingRunnable;->startCommon()V

    const/4 v0, 0x0

    .line 1487
    iput v0, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 1488
    iget-object v1, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    neg-int v4, p1

    const/4 v5, 0x0

    iget-object p1, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    invoke-static {p1}, Lcom/narvii/widget/Gallery;->access$400(Lcom/narvii/widget/Gallery;)I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1489
    iget-object p1, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startUsingVelocity(I)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 1473
    :cond_0
    invoke-direct {p0}, Lcom/narvii/widget/Gallery$FlingRunnable;->startCommon()V

    if-gez p1, :cond_1

    const v0, 0x7fffffff

    const v2, 0x7fffffff

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1476
    :goto_0
    iput v2, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 1477
    iget-object v1, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7fffffff

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v4, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1479
    iget-object p1, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop(Z)V
    .locals 1

    .line 1493
    iget-object v0, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1494
    invoke-direct {p0, p1}, Lcom/narvii/widget/Gallery$FlingRunnable;->endFling(Z)V

    return-void
.end method
