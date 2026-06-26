.class public Lcom/narvii/util/statusbar/StatusBarLayout;
.super Landroid/widget/FrameLayout;
.source "StatusBarLayout.java"


# instance fields
.field fakeStatusBar:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 27
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 28
    sget v0, Lcom/narvii/lib/R$id;->fake_status:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/util/statusbar/StatusBarLayout;->fakeStatusBar:Landroid/view/View;

    return-void
.end method

.method public setStatusBarDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/narvii/util/statusbar/StatusBarLayout;->fakeStatusBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 34
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x30

    .line 35
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 36
    iget-object v1, p0, Lcom/narvii/util/statusbar/StatusBarLayout;->fakeStatusBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object v0, p0, Lcom/narvii/util/statusbar/StatusBarLayout;->fakeStatusBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
