.class public Lcom/plattysoft/leonids/modifiers/AlphaModifier;
.super Ljava/lang/Object;
.source "AlphaModifier.java"

# interfaces
.implements Lcom/plattysoft/leonids/modifiers/ParticleModifier;


# instance fields
.field private mDuration:F

.field private mEndTime:J

.field private mFinalValue:I

.field private mInitialValue:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mStartTime:J

.field private mValueIncrement:F


# direct methods
.method public constructor <init>(IIJJ)V
    .locals 8

    .line 29
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/plattysoft/leonids/modifiers/AlphaModifier;-><init>(IIJJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(IIJJLandroid/view/animation/Interpolator;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mInitialValue:I

    .line 20
    iput p2, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mFinalValue:I

    .line 21
    iput-wide p3, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mStartTime:J

    .line 22
    iput-wide p5, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mEndTime:J

    .line 23
    iget-wide p1, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mEndTime:J

    iget-wide p3, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mStartTime:J

    sub-long/2addr p1, p3

    long-to-float p1, p1

    iput p1, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mDuration:F

    .line 24
    iget p1, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mFinalValue:I

    iget p2, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mInitialValue:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mValueIncrement:F

    .line 25
    iput-object p7, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public apply(Lcom/plattysoft/leonids/Particle;J)V
    .locals 5

    .line 34
    iget-wide v0, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mStartTime:J

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 35
    iget p2, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mInitialValue:I

    iput p2, p1, Lcom/plattysoft/leonids/Particle;->mAlpha:I

    goto :goto_0

    .line 37
    :cond_0
    iget-wide v2, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mEndTime:J

    cmp-long v4, p2, v2

    if-lez v4, :cond_1

    .line 38
    iget p2, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mFinalValue:I

    iput p2, p1, Lcom/plattysoft/leonids/Particle;->mAlpha:I

    goto :goto_0

    .line 41
    :cond_1
    iget-object v2, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mInterpolator:Landroid/view/animation/Interpolator;

    sub-long/2addr p2, v0

    long-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float p2, p2, p3

    iget p3, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mDuration:F

    div-float/2addr p2, p3

    invoke-interface {v2, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    .line 42
    iget p3, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mInitialValue:I

    int-to-float p3, p3

    iget v0, p0, Lcom/plattysoft/leonids/modifiers/AlphaModifier;->mValueIncrement:F

    mul-float v0, v0, p2

    add-float/2addr p3, v0

    float-to-int p2, p3

    .line 43
    iput p2, p1, Lcom/plattysoft/leonids/Particle;->mAlpha:I

    :goto_0
    return-void
.end method
