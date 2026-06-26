.class public Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$LayoutManager;
.source "FlowLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutFrom;,
        Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;,
        Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$AlignMode;
    }
.end annotation


# static fields
.field public static final CENTER:I = 0x3

.field public static final LEFT:I = 0x1

.field public static final RIGHT:I = 0x2

.field public static final TWO_SIDE:I


# instance fields
.field private layoutHelper:Lcom/narvii/widget/recycleview/layoutmanager/ILayoutHelper;

.field private layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

.field private rowViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 35
    invoke-direct {p0, v0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    .line 39
    new-instance v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    invoke-direct {v0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 40
    new-instance v0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;

    invoke-direct {v0}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutHelper:Lcom/narvii/widget/recycleview/layoutmanager/ILayoutHelper;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->rowViews:Ljava/util/List;

    .line 42
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    iput p1, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->alignMode:I

    return-void
.end method

.method private checkoutBottomOutofRange(Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 4

    const/4 v0, 0x0

    .line 181
    invoke-virtual {p0, v0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->findCloestVisibleView(Z)Landroid/view/View;

    move-result-object v0

    .line 182
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne v1, p1, :cond_0

    .line 183
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0, v0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getViewBottomWithMargin(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    iget v3, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    sub-int/2addr v1, v3

    sub-int/2addr p1, v1

    if-lez p1, :cond_0

    .line 185
    invoke-virtual {p0, v0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getViewBottomWithMargin(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    iput p1, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    :cond_0
    return-void
.end method

.method private checkoutTopOutofRange(Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 4

    const/4 p1, 0x1

    .line 94
    invoke-virtual {p0, p1}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->findCloestVisibleView(Z)Landroid/view/View;

    move-result-object p1

    .line 95
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getViewTopWithMargin(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    iget v3, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    add-int/2addr v1, v3

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 98
    invoke-virtual {p0, p1}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getViewTopWithMargin(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    :cond_0
    return-void
.end method

.method private layoutFromDownToUp(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    iget v1, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutAnchor:I

    iget v0, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    if-gt v1, v0, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutHelper:Lcom/narvii/widget/recycleview/layoutmanager/ILayoutHelper;

    invoke-interface {v0, p1, p2, p0}, Lcom/narvii/widget/recycleview/layoutmanager/ILayoutHelper;->layoutReverse(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;)V

    .line 90
    invoke-direct {p0, p2}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->checkoutTopOutofRange(Landroid/support/v7/widget/RecyclerView$State;)V

    return-void
.end method

.method private layoutFromUpToDown(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 8

    .line 124
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    iget v1, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutAnchor:I

    iget v0, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    if-lt v1, v0, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    .line 131
    iget-object v1, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    iget-boolean v2, v1, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutByScroll:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget v1, v1, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->startLayoutPos:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 132
    :goto_0
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    iget-boolean v2, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutByScroll:Z

    if-nez v2, :cond_2

    .line 133
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutHelper:Lcom/narvii/widget/recycleview/layoutmanager/ILayoutHelper;

    invoke-interface {v2}, Lcom/narvii/widget/recycleview/layoutmanager/ILayoutHelper;->willCalculateUnVisibleViews()V

    .line 135
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_c

    .line 136
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v2

    .line 137
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    .line 138
    invoke-virtual {p0, v2, v3, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 140
    invoke-virtual {p0, v2}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v4

    add-int/2addr v0, v4

    .line 142
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getContentHorizontalSpace()I

    move-result v5

    const/4 v6, 0x1

    if-gt v0, v5, :cond_5

    .line 143
    iget-object v4, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->rowViews:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v6

    if-ne v1, v2, :cond_b

    .line 146
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    iget-boolean v4, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutByScroll:Z

    if-nez v4, :cond_4

    .line 147
    iget v4, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->startLayoutPos:I

    if-ge v1, v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    iput-boolean v4, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->justCalculate:Z

    .line 149
    :cond_4
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutHelper:Lcom/narvii/widget/recycleview/layoutmanager/ILayoutHelper;

    iget-object v4, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->rowViews:Ljava/util/List;

    invoke-interface {v2, v4, p1, p0, v6}, Lcom/narvii/widget/recycleview/layoutmanager/ILayoutHelper;->layoutARow(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Z)V

    goto :goto_5

    .line 153
    :cond_5
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    iget-boolean v5, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutByScroll:Z

    if-nez v5, :cond_7

    add-int/lit8 v5, v1, -0x1

    .line 154
    iget v7, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->startLayoutPos:I

    if-ge v5, v7, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    iput-boolean v5, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->justCalculate:Z

    .line 156
    :cond_7
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutHelper:Lcom/narvii/widget/recycleview/layoutmanager/ILayoutHelper;

    iget-object v5, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->rowViews:Ljava/util/List;

    invoke-interface {v0, v5, p1, p0, v3}, Lcom/narvii/widget/recycleview/layoutmanager/ILayoutHelper;->layoutARow(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Z)V

    .line 158
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    iget v5, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutAnchor:I

    iget v0, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    sub-int/2addr v5, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v0, v7

    if-lt v5, v0, :cond_8

    .line 159
    invoke-virtual {p0, v2, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    goto :goto_6

    .line 162
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    .line 163
    iget-object v5, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->rowViews:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, v4

    .line 166
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v6

    if-ne v1, v2, :cond_b

    .line 167
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    iget-boolean v4, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutByScroll:Z

    if-nez v4, :cond_a

    .line 168
    iget v4, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->startLayoutPos:I

    if-ge v1, v4, :cond_9

    const/4 v4, 0x1

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    :goto_4
    iput-boolean v4, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->justCalculate:Z

    .line 170
    :cond_a
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutHelper:Lcom/narvii/widget/recycleview/layoutmanager/ILayoutHelper;

    iget-object v4, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->rowViews:Ljava/util/List;

    invoke-interface {v2, v4, p1, p0, v6}, Lcom/narvii/widget/recycleview/layoutmanager/ILayoutHelper;->layoutARow(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Z)V

    :cond_b
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 174
    :cond_c
    :goto_6
    iget-object p1, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    iget p1, p1, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    if-eqz p1, :cond_d

    .line 176
    invoke-direct {p0, p2}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->checkoutBottomOutofRange(Landroid/support/v7/widget/RecyclerView$State;)V

    :cond_d
    return-void
.end method

.method private resetLayoutInfo()V
    .locals 5

    .line 191
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0, v1}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->findCloestVisibleView(Z)Landroid/view/View;

    move-result-object v0

    .line 193
    iget-object v3, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    invoke-virtual {p0, v0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getViewTopWithMargin(Landroid/view/View;)I

    move-result v4

    iput v4, v3, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->firstVisibleViewTop:I

    .line 194
    iget-object v3, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iput v0, v3, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->startLayoutPos:I

    .line 195
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    iget v0, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->startLayoutPos:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 196
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    iput v2, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->startLayoutPos:I

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v3

    iput v3, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->firstVisibleViewTop:I

    .line 200
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    iput v2, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->startLayoutPos:I

    .line 202
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    iget v3, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->firstVisibleViewTop:I

    iput v3, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutAnchor:I

    .line 203
    iput v2, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    .line 204
    iput v1, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutFrom:I

    .line 205
    iput-boolean v2, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutByScroll:Z

    .line 206
    iput-boolean v2, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->justCalculate:Z

    return-void
.end method

.method private startLayout(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    iget v0, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutFrom:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutFromUpToDown(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    goto :goto_0

    .line 73
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutFromDownToUp(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected findCloestVisibleView(Z)Landroid/view/View;
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 47
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected getContentHorizontalSpace()I
    .locals 2

    .line 294
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 5

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, v2

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result p1

    add-int/2addr v4, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, p1

    .line 113
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method protected getHeightWithMargins(Landroid/view/View;)I
    .locals 2

    .line 303
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 304
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method protected getLayoutInfo()Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    return-object v0
.end method

.method protected getViewBottomWithMargin(Landroid/view/View;)I
    .locals 1

    .line 289
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 290
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method protected getViewTopWithMargin(Landroid/view/View;)I
    .locals 1

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 281
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method protected getWidthWithMargins(Landroid/view/View;)I
    .locals 2

    .line 298
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 299
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .locals 2

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 106
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v1

    add-int/2addr p2, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p2, v1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v1

    add-int/2addr p3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, v1

    .line 107
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v1

    sub-int/2addr p4, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p4, v1

    .line 108
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr p5, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p5, v0

    .line 106
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 362
    iget-object p1, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->haveReseted:Z

    .line 363
    invoke-direct {p0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->resetLayoutInfo()V

    return-void
.end method

.method public onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 380
    iget-object p1, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->haveReseted:Z

    .line 381
    invoke-direct {p0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->resetLayoutInfo()V

    return-void
.end method

.method public onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 0

    .line 350
    iget-object p1, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->haveReseted:Z

    .line 351
    invoke-direct {p0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->resetLayoutInfo()V

    return-void
.end method

.method public onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 356
    iget-object p1, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->haveReseted:Z

    .line 357
    invoke-direct {p0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->resetLayoutInfo()V

    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 368
    iget-object p1, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->haveReseted:Z

    .line 369
    invoke-direct {p0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->resetLayoutInfo()V

    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    .line 374
    iget-object p1, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->haveReseted:Z

    .line 375
    invoke-direct {p0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->resetLayoutInfo()V

    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2

    .line 57
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    iget-boolean v1, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->haveReseted:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 62
    iput-boolean v1, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->haveReseted:Z

    goto :goto_0

    .line 64
    :cond_1
    invoke-direct {p0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->resetLayoutInfo()V

    .line 66
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->startLayout(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    return-void
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 213
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    if-lez p1, :cond_4

    .line 216
    invoke-virtual {p0, v0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->findCloestVisibleView(Z)Landroid/view/View;

    move-result-object v2

    .line 217
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v1

    if-ne v3, v4, :cond_7

    .line 219
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v2}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getViewBottomWithMargin(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v3, v2

    if-nez v3, :cond_2

    return v0

    :cond_2
    if-gez v3, :cond_3

    neg-int v2, v3

    .line 225
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_3
    return v0

    .line 233
    :cond_4
    invoke-virtual {p0, v1}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->findCloestVisibleView(Z)Landroid/view/View;

    move-result-object v2

    .line 234
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_7

    .line 235
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getViewTopWithMargin(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v3, v2

    if-nez v3, :cond_5

    return v0

    :cond_5
    if-lez v3, :cond_6

    neg-int v2, v3

    .line 241
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_6
    return v0

    :cond_7
    :goto_0
    if-lez p1, :cond_8

    .line 252
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    invoke-virtual {p0, v0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->findCloestVisibleView(Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getViewBottomWithMargin(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    .line 253
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    iput v1, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutFrom:I

    goto :goto_1

    .line 255
    :cond_8
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0, v1}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->findCloestVisibleView(Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getViewTopWithMargin(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    neg-int v4, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    .line 256
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    const/4 v3, -0x1

    iput v3, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutFrom:I

    .line 258
    :goto_1
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutHelper:Lcom/narvii/widget/recycleview/layoutmanager/ILayoutHelper;

    invoke-interface {v2, p2, p3, p0}, Lcom/narvii/widget/recycleview/layoutmanager/ILayoutHelper;->recycleUnvisibleViews(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;)V

    .line 261
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    if-lez p1, :cond_9

    .line 263
    invoke-virtual {p0, v0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->findCloestVisibleView(Z)Landroid/view/View;

    move-result-object v0

    .line 264
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    invoke-virtual {p0, v0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getViewBottomWithMargin(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutAnchor:I

    .line 265
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->startLayoutPos:I

    goto :goto_2

    .line 267
    :cond_9
    invoke-virtual {p0, v1}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->findCloestVisibleView(Z)Landroid/view/View;

    move-result-object v0

    .line 268
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    invoke-virtual {p0, v0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getViewTopWithMargin(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutAnchor:I

    .line 269
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->startLayoutPos:I

    .line 271
    :goto_2
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    iput-boolean v1, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutByScroll:Z

    .line 273
    invoke-direct {p0, p2, p3}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->startLayout(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    if-lez p1, :cond_a

    .line 274
    iget-object p1, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    iget p1, p1, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    goto :goto_3

    :cond_a
    iget-object p1, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    iget p1, p1, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    neg-int p1, p1

    :goto_3
    neg-int p2, p1

    .line 275
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    return p1
.end method

.method public setAlignMode(I)V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    iget v1, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->alignMode:I

    if-ne p1, v1, :cond_0

    return-void

    .line 313
    :cond_0
    iput p1, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->alignMode:I

    .line 314
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method
