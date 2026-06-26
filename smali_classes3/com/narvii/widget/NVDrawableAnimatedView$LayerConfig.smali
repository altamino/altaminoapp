.class public Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;
.super Ljava/lang/Object;
.source "NVDrawableAnimatedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/NVDrawableAnimatedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayerConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;
    }
.end annotation


# static fields
.field public static final ANIMATION_INTERVAL_AUTO:I = -0x1


# instance fields
.field private builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;


# direct methods
.method public constructor <init>(Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;)V
    .locals 0

    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    iput-object p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    return-void
.end method


# virtual methods
.method public getAnimationInterval()F
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    iget v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->animationInterval:F

    return v0
.end method

.method public getAnimationType()I
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    iget v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->animationType:I

    return v0
.end method

.method public getDrawableResId()I
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    iget v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->resId:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    iget v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->duration:I

    return v0
.end method

.method public getFromValue()F
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    iget v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->fromValue:F

    return v0
.end method

.method public getLayerAlpha()F
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    iget v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerAlpha:F

    return v0
.end method

.method public getLayerGravity()I
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    iget v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerGravity:I

    return v0
.end method

.method public getLayerScaleType()I
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    iget v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerScaleType:I

    return v0
.end method

.method public getMarginBottom()I
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    iget v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->marginBottom:I

    return v0
.end method

.method public getMarginEnd()I
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    iget v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->marginEnd:I

    return v0
.end method

.method public getMarginStart()I
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    iget v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->marginStart:I

    return v0
.end method

.method public getMarginTop()I
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    iget v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->marginTop:I

    return v0
.end method

.method public getRepeatCount()I
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    iget v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->repeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 3

    .line 703
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    iget v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->animationType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->repeatMode:I

    :goto_0
    return v0
.end method

.method public getScalePivotX()F
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    iget v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->scalePivotX:F

    return v0
.end method

.method public getScalePivotY()F
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    iget v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->scalePivotY:F

    return v0
.end method

.method public getStartDelay()J
    .locals 2

    .line 711
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    iget-wide v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->startDelay:J

    return-wide v0
.end method

.method public getTimeInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    iget-object v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->interpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method
