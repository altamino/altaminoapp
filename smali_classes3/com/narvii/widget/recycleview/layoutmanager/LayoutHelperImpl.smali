.class public Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;
.super Ljava/lang/Object;
.source "LayoutHelperImpl.java"

# interfaces
.implements Lcom/narvii/widget/recycleview/layoutmanager/ILayoutHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;
    }
.end annotation


# instance fields
.field private maxLineNumbser:I

.field private pendingRecycleView:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private preLayoutedViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;",
            ">;"
        }
    .end annotation
.end field

.field private rectSimplePool:Landroid/support/v4/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$SimplePool<",
            "Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->preLayoutedViews:Landroid/util/SparseArray;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->pendingRecycleView:Ljava/util/List;

    const/high16 v0, -0x80000000

    .line 26
    iput v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->maxLineNumbser:I

    return-void
.end method

.method private alignCenterLayout(Ljava/util/List;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;",
            "Landroid/support/v7/widget/RecyclerView$Recycler;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 66
    invoke-virtual {p2, v3}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p2}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getContentHorizontalSpace()I

    move-result v0

    sub-int/2addr v0, v2

    .line 69
    div-int/lit8 v0, v0, 0x2

    .line 72
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    move v3, v2

    const/4 v0, 0x0

    .line 74
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 76
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 77
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int/2addr v2, v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    goto :goto_2

    .line 79
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    :goto_2
    move-object v7, v2

    .line 81
    invoke-virtual {p2, v7}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v2

    .line 82
    invoke-virtual {p2, v7}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getHeightWithMargins(Landroid/view/View;)I

    move-result v5

    .line 85
    invoke-virtual {p2}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getLayoutInfo()Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    move-result-object v6

    iget v6, v6, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutAnchor:I

    add-int v11, v3, v2

    add-int v8, v6, v5

    if-nez v0, :cond_2

    const/4 v10, 0x1

    goto :goto_3

    :cond_2
    const/4 v10, 0x0

    :goto_3
    move-object v2, p0

    move v4, v6

    move v5, v11

    move v6, v8

    move-object v8, p2

    move-object v9, p3

    .line 89
    invoke-direct/range {v2 .. v10}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->realLayoutItem(IIIILandroid/view/View;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Landroid/support/v7/widget/RecyclerView$Recycler;Z)V

    add-int/lit8 v0, v0, 0x1

    move v3, v11

    goto :goto_1

    :cond_3
    return-void
.end method

.method private alignLeftLayout(Ljava/util/List;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;",
            "Landroid/support/v7/widget/RecyclerView$Recycler;",
            ")V"
        }
    .end annotation

    .line 156
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    move v3, v0

    const/4 v0, 0x0

    .line 158
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 159
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/view/View;

    .line 160
    invoke-virtual {p2, v7}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v2

    .line 161
    invoke-virtual {p2, v7}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getHeightWithMargins(Landroid/view/View;)I

    move-result v4

    .line 164
    invoke-virtual {p2}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getLayoutInfo()Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    move-result-object v5

    iget v5, v5, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutAnchor:I

    add-int v11, v3, v2

    add-int v6, v5, v4

    if-nez v0, :cond_0

    const/4 v2, 0x1

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    :goto_1
    move-object v2, p0

    move v4, v5

    move v5, v11

    move-object v8, p2

    move-object v9, p3

    .line 168
    invoke-direct/range {v2 .. v10}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->realLayoutItem(IIIILandroid/view/View;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Landroid/support/v7/widget/RecyclerView$Recycler;Z)V

    add-int/lit8 v0, v0, 0x1

    move v3, v11

    goto :goto_0

    :cond_1
    return-void
.end method

.method private alignRightLayout(Ljava/util/List;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;",
            "Landroid/support/v7/widget/RecyclerView$Recycler;",
            ")V"
        }
    .end annotation

    .line 99
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 101
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    move v6, v0

    if-ltz v1, :cond_1

    .line 102
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/View;

    .line 103
    invoke-virtual {p2, v8}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v0

    .line 104
    invoke-virtual {p2, v8}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getHeightWithMargins(Landroid/view/View;)I

    move-result v3

    sub-int v0, v6, v0

    .line 107
    invoke-virtual {p2}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getLayoutInfo()Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    move-result-object v4

    iget v5, v4, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutAnchor:I

    add-int v7, v5, v3

    if-nez v1, :cond_0

    const/4 v11, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    const/4 v11, 0x0

    :goto_1
    move-object v3, p0

    move v4, v0

    move-object v9, p2

    move-object v10, p3

    .line 111
    invoke-direct/range {v3 .. v11}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->realLayoutItem(IIIILandroid/view/View;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Landroid/support/v7/widget/RecyclerView$Recycler;Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private alignTwoSideLayout(Ljava/util/List;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;ZLandroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;",
            "Z",
            "Landroid/support/v7/widget/RecyclerView$Recycler;",
            ")V"
        }
    .end annotation

    move-object/from16 v9, p2

    .line 121
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getLayoutInfo()Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 124
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-le v0, v10, :cond_1

    if-nez p3, :cond_1

    .line 126
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 127
    invoke-virtual {v9, v2}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getContentHorizontalSpace()I

    move-result v0

    sub-int/2addr v0, v1

    .line 130
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v10

    div-int/2addr v0, v1

    move v12, v0

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 134
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    move v1, v0

    const/4 v13, 0x0

    .line 136
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_3

    move-object/from16 v14, p1

    .line 137
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/view/View;

    .line 138
    invoke-virtual {v9, v5}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v0

    .line 139
    invoke-virtual {v9, v5}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getHeightWithMargins(Landroid/view/View;)I

    move-result v2

    .line 142
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getLayoutInfo()Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    move-result-object v3

    iget v3, v3, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutAnchor:I

    add-int v15, v1, v0

    add-int v4, v3, v2

    if-nez v13, :cond_2

    const/4 v8, 0x1

    goto :goto_3

    :cond_2
    const/4 v8, 0x0

    :goto_3
    move-object/from16 v0, p0

    move v2, v3

    move v3, v15

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    .line 146
    invoke-direct/range {v0 .. v8}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->realLayoutItem(IIIILandroid/view/View;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Landroid/support/v7/widget/RecyclerView$Recycler;Z)V

    add-int v1, v15, v12

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private generateALineItem(Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;)Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->rectSimplePool:Landroid/support/v4/util/Pools$SimplePool;

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Landroid/support/v4/util/Pools$SimplePool;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p1

    invoke-direct {v0, p1}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->rectSimplePool:Landroid/support/v4/util/Pools$SimplePool;

    .line 302
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->rectSimplePool:Landroid/support/v4/util/Pools$SimplePool;

    invoke-virtual {p1}, Landroid/support/v4/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;

    if-nez p1, :cond_1

    .line 304
    new-instance p1, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;

    invoke-direct {p1}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;-><init>()V

    :cond_1
    return-object p1
.end method

.method private realLayoutItem(IIIILandroid/view/View;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Landroid/support/v7/widget/RecyclerView$Recycler;Z)V
    .locals 6

    .line 202
    invoke-virtual {p6}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getLayoutInfo()Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    move-result-object v0

    .line 203
    iget-boolean v1, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutByScroll:Z

    if-eqz v1, :cond_0

    move-object v0, p6

    move-object v1, p5

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 204
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    goto :goto_0

    .line 206
    :cond_0
    iget-boolean v0, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->justCalculate:Z

    if-eqz v0, :cond_1

    .line 207
    invoke-direct {p0, p6}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->generateALineItem(Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;)Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;

    move-result-object v0

    .line 208
    invoke-virtual {v0, p8}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;->setFirstItemInLine(Z)V

    .line 209
    iget-object p8, v0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;->rect:Landroid/graphics/Rect;

    invoke-virtual {p8, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 210
    iget-object p1, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->preLayoutedViews:Landroid/util/SparseArray;

    invoke-virtual {p6, p5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    invoke-virtual {p6, p5, p7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    goto :goto_0

    :cond_1
    move-object v0, p6

    move-object v1, p5

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 213
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    :goto_0
    return-void
.end method

.method private releaseItemLayoutInfo(Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;)V
    .locals 1

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->rectSimplePool:Landroid/support/v4/util/Pools$SimplePool;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 225
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private saveLayoutInfo(Landroid/view/View;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Z)V
    .locals 1

    .line 292
    invoke-direct {p0, p2}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->generateALineItem(Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;)Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;

    move-result-object v0

    .line 293
    invoke-virtual {v0, p3}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;->setFirstItemInLine(Z)V

    .line 294
    iget-object p3, v0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;->rect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, p3}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 295
    iget-object p3, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->preLayoutedViews:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public layoutARow(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v7/widget/RecyclerView$Recycler;",
            "Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;",
            "Z)V"
        }
    .end annotation

    .line 30
    invoke-virtual {p3}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getLayoutInfo()Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    move-result-object v0

    iget v0, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->alignMode:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 p4, 0x2

    if-eq v0, p4, :cond_1

    const/4 p4, 0x3

    if-eq v0, p4, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-direct {p0, p1, p3, p2}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->alignCenterLayout(Ljava/util/List;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    goto :goto_0

    .line 39
    :cond_1
    invoke-direct {p0, p1, p3, p2}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->alignRightLayout(Ljava/util/List;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    goto :goto_0

    .line 33
    :cond_2
    invoke-direct {p0, p1, p3, p2}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->alignLeftLayout(Ljava/util/List;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    goto :goto_0

    .line 36
    :cond_3
    invoke-direct {p0, p1, p3, p4, p2}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->alignTwoSideLayout(Ljava/util/List;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;ZLandroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 46
    :goto_0
    invoke-virtual {p3}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getLayoutInfo()Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    move-result-object p4

    iget-boolean p4, p4, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutByScroll:Z

    if-nez p4, :cond_4

    .line 47
    invoke-virtual {p3}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getLayoutInfo()Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    move-result-object p4

    iget-boolean p4, p4, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutByScroll:Z

    if-nez p4, :cond_5

    invoke-virtual {p3}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getLayoutInfo()Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    move-result-object p4

    iget-boolean p4, p4, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->justCalculate:Z

    if-nez p4, :cond_5

    .line 48
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    sub-int/2addr p4, v1

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    .line 49
    invoke-virtual {p3}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getLayoutInfo()Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    move-result-object v0

    invoke-virtual {p3, p4}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getViewBottomWithMargin(Landroid/view/View;)I

    move-result p3

    iput p3, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutAnchor:I

    .line 52
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    iget p4, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->maxLineNumbser:I

    if-le p3, p4, :cond_6

    .line 53
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    iput p3, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->maxLineNumbser:I

    .line 54
    iget p3, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->maxLineNumbser:I

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->setViewCacheSize(I)V

    .line 56
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public layoutReverse(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;)V
    .locals 12

    .line 176
    invoke-virtual {p3}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getLayoutInfo()Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    move-result-object p2

    .line 177
    iget v0, p2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->startLayoutPos:I

    :goto_0
    if-ltz v0, :cond_2

    .line 178
    iget-object v1, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->preLayoutedViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;

    .line 179
    iget-object v2, v1, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;->rect:Landroid/graphics/Rect;

    .line 180
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    .line 182
    iget v4, p2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutAnchor:I

    iget v5, p2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    add-int/2addr v4, v5

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    if-gt v4, v5, :cond_0

    goto :goto_1

    .line 186
    :cond_0
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v7

    const/4 v4, 0x0

    .line 187
    invoke-virtual {p3, v7, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 188
    invoke-virtual {p3, v7, v4, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 189
    iget v8, v2, Landroid/graphics/Rect;->left:I

    iget v11, p2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutAnchor:I

    sub-int v9, v11, v3

    iget v10, v2, Landroid/graphics/Rect;->right:I

    move-object v6, p3

    .line 190
    invoke-virtual/range {v6 .. v11}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 192
    iget-boolean v2, v1, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;->isFirstItemInLine:Z

    if-eqz v2, :cond_1

    .line 193
    iget v2, p2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutAnchor:I

    sub-int/2addr v2, v3

    iput v2, p2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutAnchor:I

    .line 196
    :cond_1
    invoke-direct {p0, v1}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->releaseItemLayoutInfo(Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;)V

    .line 197
    iget-object v1, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->preLayoutedViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public recycleUnvisibleViews(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;)V
    .locals 7

    .line 231
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 232
    :cond_0
    invoke-virtual {p3}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getLayoutInfo()Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    move-result-object p2

    .line 233
    iget v0, p2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    if-gez v0, :cond_1

    return-void

    :cond_1
    const v0, 0x7fffffff

    .line 237
    iget v1, p2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutFrom:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    .line 239
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_0
    if-ltz v0, :cond_4

    .line 240
    invoke-virtual {p3, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 241
    invoke-virtual {p3, v1}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getViewTopWithMargin(Landroid/view/View;)I

    move-result v2

    iget v3, p2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    add-int/2addr v2, v3

    .line 242
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v3

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_4

    .line 243
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->pendingRecycleView:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    if-ne v1, v3, :cond_4

    const/4 v1, 0x0

    const/4 v0, 0x0

    const v2, 0x7fffffff

    .line 250
    :goto_1
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 251
    invoke-virtual {p3, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 252
    invoke-virtual {p3, v4}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getViewBottomWithMargin(Landroid/view/View;)I

    move-result v5

    iget v6, p2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    sub-int/2addr v5, v6

    .line 253
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v6

    if-gt v5, v6, :cond_4

    .line 254
    invoke-virtual {p3, v4}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getViewTopWithMargin(Landroid/view/View;)I

    move-result v5

    if-eq v5, v2, :cond_3

    .line 256
    invoke-direct {p0, v4, p3, v3}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->saveLayoutInfo(Landroid/view/View;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Z)V

    move v2, v5

    goto :goto_2

    .line 259
    :cond_3
    invoke-direct {p0, v4, p3, v1}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->saveLayoutInfo(Landroid/view/View;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Z)V

    .line 262
    :goto_2
    iget-object v5, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->pendingRecycleView:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 269
    :cond_4
    iget-object p2, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->pendingRecycleView:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 270
    invoke-virtual {p3, v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    goto :goto_3

    .line 273
    :cond_5
    iget-object p1, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->pendingRecycleView:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public willCalculateUnVisibleViews()V
    .locals 3

    const/4 v0, 0x0

    .line 279
    :goto_0
    iget-object v1, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->preLayoutedViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 280
    iget-object v1, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->preLayoutedViews:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;

    if-eqz v1, :cond_0

    .line 282
    invoke-direct {p0, v1}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->releaseItemLayoutInfo(Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->preLayoutedViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
