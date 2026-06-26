.class public Lcom/narvii/util/particles/EliminateInitializer;
.super Ljava/lang/Object;
.source "EliminateInitializer.java"

# interfaces
.implements Lcom/plattysoft/leonids/initializers/ParticleInitializer;


# instance fields
.field eliminate:I

.field i:I

.field total:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/narvii/util/particles/EliminateInitializer;->total:I

    .line 19
    iput p2, p0, Lcom/narvii/util/particles/EliminateInitializer;->eliminate:I

    return-void
.end method


# virtual methods
.method public initParticle(Lcom/plattysoft/leonids/Particle;Ljava/util/Random;)V
    .locals 4

    .line 24
    iget v0, p0, Lcom/narvii/util/particles/EliminateInitializer;->i:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/narvii/util/particles/EliminateInitializer;->i:I

    .line 25
    iget v0, p0, Lcom/narvii/util/particles/EliminateInitializer;->i:I

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    iget v2, p0, Lcom/narvii/util/particles/EliminateInitializer;->total:I

    int-to-float v3, v2

    div-float/2addr v0, v3

    iget v3, p0, Lcom/narvii/util/particles/EliminateInitializer;->eliminate:I

    int-to-float v3, v3

    mul-float v0, v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v0, v0, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 26
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p2

    cmpg-float p2, p2, v0

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p1, Lcom/plattysoft/leonids/Particle;->mHidden:Z

    return-void
.end method
