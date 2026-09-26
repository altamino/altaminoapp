.class public Lcom/narvii/list/NVRecyclerLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field adapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private emptyView:Landroid/view/View;

.field errorRetryListener:Landroid/view/View$OnClickListener;

.field private errorView:Landroid/view/View;

.field private loadingView:Landroid/view/View;

.field private mainLayout:Landroid/view/View;

.field private recycleAdapter:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/list/NVRecyclerLayout$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/list/NVRecyclerLayout$1;-><init>(Lcom/narvii/list/NVRecyclerLayout;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/list/NVRecyclerLayout;->adapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/list/NVRecyclerLayout$2;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/narvii/list/NVRecyclerLayout$2;-><init>(Lcom/narvii/list/NVRecyclerLayout;)V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/list/NVRecyclerLayout;->errorRetryListener:Landroid/view/View$OnClickListener;

    .line 18
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/list/NVRecyclerLayout;)Lcom/narvii/widget/recycleview/NVRecycleAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/list/NVRecyclerLayout;->recycleAdapter:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/list/NVRecyclerLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/list/NVRecyclerLayout;->updateViews()V

    return-void
.end method

.method private updateViews()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVRecyclerLayout;->recycleAdapter:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_9

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isListShown()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/list/NVRecyclerLayout;->recycleAdapter:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isEmpty()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/list/NVRecyclerLayout;->recycleAdapter:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->errorMessage()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x0

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    const/4 v2, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v2, v3

    .line 27
    .line 28
    :goto_0
    iget-object v4, p0, Lcom/narvii/list/NVRecyclerLayout;->mainLayout:Landroid/view/View;

    .line 29
    const/4 v5, 0x4

    .line 30
    .line 31
    if-eqz v4, :cond_2

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    move v6, v3

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v6, v5

    .line 37
    .line 38
    .line 39
    :goto_1
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    :cond_2
    iget-object v4, p0, Lcom/narvii/list/NVRecyclerLayout;->emptyView:Landroid/view/View;

    .line 42
    .line 43
    if-eqz v4, :cond_4

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    if-nez v2, :cond_3

    .line 50
    move v1, v3

    .line 51
    goto :goto_2

    .line 52
    :cond_3
    move v1, v5

    .line 53
    .line 54
    .line 55
    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    :cond_4
    iget-object v1, p0, Lcom/narvii/list/NVRecyclerLayout;->loadingView:Landroid/view/View;

    .line 58
    .line 59
    if-eqz v1, :cond_6

    .line 60
    .line 61
    if-nez v0, :cond_5

    .line 62
    .line 63
    if-nez v2, :cond_5

    .line 64
    move v0, v3

    .line 65
    goto :goto_3

    .line 66
    :cond_5
    move v0, v5

    .line 67
    .line 68
    .line 69
    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    :cond_6
    iget-object v0, p0, Lcom/narvii/list/NVRecyclerLayout;->errorView:Landroid/view/View;

    .line 72
    .line 73
    if-eqz v0, :cond_9

    .line 74
    .line 75
    iget-object v1, p0, Lcom/narvii/list/NVRecyclerLayout;->recycleAdapter:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->errorMessage()Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    if-eqz v1, :cond_7

    .line 82
    goto :goto_4

    .line 83
    :cond_7
    move v3, v5

    .line 84
    .line 85
    .line 86
    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    iget-object v0, p0, Lcom/narvii/list/NVRecyclerLayout;->errorView:Landroid/view/View;

    .line 89
    .line 90
    sget v1, Lcom/narvii/lib/R$id;->error_text:I

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    check-cast v0, Landroid/widget/TextView;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    sget v2, Lcom/narvii/lib/R$string;->normal_error_offline2:I

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 110
    move-result-object v2

    .line 111
    .line 112
    .line 113
    invoke-static {v2}, Lcom/narvii/util/Utils;->isDeviceOffline(Landroid/content/Context;)Z

    .line 114
    move-result v2

    .line 115
    .line 116
    if-eqz v2, :cond_8

    .line 117
    goto :goto_5

    .line 118
    .line 119
    :cond_8
    iget-object v1, p0, Lcom/narvii/list/NVRecyclerLayout;->recycleAdapter:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->errorMessage()Ljava/lang/String;

    .line 123
    move-result-object v1

    .line 124
    .line 125
    .line 126
    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    iget-object v0, p0, Lcom/narvii/list/NVRecyclerLayout;->errorView:Landroid/view/View;

    .line 129
    .line 130
    sget v1, Lcom/narvii/lib/R$id;->error_retry:I

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    move-result-object v0

    .line 135
    .line 136
    iget-object v1, p0, Lcom/narvii/list/NVRecyclerLayout;->errorRetryListener:Landroid/view/View$OnClickListener;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    :cond_9
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    sget v0, Lcom/narvii/lib/R$id;->error:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/list/NVRecyclerLayout;->errorView:Landroid/view/View;

    .line 12
    .line 13
    sget v0, Lcom/narvii/lib/R$id;->loading:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/list/NVRecyclerLayout;->loadingView:Landroid/view/View;

    .line 20
    .line 21
    sget v0, Lcom/narvii/lib/R$id;->recycler:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/narvii/list/NVRecyclerLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    .line 31
    sget v0, Lcom/narvii/lib/R$id;->main_layout:I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    iput-object v0, p0, Lcom/narvii/list/NVRecyclerLayout;->mainLayout:Landroid/view/View;

    .line 38
    const/4 v0, 0x0

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 42
    move-result v1

    .line 43
    .line 44
    if-ge v0, v1, :cond_0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 48
    move-result-object v1

    .line 49
    const/4 v2, 0x4

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method

.method public setRecycleAdapter(Lcom/narvii/widget/recycleview/NVRecycleAdapter;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVRecyclerLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/list/NVRecyclerLayout;->recycleAdapter:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/list/NVRecyclerLayout;->adapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/list/NVRecyclerLayout;->updateViews()V

    .line 16
    return-void
.end method
