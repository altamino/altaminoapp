.class public Lcom/narvii/util/particles/SpeeddInitializer;
.super Ljava/lang/Object;
.source "SpeeddInitializer.java"

# interfaces
.implements Lcom/plattysoft/leonids/initializers/ParticleInitializer;


# instance fields
.field private mDirection:F

.field private mRange:F

.field private mSpeedMax:F

.field private mSpeedMin:F

.field private prevSign:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/narvii/util/particles/SpeeddInitializer;->mDirection:F

    .line 20
    iput p2, p0, Lcom/narvii/util/particles/SpeeddInitializer;->mRange:F

    .line 21
    iput p3, p0, Lcom/narvii/util/particles/SpeeddInitializer;->mSpeedMin:F

    .line 22
    iput p4, p0, Lcom/narvii/util/particles/SpeeddInitializer;->mSpeedMax:F

    return-void
.end method

.method private gen1(Ljava/util/Random;)F
    .locals 2

    .line 37
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    mul-float v0, v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    .line 40
    invoke-virtual {p1}, Ljava/util/Random;->nextBoolean()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    int-to-float p1, p1

    mul-float v0, v0, p1

    return v0
.end method

.method private gen2(Ljava/util/Random;)F
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x20

    if-ge v1, v3, :cond_1

    .line 47
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    .line 48
    iget v3, p0, Lcom/narvii/util/particles/SpeeddInitializer;->prevSign:F

    mul-float v3, v3, v2

    cmpg-float v3, v3, v0

    if-gtz v3, :cond_0

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 49
    iput v2, p0, Lcom/narvii/util/particles/SpeeddInitializer;->prevSign:F

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method


# virtual methods
.method public initParticle(Lcom/plattysoft/leonids/Particle;Ljava/util/Random;)V
    .locals 6

    .line 27
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget v1, p0, Lcom/narvii/util/particles/SpeeddInitializer;->mSpeedMax:F

    iget v2, p0, Lcom/narvii/util/particles/SpeeddInitializer;->mSpeedMin:F

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    add-float/2addr v0, v2

    .line 28
    invoke-direct {p0, p2}, Lcom/narvii/util/particles/SpeeddInitializer;->gen2(Ljava/util/Random;)F

    move-result p2

    .line 29
    iget v1, p0, Lcom/narvii/util/particles/SpeeddInitializer;->mDirection:F

    iget v2, p0, Lcom/narvii/util/particles/SpeeddInitializer;->mRange:F

    mul-float p2, p2, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    add-float/2addr v1, p2

    float-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    .line 30
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    const-wide v3, 0x4066800000000000L    # 180.0

    div-double/2addr v1, v3

    double-to-float p2, v1

    float-to-double v0, v0

    float-to-double v2, p2

    .line 31
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v0

    double-to-float p2, v4

    iput p2, p1, Lcom/plattysoft/leonids/Particle;->mSpeedX:F

    .line 32
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float p2, v0

    iput p2, p1, Lcom/plattysoft/leonids/Particle;->mSpeedY:F

    return-void
.end method
