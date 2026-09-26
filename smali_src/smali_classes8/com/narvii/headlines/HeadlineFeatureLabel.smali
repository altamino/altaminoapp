.class public Lcom/narvii/headlines/HeadlineFeatureLabel;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

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

    const p2, 0x7f0d023c

    .line 3
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private getBackgroundDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const/high16 v1, 0x41200000    # 10.0f

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 10
    move-result v0

    .line 11
    .line 12
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 22
    return-object v1
.end method


# virtual methods
.method public collapse()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Landroidx/transition/ChangeBounds;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/transition/ChangeBounds;-><init>()V

    .line 6
    .line 7
    const-wide/16 v1, 0xc8

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroidx/transition/Transition;->Y(J)Landroidx/transition/Transition;

    .line 11
    .line 12
    new-instance v1, Landroidx/transition/Fade;

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Landroidx/transition/Fade;-><init>(I)V

    .line 17
    .line 18
    new-instance v2, Landroidx/transition/Fade;

    .line 19
    const/4 v3, 0x2

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v3}, Landroidx/transition/Fade;-><init>(I)V

    .line 23
    .line 24
    new-instance v3, Landroidx/transition/TransitionSet;

    .line 25
    .line 26
    .line 27
    invoke-direct {v3}, Landroidx/transition/TransitionSet;-><init>()V

    .line 28
    const/4 v4, 0x0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v4}, Landroidx/transition/TransitionSet;->r0(I)Landroidx/transition/TransitionSet;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v0}, Landroidx/transition/TransitionSet;->j0(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroidx/transition/TransitionSet;->j0(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroidx/transition/TransitionSet;->j0(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    .line 43
    .line 44
    .line 45
    invoke-static {p0, v3}, Landroidx/transition/TransitionManager;->b(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/headlines/HeadlineFeatureLabel;->tvLabel:Landroid/widget/TextView;

    .line 48
    .line 49
    const/16 v1, 0x8

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/headlines/HeadlineFeatureLabel;->imgIcon:Lcom/narvii/widget/NVImageView;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 61
    move-result-object v0

    .line 62
    const/4 v1, 0x0

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 66
    move-result v0

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 70
    move-result-object v2

    .line 71
    .line 72
    .line 73
    invoke-static {v2, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 74
    move-result v1

    .line 75
    .line 76
    iget-object v2, p0, Lcom/narvii/headlines/HeadlineFeatureLabel;->labelContaienr:Landroid/view/View;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 80
    return-void
.end method

.method public expand()V
    .locals 6

    .line 1
    .line 2
    new-instance v0, Landroidx/transition/ChangeBounds;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/transition/ChangeBounds;-><init>()V

    .line 6
    .line 7
    const-wide/16 v1, 0xc8

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroidx/transition/Transition;->Y(J)Landroidx/transition/Transition;

    .line 11
    .line 12
    new-instance v3, Landroidx/transition/Fade;

    .line 13
    const/4 v4, 0x1

    .line 14
    .line 15
    .line 16
    invoke-direct {v3, v4}, Landroidx/transition/Fade;-><init>(I)V

    .line 17
    .line 18
    new-instance v4, Landroidx/transition/Fade;

    .line 19
    const/4 v5, 0x2

    .line 20
    .line 21
    .line 22
    invoke-direct {v4, v5}, Landroidx/transition/Fade;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4, v1, v2}, Landroidx/transition/Transition;->Y(J)Landroidx/transition/Transition;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v1, v2}, Landroidx/transition/Transition;->Y(J)Landroidx/transition/Transition;

    .line 29
    .line 30
    new-instance v1, Landroidx/transition/TransitionSet;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1}, Landroidx/transition/TransitionSet;-><init>()V

    .line 34
    const/4 v2, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroidx/transition/TransitionSet;->r0(I)Landroidx/transition/TransitionSet;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0}, Landroidx/transition/TransitionSet;->j0(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v4}, Landroidx/transition/TransitionSet;->j0(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3}, Landroidx/transition/TransitionSet;->j0(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    .line 49
    .line 50
    .line 51
    invoke-static {p0, v1}, Landroidx/transition/TransitionManager;->b(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/headlines/HeadlineFeatureLabel;->tvLabel:Landroid/widget/TextView;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/headlines/HeadlineFeatureLabel;->imgIcon:Lcom/narvii/widget/NVImageView;

    .line 59
    const/4 v1, 0x4

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    const/high16 v1, 0x40c00000    # 6.0f

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 72
    move-result v0

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    const/high16 v2, 0x40000000    # 2.0f

    .line 79
    .line 80
    .line 81
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 82
    move-result v1

    .line 83
    .line 84
    iget-object v2, p0, Lcom/narvii/headlines/HeadlineFeatureLabel;->labelContaienr:Landroid/view/View;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 88
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0799

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
    iput-object v0, p0, Lcom/narvii/headlines/HeadlineFeatureLabel;->tvLabel:Landroid/widget/TextView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a079c

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/headlines/HeadlineFeatureLabel;->imgIcon:Lcom/narvii/widget/NVImageView;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a0569

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/headlines/HeadlineFeatureLabel;->labelContaienr:Landroid/view/View;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/headlines/HeadlineFeatureLabel;->imgIcon:Lcom/narvii/widget/NVImageView;

    .line 37
    const/4 v1, 0x0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 41
    return-void
.end method

.method public setFeatureTag(Lcom/narvii/model/FeaturedTag;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/headlines/HeadlineFeatureLabel;->setFeatureTag(Lcom/narvii/model/FeaturedTag;I)V

    return-void
.end method

.method public setFeatureTag(Lcom/narvii/model/FeaturedTag;I)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/narvii/headlines/HeadlineFeatureLabel;->tvLabel:Landroid/widget/TextView;

    .line 2
    iget-object v1, p1, Lcom/narvii/model/FeaturedTag;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/narvii/headlines/HeadlineFeatureLabel;->tvLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v1

    .line 3
    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/narvii/headlines/HeadlineFeatureLabel;->imgIcon:Lcom/narvii/widget/NVImageView;

    .line 4
    iget-object v4, p1, Lcom/narvii/model/FeaturedTag;->icon:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/narvii/headlines/HeadlineFeatureLabel;->imgIcon:Lcom/narvii/widget/NVImageView;

    if-nez p2, :cond_2

    move v1, v2

    .line 5
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p2, v3, :cond_3

    const/high16 v2, 0x40c00000    # 6.0f

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-ne p2, v3, :cond_4

    const/high16 v1, 0x40000000    # 2.0f

    :cond_4
    invoke-static {v2, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p2

    iget-object v1, p0, Lcom/narvii/headlines/HeadlineFeatureLabel;->labelContaienr:Landroid/view/View;

    .line 8
    invoke-virtual {v1, v0, p2, v0, p2}, Landroid/view/View;->setPadding(IIII)V

    iget-object p2, p0, Lcom/narvii/headlines/HeadlineFeatureLabel;->labelContaienr:Landroid/view/View;

    .line 9
    iget p1, p1, Lcom/narvii/model/FeaturedTag;->color:I

    invoke-direct {p0, p1}, Lcom/narvii/headlines/HeadlineFeatureLabel;->getBackgroundDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
