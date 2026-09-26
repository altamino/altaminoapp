.class public Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 6
    return-void
.end method


# virtual methods
.method public getAnimationInterval()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 3
    .line 4
    iget v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->animationInterval:F

    .line 5
    return v0
.end method

.method public getAnimationType()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 3
    .line 4
    iget v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->animationType:I

    .line 5
    return v0
.end method

.method public getDrawableResId()I
    .locals 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 3
    .line 4
    iget v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->resId:I

    .line 5
    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 3
    .line 4
    iget v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->duration:I

    .line 5
    return v0
.end method

.method public getFromValue()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 3
    .line 4
    iget v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->fromValue:F

    .line 5
    return v0
.end method

.method public getLayerAlpha()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 3
    .line 4
    iget v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerAlpha:F

    .line 5
    return v0
.end method

.method public getLayerGravity()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 3
    .line 4
    iget v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerGravity:I

    .line 5
    return v0
.end method

.method public getLayerScaleType()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 3
    .line 4
    iget v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerScaleType:I

    .line 5
    return v0
.end method

.method public getMarginBottom()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 3
    .line 4
    iget v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->marginBottom:I

    .line 5
    return v0
.end method

.method public getMarginEnd()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 3
    .line 4
    iget v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->marginEnd:I

    .line 5
    return v0
.end method

.method public getMarginStart()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 3
    .line 4
    iget v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->marginStart:I

    .line 5
    return v0
.end method

.method public getMarginTop()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 3
    .line 4
    iget v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->marginTop:I

    .line 5
    return v0
.end method

.method public getRepeatCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 3
    .line 4
    iget v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->repeatCount:I

    .line 5
    return v0
.end method

.method public getRepeatMode()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 3
    .line 4
    iget v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->animationType:I

    .line 5
    const/4 v2, 0x7

    .line 6
    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    const/4 v0, 0x2

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->repeatMode:I

    .line 12
    :goto_0
    return v0
.end method

.method public getScalePivotX()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 3
    .line 4
    iget v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->scalePivotX:F

    .line 5
    return v0
.end method

.method public getScalePivotY()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 3
    .line 4
    iget v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->scalePivotY:F

    .line 5
    return v0
.end method

.method public getStartDelay()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 3
    .line 4
    iget-wide v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->startDelay:J

    .line 5
    return-wide v0
.end method

.method public getTimeInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->builder:Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->interpolator:Landroid/animation/TimeInterpolator;

    .line 5
    return-object v0
.end method
