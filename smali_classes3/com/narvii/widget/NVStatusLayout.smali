.class public Lcom/narvii/widget/NVStatusLayout;
.super Landroid/widget/FrameLayout;
.source "NVStatusLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/NVStatusLayout$onErrorRetryListener;
    }
.end annotation


# instance fields
.field private errorView:Landroid/view/View;

.field private loadingView:Landroid/view/View;

.field private mainLayout:Landroid/view/View;

.field onErrorRetryListener:Lcom/narvii/widget/NVStatusLayout$onErrorRetryListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .line 39
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 40
    sget v0, Lcom/narvii/lib/R$id;->error:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/NVStatusLayout;->errorView:Landroid/view/View;

    .line 41
    sget v0, Lcom/narvii/lib/R$id;->loading:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/NVStatusLayout;->loadingView:Landroid/view/View;

    .line 42
    sget v0, Lcom/narvii/lib/R$id;->main_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/NVStatusLayout;->mainLayout:Landroid/view/View;

    const/4 v0, 0x0

    .line 43
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnErrorRetryListener(Lcom/narvii/widget/NVStatusLayout$onErrorRetryListener;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/narvii/widget/NVStatusLayout;->onErrorRetryListener:Lcom/narvii/widget/NVStatusLayout$onErrorRetryListener;

    return-void
.end method

.method public showContent()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/narvii/widget/NVStatusLayout;->loadingView:Landroid/view/View;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVStatusLayout;->errorView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/NVStatusLayout;->mainLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/narvii/widget/NVStatusLayout;->loadingView:Landroid/view/View;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVStatusLayout;->errorView:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 66
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/narvii/widget/NVStatusLayout;->errorView:Landroid/view/View;

    sget v2, Lcom/narvii/lib/R$id;->error_text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 68
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/narvii/lib/R$string;->normal_error_offline2:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/narvii/util/Utils;->isDeviceOffline(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object p1, v2

    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p1, p0, Lcom/narvii/widget/NVStatusLayout;->errorView:Landroid/view/View;

    sget v0, Lcom/narvii/lib/R$id;->error_retry:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 72
    new-instance v0, Lcom/narvii/widget/NVStatusLayout$1;

    invoke-direct {v0, p0}, Lcom/narvii/widget/NVStatusLayout$1;-><init>(Lcom/narvii/widget/NVStatusLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    :cond_2
    iget-object p1, p0, Lcom/narvii/widget/NVStatusLayout;->mainLayout:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 82
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/narvii/widget/NVStatusLayout;->loadingView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVStatusLayout;->errorView:Landroid/view/View;

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/NVStatusLayout;->mainLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
