.class public Lcom/narvii/monetization/bubble/detail/HeaderLayout;
.super Landroid/widget/FrameLayout;
.source "HeaderLayout.java"


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

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/narvii/monetization/bubble/detail/HeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    move-result p1

    iput p1, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->statusbarSize:I

    .line 44
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    move-result p1

    iput p1, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->actionbarSize:I

    .line 45
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070069

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->initIconSize:I

    .line 46
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070068

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->initIconHeight:I

    .line 47
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07006a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->finalIconSize:I

    .line 48
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3f5e76c9    # 0.869f

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->finalIconHeight:I

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 53
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f09017a

    .line 54
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->imgCover:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f090181

    .line 55
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->imgPreview:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f09013c

    .line 56
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mmin18/widget/RealtimeBlurView;

    iput-object v0, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 75
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 77
    iget p1, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->statusbarSize:I

    iget p2, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->actionbarSize:I

    add-int/2addr p1, p2

    .line 79
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    sub-int/2addr p2, p1

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float p2, p2, p3

    iget p4, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->height1:I

    sub-int/2addr p4, p1

    int-to-float p1, p4

    div-float/2addr p2, p1

    sub-float p1, p3, p2

    .line 80
    iget-object p2, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 82
    iget p2, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->initIconSize:I

    int-to-float p4, p2

    iget p5, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->finalIconSize:I

    sub-int/2addr p2, p5

    int-to-float p2, p2

    mul-float p2, p2, p1

    sub-float/2addr p4, p2

    .line 83
    iget p2, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->initIconHeight:I

    int-to-float p5, p2

    iget v0, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->finalIconHeight:I

    sub-int v1, p2, v0

    int-to-float v1, v1

    mul-float v1, v1, p1

    sub-float/2addr p5, v1

    .line 85
    iget v1, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->height1:I

    sub-int/2addr v1, p2

    int-to-float p2, v1

    .line 86
    iget v1, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->statusbarSize:I

    iget v2, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->actionbarSize:I

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v0, v1

    sub-float v0, p2, v0

    mul-float v0, v0, p1

    sub-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float p2, p2

    .line 89
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p4

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    .line 91
    iget-object v2, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr p3, p1

    mul-float p3, p3, p5

    div-float/2addr p3, v1

    sub-float/2addr v4, p3

    float-to-int p1, v4

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v1, v3, p1}, Landroid/view/View;->layout(IIII)V

    .line 92
    iget-object p1, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->imgCover:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, p3

    float-to-int p3, v3

    invoke-virtual {p1, v1, v1, v2, p3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 93
    iget-object p1, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->imgPreview:Lcom/narvii/widget/NVImageView;

    float-to-int p3, v0

    float-to-int v1, p2

    add-float/2addr v0, p4

    float-to-int p4, v0

    add-float/2addr p2, p5

    float-to-int p2, p2

    invoke-virtual {p1, p3, v1, p4, p2}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method public setBubble(Lcom/narvii/model/ChatBubble;)V
    .locals 3

    .line 64
    iput-object p1, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->bubble:Lcom/narvii/model/ChatBubble;

    .line 65
    iget-object v0, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->imgCover:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->getBannerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 66
    iget v0, p1, Lcom/narvii/model/ChatBubble;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 68
    :goto_1
    iget-object v2, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->imgPreview:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 69
    iget-object v1, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->imgPreview:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0800b0

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    iget-object v0, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->imgPreview:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->getPreviewUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    return-void
.end method

.method public setHeight1(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->height1:I

    return-void
.end method
