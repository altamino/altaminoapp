.class public Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;
.super Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/Tag;

    .line 3
    .line 4
    const-string v1, "gridContainer"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    sput-object v0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->GRID_CONTAINER:Lcom/narvii/util/Tag;

    .line 10
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

    .line 1
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

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;IIII)V
    .locals 2

    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x0

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->lp:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput p2, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->paddingLeft:I

    iput p3, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->paddingRight:I

    iput p4, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->paddingTop:I

    iput p5, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->paddingBottom:I

    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 10
    move-result v0

    .line 11
    .line 12
    iget v1, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->column:I

    .line 13
    add-int/2addr v0, v1

    .line 14
    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    div-int/2addr v0, v1

    .line 17
    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter$ViewHolder;

    .line 3
    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter$ViewHolder;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter$ViewHolder;->ll:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    iget v1, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->paddingLeft:I

    .line 11
    .line 12
    iget v2, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->paddingTop:I

    .line 13
    .line 14
    iget v3, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->paddingRight:I

    .line 15
    .line 16
    iget v4, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->paddingBottom:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 20
    const/4 v0, 0x0

    .line 21
    move v1, v0

    .line 22
    .line 23
    :goto_0
    iget-object v2, p1, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter$ViewHolder;->ll:Landroid/widget/LinearLayout;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 27
    move-result v2

    .line 28
    .line 29
    if-ge v1, v2, :cond_6

    .line 30
    .line 31
    iget v2, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->column:I

    .line 32
    mul-int/2addr v2, p2

    .line 33
    add-int/2addr v2, v1

    .line 34
    .line 35
    iget-object v3, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 39
    move-result v3

    .line 40
    .line 41
    if-lt v2, v3, :cond_0

    .line 42
    const/4 v3, 0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    move v3, v0

    .line 45
    .line 46
    :goto_1
    if-eqz v3, :cond_1

    .line 47
    .line 48
    const/16 v4, -0x64

    .line 49
    goto :goto_2

    .line 50
    .line 51
    :cond_1
    iget-object v4, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 55
    move-result v4

    .line 56
    .line 57
    :goto_2
    iget-object v5, p1, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter$ViewHolder;->ll:Landroid/widget/LinearLayout;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 61
    move-result-object v5

    .line 62
    .line 63
    check-cast v5, Landroid/widget/LinearLayout;

    .line 64
    .line 65
    if-eqz v3, :cond_2

    .line 66
    const/4 v6, 0x4

    .line 67
    goto :goto_3

    .line 68
    :cond_2
    move v6, v0

    .line 69
    .line 70
    .line 71
    :goto_3
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    sget v6, Lcom/narvii/lib/R$id;->child_view_type:I

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 77
    move-result-object v7

    .line 78
    .line 79
    instance-of v8, v7, Ljava/lang/Integer;

    .line 80
    .line 81
    if-eqz v8, :cond_3

    .line 82
    .line 83
    check-cast v7, Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 87
    move-result v7

    .line 88
    .line 89
    if-eq v7, v4, :cond_4

    .line 90
    .line 91
    .line 92
    :cond_3
    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v1}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter$ViewHolder;->removeChildViewHolder(I)V

    .line 96
    .line 97
    iget-object v7, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7, v5, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 101
    move-result-object v7

    .line 102
    .line 103
    iget-object v8, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    move-result-object v4

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, v6, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v1, v7}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter$ViewHolder;->addChildViewHolder(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 117
    .line 118
    .line 119
    :cond_4
    invoke-virtual {p1, v1}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter$ViewHolder;->getChildViewHolder(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 120
    move-result-object v4

    .line 121
    .line 122
    if-eqz v4, :cond_5

    .line 123
    .line 124
    if-nez v3, :cond_5

    .line 125
    .line 126
    iget-object v3, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v1}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter$ViewHolder;->getChildViewHolder(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 130
    move-result-object v4

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v4, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 134
    .line 135
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 136
    goto :goto_0

    .line 137
    :cond_6
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    sget v0, Lcom/narvii/lib/R$layout;->item_column_layout:I

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    check-cast p2, Landroid/widget/LinearLayout;

    .line 18
    .line 19
    sget-object v0, Lcom/narvii/util/LibConstants;->GRID_ROW:Lcom/narvii/util/Tag;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 23
    .line 24
    new-instance v0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter$ViewHolder;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p0, p2}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter$ViewHolder;-><init>(Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 31
    move-result v2

    .line 32
    .line 33
    iget v3, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->column:I

    .line 34
    .line 35
    if-ge v2, v3, :cond_0

    .line 36
    .line 37
    new-instance v2, Landroid/widget/LinearLayout;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    .line 44
    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    const/16 v3, 0x11

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 50
    .line 51
    .line 52
    const v3, 0x7fffffff

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 56
    .line 57
    sget-object v3, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->GRID_CONTAINER:Lcom/narvii/util/Tag;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 67
    .line 68
    iget-object v3, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->lp:Landroid/widget/LinearLayout$LayoutParams;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    goto :goto_0

    .line 73
    .line 74
    .line 75
    :cond_0
    :goto_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 76
    move-result p1

    .line 77
    .line 78
    iget v1, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->column:I

    .line 79
    .line 80
    if-le p1, v1, :cond_1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 84
    move-result p1

    .line 85
    .line 86
    add-int/lit8 p1, p1, -0x1

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    return-object v0
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p5, :cond_6

    .line 4
    .line 5
    instance-of v1, p4, Landroid/widget/LinearLayout;

    .line 6
    .line 7
    if-eqz v1, :cond_6

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    goto :goto_5

    .line 13
    :cond_0
    move-object v1, p5

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    instance-of v2, v2, Landroid/view/ViewGroup;

    .line 20
    .line 21
    if-eqz v2, :cond_5

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    check-cast v2, Landroid/view/ViewGroup;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    sget-object v4, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->GRID_CONTAINER:Lcom/narvii/util/Tag;

    .line 34
    .line 35
    if-ne v3, v4, :cond_4

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    check-cast p1, Landroid/view/ViewGroup;

    .line 42
    move p3, v0

    .line 43
    .line 44
    .line 45
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 46
    move-result p4

    .line 47
    .line 48
    if-ge p3, p4, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 52
    move-result-object p4

    .line 53
    .line 54
    if-eq p4, v1, :cond_1

    .line 55
    .line 56
    add-int/lit8 p3, p3, 0x1

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_1
    iget p1, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->column:I

    .line 60
    mul-int/2addr p1, p2

    .line 61
    .line 62
    add-int v5, p1, p3

    .line 63
    .line 64
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 68
    move-result-object v6

    .line 69
    .line 70
    check-cast v1, Landroid/view/ViewGroup;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 74
    move-result-object v7

    .line 75
    .line 76
    if-eq p5, v2, :cond_3

    .line 77
    .line 78
    if-eq p5, v7, :cond_3

    .line 79
    .line 80
    .line 81
    invoke-virtual {p5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    sget-object p2, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->GRID_CONTAINER:Lcom/narvii/util/Tag;

    .line 85
    .line 86
    if-ne p1, p2, :cond_2

    .line 87
    goto :goto_3

    .line 88
    :cond_2
    :goto_2
    move-object v8, p5

    .line 89
    goto :goto_4

    .line 90
    :cond_3
    :goto_3
    const/4 p5, 0x0

    .line 91
    goto :goto_2

    .line 92
    .line 93
    :goto_4
    iget-object v4, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 94
    move-object v3, v4

    .line 95
    .line 96
    .line 97
    invoke-virtual/range {v3 .. v8}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dispatchOnItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 98
    move-result p1

    .line 99
    return p1

    .line 100
    :cond_4
    move-object v1, v2

    .line 101
    goto :goto_0

    .line 102
    .line 103
    .line 104
    :cond_5
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 105
    move-result p1

    .line 106
    return p1

    .line 107
    :cond_6
    :goto_5
    return v0
.end method

.method public onLongClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p5, :cond_6

    .line 4
    .line 5
    instance-of v1, p4, Landroid/widget/LinearLayout;

    .line 6
    .line 7
    if-eqz v1, :cond_6

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    goto :goto_5

    .line 13
    :cond_0
    move-object v1, p5

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    instance-of v2, v2, Landroid/view/ViewGroup;

    .line 20
    .line 21
    if-eqz v2, :cond_5

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    check-cast v2, Landroid/view/ViewGroup;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    sget-object v4, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->GRID_CONTAINER:Lcom/narvii/util/Tag;

    .line 34
    .line 35
    if-ne v3, v4, :cond_4

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    check-cast p1, Landroid/view/ViewGroup;

    .line 42
    move p3, v0

    .line 43
    .line 44
    .line 45
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 46
    move-result p4

    .line 47
    .line 48
    if-ge p3, p4, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 52
    move-result-object p4

    .line 53
    .line 54
    if-eq p4, v1, :cond_1

    .line 55
    .line 56
    add-int/lit8 p3, p3, 0x1

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_1
    iget p1, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->column:I

    .line 60
    mul-int/2addr p1, p2

    .line 61
    .line 62
    add-int v5, p1, p3

    .line 63
    .line 64
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 68
    move-result-object v6

    .line 69
    .line 70
    check-cast v1, Landroid/view/ViewGroup;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 74
    move-result-object v7

    .line 75
    .line 76
    if-eq p5, v2, :cond_3

    .line 77
    .line 78
    if-eq p5, v7, :cond_3

    .line 79
    .line 80
    .line 81
    invoke-virtual {p5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    sget-object p2, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->GRID_CONTAINER:Lcom/narvii/util/Tag;

    .line 85
    .line 86
    if-ne p1, p2, :cond_2

    .line 87
    goto :goto_3

    .line 88
    :cond_2
    :goto_2
    move-object v8, p5

    .line 89
    goto :goto_4

    .line 90
    :cond_3
    :goto_3
    const/4 p5, 0x0

    .line 91
    goto :goto_2

    .line 92
    .line 93
    :goto_4
    iget-object v4, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 94
    move-object v3, v4

    .line 95
    .line 96
    .line 97
    invoke-virtual/range {v3 .. v8}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onLongClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 98
    move-result p1

    .line 99
    return p1

    .line 100
    :cond_4
    move-object v1, v2

    .line 101
    goto :goto_0

    .line 102
    .line 103
    .line 104
    :cond_5
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onLongClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 105
    move-result p1

    .line 106
    return p1

    .line 107
    :cond_6
    :goto_5
    return v0
.end method

.method public resetEmptyList()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->resetEmptyList()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->resetEmptyList()V

    .line 9
    return-void
.end method

.method public setAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;I)V
    .locals 0

    .line 1
    .line 2
    iput p2, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->column:I

    .line 3
    .line 4
    iput-object p0, p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->parentAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->setAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 8
    return-void
.end method
