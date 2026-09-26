.class public final Landroidx/compose/animation/core/FloatSpringSpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/animation/core/FloatAnimationSpec;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final dampingRatio:F

.field private final spring:Landroidx/compose/animation/core/SpringSimulation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final stiffness:F

.field private final visibilityThreshold:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/FloatSpringSpec;-><init>(FFFILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/animation/core/FloatSpringSpec;->dampingRatio:F

    iput p2, p0, Landroidx/compose/animation/core/FloatSpringSpec;->stiffness:F

    iput p3, p0, Landroidx/compose/animation/core/FloatSpringSpec;->visibilityThreshold:F

    .line 3
    new-instance p3, Landroidx/compose/animation/core/SpringSimulation;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p3, v0}, Landroidx/compose/animation/core/SpringSimulation;-><init>(F)V

    .line 4
    invoke-virtual {p3, p1}, Landroidx/compose/animation/core/SpringSimulation;->d(F)V

    .line 5
    invoke-virtual {p3, p2}, Landroidx/compose/animation/core/SpringSimulation;->f(F)V

    iput-object p3, p0, Landroidx/compose/animation/core/FloatSpringSpec;->spring:Landroidx/compose/animation/core/SpringSimulation;

    return-void
.end method

.method public synthetic constructor <init>(FFFILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const p2, 0x44bb8000    # 1500.0f

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const p3, 0x3c23d70a    # 0.01f

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/animation/core/FloatSpringSpec;-><init>(FFF)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedAnimationSpec;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/animation/core/c;->b(Landroidx/compose/animation/core/FloatAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedAnimationSpec;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Landroidx/compose/animation/core/c;->c(Landroidx/compose/animation/core/FloatAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;

    move-result-object p1

    return-object p1
.end method

.method public b(JFFF)F
    .locals 2

    .line 1
    .line 2
    .line 3
    const-wide/32 v0, 0xf4240

    .line 4
    div-long/2addr p1, v0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/animation/core/FloatSpringSpec;->spring:Landroidx/compose/animation/core/SpringSimulation;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p4}, Landroidx/compose/animation/core/SpringSimulation;->e(F)V

    .line 10
    .line 11
    iget-object p4, p0, Landroidx/compose/animation/core/FloatSpringSpec;->spring:Landroidx/compose/animation/core/SpringSimulation;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p4, p3, p5, p1, p2}, Landroidx/compose/animation/core/SpringSimulation;->g(FFJ)J

    .line 15
    move-result-wide p1

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2}, Landroidx/compose/animation/core/Motion;->d(J)F

    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public c(FFF)J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/animation/core/FloatSpringSpec;->spring:Landroidx/compose/animation/core/SpringSimulation;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/animation/core/SpringSimulation;->b()F

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/animation/core/FloatSpringSpec;->spring:Landroidx/compose/animation/core/SpringSimulation;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/animation/core/SpringSimulation;->a()F

    .line 12
    move-result v1

    .line 13
    sub-float/2addr p1, p2

    .line 14
    .line 15
    iget p2, p0, Landroidx/compose/animation/core/FloatSpringSpec;->visibilityThreshold:F

    .line 16
    div-float/2addr p1, p2

    .line 17
    div-float/2addr p3, p2

    .line 18
    .line 19
    const/high16 p2, 0x3f800000    # 1.0f

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1, p3, p1, p2}, Landroidx/compose/animation/core/SpringEstimationKt;->b(FFFFF)J

    .line 23
    move-result-wide p1

    .line 24
    .line 25
    .line 26
    const-wide/32 v0, 0xf4240

    .line 27
    mul-long/2addr p1, v0

    .line 28
    return-wide p1
.end method

.method public d(FFF)F
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public e(JFFF)F
    .locals 2

    .line 1
    .line 2
    .line 3
    const-wide/32 v0, 0xf4240

    .line 4
    div-long/2addr p1, v0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/animation/core/FloatSpringSpec;->spring:Landroidx/compose/animation/core/SpringSimulation;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p4}, Landroidx/compose/animation/core/SpringSimulation;->e(F)V

    .line 10
    .line 11
    iget-object p4, p0, Landroidx/compose/animation/core/FloatSpringSpec;->spring:Landroidx/compose/animation/core/SpringSimulation;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p4, p3, p5, p1, p2}, Landroidx/compose/animation/core/SpringSimulation;->g(FFJ)J

    .line 15
    move-result-wide p1

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2}, Landroidx/compose/animation/core/Motion;->c(J)F

    .line 19
    move-result p1

    .line 20
    return p1
.end method
