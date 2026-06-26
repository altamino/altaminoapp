.class public Lcom/narvii/util/layouts/NVFlowLayout;
.super Landroid/view/ViewGroup;
.source "NVFlowLayout.java"


# static fields
.field private static final CENTER:I = 0x0

.field private static final LEFT:I = -0x1

.field private static final RIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NVFlowLayout"


# instance fields
.field protected layoutViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private lineViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mAllViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGravity:I

.field protected mLineHeight:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mLineWidth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected maxTagCount:I

.field protected maxTagLines:I

.field protected moreView:Landroid/view/View;

.field public needShowMore:Z

.field protected showEndItem:Z

.field public showMore:Z

.field protected showStartItem:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/layouts/NVFlowLayout;->mAllViews:Ljava/util/List;

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/layouts/NVFlowLayout;->mLineHeight:Ljava/util/List;

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/layouts/NVFlowLayout;->mLineWidth:Ljava/util/List;

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/layouts/NVFlowLayout;->lineViews:Ljava/util/List;

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/layouts/NVFlowLayout;->layoutViews:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/layouts/NVFlowLayout;->mAllViews:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/layouts/NVFlowLayout;->mLineHeight:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/layouts/NVFlowLayout;->mLineWidth:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/layouts/NVFlowLayout;->lineViews:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/layouts/NVFlowLayout;->layoutViews:Ljava/util/List;

    .line 48
    sget-object v0, Lcom/narvii/lib/R$styleable;->NVFlowLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 49
    sget p2, Lcom/narvii/lib/R$styleable;->NVFlowLayout_flow_gravity:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/util/layouts/NVFlowLayout;->mGravity:I

    .line 50
    sget p2, Lcom/narvii/lib/R$styleable;->NVFlowLayout_max_tag_count:I

    const/4 v1, -0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/util/layouts/NVFlowLayout;->maxTagCount:I

    .line 51
    sget p2, Lcom/narvii/lib/R$styleable;->NVFlowLayout_max_tag_lines:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/util/layouts/NVFlowLayout;->maxTagLines:I

    .line 52
    sget p2, Lcom/narvii/lib/R$styleable;->NVFlowLayout_show_end_item:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/util/layouts/NVFlowLayout;->showEndItem:Z

    .line 53
    sget p2, Lcom/narvii/lib/R$styleable;->NVFlowLayout_show_start_item:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/util/layouts/NVFlowLayout;->showStartItem:Z

    .line 54
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private isRtl()Z
    .locals 1

    .line 350
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    return v0
.end method

.method private setUpLineInfo(Z)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 164
    iget-object v2, v0, Lcom/narvii/util/layouts/NVFlowLayout;->mAllViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 165
    iget-object v2, v0, Lcom/narvii/util/layouts/NVFlowLayout;->mLineHeight:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 166
    iget-object v2, v0, Lcom/narvii/util/layouts/NVFlowLayout;->mLineWidth:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 167
    iget-object v2, v0, Lcom/narvii/util/layouts/NVFlowLayout;->lineViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 169
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    .line 174
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 178
    iput-boolean v1, v0, Lcom/narvii/util/layouts/NVFlowLayout;->needShowMore:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v6, v2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    :goto_0
    if-ge v2, v3, :cond_8

    .line 180
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 181
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_0

    goto/16 :goto_1

    .line 182
    :cond_0
    iget-object v11, v0, Lcom/narvii/util/layouts/NVFlowLayout;->moreView:Landroid/view/View;

    if-ne v10, v11, :cond_1

    goto/16 :goto_1

    .line 183
    :cond_1
    iget v11, v0, Lcom/narvii/util/layouts/NVFlowLayout;->maxTagCount:I

    if-lez v11, :cond_2

    if-lt v2, v11, :cond_2

    goto/16 :goto_2

    .line 187
    :cond_2
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 189
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 190
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int v14, v12, v7

    .line 193
    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v14, v15

    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v15

    sub-int v15, v6, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    if-le v14, v15, :cond_7

    add-int/lit8 v8, v8, 0x1

    .line 195
    iget v14, v0, Lcom/narvii/util/layouts/NVFlowLayout;->maxTagLines:I

    if-lez v14, :cond_5

    if-le v8, v14, :cond_5

    if-eqz v1, :cond_4

    .line 196
    iget-object v2, v0, Lcom/narvii/util/layouts/NVFlowLayout;->moreView:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 198
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 199
    iget-object v3, v0, Lcom/narvii/util/layouts/NVFlowLayout;->moreView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v7, v3

    .line 200
    iget-object v3, v0, Lcom/narvii/util/layouts/NVFlowLayout;->moreView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v2

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 202
    iget-object v2, v0, Lcom/narvii/util/layouts/NVFlowLayout;->lineViews:Ljava/util/List;

    iget-object v3, v0, Lcom/narvii/util/layouts/NVFlowLayout;->moreView:Landroid/view/View;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v6, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v6, v2

    if-le v7, v6, :cond_8

    .line 205
    iget-object v2, v0, Lcom/narvii/util/layouts/NVFlowLayout;->lineViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v5, :cond_8

    .line 207
    iget-object v3, v0, Lcom/narvii/util/layouts/NVFlowLayout;->lineViews:Ljava/util/List;

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_3

    .line 209
    iget-object v4, v0, Lcom/narvii/util/layouts/NVFlowLayout;->moreView:Landroid/view/View;

    .line 210
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 211
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    sub-int/2addr v7, v3

    .line 213
    :cond_3
    iget-object v3, v0, Lcom/narvii/util/layouts/NVFlowLayout;->lineViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 218
    :cond_4
    iput-boolean v5, v0, Lcom/narvii/util/layouts/NVFlowLayout;->needShowMore:Z

    goto :goto_2

    .line 222
    :cond_5
    iget-object v14, v0, Lcom/narvii/util/layouts/NVFlowLayout;->mLineHeight:Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v9, v0, Lcom/narvii/util/layouts/NVFlowLayout;->mAllViews:Ljava/util/List;

    iget-object v14, v0, Lcom/narvii/util/layouts/NVFlowLayout;->lineViews:Ljava/util/List;

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v9, v0, Lcom/narvii/util/layouts/NVFlowLayout;->mLineWidth:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget v7, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v7, v13

    iget v9, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v9, v7

    .line 228
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/narvii/util/layouts/NVFlowLayout;->lineViews:Ljava/util/List;

    if-eqz v1, :cond_6

    .line 230
    iget v7, v0, Lcom/narvii/util/layouts/NVFlowLayout;->maxTagLines:I

    if-ne v8, v7, :cond_6

    iget-object v7, v0, Lcom/narvii/util/layouts/NVFlowLayout;->moreView:Landroid/view/View;

    if-eqz v7, :cond_6

    .line 231
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    iget-object v7, v0, Lcom/narvii/util/layouts/NVFlowLayout;->moreView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    :cond_6
    const/4 v7, 0x0

    .line 236
    :cond_7
    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v12, v14

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v12, v14

    add-int/2addr v7, v12

    .line 237
    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v13, v12

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v13, v11

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 239
    iget-object v11, v0, Lcom/narvii/util/layouts/NVFlowLayout;->lineViews:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 241
    :cond_8
    :goto_2
    iget-object v2, v0, Lcom/narvii/util/layouts/NVFlowLayout;->mLineHeight:Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v2, v0, Lcom/narvii/util/layouts/NVFlowLayout;->mLineWidth:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v2, v0, Lcom/narvii/util/layouts/NVFlowLayout;->mAllViews:Ljava/util/List;

    iget-object v3, v0, Lcom/narvii/util/layouts/NVFlowLayout;->lineViews:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_9

    return-void

    .line 249
    :cond_9
    iget-boolean v1, v0, Lcom/narvii/util/layouts/NVFlowLayout;->showMore:Z

    if-eqz v1, :cond_a

    iget-boolean v1, v0, Lcom/narvii/util/layouts/NVFlowLayout;->needShowMore:Z

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/narvii/util/layouts/NVFlowLayout;->moreView:Landroid/view/View;

    if-eqz v1, :cond_a

    .line 250
    invoke-direct {v0, v5}, Lcom/narvii/util/layouts/NVFlowLayout;->setUpLineInfo(Z)V

    :cond_a
    return-void
.end method


# virtual methods
.method public addMoreView(Landroid/view/View;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/narvii/util/layouts/NVFlowLayout;->moreView:Landroid/view/View;

    .line 87
    iget-object p1, p0, Lcom/narvii/util/layouts/NVFlowLayout;->moreView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 341
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 336
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 346
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public isShowMore()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/narvii/util/layouts/NVFlowLayout;->showMore:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 261
    invoke-direct {v0, v1}, Lcom/narvii/util/layouts/NVFlowLayout;->setUpLineInfo(Z)V

    .line 263
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    .line 265
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    .line 266
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    .line 268
    iget-object v5, v0, Lcom/narvii/util/layouts/NVFlowLayout;->mAllViews:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 270
    iget-object v6, v0, Lcom/narvii/util/layouts/NVFlowLayout;->layoutViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    move v6, v4

    move v4, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_a

    .line 272
    iget v7, v0, Lcom/narvii/util/layouts/NVFlowLayout;->maxTagLines:I

    if-lez v7, :cond_0

    if-lt v3, v7, :cond_0

    goto/16 :goto_6

    .line 275
    :cond_0
    iget-object v7, v0, Lcom/narvii/util/layouts/NVFlowLayout;->mAllViews:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    iput-object v7, v0, Lcom/narvii/util/layouts/NVFlowLayout;->lineViews:Ljava/util/List;

    .line 276
    iget-object v7, v0, Lcom/narvii/util/layouts/NVFlowLayout;->mLineHeight:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 277
    iget-object v8, v0, Lcom/narvii/util/layouts/NVFlowLayout;->mLineWidth:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 278
    iget v9, v0, Lcom/narvii/util/layouts/NVFlowLayout;->mGravity:I

    .line 279
    invoke-direct/range {p0 .. p0}, Lcom/narvii/util/layouts/NVFlowLayout;->isRtl()Z

    move-result v10

    const/4 v11, -0x1

    if-eqz v10, :cond_1

    .line 280
    iget v9, v0, Lcom/narvii/util/layouts/NVFlowLayout;->mGravity:I

    mul-int/lit8 v9, v9, -0x1

    :cond_1
    const/4 v10, 0x1

    if-eq v9, v11, :cond_5

    if-eqz v9, :cond_4

    if-eq v9, v10, :cond_2

    goto :goto_2

    :cond_2
    sub-int v4, v2, v8

    .line 290
    invoke-direct/range {p0 .. p0}, Lcom/narvii/util/layouts/NVFlowLayout;->isRtl()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v8

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v8

    :goto_1
    sub-int/2addr v4, v8

    goto :goto_2

    .line 287
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v9

    sub-int/2addr v4, v9

    sub-int/2addr v4, v8

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v8

    add-int/2addr v4, v8

    goto :goto_2

    .line 284
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    :goto_2
    move v8, v4

    const/4 v4, 0x0

    .line 294
    :goto_3
    iget-object v9, v0, Lcom/narvii/util/layouts/NVFlowLayout;->lineViews:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_9

    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/narvii/util/layouts/NVFlowLayout;->isRtl()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 297
    iget-object v9, v0, Lcom/narvii/util/layouts/NVFlowLayout;->lineViews:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v4

    sub-int/2addr v11, v10

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    goto :goto_4

    .line 299
    :cond_6
    iget-object v9, v0, Lcom/narvii/util/layouts/NVFlowLayout;->lineViews:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 301
    :goto_4
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_7

    goto :goto_5

    .line 306
    :cond_7
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 308
    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v12, v8

    .line 309
    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v13, v6

    .line 310
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v12

    .line 311
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v15

    sub-int v15, v2, v15

    iget v10, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v15, v10

    if-le v14, v15, :cond_8

    .line 312
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v10

    sub-int v10, v2, v10

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v14, v10, v14

    .line 314
    :cond_8
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v13

    .line 316
    invoke-virtual {v9, v12, v13, v14, v10}, Landroid/view/View;->layout(IIII)V

    .line 317
    iget-object v10, v0, Lcom/narvii/util/layouts/NVFlowLayout;->layoutViews:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iget v10, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v9, v10

    iget v10, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    :goto_5
    add-int/lit8 v4, v4, 0x1

    const/4 v10, 0x1

    goto :goto_3

    :cond_9
    add-int/2addr v6, v7

    add-int/lit8 v3, v3, 0x1

    move v4, v8

    goto/16 :goto_0

    :cond_a
    :goto_6
    const/4 v2, 0x0

    .line 326
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 327
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 328
    iget-object v4, v0, Lcom/narvii/util/layouts/NVFlowLayout;->layoutViews:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 329
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/view/View;->layout(IIII)V

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_c
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 92
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 93
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 94
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 95
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 103
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    :goto_0
    if-ge v9, v6, :cond_8

    .line 107
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 108
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_6

    iget-object v7, v0, Lcom/narvii/util/layouts/NVFlowLayout;->moreView:Landroid/view/View;

    if-ne v15, v7, :cond_0

    goto/16 :goto_4

    .line 117
    :cond_0
    iget v7, v0, Lcom/narvii/util/layouts/NVFlowLayout;->maxTagCount:I

    if-lez v7, :cond_1

    if-lt v9, v7, :cond_1

    .line 118
    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/2addr v11, v13

    goto/16 :goto_6

    .line 123
    :cond_1
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 125
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    move/from16 v16, v4

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v8, v4

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v8, v4

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {v8, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v15, v4, v1}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 127
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v8

    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v8

    .line 129
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget v15, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v15

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v7

    add-int v7, v12, v4

    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v15

    sub-int v15, v2, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v17

    sub-int v15, v15, v17

    if-le v7, v15, :cond_2

    const/4 v15, 0x1

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    :goto_1
    if-eqz v15, :cond_4

    add-int/lit8 v14, v14, 0x1

    .line 135
    iget v7, v0, Lcom/narvii/util/layouts/NVFlowLayout;->maxTagLines:I

    if-lez v7, :cond_3

    if-le v14, v7, :cond_3

    .line 136
    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/2addr v11, v13

    goto :goto_7

    .line 140
    :cond_3
    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/2addr v11, v13

    goto :goto_2

    .line 146
    :cond_4
    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v4, v7

    :goto_2
    add-int/lit8 v7, v6, -0x1

    if-ne v9, v7, :cond_5

    .line 149
    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v11, v8

    move v12, v4

    move v10, v7

    goto :goto_3

    :cond_5
    move v12, v4

    :goto_3
    move v13, v8

    goto :goto_5

    :cond_6
    :goto_4
    move/from16 v16, v4

    add-int/lit8 v4, v6, -0x1

    if-ne v9, v4, :cond_7

    .line 110
    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v11, v13

    move v10, v4

    :cond_7
    :goto_5
    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v16

    goto/16 :goto_0

    :cond_8
    :goto_6
    move/from16 v16, v4

    .line 154
    :goto_7
    iget-object v4, v0, Lcom/narvii/util/layouts/NVFlowLayout;->moreView:Landroid/view/View;

    if-eqz v4, :cond_9

    move/from16 v6, p1

    .line 155
    invoke-virtual {v0, v4, v6, v1}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    :cond_9
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v3, v1, :cond_a

    goto :goto_8

    .line 157
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    add-int/2addr v10, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v10

    :goto_8
    if-ne v5, v1, :cond_b

    move/from16 v4, v16

    goto :goto_9

    .line 158
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    add-int/2addr v11, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int v4, v11, v1

    .line 159
    :goto_9
    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/narvii/util/layouts/NVFlowLayout;->mGravity:I

    .line 73
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setMaxTagLines(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/narvii/util/layouts/NVFlowLayout;->maxTagLines:I

    .line 68
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setShowEndItem(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/narvii/util/layouts/NVFlowLayout;->showEndItem:Z

    .line 82
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setShowMore(Z)V
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/narvii/util/layouts/NVFlowLayout;->showMore:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 61
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/util/layouts/NVFlowLayout;->showMore:Z

    .line 62
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public showingMoreView()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Lcom/narvii/util/layouts/NVFlowLayout;->showMore:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/util/layouts/NVFlowLayout;->needShowMore:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/util/layouts/NVFlowLayout;->moreView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
