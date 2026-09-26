.class public Lcom/narvii/util/particles/SpeeddInitializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La6/b;


# instance fields
.field private mDirection:F

.field private mRange:F

.field private mSpeedMax:F

.field private mSpeedMin:F

.field private prevSign:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/narvii/util/particles/SpeeddInitializer;->mDirection:F

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/util/particles/SpeeddInitializer;->mRange:F

    .line 8
    .line 9
    iput p3, p0, Lcom/narvii/util/particles/SpeeddInitializer;->mSpeedMin:F

    .line 10
    .line 11
    iput p4, p0, Lcom/narvii/util/particles/SpeeddInitializer;->mSpeedMax:F

    .line 12
    return-void
.end method

.method private gen1(Ljava/util/Random;)F
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    .line 4
    move-result v0

    .line 5
    .line 6
    const/high16 v1, 0x40000000    # 2.0f

    .line 7
    mul-float/2addr v0, v1

    .line 8
    mul-float/2addr v0, v0

    .line 9
    .line 10
    const/high16 v1, 0x40800000    # 4.0f

    .line 11
    div-float/2addr v0, v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/util/Random;->nextBoolean()Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    const/4 p1, -0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x1

    .line 21
    :goto_0
    int-to-float p1, p1

    .line 22
    mul-float/2addr v0, p1

    .line 23
    return v0
.end method

.method private gen2(Ljava/util/Random;)F
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v0

    .line 4
    .line 5
    :goto_0
    const/16 v3, 0x20

    .line 6
    .line 7
    if-ge v1, v3, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    .line 11
    move-result v2

    .line 12
    .line 13
    const/high16 v3, 0x40000000    # 2.0f

    .line 14
    mul-float/2addr v2, v3

    .line 15
    .line 16
    const/high16 v3, 0x3f800000    # 1.0f

    .line 17
    sub-float/2addr v2, v3

    .line 18
    .line 19
    iget v3, p0, Lcom/narvii/util/particles/SpeeddInitializer;->prevSign:F

    .line 20
    mul-float/2addr v3, v2

    .line 21
    .line 22
    cmpg-float v3, v3, v0

    .line 23
    .line 24
    if-gtz v3, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    .line 28
    move-result v3

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 32
    move-result v4

    .line 33
    .line 34
    cmpl-float v3, v3, v4

    .line 35
    .line 36
    if-lez v3, :cond_0

    .line 37
    .line 38
    iput v2, p0, Lcom/narvii/util/particles/SpeeddInitializer;->prevSign:F

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    :goto_1
    return v2
.end method


# virtual methods
.method public initParticle(Lcom/plattysoft/leonids/b;Ljava/util/Random;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/util/particles/SpeeddInitializer;->mSpeedMax:F

    .line 7
    .line 8
    iget v2, p0, Lcom/narvii/util/particles/SpeeddInitializer;->mSpeedMin:F

    .line 9
    sub-float/2addr v1, v2

    .line 10
    mul-float/2addr v0, v1

    .line 11
    add-float/2addr v0, v2

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p2}, Lcom/narvii/util/particles/SpeeddInitializer;->gen2(Ljava/util/Random;)F

    .line 15
    move-result p2

    .line 16
    .line 17
    iget v1, p0, Lcom/narvii/util/particles/SpeeddInitializer;->mDirection:F

    .line 18
    .line 19
    iget v2, p0, Lcom/narvii/util/particles/SpeeddInitializer;->mRange:F

    .line 20
    mul-float/2addr p2, v2

    .line 21
    .line 22
    const/high16 v2, 0x40000000    # 2.0f

    .line 23
    div-float/2addr p2, v2

    .line 24
    add-float/2addr v1, p2

    .line 25
    float-to-double v1, v1

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    const-wide v3, 0x400921fb54442d18L    # Math.PI

    .line 31
    mul-double/2addr v1, v3

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    const-wide v3, 0x4066800000000000L    # 180.0

    .line 37
    div-double/2addr v1, v3

    .line 38
    double-to-float p2, v1

    .line 39
    float-to-double v0, v0

    .line 40
    float-to-double v2, p2

    .line 41
    .line 42
    .line 43
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 44
    move-result-wide v4

    .line 45
    mul-double/2addr v4, v0

    .line 46
    double-to-float p2, v4

    .line 47
    .line 48
    iput p2, p1, Lcom/plattysoft/leonids/b;->mSpeedX:F

    .line 49
    .line 50
    .line 51
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 52
    move-result-wide v2

    .line 53
    mul-double/2addr v0, v2

    .line 54
    double-to-float p2, v0

    .line 55
    .line 56
    iput p2, p1, Lcom/plattysoft/leonids/b;->mSpeedY:F

    .line 57
    return-void
.end method
