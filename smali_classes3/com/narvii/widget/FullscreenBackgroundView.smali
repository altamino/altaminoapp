.class public Lcom/narvii/widget/FullscreenBackgroundView;
.super Landroid/widget/FrameLayout;
.source "FullscreenBackgroundView.java"


# instance fields
.field backgroundOverlay:Lcom/narvii/widget/NVImageView;

.field public backgroundView:Lcom/narvii/widget/NVImageView;

.field private colorDrawable:Landroid/graphics/drawable/Drawable;

.field private overlayDrawable:Landroid/graphics/drawable/Drawable;

.field public realtimeBlurView:Lcom/github/mmin18/widget/RealtimeBlurView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const p2, -0xb4b4b5

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->colorDrawable:Landroid/graphics/drawable/Drawable;

    .line 24
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 p2, -0x74000000

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 31
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0b005b

    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090104

    .line 33
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundView:Lcom/narvii/widget/NVImageView;

    .line 34
    iget-object p1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundView:Lcom/narvii/widget/NVImageView;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 35
    iget-object p1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundView:Lcom/narvii/widget/NVImageView;

    const-string p2, "fullscreen-background-image"

    iput-object p2, p1, Lcom/narvii/widget/NVImageView;->imageType:Ljava/lang/String;

    const p1, 0x7f090108

    .line 37
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundOverlay:Lcom/narvii/widget/NVImageView;

    const p1, 0x7f090925

    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/mmin18/widget/RealtimeBlurView;

    iput-object p1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->realtimeBlurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 39
    iget-object p1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->realtimeBlurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/github/mmin18/widget/RealtimeBlurView;->setBlurRadius(F)V

    return-void
.end method

.method private updateOverlay(Z)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundOverlay:Lcom/narvii/widget/NVImageView;

    xor-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 91
    iget-object v0, p0, Lcom/narvii/widget/FullscreenBackgroundView;->realtimeBlurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v0, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public hideBlurOverlay()V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, v0}, Lcom/narvii/widget/FullscreenBackgroundView;->updateOverlay(Z)V

    return-void
.end method

.method public setBackgroundMedia(Lcom/narvii/model/Media;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundView:Lcom/narvii/widget/NVImageView;

    iget-object v1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->colorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v0, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundView:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 70
    iget-object p1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundOverlay:Lcom/narvii/widget/NVImageView;

    iget-object v0, p0, Lcom/narvii/widget/FullscreenBackgroundView;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundView:Lcom/narvii/widget/NVImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iget-object p1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundOverlay:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public varargs setBackgroundSource([Lcom/narvii/image/BackgroundSource;)V
    .locals 5

    .line 44
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_3

    aget-object v3, p1, v1

    if-nez v3, :cond_0

    goto :goto_2

    .line 48
    :cond_0
    invoke-interface {v3}, Lcom/narvii/image/BackgroundSource;->hasBackground()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 49
    iget-object p1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundView:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    invoke-interface {v3}, Lcom/narvii/image/BackgroundSource;->getBackgroundMedia()Lcom/narvii/model/Media;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 52
    iget-object v0, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundView:Lcom/narvii/widget/NVImageView;

    iget-object v1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->colorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    iget-object v0, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundView:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 54
    iget-object p1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundOverlay:Lcom/narvii/widget/NVImageView;

    iget-object v0, p0, Lcom/narvii/widget/FullscreenBackgroundView;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundView:Lcom/narvii/widget/NVImageView;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-interface {v3}, Lcom/narvii/image/BackgroundSource;->getBackgroundColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    iget-object p1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundOverlay:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_3
    iget-object p1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundView:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object p1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundOverlay:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOverlayColor(I)V
    .locals 1

    .line 78
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/widget/FullscreenBackgroundView;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public showBlurOverlay()V
    .locals 1

    const/4 v0, 0x1

    .line 82
    invoke-direct {p0, v0}, Lcom/narvii/widget/FullscreenBackgroundView;->updateOverlay(Z)V

    return-void
.end method
