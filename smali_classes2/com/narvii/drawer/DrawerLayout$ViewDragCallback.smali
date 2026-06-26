.class Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewDragCallback"
.end annotation


# instance fields
.field private final mAbsGravity:I

.field private final mClosePeekRunnable:Ljava/lang/Runnable;

.field private mDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private final mPeekRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/narvii/drawer/DrawerLayout;


# direct methods
.method public constructor <init>(Lcom/narvii/drawer/DrawerLayout;I)V
    .locals 0

    .line 2047
    iput-object p1, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    .line 2035
    new-instance p1, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback$1;

    invoke-direct {p1, p0}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback$1;-><init>(Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;)V

    iput-object p1, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    .line 2040
    new-instance p1, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback$2;

    invoke-direct {p1, p0}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback$2;-><init>(Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;)V

    iput-object p1, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->mClosePeekRunnable:Ljava/lang/Runnable;

    .line 2048
    iput p2, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;JJ)V
    .locals 0

    .line 2031
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->peekAndClose(JJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;)V
    .locals 0

    .line 2031
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->peekDrawer()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;)V
    .locals 0

    .line 2031
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->closePeek()V

    return-void
.end method

.method private closeOtherDrawer()V
    .locals 2

    .line 2113
    iget v0, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v1, 0x5

    .line 2114
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    invoke-virtual {v0, v1}, Lcom/narvii/drawer/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2116
    iget-object v1, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    invoke-virtual {v1, v0}, Lcom/narvii/drawer/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private closePeek()V
    .locals 6

    .line 2179
    iget v0, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2181
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    invoke-virtual {v0, v1}, Lcom/narvii/drawer/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2182
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 2184
    :cond_2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/narvii/drawer/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 2185
    iget-object v1, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    .line 2187
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 2188
    iget-boolean v4, v3, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->isPeeking:Z

    if-eqz v4, :cond_3

    .line 2189
    iget-object v4, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4, v0, v1, v5}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 2190
    iput-boolean v2, v3, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->isPeeking:Z

    .line 2191
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerLayout;->requestLayout()V

    .line 2193
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    return-void
.end method

.method private isOtherDrawerOpened()Z
    .locals 2

    .line 2107
    iget v0, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v1, 0x5

    .line 2108
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    invoke-virtual {v0, v1}, Lcom/narvii/drawer/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2109
    iget-object v1, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    invoke-virtual {v1, v0}, Lcom/narvii/drawer/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private peekAndClose(JJ)V
    .locals 2

    .line 2197
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    iget-object v1, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2198
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    iget-object v1, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->mClosePeekRunnable:Ljava/lang/Runnable;

    add-long/2addr p1, p3

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private peekDrawer()V
    .locals 6

    .line 2152
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    move-result v0

    .line 2153
    iget v1, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 2155
    iget-object v5, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    invoke-virtual {v5, v4}, Lcom/narvii/drawer/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2156
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v3

    neg-int v3, v3

    :cond_1
    add-int/2addr v3, v0

    goto :goto_1

    .line 2158
    :cond_2
    iget-object v3, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/narvii/drawer/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v4

    .line 2159
    iget-object v3, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    :goto_1
    if-eqz v4, :cond_5

    if-eqz v1, :cond_3

    .line 2162
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt v0, v3, :cond_4

    :cond_3
    if-nez v1, :cond_5

    .line 2163
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v0

    if-le v0, v3, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    .line 2164
    invoke-virtual {v0, v4}, Lcom/narvii/drawer/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_5

    .line 2165
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 2166
    iget-object v1, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v1, v4, v3, v5}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 2167
    iput-boolean v2, v0, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->isPeeking:Z

    .line 2168
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerLayout;->requestLayout()V

    .line 2170
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->closeOtherDrawer()V

    .line 2172
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerLayout;->cancelChildViewTouch()V

    :cond_5
    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 1

    .line 2239
    iget-object p3, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    const/4 v0, 0x3

    invoke-virtual {p3, p1, v0}, Lcom/narvii/drawer/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2240
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    neg-int p1, p1

    const/4 p3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    .line 2242
    :cond_0
    iget-object p3, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    .line 2243
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int p1, p3, p1

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 0

    .line 2249
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    return p1
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1

    .line 2234
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    invoke-virtual {v0, p1}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onEdgeDragStarted(II)V
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    .line 2217
    iget-object p1, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/narvii/drawer/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 2219
    :cond_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/narvii/drawer/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 2222
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    invoke-virtual {v0, p1}, Lcom/narvii/drawer/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_2

    .line 2223
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->isOtherDrawerOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2224
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->closeOtherDrawer()V

    .line 2225
    iget-object p1, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    goto :goto_1

    .line 2227
    :cond_1
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onEdgeLock(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onEdgeTouched(II)V
    .locals 2

    .line 2141
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->isOtherDrawerOpened()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2142
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->closeOtherDrawer()V

    .line 2143
    iget-object p1, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    goto :goto_0

    .line 2145
    :cond_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    iget-object p2, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xa0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 0

    .line 2100
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    const/4 p2, 0x0

    .line 2101
    iput-boolean p2, p1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->isPeeking:Z

    .line 2103
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->closeOtherDrawer()V

    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 3

    .line 2078
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    iget v1, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    iget-object v2, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroid/support/v4/widget/ViewDragHelper;->getCapturedView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/narvii/drawer/DrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0

    .line 2084
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    .line 2087
    iget-object p4, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    const/4 p5, 0x3

    invoke-virtual {p4, p1, p5}, Lcom/narvii/drawer/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result p4

    if-eqz p4, :cond_0

    add-int/2addr p2, p3

    int-to-float p2, p2

    goto :goto_0

    .line 2090
    :cond_0
    iget-object p4, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getWidth()I

    move-result p4

    sub-int/2addr p4, p2

    int-to-float p2, p4

    :goto_0
    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 2093
    iget-object p3, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    invoke-virtual {p3, p1, p2}, Lcom/narvii/drawer/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-nez p2, :cond_1

    const/4 p2, 0x4

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 2094
    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 2095
    iget-object p1, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerLayout;->requestLayout()V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 5

    .line 2124
    iget-object p3, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    invoke-virtual {p3, p1}, Lcom/narvii/drawer/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result p3

    .line 2125
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2128
    iget-object v1, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Lcom/narvii/drawer/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    cmpl-float v1, p2, v3

    if-gtz v1, :cond_1

    cmpl-float p2, p2, v3

    if-nez p2, :cond_0

    cmpl-float p2, p3, v2

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    neg-int p2, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    goto :goto_1

    .line 2131
    :cond_2
    iget-object v1, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    cmpg-float v4, p2, v3

    if-ltz v4, :cond_3

    cmpl-float p2, p2, v3

    if-nez p2, :cond_4

    cmpl-float p2, p3, v2

    if-lez p2, :cond_4

    :cond_3
    sub-int/2addr v1, v0

    :cond_4
    move p2, v1

    .line 2135
    :goto_1
    iget-object p3, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 2136
    iget-object p1, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerLayout;->requestLayout()V

    return-void
.end method

.method public removeCallbacks()V
    .locals 2

    .line 2056
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    iget-object v1, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2057
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    iget-object v1, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->mClosePeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDragger(Landroid/support/v4/widget/ViewDragHelper;)V
    .locals 0

    .line 2052
    iput-object p1, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 2

    .line 2064
    iget-object p2, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    invoke-virtual {p2, p1}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    iget v1, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    invoke-virtual {p2, p1, v1}, Lcom/narvii/drawer/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->this$0:Lcom/narvii/drawer/DrawerLayout;

    .line 2065
    invoke-virtual {p2, p1}, Lcom/narvii/drawer/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_1

    .line 2066
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->isOtherDrawerOpened()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2067
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerLayout$ViewDragCallback;->closeOtherDrawer()V

    return v0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method
