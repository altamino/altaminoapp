.class public Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;
.super Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;
.source "RecyclerViewColumnAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final GRID_CONTAINER:Lcom/narvii/util/Tag;


# instance fields
.field protected column:I

.field private lp:Landroid/widget/LinearLayout$LayoutParams;

.field protected paddingBottom:I

.field protected paddingLeft:I

.field protected paddingRight:I

.field protected paddingTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "gridContainer"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->GRID_CONTAINER:Lcom/narvii/util/Tag;

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

    .line 33
    invoke-direct/range {v0 .. v5}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;II)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p2

    move v4, p3

    move v5, p3

    .line 37
    invoke-direct/range {v0 .. v5}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;IIII)V
    .locals 2

    .line 41
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 42
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x0

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->lp:Landroid/widget/LinearLayout$LayoutParams;

    .line 44
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->lp:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 45
    iput p2, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->paddingLeft:I

    .line 46
    iput p3, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->paddingRight:I

    .line 47
    iput p4, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->paddingTop:I

    .line 48
    iput p5, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->paddingBottom:I

    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->column:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 97
    instance-of v0, p1, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter$ViewHolder;

    if-eqz v0, :cond_6

    .line 98
    check-cast p1, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter$ViewHolder;

    .line 99
    iget-object v0, p1, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter$ViewHolder;->ll:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->paddingLeft:I

    iget v2, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->paddingTop:I

    iget v3, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->paddingRight:I

    iget v4, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->paddingBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 101
    :goto_0
    iget-object v2, p1, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter$ViewHolder;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 102
    iget v2, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->column:I

    mul-int v2, v2, p2

    add-int/2addr v2, v1

    .line 103
    iget-object v3, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-lt v2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    const/16 v4, -0x64

    goto :goto_2

    .line 104
    :cond_1
    iget-object v4, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v4

    .line 105
    :goto_2
    iget-object v5, p1, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter$ViewHolder;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    const/4 v6, 0x4

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    .line 106
    :goto_3
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    sget v6, Lcom/narvii/lib/R$id;->child_view_type:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    .line 108
    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_3

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v4, :cond_4

    .line 110
    :cond_3
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 111
    invoke-virtual {p1, v1}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter$ViewHolder;->removeChildViewHolder(I)V

    .line 112
    iget-object v6, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v6, v5, v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 113
    iget-object v7, v6, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 114
    sget v7, Lcom/narvii/lib/R$id;->child_view_type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    .line 115
    invoke-virtual {p1, v1, v6}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter$ViewHolder;->addChildViewHolder(ILandroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 117
    :cond_4
    invoke-virtual {p1, v1}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter$ViewHolder;->getChildViewHolder(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_5

    if-nez v3, :cond_5

    .line 118
    iget-object v3, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {p1, v1}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter$ViewHolder;->getChildViewHolder(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .line 76
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/narvii/lib/R$layout;->item_column_layout:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 77
    sget-object v0, Lcom/narvii/util/LibConstants;->GRID_ROW:Lcom/narvii/util/Tag;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 78
    new-instance v0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter$ViewHolder;

    invoke-direct {v0, p0, p2}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter$ViewHolder;-><init>(Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;Landroid/view/View;)V

    .line 79
    :goto_0
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->column:I

    if-ge v2, v3, :cond_0

    .line 80
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x11

    .line 81
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v3, 0x7fffffff

    .line 82
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 83
    sget-object v3, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->GRID_CONTAINER:Lcom/narvii/util/Tag;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 84
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 85
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 87
    iget-object v3, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->lp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 89
    :cond_0
    :goto_1
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    iget v1, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->column:I

    if-le p1, v1, :cond_1

    .line 90
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    .line 155
    instance-of v1, p4, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    move-object v1, p5

    .line 159
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_5

    .line 160
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 161
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->GRID_CONTAINER:Lcom/narvii/util/Tag;

    if-ne v3, v4, :cond_4

    .line 163
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p3, 0x0

    .line 164
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    if-ge p3, p4, :cond_1

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    if-eq p4, v1, :cond_1

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 166
    :cond_1
    iget p1, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->column:I

    mul-int p1, p1, p2

    add-int v5, p1, p3

    .line 167
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {p1, v5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    .line 168
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eq p5, v2, :cond_2

    if-eq p5, v7, :cond_2

    .line 169
    invoke-virtual {p5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->GRID_CONTAINER:Lcom/narvii/util/Tag;

    if-ne p1, p2, :cond_3

    :cond_2
    const/4 p5, 0x0

    :cond_3
    move-object v8, p5

    .line 172
    iget-object v4, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    move-object v3, v4

    invoke-virtual/range {v3 .. v8}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dispatchOnItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_4
    move-object v1, v2

    goto :goto_0

    .line 177
    :cond_5
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_6
    :goto_2
    return v0
.end method

.method public onLongClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    .line 182
    instance-of v1, p4, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    move-object v1, p5

    .line 186
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_5

    .line 187
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 188
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->GRID_CONTAINER:Lcom/narvii/util/Tag;

    if-ne v3, v4, :cond_4

    .line 190
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p3, 0x0

    .line 191
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    if-ge p3, p4, :cond_1

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    if-eq p4, v1, :cond_1

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 193
    :cond_1
    iget p1, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->column:I

    mul-int p1, p1, p2

    add-int v5, p1, p3

    .line 194
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {p1, v5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    .line 195
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eq p5, v2, :cond_2

    if-eq p5, v7, :cond_2

    .line 196
    invoke-virtual {p5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->GRID_CONTAINER:Lcom/narvii/util/Tag;

    if-ne p1, p2, :cond_3

    :cond_2
    const/4 p5, 0x0

    :cond_3
    move-object v8, p5

    .line 199
    iget-object v4, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    move-object v3, v4

    invoke-virtual/range {v3 .. v8}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onLongClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_4
    move-object v1, v2

    goto :goto_0

    .line 204
    :cond_5
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onLongClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_6
    :goto_2
    return v0
.end method

.method public resetEmptyList()V
    .locals 1

    .line 209
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->resetEmptyList()V

    .line 210
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->resetEmptyList()V

    return-void
.end method

.method public setAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;I)V
    .locals 0

    .line 52
    iput p2, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->column:I

    .line 53
    iput-object p0, p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->parentAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 54
    invoke-super {p0, p1}, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->setAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    return-void
.end method
