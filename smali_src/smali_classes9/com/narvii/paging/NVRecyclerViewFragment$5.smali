.class Lcom/narvii/paging/NVRecyclerViewFragment$5;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/paging/NVRecyclerViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/paging/NVRecyclerViewFragment;


# direct methods
.method constructor <init>(Lcom/narvii/paging/NVRecyclerViewFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    if-nez p2, :cond_6

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    if-eqz v2, :cond_6

    .line 11
    .line 12
    iget-object v3, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 13
    .line 14
    iget-object v3, v3, Lcom/narvii/paging/NVRecyclerViewFragment;->snapHelper:Landroidx/recyclerview/widget/SnapHelper;

    .line 15
    .line 16
    if-eqz v3, :cond_6

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/SnapHelper;->h(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    .line 20
    move-result-object v3

    .line 21
    const/4 v4, -0x1

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 27
    move-result v5

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v5, v4

    .line 30
    .line 31
    :goto_0
    if-eq v5, v4, :cond_2

    .line 32
    .line 33
    iget-object v6, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 34
    .line 35
    .line 36
    invoke-static {v6}, Lcom/narvii/paging/NVRecyclerViewFragment;->p(Lcom/narvii/paging/NVRecyclerViewFragment;)I

    .line 37
    move-result v6

    .line 38
    .line 39
    if-eq v5, v6, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    instance-of v6, p1, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;

    .line 46
    .line 47
    if-eqz v6, :cond_1

    .line 48
    .line 49
    check-cast p1, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v5}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    .line 53
    move-result-object p1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const/4 p1, 0x0

    .line 56
    .line 57
    :goto_1
    iget-object v6, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 58
    .line 59
    .line 60
    invoke-static {v6}, Lcom/narvii/paging/NVRecyclerViewFragment;->p(Lcom/narvii/paging/NVRecyclerViewFragment;)I

    .line 61
    move-result v7

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6, v7, v5, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onSnapPotionChanged(IILjava/lang/Object;)V

    .line 65
    .line 66
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 67
    .line 68
    .line 69
    invoke-static {p1, v5}, Lcom/narvii/paging/NVRecyclerViewFragment;->r(Lcom/narvii/paging/NVRecyclerViewFragment;I)V

    .line 70
    .line 71
    :cond_2
    if-eqz v3, :cond_6

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 75
    move-result p1

    .line 76
    .line 77
    iget-object v2, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 78
    .line 79
    iget v5, v2, Lcom/narvii/paging/NVRecyclerViewFragment;->position:I

    .line 80
    .line 81
    if-eq p1, v5, :cond_6

    .line 82
    .line 83
    iget-object v2, v2, Lcom/narvii/paging/NVRecyclerViewFragment;->playerView:Landroid/view/View;

    .line 84
    .line 85
    instance-of v5, v2, Lcom/narvii/paging/PageView;

    .line 86
    .line 87
    if-eqz v5, :cond_3

    .line 88
    .line 89
    check-cast v2, Lcom/narvii/paging/PageView;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v1}, Lcom/narvii/paging/PageView;->setVisibleHint(Z)V

    .line 93
    .line 94
    :cond_3
    instance-of v2, v3, Lcom/narvii/paging/PageView;

    .line 95
    .line 96
    if-eqz v2, :cond_4

    .line 97
    move-object v2, v3

    .line 98
    .line 99
    check-cast v2, Lcom/narvii/paging/PageView;

    .line 100
    .line 101
    iget-object v5, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5}, Lcom/narvii/app/NVFragment;->getUserVisibleHint()Z

    .line 105
    move-result v5

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v5}, Lcom/narvii/paging/PageView;->setVisibleHint(Z)V

    .line 109
    .line 110
    :cond_4
    iget-object v2, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 111
    .line 112
    iget v2, v2, Lcom/narvii/paging/NVRecyclerViewFragment;->position:I

    .line 113
    .line 114
    if-eq v2, v4, :cond_5

    .line 115
    sub-int/2addr v2, p1

    .line 116
    .line 117
    .line 118
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 119
    move-result v2

    .line 120
    .line 121
    if-ne v2, v0, :cond_5

    .line 122
    .line 123
    iget-object v2, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 124
    .line 125
    iget-object v4, v2, Lcom/narvii/paging/NVRecyclerViewFragment;->playerView:Landroid/view/View;

    .line 126
    .line 127
    iget v5, v2, Lcom/narvii/paging/NVRecyclerViewFragment;->position:I

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v4, v3, v5, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onScrollNext(Landroid/view/View;Landroid/view/View;II)V

    .line 131
    .line 132
    :cond_5
    iget-object v2, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, p1, v3}, Lcom/narvii/paging/NVRecyclerViewFragment;->onPlayerViewChanged(ILandroid/view/View;)V

    .line 136
    .line 137
    iget-object v2, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 138
    .line 139
    iput p1, v2, Lcom/narvii/paging/NVRecyclerViewFragment;->position:I

    .line 140
    .line 141
    iput-object v3, v2, Lcom/narvii/paging/NVRecyclerViewFragment;->playerView:Landroid/view/View;

    .line 142
    .line 143
    :cond_6
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 144
    .line 145
    .line 146
    invoke-static {p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->q(Lcom/narvii/paging/NVRecyclerViewFragment;)Lcom/narvii/logging/ImpressionDelegate;

    .line 147
    move-result-object p1

    .line 148
    .line 149
    if-nez p2, :cond_7

    .line 150
    goto :goto_2

    .line 151
    :cond_7
    move v0, v1

    .line 152
    .line 153
    .line 154
    :goto_2
    invoke-virtual {p1, v0}, Lcom/narvii/logging/ImpressionDelegate;->onScrollIdleStateChanged(Z)V

    .line 155
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    instance-of p3, p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 10
    .line 11
    if-eqz p3, :cond_3

    .line 12
    move-object p3, p2

    .line 13
    .line 14
    check-cast p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 18
    move-result p3

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/paging/NVRecyclerViewFragment;->firstShownPosition()I

    .line 24
    move-result v0

    .line 25
    .line 26
    if-ne p3, v0, :cond_3

    .line 27
    .line 28
    iget-object p3, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 29
    .line 30
    iget-boolean p3, p3, Lcom/narvii/paging/NVRecyclerViewFragment;->first:Z

    .line 31
    .line 32
    if-nez p3, :cond_3

    .line 33
    const/4 p3, 0x0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 37
    move-result-object p3

    .line 38
    .line 39
    if-eqz p3, :cond_3

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 45
    move-result p2

    .line 46
    .line 47
    iput p2, v0, Lcom/narvii/paging/NVRecyclerViewFragment;->position:I

    .line 48
    .line 49
    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 50
    .line 51
    iget v0, p2, Lcom/narvii/paging/NVRecyclerViewFragment;->position:I

    .line 52
    const/4 v1, -0x1

    .line 53
    .line 54
    if-eq v0, v1, :cond_1

    .line 55
    .line 56
    .line 57
    invoke-static {p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->p(Lcom/narvii/paging/NVRecyclerViewFragment;)I

    .line 58
    move-result p2

    .line 59
    .line 60
    if-eq v0, p2, :cond_1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    instance-of p2, p1, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;

    .line 67
    .line 68
    if-eqz p2, :cond_0

    .line 69
    .line 70
    check-cast p1, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;

    .line 71
    .line 72
    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 73
    .line 74
    iget p2, p2, Lcom/narvii/paging/NVRecyclerViewFragment;->position:I

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    .line 78
    move-result-object p1

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    const/4 p1, 0x0

    .line 81
    .line 82
    :goto_0
    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 83
    .line 84
    .line 85
    invoke-static {p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->p(Lcom/narvii/paging/NVRecyclerViewFragment;)I

    .line 86
    move-result v0

    .line 87
    .line 88
    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 89
    .line 90
    iget v1, v1, Lcom/narvii/paging/NVRecyclerViewFragment;->position:I

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, v0, v1, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onSnapPotionChanged(IILjava/lang/Object;)V

    .line 94
    .line 95
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 96
    .line 97
    iget p2, p1, Lcom/narvii/paging/NVRecyclerViewFragment;->position:I

    .line 98
    .line 99
    .line 100
    invoke-static {p1, p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->r(Lcom/narvii/paging/NVRecyclerViewFragment;I)V

    .line 101
    .line 102
    :cond_1
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 103
    .line 104
    iget p2, p1, Lcom/narvii/paging/NVRecyclerViewFragment;->position:I

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p2, p3}, Lcom/narvii/paging/NVRecyclerViewFragment;->onPlayerViewChanged(ILandroid/view/View;)V

    .line 108
    .line 109
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 110
    .line 111
    iput-object p3, p1, Lcom/narvii/paging/NVRecyclerViewFragment;->playerView:Landroid/view/View;

    .line 112
    .line 113
    instance-of p2, p3, Lcom/narvii/paging/PageView;

    .line 114
    .line 115
    if-eqz p2, :cond_2

    .line 116
    .line 117
    check-cast p3, Lcom/narvii/paging/PageView;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getUserVisibleHint()Z

    .line 121
    move-result p1

    .line 122
    .line 123
    .line 124
    invoke-virtual {p3, p1}, Lcom/narvii/paging/PageView;->setVisibleHint(Z)V

    .line 125
    .line 126
    :cond_2
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$5;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 127
    const/4 p2, 0x1

    .line 128
    .line 129
    iput-boolean p2, p1, Lcom/narvii/paging/NVRecyclerViewFragment;->first:Z

    .line 130
    :cond_3
    return-void
.end method
