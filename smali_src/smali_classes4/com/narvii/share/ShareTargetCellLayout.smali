.class public Lcom/narvii/share/ShareTargetCellLayout;
.super Lcom/github/mmin18/widget/FlexLayout;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/share/ShareTargetCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    sget-object v0, Lcom/narvii/lib/R$styleable;->ShareTargetCellLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    sget p2, Lcom/narvii/lib/R$styleable;->ShareTargetCellLayout_share_target_icon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/share/ShareTargetCellLayout;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    sget p2, Lcom/narvii/lib/R$styleable;->ShareTargetCellLayout_share_target_label:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/share/ShareTargetCellLayout;->label:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getBackgroundDrawable(Lcom/narvii/share/elements/BaseElement;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    const/high16 v2, 0x40800000    # 4.0f

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 15
    move-result v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/share/elements/BaseElement;->color()I

    .line 22
    move-result v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 26
    const/4 v1, 0x3

    .line 27
    .line 28
    new-array v1, v1, [F

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/narvii/share/elements/BaseElement;->color()I

    .line 32
    move-result p1

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 36
    const/4 p1, 0x2

    .line 37
    .line 38
    aget v3, v1, p1

    .line 39
    float-to-double v3, v3

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    const-wide v5, 0x3fe999999999999aL    # 0.8

    .line 45
    mul-double/2addr v3, v5

    .line 46
    double-to-float v3, v3

    .line 47
    .line 48
    aput v3, v1, p1

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 52
    move-result p1

    .line 53
    .line 54
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 55
    .line 56
    .line 57
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 61
    move-result-object v3

    .line 62
    .line 63
    .line 64
    invoke-static {v3, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 65
    move-result v2

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 72
    .line 73
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    .line 74
    .line 75
    .line 76
    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 77
    .line 78
    .line 79
    const v2, 0x10100a7

    .line 80
    .line 81
    .line 82
    filled-new-array {v2}, [I

    .line 83
    move-result-object v2

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 87
    .line 88
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 92
    return-object p1
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 4
    .line 5
    sget v0, Lcom/narvii/lib/R$id;->icon:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Landroid/widget/ImageView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/share/ShareTargetCellLayout;->imgIcon:Landroid/widget/ImageView;

    .line 14
    .line 15
    sget v0, Lcom/narvii/lib/R$id;->target_label:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Landroid/widget/TextView;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/share/ShareTargetCellLayout;->tvTitle:Landroid/widget/TextView;

    .line 24
    .line 25
    sget v0, Lcom/narvii/lib/R$id;->real_container:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/share/ShareTargetCellLayout;->realView:Landroid/view/View;

    .line 32
    return-void
.end method

.method public setShareTarget(Lcom/narvii/share/elements/BaseElement;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/share/ShareTargetCellLayout;->imgIcon:Landroid/widget/ImageView;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/share/elements/BaseElement;->icon()Landroid/graphics/drawable/Drawable;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/narvii/share/ShareTargetCellLayout;->tvTitle:Landroid/widget/TextView;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/share/elements/BaseElement;->label()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/share/ShareTargetCellLayout;->tvTitle:Landroid/widget/TextView;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/share/elements/BaseElement;->textColor()I

    .line 31
    move-result v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    .line 36
    :cond_2
    iget-object v0, p0, Lcom/narvii/share/ShareTargetCellLayout;->realView:Landroid/view/View;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/narvii/share/ShareTargetCellLayout;->getBackgroundDrawable(Lcom/narvii/share/elements/BaseElement;)Landroid/graphics/drawable/Drawable;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    :cond_3
    return-void
.end method
