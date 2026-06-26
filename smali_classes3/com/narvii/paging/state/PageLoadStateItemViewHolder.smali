.class public Lcom/narvii/paging/state/PageLoadStateItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PageLoadStateItemViewHolder.java"


# instance fields
.field private btnRetry:Landroid/view/View;

.field private errorMessage:Landroid/widget/TextView;

.field private isDarkTheme:Z

.field private listener:Lcom/narvii/paging/state/ErrorRetryListener;

.field private progressBar:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 30
    sget v0, Lcom/narvii/lib/R$id;->progress_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->progressBar:Landroid/view/View;

    .line 31
    sget v0, Lcom/narvii/lib/R$id;->error_msg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->errorMessage:Landroid/widget/TextView;

    .line 32
    sget v0, Lcom/narvii/lib/R$id;->retry_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->btnRetry:Landroid/view/View;

    return-void
.end method

.method static synthetic lambda$bind$0(Lcom/narvii/paging/state/ErrorRetryListener;Landroid/view/View;)V
    .locals 0

    .line 54
    invoke-interface {p0}, Lcom/narvii/paging/state/ErrorRetryListener;->onErrorRetry()V

    return-void
.end method

.method static synthetic lambda$bind$1(Lcom/narvii/paging/state/ErrorRetryListener;Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-interface {p0}, Lcom/narvii/paging/state/ErrorRetryListener;->onErrorRetry()V

    return-void
.end method


# virtual methods
.method public bind(Lcom/narvii/paging/state/PageLoadState;Lcom/narvii/paging/state/ErrorRetryListener;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 49
    :cond_0
    iput-object p2, p0, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->listener:Lcom/narvii/paging/state/ErrorRetryListener;

    .line 50
    iget-object v0, p0, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->progressBar:Landroid/view/View;

    iget v1, p1, Lcom/narvii/paging/state/PageLoadState;->status:I

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->errorMessage:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/narvii/paging/state/PageLoadState;->errorMessage:Ljava/lang/String;

    invoke-static {v1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->errorMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/narvii/lib/R$string;->normal_error:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->errorMessage:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->isDarkTheme:Z

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    goto :goto_2

    :cond_3
    const/high16 v1, -0x1000000

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    iget-object v0, p0, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->errorMessage:Landroid/widget/TextView;

    new-instance v1, Lcom/narvii/paging/state/-$$Lambda$PageLoadStateItemViewHolder$rQbLmv7W041_-uXfW9ZscfsfV8E;

    invoke-direct {v1, p2}, Lcom/narvii/paging/state/-$$Lambda$PageLoadStateItemViewHolder$rQbLmv7W041_-uXfW9ZscfsfV8E;-><init>(Lcom/narvii/paging/state/ErrorRetryListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->btnRetry:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 57
    iget p1, p1, Lcom/narvii/paging/state/PageLoadState;->status:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    goto :goto_3

    :cond_4
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object p1, p0, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->btnRetry:Landroid/view/View;

    new-instance v0, Lcom/narvii/paging/state/-$$Lambda$PageLoadStateItemViewHolder$OyYZmRKcvFfGd1awMHpOhmY3bD4;

    invoke-direct {v0, p2}, Lcom/narvii/paging/state/-$$Lambda$PageLoadStateItemViewHolder$OyYZmRKcvFfGd1awMHpOhmY3bD4;-><init>(Lcom/narvii/paging/state/ErrorRetryListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 4

    .line 36
    iput-boolean p1, p0, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->isDarkTheme:Z

    .line 37
    iget-object v0, p0, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->progressBar:Landroid/view/View;

    instance-of v1, v0, Lcom/narvii/widget/SpinningView;

    const/4 v2, -0x1

    const/high16 v3, -0x1000000

    if-eqz v1, :cond_1

    .line 38
    check-cast v0, Lcom/narvii/widget/SpinningView;

    if-eqz p1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/high16 v1, -0x1000000

    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->btnRetry:Landroid/view/View;

    instance-of v1, v0, Lcom/narvii/widget/FontAwesomeView;

    if-eqz v1, :cond_3

    .line 41
    check-cast v0, Lcom/narvii/widget/FontAwesomeView;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v2, -0x1000000

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    return-void
.end method
