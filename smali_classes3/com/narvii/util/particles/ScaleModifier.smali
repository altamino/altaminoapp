.class public Lcom/narvii/util/particles/ScaleModifier;
.super Ljava/lang/Object;
.source "ScaleModifier.java"

# interfaces
.implements Lcom/plattysoft/leonids/modifiers/ParticleModifier;


# instance fields
.field duration:I

.field interpolator:Landroid/view/animation/Interpolator;

.field scaleFrom:F

.field scaleTo:F


# direct methods
.method public constructor <init>(FFILandroid/view/animation/Interpolator;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/narvii/util/particles/ScaleModifier;->scaleFrom:F

    .line 20
    iput p2, p0, Lcom/narvii/util/particles/ScaleModifier;->scaleTo:F

    .line 21
    iput p3, p0, Lcom/narvii/util/particles/ScaleModifier;->duration:I

    .line 22
    iput-object p4, p0, Lcom/narvii/util/particles/ScaleModifier;->interpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public apply(Lcom/plattysoft/leonids/Particle;J)V
    .locals 3

    .line 27
    iget v0, p0, Lcom/narvii/util/particles/ScaleModifier;->scaleFrom:F

    iget v1, p0, Lcom/narvii/util/particles/ScaleModifier;->scaleTo:F

    sub-float/2addr v1, v0

    iget-object v2, p0, Lcom/narvii/util/particles/ScaleModifier;->interpolator:Landroid/view/animation/Interpolator;

    long-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float p2, p2, p3

    iget p3, p0, Lcom/narvii/util/particles/ScaleModifier;->duration:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-interface {v2, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    iput v0, p1, Lcom/plattysoft/leonids/Particle;->mScale:F

    return-void
.end method
