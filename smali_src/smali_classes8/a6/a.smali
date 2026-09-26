.class public La6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La6/b;


# instance fields
.field private mMaxAngle:I

.field private mMaxValue:F

.field private mMinAngle:I

.field private mMinValue:F


# direct methods
.method public constructor <init>(FFII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, La6/a;->mMinValue:F

    .line 6
    .line 7
    iput p2, p0, La6/a;->mMaxValue:F

    .line 8
    .line 9
    iput p3, p0, La6/a;->mMinAngle:I

    .line 10
    .line 11
    iput p4, p0, La6/a;->mMaxAngle:I

    .line 12
    return-void
.end method


# virtual methods
.method public initParticle(Lcom/plattysoft/leonids/b;Ljava/util/Random;)V
    .locals 7

    .line 1
    .line 2
    iget v0, p0, La6/a;->mMinAngle:I

    .line 3
    int-to-float v1, v0

    .line 4
    .line 5
    iget v2, p0, La6/a;->mMaxAngle:I

    .line 6
    .line 7
    if-eq v2, v0, :cond_0

    .line 8
    sub-int/2addr v2, v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    .line 12
    move-result v0

    .line 13
    .line 14
    iget v1, p0, La6/a;->mMinAngle:I

    .line 15
    add-int/2addr v0, v1

    .line 16
    int-to-float v1, v0

    .line 17
    :cond_0
    float-to-double v0, v1

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    .line 23
    mul-double/2addr v0, v2

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    const-wide v2, 0x4066800000000000L    # 180.0

    .line 29
    div-double/2addr v0, v2

    .line 30
    double-to-float v0, v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    .line 34
    move-result p2

    .line 35
    .line 36
    iget v1, p0, La6/a;->mMaxValue:F

    .line 37
    .line 38
    iget v2, p0, La6/a;->mMinValue:F

    .line 39
    sub-float/2addr v1, v2

    .line 40
    mul-float/2addr p2, v1

    .line 41
    add-float/2addr p2, v2

    .line 42
    float-to-double v1, p2

    .line 43
    float-to-double v3, v0

    .line 44
    .line 45
    .line 46
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    .line 47
    move-result-wide v5

    .line 48
    mul-double/2addr v5, v1

    .line 49
    double-to-float p2, v5

    .line 50
    .line 51
    iput p2, p1, Lcom/plattysoft/leonids/b;->mAccelerationX:F

    .line 52
    .line 53
    .line 54
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    .line 55
    move-result-wide v3

    .line 56
    mul-double/2addr v1, v3

    .line 57
    double-to-float p2, v1

    .line 58
    .line 59
    iput p2, p1, Lcom/plattysoft/leonids/b;->mAccelerationY:F

    .line 60
    return-void
.end method
