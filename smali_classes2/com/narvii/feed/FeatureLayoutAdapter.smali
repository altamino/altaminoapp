.class public Lcom/narvii/feed/FeatureLayoutAdapter;
.super Lcom/narvii/list/ProxyAdapter;
.source "FeatureLayoutAdapter.java"


# instance fields
.field private feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

.field private topCount:I


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/feed/FeaturedFeedAdapter;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/narvii/list/ProxyAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 27
    invoke-virtual {p0, p2}, Lcom/narvii/list/ProxyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 28
    iput-object p2, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    return-void
.end method

.method private getExtraCount()I
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    invoke-virtual {v1}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v1

    .line 73
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method private getFeedCellCount()I
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 40
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 41
    invoke-virtual {p0}, Lcom/narvii/feed/FeatureLayoutAdapter;->getPinCount()I

    move-result v2

    .line 42
    iget-object v3, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    invoke-virtual {v3}, Lcom/narvii/feed/FeaturedFeedAdapter;->getTopCellCount()I

    move-result v3

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    add-int/2addr v2, v3

    .line 44
    iput v2, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    add-int/2addr v2, v1

    if-lez v0, :cond_2

    .line 47
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    :goto_0
    add-int/2addr v2, v0

    :cond_2
    return v2
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

    .line 258
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f090438

    if-eq v3, v4, :cond_5

    .line 259
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f090439

    if-ne v3, v4, :cond_3

    goto :goto_3

    .line 261
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_4

    .line 262
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 260
    :cond_5
    :goto_3
    check-cast v2, Landroid/view/ViewGroup;

    return-object v2

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

    .line 80
    invoke-direct {p0}, Lcom/narvii/feed/FeatureLayoutAdapter;->getFeedCellCount()I

    move-result v0

    invoke-direct {p0}, Lcom/narvii/feed/FeatureLayoutAdapter;->getExtraCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/narvii/feed/FeatureLayoutAdapter;->getFeedCellCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 3

    .line 101
    invoke-direct {p0}, Lcom/narvii/feed/FeatureLayoutAdapter;->getFeedCellCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    int-to-long v0, p1

    return-wide v0

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    invoke-virtual {v1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 106
    iget-object v2, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    sub-int/2addr p1, v0

    add-int/2addr v1, p1

    invoke-virtual {v2, v1}, Lcom/narvii/list/NVPagedAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 135
    invoke-direct {p0}, Lcom/narvii/feed/FeatureLayoutAdapter;->getFeedCellCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItemViewType(I)I

    move-result p1

    return p1

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    invoke-virtual {v1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 140
    iget-object v2, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    sub-int/2addr p1, v0

    add-int/2addr v1, p1

    invoke-virtual {v2, v1}, Lcom/narvii/list/NVPagedAdapter;->getItemViewType(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getPinCount()I
    .locals 5

    .line 53
    iget-object v0, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    .line 58
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Feed;

    invoke-virtual {v3}, Lcom/narvii/model/Feed;->featureType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 146
    invoke-direct/range {p0 .. p0}, Lcom/narvii/feed/FeatureLayoutAdapter;->getFeedCellCount()I

    move-result v4

    const v5, 0x7f090015

    const v6, 0x7f090016

    const/4 v7, 0x0

    .line 147
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    if-ge v1, v4, :cond_b

    .line 148
    iget v4, v0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    if-ge v1, v4, :cond_1

    .line 149
    iget-object v4, v0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    invoke-virtual {v4, v1, v2, v3}, Lcom/narvii/list/NVPagedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 150
    invoke-virtual {v1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_0

    .line 151
    invoke-virtual {v1, v6, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {v1, v6, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_0
    return-object v1

    .line 169
    :cond_1
    iget-object v4, v0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    invoke-virtual {v4}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const v5, 0x7f0b0216

    const-string v6, "feedColumn2"

    .line 170
    invoke-virtual {v0, v5, v3, v2, v6}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f090014

    .line 172
    invoke-virtual {v3, v5, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v5, 0x7f09043a

    .line 173
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 174
    iget v6, v0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    if-ne v1, v6, :cond_2

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const/16 v6, 0x8

    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f090438

    .line 175
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    const v8, 0x7f090439

    .line 176
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    if-eq v3, v2, :cond_3

    .line 177
    iget-object v2, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of v11, v2, Lcom/narvii/list/NVListFragment;

    if-eqz v11, :cond_3

    .line 178
    check-cast v2, Lcom/narvii/list/NVListFragment;

    invoke-virtual {v2}, Lcom/narvii/list/NVListFragment;->getListSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iget-object v2, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v2, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    check-cast v2, Lcom/narvii/list/NVListFragment;

    invoke-virtual {v2}, Lcom/narvii/list/NVListFragment;->getListSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    iget-object v2, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    :cond_3
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v11, 0x0

    if-lez v2, :cond_4

    .line 185
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v11

    .line 186
    :goto_2
    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 187
    iget v12, v0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    sub-int v12, v1, v12

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v9

    .line 188
    invoke-virtual {v3, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    if-nez v13, :cond_5

    const/4 v13, -0x1

    goto :goto_3

    .line 189
    :cond_5
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 190
    :goto_3
    iget-object v15, v0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    iget v14, v0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    add-int/2addr v14, v12

    sub-int/2addr v14, v9

    invoke-virtual {v15, v14}, Lcom/narvii/list/NVPagedAdapter;->getItemViewType(I)I

    move-result v14

    if-eq v13, v14, :cond_6

    .line 193
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v2, v11

    .line 195
    :cond_6
    iget-object v5, v0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    iget v13, v0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    add-int/2addr v12, v13

    sub-int/2addr v12, v9

    invoke-virtual {v5, v12, v2, v6}, Lcom/narvii/list/NVPagedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 196
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 197
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 199
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 200
    invoke-virtual {v10, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_4

    :cond_7
    move-object v2, v11

    .line 201
    :goto_4
    invoke-virtual {v10}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 202
    iget v5, v0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    sub-int/2addr v1, v5

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v5, v1

    sub-int/2addr v5, v9

    if-ge v5, v4, :cond_a

    .line 204
    invoke-virtual {v3, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_8

    const/4 v14, -0x1

    goto :goto_5

    .line 205
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 206
    :goto_5
    iget-object v4, v0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    iget v5, v0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    add-int/2addr v5, v1

    sub-int/2addr v5, v9

    invoke-virtual {v4, v5}, Lcom/narvii/list/NVPagedAdapter;->getItemViewType(I)I

    move-result v4

    if-eq v14, v4, :cond_9

    .line 210
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 209
    invoke-virtual {v3, v8, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v2, v11

    .line 212
    :cond_9
    iget-object v4, v0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    iget v5, v0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    add-int/2addr v1, v5

    sub-int/2addr v1, v9

    invoke-virtual {v4, v1, v2, v10}, Lcom/narvii/list/NVPagedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 214
    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 215
    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->setClickable(Z)V

    goto :goto_6

    .line 217
    :cond_a
    invoke-virtual {v10, v7}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 218
    invoke-virtual {v3, v8, v11}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_6
    return-object v3

    .line 158
    :cond_b
    iget-object v7, v0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    invoke-virtual {v7}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .line 159
    iget-object v9, v0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    sub-int/2addr v1, v4

    add-int/2addr v7, v1

    invoke-virtual {v9, v7, v2, v3}, Lcom/narvii/list/NVPagedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 161
    invoke-virtual {v1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_c

    .line 162
    invoke-virtual {v1, v6, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_7

    .line 164
    :cond_c
    invoke-virtual {v1, v6, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_7
    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3

    .line 118
    invoke-direct {p0}, Lcom/narvii/feed/FeatureLayoutAdapter;->getFeedCellCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 120
    iget v0, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    invoke-virtual {v1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 123
    iget-object v2, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    sub-int/2addr p1, v0

    add-int/2addr v1, p1

    invoke-virtual {v2, v1}, Lcom/narvii/list/NVPagedAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 7

    .line 227
    invoke-direct {p0}, Lcom/narvii/feed/FeatureLayoutAdapter;->getFeedCellCount()I

    move-result p1

    if-ge p2, p1, :cond_5

    .line 230
    iget p1, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    if-ge p2, p1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    .line 232
    invoke-virtual {v1, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 231
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/list/NVAdapter;->dispatchOnItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    .line 233
    :cond_0
    invoke-direct {p0, p5}, Lcom/narvii/feed/FeatureLayoutAdapter;->searchFeedColumnParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_4

    .line 234
    iget p4, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    sub-int/2addr p2, p4

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x1

    .line 235
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p4

    const v0, 0x7f090439

    if-ne p4, v0, :cond_1

    add-int/lit8 p2, p2, 0x1

    :cond_1
    const/4 p4, 0x0

    if-ne p5, p1, :cond_2

    move-object v5, p4

    goto :goto_0

    :cond_2
    move-object v5, p5

    .line 238
    :goto_0
    iget-object p5, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    iget v0, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p5, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 239
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p5

    if-lez p5, :cond_3

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    :cond_3
    move-object v4, p4

    .line 241
    iget-object v1, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    iget p1, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    add-int/2addr p2, p1

    add-int/lit8 v2, p2, -0x1

    move-object v0, v1

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/list/NVAdapter;->dispatchOnItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_4
    return p3

    .line 247
    :cond_5
    iget-object v0, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p2, p1

    add-int v3, v0, p2

    .line 249
    iget-object v2, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    move-object v1, v2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/narvii/list/NVAdapter;->dispatchOnItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 7

    .line 270
    invoke-direct {p0}, Lcom/narvii/feed/FeatureLayoutAdapter;->getFeedCellCount()I

    move-result p1

    if-ge p2, p1, :cond_5

    .line 273
    iget p1, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    if-ge p2, p1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    const/4 v2, 0x0

    .line 275
    invoke-virtual {v1, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v1

    move-object v4, p4

    move-object v5, p5

    .line 274
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/list/NVAdapter;->dispatchOnLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    .line 276
    :cond_0
    invoke-direct {p0, p5}, Lcom/narvii/feed/FeatureLayoutAdapter;->searchFeedColumnParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_4

    .line 277
    iget p4, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    sub-int/2addr p2, p4

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x1

    .line 278
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p4

    const v0, 0x7f090439

    if-ne p4, v0, :cond_1

    add-int/lit8 p2, p2, 0x1

    :cond_1
    const/4 p4, 0x0

    if-ne p5, p1, :cond_2

    move-object v5, p4

    goto :goto_0

    :cond_2
    move-object v5, p5

    .line 281
    :goto_0
    iget-object p5, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    iget v0, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p5, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 282
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p5

    if-lez p5, :cond_3

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    :cond_3
    move-object v4, p4

    .line 284
    iget-object v1, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    iget p1, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    add-int/2addr p2, p1

    add-int/lit8 v2, p2, -0x1

    move-object v0, v1

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/list/NVAdapter;->dispatchOnLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_4
    return p3

    .line 290
    :cond_5
    iget-object v0, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p2, p1

    add-int v3, v0, p2

    .line 292
    iget-object v2, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->feedAdapter:Lcom/narvii/feed/FeaturedFeedAdapter;

    move-object v1, v2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/narvii/list/NVAdapter;->dispatchOnLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

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

    .line 95
    invoke-super {p0, p1, p2}, Lcom/narvii/list/ProxyAdapter;->refresh(ILcom/narvii/util/Callback;)V

    const/4 p1, 0x0

    .line 96
    iput p1, p0, Lcom/narvii/feed/FeatureLayoutAdapter;->topCount:I

    return-void
.end method
