.class public Lcom/narvii/feed/FeatureLayoutAdapter;
.super Lcom/narvii/list/ProxyAdapter;
.source "SourceFile"


# instance fields
.field private feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

.field private topCount:I


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/feed/FeaturedFeedAdapter;)V
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
    .line 8
    iput-object p2, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 9
    return-void
.end method

.method private getExtraCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    move-result v0

    .line 21
    sub-int/2addr v1, v0

    .line 22
    return v1
.end method

.method private getFeedCellCount()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/feed/FeatureLayoutAdapter;->getPinCount()I

    .line 18
    move-result v1

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/narvii/feed/FeaturedFeedAdapter;->getTopCellCount()I

    .line 24
    move-result v2

    .line 25
    sub-int/2addr v0, v2

    .line 26
    sub-int/2addr v0, v1

    .line 27
    add-int/2addr v1, v2

    .line 28
    .line 29
    iput v1, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    .line 30
    .line 31
    if-lez v0, :cond_2

    .line 32
    .line 33
    rem-int/lit8 v2, v0, 0x2

    .line 34
    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    div-int/lit8 v0, v0, 0x2

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 41
    .line 42
    div-int/lit8 v0, v0, 0x2

    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    :goto_0
    add-int/2addr v1, v0

    .line 46
    :cond_2
    return v1
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
    const v4, 0x7f0a056f

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
    const v4, 0x7f0a0570

    .line 38
    .line 39
    if-ne v3, v4, :cond_3

    .line 40
    goto :goto_3

    .line 41
    .line 42
    .line 43
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    instance-of v3, v3, Landroid/view/View;

    .line 47
    .line 48
    if-eqz v3, :cond_4

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    check-cast p1, Landroid/view/View;

    .line 55
    .line 56
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_5
    :goto_3
    check-cast p1, Landroid/view/ViewGroup;

    .line 60
    return-object p1

    .line 61
    :cond_6
    return-object v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/feed/FeatureLayoutAdapter;->getFeedCellCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/feed/FeatureLayoutAdapter;->getExtraCount()I

    .line 8
    move-result v1

    .line 9
    add-int/2addr v0, v1

    .line 10
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/feed/FeatureLayoutAdapter;->getFeedCellCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-ge p1, v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->getItem(I)Ljava/lang/Object;

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

.method public getItemId(I)J
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/feed/FeatureLayoutAdapter;->getFeedCellCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-ge p1, v0, :cond_0

    .line 7
    int-to-long v0, p1

    .line 8
    return-wide v0

    .line 9
    .line 10
    :cond_0
    iget-object v1, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 18
    move-result v1

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 21
    sub-int/2addr p1, v0

    .line 22
    add-int/2addr v1, p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v1}, Lcom/narvii/list/NVPagedAdapter;->getItemId(I)J

    .line 26
    move-result-wide v0

    .line 27
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/feed/FeatureLayoutAdapter;->getFeedCellCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-ge p1, v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItemViewType(I)I

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 23
    move-result v1

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 26
    sub-int/2addr p1, v0

    .line 27
    add-int/2addr v1, p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Lcom/narvii/list/NVPagedAdapter;->getItemViewType(I)I

    .line 31
    move-result p1

    .line 32
    .line 33
    add-int/lit8 p1, p1, 0x1

    .line 34
    return p1
.end method

.method public getPinCount()I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return v1

    .line 11
    :cond_0
    move v2, v1

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    move-result v3

    .line 16
    .line 17
    if-ge v1, v3, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    check-cast v3, Lcom/narvii/model/Feed;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/narvii/model/Feed;->featureType()I

    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x2

    .line 29
    .line 30
    if-ne v3, v4, :cond_1

    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    move-object/from16 v3, p3

    .line 9
    .line 10
    .line 11
    invoke-direct/range {p0 .. p0}, Lcom/narvii/feed/FeatureLayoutAdapter;->getFeedCellCount()I

    .line 12
    move-result v4

    .line 13
    .line 14
    .line 15
    const v5, 0x7f0a0021

    .line 16
    .line 17
    .line 18
    const v6, 0x7f0a0022

    .line 19
    .line 20
    if-ge v1, v4, :cond_b

    .line 21
    .line 22
    iget v4, v0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    .line 23
    .line 24
    if-ge v1, v4, :cond_1

    .line 25
    .line 26
    iget-object v4, v0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, v1, v2, v3}, Lcom/narvii/list/NVPagedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 37
    .line 38
    if-eq v2, v3, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v6, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v6, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 48
    :goto_0
    return-object v1

    .line 49
    .line 50
    :cond_1
    iget-object v4, v0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 54
    move-result-object v4

    .line 55
    .line 56
    .line 57
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 58
    move-result v4

    .line 59
    .line 60
    .line 61
    const v5, 0x7f0d0244

    .line 62
    .line 63
    const-string v6, "feedColumn2"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v5, v3, v2, v6}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 67
    move-result-object v3

    .line 68
    .line 69
    .line 70
    const v5, 0x7f0a0020

    .line 71
    .line 72
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    const v5, 0x7f0a0571

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    move-result-object v5

    .line 83
    .line 84
    iget v6, v0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    .line 85
    const/4 v7, 0x0

    .line 86
    .line 87
    if-ne v1, v6, :cond_2

    .line 88
    move v6, v7

    .line 89
    goto :goto_1

    .line 90
    .line 91
    :cond_2
    const/16 v6, 0x8

    .line 92
    .line 93
    .line 94
    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    const v5, 0x7f0a056f

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    move-result-object v6

    .line 102
    .line 103
    check-cast v6, Landroid/view/ViewGroup;

    .line 104
    .line 105
    .line 106
    const v8, 0x7f0a0570

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    move-result-object v9

    .line 111
    .line 112
    check-cast v9, Landroid/view/ViewGroup;

    .line 113
    .line 114
    if-eq v3, v2, :cond_3

    .line 115
    .line 116
    iget-object v2, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 117
    .line 118
    instance-of v10, v2, Lcom/narvii/list/NVListFragment;

    .line 119
    .line 120
    if-eqz v10, :cond_3

    .line 121
    .line 122
    check-cast v2, Lcom/narvii/list/NVListFragment;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Lcom/narvii/list/NVListFragment;->getListSelector()Landroid/graphics/drawable/Drawable;

    .line 126
    move-result-object v2

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    .line 131
    iget-object v2, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    .line 136
    iget-object v2, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 137
    .line 138
    check-cast v2, Lcom/narvii/list/NVListFragment;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Lcom/narvii/list/NVListFragment;->getListSelector()Landroid/graphics/drawable/Drawable;

    .line 142
    move-result-object v2

    .line 143
    .line 144
    .line 145
    invoke-virtual {v9, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    .line 147
    iget-object v2, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v9, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    .line 152
    .line 153
    :cond_3
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 154
    move-result v2

    .line 155
    const/4 v10, 0x0

    .line 156
    .line 157
    if-lez v2, :cond_4

    .line 158
    .line 159
    .line 160
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 161
    move-result-object v2

    .line 162
    goto :goto_2

    .line 163
    :cond_4
    move-object v2, v10

    .line 164
    .line 165
    .line 166
    :goto_2
    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 167
    .line 168
    iget v11, v0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    .line 169
    .line 170
    sub-int v11, v1, v11

    .line 171
    .line 172
    mul-int/lit8 v11, v11, 0x2

    .line 173
    const/4 v12, 0x1

    .line 174
    add-int/2addr v11, v12

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 178
    move-result-object v13

    .line 179
    .line 180
    check-cast v13, Ljava/lang/Integer;

    .line 181
    .line 182
    if-nez v13, :cond_5

    .line 183
    const/4 v13, -0x1

    .line 184
    goto :goto_3

    .line 185
    .line 186
    .line 187
    :cond_5
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 188
    move-result v13

    .line 189
    .line 190
    :goto_3
    iget-object v15, v0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 191
    .line 192
    iget v14, v0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    .line 193
    add-int/2addr v14, v11

    .line 194
    sub-int/2addr v14, v12

    .line 195
    .line 196
    .line 197
    invoke-virtual {v15, v14}, Lcom/narvii/list/NVPagedAdapter;->getItemViewType(I)I

    .line 198
    move-result v14

    .line 199
    .line 200
    if-eq v13, v14, :cond_6

    .line 201
    .line 202
    .line 203
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    move-result-object v2

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3, v5, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 208
    move-object v2, v10

    .line 209
    .line 210
    :cond_6
    iget-object v5, v0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 211
    .line 212
    iget v13, v0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    .line 213
    add-int/2addr v11, v13

    .line 214
    sub-int/2addr v11, v12

    .line 215
    .line 216
    .line 217
    invoke-virtual {v5, v11, v2, v6}, Lcom/narvii/list/NVPagedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 218
    move-result-object v2

    .line 219
    .line 220
    .line 221
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v6, v12}, Landroid/view/View;->setClickable(Z)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    .line 228
    move-result v2

    .line 229
    .line 230
    if-lez v2, :cond_7

    .line 231
    .line 232
    .line 233
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 234
    move-result-object v2

    .line 235
    goto :goto_4

    .line 236
    :cond_7
    move-object v2, v10

    .line 237
    .line 238
    .line 239
    :goto_4
    invoke-virtual {v9}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 240
    .line 241
    iget v5, v0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    .line 242
    sub-int/2addr v1, v5

    .line 243
    .line 244
    mul-int/lit8 v1, v1, 0x2

    .line 245
    .line 246
    add-int/lit8 v1, v1, 0x2

    .line 247
    add-int/2addr v5, v1

    .line 248
    sub-int/2addr v5, v12

    .line 249
    .line 250
    if-ge v5, v4, :cond_a

    .line 251
    .line 252
    .line 253
    invoke-virtual {v3, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 254
    move-result-object v4

    .line 255
    .line 256
    check-cast v4, Ljava/lang/Integer;

    .line 257
    .line 258
    if-nez v4, :cond_8

    .line 259
    const/4 v14, -0x1

    .line 260
    goto :goto_5

    .line 261
    .line 262
    .line 263
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 264
    move-result v14

    .line 265
    .line 266
    :goto_5
    iget-object v4, v0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 267
    .line 268
    iget v5, v0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    .line 269
    add-int/2addr v5, v1

    .line 270
    sub-int/2addr v5, v12

    .line 271
    .line 272
    .line 273
    invoke-virtual {v4, v5}, Lcom/narvii/list/NVPagedAdapter;->getItemViewType(I)I

    .line 274
    move-result v4

    .line 275
    .line 276
    if-eq v14, v4, :cond_9

    .line 277
    .line 278
    .line 279
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    move-result-object v2

    .line 281
    .line 282
    .line 283
    invoke-virtual {v3, v8, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 284
    goto :goto_6

    .line 285
    :cond_9
    move-object v10, v2

    .line 286
    .line 287
    :goto_6
    iget-object v2, v0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 288
    .line 289
    iget v4, v0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    .line 290
    add-int/2addr v1, v4

    .line 291
    sub-int/2addr v1, v12

    .line 292
    .line 293
    .line 294
    invoke-virtual {v2, v1, v10, v9}, Lcom/narvii/list/NVPagedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 295
    move-result-object v1

    .line 296
    .line 297
    .line 298
    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v9, v12}, Landroid/view/View;->setClickable(Z)V

    .line 302
    goto :goto_7

    .line 303
    .line 304
    .line 305
    :cond_a
    invoke-virtual {v9, v7}, Landroid/view/View;->setClickable(Z)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v3, v8, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 309
    :goto_7
    return-object v3

    .line 310
    .line 311
    :cond_b
    iget-object v7, v0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v7}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 315
    move-result-object v7

    .line 316
    .line 317
    .line 318
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 319
    move-result v7

    .line 320
    .line 321
    iget-object v8, v0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 322
    sub-int/2addr v1, v4

    .line 323
    add-int/2addr v7, v1

    .line 324
    .line 325
    .line 326
    invoke-virtual {v8, v7, v2, v3}, Lcom/narvii/list/NVPagedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 327
    move-result-object v1

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 331
    move-result-object v2

    .line 332
    .line 333
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 334
    .line 335
    if-eq v2, v3, :cond_c

    .line 336
    .line 337
    .line 338
    invoke-virtual {v1, v6, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 339
    goto :goto_8

    .line 340
    .line 341
    :cond_c
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v1, v6, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 345
    :goto_8
    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->getViewTypeCount()I

    .line 6
    move-result v0

    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 9
    return v0
.end method

.method public isEnabled(I)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/feed/FeatureLayoutAdapter;->getFeedCellCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-ge p1, v0, :cond_1

    .line 7
    .line 8
    iget v0, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    .line 9
    .line 10
    if-ge p1, v0, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1

    .line 15
    .line 16
    :cond_1
    iget-object v1, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 24
    move-result v1

    .line 25
    .line 26
    iget-object v2, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 27
    sub-int/2addr p1, v0

    .line 28
    add-int/2addr v1, p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v1}, Lcom/narvii/list/NVPagedAdapter;->isEnabled(I)Z

    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/feed/FeatureLayoutAdapter;->getFeedCellCount()I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-ge p2, p1, :cond_5

    .line 7
    .line 8
    iget p1, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    .line 9
    .line 10
    if-ge p2, p1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->getItem(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    move-object v0, v1

    .line 18
    move v2, p2

    .line 19
    move-object v4, p4

    .line 20
    move-object v5, p5

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/list/NVAdapter;->dispatchOnItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-direct {p0, p5}, Lcom/narvii/feed/FeatureLayoutAdapter;->searchFeedColumnParent(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 29
    move-result-object p1

    .line 30
    const/4 p3, 0x0

    .line 31
    .line 32
    if-eqz p1, :cond_4

    .line 33
    .line 34
    iget p4, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    .line 35
    sub-int/2addr p2, p4

    .line 36
    .line 37
    mul-int/lit8 p2, p2, 0x2

    .line 38
    .line 39
    add-int/lit8 p4, p2, 0x1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 43
    move-result v0

    .line 44
    .line 45
    .line 46
    const v1, 0x7f0a0570

    .line 47
    .line 48
    if-ne v0, v1, :cond_1

    .line 49
    .line 50
    add-int/lit8 p4, p2, 0x2

    .line 51
    :cond_1
    const/4 p2, 0x0

    .line 52
    .line 53
    if-ne p5, p1, :cond_2

    .line 54
    move-object v5, p2

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move-object v5, p5

    .line 57
    .line 58
    :goto_0
    iget-object p5, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 59
    .line 60
    iget v0, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    .line 61
    add-int/2addr v0, p4

    .line 62
    .line 63
    add-int/lit8 v0, v0, -0x1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p5, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->getItem(I)Ljava/lang/Object;

    .line 67
    move-result-object v3

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 71
    move-result p5

    .line 72
    .line 73
    if-lez p5, :cond_3

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 77
    move-result-object p2

    .line 78
    :cond_3
    move-object v4, p2

    .line 79
    .line 80
    iget-object v1, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 81
    .line 82
    iget p1, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    .line 83
    add-int/2addr p4, p1

    .line 84
    .line 85
    add-int/lit8 v2, p4, -0x1

    .line 86
    move-object v0, v1

    .line 87
    .line 88
    .line 89
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/list/NVAdapter;->dispatchOnItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 90
    move-result p1

    .line 91
    return p1

    .line 92
    :cond_4
    return p3

    .line 93
    .line 94
    :cond_5
    iget-object v0, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 102
    move-result v0

    .line 103
    sub-int/2addr p2, p1

    .line 104
    .line 105
    add-int v3, v0, p2

    .line 106
    .line 107
    iget-object v2, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 108
    move-object v1, v2

    .line 109
    move-object v4, p3

    .line 110
    move-object v5, p4

    .line 111
    move-object v6, p5

    .line 112
    .line 113
    .line 114
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/list/NVAdapter;->dispatchOnItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 115
    move-result p1

    .line 116
    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/feed/FeatureLayoutAdapter;->getFeedCellCount()I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-ge p2, p1, :cond_5

    .line 7
    .line 8
    iget p1, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    .line 9
    .line 10
    if-ge p2, p1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->getItem(I)Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 18
    move-object v0, v1

    .line 19
    move-object v4, p4

    .line 20
    move-object v5, p5

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/list/NVAdapter;->dispatchOnLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-direct {p0, p5}, Lcom/narvii/feed/FeatureLayoutAdapter;->searchFeedColumnParent(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 29
    move-result-object p1

    .line 30
    const/4 p3, 0x0

    .line 31
    .line 32
    if-eqz p1, :cond_4

    .line 33
    .line 34
    iget p4, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    .line 35
    sub-int/2addr p2, p4

    .line 36
    .line 37
    mul-int/lit8 p2, p2, 0x2

    .line 38
    .line 39
    add-int/lit8 p4, p2, 0x1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 43
    move-result v0

    .line 44
    .line 45
    .line 46
    const v1, 0x7f0a0570

    .line 47
    .line 48
    if-ne v0, v1, :cond_1

    .line 49
    .line 50
    add-int/lit8 p4, p2, 0x2

    .line 51
    :cond_1
    const/4 p2, 0x0

    .line 52
    .line 53
    if-ne p5, p1, :cond_2

    .line 54
    move-object v5, p2

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move-object v5, p5

    .line 57
    .line 58
    :goto_0
    iget-object p5, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 59
    .line 60
    iget v0, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    .line 61
    add-int/2addr v0, p4

    .line 62
    .line 63
    add-int/lit8 v0, v0, -0x1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p5, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->getItem(I)Ljava/lang/Object;

    .line 67
    move-result-object v3

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 71
    move-result p5

    .line 72
    .line 73
    if-lez p5, :cond_3

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 77
    move-result-object p2

    .line 78
    :cond_3
    move-object v4, p2

    .line 79
    .line 80
    iget-object v1, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 81
    .line 82
    iget p1, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    .line 83
    add-int/2addr p4, p1

    .line 84
    .line 85
    add-int/lit8 v2, p4, -0x1

    .line 86
    move-object v0, v1

    .line 87
    .line 88
    .line 89
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/list/NVAdapter;->dispatchOnLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 90
    move-result p1

    .line 91
    return p1

    .line 92
    :cond_4
    return p3

    .line 93
    .line 94
    :cond_5
    iget-object v0, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 102
    move-result v0

    .line 103
    sub-int/2addr p2, p1

    .line 104
    .line 105
    add-int v3, v0, p2

    .line 106
    .line 107
    iget-object v2, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 108
    move-object v1, v2

    .line 109
    move-object v4, p3

    .line 110
    move-object v5, p4

    .line 111
    move-object v6, p5

    .line 112
    .line 113
    .line 114
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/list/NVAdapter;->dispatchOnLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 115
    move-result p1

    .line 116
    return p1
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/ProxyAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    .line 7
    return-void
.end method
