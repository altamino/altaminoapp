.class public Lcom/narvii/monetization/sticker/collection/HeaderLayout;
.super Landroid/widget/FrameLayout;
.source "HeaderLayout.java"


# instance fields
.field public final actionbarSize:I

.field banner:Lcom/narvii/widget/NVImageView;

.field blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

.field finalIconSize:I

.field gradient:Landroid/view/View;

.field height1:I

.field iconBg:Landroid/view/View;

.field imageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

.field initIconSize:I

.field public final statusbarSize:I

.field stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0702ad

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->initIconSize:I

    .line 41
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41f00000    # 30.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->finalIconSize:I

    .line 42
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    move-result p1

    iput p1, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->statusbarSize:I

    .line 43
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    move-result p1

    iput p1, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->actionbarSize:I

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 48
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090565

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->iconBg:Landroid/view/View;

    const v0, 0x7f09027a

    .line 50
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/widget/StickerImageView;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->imageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    const v0, 0x7f09011b

    .line 51
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->banner:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f09013c

    .line 52
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mmin18/widget/RealtimeBlurView;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    const v0, 0x7f0904dd

    .line 53
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->gradient:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 73
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 75
    iget p1, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->statusbarSize:I

    iget p2, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->actionbarSize:I

    add-int/2addr p1, p2

    .line 77
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    sub-int/2addr p2, p1

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float p2, p2, p3

    iget p4, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->height1:I

    sub-int/2addr p4, p1

    int-to-float p4, p4

    div-float/2addr p2, p4

    sub-float p2, p3, p2

    .line 78
    iget-object p4, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {p4, p2}, Landroid/view/View;->setAlpha(F)V

    .line 79
    iget-object p4, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->gradient:Landroid/view/View;

    sub-float/2addr p3, p2

    invoke-virtual {p4, p3}, Landroid/view/View;->setAlpha(F)V

    .line 81
    iget p3, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->initIconSize:I

    int-to-float p4, p3

    iget p5, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->finalIconSize:I

    sub-int v0, p3, p5

    int-to-float v0, v0

    mul-float v0, v0, p2

    sub-float/2addr p4, v0

    .line 83
    iget v0, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->height1:I

    sub-int/2addr v0, p3

    int-to-float p3, v0

    .line 84
    iget v0, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->statusbarSize:I

    iget v1, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->actionbarSize:I

    sub-int/2addr v1, p5

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float p5, v0

    sub-float p5, p3, p5

    mul-float p5, p5, p2

    sub-float/2addr p3, p5

    float-to-int p2, p3

    int-to-float p2, p2

    .line 87
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p3, p4

    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 89
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p3, p4

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr p3, p5

    float-to-int p3, p3

    int-to-float p3, p3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "margin-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->banner:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    div-float p5, p4, p5

    add-float/2addr p5, p2

    float-to-int p5, p5

    invoke-static {p1, p5}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 93
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-static {p1, p5}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 94
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->gradient:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-static {p1, p5}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, v3, v3, v1, p1}, Landroid/view/View;->layout(IIII)V

    .line 96
    iget-object p1, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->iconBg:Landroid/view/View;

    float-to-int p5, p3

    float-to-int v0, p2

    add-float/2addr p3, p4

    float-to-int p3, p3

    add-float/2addr p2, p4

    float-to-int p2, p2

    invoke-virtual {p1, p5, v0, p3, p2}, Landroid/view/View;->layout(IIII)V

    .line 97
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    mul-float p4, p4, v1

    const/high16 v1, 0x42a00000    # 80.0f

    div-float/2addr p4, v1

    float-to-int p4, p4

    int-to-float p4, p4

    invoke-static {p1, p4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    .line 98
    iget-object p4, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->imageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    add-int/2addr p5, p1

    add-int/2addr v0, p1

    sub-int/2addr p3, p1

    sub-int/2addr p2, p1

    invoke-virtual {p4, p5, v0, p3, p2}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method public setHeight1(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->height1:I

    return-void
.end method

.method public setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-ne v0, p1, :cond_0

    return-void

    .line 60
    :cond_0
    iput-object p1, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz p1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->imageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/monetization/sticker/widget/StickerImageView;->setStickerImageUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->banner:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getBannerUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :cond_1
    return-void
.end method
