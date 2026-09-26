.class public Lcom/narvii/amino/speeddial/LiveSRItemView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private imgBg:Lcom/narvii/widget/NVImageView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/amino/speeddial/LiveSRItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

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

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0d041d

    .line 3
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/LiveSRItemView;->initViews()V

    return-void
.end method

.method private initViews()V
    .locals 3

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0d73

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/amino/speeddial/LiveSRItemView;->imgBg:Lcom/narvii/widget/NVImageView;

    .line 12
    .line 13
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 17
    .line 18
    const/high16 v1, -0x70000000

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    const/high16 v2, 0x40800000    # 4.0f

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 31
    move-result v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/amino/speeddial/LiveSRItemView;->imgBg:Lcom/narvii/widget/NVImageView;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/amino/speeddial/LiveSRItemView;->imgBg:Lcom/narvii/widget/NVImageView;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    .line 46
    .line 47
    const v0, 0x7f0a0e9e

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    check-cast v0, Landroid/widget/TextView;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/narvii/amino/speeddial/LiveSRItemView;->tvTitle:Landroid/widget/TextView;

    .line 56
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/LiveSRItemView;->initViews()V

    .line 7
    return-void
.end method

.method public updateViews(Lcom/narvii/model/ChatThread;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/speeddial/LiveSRItemView;->imgBg:Lcom/narvii/widget/NVImageView;

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_1
    iget-object p2, p1, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-virtual {v0, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 14
    .line 15
    iget-object p2, p0, Lcom/narvii/amino/speeddial/LiveSRItemView;->tvTitle:Landroid/widget/TextView;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    return-void
.end method
