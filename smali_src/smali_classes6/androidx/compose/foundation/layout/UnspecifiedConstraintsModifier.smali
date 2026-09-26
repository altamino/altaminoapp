.class final Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;
.super Landroidx/compose/ui/platform/InspectorValueInfo;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/LayoutModifier;


# instance fields
.field private final minHeight:F

.field private final minWidth:F


# direct methods
.method private constructor <init>(FFLe8/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p3}, Landroidx/compose/ui/platform/InspectorValueInfo;-><init>(Le8/l;)V

    iput p1, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minWidth:F

    iput p2, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minHeight:F

    return-void
.end method

.method public synthetic constructor <init>(FFLe8/l;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 2
    sget-object p1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    move-result p1

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 3
    sget-object p2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    move-result p2

    :cond_1
    const/4 p4, 0x0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;-><init>(FFLe8/l;Lkotlin/jvm/internal/k;)V

    return-void
.end method

.method public synthetic constructor <init>(FFLe8/l;Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;-><init>(FFLe8/l;)V

    return-void
.end method


# virtual methods
.method public synthetic B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/a;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    return-object p1
.end method

.method public K(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/IntrinsicMeasurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "measurable"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->Y(I)I

    .line 14
    move-result p2

    .line 15
    .line 16
    iget p3, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minWidth:F

    .line 17
    .line 18
    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    .line 22
    move-result v0

    .line 23
    .line 24
    .line 25
    invoke-static {p3, v0}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 26
    move-result p3

    .line 27
    .line 28
    if-nez p3, :cond_0

    .line 29
    .line 30
    iget p3, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minWidth:F

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, p3}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 34
    move-result p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-static {p2, p1}, Lj8/m;->e(II)I

    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public N0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 7
    .param p1    # Landroidx/compose/ui/layout/MeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/Measurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$measure"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "measurable"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget v0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minWidth:F

    .line 13
    .line 14
    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    .line 18
    move-result v2

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x0

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->p(J)I

    .line 29
    move-result v0

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    iget v0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minWidth:F

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 37
    move-result v0

    .line 38
    .line 39
    .line 40
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 41
    move-result v3

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v3}, Lj8/m;->j(II)I

    .line 45
    move-result v0

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v2}, Lj8/m;->e(II)I

    .line 49
    move-result v0

    .line 50
    goto :goto_0

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->p(J)I

    .line 54
    move-result v0

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 58
    move-result v3

    .line 59
    .line 60
    iget v4, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minHeight:F

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    .line 64
    move-result v1

    .line 65
    .line 66
    .line 67
    invoke-static {v4, v1}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 68
    move-result v1

    .line 69
    .line 70
    if-nez v1, :cond_1

    .line 71
    .line 72
    .line 73
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->o(J)I

    .line 74
    move-result v1

    .line 75
    .line 76
    if-nez v1, :cond_1

    .line 77
    .line 78
    iget v1, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minHeight:F

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 82
    move-result v1

    .line 83
    .line 84
    .line 85
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 86
    move-result v4

    .line 87
    .line 88
    .line 89
    invoke-static {v1, v4}, Lj8/m;->j(II)I

    .line 90
    move-result v1

    .line 91
    .line 92
    .line 93
    invoke-static {v1, v2}, Lj8/m;->e(II)I

    .line 94
    move-result v1

    .line 95
    goto :goto_1

    .line 96
    .line 97
    .line 98
    :cond_1
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->o(J)I

    .line 99
    move-result v1

    .line 100
    .line 101
    .line 102
    :goto_1
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 103
    move-result p3

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v3, v1, p3}, Landroidx/compose/ui/unit/ConstraintsKt;->a(IIII)J

    .line 107
    move-result-wide p3

    .line 108
    .line 109
    .line 110
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 111
    move-result-object p2

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 115
    move-result v1

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 119
    move-result v2

    .line 120
    const/4 v3, 0x0

    .line 121
    .line 122
    new-instance v4, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier$measure$1;

    .line 123
    .line 124
    .line 125
    invoke-direct {v4, p2}, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    .line 126
    const/4 v5, 0x4

    .line 127
    const/4 v6, 0x0

    .line 128
    move-object v0, p1

    .line 129
    .line 130
    .line 131
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 132
    move-result-object p1

    .line 133
    return-object p1
.end method

.method public S(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/IntrinsicMeasurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "measurable"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->a0(I)I

    .line 14
    move-result p2

    .line 15
    .line 16
    iget p3, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minWidth:F

    .line 17
    .line 18
    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    .line 22
    move-result v0

    .line 23
    .line 24
    .line 25
    invoke-static {p3, v0}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 26
    move-result p3

    .line 27
    .line 28
    if-nez p3, :cond_0

    .line 29
    .line 30
    iget p3, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minWidth:F

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, p3}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 34
    move-result p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-static {p2, p1}, Lj8/m;->e(II)I

    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public synthetic V(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/b;->c(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a0(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/b;->b(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c0(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/IntrinsicMeasurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "measurable"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->M(I)I

    .line 14
    move-result p2

    .line 15
    .line 16
    iget p3, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minHeight:F

    .line 17
    .line 18
    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    .line 22
    move-result v0

    .line 23
    .line 24
    .line 25
    invoke-static {p3, v0}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 26
    move-result p3

    .line 27
    .line 28
    if-nez p3, :cond_0

    .line 29
    .line 30
    iget p3, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minHeight:F

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, p3}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 34
    move-result p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-static {p2, p1}, Lj8/m;->e(II)I

    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public synthetic d0(Le8/l;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/b;->a(Landroidx/compose/ui/Modifier$Element;Le8/l;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    iget v0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minWidth:F

    .line 9
    .line 10
    check-cast p1, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;

    .line 11
    .line 12
    iget v2, p1, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minWidth:F

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget v0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minHeight:F

    .line 21
    .line 22
    iget p1, p1, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minHeight:F

    .line 23
    .line 24
    .line 25
    invoke-static {v0, p1}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    const/4 v1, 0x1

    .line 30
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minWidth:F

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->j(F)I

    .line 6
    move-result v0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget v1, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minHeight:F

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->j(F)I

    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public s0(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/IntrinsicMeasurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "measurable"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->V(I)I

    .line 14
    move-result p2

    .line 15
    .line 16
    iget p3, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minHeight:F

    .line 17
    .line 18
    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    .line 22
    move-result v0

    .line 23
    .line 24
    .line 25
    invoke-static {p3, v0}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 26
    move-result p3

    .line 27
    .line 28
    if-nez p3, :cond_0

    .line 29
    .line 30
    iget p3, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;->minHeight:F

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, p3}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 34
    move-result p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-static {p2, p1}, Lj8/m;->e(II)I

    .line 40
    move-result p1

    .line 41
    return p1
.end method
