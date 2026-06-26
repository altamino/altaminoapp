.class public Lcom/narvii/leaderboard/RankingUserListLayoutAdapter;
.super Lcom/narvii/list/ProxyAdapter;
.source "RankingUserListLayoutAdapter.java"


# static fields
.field private static final COUNT_TOP_CELL:I = 0x3


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/leaderboard/RankingUserListAdapter;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/narvii/list/ProxyAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 22
    invoke-virtual {p0, p2}, Lcom/narvii/list/ProxyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private getCellCount()I
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 27
    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    return v1

    :cond_1
    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private searchFeedColumnParent(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    move-object v2, p1

    const/4 p1, 0x0

    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x1

    if-ge p1, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    and-int/2addr v3, v4

    if-eqz v3, :cond_6

    .line 138
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f090471

    if-eq v3, v4, :cond_5

    .line 139
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0909e5

    if-eq v3, v4, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f090b6a

    if-ne v3, v4, :cond_3

    goto :goto_3

    .line 141
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_4

    .line 142
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 140
    :cond_5
    :goto_3
    check-cast v2, Landroid/view/ViewGroup;

    return-object v2

    :cond_6
    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/narvii/leaderboard/RankingUserListLayoutAdapter;->getCellCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/narvii/leaderboard/RankingUserListLayoutAdapter;->getCellCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemViewType(I)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_1

    .line 52
    invoke-direct {p0}, Lcom/narvii/leaderboard/RankingUserListLayoutAdapter;->getCellCount()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    return v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez p1, :cond_8

    const v5, 0x7f0b05dc

    const-string/jumbo v6, "rankingTop3"

    .line 70
    invoke-virtual {v0, v5, v2, v1, v6}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090471

    .line 71
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const v6, 0x7f0909e5

    .line 72
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    const v8, 0x7f090b6a

    .line 73
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v3, :cond_7

    .line 76
    iget-object v12, v0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v12, v11}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    if-eq v12, v13, :cond_6

    if-nez v11, :cond_1

    :cond_0
    move-object v12, v5

    const v13, 0x7f090471

    goto :goto_1

    :cond_1
    if-ne v11, v4, :cond_2

    move-object v12, v7

    const v13, 0x7f0909e5

    goto :goto_1

    :cond_2
    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    move-object v12, v9

    const v13, 0x7f090b6a

    .line 89
    :goto_1
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    const/4 v15, 0x0

    if-lez v14, :cond_3

    invoke-virtual {v12, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    goto :goto_2

    :cond_3
    move-object v14, v15

    .line 90
    :goto_2
    invoke-virtual {v12}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 91
    invoke-virtual {v1, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    if-nez v13, :cond_4

    const/4 v13, -0x1

    goto :goto_3

    .line 92
    :cond_4
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 93
    :goto_3
    iget-object v6, v0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v6, v11}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    if-eq v13, v6, :cond_5

    .line 96
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v14, v15

    .line 98
    :cond_5
    iget-object v6, v0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v6, v11, v14, v12}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 99
    invoke-virtual {v12, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    invoke-virtual {v12, v4}, Landroid/view/ViewGroup;->setClickable(Z)V

    :cond_6
    add-int/lit8 v11, v11, 0x1

    const v6, 0x7f0909e5

    goto :goto_0

    .line 104
    :cond_7
    iget-object v2, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v2, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v2, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1

    :cond_8
    add-int/lit8 v3, p1, 0x3

    sub-int/2addr v3, v4

    .line 110
    invoke-super {v0, v3, v1, v2}, Lcom/narvii/list/ProxyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 64
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 7

    if-nez p2, :cond_3

    .line 117
    invoke-direct {p0, p5}, Lcom/narvii/leaderboard/RankingUserListLayoutAdapter;->searchFeedColumnParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 120
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p5

    const v0, 0x7f090471

    if-ne p5, v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p5

    const v0, 0x7f0909e5

    if-ne p5, v0, :cond_1

    const/4 p3, 0x1

    const/4 v2, 0x1

    goto :goto_1

    .line 124
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    const p5, 0x7f090b6a

    if-ne p2, p5, :cond_2

    const/4 p3, 0x2

    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 128
    :goto_1
    iget-object p2, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {p2, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    .line 129
    invoke-super/range {v0 .. v5}, Lcom/narvii/list/ProxyAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    .line 131
    :cond_3
    iget-object p3, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    add-int/lit8 v0, p2, 0x2

    invoke-interface {p3, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-super/range {v1 .. v6}, Lcom/narvii/list/ProxyAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
