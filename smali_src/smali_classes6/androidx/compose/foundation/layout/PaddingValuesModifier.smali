.class final Landroidx/compose/foundation/layout/PaddingValuesModifier;
.super Landroidx/compose/ui/platform/InspectorValueInfo;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/LayoutModifier;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPadding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Padding.kt\nandroidx/compose/foundation/layout/PaddingValuesModifier\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,436:1\n155#2:437\n155#2:438\n155#2:439\n155#2:440\n*S KotlinDebug\n*F\n+ 1 Padding.kt\nandroidx/compose/foundation/layout/PaddingValuesModifier\n*L\n405#1:437\n406#1:438\n407#1:439\n408#1:440\n*E\n"
.end annotation


# instance fields
.field private final paddingValues:Landroidx/compose/foundation/layout/PaddingValues;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/PaddingValues;Le8/l;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "paddingValues"

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
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p2}, Landroidx/compose/ui/platform/InspectorValueInfo;-><init>(Le8/l;)V

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/compose/foundation/layout/PaddingValuesModifier;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 16
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
    .locals 10
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
    iget-object v0, p0, Landroidx/compose/foundation/layout/PaddingValuesModifier;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Landroidx/compose/foundation/layout/PaddingValues;->b(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    int-to-float v1, v1

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 26
    move-result v2

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->e(FF)I

    .line 30
    move-result v0

    .line 31
    .line 32
    if-ltz v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/compose/foundation/layout/PaddingValuesModifier;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 35
    .line 36
    .line 37
    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    .line 38
    move-result v0

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 42
    move-result v2

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->e(FF)I

    .line 46
    move-result v0

    .line 47
    .line 48
    if-ltz v0, :cond_0

    .line 49
    .line 50
    iget-object v0, p0, Landroidx/compose/foundation/layout/PaddingValuesModifier;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 51
    .line 52
    .line 53
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, v2}, Landroidx/compose/foundation/layout/PaddingValues;->c(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 58
    move-result v0

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 62
    move-result v2

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->e(FF)I

    .line 66
    move-result v0

    .line 67
    .line 68
    if-ltz v0, :cond_0

    .line 69
    .line 70
    iget-object v0, p0, Landroidx/compose/foundation/layout/PaddingValuesModifier;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 71
    .line 72
    .line 73
    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    .line 74
    move-result v0

    .line 75
    .line 76
    .line 77
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 78
    move-result v1

    .line 79
    .line 80
    .line 81
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->e(FF)I

    .line 82
    move-result v0

    .line 83
    .line 84
    if-ltz v0, :cond_0

    .line 85
    .line 86
    iget-object v0, p0, Landroidx/compose/foundation/layout/PaddingValuesModifier;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 87
    .line 88
    .line 89
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    .line 93
    invoke-interface {v0, v1}, Landroidx/compose/foundation/layout/PaddingValues;->b(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 94
    move-result v0

    .line 95
    .line 96
    .line 97
    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 98
    move-result v0

    .line 99
    .line 100
    iget-object v1, p0, Landroidx/compose/foundation/layout/PaddingValuesModifier;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 101
    .line 102
    .line 103
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 104
    move-result-object v2

    .line 105
    .line 106
    .line 107
    invoke-interface {v1, v2}, Landroidx/compose/foundation/layout/PaddingValues;->c(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 108
    move-result v1

    .line 109
    .line 110
    .line 111
    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 112
    move-result v1

    .line 113
    add-int/2addr v0, v1

    .line 114
    .line 115
    iget-object v1, p0, Landroidx/compose/foundation/layout/PaddingValuesModifier;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 116
    .line 117
    .line 118
    invoke-interface {v1}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    .line 119
    move-result v1

    .line 120
    .line 121
    .line 122
    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 123
    move-result v1

    .line 124
    .line 125
    iget-object v2, p0, Landroidx/compose/foundation/layout/PaddingValuesModifier;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 126
    .line 127
    .line 128
    invoke-interface {v2}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    .line 129
    move-result v2

    .line 130
    .line 131
    .line 132
    invoke-interface {p1, v2}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 133
    move-result v2

    .line 134
    add-int/2addr v1, v2

    .line 135
    neg-int v2, v0

    .line 136
    neg-int v3, v1

    .line 137
    .line 138
    .line 139
    invoke-static {p3, p4, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->i(JII)J

    .line 140
    move-result-wide v2

    .line 141
    .line 142
    .line 143
    invoke-interface {p2, v2, v3}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 144
    move-result-object p2

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 148
    move-result v2

    .line 149
    add-int/2addr v2, v0

    .line 150
    .line 151
    .line 152
    invoke-static {p3, p4, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->g(JI)I

    .line 153
    move-result v4

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 157
    move-result v0

    .line 158
    add-int/2addr v0, v1

    .line 159
    .line 160
    .line 161
    invoke-static {p3, p4, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->f(JI)I

    .line 162
    move-result v5

    .line 163
    const/4 v6, 0x0

    .line 164
    .line 165
    new-instance v7, Landroidx/compose/foundation/layout/PaddingValuesModifier$measure$2;

    .line 166
    .line 167
    .line 168
    invoke-direct {v7, p2, p1, p0}, Landroidx/compose/foundation/layout/PaddingValuesModifier$measure$2;-><init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/foundation/layout/PaddingValuesModifier;)V

    .line 169
    const/4 v8, 0x4

    .line 170
    const/4 v9, 0x0

    .line 171
    move-object v3, p1

    .line 172
    .line 173
    .line 174
    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 175
    move-result-object p1

    .line 176
    return-object p1

    .line 177
    .line 178
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 179
    .line 180
    const-string p2, "Padding must be non-negative"

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 184
    move-result-object p2

    .line 185
    .line 186
    .line 187
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 188
    throw p1
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

.method public final a()Landroidx/compose/foundation/layout/PaddingValues;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/PaddingValuesModifier;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    return-object v0
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
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/compose/foundation/layout/PaddingValuesModifier;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroidx/compose/foundation/layout/PaddingValuesModifier;

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    .line 10
    :goto_0
    if-nez p1, :cond_1

    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    .line 14
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/layout/PaddingValuesModifier;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 15
    .line 16
    iget-object p1, p1, Landroidx/compose/foundation/layout/PaddingValuesModifier;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/layout/PaddingValuesModifier;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public synthetic s0(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/b;->c(Landroidx/compose/ui/layout/LayoutModifier;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    move-result p1

    return p1
.end method
