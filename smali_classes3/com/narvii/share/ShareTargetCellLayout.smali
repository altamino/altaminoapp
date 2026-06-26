.class public Lcom/narvii/share/ShareTargetCellLayout;
.super Lcom/github/mmin18/widget/FlexLayout;
.source "ShareTargetCellLayout.java"


# instance fields
.field iconDrawable:Landroid/graphics/drawable/Drawable;

.field imgIcon:Landroid/widget/ImageView;

.field label:Ljava/lang/String;

.field realView:Landroid/view/View;

.field tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/narvii/share/ShareTargetCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    sget-object v0, Lcom/narvii/lib/R$styleable;->ShareTargetCellLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 41
    sget p2, Lcom/narvii/lib/R$styleable;->ShareTargetCellLayout_share_target_icon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/share/ShareTargetCellLayout;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 42
    sget p2, Lcom/narvii/lib/R$styleable;->ShareTargetCellLayout_share_target_label:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/share/ShareTargetCellLayout;->label:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getBackgroundDrawable(Lcom/narvii/share/elements/BaseElement;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 70
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 71
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 72
    invoke-virtual {p1}, Lcom/narvii/share/elements/BaseElement;->color()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 74
    invoke-virtual {p1}, Lcom/narvii/share/elements/BaseElement;->color()I

    move-result p1

    invoke-static {p1, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x2

    .line 75
    aget v3, v1, p1

    float-to-double v3, v3

    const-wide v5, 0x3fe999999999999aL    # 0.8

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-float v3, v3

    aput v3, v1, p1

    .line 77
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    .line 78
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 79
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 80
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 81
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    .line 82
    invoke-virtual {p1, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 83
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 48
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 49
    sget v0, Lcom/narvii/lib/R$id;->icon:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/share/ShareTargetCellLayout;->imgIcon:Landroid/widget/ImageView;

    .line 50
    sget v0, Lcom/narvii/lib/R$id;->target_label:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/share/ShareTargetCellLayout;->tvTitle:Landroid/widget/TextView;

    .line 51
    sget v0, Lcom/narvii/lib/R$id;->real_container:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/share/ShareTargetCellLayout;->realView:Landroid/view/View;

    return-void
.end method

.method public setShareTarget(Lcom/narvii/share/elements/BaseElement;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/narvii/share/ShareTargetCellLayout;->imgIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p1}, Lcom/narvii/share/elements/BaseElement;->icon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/narvii/share/ShareTargetCellLayout;->tvTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {p1}, Lcom/narvii/share/elements/BaseElement;->label()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/narvii/share/ShareTargetCellLayout;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/narvii/share/elements/BaseElement;->textColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/narvii/share/ShareTargetCellLayout;->realView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 65
    invoke-virtual {p0, p1}, Lcom/narvii/share/ShareTargetCellLayout;->getBackgroundDrawable(Lcom/narvii/share/elements/BaseElement;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method
