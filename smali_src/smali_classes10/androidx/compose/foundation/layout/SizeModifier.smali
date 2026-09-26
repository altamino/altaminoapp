.class final Landroidx/compose/foundation/layout/SizeModifier;
.super Landroidx/compose/ui/platform/InspectorValueInfo;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/LayoutModifier;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSize.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Size.kt\nandroidx/compose/foundation/layout/SizeModifier\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,1024:1\n155#2:1025\n155#2:1026\n*S KotlinDebug\n*F\n+ 1 Size.kt\nandroidx/compose/foundation/layout/SizeModifier\n*L\n714#1:1025\n719#1:1026\n*E\n"
.end annotation


# instance fields
.field private final enforceIncoming:Z

.field private final maxHeight:F

.field private final maxWidth:F

.field private final minHeight:F

.field private final minWidth:F


# direct methods
.method private constructor <init>(FFFFZLe8/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFZ",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p6}, Landroidx/compose/ui/platform/InspectorValueInfo;-><init>(Le8/l;)V

    iput p1, p0, Landroidx/compose/foundation/layout/SizeModifier;->minWidth:F

    iput p2, p0, Landroidx/compose/foundation/layout/SizeModifier;->minHeight:F

    iput p3, p0, Landroidx/compose/foundation/layout/SizeModifier;->maxWidth:F

    iput p4, p0, Landroidx/compose/foundation/layout/SizeModifier;->maxHeight:F

    iput-boolean p5, p0, Landroidx/compose/foundation/layout/SizeModifier;->enforceIncoming:Z

    return-void
.end method

.method public synthetic constructor <init>(FFFFZLe8/l;ILkotlin/jvm/internal/k;)V
    .locals 9

    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    move-result v0

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_2

    .line 4
    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    move-result v0

    move v4, v0

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_3

    .line 5
    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    move-result v0

    move v5, v0

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    const/4 v8, 0x0

    move-object v1, p0

    move v6, p5

    move-object v7, p6

    .line 6
    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/layout/SizeModifier;-><init>(FFFFZLe8/l;Lkotlin/jvm/internal/k;)V

    return-void
.end method

.method public synthetic constructor <init>(FFFFZLe8/l;Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Landroidx/compose/foundation/layout/SizeModifier;-><init>(FFFFZLe8/l;)V

    return-void
.end method

.method private final a(Landroidx/compose/ui/unit/Density;)J
    .locals 7

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/foundation/layout/SizeModifier;->maxWidth:F

    .line 3
    .line 4
    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    .line 8
    move-result v2

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    .line 15
    const v2, 0x7fffffff

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget v0, p0, Landroidx/compose/foundation/layout/SizeModifier;->maxWidth:F

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 24
    move-result-object v0

    .line 25
    int-to-float v4, v3

    .line 26
    .line 27
    .line 28
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 29
    move-result v4

    .line 30
    .line 31
    .line 32
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 33
    move-result-object v4

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v4}, Lj8/m;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    check-cast v0, Landroidx/compose/ui/unit/Dp;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp;->l()F

    .line 43
    move-result v0

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 47
    move-result v0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move v0, v2

    .line 50
    .line 51
    :goto_0
    iget v4, p0, Landroidx/compose/foundation/layout/SizeModifier;->maxHeight:F

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    .line 55
    move-result v5

    .line 56
    .line 57
    .line 58
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 59
    move-result v4

    .line 60
    .line 61
    if-nez v4, :cond_1

    .line 62
    .line 63
    iget v4, p0, Landroidx/compose/foundation/layout/SizeModifier;->maxHeight:F

    .line 64
    .line 65
    .line 66
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 67
    move-result-object v4

    .line 68
    int-to-float v5, v3

    .line 69
    .line 70
    .line 71
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 72
    move-result v5

    .line 73
    .line 74
    .line 75
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 76
    move-result-object v5

    .line 77
    .line 78
    .line 79
    invoke-static {v4, v5}, Lj8/m;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    .line 80
    move-result-object v4

    .line 81
    .line 82
    check-cast v4, Landroidx/compose/ui/unit/Dp;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4}, Landroidx/compose/ui/unit/Dp;->l()F

    .line 86
    move-result v4

    .line 87
    .line 88
    .line 89
    invoke-interface {p1, v4}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 90
    move-result v4

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    move v4, v2

    .line 93
    .line 94
    :goto_1
    iget v5, p0, Landroidx/compose/foundation/layout/SizeModifier;->minWidth:F

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    .line 98
    move-result v6

    .line 99
    .line 100
    .line 101
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 102
    move-result v5

    .line 103
    .line 104
    if-nez v5, :cond_2

    .line 105
    .line 106
    iget v5, p0, Landroidx/compose/foundation/layout/SizeModifier;->minWidth:F

    .line 107
    .line 108
    .line 109
    invoke-interface {p1, v5}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 110
    move-result v5

    .line 111
    .line 112
    .line 113
    invoke-static {v5, v0}, Lj8/m;->j(II)I

    .line 114
    move-result v5

    .line 115
    .line 116
    .line 117
    invoke-static {v5, v3}, Lj8/m;->e(II)I

    .line 118
    move-result v5

    .line 119
    .line 120
    if-eq v5, v2, :cond_2

    .line 121
    goto :goto_2

    .line 122
    :cond_2
    move v5, v3

    .line 123
    .line 124
    :goto_2
    iget v6, p0, Landroidx/compose/foundation/layout/SizeModifier;->minHeight:F

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    .line 128
    move-result v1

    .line 129
    .line 130
    .line 131
    invoke-static {v6, v1}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 132
    move-result v1

    .line 133
    .line 134
    if-nez v1, :cond_3

    .line 135
    .line 136
    iget v1, p0, Landroidx/compose/foundation/layout/SizeModifier;->minHeight:F

    .line 137
    .line 138
    .line 139
    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 140
    move-result p1

    .line 141
    .line 142
    .line 143
    invoke-static {p1, v4}, Lj8/m;->j(II)I

    .line 144
    move-result p1

    .line 145
    .line 146
    .line 147
    invoke-static {p1, v3}, Lj8/m;->e(II)I

    .line 148
    move-result p1

    .line 149
    .line 150
    if-eq p1, v2, :cond_3

    .line 151
    move v3, p1

    .line 152
    .line 153
    .line 154
    :cond_3
    invoke-static {v5, v0, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->a(IIII)J

    .line 155
    move-result-wide v0

    .line 156
    return-wide v0
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
    .locals 2
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
    invoke-direct {p0, p1}, Landroidx/compose/foundation/layout/SizeModifier;->a(Landroidx/compose/ui/unit/Density;)J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->l(J)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 24
    move-result p1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->Y(I)I

    .line 29
    move-result p1

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1, p1}, Landroidx/compose/ui/unit/ConstraintsKt;->g(JI)I

    .line 33
    move-result p1

    .line 34
    :goto_0
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
    invoke-direct {p0, p1}, Landroidx/compose/foundation/layout/SizeModifier;->a(Landroidx/compose/ui/unit/Density;)J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    iget-boolean v2, p0, Landroidx/compose/foundation/layout/SizeModifier;->enforceIncoming:Z

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-static {p3, p4, v0, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->e(JJ)J

    .line 22
    move-result-wide p3

    .line 23
    .line 24
    goto/16 :goto_4

    .line 25
    .line 26
    :cond_0
    iget v2, p0, Landroidx/compose/foundation/layout/SizeModifier;->minWidth:F

    .line 27
    .line 28
    sget-object v3, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    .line 32
    move-result v4

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v4}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 36
    move-result v2

    .line 37
    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->p(J)I

    .line 42
    move-result v2

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->p(J)I

    .line 47
    move-result v2

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 51
    move-result v4

    .line 52
    .line 53
    .line 54
    invoke-static {v2, v4}, Lj8/m;->j(II)I

    .line 55
    move-result v2

    .line 56
    .line 57
    :goto_0
    iget v4, p0, Landroidx/compose/foundation/layout/SizeModifier;->maxWidth:F

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    .line 61
    move-result v5

    .line 62
    .line 63
    .line 64
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 65
    move-result v4

    .line 66
    .line 67
    if-nez v4, :cond_2

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 71
    move-result v4

    .line 72
    goto :goto_1

    .line 73
    .line 74
    .line 75
    :cond_2
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 76
    move-result v4

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->p(J)I

    .line 80
    move-result v5

    .line 81
    .line 82
    .line 83
    invoke-static {v4, v5}, Lj8/m;->e(II)I

    .line 84
    move-result v4

    .line 85
    .line 86
    :goto_1
    iget v5, p0, Landroidx/compose/foundation/layout/SizeModifier;->minHeight:F

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    .line 90
    move-result v6

    .line 91
    .line 92
    .line 93
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 94
    move-result v5

    .line 95
    .line 96
    if-nez v5, :cond_3

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->o(J)I

    .line 100
    move-result v5

    .line 101
    goto :goto_2

    .line 102
    .line 103
    .line 104
    :cond_3
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->o(J)I

    .line 105
    move-result v5

    .line 106
    .line 107
    .line 108
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 109
    move-result v6

    .line 110
    .line 111
    .line 112
    invoke-static {v5, v6}, Lj8/m;->j(II)I

    .line 113
    move-result v5

    .line 114
    .line 115
    :goto_2
    iget v6, p0, Landroidx/compose/foundation/layout/SizeModifier;->maxHeight:F

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    .line 119
    move-result v3

    .line 120
    .line 121
    .line 122
    invoke-static {v6, v3}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 123
    move-result v3

    .line 124
    .line 125
    if-nez v3, :cond_4

    .line 126
    .line 127
    .line 128
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 129
    move-result p3

    .line 130
    goto :goto_3

    .line 131
    .line 132
    .line 133
    :cond_4
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 134
    move-result p3

    .line 135
    .line 136
    .line 137
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->o(J)I

    .line 138
    move-result p4

    .line 139
    .line 140
    .line 141
    invoke-static {p3, p4}, Lj8/m;->e(II)I

    .line 142
    move-result p3

    .line 143
    .line 144
    .line 145
    :goto_3
    invoke-static {v2, v4, v5, p3}, Landroidx/compose/ui/unit/ConstraintsKt;->a(IIII)J

    .line 146
    move-result-wide p3

    .line 147
    .line 148
    .line 149
    :goto_4
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 150
    move-result-object p2

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 154
    move-result v1

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 158
    move-result v2

    .line 159
    const/4 v3, 0x0

    .line 160
    .line 161
    new-instance v4, Landroidx/compose/foundation/layout/SizeModifier$measure$1;

    .line 162
    .line 163
    .line 164
    invoke-direct {v4, p2}, Landroidx/compose/foundation/layout/SizeModifier$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    .line 165
    const/4 v5, 0x4

    .line 166
    const/4 v6, 0x0

    .line 167
    move-object v0, p1

    .line 168
    .line 169
    .line 170
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 171
    move-result-object p1

    .line 172
    return-object p1
.end method

.method public S(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 2
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
    invoke-direct {p0, p1}, Landroidx/compose/foundation/layout/SizeModifier;->a(Landroidx/compose/ui/unit/Density;)J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->l(J)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 24
    move-result p1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->a0(I)I

    .line 29
    move-result p1

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1, p1}, Landroidx/compose/ui/unit/ConstraintsKt;->g(JI)I

    .line 33
    move-result p1

    .line 34
    :goto_0
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
    .locals 2
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
    invoke-direct {p0, p1}, Landroidx/compose/foundation/layout/SizeModifier;->a(Landroidx/compose/ui/unit/Density;)J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->k(J)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 24
    move-result p1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->M(I)I

    .line 29
    move-result p1

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1, p1}, Landroidx/compose/ui/unit/ConstraintsKt;->f(JI)I

    .line 33
    move-result p1

    .line 34
    :goto_0
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
    instance-of v0, p1, Landroidx/compose/foundation/layout/SizeModifier;

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
    iget v0, p0, Landroidx/compose/foundation/layout/SizeModifier;->minWidth:F

    .line 9
    .line 10
    check-cast p1, Landroidx/compose/foundation/layout/SizeModifier;

    .line 11
    .line 12
    iget v2, p1, Landroidx/compose/foundation/layout/SizeModifier;->minWidth:F

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
    iget v0, p0, Landroidx/compose/foundation/layout/SizeModifier;->minHeight:F

    .line 21
    .line 22
    iget v2, p1, Landroidx/compose/foundation/layout/SizeModifier;->minHeight:F

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget v0, p0, Landroidx/compose/foundation/layout/SizeModifier;->maxWidth:F

    .line 31
    .line 32
    iget v2, p1, Landroidx/compose/foundation/layout/SizeModifier;->maxWidth:F

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget v0, p0, Landroidx/compose/foundation/layout/SizeModifier;->maxHeight:F

    .line 41
    .line 42
    iget v2, p1, Landroidx/compose/foundation/layout/SizeModifier;->maxHeight:F

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 46
    move-result v0

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-boolean v0, p0, Landroidx/compose/foundation/layout/SizeModifier;->enforceIncoming:Z

    .line 51
    .line 52
    iget-boolean p1, p1, Landroidx/compose/foundation/layout/SizeModifier;->enforceIncoming:Z

    .line 53
    .line 54
    if-ne v0, p1, :cond_1

    .line 55
    const/4 v1, 0x1

    .line 56
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/foundation/layout/SizeModifier;->minWidth:F

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
    iget v1, p0, Landroidx/compose/foundation/layout/SizeModifier;->minHeight:F

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->j(F)I

    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget v1, p0, Landroidx/compose/foundation/layout/SizeModifier;->maxWidth:F

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->j(F)I

    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    iget v1, p0, Landroidx/compose/foundation/layout/SizeModifier;->maxHeight:F

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->j(F)I

    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    return v0
.end method

.method public s0(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 2
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
    invoke-direct {p0, p1}, Landroidx/compose/foundation/layout/SizeModifier;->a(Landroidx/compose/ui/unit/Density;)J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->k(J)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 24
    move-result p1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->V(I)I

    .line 29
    move-result p1

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1, p1}, Landroidx/compose/ui/unit/ConstraintsKt;->f(JI)I

    .line 33
    move-result p1

    .line 34
    :goto_0
    return p1
.end method
