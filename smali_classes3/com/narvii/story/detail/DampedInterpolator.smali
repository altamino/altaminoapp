.class public Lcom/narvii/story/detail/DampedInterpolator;
.super Ljava/lang/Object;
.source "DampedInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mCount:I

.field private mOvershootModulus:F

.field private mOvershootPercent:F

.field private mRegion:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    .line 14
    invoke-direct {p0, v0, v1}, Lcom/narvii/story/detail/DampedInterpolator;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 7
    iput v0, p0, Lcom/narvii/story/detail/DampedInterpolator;->mOvershootPercent:F

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/narvii/story/detail/DampedInterpolator;->mCount:I

    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/story/detail/DampedInterpolator;->setOverShootCount(I)V

    .line 19
    invoke-virtual {p0, p2}, Lcom/narvii/story/detail/DampedInterpolator;->setOverShootPercent(F)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1

    return v0

    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 46
    iget v2, p0, Lcom/narvii/story/detail/DampedInterpolator;->mOvershootModulus:F

    float-to-double v2, v2

    float-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v4, p0, Lcom/narvii/story/detail/DampedInterpolator;->mRegion:F

    mul-float v4, v4, p1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    double-to-float p1, v0

    return p1
.end method

.method public setOverShootCount(I)V
    .locals 6

    const/4 v0, 0x1

    .line 23
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/narvii/story/detail/DampedInterpolator;->mCount:I

    .line 24
    iget p1, p0, Lcom/narvii/story/detail/DampedInterpolator;->mCount:I

    sub-int/2addr p1, v0

    int-to-double v0, p1

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const-wide v2, 0x4012d97c7f3321d2L    # 4.71238898038469

    add-double/2addr v0, v2

    double-to-float p1, v0

    iput p1, p0, Lcom/narvii/story/detail/DampedInterpolator;->mRegion:F

    .line 25
    iget p1, p0, Lcom/narvii/story/detail/DampedInterpolator;->mOvershootPercent:F

    float-to-double v0, p1

    iget p1, p0, Lcom/narvii/story/detail/DampedInterpolator;->mRegion:F

    float-to-double v2, p1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/narvii/story/detail/DampedInterpolator;->mOvershootModulus:F

    return-void
.end method

.method public setOverShootPercent(F)V
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    .line 29
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/narvii/story/detail/DampedInterpolator;->mOvershootPercent:F

    .line 35
    iget p1, p0, Lcom/narvii/story/detail/DampedInterpolator;->mOvershootPercent:F

    float-to-double v0, p1

    iget p1, p0, Lcom/narvii/story/detail/DampedInterpolator;->mRegion:F

    float-to-double v2, p1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/narvii/story/detail/DampedInterpolator;->mOvershootModulus:F

    return-void
.end method
