.class public Lcom/narvii/widget/NVStatusLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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
    iput-object v0, p0, Lcom/narvii/widget/NVStatusLayout;->errorView:Landroid/view/View;

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
    iput-object v0, p0, Lcom/narvii/widget/NVStatusLayout;->loadingView:Landroid/view/View;

    .line 20
    .line 21
    sget v0, Lcom/narvii/lib/R$id;->main_layout:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/widget/NVStatusLayout;->mainLayout:Landroid/view/View;

    .line 28
    const/4 v0, 0x0

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 32
    move-result v1

    .line 33
    .line 34
    if-ge v0, v1, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x4

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method public setOnErrorRetryListener(Lcom/narvii/widget/NVStatusLayout$onErrorRetryListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/NVStatusLayout;->onErrorRetryListener:Lcom/narvii/widget/NVStatusLayout$onErrorRetryListener;

    return-void
.end method

.method public showContent()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVStatusLayout;->loadingView:Landroid/view/View;

    .line 3
    const/4 v1, 0x4

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVStatusLayout;->errorView:Landroid/view/View;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/NVStatusLayout;->mainLayout:Landroid/view/View;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    :cond_2
    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVStatusLayout;->loadingView:Landroid/view/View;

    .line 3
    const/4 v1, 0x4

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVStatusLayout;->errorView:Landroid/view/View;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/widget/NVStatusLayout;->errorView:Landroid/view/View;

    .line 19
    .line 20
    sget v2, Lcom/narvii/lib/R$id;->error_text:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Landroid/widget/TextView;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    sget v3, Lcom/narvii/lib/R$string;->normal_error_offline2:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    .line 43
    invoke-static {v3}, Lcom/narvii/util/Utils;->isDeviceOffline(Landroid/content/Context;)Z

    .line 44
    move-result v3

    .line 45
    .line 46
    if-eqz v3, :cond_1

    .line 47
    move-object p1, v2

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/widget/NVStatusLayout;->errorView:Landroid/view/View;

    .line 53
    .line 54
    sget v0, Lcom/narvii/lib/R$id;->error_retry:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    new-instance v0, Lcom/narvii/widget/NVStatusLayout$1;

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, p0}, Lcom/narvii/widget/NVStatusLayout$1;-><init>(Lcom/narvii/widget/NVStatusLayout;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    .line 68
    :cond_2
    iget-object p1, p0, Lcom/narvii/widget/NVStatusLayout;->mainLayout:Landroid/view/View;

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    :cond_3
    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVStatusLayout;->loadingView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVStatusLayout;->errorView:Landroid/view/View;

    .line 11
    const/4 v1, 0x4

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/NVStatusLayout;->mainLayout:Landroid/view/View;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    :cond_2
    return-void
.end method
