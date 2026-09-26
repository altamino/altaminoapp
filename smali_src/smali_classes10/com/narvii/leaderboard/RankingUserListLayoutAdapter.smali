.class public Lcom/narvii/leaderboard/RankingUserListLayoutAdapter;
.super Lcom/narvii/list/ProxyAdapter;
.source "SourceFile"


# static fields
.field private static final COUNT_TOP_CELL:I = 0x3


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/leaderboard/RankingUserListAdapter;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/ProxyAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/narvii/list/ProxyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7
    return-void
.end method

.method private getCellCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x3

    .line 12
    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    .line 17
    :cond_1
    add-int/lit8 v0, v0, -0x2

    .line 18
    return v0
.end method

.method private searchFeedColumnParent(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    .line 8
    :goto_0
    const/16 v3, 0x8

    .line 9
    const/4 v4, 0x1

    .line 10
    .line 11
    if-ge v2, v3, :cond_1

    .line 12
    move v3, v4

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    move v3, v1

    .line 15
    .line 16
    :goto_1
    if-eqz p1, :cond_2

    .line 17
    goto :goto_2

    .line 18
    :cond_2
    move v4, v1

    .line 19
    :goto_2
    and-int/2addr v3, v4

    .line 20
    .line 21
    if-eqz v3, :cond_6

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 25
    move-result v3

    .line 26
    .line 27
    .line 28
    const v4, 0x7f0a05a9

    .line 29
    .line 30
    if-eq v3, v4, :cond_5

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 34
    move-result v3

    .line 35
    .line 36
    .line 37
    const v4, 0x7f0a0cad

    .line 38
    .line 39
    if-eq v3, v4, :cond_5

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 43
    move-result v3

    .line 44
    .line 45
    .line 46
    const v4, 0x7f0a0e6f

    .line 47
    .line 48
    if-ne v3, v4, :cond_3

    .line 49
    goto :goto_3

    .line 50
    .line 51
    .line 52
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    instance-of v3, v3, Landroid/view/View;

    .line 56
    .line 57
    if-eqz v3, :cond_4

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    check-cast p1, Landroid/view/View;

    .line 64
    .line 65
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_5
    :goto_3
    check-cast p1, Landroid/view/ViewGroup;

    .line 69
    return-object p1

    .line 70
    :cond_6
    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/leaderboard/RankingUserListLayoutAdapter;->getCellCount()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/leaderboard/RankingUserListLayoutAdapter;->getCellCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-ge p1, v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return-object p1
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/leaderboard/RankingUserListLayoutAdapter;->getCellCount()I

    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x3

    .line 9
    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    return v0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_1
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    move-object/from16 v2, p3

    .line 7
    const/4 v3, 0x2

    .line 8
    .line 9
    if-nez p1, :cond_8

    .line 10
    .line 11
    .line 12
    const v4, 0x7f0d0693

    .line 13
    .line 14
    const-string v5, "rankingTop3"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v4, v2, v1, v5}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    const v2, 0x7f0a05a9

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v4

    .line 26
    .line 27
    check-cast v4, Landroid/view/ViewGroup;

    .line 28
    .line 29
    .line 30
    const v5, 0x7f0a0cad

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v6

    .line 35
    .line 36
    check-cast v6, Landroid/view/ViewGroup;

    .line 37
    .line 38
    .line 39
    const v7, 0x7f0a0e6f

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v8

    .line 44
    .line 45
    check-cast v8, Landroid/view/ViewGroup;

    .line 46
    const/4 v9, 0x0

    .line 47
    move v10, v9

    .line 48
    :goto_0
    const/4 v11, 0x3

    .line 49
    .line 50
    if-ge v10, v11, :cond_7

    .line 51
    .line 52
    iget-object v11, v0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 53
    .line 54
    .line 55
    invoke-interface {v11, v10}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 56
    move-result-object v11

    .line 57
    .line 58
    sget-object v12, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 59
    .line 60
    if-eq v11, v12, :cond_6

    .line 61
    const/4 v11, 0x1

    .line 62
    .line 63
    if-nez v10, :cond_1

    .line 64
    :cond_0
    move v13, v2

    .line 65
    move-object v12, v4

    .line 66
    goto :goto_1

    .line 67
    .line 68
    :cond_1
    if-ne v10, v11, :cond_2

    .line 69
    move v13, v5

    .line 70
    move-object v12, v6

    .line 71
    goto :goto_1

    .line 72
    .line 73
    :cond_2
    if-ne v10, v3, :cond_0

    .line 74
    move v13, v7

    .line 75
    move-object v12, v8

    .line 76
    .line 77
    .line 78
    :goto_1
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    .line 79
    move-result v14

    .line 80
    const/4 v15, 0x0

    .line 81
    .line 82
    if-lez v14, :cond_3

    .line 83
    .line 84
    .line 85
    invoke-virtual {v12, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 86
    move-result-object v14

    .line 87
    goto :goto_2

    .line 88
    :cond_3
    move-object v14, v15

    .line 89
    .line 90
    .line 91
    :goto_2
    invoke-virtual {v12}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 95
    move-result-object v13

    .line 96
    .line 97
    check-cast v13, Ljava/lang/Integer;

    .line 98
    .line 99
    if-nez v13, :cond_4

    .line 100
    const/4 v13, -0x1

    .line 101
    goto :goto_3

    .line 102
    .line 103
    .line 104
    :cond_4
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 105
    move-result v13

    .line 106
    .line 107
    :goto_3
    iget-object v5, v0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 108
    .line 109
    .line 110
    invoke-interface {v5, v10}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 111
    move-result v5

    .line 112
    .line 113
    if-eq v13, v5, :cond_5

    .line 114
    .line 115
    .line 116
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    move-result-object v5

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v2, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 121
    goto :goto_4

    .line 122
    :cond_5
    move-object v15, v14

    .line 123
    .line 124
    :goto_4
    iget-object v5, v0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 125
    .line 126
    .line 127
    invoke-interface {v5, v10, v15, v12}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 128
    move-result-object v5

    .line 129
    .line 130
    .line 131
    invoke-virtual {v12, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v12, v11}, Landroid/view/View;->setClickable(Z)V

    .line 135
    .line 136
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 137
    .line 138
    .line 139
    const v5, 0x7f0a0cad

    .line 140
    goto :goto_0

    .line 141
    .line 142
    :cond_7
    iget-object v2, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    .line 147
    iget-object v2, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    .line 152
    iget-object v2, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v8, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    return-object v1

    .line 157
    .line 158
    :cond_8
    add-int/lit8 v3, p1, 0x2

    .line 159
    .line 160
    .line 161
    invoke-super {v0, v3, v1, v2}, Lcom/narvii/list/ProxyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 162
    move-result-object v1

    .line 163
    return-object v1
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 7

    .line 1
    .line 2
    if-nez p2, :cond_3

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p5}, Lcom/narvii/leaderboard/RankingUserListLayoutAdapter;->searchFeedColumnParent(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 6
    move-result-object p2

    .line 7
    const/4 p3, 0x0

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 13
    move-result p5

    .line 14
    .line 15
    .line 16
    const v0, 0x7f0a05a9

    .line 17
    .line 18
    if-ne p5, v0, :cond_1

    .line 19
    :cond_0
    :goto_0
    move v2, p3

    .line 20
    goto :goto_1

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 24
    move-result p5

    .line 25
    .line 26
    .line 27
    const v0, 0x7f0a0cad

    .line 28
    .line 29
    if-ne p5, v0, :cond_2

    .line 30
    const/4 p3, 0x1

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 35
    move-result p2

    .line 36
    .line 37
    .line 38
    const p5, 0x7f0a0e6f

    .line 39
    .line 40
    if-ne p2, p5, :cond_0

    .line 41
    const/4 p3, 0x2

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :goto_1
    iget-object p2, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 45
    .line 46
    .line 47
    invoke-interface {p2, v2}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 48
    move-result-object v3

    .line 49
    const/4 v5, 0x0

    .line 50
    move-object v0, p0

    .line 51
    move-object v1, p1

    .line 52
    move-object v4, p4

    .line 53
    .line 54
    .line 55
    invoke-super/range {v0 .. v5}, Lcom/narvii/list/ProxyAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 56
    move-result p1

    .line 57
    return p1

    .line 58
    .line 59
    :cond_3
    iget-object p3, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 60
    .line 61
    add-int/lit8 v0, p2, 0x2

    .line 62
    .line 63
    .line 64
    invoke-interface {p3, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 65
    move-result-object v4

    .line 66
    move-object v1, p0

    .line 67
    move-object v2, p1

    .line 68
    move v3, p2

    .line 69
    move-object v5, p4

    .line 70
    move-object v6, p5

    .line 71
    .line 72
    .line 73
    invoke-super/range {v1 .. v6}, Lcom/narvii/list/ProxyAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 74
    move-result p1

    .line 75
    return p1
.end method
