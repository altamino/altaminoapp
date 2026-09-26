.class final Landroidx/compose/animation/core/SpringEstimationKt$estimateOverDamped$fnPrime$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/core/SpringEstimationKt;->g(Lw7/u;DDD)D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Ljava/lang/Double;",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $c1:D

.field final synthetic $c2:D

.field final synthetic $r1:D

.field final synthetic $r2:D


# direct methods
.method constructor <init>(DDDD)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/animation/core/SpringEstimationKt$estimateOverDamped$fnPrime$1;->$c1:D

    iput-wide p3, p0, Landroidx/compose/animation/core/SpringEstimationKt$estimateOverDamped$fnPrime$1;->$r1:D

    iput-wide p5, p0, Landroidx/compose/animation/core/SpringEstimationKt$estimateOverDamped$fnPrime$1;->$c2:D

    iput-wide p7, p0, Landroidx/compose/animation/core/SpringEstimationKt$estimateOverDamped$fnPrime$1;->$r2:D

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(D)Ljava/lang/Double;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/compose/animation/core/SpringEstimationKt$estimateOverDamped$fnPrime$1;->$c1:D

    .line 3
    .line 4
    iget-wide v2, p0, Landroidx/compose/animation/core/SpringEstimationKt$estimateOverDamped$fnPrime$1;->$r1:D

    .line 5
    mul-double/2addr v0, v2

    .line 6
    mul-double/2addr v2, p1

    .line 7
    .line 8
    .line 9
    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    .line 10
    move-result-wide v2

    .line 11
    mul-double/2addr v0, v2

    .line 12
    .line 13
    iget-wide v2, p0, Landroidx/compose/animation/core/SpringEstimationKt$estimateOverDamped$fnPrime$1;->$c2:D

    .line 14
    .line 15
    iget-wide v4, p0, Landroidx/compose/animation/core/SpringEstimationKt$estimateOverDamped$fnPrime$1;->$r2:D

    .line 16
    mul-double/2addr v2, v4

    .line 17
    mul-double/2addr v4, p1

    .line 18
    .line 19
    .line 20
    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    .line 21
    move-result-wide p1

    .line 22
    mul-double/2addr v2, p1

    .line 23
    add-double/2addr v0, v2

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Number;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Landroidx/compose/animation/core/SpringEstimationKt$estimateOverDamped$fnPrime$1;->a(D)Ljava/lang/Double;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
