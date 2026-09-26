.class public final Landroidx/compose/animation/core/SpringSimulationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSpringSimulation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpringSimulation.kt\nandroidx/compose/animation/core/SpringSimulationKt\n+ 2 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,244:1\n25#2,3:245\n*S KotlinDebug\n*F\n+ 1 SpringSimulation.kt\nandroidx/compose/animation/core/SpringSimulationKt\n*L\n59#1:245,3\n*E\n"
.end annotation


# static fields
.field private static final UNSET:F = 3.4028235E38f

.field private static final VelocityThresholdMultiplier:D = 62.5


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final a(FF)J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 4
    move-result p0

    .line 5
    int-to-long v0, p0

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 9
    move-result p0

    .line 10
    int-to-long p0, p0

    .line 11
    .line 12
    const/16 v2, 0x20

    .line 13
    shl-long/2addr v0, v2

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const-wide v2, 0xffffffffL

    .line 19
    and-long/2addr p0, v2

    .line 20
    or-long/2addr p0, v0

    .line 21
    .line 22
    .line 23
    invoke-static {p0, p1}, Landroidx/compose/animation/core/Motion;->a(J)J

    .line 24
    move-result-wide p0

    .line 25
    return-wide p0
.end method

.method public static final b()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/animation/core/SpringSimulationKt;->UNSET:F

    return v0
.end method
