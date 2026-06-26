.class public Lcom/narvii/widget/FlexSizeImageView;
.super Lcom/narvii/widget/ThumbImageView;
.source "FlexSizeImageView.java"

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

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ThumbImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 21
    iput v0, p0, Lcom/narvii/widget/FlexSizeImageView;->ratioFromUrl:F

    .line 29
    sget-object v0, Lcom/narvii/lib/R$styleable;->FlexSizeImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 30
    sget p2, Lcom/narvii/lib/R$styleable;->FlexSizeImageView_preferredRatio:I

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/narvii/widget/FlexSizeImageView;->preferredRatio:F

    .line 31
    sget p2, Lcom/narvii/lib/R$styleable;->FlexSizeImageView_estimatedWidth:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 32
    sget p2, Lcom/narvii/lib/R$styleable;->FlexSizeImageView_estimatedHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 33
    sget p2, Lcom/narvii/lib/R$styleable;->FlexSizeImageView_keepRatio:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 34
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/narvii/widget/FlexSizeImageView;->checkLayout:Ljava/lang/Runnable;

    goto :goto_0

    .line 39
    :cond_0
    new-instance p1, Lcom/narvii/widget/FlexSizeImageView$1;

    invoke-direct {p1, p0}, Lcom/narvii/widget/FlexSizeImageView$1;-><init>(Lcom/narvii/widget/FlexSizeImageView;)V

    iput-object p1, p0, Lcom/narvii/widget/FlexSizeImageView;->checkLayout:Ljava/lang/Runnable;

    .line 47
    :goto_0
    new-instance p1, Lcom/narvii/widget/FlexSizeImageViewDelegate;

    iget v3, p0, Lcom/narvii/widget/FlexSizeImageView;->preferredRatio:F

    move-object v1, p1

    move-object v2, p0

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/narvii/widget/FlexSizeImageViewDelegate;-><init>(Lcom/narvii/widget/NVImageView;FIILcom/narvii/widget/FlexSizeImageViewDelegate$IFlexSizeCallback;)V

    iput-object p1, p0, Lcom/narvii/widget/FlexSizeImageView;->flexSizeImageViewDelegate:Lcom/narvii/widget/FlexSizeImageViewDelegate;

    .line 48
    iget-object p1, p0, Lcom/narvii/widget/FlexSizeImageView;->flexSizeImageViewDelegate:Lcom/narvii/widget/FlexSizeImageViewDelegate;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/FlexSizeImageViewDelegate;->setKeepRatio(Z)V

    .line 49
    new-instance p1, Lcom/narvii/widget/SecretImageViewDelegate;

    iget p2, p0, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    invoke-direct {p1, p0, p2}, Lcom/narvii/widget/SecretImageViewDelegate;-><init>(Lcom/narvii/widget/NVImageView;I)V

    iput-object p1, p0, Lcom/narvii/widget/FlexSizeImageView;->secretImageViewDelegate:Lcom/narvii/widget/SecretImageViewDelegate;

    return-void
.end method


# virtual methods
.method public adjustSize([I)V
    .locals 0

    return-void
.end method

.method public flexMeasure(II)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageView;->flexSizeImageViewDelegate:Lcom/narvii/widget/FlexSizeImageViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/FlexSizeImageViewDelegate;->flexMeasure(II)V

    return-void
.end method

.method public innerSetMeasuredDimension(II)V
    .locals 2

    .line 165
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMinimumWidth()I

    move-result v0

    .line 166
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMinimumHeight()I

    move-result v1

    if-gtz v0, :cond_0

    if-lez v1, :cond_1

    .line 168
    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 169
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 170
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageView;->flexSizeImageSetDimensionCallback:Lcom/narvii/widget/FlexSizeImageView$IFlexSizeImageSetDimensionCallback;

    if-eqz v0, :cond_2

    .line 173
    invoke-interface {v0, p1, p2}, Lcom/narvii/widget/FlexSizeImageView$IFlexSizeImageSetDimensionCallback;->onSetMeasuredDimension(II)V

    .line 175
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/narvii/widget/NVImageView;->innerSetMeasuredDimension(II)V

    return-void
.end method

.method protected isReadyToWork(Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageView;->secretImageViewDelegate:Lcom/narvii/widget/SecretImageViewDelegate;

    invoke-virtual {v0}, Lcom/narvii/widget/SecretImageViewDelegate;->needBlur()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-super {p0, p1}, Lcom/narvii/widget/ThumbImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageView;->secretImageViewDelegate:Lcom/narvii/widget/SecretImageViewDelegate;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/SecretImageViewDelegate;->drawSecret(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 132
    iget v0, p0, Lcom/narvii/widget/FlexSizeImageView;->ratioFromUrl:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageView;->checkLayout:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 133
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageView;->secretImageViewDelegate:Lcom/narvii/widget/SecretImageViewDelegate;

    invoke-virtual {v0}, Lcom/narvii/widget/SecretImageViewDelegate;->layout()V

    .line 136
    invoke-super/range {p0 .. p5}, Lcom/narvii/widget/NVImageView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/FlexSizeImageView;->flexMeasure(II)V

    return-void
.end method

.method public onSuperMeasuredCalled(II)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .line 147
    invoke-super {p0, p1, p2}, Lcom/narvii/widget/NVImageView;->onMeasure(II)V

    return-void
.end method

.method public processImageUrl(Ljava/lang/String;)F
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageView;->flexSizeImageViewDelegate:Lcom/narvii/widget/FlexSizeImageViewDelegate;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/FlexSizeImageViewDelegate;->processImageUrl(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method public setFlexSizeImageSetDimensionCallback(Lcom/narvii/widget/FlexSizeImageView$IFlexSizeImageSetDimensionCallback;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/narvii/widget/FlexSizeImageView;->flexSizeImageSetDimensionCallback:Lcom/narvii/widget/FlexSizeImageView$IFlexSizeImageSetDimensionCallback;

    return-void
.end method

.method protected setImageDrawable(Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageView;->checkLayout:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 55
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 56
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageView;->checkLayout:Ljava/lang/Runnable;

    const-wide/16 v1, 0x96

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 58
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setImageForceBlur(Lcom/narvii/model/Media;ZI)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageView;->secretImageViewDelegate:Lcom/narvii/widget/SecretImageViewDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/widget/SecretImageViewDelegate;->setImageForceBlur(Lcom/narvii/model/Media;ZI)V

    return-void
.end method

.method public setImageMedia(Lcom/narvii/model/Media;)Z
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 65
    iget v0, p0, Lcom/narvii/widget/NVImageView;->status:I

    .line 66
    iput v1, p0, Lcom/narvii/widget/NVImageView;->status:I

    .line 67
    iput-object p1, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    .line 68
    invoke-virtual {p0, v0, v1}, Lcom/narvii/widget/NVImageView;->setImageStatus(IZ)V

    return v1

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->discard()V

    .line 73
    iput-object p1, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    .line 75
    iput-boolean v1, p0, Lcom/narvii/widget/NVImageView;->imageRetrieve:Z

    if-nez p1, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p1, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/narvii/widget/FlexSizeImageView;->processImageUrl(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/narvii/widget/FlexSizeImageView;->ratioFromUrl:F

    .line 77
    iget p1, p0, Lcom/narvii/widget/FlexSizeImageView;->ratioFromUrl:F

    const/4 v0, 0x0

    const/4 v1, 0x1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    .line 78
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return v1

    .line 82
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->require()Z

    return v1
.end method

.method public setImageMedia(Lcom/narvii/model/Media;Z)Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageView;->secretImageViewDelegate:Lcom/narvii/widget/SecretImageViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/SecretImageViewDelegate;->setImageMedia(Lcom/narvii/model/Media;Z)Z

    move-result p1

    return p1
.end method

.method public setImageSize(II)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageView;->flexSizeImageViewDelegate:Lcom/narvii/widget/FlexSizeImageViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/FlexSizeImageViewDelegate;->setImageSize(II)V

    return-void
.end method

.method public setImageSizeFromUrl(Ljava/lang/String;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageView;->flexSizeImageViewDelegate:Lcom/narvii/widget/FlexSizeImageViewDelegate;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/FlexSizeImageViewDelegate;->setImageSizeFromUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setImageSizeFromUrl(Ljava/lang/String;Z)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageView;->flexSizeImageViewDelegate:Lcom/narvii/widget/FlexSizeImageViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/FlexSizeImageViewDelegate;->setImageSizeFromUrl(Ljava/lang/String;Z)V

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;Z)Z
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageView;->secretImageViewDelegate:Lcom/narvii/widget/SecretImageViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/SecretImageViewDelegate;->setImageUrl(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
