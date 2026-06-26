.class public Lcom/narvii/util/particles/RandomInitalizer;
.super Ljava/lang/Object;
.source "RandomInitalizer.java"

# interfaces
.implements Lcom/plattysoft/leonids/initializers/ParticleInitializer;


# instance fields
.field private pi1:Lcom/plattysoft/leonids/initializers/ParticleInitializer;

.field private pi1Ods:F

.field private pi2:Lcom/plattysoft/leonids/initializers/ParticleInitializer;


# direct methods
.method public constructor <init>(Lcom/plattysoft/leonids/initializers/ParticleInitializer;F)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/narvii/util/particles/RandomInitalizer;->pi1:Lcom/plattysoft/leonids/initializers/ParticleInitializer;

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/narvii/util/particles/RandomInitalizer;->pi2:Lcom/plattysoft/leonids/initializers/ParticleInitializer;

    .line 26
    iput p2, p0, Lcom/narvii/util/particles/RandomInitalizer;->pi1Ods:F

    return-void
.end method

.method public constructor <init>(Lcom/plattysoft/leonids/initializers/ParticleInitializer;Lcom/plattysoft/leonids/initializers/ParticleInitializer;F)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/narvii/util/particles/RandomInitalizer;->pi1:Lcom/plattysoft/leonids/initializers/ParticleInitializer;

    .line 19
    iput-object p2, p0, Lcom/narvii/util/particles/RandomInitalizer;->pi2:Lcom/plattysoft/leonids/initializers/ParticleInitializer;

    .line 20
    iput p3, p0, Lcom/narvii/util/particles/RandomInitalizer;->pi1Ods:F

    return-void
.end method


# virtual methods
.method public initParticle(Lcom/plattysoft/leonids/Particle;Ljava/util/Random;)V
    .locals 2

    .line 31
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget v1, p0, Lcom/narvii/util/particles/RandomInitalizer;->pi1Ods:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/narvii/util/particles/RandomInitalizer;->pi1:Lcom/plattysoft/leonids/initializers/ParticleInitializer;

    invoke-interface {v0, p1, p2}, Lcom/plattysoft/leonids/initializers/ParticleInitializer;->initParticle(Lcom/plattysoft/leonids/Particle;Ljava/util/Random;)V

    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/particles/RandomInitalizer;->pi2:Lcom/plattysoft/leonids/initializers/ParticleInitializer;

    if-eqz v0, :cond_1

    .line 34
    invoke-interface {v0, p1, p2}, Lcom/plattysoft/leonids/initializers/ParticleInitializer;->initParticle(Lcom/plattysoft/leonids/Particle;Ljava/util/Random;)V

    :cond_1
    :goto_0
    return-void
.end method
