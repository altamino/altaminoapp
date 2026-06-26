.class public Lcom/narvii/list/DivideColumnAdapter;
.super Lcom/narvii/list/ProxyAdapter;
.source "DivideColumnAdapter.java"


# static fields
.field private static final EMPTY_CELLS:[Landroid/view/View;

.field public static final GRID_CONTAINER:Lcom/narvii/util/Tag;


# instance fields
.field private backGroundDrawable:Landroid/graphics/drawable/Drawable;

.field protected column:I

.field private context:Lcom/narvii/app/NVContext;

.field private lp:Landroid/widget/LinearLayout$LayoutParams;

.field protected paddingBottom:I

.field protected paddingLeft:I

.field protected paddingRight:I

.field protected paddingTop:I

.field public recyclerItem:Z

.field private supportLongClick:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "gridContainer"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/list/DivideColumnAdapter;->GRID_CONTAINER:Lcom/narvii/util/Tag;

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    .line 260
    sput-object v0, Lcom/narvii/list/DivideColumnAdapter;->EMPTY_CELLS:[Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 36
    invoke-direct/range {v0 .. v5}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;II)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 52
    invoke-direct/range {v0 .. v5}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;IIII)V
    .locals 2

    .line 40
    invoke-direct {p0, p1}, Lcom/narvii/list/ProxyAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 41
    iput-object p1, p0, Lcom/narvii/list/DivideColumnAdapter;->context:Lcom/narvii/app/NVContext;

    .line 42
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x0

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/narvii/list/DivideColumnAdapter;->lp:Landroid/widget/LinearLayout$LayoutParams;

    .line 44
    iget-object p1, p0, Lcom/narvii/list/DivideColumnAdapter;->lp:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 45
    iput p2, p0, Lcom/narvii/list/DivideColumnAdapter;->paddingLeft:I

    .line 46
    iput p3, p0, Lcom/narvii/list/DivideColumnAdapter;->paddingRight:I

    .line 47
    iput p5, p0, Lcom/narvii/list/DivideColumnAdapter;->paddingBottom:I

    .line 48
    iput p4, p0, Lcom/narvii/list/DivideColumnAdapter;->paddingTop:I

    return-void
.end method

.method public static getDividedCells(Landroid/view/View;)[Landroid/view/View;
    .locals 7

    .line 263
    instance-of v0, p0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 264
    check-cast p0, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 266
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move-object v3, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 267
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 268
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/narvii/list/DivideColumnAdapter;->GRID_CONTAINER:Lcom/narvii/util/Tag;

    if-ne v5, v6, :cond_1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    if-nez v3, :cond_0

    .line 270
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 272
    :cond_0
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    .line 275
    sget-object p0, Lcom/narvii/list/DivideColumnAdapter;->EMPTY_CELLS:[Landroid/view/View;

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/view/View;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/View;

    :goto_1
    return-object p0

    .line 277
    :cond_4
    sget-object p0, Lcom/narvii/list/DivideColumnAdapter;->EMPTY_CELLS:[Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected fullWidth(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getCount()I
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/narvii/list/DivideColumnAdapter;->column:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 116
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/narvii/util/LibConstants;->GRID_ROW:Lcom/narvii/util/Tag;

    if-ne v0, v1, :cond_0

    .line 117
    check-cast p2, Landroid/widget/LinearLayout;

    goto :goto_0

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "divide row convert view not reusable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_1
    move-object p2, p3

    :goto_0
    const/4 v0, 0x0

    if-nez p2, :cond_2

    .line 123
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 124
    sget-object v1, Lcom/narvii/util/LibConstants;->GRID_ROW:Lcom/narvii/util/Tag;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 125
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 126
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 127
    iget v1, p0, Lcom/narvii/list/DivideColumnAdapter;->paddingLeft:I

    iget v2, p0, Lcom/narvii/list/DivideColumnAdapter;->paddingRight:I

    invoke-virtual {p2, v1, v0, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 128
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 131
    :cond_2
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    if-nez p1, :cond_3

    iget v2, p0, Lcom/narvii/list/DivideColumnAdapter;->paddingTop:I

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/narvii/list/DivideColumnAdapter;->getCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne p1, v4, :cond_4

    iget v4, p0, Lcom/narvii/list/DivideColumnAdapter;->paddingBottom:I

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 133
    :goto_3
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    iget v2, p0, Lcom/narvii/list/DivideColumnAdapter;->column:I

    if-ge v1, v2, :cond_6

    .line 134
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x11

    .line 135
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 136
    sget-object v2, Lcom/narvii/list/DivideColumnAdapter;->GRID_CONTAINER:Lcom/narvii/util/Tag;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const v2, 0x7fffffff

    .line 137
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 138
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 139
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 140
    iget-object v2, p0, Lcom/narvii/list/DivideColumnAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of v3, v2, Lcom/narvii/list/NVListFragment;

    if-eqz v3, :cond_5

    .line 141
    check-cast v2, Lcom/narvii/list/NVListFragment;

    invoke-virtual {v2}, Lcom/narvii/list/NVListFragment;->getListSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 143
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    :cond_5
    iget-object v2, p0, Lcom/narvii/list/DivideColumnAdapter;->lp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 148
    :cond_6
    :goto_4
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    iget v2, p0, Lcom/narvii/list/DivideColumnAdapter;->column:I

    if-le v1, v2, :cond_7

    .line 149
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto :goto_4

    .line 152
    :cond_7
    iget-object v1, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    .line 153
    :goto_5
    iget v3, p0, Lcom/narvii/list/DivideColumnAdapter;->column:I

    if-ge v2, v3, :cond_13

    .line 154
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 155
    invoke-virtual {p0, p1}, Lcom/narvii/list/DivideColumnAdapter;->startPosition(I)I

    move-result v4

    add-int/2addr v4, v2

    if-ge v4, v1, :cond_12

    add-int/lit8 v6, p1, 0x1

    .line 156
    invoke-virtual {p0}, Lcom/narvii/list/DivideColumnAdapter;->getCount()I

    move-result v7

    if-eq v6, v7, :cond_8

    invoke-virtual {p0, v6}, Lcom/narvii/list/DivideColumnAdapter;->startPosition(I)I

    move-result v6

    if-ge v4, v6, :cond_12

    .line 157
    :cond_8
    iget-object v6, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v6, v4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/narvii/list/DivideColumnAdapter;->fullWidth(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto/16 :goto_c

    .line 160
    :cond_9
    iget-object v6, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v6, v4}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    .line 161
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ne v7, v5, :cond_a

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v7

    if-ne v7, v6, :cond_a

    .line 162
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    goto :goto_6

    :cond_a
    move-object v7, p3

    .line 164
    :goto_6
    iget-boolean v8, p0, Lcom/narvii/list/DivideColumnAdapter;->recyclerItem:Z

    if-nez v8, :cond_b

    .line 165
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_7

    :cond_b
    if-nez v7, :cond_c

    .line 167
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 170
    :cond_c
    :goto_7
    iget-object v8, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v8, v4, v7, v3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 171
    iget-boolean v9, p0, Lcom/narvii/list/DivideColumnAdapter;->recyclerItem:Z

    if-nez v9, :cond_d

    .line 172
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_8

    :cond_d
    if-nez v7, :cond_e

    .line 174
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    :cond_e
    :goto_8
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setId(I)V

    .line 177
    iget-object v6, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v6, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 178
    iget-object v6, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    goto :goto_9

    :cond_f
    move-object v6, p3

    :goto_9
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 180
    iget-boolean v6, p0, Lcom/narvii/list/DivideColumnAdapter;->supportLongClick:Z

    if-eqz v6, :cond_11

    if-eqz v4, :cond_10

    .line 181
    iget-object v6, p0, Lcom/narvii/list/NVAdapter;->subviewLongClickListener:Landroid/view/View$OnLongClickListener;

    goto :goto_a

    :cond_10
    move-object v6, p3

    :goto_a
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 182
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLongClickable(Z)V

    .line 184
    :cond_11
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_b

    .line 186
    :cond_12
    invoke-virtual {v3, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 188
    invoke-virtual {v3, p3}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 189
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLongClickable(Z)V

    const/4 v4, 0x4

    .line 190
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 194
    :cond_13
    :goto_c
    iget-object p1, p0, Lcom/narvii/list/DivideColumnAdapter;->backGroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_14

    .line 195
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_14
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 8

    const/4 p1, 0x0

    if-eqz p5, :cond_5

    .line 211
    instance-of p3, p4, Landroid/widget/LinearLayout;

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    move-object p3, p5

    .line 214
    :goto_0
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    instance-of p4, p4, Landroid/view/ViewGroup;

    if-eqz p4, :cond_5

    .line 215
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    .line 216
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/narvii/list/DivideColumnAdapter;->GRID_CONTAINER:Lcom/narvii/util/Tag;

    if-ne v0, v1, :cond_4

    .line 218
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 219
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v2, p3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 221
    :cond_1
    invoke-virtual {p0, p2}, Lcom/narvii/list/DivideColumnAdapter;->startPosition(I)I

    move-result p2

    add-int v4, p2, v1

    .line 222
    iget-object p2, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    invoke-virtual {p2, v4}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    .line 223
    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eq p5, p4, :cond_2

    if-eq p5, v6, :cond_2

    .line 224
    invoke-virtual {p5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/narvii/list/DivideColumnAdapter;->GRID_CONTAINER:Lcom/narvii/util/Tag;

    if-ne p1, p2, :cond_3

    :cond_2
    const/4 p5, 0x0

    :cond_3
    move-object v7, p5

    .line 226
    iget-object v3, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    move-object v2, v3

    invoke-virtual/range {v2 .. v7}, Lcom/narvii/list/NVAdapter;->dispatchOnItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_4
    move-object p3, p4

    goto :goto_0

    :cond_5
    :goto_2
    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 8

    const/4 p1, 0x0

    if-eqz p5, :cond_5

    .line 237
    instance-of p3, p4, Landroid/widget/LinearLayout;

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    move-object p3, p5

    .line 240
    :goto_0
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    instance-of p4, p4, Landroid/view/ViewGroup;

    if-eqz p4, :cond_5

    .line 241
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    .line 242
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/narvii/list/DivideColumnAdapter;->GRID_CONTAINER:Lcom/narvii/util/Tag;

    if-ne v0, v1, :cond_4

    .line 244
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 245
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v2, p3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 247
    :cond_1
    invoke-virtual {p0, p2}, Lcom/narvii/list/DivideColumnAdapter;->startPosition(I)I

    move-result p2

    add-int v4, p2, v1

    .line 248
    iget-object p2, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    invoke-virtual {p2, v4}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    .line 249
    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eq p5, p4, :cond_2

    if-ne p5, v6, :cond_3

    :cond_2
    const/4 p5, 0x0

    :cond_3
    move-object v7, p5

    .line 252
    iget-object v3, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    move-object v2, v3

    invoke-virtual/range {v2 .. v7}, Lcom/narvii/list/NVAdapter;->dispatchOnLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_4
    move-object p3, p4

    goto :goto_0

    :cond_5
    :goto_2
    return p1
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 57
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setAdapter(Landroid/widget/ListAdapter;I)V
    .locals 0

    .line 61
    iput p2, p0, Lcom/narvii/list/DivideColumnAdapter;->column:I

    .line 62
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 66
    iput p2, p0, Lcom/narvii/list/DivideColumnAdapter;->column:I

    .line 67
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    iput-object p3, p0, Lcom/narvii/list/DivideColumnAdapter;->backGroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setSupportLongClick(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/narvii/list/DivideColumnAdapter;->supportLongClick:Z

    return-void
.end method

.method protected startPosition(I)I
    .locals 1

    .line 205
    iget v0, p0, Lcom/narvii/list/DivideColumnAdapter;->column:I

    mul-int p1, p1, v0

    return p1
.end method
