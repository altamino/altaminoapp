.class public Lcom/narvii/util/particles/TintColorInitializer;
.super Ljava/lang/Object;
.source "TintColorInitializer.java"

# interfaces
.implements Lcom/plattysoft/leonids/initializers/ParticleInitializer;


# instance fields
.field blue:I

.field blueRange:I

.field green:I

.field greenRange:I

.field red:I

.field redRange:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/util/particles/TintColorInitializer;->red:I

    .line 25
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/util/particles/TintColorInitializer;->green:I

    .line 26
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/util/particles/TintColorInitializer;->blue:I

    .line 27
    iput p2, p0, Lcom/narvii/util/particles/TintColorInitializer;->redRange:I

    .line 28
    iput p3, p0, Lcom/narvii/util/particles/TintColorInitializer;->greenRange:I

    .line 29
    iput p4, p0, Lcom/narvii/util/particles/TintColorInitializer;->blueRange:I

    return-void
.end method

.method public static tintColorFilter(I)Landroid/graphics/ColorFilter;
    .locals 6

    .line 44
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 45
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    const/16 v2, 0x14

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v4, 0x1

    aput v3, v2, v4

    const/4 v4, 0x2

    aput v3, v2, v4

    const/4 v4, 0x3

    aput v3, v2, v4

    .line 46
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x4

    aput v4, v2, v5

    const/4 v4, 0x5

    aput v3, v2, v4

    const/4 v4, 0x6

    aput v3, v2, v4

    const/4 v4, 0x7

    aput v3, v2, v4

    const/16 v4, 0x8

    aput v3, v2, v4

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    const/16 v5, 0x9

    aput v4, v2, v5

    const/16 v4, 0xa

    aput v3, v2, v4

    const/16 v4, 0xb

    aput v3, v2, v4

    const/16 v4, 0xc

    aput v3, v2, v4

    const/16 v4, 0xd

    aput v3, v2, v4

    .line 47
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    const/16 v4, 0xe

    aput p0, v2, v4

    const/16 p0, 0xf

    aput v3, v2, p0

    const/16 p0, 0x10

    aput v3, v2, p0

    const/16 p0, 0x11

    aput v3, v2, p0

    const/16 p0, 0x12

    aput v0, v2, p0

    const/16 p0, 0x13

    aput v3, v2, p0

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    return-object v1
.end method


# virtual methods
.method public initParticle(Lcom/plattysoft/leonids/Particle;Ljava/util/Random;)V
    .locals 6

    .line 34
    iget v0, p0, Lcom/narvii/util/particles/TintColorInitializer;->red:I

    iget v1, p0, Lcom/narvii/util/particles/TintColorInitializer;->redRange:I

    invoke-virtual {p2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/narvii/util/particles/TintColorInitializer;->redRange:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    const/16 v2, 0xff

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-le v0, v2, :cond_1

    const/16 v0, 0xff

    .line 36
    :cond_1
    :goto_0
    iget v3, p0, Lcom/narvii/util/particles/TintColorInitializer;->green:I

    iget v4, p0, Lcom/narvii/util/particles/TintColorInitializer;->greenRange:I

    invoke-virtual {p2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/narvii/util/particles/TintColorInitializer;->greenRange:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    if-gez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    if-le v3, v2, :cond_3

    const/16 v3, 0xff

    .line 38
    :cond_3
    :goto_1
    iget v4, p0, Lcom/narvii/util/particles/TintColorInitializer;->blue:I

    iget v5, p0, Lcom/narvii/util/particles/TintColorInitializer;->blueRange:I

    invoke-virtual {p2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    add-int/2addr v4, p2

    iget p2, p0, Lcom/narvii/util/particles/TintColorInitializer;->blueRange:I

    div-int/lit8 p2, p2, 0x2

    sub-int p2, v4, p2

    if-gez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_2

    :cond_4
    if-le p2, v2, :cond_5

    const/16 p2, 0xff

    .line 40
    :cond_5
    :goto_2
    iget-object p1, p1, Lcom/plattysoft/leonids/Particle;->mPaint:Landroid/graphics/Paint;

    invoke-static {v0, v3, p2}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    invoke-static {p2}, Lcom/narvii/util/particles/TintColorInitializer;->tintColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
