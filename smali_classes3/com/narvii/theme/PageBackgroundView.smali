.class public Lcom/narvii/theme/PageBackgroundView;
.super Landroid/widget/FrameLayout;
.source "PageBackgroundView.java"

# interfaces
.implements Lcom/narvii/util/SkipRequestLayoutFlag;


# instance fields
.field imgBackground:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/narvii/theme/PageBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    sget p2, Lcom/narvii/lib/R$layout;->theme_page_background:I

    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    invoke-direct {p0}, Lcom/narvii/theme/PageBackgroundView;->initViews()V

    return-void
.end method

.method private initViews()V
    .locals 1

    .line 40
    sget v0, Lcom/narvii/lib/R$id;->page_bg:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/theme/PageBackgroundView;->imgBackground:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .line 35
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 36
    invoke-direct {p0}, Lcom/narvii/theme/PageBackgroundView;->initViews()V

    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/narvii/theme/PageBackgroundView;->imgBackground:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
