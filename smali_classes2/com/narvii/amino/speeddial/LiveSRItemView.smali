.class public Lcom/narvii/amino/speeddial/LiveSRItemView;
.super Landroid/widget/FrameLayout;
.source "LiveSRItemView.java"


# instance fields
.field private imgBg:Lcom/narvii/widget/NVImageView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/narvii/amino/speeddial/LiveSRItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0b03e7

    .line 32
    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 33
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/LiveSRItemView;->initViews()V

    return-void
.end method

.method private initViews()V
    .locals 3

    const v0, 0x7f090a7f

    .line 52
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/LiveSRItemView;->imgBg:Lcom/narvii/widget/NVImageView;

    .line 53
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v1, -0x70000000

    .line 54
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 55
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 56
    iget-object v1, p0, Lcom/narvii/amino/speeddial/LiveSRItemView;->imgBg:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    iget-object v1, p0, Lcom/narvii/amino/speeddial/LiveSRItemView;->imgBg:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f090b9a

    .line 58
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/LiveSRItemView;->tvTitle:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .line 39
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 40
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/LiveSRItemView;->initViews()V

    return-void
.end method

.method public updateViews(Lcom/narvii/model/ChatThread;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/speeddial/LiveSRItemView;->imgBg:Lcom/narvii/widget/NVImageView;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p1, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 48
    iget-object p2, p0, Lcom/narvii/amino/speeddial/LiveSRItemView;->tvTitle:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
