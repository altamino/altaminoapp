.class public final Landroidx/compose/animation/FlingCalculatorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DecelerationRate:F

.field private static final GravityEarth:F = 9.80665f

.field private static final InchesPerMeter:F = 39.37f


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    .line 3
    .line 4
    .line 5
    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 9
    move-result-wide v0

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const-wide v2, 0x3feccccccccccccdL    # 0.9

    .line 15
    .line 16
    .line 17
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    .line 18
    move-result-wide v2

    .line 19
    div-double/2addr v0, v2

    .line 20
    double-to-float v0, v0

    .line 21
    .line 22
    sput v0, Landroidx/compose/animation/FlingCalculatorKt;->DecelerationRate:F

    .line 23
    return-void
.end method

.method public static final synthetic a(FF)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/animation/FlingCalculatorKt;->c(FF)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic b()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/animation/FlingCalculatorKt;->DecelerationRate:F

    return v0
.end method

.method private static final c(FF)F
    .locals 1

    .line 1
    const v0, 0x43c10b3d

    mul-float/2addr p1, v0

    const/high16 v0, 0x43200000    # 160.0f

    mul-float/2addr p1, v0

    mul-float/2addr p1, p0

    return p1
.end method
