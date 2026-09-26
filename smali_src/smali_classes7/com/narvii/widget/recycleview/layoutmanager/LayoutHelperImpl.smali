.class public Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;
.super Ljava/lang/Object;
.source "SourceFile"

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

.field private rectSimplePool:Landroidx/core/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$SimplePool<",
            "Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->preLayoutedViews:Landroid/util/SparseArray;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->pendingRecycleView:Ljava/util/List;

    .line 18
    .line 19
    const/high16 v0, -0x80000000

    .line 20
    .line 21
    iput v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->maxLineNumbser:I

    .line 22
    return-void
.end method

.method private alignCenterLayout(Ljava/util/List;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;",
            "Landroidx/recyclerview/widget/RecyclerView$Recycler;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v3

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    check-cast v3, Landroid/view/View;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v3}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    .line 22
    move-result v3

    .line 23
    add-int/2addr v2, v3

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p2}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getContentHorizontalSpace()I

    .line 28
    move-result v0

    .line 29
    sub-int/2addr v0, v2

    .line 30
    .line 31
    div-int/lit8 v0, v0, 0x2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 35
    move-result v2

    .line 36
    add-int/2addr v2, v0

    .line 37
    move v0, v1

    .line 38
    :goto_1
    move v4, v2

    .line 39
    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 42
    move-result v2

    .line 43
    .line 44
    if-ge v0, v2, :cond_3

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 48
    move-result v2

    .line 49
    const/4 v3, 0x1

    .line 50
    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 55
    move-result v2

    .line 56
    sub-int/2addr v2, v0

    .line 57
    sub-int/2addr v2, v3

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    check-cast v2, Landroid/view/View;

    .line 64
    :goto_2
    move-object v8, v2

    .line 65
    goto :goto_3

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object v2

    .line 70
    .line 71
    check-cast v2, Landroid/view/View;

    .line 72
    goto :goto_2

    .line 73
    .line 74
    .line 75
    :goto_3
    invoke-virtual {p2, v8}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    .line 76
    move-result v2

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v8}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getHeightWithMargins(Landroid/view/View;)I

    .line 80
    move-result v5

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getLayoutInfo()Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 84
    move-result-object v6

    .line 85
    .line 86
    iget v6, v6, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutAnchor:I

    .line 87
    add-int/2addr v2, v4

    .line 88
    .line 89
    add-int v7, v6, v5

    .line 90
    .line 91
    if-nez v0, :cond_2

    .line 92
    move v11, v3

    .line 93
    goto :goto_4

    .line 94
    :cond_2
    move v11, v1

    .line 95
    :goto_4
    move-object v3, p0

    .line 96
    move v5, v6

    .line 97
    move v6, v2

    .line 98
    move-object v9, p2

    .line 99
    move-object v10, p3

    .line 100
    .line 101
    .line 102
    invoke-direct/range {v3 .. v11}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->realLayoutItem(IIIILandroid/view/View;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Landroidx/recyclerview/widget/RecyclerView$Recycler;Z)V

    .line 103
    .line 104
    add-int/lit8 v0, v0, 0x1

    .line 105
    goto :goto_1

    .line 106
    :cond_3
    return-void
.end method

.method private alignLeftLayout(Ljava/util/List;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;",
            "Landroidx/recyclerview/widget/RecyclerView$Recycler;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v3, v0

    .line 7
    move v0, v1

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 11
    move-result v2

    .line 12
    .line 13
    if-ge v0, v2, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    move-object v7, v2

    .line 19
    .line 20
    check-cast v7, Landroid/view/View;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v7}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    .line 24
    move-result v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v7}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getHeightWithMargins(Landroid/view/View;)I

    .line 28
    move-result v4

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getLayoutInfo()Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 32
    move-result-object v5

    .line 33
    .line 34
    iget v5, v5, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutAnchor:I

    .line 35
    .line 36
    add-int v11, v3, v2

    .line 37
    .line 38
    add-int v6, v5, v4

    .line 39
    .line 40
    if-nez v0, :cond_0

    .line 41
    const/4 v2, 0x1

    .line 42
    move v10, v2

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    move v10, v1

    .line 45
    :goto_1
    move-object v2, p0

    .line 46
    move v4, v5

    .line 47
    move v5, v11

    .line 48
    move-object v8, p2

    .line 49
    move-object v9, p3

    .line 50
    .line 51
    .line 52
    invoke-direct/range {v2 .. v10}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->realLayoutItem(IIIILandroid/view/View;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Landroidx/recyclerview/widget/RecyclerView$Recycler;Z)V

    .line 53
    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 55
    move v3, v11

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    return-void
.end method

.method private alignRightLayout(Ljava/util/List;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;",
            "Landroidx/recyclerview/widget/RecyclerView$Recycler;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    sub-int/2addr v1, v2

    .line 16
    :goto_0
    move v6, v0

    .line 17
    .line 18
    if-ltz v1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    move-object v8, v0

    .line 24
    .line 25
    check-cast v8, Landroid/view/View;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v8}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    .line 29
    move-result v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v8}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getHeightWithMargins(Landroid/view/View;)I

    .line 33
    move-result v3

    .line 34
    .line 35
    sub-int v0, v6, v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getLayoutInfo()Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 39
    move-result-object v4

    .line 40
    .line 41
    iget v5, v4, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutAnchor:I

    .line 42
    .line 43
    add-int v7, v5, v3

    .line 44
    .line 45
    if-nez v1, :cond_0

    .line 46
    move v11, v2

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    const/4 v3, 0x0

    .line 49
    move v11, v3

    .line 50
    :goto_1
    move-object v3, p0

    .line 51
    move v4, v0

    .line 52
    move-object v9, p2

    .line 53
    move-object v10, p3

    .line 54
    .line 55
    .line 56
    invoke-direct/range {v3 .. v11}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->realLayoutItem(IIIILandroid/view/View;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Landroidx/recyclerview/widget/RecyclerView$Recycler;Z)V

    .line 57
    .line 58
    add-int/lit8 v1, v1, -0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    return-void
.end method

.method private alignTwoSideLayout(Ljava/util/List;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;ZLandroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;",
            "Z",
            "Landroidx/recyclerview/widget/RecyclerView$Recycler;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v9, p2

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getLayoutInfo()Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 6
    .line 7
    .line 8
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v10, 0x0

    .line 11
    const/4 v11, 0x1

    .line 12
    .line 13
    if-le v0, v11, :cond_1

    .line 14
    .line 15
    if-nez p3, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 20
    move v1, v10

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v2

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    check-cast v2, Landroid/view/View;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v9, v2}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    .line 36
    move-result v2

    .line 37
    add-int/2addr v1, v2

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getContentHorizontalSpace()I

    .line 42
    move-result v0

    .line 43
    sub-int/2addr v0, v1

    .line 44
    .line 45
    .line 46
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 47
    move-result v1

    .line 48
    sub-int/2addr v1, v11

    .line 49
    div-int/2addr v0, v1

    .line 50
    move v12, v0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move v12, v10

    .line 53
    .line 54
    .line 55
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 56
    move-result v0

    .line 57
    move v1, v0

    .line 58
    move v13, v10

    .line 59
    .line 60
    .line 61
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 62
    move-result v0

    .line 63
    .line 64
    if-ge v13, v0, :cond_3

    .line 65
    .line 66
    move-object/from16 v14, p1

    .line 67
    .line 68
    .line 69
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 71
    move-object v5, v0

    .line 72
    .line 73
    check-cast v5, Landroid/view/View;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v9, v5}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    .line 77
    move-result v0

    .line 78
    .line 79
    .line 80
    invoke-virtual {v9, v5}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getHeightWithMargins(Landroid/view/View;)I

    .line 81
    move-result v2

    .line 82
    .line 83
    .line 84
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getLayoutInfo()Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 85
    move-result-object v3

    .line 86
    .line 87
    iget v3, v3, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutAnchor:I

    .line 88
    .line 89
    add-int v15, v1, v0

    .line 90
    .line 91
    add-int v4, v3, v2

    .line 92
    .line 93
    if-nez v13, :cond_2

    .line 94
    move v8, v11

    .line 95
    goto :goto_3

    .line 96
    :cond_2
    move v8, v10

    .line 97
    .line 98
    :goto_3
    move-object/from16 v0, p0

    .line 99
    move v2, v3

    .line 100
    move v3, v15

    .line 101
    .line 102
    move-object/from16 v6, p2

    .line 103
    .line 104
    move-object/from16 v7, p4

    .line 105
    .line 106
    .line 107
    invoke-direct/range {v0 .. v8}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->realLayoutItem(IIIILandroid/view/View;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Landroidx/recyclerview/widget/RecyclerView$Recycler;Z)V

    .line 108
    .line 109
    add-int v1, v15, v12

    .line 110
    .line 111
    add-int/lit8 v13, v13, 0x1

    .line 112
    goto :goto_2

    .line 113
    :cond_3
    return-void
.end method

.method private generateALineItem(Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;)Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->rectSimplePool:Landroidx/core/util/Pools$SimplePool;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 10
    move-result p1

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p1}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->rectSimplePool:Landroidx/core/util/Pools$SimplePool;

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->rectSimplePool:Landroidx/core/util/Pools$SimplePool;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/core/util/Pools$SimplePool;->a()Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    new-instance p1, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;

    .line 28
    .line 29
    .line 30
    invoke-direct {p1}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;-><init>()V

    .line 31
    :cond_1
    return-object p1
.end method

.method private realLayoutItem(IIIILandroid/view/View;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Landroidx/recyclerview/widget/RecyclerView$Recycler;Z)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p6}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getLayoutInfo()Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-boolean v1, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutByScroll:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    move-object v0, p6

    .line 10
    move-object v1, p5

    .line 11
    move v2, p1

    .line 12
    move v3, p2

    .line 13
    move v4, p3

    .line 14
    move v5, p4

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-boolean v0, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->justCalculate:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p6}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->generateALineItem(Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;)Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p8}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;->setFirstItemInLine(Z)V

    .line 30
    .line 31
    iget-object p8, v0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;->rect:Landroid/graphics/Rect;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p8, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->preLayoutedViews:Landroid/util/SparseArray;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p6, p5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 40
    move-result p2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p6, p5, p7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move-object v0, p6

    .line 49
    move-object v1, p5

    .line 50
    move v2, p1

    .line 51
    move v3, p2

    .line 52
    move v4, p3

    .line 53
    move v5, p4

    .line 54
    .line 55
    .line 56
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 57
    :goto_0
    return-void
.end method

.method private releaseItemLayoutInfo(Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;)V
    .locals 1

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->rectSimplePool:Landroidx/core/util/Pools$SimplePool;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/core/util/Pools$SimplePool;->b(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    :goto_0
    return-void
.end method

.method private saveLayoutInfo(Landroid/view/View;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->generateALineItem(Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;)Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p3}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;->setFirstItemInLine(Z)V

    .line 8
    .line 9
    iget-object p3, v0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;->rect:Landroid/graphics/Rect;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1, p3}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 13
    .line 14
    iget-object p3, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->preLayoutedViews:Landroid/util/SparseArray;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 18
    move-result p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    return-void
.end method


# virtual methods
.method public layoutARow(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView$Recycler;",
            "Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;",
            "Z)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getLayoutInfo()Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v0, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->alignMode:I

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    const/4 p4, 0x2

    .line 13
    .line 14
    if-eq v0, p4, :cond_1

    .line 15
    const/4 p4, 0x3

    .line 16
    .line 17
    if-eq v0, p4, :cond_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-direct {p0, p1, p3, p2}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->alignCenterLayout(Ljava/util/List;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-direct {p0, p1, p3, p2}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->alignRightLayout(Ljava/util/List;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_2
    invoke-direct {p0, p1, p3, p2}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->alignLeftLayout(Ljava/util/List;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_3
    invoke-direct {p0, p1, p3, p4, p2}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->alignTwoSideLayout(Ljava/util/List;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;ZLandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 37
    move-result p4

    .line 38
    .line 39
    if-nez p4, :cond_4

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getLayoutInfo()Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 43
    move-result-object p4

    .line 44
    .line 45
    iget-boolean p4, p4, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutByScroll:Z

    .line 46
    .line 47
    if-nez p4, :cond_5

    .line 48
    .line 49
    .line 50
    :cond_4
    invoke-virtual {p3}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getLayoutInfo()Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 51
    move-result-object p4

    .line 52
    .line 53
    iget-boolean p4, p4, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutByScroll:Z

    .line 54
    .line 55
    if-nez p4, :cond_6

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getLayoutInfo()Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 59
    move-result-object p4

    .line 60
    .line 61
    iget-boolean p4, p4, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->justCalculate:Z

    .line 62
    .line 63
    if-nez p4, :cond_6

    .line 64
    .line 65
    .line 66
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 67
    move-result p4

    .line 68
    sub-int/2addr p4, v1

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object p4

    .line 73
    .line 74
    check-cast p4, Landroid/view/View;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getLayoutInfo()Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3, p4}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getViewBottomWithMargin(Landroid/view/View;)I

    .line 82
    move-result p3

    .line 83
    .line 84
    iput p3, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutAnchor:I

    .line 85
    .line 86
    .line 87
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 88
    move-result p3

    .line 89
    .line 90
    iget p4, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->maxLineNumbser:I

    .line 91
    .line 92
    if-le p3, p4, :cond_7

    .line 93
    .line 94
    .line 95
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 96
    move-result p3

    .line 97
    .line 98
    iput p3, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->maxLineNumbser:I

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->L(I)V

    .line 102
    .line 103
    .line 104
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 105
    return-void
.end method

.method public layoutReverse(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;)V
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getLayoutInfo()Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    iget v0, p2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->startLayoutPos:I

    .line 7
    .line 8
    :goto_0
    if-ltz v0, :cond_2

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->preLayoutedViews:Landroid/util/SparseArray;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;

    .line 17
    .line 18
    iget-object v2, v1, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;->rect:Landroid/graphics/Rect;

    .line 19
    .line 20
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 21
    .line 22
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 23
    sub-int/2addr v3, v4

    .line 24
    .line 25
    iget v4, p2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutAnchor:I

    .line 26
    .line 27
    iget v5, p2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    .line 28
    add-int/2addr v4, v5

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 32
    move-result v5

    .line 33
    .line 34
    if-gt v4, v5, :cond_0

    .line 35
    goto :goto_1

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->o(I)Landroid/view/View;

    .line 39
    move-result-object v7

    .line 40
    const/4 v4, 0x0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, v7, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3, v7, v4, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 47
    .line 48
    iget v8, v2, Landroid/graphics/Rect;->left:I

    .line 49
    .line 50
    iget v11, p2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutAnchor:I

    .line 51
    .line 52
    sub-int v9, v11, v3

    .line 53
    .line 54
    iget v10, v2, Landroid/graphics/Rect;->right:I

    .line 55
    move-object v6, p3

    .line 56
    .line 57
    .line 58
    invoke-virtual/range {v6 .. v11}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 59
    .line 60
    iget-boolean v2, v1, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;->isFirstItemInLine:Z

    .line 61
    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    iget v2, p2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutAnchor:I

    .line 65
    sub-int/2addr v2, v3

    .line 66
    .line 67
    iput v2, p2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutAnchor:I

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-direct {p0, v1}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->releaseItemLayoutInfo(Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;)V

    .line 71
    .line 72
    iget-object v1, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->preLayoutedViews:Landroid/util/SparseArray;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 76
    .line 77
    add-int/lit8 v0, v0, -0x1

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    :goto_1
    return-void
.end method

.method public recycleUnvisibleViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result p2

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p3}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getLayoutInfo()Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    iget v0, p2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    .line 14
    .line 15
    if-gez v0, :cond_1

    .line 16
    return-void

    .line 17
    .line 18
    :cond_1
    iget v0, p2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutFrom:I

    .line 19
    const/4 v1, -0x1

    .line 20
    const/4 v2, 0x1

    .line 21
    .line 22
    if-ne v0, v1, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 26
    move-result v0

    .line 27
    sub-int/2addr v0, v2

    .line 28
    .line 29
    :goto_0
    if-ltz v0, :cond_4

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, v1}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getViewTopWithMargin(Landroid/view/View;)I

    .line 37
    move-result v2

    .line 38
    .line 39
    iget v3, p2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    .line 40
    add-int/2addr v2, v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 44
    move-result v3

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 48
    move-result v4

    .line 49
    sub-int/2addr v3, v4

    .line 50
    .line 51
    if-lt v2, v3, :cond_4

    .line 52
    .line 53
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->pendingRecycleView:Ljava/util/List;

    .line 54
    .line 55
    .line 56
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    add-int/lit8 v0, v0, -0x1

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_2
    if-ne v0, v2, :cond_4

    .line 62
    const/4 v0, 0x0

    .line 63
    .line 64
    .line 65
    const v1, 0x7fffffff

    .line 66
    move v3, v0

    .line 67
    .line 68
    .line 69
    :goto_1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 70
    move-result v4

    .line 71
    .line 72
    if-ge v3, v4, :cond_4

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 76
    move-result-object v4

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, v4}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getViewBottomWithMargin(Landroid/view/View;)I

    .line 80
    move-result v5

    .line 81
    .line 82
    iget v6, p2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    .line 83
    sub-int/2addr v5, v6

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 87
    move-result v6

    .line 88
    .line 89
    if-gt v5, v6, :cond_4

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, v4}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getViewTopWithMargin(Landroid/view/View;)I

    .line 93
    move-result v5

    .line 94
    .line 95
    if-eq v5, v1, :cond_3

    .line 96
    .line 97
    .line 98
    invoke-direct {p0, v4, p3, v2}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->saveLayoutInfo(Landroid/view/View;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Z)V

    .line 99
    move v1, v5

    .line 100
    goto :goto_2

    .line 101
    .line 102
    .line 103
    :cond_3
    invoke-direct {p0, v4, p3, v0}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->saveLayoutInfo(Landroid/view/View;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Z)V

    .line 104
    .line 105
    :goto_2
    iget-object v5, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->pendingRecycleView:Ljava/util/List;

    .line 106
    .line 107
    .line 108
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    add-int/lit8 v3, v3, 0x1

    .line 111
    goto :goto_1

    .line 112
    .line 113
    :cond_4
    iget-object p2, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->pendingRecycleView:Ljava/util/List;

    .line 114
    .line 115
    .line 116
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 117
    move-result-object p2

    .line 118
    .line 119
    .line 120
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    move-result v0

    .line 122
    .line 123
    if-eqz v0, :cond_5

    .line 124
    .line 125
    .line 126
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    check-cast v0, Landroid/view/View;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p3, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 133
    goto :goto_3

    .line 134
    .line 135
    :cond_5
    iget-object p1, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->pendingRecycleView:Ljava/util/List;

    .line 136
    .line 137
    .line 138
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 139
    return-void
.end method

.method public willCalculateUnVisibleViews()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object v1, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->preLayoutedViews:Landroid/util/SparseArray;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->preLayoutedViews:Landroid/util/SparseArray;

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v1}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->releaseItemLayoutInfo(Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;)V

    .line 24
    .line 25
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;->preLayoutedViews:Landroid/util/SparseArray;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 32
    return-void
.end method
