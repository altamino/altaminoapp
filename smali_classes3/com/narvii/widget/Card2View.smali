.class public Lcom/narvii/widget/Card2View;
.super Landroid/view/ViewGroup;
.source "Card2View.java"


# instance fields
.field content:Landroid/widget/TextView;

.field imgCount:I

.field imgs:[Lcom/narvii/widget/NVImageView;

.field isDarkTheme:Z

.field isOfficial:Z

.field more:Landroid/view/View;

.field rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 7

    .line 69
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 70
    sget v0, Lcom/narvii/lib/R$id;->content:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/widget/Card2View;->content:Landroid/widget/TextView;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 73
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 74
    instance-of v5, v4, Lcom/narvii/widget/NVImageView;

    if-eqz v5, :cond_0

    .line 75
    check-cast v4, Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array v1, v2, [Lcom/narvii/widget/NVImageView;

    .line 79
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/widget/Card2View;->imgs:[Lcom/narvii/widget/NVImageView;

    .line 80
    sget v0, Lcom/narvii/lib/R$id;->mask:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/Card2View;->more:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    move-object/from16 v0, p0

    .line 98
    iget-object v1, v0, Lcom/narvii/widget/Card2View;->imgs:[Lcom/narvii/widget/NVImageView;

    array-length v2, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x2

    div-int/2addr v2, v4

    .line 99
    iget v5, v0, Lcom/narvii/widget/Card2View;->imgCount:I

    array-length v1, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int v5, p4, p2

    sub-int v6, p5, p3

    .line 101
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    sub-int v7, v5, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/2addr v7, v2

    .line 102
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v8

    .line 103
    iget-object v9, v0, Lcom/narvii/widget/Card2View;->content:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v10

    sub-int v10, v6, v10

    mul-int/lit8 v11, v7, 0x2

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_0

    if-le v1, v2, :cond_0

    move v1, v2

    :cond_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 108
    :goto_0
    iget-object v11, v0, Lcom/narvii/widget/Card2View;->imgs:[Lcom/narvii/widget/NVImageView;

    array-length v12, v11

    const/4 v13, 0x4

    if-ge v10, v12, :cond_2

    .line 109
    aget-object v11, v11, v10

    if-ge v10, v1, :cond_1

    const/4 v13, 0x0

    .line 110
    :cond_1
    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 112
    :cond_2
    iget-object v10, v0, Lcom/narvii/widget/Card2View;->more:Landroid/view/View;

    iget v11, v0, Lcom/narvii/widget/Card2View;->imgCount:I

    if-le v11, v1, :cond_3

    const/4 v13, 0x0

    :cond_3
    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    .line 114
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v10

    sub-int v10, v6, v10

    if-nez v1, :cond_4

    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    if-le v1, v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x1

    :goto_1
    mul-int v4, v4, v7

    sub-int/2addr v10, v4

    .line 115
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int v1, v10, v1

    .line 116
    iget-object v4, v0, Lcom/narvii/widget/Card2View;->content:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    if-le v4, v1, :cond_8

    .line 117
    iget-object v4, v0, Lcom/narvii/widget/Card2View;->content:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v13

    sub-int v13, v5, v13

    invoke-virtual {v4, v11, v12, v13, v10}, Landroid/widget/TextView;->layout(IIII)V

    .line 118
    iget-object v4, v0, Lcom/narvii/widget/Card2View;->rect:Landroid/graphics/Rect;

    if-nez v4, :cond_6

    .line 119
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/narvii/widget/Card2View;->rect:Landroid/graphics/Rect;

    .line 121
    :cond_6
    iget-object v4, v0, Lcom/narvii/widget/Card2View;->content:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    const/4 v11, 0x1

    :goto_2
    if-ge v11, v4, :cond_9

    .line 122
    iget-object v12, v0, Lcom/narvii/widget/Card2View;->content:Landroid/widget/TextView;

    iget-object v13, v0, Lcom/narvii/widget/Card2View;->rect:Landroid/graphics/Rect;

    invoke-virtual {v12, v11, v13}, Landroid/widget/TextView;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 123
    iget-object v12, v0, Lcom/narvii/widget/Card2View;->rect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    if-le v12, v1, :cond_7

    .line 124
    iget-object v1, v0, Lcom/narvii/widget/Card2View;->content:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v12

    sub-int v12, v5, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v13

    iget-object v14, v0, Lcom/narvii/widget/Card2View;->rect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v14

    invoke-virtual {v1, v4, v11, v12, v13}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_3

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 129
    :cond_8
    iget-object v1, v0, Lcom/narvii/widget/Card2View;->content:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    sub-int v4, v5, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v11

    sub-int/2addr v4, v11

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 130
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v12

    sub-int v12, v10, v12

    invoke-static {v12, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 129
    invoke-virtual {v1, v4, v11}, Landroid/widget/TextView;->measure(II)V

    .line 131
    iget-object v1, v0, Lcom/narvii/widget/Card2View;->content:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v12

    sub-int v12, v5, v12

    invoke-virtual {v1, v4, v11, v12, v10}, Landroid/widget/TextView;->layout(IIII)V

    .line 135
    :cond_9
    :goto_3
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    .line 137
    iget-object v4, v0, Lcom/narvii/widget/Card2View;->imgs:[Lcom/narvii/widget/NVImageView;

    array-length v8, v4

    const/4 v11, 0x0

    :goto_4
    if-ge v9, v8, :cond_f

    aget-object v12, v4, v9

    .line 138
    invoke-virtual {v12}, Landroid/widget/ImageView;->getVisibility()I

    move-result v13

    if-nez v13, :cond_b

    sub-int v13, v5, v7

    sub-int/2addr v13, v1

    add-int v14, v13, v7

    sub-int/2addr v14, v3

    add-int v15, v10, v7

    add-int/lit8 v3, v15, -0x1

    .line 139
    invoke-virtual {v12, v13, v10, v14, v3}, Landroid/widget/ImageView;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    if-ne v11, v2, :cond_a

    .line 143
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    move v10, v15

    goto :goto_5

    :cond_a
    add-int/2addr v1, v7

    :cond_b
    :goto_5
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x1

    goto :goto_4

    .line 150
    :cond_c
    iget-object v1, v0, Lcom/narvii/widget/Card2View;->imgs:[Lcom/narvii/widget/NVImageView;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_6
    if-ge v9, v3, :cond_f

    aget-object v5, v1, v9

    .line 151
    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v11

    if-nez v11, :cond_e

    add-int v11, v8, v7

    add-int/lit8 v12, v11, -0x1

    add-int v13, v10, v7

    add-int/lit8 v14, v13, -0x1

    .line 152
    invoke-virtual {v5, v8, v10, v12, v14}, Landroid/widget/ImageView;->layout(IIII)V

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v2, :cond_d

    .line 156
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    move v8, v5

    move v10, v13

    goto :goto_7

    :cond_d
    move v8, v11

    :cond_e
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 163
    :cond_f
    iget-object v1, v0, Lcom/narvii/widget/Card2View;->more:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_11

    .line 164
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 165
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    goto :goto_8

    .line 167
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    mul-int v2, v2, v7

    add-int/2addr v1, v2

    .line 169
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v6, v2

    sub-int/2addr v6, v7

    .line 170
    iget-object v2, v0, Lcom/narvii/widget/Card2View;->more:Landroid/view/View;

    add-int v3, v1, v7

    add-int/2addr v7, v6

    invoke-virtual {v2, v1, v6, v3, v7}, Landroid/view/View;->layout(IIII)V

    :cond_11
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 85
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 86
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    .line 87
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    .line 88
    iget-object v0, p0, Lcom/narvii/widget/Card2View;->content:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v0, v2, p2}, Landroid/widget/TextView;->measure(II)V

    .line 89
    iget-object p2, p0, Lcom/narvii/widget/Card2View;->imgs:[Lcom/narvii/widget/NVImageView;

    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    div-int/2addr p1, v0

    .line 90
    array-length v0, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    .line 91
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/ImageView;->measure(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_0
    iget-object p2, p0, Lcom/narvii/widget/Card2View;->more:Landroid/view/View;

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/narvii/widget/Card2View;->isDarkTheme:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 63
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/widget/Card2View;->isDarkTheme:Z

    .line 64
    iget-object p1, p0, Lcom/narvii/widget/Card2View;->content:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/narvii/widget/Card2View;->isDarkTheme:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const v0, -0x777778

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setImages(Ljava/util/List;IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;IZ)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const/4 v0, 0x0

    .line 38
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/narvii/widget/Card2View;->imgs:[Lcom/narvii/widget/NVImageView;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    add-int v2, v0, p2

    if-ge v2, v1, :cond_1

    .line 39
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Media;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 40
    :goto_1
    iget-object v3, p0, Lcom/narvii/widget/Card2View;->imgs:[Lcom/narvii/widget/NVImageView;

    aget-object v3, v3, v0

    .line 41
    instance-of v4, v3, Lcom/narvii/widget/SecretImageView;

    if-eqz v4, :cond_2

    .line 42
    check-cast v3, Lcom/narvii/widget/SecretImageView;

    invoke-virtual {v3, v2, p3}, Lcom/narvii/widget/SecretImageView;->setImageMedia(Lcom/narvii/model/Media;Z)Z

    goto :goto_2

    .line 44
    :cond_2
    invoke-virtual {v3, v2}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/narvii/widget/Card2View;->imgCount:I

    .line 48
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setOfficial(Z)V
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/narvii/widget/Card2View;->isOfficial:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 55
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/widget/Card2View;->isOfficial:Z

    .line 56
    iget-boolean p1, p0, Lcom/narvii/widget/Card2View;->isOfficial:Z

    if-eqz p1, :cond_1

    sget p1, Lcom/narvii/lib/R$drawable;->feed_item_card_2_gold:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/narvii/lib/R$drawable;->feed_item_card_2:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    return-void
.end method
