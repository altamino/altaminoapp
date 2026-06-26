.class public Lcom/plattysoft/leonids/initializers/RotationSpeedInitializer;
.super Ljava/lang/Object;
.source "RotationSpeedInitializer.java"

# interfaces
.implements Lcom/plattysoft/leonids/initializers/ParticleInitializer;


# instance fields
.field private mMaxRotationSpeed:F

.field private mMinRotationSpeed:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/plattysoft/leonids/initializers/RotationSpeedInitializer;->mMinRotationSpeed:F

    .line 14
    iput p2, p0, Lcom/plattysoft/leonids/initializers/RotationSpeedInitializer;->mMaxRotationSpeed:F

    return-void
.end method


# virtual methods
.method public initParticle(Lcom/plattysoft/leonids/Particle;Ljava/util/Random;)V
    .locals 2

    .line 19
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p2

    iget v0, p0, Lcom/plattysoft/leonids/initializers/RotationSpeedInitializer;->mMaxRotationSpeed:F

    iget v1, p0, Lcom/plattysoft/leonids/initializers/RotationSpeedInitializer;->mMinRotationSpeed:F

    sub-float/2addr v0, v1

    mul-float p2, p2, v0

    add-float/2addr p2, v1

    .line 20
    iput p2, p1, Lcom/plattysoft/leonids/Particle;->mRotationSpeed:F

    return-void
.end method
