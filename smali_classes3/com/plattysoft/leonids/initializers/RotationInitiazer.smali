.class public Lcom/plattysoft/leonids/initializers/RotationInitiazer;
.super Ljava/lang/Object;
.source "RotationInitiazer.java"

# interfaces
.implements Lcom/plattysoft/leonids/initializers/ParticleInitializer;


# instance fields
.field private mMaxAngle:I

.field private mMinAngle:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/plattysoft/leonids/initializers/RotationInitiazer;->mMinAngle:I

    .line 14
    iput p2, p0, Lcom/plattysoft/leonids/initializers/RotationInitiazer;->mMaxAngle:I

    return-void
.end method


# virtual methods
.method public initParticle(Lcom/plattysoft/leonids/Particle;Ljava/util/Random;)V
    .locals 2

    .line 19
    iget v0, p0, Lcom/plattysoft/leonids/initializers/RotationInitiazer;->mMaxAngle:I

    iget v1, p0, Lcom/plattysoft/leonids/initializers/RotationInitiazer;->mMinAngle:I

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    iget v0, p0, Lcom/plattysoft/leonids/initializers/RotationInitiazer;->mMinAngle:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    .line 20
    iput p2, p1, Lcom/plattysoft/leonids/Particle;->mInitialRotation:F

    return-void
.end method
