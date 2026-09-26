.class public Lcom/narvii/widget/FullscreenBackgroundView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field backgroundOverlay:Lcom/narvii/widget/NVImageView;

.field public backgroundView:Lcom/narvii/widget/NVImageView;

.field private colorDrawable:Landroid/graphics/drawable/Drawable;

.field private overlayDrawable:Landroid/graphics/drawable/Drawable;

.field public realtimeBlurView:Lcom/github/mmin18/widget/RealtimeBlurView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    .line 6
    .line 7
    .line 8
    const p2, -0xb4b4b5

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->colorDrawable:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    .line 16
    .line 17
    const/high16 p2, -0x74000000

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    const p2, 0x7f0d0071

    .line 30
    .line 31
    .line 32
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    const p1, 0x7f0a0196

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundView:Lcom/narvii/widget/NVImageView;

    .line 44
    .line 45
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundView:Lcom/narvii/widget/NVImageView;

    .line 51
    .line 52
    const-string p2, "fullscreen-background-image"

    .line 53
    .line 54
    iput-object p2, p1, Lcom/narvii/widget/NVImageView;->imageType:Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    const p1, 0x7f0a019a

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 64
    .line 65
    iput-object p1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundOverlay:Lcom/narvii/widget/NVImageView;

    .line 66
    .line 67
    .line 68
    const p1, 0x7f0a0be2

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    check-cast p1, Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 75
    .line 76
    iput-object p1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->realtimeBlurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    move-result-object p2

    .line 81
    .line 82
    const/high16 v0, 0x41f00000    # 30.0f

    .line 83
    .line 84
    .line 85
    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 86
    move-result p2

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Lcom/github/mmin18/widget/RealtimeBlurView;->setBlurRadius(F)V

    .line 90
    return-void
.end method

.method private updateOverlay(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundOverlay:Lcom/narvii/widget/NVImageView;

    .line 3
    .line 4
    xor-int/lit8 v1, p1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/widget/FullscreenBackgroundView;->realtimeBlurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 13
    return-void
.end method


# virtual methods
.method public hideBlurOverlay()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/narvii/widget/FullscreenBackgroundView;->updateOverlay(Z)V

    .line 5
    return-void
.end method

.method public setBackgroundMedia(Lcom/narvii/model/Media;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundView:Lcom/narvii/widget/NVImageView;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->colorDrawable:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundView:Lcom/narvii/widget/NVImageView;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundOverlay:Lcom/narvii/widget/NVImageView;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/widget/FullscreenBackgroundView;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundView:Lcom/narvii/widget/NVImageView;

    .line 25
    const/4 v0, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundOverlay:Lcom/narvii/widget/NVImageView;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    :goto_0
    return-void
.end method

.method public varargs setBackgroundSource([Lcom/narvii/image/BackgroundSource;)V
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    const/4 v2, 0x0

    .line 4
    .line 5
    if-ge v1, v0, :cond_3

    .line 6
    .line 7
    aget-object v3, p1, v1

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    goto :goto_2

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {v3}, Lcom/narvii/image/BackgroundSource;->hasBackground()Z

    .line 14
    move-result v4

    .line 15
    .line 16
    if-eqz v4, :cond_2

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundView:Lcom/narvii/widget/NVImageView;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v3}, Lcom/narvii/image/BackgroundSource;->getBackgroundMedia()Lcom/narvii/model/Media;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundView:Lcom/narvii/widget/NVImageView;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->colorDrawable:Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundView:Lcom/narvii/widget/NVImageView;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundOverlay:Lcom/narvii/widget/NVImageView;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/narvii/widget/FullscreenBackgroundView;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_1
    iget-object p1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundView:Lcom/narvii/widget/NVImageView;

    .line 50
    .line 51
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 52
    .line 53
    .line 54
    invoke-interface {v3}, Lcom/narvii/image/BackgroundSource;->getBackgroundColor()I

    .line 55
    move-result v1

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    .line 63
    iget-object p1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundOverlay:Lcom/narvii/widget/NVImageView;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    :goto_1
    return-void

    .line 68
    .line 69
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 70
    goto :goto_0

    .line 71
    .line 72
    :cond_3
    iget-object p1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundView:Lcom/narvii/widget/NVImageView;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    .line 77
    iget-object p1, p0, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundOverlay:Lcom/narvii/widget/NVImageView;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    return-void
.end method

.method public setOverlayColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/widget/FullscreenBackgroundView;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 8
    return-void
.end method

.method public showBlurOverlay()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/narvii/widget/FullscreenBackgroundView;->updateOverlay(Z)V

    .line 5
    return-void
.end method
