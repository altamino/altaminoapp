.class public Lcom/narvii/util/particles/ParticlesHelper;
.super Ljava/lang/Object;
.source "ParticlesHelper.java"


# instance fields
.field birthRate:I

.field birthRateTo:I

.field direction:I

.field directionRange:I

.field duration:I

.field g:F

.field initAlpha:F

.field initScale:F

.field lifetime:I

.field public resId:I

.field rotateRange:I

.field scaleSpeed:F

.field spark:Z

.field tintColor:I

.field tintRangeB:I

.field tintRangeG:I

.field tintRangeR:I

.field tintRatio:F

.field v:F

.field vRange:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f08055e

    .line 17
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->resId:I

    const/16 v0, 0x3e8

    .line 19
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->duration:I

    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, Lcom/narvii/util/particles/ParticlesHelper;->spark:Z

    const/16 v2, -0x5a

    .line 22
    iput v2, p0, Lcom/narvii/util/particles/ParticlesHelper;->direction:I

    const/16 v2, 0x64

    .line 23
    iput v2, p0, Lcom/narvii/util/particles/ParticlesHelper;->directionRange:I

    const/16 v2, 0x14

    .line 24
    iput v2, p0, Lcom/narvii/util/particles/ParticlesHelper;->birthRate:I

    const/4 v2, 0x5

    .line 25
    iput v2, p0, Lcom/narvii/util/particles/ParticlesHelper;->birthRateTo:I

    .line 26
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->lifetime:I

    const/high16 v0, 0x42700000    # 60.0f

    .line 28
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->g:F

    const/high16 v2, 0x43480000    # 200.0f

    .line 29
    iput v2, p0, Lcom/narvii/util/particles/ParticlesHelper;->v:F

    .line 30
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->vRange:F

    const v0, 0x3f4ccccd    # 0.8f

    .line 32
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->initAlpha:F

    const v0, 0x3e19999a    # 0.15f

    .line 33
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->initScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 34
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->scaleSpeed:F

    const/16 v0, 0x168

    .line 36
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->rotateRange:I

    .line 38
    iput v1, p0, Lcom/narvii/util/particles/ParticlesHelper;->tintColor:I

    const/16 v0, 0x78

    .line 39
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->tintRangeR:I

    const/16 v0, 0xc8

    .line 40
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->tintRangeG:I

    const/16 v0, 0x32

    .line 41
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->tintRangeB:I

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->tintRatio:F

    return-void
.end method


# virtual methods
.method public duration()J
    .locals 2

    .line 45
    iget v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->duration:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->lifetime:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/narvii/util/particles/ParticlesHelper;->lifetime:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :goto_0
    int-to-long v0, v0

    return-wide v0
.end method

.method public emit(Landroid/view/View;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 158
    iget v2, v0, Lcom/narvii/util/particles/ParticlesHelper;->duration:I

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 159
    :goto_0
    new-instance v9, Lcom/plattysoft/leonids/ParticleSystem;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/app/Activity;

    iget v3, v0, Lcom/narvii/util/particles/ParticlesHelper;->birthRate:I

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget v5, v0, Lcom/narvii/util/particles/ParticlesHelper;->birthRateTo:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v5, v0, Lcom/narvii/util/particles/ParticlesHelper;->lifetime:I

    mul-int v3, v3, v5

    div-int/lit16 v3, v3, 0x3e8

    :goto_1
    move v5, v3

    iget v6, v0, Lcom/narvii/util/particles/ParticlesHelper;->resId:I

    iget v3, v0, Lcom/narvii/util/particles/ParticlesHelper;->lifetime:I

    int-to-long v7, v3

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/plattysoft/leonids/ParticleSystem;-><init>(Landroid/app/Activity;IIJ)V

    .line 160
    new-instance v3, Lcom/narvii/util/particles/SpeeddInitializer;

    iget v4, v0, Lcom/narvii/util/particles/ParticlesHelper;->direction:I

    int-to-float v4, v4

    iget v5, v0, Lcom/narvii/util/particles/ParticlesHelper;->directionRange:I

    int-to-float v5, v5

    iget v6, v0, Lcom/narvii/util/particles/ParticlesHelper;->v:F

    iget v7, v0, Lcom/narvii/util/particles/ParticlesHelper;->vRange:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    invoke-virtual {v9, v6}, Lcom/plattysoft/leonids/ParticleSystem;->dpToPx(F)F

    move-result v6

    iget v10, v0, Lcom/narvii/util/particles/ParticlesHelper;->v:F

    iget v11, v0, Lcom/narvii/util/particles/ParticlesHelper;->vRange:F

    div-float/2addr v11, v8

    add-float/2addr v10, v11

    div-float/2addr v10, v7

    invoke-virtual {v9, v10}, Lcom/plattysoft/leonids/ParticleSystem;->dpToPx(F)F

    move-result v8

    invoke-direct {v3, v4, v5, v6, v8}, Lcom/narvii/util/particles/SpeeddInitializer;-><init>(FFFF)V

    invoke-virtual {v9, v3}, Lcom/plattysoft/leonids/ParticleSystem;->addInitializer(Lcom/plattysoft/leonids/initializers/ParticleInitializer;)Lcom/plattysoft/leonids/ParticleSystem;

    if-nez v2, :cond_2

    .line 162
    new-instance v3, Lcom/narvii/util/particles/EliminateInitializer;

    iget v4, v0, Lcom/narvii/util/particles/ParticlesHelper;->birthRate:I

    iget v5, v0, Lcom/narvii/util/particles/ParticlesHelper;->duration:I

    mul-int v6, v4, v5

    div-int/lit16 v6, v6, 0x3e8

    iget v8, v0, Lcom/narvii/util/particles/ParticlesHelper;->birthRateTo:I

    sub-int/2addr v4, v8

    mul-int v4, v4, v5

    div-int/lit16 v4, v4, 0x3e8

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v6, v4}, Lcom/narvii/util/particles/EliminateInitializer;-><init>(II)V

    invoke-virtual {v9, v3}, Lcom/plattysoft/leonids/ParticleSystem;->addInitializer(Lcom/plattysoft/leonids/initializers/ParticleInitializer;)Lcom/plattysoft/leonids/ParticleSystem;

    .line 164
    :cond_2
    iget v3, v0, Lcom/narvii/util/particles/ParticlesHelper;->tintRatio:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 165
    new-instance v3, Lcom/narvii/util/particles/TintColorInitializer;

    iget v4, v0, Lcom/narvii/util/particles/ParticlesHelper;->tintColor:I

    iget v5, v0, Lcom/narvii/util/particles/ParticlesHelper;->tintRangeR:I

    iget v6, v0, Lcom/narvii/util/particles/ParticlesHelper;->tintRangeG:I

    iget v8, v0, Lcom/narvii/util/particles/ParticlesHelper;->tintRangeB:I

    invoke-direct {v3, v4, v5, v6, v8}, Lcom/narvii/util/particles/TintColorInitializer;-><init>(IIII)V

    .line 166
    new-instance v4, Lcom/narvii/util/particles/RandomInitalizer;

    iget v5, v0, Lcom/narvii/util/particles/ParticlesHelper;->tintRatio:F

    invoke-direct {v4, v3, v5}, Lcom/narvii/util/particles/RandomInitalizer;-><init>(Lcom/plattysoft/leonids/initializers/ParticleInitializer;F)V

    invoke-virtual {v9, v4}, Lcom/plattysoft/leonids/ParticleSystem;->addInitializer(Lcom/plattysoft/leonids/initializers/ParticleInitializer;)Lcom/plattysoft/leonids/ParticleSystem;

    .line 168
    :cond_3
    new-instance v3, Lcom/plattysoft/leonids/modifiers/AlphaModifier;

    iget v4, v0, Lcom/narvii/util/particles/ParticlesHelper;->initAlpha:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v4, v4, v5

    float-to-int v11, v4

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    iget v4, v0, Lcom/narvii/util/particles/ParticlesHelper;->lifetime:I

    int-to-long v5, v4

    new-instance v17, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v17 .. v17}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object v10, v3

    move-wide v15, v5

    invoke-direct/range {v10 .. v17}, Lcom/plattysoft/leonids/modifiers/AlphaModifier;-><init>(IIJJLandroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v3}, Lcom/plattysoft/leonids/ParticleSystem;->addModifier(Lcom/plattysoft/leonids/modifiers/ParticleModifier;)Lcom/plattysoft/leonids/ParticleSystem;

    .line 169
    new-instance v3, Lcom/narvii/util/particles/ScaleModifier;

    iget v4, v0, Lcom/narvii/util/particles/ParticlesHelper;->initScale:F

    iget v5, v0, Lcom/narvii/util/particles/ParticlesHelper;->scaleSpeed:F

    iget v6, v0, Lcom/narvii/util/particles/ParticlesHelper;->lifetime:I

    int-to-float v10, v6

    mul-float v5, v5, v10

    div-float/2addr v5, v7

    add-float/2addr v5, v4

    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v10}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v3, v4, v5, v6, v10}, Lcom/narvii/util/particles/ScaleModifier;-><init>(FFILandroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v3}, Lcom/plattysoft/leonids/ParticleSystem;->addModifier(Lcom/plattysoft/leonids/modifiers/ParticleModifier;)Lcom/plattysoft/leonids/ParticleSystem;

    .line 170
    iget v3, v0, Lcom/narvii/util/particles/ParticlesHelper;->g:F

    div-float/2addr v3, v7

    const/high16 v4, 0x44480000    # 800.0f

    div-float/2addr v3, v4

    const/16 v4, 0x5a

    invoke-virtual {v9, v3, v4}, Lcom/plattysoft/leonids/ParticleSystem;->setAcceleration(FI)Lcom/plattysoft/leonids/ParticleSystem;

    .line 171
    iget v3, v0, Lcom/narvii/util/particles/ParticlesHelper;->rotateRange:I

    neg-int v4, v3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v9, v4, v3}, Lcom/plattysoft/leonids/ParticleSystem;->setRotationSpeedRange(FF)Lcom/plattysoft/leonids/ParticleSystem;

    if-eqz v2, :cond_4

    .line 173
    iget v2, v0, Lcom/narvii/util/particles/ParticlesHelper;->birthRate:I

    invoke-virtual {v9, v1, v2}, Lcom/plattysoft/leonids/ParticleSystem;->oneShot(Landroid/view/View;I)V

    goto :goto_2

    .line 175
    :cond_4
    iget v2, v0, Lcom/narvii/util/particles/ParticlesHelper;->birthRate:I

    iget v3, v0, Lcom/narvii/util/particles/ParticlesHelper;->duration:I

    invoke-virtual {v9, v1, v2, v3}, Lcom/plattysoft/leonids/ParticleSystem;->emit(Landroid/view/View;II)V

    .line 178
    :goto_2
    iget-boolean v2, v0, Lcom/narvii/util/particles/ParticlesHelper;->spark:Z

    if-eqz v2, :cond_5

    const/16 v2, 0x320

    const/16 v3, 0x2bc

    const/16 v4, 0x64

    .line 184
    new-instance v5, Lcom/plattysoft/leonids/ParticleSystem;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Landroid/app/Activity;

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    mul-int/lit16 v4, v4, 0x320

    div-int/lit16 v11, v4, 0x3e8

    const v12, 0x7f08078c

    int-to-long v13, v2

    move-object v9, v5

    move-wide/from16 v18, v13

    invoke-direct/range {v9 .. v14}, Lcom/plattysoft/leonids/ParticleSystem;-><init>(Landroid/app/Activity;IIJ)V

    .line 185
    new-instance v2, Lcom/narvii/util/particles/SpeeddInitializer;

    iget v4, v0, Lcom/narvii/util/particles/ParticlesHelper;->direction:I

    int-to-float v4, v4

    const/high16 v6, 0x43b40000    # 360.0f

    iget v9, v0, Lcom/narvii/util/particles/ParticlesHelper;->v:F

    const/16 v10, 0x14

    int-to-float v10, v10

    sub-float/2addr v9, v10

    div-float/2addr v9, v7

    invoke-virtual {v5, v9}, Lcom/plattysoft/leonids/ParticleSystem;->dpToPx(F)F

    move-result v9

    iget v11, v0, Lcom/narvii/util/particles/ParticlesHelper;->v:F

    add-float/2addr v11, v10

    div-float/2addr v11, v7

    invoke-virtual {v5, v11}, Lcom/plattysoft/leonids/ParticleSystem;->dpToPx(F)F

    move-result v7

    invoke-direct {v2, v4, v6, v9, v7}, Lcom/narvii/util/particles/SpeeddInitializer;-><init>(FFFF)V

    invoke-virtual {v5, v2}, Lcom/plattysoft/leonids/ParticleSystem;->addInitializer(Lcom/plattysoft/leonids/initializers/ParticleInitializer;)Lcom/plattysoft/leonids/ParticleSystem;

    .line 186
    new-instance v2, Lcom/narvii/util/particles/EliminateInitializer;

    iget v4, v0, Lcom/narvii/util/particles/ParticlesHelper;->duration:I

    mul-int/lit16 v6, v4, 0x2bc

    div-int/lit16 v6, v6, 0x3e8

    const/16 v7, 0x258

    mul-int v7, v7, v4

    div-int/lit16 v7, v7, 0x3e8

    div-int/lit8 v7, v7, 0x2

    invoke-direct {v2, v6, v7}, Lcom/narvii/util/particles/EliminateInitializer;-><init>(II)V

    invoke-virtual {v5, v2}, Lcom/plattysoft/leonids/ParticleSystem;->addInitializer(Lcom/plattysoft/leonids/initializers/ParticleInitializer;)Lcom/plattysoft/leonids/ParticleSystem;

    .line 187
    new-instance v2, Lcom/narvii/util/particles/TintColorInitializer;

    const v4, -0x333334

    const/16 v6, 0x80

    const/16 v7, 0x40

    invoke-direct {v2, v4, v6, v7, v7}, Lcom/narvii/util/particles/TintColorInitializer;-><init>(IIII)V

    .line 188
    invoke-virtual {v5, v2}, Lcom/plattysoft/leonids/ParticleSystem;->addInitializer(Lcom/plattysoft/leonids/initializers/ParticleInitializer;)Lcom/plattysoft/leonids/ParticleSystem;

    .line 189
    new-instance v2, Lcom/plattysoft/leonids/modifiers/AlphaModifier;

    const/high16 v4, 0x437f0000    # 255.0f

    float-to-int v14, v4

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    new-instance v20, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v20 .. v20}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lcom/plattysoft/leonids/modifiers/AlphaModifier;-><init>(IIJJLandroid/view/animation/Interpolator;)V

    invoke-virtual {v5, v2}, Lcom/plattysoft/leonids/ParticleSystem;->addModifier(Lcom/plattysoft/leonids/modifiers/ParticleModifier;)Lcom/plattysoft/leonids/ParticleSystem;

    const v2, 0x3dcccccd    # 0.1f

    const v4, 0x3ecccccd    # 0.4f

    .line 190
    invoke-virtual {v5, v2, v4}, Lcom/plattysoft/leonids/ParticleSystem;->setScaleRange(FF)Lcom/plattysoft/leonids/ParticleSystem;

    const/16 v2, -0xb4

    const/16 v4, 0xb4

    .line 191
    invoke-virtual {v5, v2, v4}, Lcom/plattysoft/leonids/ParticleSystem;->setInitialRotationRange(II)Lcom/plattysoft/leonids/ParticleSystem;

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v4, 0x428c0000    # 70.0f

    .line 192
    invoke-virtual {v5, v2, v4}, Lcom/plattysoft/leonids/ParticleSystem;->setRotationSpeedRange(FF)Lcom/plattysoft/leonids/ParticleSystem;

    .line 193
    iget v2, v0, Lcom/narvii/util/particles/ParticlesHelper;->duration:I

    invoke-virtual {v5, v1, v3, v2}, Lcom/plattysoft/leonids/ParticleSystem;->emit(Landroid/view/View;II)V

    :cond_5
    return-void
.end method

.method public l0()Lcom/narvii/util/particles/ParticlesHelper;
    .locals 1

    const/16 v0, 0x1e

    .line 49
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->directionRange:I

    const/4 v0, 0x1

    .line 50
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->birthRate:I

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->birthRateTo:I

    .line 52
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->duration:I

    const/16 v0, 0x320

    .line 53
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->lifetime:I

    const/high16 v0, 0x43250000    # 165.0f

    .line 54
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->v:F

    const/high16 v0, 0x41c80000    # 25.0f

    .line 55
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->vRange:F

    const/high16 v0, 0x41a00000    # 20.0f

    .line 56
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->g:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 57
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->initAlpha:F

    const v0, 0x3ee66666    # 0.45f

    .line 58
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->initScale:F

    const v0, 0x3f266666    # 0.65f

    .line 59
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->scaleSpeed:F

    const/16 v0, 0x168

    .line 60
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->rotateRange:I

    return-object p0
.end method

.method public l1()Lcom/narvii/util/particles/ParticlesHelper;
    .locals 1

    const/16 v0, 0x64

    .line 65
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->directionRange:I

    const/16 v0, 0xf

    .line 66
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->birthRate:I

    const/4 v0, 0x6

    .line 67
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->birthRateTo:I

    const/16 v0, 0x320

    .line 68
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->duration:I

    const/16 v0, 0x3e8

    .line 69
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->lifetime:I

    const/high16 v0, 0x42f00000    # 120.0f

    .line 70
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->v:F

    const/high16 v0, 0x42700000    # 60.0f

    .line 71
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->vRange:F

    const/high16 v0, 0x41a00000    # 20.0f

    .line 72
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->g:F

    const v0, 0x3f4ccccd    # 0.8f

    .line 73
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->initAlpha:F

    const v0, 0x3e19999a    # 0.15f

    .line 74
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->initScale:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 75
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->scaleSpeed:F

    const/16 v0, 0x168

    .line 76
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->rotateRange:I

    return-object p0
.end method

.method public l2()Lcom/narvii/util/particles/ParticlesHelper;
    .locals 1

    const/16 v0, 0x64

    .line 81
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->directionRange:I

    const/16 v0, 0x14

    .line 82
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->birthRate:I

    const/16 v0, 0x8

    .line 83
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->birthRateTo:I

    const/16 v0, 0x3e8

    .line 84
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->duration:I

    .line 85
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->lifetime:I

    const/high16 v0, 0x430c0000    # 140.0f

    .line 86
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->v:F

    const/high16 v0, 0x42700000    # 60.0f

    .line 87
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->vRange:F

    const/high16 v0, 0x41a00000    # 20.0f

    .line 88
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->g:F

    const v0, 0x3f4ccccd    # 0.8f

    .line 89
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->initAlpha:F

    const v0, 0x3e19999a    # 0.15f

    .line 90
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->initScale:F

    const v0, 0x3f333333    # 0.7f

    .line 91
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->scaleSpeed:F

    const/16 v0, 0x168

    .line 92
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->rotateRange:I

    return-object p0
.end method

.method public l3()Lcom/narvii/util/particles/ParticlesHelper;
    .locals 2

    const/16 v0, 0x64

    .line 97
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->directionRange:I

    const/16 v0, 0x19

    .line 98
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->birthRate:I

    const/16 v0, 0xa

    .line 99
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->birthRateTo:I

    const/16 v0, 0x4b0

    .line 100
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->duration:I

    const/16 v0, 0x3e8

    .line 101
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->lifetime:I

    const/high16 v0, 0x43200000    # 160.0f

    .line 102
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->v:F

    const/high16 v0, 0x42700000    # 60.0f

    .line 103
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->vRange:F

    const/high16 v0, 0x41a00000    # 20.0f

    .line 104
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->g:F

    const v0, 0x3f4ccccd    # 0.8f

    .line 105
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->initAlpha:F

    const v1, 0x3e19999a    # 0.15f

    .line 106
    iput v1, p0, Lcom/narvii/util/particles/ParticlesHelper;->initScale:F

    .line 107
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->scaleSpeed:F

    const/16 v0, 0x168

    .line 108
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->rotateRange:I

    return-object p0
.end method

.method public l4()Lcom/narvii/util/particles/ParticlesHelper;
    .locals 1

    const/16 v0, 0x64

    .line 113
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->directionRange:I

    const/16 v0, 0x1e

    .line 114
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->birthRate:I

    const/16 v0, 0xc

    .line 115
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->birthRateTo:I

    const/16 v0, 0x5dc

    .line 116
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->duration:I

    const/16 v0, 0x3e8

    .line 117
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->lifetime:I

    const/high16 v0, 0x43480000    # 200.0f

    .line 118
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->v:F

    const/high16 v0, 0x42700000    # 60.0f

    .line 119
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->vRange:F

    .line 120
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->g:F

    const v0, 0x3f4ccccd    # 0.8f

    .line 121
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->initAlpha:F

    const v0, -0x29427

    .line 122
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->tintColor:I

    const/16 v0, 0x80

    .line 123
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->tintRangeR:I

    const/16 v0, 0xcc

    .line 124
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->tintRangeG:I

    const/16 v0, 0x34

    .line 125
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->tintRangeB:I

    const v0, 0x3eaab368    # 0.3334f

    .line 126
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->tintRatio:F

    const v0, 0x3e19999a    # 0.15f

    .line 127
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->initScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 128
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->scaleSpeed:F

    const/16 v0, 0x168

    .line 129
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->rotateRange:I

    return-object p0
.end method

.method public l5()Lcom/narvii/util/particles/ParticlesHelper;
    .locals 1

    const/16 v0, 0x64

    .line 134
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->directionRange:I

    const/16 v0, 0x23

    .line 135
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->birthRate:I

    const/16 v0, 0xd

    .line 136
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->birthRateTo:I

    const/16 v0, 0x5dc

    .line 137
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->duration:I

    const/16 v0, 0x3e8

    .line 138
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->lifetime:I

    const/high16 v0, 0x435c0000    # 220.0f

    .line 139
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->v:F

    const/high16 v0, 0x42700000    # 60.0f

    .line 140
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->vRange:F

    .line 141
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->g:F

    const v0, 0x3f4ccccd    # 0.8f

    .line 142
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->initAlpha:F

    const v0, -0x29427

    .line 143
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->tintColor:I

    const/16 v0, 0x80

    .line 144
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->tintRangeR:I

    const/16 v0, 0xcc

    .line 145
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->tintRangeG:I

    const/16 v0, 0x34

    .line 146
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->tintRangeB:I

    const v0, 0x3eaab368    # 0.3334f

    .line 147
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->tintRatio:F

    const v0, 0x3e19999a    # 0.15f

    .line 148
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->initScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 149
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->scaleSpeed:F

    const/16 v0, 0x168

    .line 150
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->rotateRange:I

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->spark:Z

    return-object p0
.end method
