.class public Lcom/narvii/widget/FlexSizeImageViewDelegate;
.super Ljava/lang/Object;
.source "FlexSizeImageViewDelegate.java"

# interfaces
.implements Lcom/narvii/widget/IFlexSizeImageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/FlexSizeImageViewDelegate$IFlexSizeCallback;
    }
.end annotation


# instance fields
.field private configService:Lcom/narvii/config/ConfigService;

.field private estimatedHeight:I

.field private estimatedWidth:I

.field private flexSizeCallback:Lcom/narvii/widget/FlexSizeImageViewDelegate$IFlexSizeCallback;

.field private heightFromUrl:I

.field private host:Lcom/narvii/widget/NVImageView;

.field private keepRatio:Z

.field private preferredRatio:F

.field private ratioFromUrl:F

.field private widthFromUrl:I


# direct methods
.method public constructor <init>(Lcom/narvii/widget/NVImageView;FIILcom/narvii/widget/FlexSizeImageViewDelegate$IFlexSizeCallback;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 27
    iput v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->ratioFromUrl:F

    .line 37
    iput-object p1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 38
    iput p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->preferredRatio:F

    .line 39
    iput p4, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->estimatedHeight:I

    .line 40
    iput p3, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->estimatedWidth:I

    .line 41
    iput-object p5, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->flexSizeCallback:Lcom/narvii/widget/FlexSizeImageViewDelegate$IFlexSizeCallback;

    return-void
.end method

.method private getConfigService()Lcom/narvii/config/ConfigService;
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->configService:Lcom/narvii/config/ConfigService;

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "config"

    .line 139
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    iput-object v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->configService:Lcom/narvii/config/ConfigService;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->configService:Lcom/narvii/config/ConfigService;

    if-nez v0, :cond_1

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to get a configService in context "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const-string v1, "imageLoader"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public flexMeasure(II)V
    .locals 4

    .line 91
    iget v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->ratioFromUrl:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 92
    iget v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->widthFromUrl:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->heightFromUrl:I

    if-lez v1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result p2

    add-int/2addr v0, p2

    iget-object p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result p2

    add-int/2addr v0, p2

    iget-object p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    iget v1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->heightFromUrl:I

    .line 94
    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p2, v1}, Lcom/narvii/widget/NVImageView;->getFixedHeight(I)I

    move-result p2

    .line 93
    invoke-virtual {p1, v0, p2}, Lcom/narvii/widget/NVImageView;->innerSetMeasuredDimension(II)V

    goto/16 :goto_3

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->flexSizeCallback:Lcom/narvii/widget/FlexSizeImageViewDelegate$IFlexSizeCallback;

    invoke-interface {v0, p1, p2}, Lcom/narvii/widget/FlexSizeImageViewDelegate$IFlexSizeCallback;->onSuperMeasuredCalled(II)V

    .line 97
    iget-object p1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 98
    iget-object p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    int-to-float p1, p1

    iget v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->ratioFromUrl:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lcom/narvii/widget/NVImageView;->getFixedHeight(I)I

    move-result p1

    .line 99
    iget-boolean p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->keepRatio:Z

    if-eqz p2, :cond_1

    int-to-float p2, p1

    .line 100
    iget v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->ratioFromUrl:F

    div-float/2addr p2, v0

    float-to-int p2, p2

    .line 101
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0, p2, p1}, Lcom/narvii/widget/NVImageView;->innerSetMeasuredDimension(II)V

    goto/16 :goto_3

    .line 103
    :cond_1
    iget-object p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p2, v0, p1}, Lcom/narvii/widget/NVImageView;->innerSetMeasuredDimension(II)V

    goto/16 :goto_3

    .line 107
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 108
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-lez v0, :cond_7

    if-eqz v1, :cond_7

    .line 111
    iget-object p1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result p1

    sub-int p1, v0, p1

    iget-object p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 112
    iget-object p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p2}, Lcom/narvii/widget/NVImageView;->getStatus()I

    move-result p2

    const/4 v1, 0x4

    if-ne p2, v1, :cond_4

    iget-object p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    .line 115
    :goto_1
    iget v1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->preferredRatio:F

    if-eqz p2, :cond_5

    .line 116
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    if-lez p2, :cond_5

    int-to-float v1, p2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v1, v1, v3

    int-to-float v3, v2

    div-float/2addr v1, v3

    mul-int p2, p2, p1

    .line 118
    div-int/2addr p2, v2

    goto :goto_2

    .line 120
    :cond_5
    iget p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->preferredRatio:F

    int-to-float p1, p1

    mul-float p2, p2, p1

    float-to-int p2, p2

    .line 122
    :goto_2
    iget-object p1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    add-int/2addr p2, v2

    iget-object v2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v2

    add-int/2addr p2, v2

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->getFixedHeight(I)I

    move-result p1

    .line 123
    iget-boolean p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->keepRatio:Z

    if-eqz p2, :cond_6

    int-to-float p2, p1

    div-float/2addr p2, v1

    float-to-int p2, p2

    .line 125
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0, p2, p1}, Lcom/narvii/widget/NVImageView;->innerSetMeasuredDimension(II)V

    goto :goto_3

    .line 127
    :cond_6
    iget-object p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p2, v0, p1}, Lcom/narvii/widget/NVImageView;->innerSetMeasuredDimension(II)V

    goto :goto_3

    .line 130
    :cond_7
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->flexSizeCallback:Lcom/narvii/widget/FlexSizeImageViewDelegate$IFlexSizeCallback;

    invoke-interface {v0, p1, p2}, Lcom/narvii/widget/FlexSizeImageViewDelegate$IFlexSizeCallback;->onSuperMeasuredCalled(II)V

    :goto_3
    return-void
.end method

.method public processImageUrl(Ljava/lang/String;)F
    .locals 0

    .line 46
    invoke-static {p1}, Lcom/narvii/util/Utils;->getImageAspectRatioFromUrl(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->ratioFromUrl:F

    .line 48
    iget p1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->ratioFromUrl:F

    return p1
.end method

.method public setImageSize(II)V
    .locals 3

    int-to-float v0, p2

    int-to-float v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    .line 77
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->ratioFromUrl:F

    .line 78
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->widthFromUrl:I

    .line 79
    iget-object p1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->heightFromUrl:I

    .line 81
    iget p1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->widthFromUrl:I

    iget-object p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result p2

    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    if-ne p1, p2, :cond_0

    iget p1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->heightFromUrl:I

    iget-object p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 82
    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result p2

    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    if-ne p1, p2, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method public setImageSizeFromUrl(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/narvii/widget/FlexSizeImageViewDelegate;->setImageSizeFromUrl(Ljava/lang/String;Z)V

    return-void
.end method

.method public setImageSizeFromUrl(Ljava/lang/String;Z)V
    .locals 5

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 60
    :cond_0
    iget v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->estimatedWidth:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 61
    :goto_0
    iget v2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->estimatedHeight:I

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 62
    :goto_1
    new-instance v3, Lcom/narvii/model/Media;

    invoke-direct {v3}, Lcom/narvii/model/Media;-><init>()V

    .line 63
    iput-object p1, v3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 64
    iget-object p1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    iget-boolean v4, p1, Lcom/narvii/widget/NVImageView;->visible:Z

    invoke-virtual {p1, v3, v4, v0, v2}, Lcom/narvii/widget/NVImageView;->getRequestUrl(Lcom/narvii/model/Media;ZII)Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-direct {p0}, Lcom/narvii/widget/FlexSizeImageViewDelegate;->getConfigService()Lcom/narvii/config/ConfigService;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/narvii/util/Utils;->getImageSizeFromUrl(Ljava/lang/String;Lcom/narvii/config/ConfigService;Z)[I

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 70
    :cond_3
    iget-object p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->flexSizeCallback:Lcom/narvii/widget/FlexSizeImageViewDelegate$IFlexSizeCallback;

    invoke-interface {p2, p1}, Lcom/narvii/widget/FlexSizeImageViewDelegate$IFlexSizeCallback;->adjustSize([I)V

    .line 71
    aget p2, p1, v1

    const/4 v0, 0x1

    .line 72
    aget p1, p1, v0

    .line 73
    invoke-virtual {p0, p2, p1}, Lcom/narvii/widget/FlexSizeImageViewDelegate;->setImageSize(II)V

    return-void
.end method

.method public setKeepRatio(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->keepRatio:Z

    return-void
.end method
