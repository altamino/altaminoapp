.class public Lcom/narvii/widget/TextLoadingLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field loading:Z

.field spinningView:Lcom/narvii/widget/SpinningView;

.field textView:Landroid/widget/TextView;


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

.method private updateViews()V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/TextLoadingLayout;->loading:Z

    .line 3
    .line 4
    xor-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/widget/TextLoadingLayout;->textView:Landroid/widget/TextView;

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-boolean v3, p0, Lcom/narvii/widget/TextLoadingLayout;->loading:Z

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    move v3, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v3, v1

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/TextLoadingLayout;->spinningView:Lcom/narvii/widget/SpinningView;

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    iget-boolean v3, p0, Lcom/narvii/widget/TextLoadingLayout;->loading:Z

    .line 31
    .line 32
    if-eqz v3, :cond_2

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move v1, v2

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    :cond_3
    return-void
.end method


# virtual methods
.method public isLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/widget/TextLoadingLayout;->loading:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0e51

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/widget/TextLoadingLayout;->textView:Landroid/widget/TextView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0d67

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/widget/SpinningView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/widget/TextLoadingLayout;->spinningView:Lcom/narvii/widget/SpinningView;

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/narvii/widget/TextLoadingLayout;->updateViews()V

    .line 29
    return-void
.end method

.method public setLoading(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/widget/TextLoadingLayout;->loading:Z

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/widget/TextLoadingLayout;->updateViews()V

    .line 6
    return-void
.end method
