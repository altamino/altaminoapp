.class public Lcom/narvii/widget/FlexSizeImageView;
.super Lcom/narvii/widget/ThumbImageView;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/IFlexSizeImageView;
.implements Lcom/narvii/widget/FlexSizeImageViewDelegate$IFlexSizeCallback;
.implements Lcom/narvii/widget/ISecretImage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/FlexSizeImageView$IFlexSizeImageSetDimensionCallback;
    }
.end annotation


# instance fields
.field private final checkLayout:Ljava/lang/Runnable;

.field private flexSizeImageSetDimensionCallback:Lcom/narvii/widget/FlexSizeImageView$IFlexSizeImageSetDimensionCallback;

.field private flexSizeImageViewDelegate:Lcom/narvii/widget/FlexSizeImageViewDelegate;

.field public preferredRatio:F

.field public ratioFromUrl:F

.field private secretImageViewDelegate:Lcom/narvii/widget/SecretImageViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ThumbImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    const/high16 v0, -0x40800000    # -1.0f

    .line 6
    .line 7
    iput v0, p0, Lcom/narvii/widget/FlexSizeImageView;->ratioFromUrl:F

    .line 8
    .line 9
    sget-object v0, Lcom/narvii/lib/R$styleable;->FlexSizeImageView:[I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    sget p2, Lcom/narvii/lib/R$styleable;->FlexSizeImageView_preferredRatio:I

    .line 16
    .line 17
    const/high16 v0, 0x3f400000    # 0.75f

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 21
    move-result p2

    .line 22
    .line 23
    iput p2, p0, Lcom/narvii/widget/FlexSizeImageView;->preferredRatio:F

    .line 24
    .line 25
    sget p2, Lcom/narvii/lib/R$styleable;->FlexSizeImageView_estimatedWidth:I

    .line 26
    const/4 v0, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 30
    move-result v4

    .line 31
    .line 32
    sget p2, Lcom/narvii/lib/R$styleable;->FlexSizeImageView_estimatedHeight:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 36
    move-result v5

    .line 37
    .line 38
    sget p2, Lcom/narvii/lib/R$styleable;->FlexSizeImageView_keepRatio:I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 42
    move-result p2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    .line 47
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    .line 49
    const/16 v0, 0x18

    .line 50
    .line 51
    if-ge p1, v0, :cond_0

    .line 52
    const/4 p1, 0x0

    .line 53
    .line 54
    iput-object p1, p0, Lcom/narvii/widget/FlexSizeImageView;->checkLayout:Ljava/lang/Runnable;

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_0
    new-instance p1, Lcom/narvii/widget/FlexSizeImageView$1;

    .line 58
    .line 59
    .line 60
    invoke-direct {p1, p0}, Lcom/narvii/widget/FlexSizeImageView$1;-><init>(Lcom/narvii/widget/FlexSizeImageView;)V

    .line 61
    .line 62
    iput-object p1, p0, Lcom/narvii/widget/FlexSizeImageView;->checkLayout:Ljava/lang/Runnable;

    .line 63
    .line 64
    :goto_0
    new-instance p1, Lcom/narvii/widget/FlexSizeImageViewDelegate;

    .line 65
    .line 66
    iget v3, p0, Lcom/narvii/widget/FlexSizeImageView;->preferredRatio:F

    .line 67
    move-object v1, p1

    .line 68
    move-object v2, p0

    .line 69
    move-object v6, p0

    .line 70
    .line 71
    .line 72
    invoke-direct/range {v1 .. v6}, Lcom/narvii/widget/FlexSizeImageViewDelegate;-><init>(Lcom/narvii/widget/NVImageView;FIILcom/narvii/widget/FlexSizeImageViewDelegate$IFlexSizeCallback;)V

    .line 73
    .line 74
    iput-object p1, p0, Lcom/narvii/widget/FlexSizeImageView;->flexSizeImageViewDelegate:Lcom/narvii/widget/FlexSizeImageViewDelegate;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Lcom/narvii/widget/FlexSizeImageViewDelegate;->setKeepRatio(Z)V

    .line 78
    .line 79
    new-instance p1, Lcom/narvii/widget/SecretImageViewDelegate;

    .line 80
    .line 81
    iget p2, p0, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    .line 82
    .line 83
    .line 84
    invoke-direct {p1, p0, p2}, Lcom/narvii/widget/SecretImageViewDelegate;-><init>(Lcom/narvii/widget/NVImageView;I)V

    .line 85
    .line 86
    iput-object p1, p0, Lcom/narvii/widget/FlexSizeImageView;->secretImageViewDelegate:Lcom/narvii/widget/SecretImageViewDelegate;

    .line 87
    return-void
.end method


# virtual methods
.method public adjustSize([I)V
    .locals 0

    return-void
.end method

.method public flexMeasure(II)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageView;->flexSizeImageViewDelegate:Lcom/narvii/widget/FlexSizeImageViewDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/FlexSizeImageViewDelegate;->flexMeasure(II)V

    .line 6
    return-void
.end method

.method public innerSetMeasuredDimension(II)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-gtz v0, :cond_0

    .line 11
    .line 12
    if-lez v1, :cond_1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 16
    move-result p1

    .line 17
    .line 18
    .line 19
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 20
    move-result p2

    .line 21
    .line 22
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageView;->flexSizeImageSetDimensionCallback:Lcom/narvii/widget/FlexSizeImageView$IFlexSizeImageSetDimensionCallback;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, p1, p2}, Lcom/narvii/widget/FlexSizeImageView$IFlexSizeImageSetDimensionCallback;->onSetMeasuredDimension(II)V

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/narvii/widget/NVImageView;->innerSetMeasuredDimension(II)V

    .line 36
    return-void
.end method

.method protected isReadyToWork(Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageView;->secretImageViewDelegate:Lcom/narvii/widget/SecretImageViewDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/widget/SecretImageViewDelegate;->needBlur()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1}, Lcom/narvii/widget/ThumbImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageView;->secretImageViewDelegate:Lcom/narvii/widget/SecretImageViewDelegate;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/narvii/widget/SecretImageViewDelegate;->drawSecret(Landroid/graphics/Canvas;)V

    .line 18
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/FlexSizeImageView;->ratioFromUrl:F

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    cmpg-float v0, v0, v1

    .line 6
    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageView;->checkLayout:Ljava/lang/Runnable;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageView;->secretImageViewDelegate:Lcom/narvii/widget/SecretImageViewDelegate;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/widget/SecretImageViewDelegate;->layout()V

    .line 22
    .line 23
    .line 24
    invoke-super/range {p0 .. p5}, Lcom/narvii/widget/NVImageView;->onLayout(ZIIII)V

    .line 25
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/FlexSizeImageView;->flexMeasure(II)V

    .line 4
    return-void
.end method

.method public onSuperMeasuredCalled(II)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/widget/NVImageView;->onMeasure(II)V

    .line 4
    return-void
.end method

.method public processImageUrl(Ljava/lang/String;)F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageView;->flexSizeImageViewDelegate:Lcom/narvii/widget/FlexSizeImageViewDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/widget/FlexSizeImageViewDelegate;->processImageUrl(Ljava/lang/String;)F

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setFlexSizeImageSetDimensionCallback(Lcom/narvii/widget/FlexSizeImageView$IFlexSizeImageSetDimensionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/FlexSizeImageView;->flexSizeImageSetDimensionCallback:Lcom/narvii/widget/FlexSizeImageView$IFlexSizeImageSetDimensionCallback;

    return-void
.end method

.method protected setImageDrawable(Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageView;->checkLayout:Ljava/lang/Runnable;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageView;->checkLayout:Ljava/lang/Runnable;

    .line 12
    .line 13
    const-wide/16 v1, 0x96

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;I)V

    .line 20
    return-void
.end method

.method public setImageForceBlur(Lcom/narvii/model/Media;ZI)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageView;->secretImageViewDelegate:Lcom/narvii/widget/SecretImageViewDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/widget/SecretImageViewDelegate;->setImageForceBlur(Lcom/narvii/model/Media;ZI)V

    .line 6
    return-void
.end method

.method public setImageMedia(Lcom/narvii/model/Media;)Z
    .locals 2

    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    .line 1
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/widget/NVImageView;->status:I

    iput v1, p0, Lcom/narvii/widget/NVImageView;->status:I

    iput-object p1, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/narvii/widget/NVImageView;->setImageStatus(IZ)V

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->discard()V

    iput-object p1, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/narvii/widget/NVImageView;->imageRetrieve:Z

    if-nez p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p1, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/narvii/widget/FlexSizeImageView;->processImageUrl(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/narvii/widget/FlexSizeImageView;->ratioFromUrl:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    if-lez p1, :cond_3

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return v0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->require()Z

    return v0
.end method

.method public setImageMedia(Lcom/narvii/model/Media;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageView;->secretImageViewDelegate:Lcom/narvii/widget/SecretImageViewDelegate;

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/SecretImageViewDelegate;->setImageMedia(Lcom/narvii/model/Media;Z)Z

    move-result p1

    return p1
.end method

.method public setImageSize(II)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageView;->flexSizeImageViewDelegate:Lcom/narvii/widget/FlexSizeImageViewDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/FlexSizeImageViewDelegate;->setImageSize(II)V

    .line 6
    return-void
.end method

.method public setImageSizeFromUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageView;->flexSizeImageViewDelegate:Lcom/narvii/widget/FlexSizeImageViewDelegate;

    .line 1
    invoke-virtual {v0, p1}, Lcom/narvii/widget/FlexSizeImageViewDelegate;->setImageSizeFromUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setImageSizeFromUrl(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageView;->flexSizeImageViewDelegate:Lcom/narvii/widget/FlexSizeImageViewDelegate;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/FlexSizeImageViewDelegate;->setImageSizeFromUrl(Ljava/lang/String;Z)V

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageView;->secretImageViewDelegate:Lcom/narvii/widget/SecretImageViewDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/SecretImageViewDelegate;->setImageUrl(Ljava/lang/String;Z)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method
