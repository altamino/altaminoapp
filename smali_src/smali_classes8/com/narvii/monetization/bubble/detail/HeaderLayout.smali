.class public Lcom/narvii/monetization/bubble/detail/HeaderLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public final actionbarSize:I

.field private blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

.field private bubble:Lcom/narvii/model/ChatBubble;

.field private finalIconHeight:I

.field private finalIconSize:I

.field private height1:I

.field private imgCover:Lcom/narvii/widget/NVImageView;

.field private imgPreview:Lcom/narvii/widget/NVImageView;

.field private initIconHeight:I

.field private initIconSize:I

.field public final statusbarSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/monetization/bubble/detail/HeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    move-result p1

    iput p1, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->statusbarSize:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    move-result p1

    iput p1, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->actionbarSize:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700a3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->initIconSize:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700a2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->initIconHeight:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700a4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->finalIconSize:I

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3f5e76c9    # 0.869f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->finalIconHeight:I

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0224

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->imgCover:Lcom/narvii/widget/NVImageView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a022b

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
    iput-object v0, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->imgPreview:Lcom/narvii/widget/NVImageView;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a01da

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 37
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 4
    .line 5
    iget p1, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->statusbarSize:I

    .line 6
    .line 7
    iget p2, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->actionbarSize:I

    .line 8
    add-int/2addr p1, p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 12
    move-result p2

    .line 13
    sub-int/2addr p2, p1

    .line 14
    int-to-float p2, p2

    .line 15
    .line 16
    const/high16 p3, 0x3f800000    # 1.0f

    .line 17
    mul-float/2addr p2, p3

    .line 18
    .line 19
    iget p4, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->height1:I

    .line 20
    sub-int/2addr p4, p1

    .line 21
    int-to-float p1, p4

    .line 22
    div-float/2addr p2, p1

    .line 23
    .line 24
    sub-float p1, p3, p2

    .line 25
    .line 26
    iget-object p2, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 30
    .line 31
    iget p2, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->initIconSize:I

    .line 32
    int-to-float p4, p2

    .line 33
    .line 34
    iget p5, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->finalIconSize:I

    .line 35
    sub-int/2addr p2, p5

    .line 36
    int-to-float p2, p2

    .line 37
    mul-float/2addr p2, p1

    .line 38
    sub-float/2addr p4, p2

    .line 39
    .line 40
    iget p2, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->initIconHeight:I

    .line 41
    int-to-float p5, p2

    .line 42
    .line 43
    iget v0, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->finalIconHeight:I

    .line 44
    .line 45
    sub-int v1, p2, v0

    .line 46
    int-to-float v1, v1

    .line 47
    mul-float/2addr v1, p1

    .line 48
    sub-float/2addr p5, v1

    .line 49
    .line 50
    iget v1, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->height1:I

    .line 51
    sub-int/2addr v1, p2

    .line 52
    int-to-float p2, v1

    .line 53
    .line 54
    iget v1, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->statusbarSize:I

    .line 55
    .line 56
    iget v2, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->actionbarSize:I

    .line 57
    sub-int/2addr v2, v0

    .line 58
    .line 59
    div-int/lit8 v2, v2, 0x2

    .line 60
    add-int/2addr v1, v2

    .line 61
    int-to-float v0, v1

    .line 62
    .line 63
    sub-float v0, p2, v0

    .line 64
    mul-float/2addr v0, p1

    .line 65
    sub-float/2addr p2, v0

    .line 66
    float-to-int p2, p2

    .line 67
    int-to-float p2, p2

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 71
    move-result v0

    .line 72
    int-to-float v0, v0

    .line 73
    sub-float/2addr v0, p4

    .line 74
    .line 75
    const/high16 v1, 0x40000000    # 2.0f

    .line 76
    div-float/2addr v0, v1

    .line 77
    float-to-int v0, v0

    .line 78
    int-to-float v0, v0

    .line 79
    .line 80
    iget-object v2, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 84
    move-result v3

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 88
    move-result v4

    .line 89
    int-to-float v4, v4

    .line 90
    sub-float/2addr p3, p1

    .line 91
    mul-float/2addr p3, p5

    .line 92
    div-float/2addr p3, v1

    .line 93
    sub-float/2addr v4, p3

    .line 94
    float-to-int p1, v4

    .line 95
    const/4 v1, 0x0

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v1, v1, v3, p1}, Landroid/view/View;->layout(IIII)V

    .line 99
    .line 100
    iget-object p1, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->imgCover:Lcom/narvii/widget/NVImageView;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 104
    move-result v2

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 108
    move-result v3

    .line 109
    int-to-float v3, v3

    .line 110
    sub-float/2addr v3, p3

    .line 111
    float-to-int p3, v3

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v1, v1, v2, p3}, Landroid/view/View;->layout(IIII)V

    .line 115
    .line 116
    iget-object p1, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->imgPreview:Lcom/narvii/widget/NVImageView;

    .line 117
    float-to-int p3, v0

    .line 118
    float-to-int v1, p2

    .line 119
    add-float/2addr v0, p4

    .line 120
    float-to-int p4, v0

    .line 121
    add-float/2addr p2, p5

    .line 122
    float-to-int p2, p2

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, p3, v1, p4, p2}, Landroid/view/View;->layout(IIII)V

    .line 126
    return-void
.end method

.method public setBubble(Lcom/narvii/model/ChatBubble;)V
    .locals 3

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->bubble:Lcom/narvii/model/ChatBubble;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->imgCover:Lcom/narvii/widget/NVImageView;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->getBannerUrl()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 12
    .line 13
    iget v0, p1, Lcom/narvii/model/ChatBubble;->type:I

    .line 14
    const/4 v1, 0x2

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v2

    .line 21
    .line 22
    :goto_0
    if-eqz v0, :cond_1

    .line 23
    goto :goto_1

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    const/high16 v2, 0x40000000    # 2.0f

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 33
    move-result v1

    .line 34
    float-to-int v2, v1

    .line 35
    .line 36
    :goto_1
    iget-object v1, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->imgPreview:Lcom/narvii/widget/NVImageView;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->imgPreview:Lcom/narvii/widget/NVImageView;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    const/4 v0, 0x0

    .line 45
    goto :goto_2

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    const v2, 0x7f080140

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    :goto_2
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->imgPreview:Lcom/narvii/widget/NVImageView;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->getPreviewUrl()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 69
    return-void
.end method

.method public setHeight1(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->height1:I

    return-void
.end method
