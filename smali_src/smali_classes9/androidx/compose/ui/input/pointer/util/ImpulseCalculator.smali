.class final Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private initialCondition:Z

.field private previousT:J

.field private previousX:F

.field private work:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const-wide v0, 0x7fffffffffffffffL

    .line 9
    .line 10
    iput-wide v0, p0, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;->previousT:J

    .line 11
    .line 12
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 13
    .line 14
    iput v0, p0, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;->previousX:F

    .line 15
    const/4 v0, 0x1

    .line 16
    .line 17
    iput-boolean v0, p0, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;->initialCondition:Z

    .line 18
    return-void
.end method


# virtual methods
.method public final a(JF)V
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;->previousT:J

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    const-wide v2, 0x7fffffffffffffffL

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget v0, p0, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;->previousX:F

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;->previousT:J

    .line 23
    .line 24
    cmp-long v0, p1, v0

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iput p3, p0, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;->previousX:F

    .line 29
    return-void

    .line 30
    .line 31
    :cond_1
    iget v0, p0, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;->work:F

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->a(F)F

    .line 35
    move-result v0

    .line 36
    .line 37
    iget v1, p0, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;->previousX:F

    .line 38
    .line 39
    sub-float v1, p3, v1

    .line 40
    .line 41
    iget-wide v2, p0, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;->previousT:J

    .line 42
    .line 43
    sub-long v2, p1, v2

    .line 44
    long-to-float v2, v2

    .line 45
    .line 46
    .line 47
    const v3, 0x3a83126f    # 0.001f

    .line 48
    mul-float/2addr v2, v3

    .line 49
    div-float/2addr v1, v2

    .line 50
    .line 51
    iget v2, p0, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;->work:F

    .line 52
    .line 53
    sub-float v0, v1, v0

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 57
    move-result v1

    .line 58
    mul-float/2addr v0, v1

    .line 59
    add-float/2addr v2, v0

    .line 60
    .line 61
    iput v2, p0, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;->work:F

    .line 62
    .line 63
    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;->initialCondition:Z

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    const/high16 v0, 0x3f000000    # 0.5f

    .line 68
    mul-float/2addr v2, v0

    .line 69
    .line 70
    iput v2, p0, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;->work:F

    .line 71
    const/4 v0, 0x0

    .line 72
    .line 73
    iput-boolean v0, p0, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;->initialCondition:Z

    .line 74
    .line 75
    :cond_2
    iput-wide p1, p0, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;->previousT:J

    .line 76
    .line 77
    iput p3, p0, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;->previousX:F

    .line 78
    return-void

    .line 79
    .line 80
    :cond_3
    :goto_0
    iput-wide p1, p0, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;->previousT:J

    .line 81
    .line 82
    iput p3, p0, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;->previousX:F

    .line 83
    return-void
.end method

.method public final b()F
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;->work:F

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->a(F)F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final c()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;->work:F

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;->previousT:J

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;->previousX:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;->initialCondition:Z

    return-void
.end method
