.class public Lcom/narvii/headlines/HeadlineFeatureLabel;
.super Landroid/widget/FrameLayout;
.source "HeadlineFeatureLabel.java"


# static fields
.field public static final MODE_COLLAPSE:I = 0x0

.field public static final MODE_EXPANDED:I = 0x1

.field private static final PADING_DP:I = 0x0

.field private static final PADING_DP_EXPEND_HOR:I = 0x6

.field private static final PADING_DP_EXPEND_VEC:I = 0x2


# instance fields
.field private imgIcon:Lcom/narvii/widget/NVImageView;

.field private labelContaienr:Landroid/view/View;

.field private tvLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0b020e

    .line 51
    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private getBackgroundDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 83
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    .line 84
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 85
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 86
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v1
.end method


# virtual methods
.method public collapse()V
    .locals 5

    .line 114
    new-instance v0, Landroid/support/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/support/transition/ChangeBounds;-><init>()V

    const-wide/16 v1, 0xc8

    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/support/transition/Transition;->setDuration(J)Landroid/support/transition/Transition;

    .line 116
    new-instance v1, Landroid/support/transition/Fade;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/support/transition/Fade;-><init>(I)V

    .line 117
    new-instance v2, Landroid/support/transition/Fade;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/support/transition/Fade;-><init>(I)V

    .line 118
    new-instance v3, Landroid/support/transition/TransitionSet;

    invoke-direct {v3}, Landroid/support/transition/TransitionSet;-><init>()V

    const/4 v4, 0x0

    .line 119
    invoke-virtual {v3, v4}, Landroid/support/transition/TransitionSet;->setOrdering(I)Landroid/support/transition/TransitionSet;

    .line 121
    invoke-virtual {v3, v0}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    move-result-object v0

    .line 122
    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    move-result-object v0

    .line 123
    invoke-virtual {v0, v2}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 125
    invoke-static {p0, v3}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V

    .line 127
    iget-object v0, p0, Lcom/narvii/headlines/HeadlineFeatureLabel;->tvLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/narvii/headlines/HeadlineFeatureLabel;->imgIcon:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    .line 130
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v1

    .line 131
    iget-object v2, p0, Lcom/narvii/headlines/HeadlineFeatureLabel;->labelContaienr:Landroid/view/View;

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public expand()V
    .locals 6

    .line 91
    new-instance v0, Landroid/support/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/support/transition/ChangeBounds;-><init>()V

    const-wide/16 v1, 0xc8

    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/support/transition/Transition;->setDuration(J)Landroid/support/transition/Transition;

    .line 93
    new-instance v3, Landroid/support/transition/Fade;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/support/transition/Fade;-><init>(I)V

    .line 94
    new-instance v4, Landroid/support/transition/Fade;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/support/transition/Fade;-><init>(I)V

    .line 95
    invoke-virtual {v4, v1, v2}, Landroid/support/transition/Transition;->setDuration(J)Landroid/support/transition/Transition;

    .line 96
    invoke-virtual {v3, v1, v2}, Landroid/support/transition/Transition;->setDuration(J)Landroid/support/transition/Transition;

    .line 97
    new-instance v1, Landroid/support/transition/TransitionSet;

    invoke-direct {v1}, Landroid/support/transition/TransitionSet;-><init>()V

    const/4 v2, 0x0

    .line 98
    invoke-virtual {v1, v2}, Landroid/support/transition/TransitionSet;->setOrdering(I)Landroid/support/transition/TransitionSet;

    .line 100
    invoke-virtual {v1, v0}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    move-result-object v0

    .line 101
    invoke-virtual {v0, v4}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    move-result-object v0

    .line 102
    invoke-virtual {v0, v3}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 104
    invoke-static {p0, v1}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V

    .line 106
    iget-object v0, p0, Lcom/narvii/headlines/HeadlineFeatureLabel;->tvLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/narvii/headlines/HeadlineFeatureLabel;->imgIcon:Lcom/narvii/widget/NVImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    .line 109
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v1

    .line 110
    iget-object v2, p0, Lcom/narvii/headlines/HeadlineFeatureLabel;->labelContaienr:Landroid/view/View;

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 56
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090619

    .line 57
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/headlines/HeadlineFeatureLabel;->tvLabel:Landroid/widget/TextView;

    const v0, 0x7f09061b

    .line 58
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/headlines/HeadlineFeatureLabel;->imgIcon:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f090432

    .line 59
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/headlines/HeadlineFeatureLabel;->labelContaienr:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/narvii/headlines/HeadlineFeatureLabel;->imgIcon:Lcom/narvii/widget/NVImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    return-void
.end method

.method public setFeatureTag(Lcom/narvii/model/FeaturedTag;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, p1, v0}, Lcom/narvii/headlines/HeadlineFeatureLabel;->setFeatureTag(Lcom/narvii/model/FeaturedTag;I)V

    return-void
.end method

.method public setFeatureTag(Lcom/narvii/model/FeaturedTag;I)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/narvii/headlines/HeadlineFeatureLabel;->tvLabel:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/narvii/model/FeaturedTag;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/narvii/headlines/HeadlineFeatureLabel;->tvLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/narvii/headlines/HeadlineFeatureLabel;->imgIcon:Lcom/narvii/widget/NVImageView;

    iget-object v4, p1, Lcom/narvii/model/FeaturedTag;->icon:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 74
    iget-object v0, p0, Lcom/narvii/headlines/HeadlineFeatureLabel;->imgIcon:Lcom/narvii/widget/NVImageView;

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p2, v3, :cond_3

    const/high16 v2, 0x40c00000    # 6.0f

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    .line 76
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    if-ne p2, v3, :cond_4

    const/high16 v1, 0x40000000    # 2.0f

    :cond_4
    invoke-static {v2, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p2

    .line 77
    iget-object v1, p0, Lcom/narvii/headlines/HeadlineFeatureLabel;->labelContaienr:Landroid/view/View;

    invoke-virtual {v1, v0, p2, v0, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 78
    iget-object p2, p0, Lcom/narvii/headlines/HeadlineFeatureLabel;->labelContaienr:Landroid/view/View;

    iget p1, p1, Lcom/narvii/model/FeaturedTag;->color:I

    invoke-direct {p0, p1}, Lcom/narvii/headlines/HeadlineFeatureLabel;->getBackgroundDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
