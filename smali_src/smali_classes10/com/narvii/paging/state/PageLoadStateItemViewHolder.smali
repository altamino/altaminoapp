.class public Lcom/narvii/paging/state/PageLoadStateItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private btnRetry:Landroid/view/View;

.field private errorMessage:Landroid/widget/TextView;

.field private isDarkTheme:Z

.field private listener:Lcom/narvii/paging/state/ErrorRetryListener;

.field private progressBar:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    sget v0, Lcom/narvii/lib/R$id;->progress_bar:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->progressBar:Landroid/view/View;

    .line 12
    .line 13
    sget v0, Lcom/narvii/lib/R$id;->error_msg:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->errorMessage:Landroid/widget/TextView;

    .line 22
    .line 23
    sget v0, Lcom/narvii/lib/R$id;->retry_button:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    iput-object p1, p0, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->btnRetry:Landroid/view/View;

    .line 30
    return-void
.end method

.method public static synthetic a(Lcom/narvii/paging/state/ErrorRetryListener;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->lambda$bind$1(Lcom/narvii/paging/state/ErrorRetryListener;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/paging/state/ErrorRetryListener;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->lambda$bind$0(Lcom/narvii/paging/state/ErrorRetryListener;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$bind$0(Lcom/narvii/paging/state/ErrorRetryListener;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcom/narvii/paging/state/ErrorRetryListener;->onErrorRetry()V

    .line 4
    return-void
.end method

.method private static synthetic lambda$bind$1(Lcom/narvii/paging/state/ErrorRetryListener;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcom/narvii/paging/state/ErrorRetryListener;->onErrorRetry()V

    .line 4
    return-void
.end method


# virtual methods
.method public bind(Lcom/narvii/paging/state/PageLoadState;Lcom/narvii/paging/state/ErrorRetryListener;)V
    .locals 5

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iput-object p2, p0, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->listener:Lcom/narvii/paging/state/ErrorRetryListener;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->progressBar:Landroid/view/View;

    .line 8
    .line 9
    iget v1, p1, Lcom/narvii/paging/state/PageLoadState;->status:I

    .line 10
    .line 11
    const/16 v2, 0x8

    .line 12
    const/4 v3, 0x0

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    move v1, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move v1, v2

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->errorMessage:Landroid/widget/TextView;

    .line 23
    .line 24
    iget-object v1, p1, Lcom/narvii/paging/state/PageLoadState;->errorMessage:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-nez v1, :cond_2

    .line 31
    move v1, v3

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    move v1, v2

    .line 34
    .line 35
    .line 36
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->errorMessage:Landroid/widget/TextView;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    sget v4, Lcom/narvii/lib/R$string;->normal_error:I

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->errorMessage:Landroid/widget/TextView;

    .line 54
    .line 55
    iget-boolean v1, p0, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->isDarkTheme:Z

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    const/4 v1, -0x1

    .line 59
    goto :goto_2

    .line 60
    .line 61
    :cond_3
    const/high16 v1, -0x1000000

    .line 62
    .line 63
    .line 64
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->errorMessage:Landroid/widget/TextView;

    .line 67
    .line 68
    new-instance v1, Lcom/narvii/paging/state/a;

    .line 69
    .line 70
    .line 71
    invoke-direct {v1, p2}, Lcom/narvii/paging/state/a;-><init>(Lcom/narvii/paging/state/ErrorRetryListener;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->btnRetry:Landroid/view/View;

    .line 77
    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    iget p1, p1, Lcom/narvii/paging/state/PageLoadState;->status:I

    .line 81
    const/4 v1, 0x2

    .line 82
    .line 83
    if-ne p1, v1, :cond_4

    .line 84
    move v2, v3

    .line 85
    .line 86
    .line 87
    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    iget-object p1, p0, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->btnRetry:Landroid/view/View;

    .line 90
    .line 91
    new-instance v0, Lcom/narvii/paging/state/b;

    .line 92
    .line 93
    .line 94
    invoke-direct {v0, p2}, Lcom/narvii/paging/state/b;-><init>(Lcom/narvii/paging/state/ErrorRetryListener;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :cond_5
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 4

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->isDarkTheme:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->progressBar:Landroid/view/View;

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/widget/SpinningView;

    .line 7
    .line 8
    const/high16 v2, -0x1000000

    .line 9
    const/4 v3, -0x1

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/widget/SpinningView;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    move v1, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v2

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->btnRetry:Landroid/view/View;

    .line 24
    .line 25
    instance-of v1, v0, Lcom/narvii/widget/FontAwesomeView;

    .line 26
    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    check-cast v0, Lcom/narvii/widget/FontAwesomeView;

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    move v2, v3

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    :cond_3
    return-void
.end method
