.class public Lcom/narvii/list/NVRecyclerLayout;
.super Landroid/widget/FrameLayout;
.source "NVRecyclerLayout.java"


# instance fields
.field adapterDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

.field private emptyView:Landroid/view/View;

.field errorRetryListener:Landroid/view/View$OnClickListener;

.field private errorView:Landroid/view/View;

.field private loadingView:Landroid/view/View;

.field private mainLayout:Landroid/view/View;

.field private recycleAdapter:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

.field public recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance p1, Lcom/narvii/list/NVRecyclerLayout$1;

    invoke-direct {p1, p0}, Lcom/narvii/list/NVRecyclerLayout$1;-><init>(Lcom/narvii/list/NVRecyclerLayout;)V

    iput-object p1, p0, Lcom/narvii/list/NVRecyclerLayout;->adapterDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 41
    new-instance p1, Lcom/narvii/list/NVRecyclerLayout$2;

    invoke-direct {p1, p0}, Lcom/narvii/list/NVRecyclerLayout$2;-><init>(Lcom/narvii/list/NVRecyclerLayout;)V

    iput-object p1, p0, Lcom/narvii/list/NVRecyclerLayout;->errorRetryListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/list/NVRecyclerLayout;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/narvii/list/NVRecyclerLayout;->updateViews()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/list/NVRecyclerLayout;)Lcom/narvii/widget/recycleview/NVRecycleAdapter;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/narvii/list/NVRecyclerLayout;->recycleAdapter:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    return-object p0
.end method

.method private updateViews()V
    .locals 7

    .line 65
    iget-object v0, p0, Lcom/narvii/list/NVRecyclerLayout;->recycleAdapter:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    if-eqz v0, :cond_9

    .line 66
    invoke-virtual {v0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isListShown()Z

    move-result v0

    .line 67
    iget-object v1, p0, Lcom/narvii/list/NVRecyclerLayout;->recycleAdapter:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    invoke-virtual {v1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isEmpty()Z

    move-result v1

    .line 68
    iget-object v2, p0, Lcom/narvii/list/NVRecyclerLayout;->recycleAdapter:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    invoke-virtual {v2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 70
    :goto_0
    iget-object v4, p0, Lcom/narvii/list/NVRecyclerLayout;->mainLayout:Landroid/view/View;

    const/4 v5, 0x4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    const/4 v6, 0x4

    .line 71
    :goto_1
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :cond_2
    iget-object v4, p0, Lcom/narvii/list/NVRecyclerLayout;->emptyView:Landroid/view/View;

    if-eqz v4, :cond_4

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-nez v2, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    const/4 v1, 0x4

    .line 74
    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    :cond_4
    iget-object v1, p0, Lcom/narvii/list/NVRecyclerLayout;->loadingView:Landroid/view/View;

    if-eqz v1, :cond_6

    if-nez v0, :cond_5

    if-nez v2, :cond_5

    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    const/4 v0, 0x4

    .line 77
    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 80
    :cond_6
    iget-object v0, p0, Lcom/narvii/list/NVRecyclerLayout;->errorView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 81
    iget-object v1, p0, Lcom/narvii/list/NVRecyclerLayout;->recycleAdapter:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    invoke-virtual {v1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v3, 0x4

    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/narvii/list/NVRecyclerLayout;->errorView:Landroid/view/View;

    sget v1, Lcom/narvii/lib/R$id;->error_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$string;->normal_error_offline2:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Utils;->isDeviceOffline(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lcom/narvii/list/NVRecyclerLayout;->recycleAdapter:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    invoke-virtual {v1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/narvii/list/NVRecyclerLayout;->errorView:Landroid/view/View;

    sget v1, Lcom/narvii/lib/R$id;->error_retry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/narvii/list/NVRecyclerLayout;->errorRetryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .line 54
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 55
    sget v0, Lcom/narvii/lib/R$id;->error:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/list/NVRecyclerLayout;->errorView:Landroid/view/View;

    .line 56
    sget v0, Lcom/narvii/lib/R$id;->loading:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/list/NVRecyclerLayout;->loadingView:Landroid/view/View;

    .line 57
    sget v0, Lcom/narvii/lib/R$id;->recycler:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/narvii/list/NVRecyclerLayout;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 58
    sget v0, Lcom/narvii/lib/R$id;->main_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/list/NVRecyclerLayout;->mainLayout:Landroid/view/View;

    const/4 v0, 0x0

    .line 59
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 60
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRecycleAdapter(Lcom/narvii/widget/recycleview/NVRecycleAdapter;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/narvii/list/NVRecyclerLayout;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 94
    iput-object p1, p0, Lcom/narvii/list/NVRecyclerLayout;->recycleAdapter:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    .line 95
    iget-object v0, p0, Lcom/narvii/list/NVRecyclerLayout;->adapterDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 96
    invoke-direct {p0}, Lcom/narvii/list/NVRecyclerLayout;->updateViews()V

    return-void
.end method
