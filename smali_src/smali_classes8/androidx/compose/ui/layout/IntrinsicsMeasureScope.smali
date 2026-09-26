.class public final Landroidx/compose/ui/layout/IntrinsicsMeasureScope;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasureScope;
.implements Landroidx/compose/ui/unit/Density;


# instance fields
.field private final synthetic $$delegate_0:Landroidx/compose/ui/unit/Density;

.field private final layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "density"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "layoutDirection"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    iput-object p2, p0, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    .line 18
    return-void
.end method


# virtual methods
.method public E0()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {v0}, Landroidx/compose/ui/unit/Density;->E0()F

    move-result v0

    return v0
.end method

.method public synthetic G0(IILjava/util/Map;Le8/l;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/MeasureScope$-CC;->a(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p1

    return-object p1
.end method

.method public H0(F)F
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {v0, p1}, Landroidx/compose/ui/unit/Density;->H0(F)F

    move-result p1

    return p1
.end method

.method public L0(J)I
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/unit/Density;->L0(J)I

    move-result p1

    return p1
.end method

.method public P(F)F
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {v0, p1}, Landroidx/compose/ui/unit/Density;->P(F)F

    move-result p1

    return p1
.end method

.method public X(J)J
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/unit/Density;->X(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getDensity()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {v0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v0

    return v0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-object v0
.end method

.method public j(I)F
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {v0, p1}, Landroidx/compose/ui/unit/Density;->j(I)F

    move-result p1

    return p1
.end method

.method public j0(F)I
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {v0, p1}, Landroidx/compose/ui/unit/Density;->j0(F)I

    move-result p1

    return p1
.end method

.method public p0(J)F
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/unit/Density;->p0(J)F

    move-result p1

    return p1
.end method

.method public q(J)J
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/unit/Density;->q(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public s(J)F
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;->$$delegate_0:Landroidx/compose/ui/unit/Density;

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/unit/Density;->s(J)F

    move-result p1

    return p1
.end method
