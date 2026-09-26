.class final Landroidx/compose/foundation/layout/FillModifier;
.super Landroidx/compose/ui/platform/InspectorValueInfo;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/LayoutModifier;


# instance fields
.field private final direction:Landroidx/compose/foundation/layout/Direction;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fraction:F


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/Direction;FLe8/l;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/layout/Direction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/Direction;",
            "F",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "direction"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "inspectorInfo"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p3}, Landroidx/compose/ui/platform/InspectorValueInfo;-><init>(Le8/l;)V

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/compose/foundation/layout/FillModifier;->direction:Landroidx/compose/foundation/layout/Direction;

    .line 16
    .line 17
    iput p2, p0, Landroidx/compose/foundation/layout/FillModifier;->fraction:F

    .line 18
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

.method public synthetic K(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/b;->d(Landroidx/compose/ui/layout/LayoutModifier;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    move-result p1

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
    .line 13
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->j(J)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/compose/foundation/layout/FillModifier;->direction:Landroidx/compose/foundation/layout/Direction;

    .line 19
    .line 20
    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Vertical:Landroidx/compose/foundation/layout/Direction;

    .line 21
    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 26
    move-result v0

    .line 27
    int-to-float v0, v0

    .line 28
    .line 29
    iget v1, p0, Landroidx/compose/foundation/layout/FillModifier;->fraction:F

    .line 30
    mul-float/2addr v0, v1

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lg8/a;->c(F)I

    .line 34
    move-result v0

    .line 35
    .line 36
    .line 37
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->p(J)I

    .line 38
    move-result v1

    .line 39
    .line 40
    .line 41
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 42
    move-result v2

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v1, v2}, Lj8/m;->n(III)I

    .line 46
    move-result v0

    .line 47
    move v1, v0

    .line 48
    goto :goto_0

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->p(J)I

    .line 52
    move-result v0

    .line 53
    .line 54
    .line 55
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 56
    move-result v1

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->i(J)Z

    .line 60
    move-result v2

    .line 61
    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    iget-object v2, p0, Landroidx/compose/foundation/layout/FillModifier;->direction:Landroidx/compose/foundation/layout/Direction;

    .line 65
    .line 66
    sget-object v3, Landroidx/compose/foundation/layout/Direction;->Horizontal:Landroidx/compose/foundation/layout/Direction;

    .line 67
    .line 68
    if-eq v2, v3, :cond_1

    .line 69
    .line 70
    .line 71
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 72
    move-result v2

    .line 73
    int-to-float v2, v2

    .line 74
    .line 75
    iget v3, p0, Landroidx/compose/foundation/layout/FillModifier;->fraction:F

    .line 76
    mul-float/2addr v2, v3

    .line 77
    .line 78
    .line 79
    invoke-static {v2}, Lg8/a;->c(F)I

    .line 80
    move-result v2

    .line 81
    .line 82
    .line 83
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->o(J)I

    .line 84
    move-result v3

    .line 85
    .line 86
    .line 87
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 88
    move-result p3

    .line 89
    .line 90
    .line 91
    invoke-static {v2, v3, p3}, Lj8/m;->n(III)I

    .line 92
    move-result p3

    .line 93
    move p4, p3

    .line 94
    goto :goto_1

    .line 95
    .line 96
    .line 97
    :cond_1
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->o(J)I

    .line 98
    move-result v2

    .line 99
    .line 100
    .line 101
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 102
    move-result p3

    .line 103
    move p4, p3

    .line 104
    move p3, v2

    .line 105
    .line 106
    .line 107
    :goto_1
    invoke-static {v0, v1, p3, p4}, Landroidx/compose/ui/unit/ConstraintsKt;->a(IIII)J

    .line 108
    move-result-wide p3

    .line 109
    .line 110
    .line 111
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 112
    move-result-object p2

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 116
    move-result v1

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 120
    move-result v2

    .line 121
    const/4 v3, 0x0

    .line 122
    .line 123
    new-instance v4, Landroidx/compose/foundation/layout/FillModifier$measure$1;

    .line 124
    .line 125
    .line 126
    invoke-direct {v4, p2}, Landroidx/compose/foundation/layout/FillModifier$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    .line 127
    const/4 v5, 0x4

    .line 128
    const/4 v6, 0x0

    .line 129
    move-object v0, p1

    .line 130
    .line 131
    .line 132
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 133
    move-result-object p1

    .line 134
    return-object p1
.end method

.method public synthetic S(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/b;->b(Landroidx/compose/ui/layout/LayoutModifier;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    move-result p1

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

.method public synthetic c0(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/b;->a(Landroidx/compose/ui/layout/LayoutModifier;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    move-result p1

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
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/compose/foundation/layout/FillModifier;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/foundation/layout/FillModifier;->direction:Landroidx/compose/foundation/layout/Direction;

    .line 7
    .line 8
    check-cast p1, Landroidx/compose/foundation/layout/FillModifier;

    .line 9
    .line 10
    iget-object v1, p1, Landroidx/compose/foundation/layout/FillModifier;->direction:Landroidx/compose/foundation/layout/Direction;

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    iget v0, p0, Landroidx/compose/foundation/layout/FillModifier;->fraction:F

    .line 15
    .line 16
    iget p1, p1, Landroidx/compose/foundation/layout/FillModifier;->fraction:F

    .line 17
    .line 18
    cmpg-float p1, v0, p1

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/layout/FillModifier;->direction:Landroidx/compose/foundation/layout/Direction;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget v1, p0, Landroidx/compose/foundation/layout/FillModifier;->fraction:F

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public synthetic s0(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/b;->c(Landroidx/compose/ui/layout/LayoutModifier;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    move-result p1

    return p1
.end method
