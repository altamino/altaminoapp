.class public Lcom/narvii/widget/TextLoadingLayout;
.super Landroid/widget/FrameLayout;
.source "TextLoadingLayout.java"


# instance fields
.field loading:Z

.field spinningView:Lcom/narvii/widget/SpinningView;

.field textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private updateViews()V
    .locals 4

    .line 43
    iget-boolean v0, p0, Lcom/narvii/widget/TextLoadingLayout;->loading:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 44
    iget-object v0, p0, Lcom/narvii/widget/TextLoadingLayout;->textView:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 45
    iget-boolean v3, p0, Lcom/narvii/widget/TextLoadingLayout;->loading:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/TextLoadingLayout;->spinningView:Lcom/narvii/widget/SpinningView;

    if-eqz v0, :cond_3

    .line 48
    iget-boolean v3, p0, Lcom/narvii/widget/TextLoadingLayout;->loading:Z

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public isLoading()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/narvii/widget/TextLoadingLayout;->loading:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 31
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090b5b

    .line 32
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/widget/TextLoadingLayout;->textView:Landroid/widget/TextView;

    const v0, 0x7f090a78

    .line 33
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/SpinningView;

    iput-object v0, p0, Lcom/narvii/widget/TextLoadingLayout;->spinningView:Lcom/narvii/widget/SpinningView;

    .line 34
    invoke-direct {p0}, Lcom/narvii/widget/TextLoadingLayout;->updateViews()V

    return-void
.end method

.method public setLoading(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/narvii/widget/TextLoadingLayout;->loading:Z

    .line 39
    invoke-direct {p0}, Lcom/narvii/widget/TextLoadingLayout;->updateViews()V

    return-void
.end method
