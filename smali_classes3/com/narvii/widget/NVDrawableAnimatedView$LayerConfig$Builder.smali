.class public Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;
.super Ljava/lang/Object;
.source "NVDrawableAnimatedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field animationInterval:F

.field animationType:I

.field duration:I

.field fromValue:F

.field interpolator:Landroid/animation/TimeInterpolator;

.field layerAlpha:F

.field layerGravity:I

.field layerScaleType:I

.field marginBottom:I

.field marginEnd:I

.field marginStart:I

.field marginTop:I

.field repeatCount:I

.field repeatMode:I

.field resId:I

.field scalePivotX:F

.field scalePivotY:F

.field startDelay:J


# direct methods
.method public constructor <init>(II)V
    .locals 4

    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 719
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->resId:I

    const/4 v1, 0x4

    .line 723
    iput v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerScaleType:I

    const/4 v1, 0x1

    .line 725
    iput v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerGravity:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 726
    iput v2, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerAlpha:F

    const/high16 v2, -0x40800000    # -1.0f

    .line 727
    iput v2, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->scalePivotX:F

    .line 728
    iput v2, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->scalePivotY:F

    const/4 v3, 0x0

    .line 729
    iput v3, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->marginStart:I

    .line 730
    iput v3, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->marginTop:I

    .line 731
    iput v3, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->marginEnd:I

    .line 732
    iput v3, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->marginBottom:I

    const/4 v3, 0x0

    .line 733
    iput v3, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->fromValue:F

    .line 734
    iput v2, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->animationInterval:F

    .line 736
    iput v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->repeatMode:I

    .line 737
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->repeatCount:I

    const-wide/16 v0, 0x0

    .line 738
    iput-wide v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->startDelay:J

    const/4 v0, 0x0

    .line 739
    iput-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->interpolator:Landroid/animation/TimeInterpolator;

    .line 742
    iput p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->resId:I

    .line 743
    iput p2, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->animationType:I

    return-void
.end method


# virtual methods
.method public animationInterval(F)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;
    .locals 0

    .line 752
    iput p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->animationInterval:F

    return-object p0
.end method

.method public build()Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;
    .locals 1

    .line 815
    new-instance v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;

    invoke-direct {v0, p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;-><init>(Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;)V

    return-object v0
.end method

.method public duration(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;
    .locals 0

    .line 772
    iput p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->duration:I

    return-object p0
.end method

.method public fromValue(F)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;
    .locals 0

    .line 747
    iput p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->fromValue:F

    return-object p0
.end method

.method public interpolator(Landroid/animation/TimeInterpolator;)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;
    .locals 0

    .line 789
    iput-object p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->interpolator:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public layerAlpha(F)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;
    .locals 0

    .line 767
    iput p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerAlpha:F

    return-object p0
.end method

.method public layerGravity(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;
    .locals 0

    .line 757
    iput p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerGravity:I

    return-object p0
.end method

.method public layerScaleType(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;
    .locals 0

    .line 762
    iput p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerScaleType:I

    return-object p0
.end method

.method public margin(IIII)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;
    .locals 0

    .line 794
    iput p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->marginStart:I

    .line 795
    iput p2, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->marginTop:I

    .line 796
    iput p3, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->marginEnd:I

    .line 797
    iput p4, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->marginBottom:I

    return-object p0
.end method

.method public repeatCount(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;
    .locals 0

    .line 784
    iput p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->repeatCount:I

    return-object p0
.end method

.method public repeatMode(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 778
    :cond_0
    iput p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->repeatMode:I

    :cond_1
    return-object p0
.end method

.method public scalePivot(FF)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;
    .locals 0

    .line 802
    iput p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->scalePivotX:F

    .line 803
    iput p2, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->scalePivotY:F

    return-object p0
.end method

.method public startDelay(J)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 809
    iput-wide p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->startDelay:J

    :cond_0
    return-object p0
.end method
