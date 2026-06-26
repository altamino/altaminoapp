.class Lcom/narvii/widget/NVDrawableAnimatedView$Layer;
.super Ljava/lang/Object;
.source "NVDrawableAnimatedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/NVDrawableAnimatedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Layer"
.end annotation


# instance fields
.field animationInterval:F

.field animationType:I

.field baseScaleX:F

.field baseScaleY:F

.field configured:Z

.field drawableHeight:I

.field drawableWidth:I

.field duration:I

.field fromScaleX:F

.field fromScaleY:F

.field fromValue:F

.field interpolator:Landroid/animation/TimeInterpolator;

.field layerAlpha:F

.field layerGravity:I

.field layerScaleType:I

.field layerShader:Landroid/graphics/BitmapShader;

.field marginBottom:I

.field marginEnd:I

.field marginStart:I

.field marginTop:I

.field matrix:Landroid/graphics/Matrix;

.field repeatCount:I

.field repeatMode:I

.field resId:I

.field rotateDegree:F

.field scalePivotX:F

.field scalePivotY:F

.field scaleX:F

.field scaleY:F

.field startDelay:J

.field targetRect:Landroid/graphics/Rect;

.field toScaleX:F

.field toScaleY:F

.field translateX:F

.field translateY:F

.field valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 527
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->repeatMode:I

    const/4 v0, -0x1

    .line 528
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->repeatCount:I

    const/4 v0, 0x0

    .line 530
    iput-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->interpolator:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x0

    .line 531
    iput-boolean v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->configured:Z

    const/4 v0, 0x0

    .line 534
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    .line 535
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    .line 536
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->rotateDegree:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 537
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleX:F

    .line 538
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleY:F

    .line 539
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->baseScaleX:F

    .line 540
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->baseScaleY:F

    .line 541
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromScaleX:F

    .line 542
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromScaleY:F

    .line 543
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->toScaleX:F

    .line 544
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->toScaleY:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 545
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scalePivotX:F

    .line 546
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scalePivotY:F

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)V
    .locals 0

    .line 506
    invoke-direct {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->destroy()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)Landroid/graphics/Matrix;
    .locals 0

    .line 506
    invoke-direct {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)Z
    .locals 0

    .line 506
    invoke-direct {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->tryStart()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)Z
    .locals 0

    .line 506
    invoke-direct {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->tryEnd()Z

    move-result p0

    return p0
.end method

.method private destroy()V
    .locals 2

    .line 585
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 587
    iput-object v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 589
    :cond_0
    iput-object v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->matrix:Landroid/graphics/Matrix;

    .line 590
    iput-object v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->layerShader:Landroid/graphics/BitmapShader;

    const/4 v0, 0x0

    .line 591
    iput-boolean v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->configured:Z

    return-void
.end method

.method public static generate(Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;)Lcom/narvii/widget/NVDrawableAnimatedView$Layer;
    .locals 5

    .line 549
    new-instance v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    invoke-direct {v0}, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;-><init>()V

    .line 550
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getAnimationType()I

    move-result v1

    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationType:I

    .line 551
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getLayerGravity()I

    move-result v1

    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->layerGravity:I

    .line 552
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getLayerScaleType()I

    move-result v1

    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->layerScaleType:I

    .line 553
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getLayerAlpha()F

    move-result v1

    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->layerAlpha:F

    .line 554
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getDrawableResId()I

    move-result v1

    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->resId:I

    .line 555
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getMarginStart()I

    move-result v1

    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginStart:I

    .line 556
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getMarginTop()I

    move-result v1

    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginTop:I

    .line 557
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getMarginEnd()I

    move-result v1

    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginEnd:I

    .line 558
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getMarginBottom()I

    move-result v1

    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginBottom:I

    .line 559
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getScalePivotX()F

    move-result v1

    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scalePivotX:F

    .line 560
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getScalePivotY()F

    move-result v1

    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scalePivotY:F

    .line 561
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->matrix:Landroid/graphics/Matrix;

    .line 562
    iget v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationType:I

    if-eqz v1, :cond_2

    .line 563
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getAnimationInterval()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    .line 564
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getFromValue()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getFromValue()F

    move-result v3

    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getAnimationInterval()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 565
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getDuration()I

    move-result v1

    if-lez v1, :cond_0

    .line 566
    iget-object v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 567
    :cond_0
    iget-object v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getRepeatMode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 568
    iget-object v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getRepeatCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 569
    iget-object v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getStartDelay()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 570
    iget-object v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getTimeInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 572
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getAnimationInterval()F

    move-result v1

    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationInterval:F

    .line 573
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getFromValue()F

    move-result v1

    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromValue:F

    .line 574
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getDuration()I

    move-result v1

    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->duration:I

    .line 575
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getRepeatMode()I

    move-result v1

    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->repeatMode:I

    .line 576
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getRepeatCount()I

    move-result v1

    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->repeatCount:I

    .line 577
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getStartDelay()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->startDelay:J

    .line 578
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getTimeInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object p0

    iput-object p0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->interpolator:Landroid/animation/TimeInterpolator;

    :cond_2
    return-object v0
.end method

.method private getMatrix()Landroid/graphics/Matrix;
    .locals 5

    .line 595
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 596
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    iget v2, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 597
    iget v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scalePivotX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scalePivotX:F

    mul-float v0, v0, v3

    add-float/2addr v0, v2

    .line 598
    :goto_0
    iget v2, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scalePivotY:F

    cmpl-float v1, v2, v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scalePivotY:F

    mul-float v1, v1, v3

    add-float/2addr v1, v2

    .line 599
    :goto_1
    iget-object v2, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->matrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleX:F

    iget v4, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleY:F

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 600
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->rotateDegree:F

    iget-object v2, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 601
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private tryEnd()Z
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private tryStart()Z
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
