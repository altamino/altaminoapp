.class public final Lcoil/compose/e;
.super Landroidx/compose/ui/platform/InspectorValueInfo;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/LayoutModifier;
.implements Landroidx/compose/ui/draw/DrawModifier;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContentPainterModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentPainterModifier.kt\ncoil/compose/ContentPainterModifier\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n+ 3 Size.kt\nandroidx/compose/ui/geometry/SizeKt\n+ 4 Utils.kt\ncoil/compose/UtilsKt\n+ 5 Size.kt\nandroidx/compose/ui/geometry/Size\n+ 6 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n*L\n1#1,197:1\n135#2:198\n152#3:199\n152#3:200\n152#3:201\n152#3:202\n159#3:203\n159#3:206\n87#4:204\n87#4:205\n66#5,5:207\n66#5,5:212\n120#6,4:217\n*S KotlinDebug\n*F\n+ 1 ContentPainterModifier.kt\ncoil/compose/ContentPainterModifier\n*L\n39#1:198\n63#1:199\n77#1:200\n91#1:201\n105#1:202\n119#1:203\n139#1:206\n122#1:204\n123#1:205\n159#1:207,5\n171#1:212,5\n187#1:217,4\n*E\n"
.end annotation


# instance fields
.field private final alignment:Landroidx/compose/ui/Alignment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final alpha:F

.field private final colorFilter:Landroidx/compose/ui/graphics/ColorFilter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final contentScale:Landroidx/compose/ui/layout/ContentScale;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final painter:Landroidx/compose/ui/graphics/painter/Painter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;)V
    .locals 7
    .param p1    # Landroidx/compose/ui/graphics/painter/Painter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Alignment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/layout/ContentScale;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcoil/compose/e$b;

    .line 9
    move-object v1, v0

    .line 10
    move-object v2, p1

    .line 11
    move-object v3, p2

    .line 12
    move-object v4, p3

    .line 13
    move v5, p4

    .line 14
    move-object v6, p5

    .line 15
    .line 16
    .line 17
    invoke-direct/range {v1 .. v6}, Lcoil/compose/e$b;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/InspectorValueInfo;-><init>(Le8/l;)V

    .line 26
    .line 27
    iput-object p1, p0, Lcoil/compose/e;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 28
    .line 29
    iput-object p2, p0, Lcoil/compose/e;->alignment:Landroidx/compose/ui/Alignment;

    .line 30
    .line 31
    iput-object p3, p0, Lcoil/compose/e;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 32
    .line 33
    iput p4, p0, Lcoil/compose/e;->alpha:F

    .line 34
    .line 35
    iput-object p5, p0, Lcoil/compose/e;->colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    .line 36
    return-void
.end method

.method private final a(J)J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->k(J)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object p1, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Size$Companion;->b()J

    .line 12
    move-result-wide p1

    .line 13
    return-wide p1

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcoil/compose/e;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/painter/Painter;->k()J

    .line 19
    move-result-wide v0

    .line 20
    .line 21
    sget-object v2, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Size$Companion;->a()J

    .line 25
    move-result-wide v2

    .line 26
    .line 27
    cmp-long v2, v0, v2

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    return-wide p1

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 34
    move-result v2

    .line 35
    .line 36
    .line 37
    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    .line 38
    move-result v3

    .line 39
    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 44
    move-result v3

    .line 45
    .line 46
    if-nez v3, :cond_2

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 51
    move-result v2

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 55
    move-result v0

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    .line 59
    move-result v1

    .line 60
    .line 61
    if-nez v1, :cond_3

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 65
    move-result v1

    .line 66
    .line 67
    if-nez v1, :cond_3

    .line 68
    goto :goto_1

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 72
    move-result v0

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-static {v2, v0}, Landroidx/compose/ui/geometry/SizeKt;->a(FF)J

    .line 76
    move-result-wide v0

    .line 77
    .line 78
    iget-object v2, p0, Lcoil/compose/e;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 79
    .line 80
    .line 81
    invoke-interface {v2, v0, v1, p1, p2}, Landroidx/compose/ui/layout/ContentScale;->a(JJ)J

    .line 82
    move-result-wide p1

    .line 83
    .line 84
    .line 85
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/layout/ScaleFactorKt;->d(JJ)J

    .line 86
    move-result-wide p1

    .line 87
    return-wide p1
.end method

.method private final b(J)J
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->l(J)Z

    .line 4
    move-result v2

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->k(J)Z

    .line 8
    move-result v3

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    return-wide p1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->j(J)Z

    .line 17
    move-result v4

    .line 18
    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->i(J)Z

    .line 23
    move-result v4

    .line 24
    .line 25
    if-eqz v4, :cond_1

    .line 26
    const/4 v4, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v4, 0x0

    .line 29
    .line 30
    :goto_0
    iget-object v5, p0, Lcoil/compose/e;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/painter/Painter;->k()J

    .line 34
    move-result-wide v5

    .line 35
    .line 36
    sget-object v7, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v7}, Landroidx/compose/ui/geometry/Size$Companion;->a()J

    .line 40
    move-result-wide v7

    .line 41
    .line 42
    cmp-long v7, v5, v7

    .line 43
    .line 44
    if-nez v7, :cond_3

    .line 45
    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 50
    move-result v2

    .line 51
    const/4 v3, 0x0

    .line 52
    .line 53
    .line 54
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 55
    move-result v4

    .line 56
    const/4 v5, 0x0

    .line 57
    .line 58
    const/16 v6, 0xa

    .line 59
    const/4 v7, 0x0

    .line 60
    move-wide v0, p1

    .line 61
    .line 62
    .line 63
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/unit/Constraints;->e(JIIIIILjava/lang/Object;)J

    .line 64
    move-result-wide v0

    .line 65
    return-wide v0

    .line 66
    :cond_2
    return-wide p1

    .line 67
    .line 68
    :cond_3
    if-eqz v4, :cond_5

    .line 69
    .line 70
    if-nez v2, :cond_4

    .line 71
    .line 72
    if-eqz v3, :cond_5

    .line 73
    .line 74
    .line 75
    :cond_4
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 76
    move-result v2

    .line 77
    int-to-float v2, v2

    .line 78
    .line 79
    .line 80
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 81
    move-result v3

    .line 82
    :goto_1
    int-to-float v3, v3

    .line 83
    goto :goto_3

    .line 84
    .line 85
    .line 86
    :cond_5
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 87
    move-result v2

    .line 88
    .line 89
    .line 90
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 91
    move-result v3

    .line 92
    .line 93
    .line 94
    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    .line 95
    move-result v4

    .line 96
    .line 97
    if-nez v4, :cond_6

    .line 98
    .line 99
    .line 100
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 101
    move-result v4

    .line 102
    .line 103
    if-nez v4, :cond_6

    .line 104
    .line 105
    .line 106
    invoke-static {p1, p2, v2}, Lcoil/compose/j;->b(JF)F

    .line 107
    move-result v2

    .line 108
    goto :goto_2

    .line 109
    .line 110
    .line 111
    :cond_6
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->p(J)I

    .line 112
    move-result v2

    .line 113
    int-to-float v2, v2

    .line 114
    .line 115
    .line 116
    :goto_2
    invoke-static {v3}, Ljava/lang/Float;->isInfinite(F)Z

    .line 117
    move-result v4

    .line 118
    .line 119
    if-nez v4, :cond_7

    .line 120
    .line 121
    .line 122
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    .line 123
    move-result v4

    .line 124
    .line 125
    if-nez v4, :cond_7

    .line 126
    .line 127
    .line 128
    invoke-static {p1, p2, v3}, Lcoil/compose/j;->a(JF)F

    .line 129
    move-result v3

    .line 130
    goto :goto_3

    .line 131
    .line 132
    .line 133
    :cond_7
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->o(J)I

    .line 134
    move-result v3

    .line 135
    goto :goto_1

    .line 136
    .line 137
    .line 138
    :goto_3
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/SizeKt;->a(FF)J

    .line 139
    move-result-wide v2

    .line 140
    .line 141
    .line 142
    invoke-direct {p0, v2, v3}, Lcoil/compose/e;->a(J)J

    .line 143
    move-result-wide v2

    .line 144
    .line 145
    .line 146
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 147
    move-result v4

    .line 148
    .line 149
    .line 150
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 151
    move-result v2

    .line 152
    .line 153
    .line 154
    invoke-static {v4}, Lg8/a;->c(F)I

    .line 155
    move-result v3

    .line 156
    .line 157
    .line 158
    invoke-static {p1, p2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->g(JI)I

    .line 159
    move-result v3

    .line 160
    const/4 v4, 0x0

    .line 161
    .line 162
    .line 163
    invoke-static {v2}, Lg8/a;->c(F)I

    .line 164
    move-result v2

    .line 165
    .line 166
    .line 167
    invoke-static {p1, p2, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->f(JI)I

    .line 168
    move-result v5

    .line 169
    const/4 v6, 0x0

    .line 170
    .line 171
    const/16 v7, 0xa

    .line 172
    const/4 v8, 0x0

    .line 173
    move-wide v0, p1

    .line 174
    move v2, v3

    .line 175
    move v3, v4

    .line 176
    move v4, v5

    .line 177
    move v5, v6

    .line 178
    move v6, v7

    .line 179
    move-object v7, v8

    .line 180
    .line 181
    .line 182
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/unit/Constraints;->e(JIIIIILjava/lang/Object;)J

    .line 183
    move-result-wide v0

    .line 184
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
    .locals 6
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
    iget-object p1, p0, Lcoil/compose/e;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/painter/Painter;->k()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    sget-object p1, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Size$Companion;->a()J

    .line 12
    move-result-wide v2

    .line 13
    .line 14
    cmp-long p1, v0, v2

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v4, 0x7

    .line 21
    const/4 v5, 0x0

    .line 22
    move v3, p3

    .line 23
    .line 24
    .line 25
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIIILjava/lang/Object;)J

    .line 26
    move-result-wide v0

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0, v1}, Lcoil/compose/e;->b(J)J

    .line 30
    move-result-wide v0

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 34
    move-result p1

    .line 35
    .line 36
    .line 37
    invoke-interface {p2, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->Y(I)I

    .line 38
    move-result p1

    .line 39
    int-to-float p2, p1

    .line 40
    int-to-float p3, p3

    .line 41
    .line 42
    .line 43
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/SizeKt;->a(FF)J

    .line 44
    move-result-wide p2

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, p2, p3}, Lcoil/compose/e;->a(J)J

    .line 48
    move-result-wide p2

    .line 49
    .line 50
    .line 51
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 52
    move-result p2

    .line 53
    .line 54
    .line 55
    invoke-static {p2}, Lg8/a;->c(F)I

    .line 56
    move-result p2

    .line 57
    .line 58
    .line 59
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 60
    move-result p1

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->Y(I)I

    .line 65
    move-result p1

    .line 66
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
    .line 3
    invoke-direct {p0, p3, p4}, Lcoil/compose/e;->b(J)J

    .line 4
    move-result-wide p3

    .line 5
    .line 6
    .line 7
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    .line 19
    new-instance v4, Lcoil/compose/e$a;

    .line 20
    .line 21
    .line 22
    invoke-direct {v4, p2}, Lcoil/compose/e$a;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    .line 23
    const/4 v5, 0x4

    .line 24
    const/4 v6, 0x0

    .line 25
    move-object v0, p1

    .line 26
    .line 27
    .line 28
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method public S(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 6
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
    iget-object p1, p0, Lcoil/compose/e;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/painter/Painter;->k()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    sget-object p1, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Size$Companion;->a()J

    .line 12
    move-result-wide v2

    .line 13
    .line 14
    cmp-long p1, v0, v2

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v4, 0x7

    .line 21
    const/4 v5, 0x0

    .line 22
    move v3, p3

    .line 23
    .line 24
    .line 25
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIIILjava/lang/Object;)J

    .line 26
    move-result-wide v0

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0, v1}, Lcoil/compose/e;->b(J)J

    .line 30
    move-result-wide v0

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 34
    move-result p1

    .line 35
    .line 36
    .line 37
    invoke-interface {p2, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->a0(I)I

    .line 38
    move-result p1

    .line 39
    int-to-float p2, p1

    .line 40
    int-to-float p3, p3

    .line 41
    .line 42
    .line 43
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/SizeKt;->a(FF)J

    .line 44
    move-result-wide p2

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, p2, p3}, Lcoil/compose/e;->a(J)J

    .line 48
    move-result-wide p2

    .line 49
    .line 50
    .line 51
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 52
    move-result p2

    .line 53
    .line 54
    .line 55
    invoke-static {p2}, Lg8/a;->c(F)I

    .line 56
    move-result p2

    .line 57
    .line 58
    .line 59
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 60
    move-result p1

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->a0(I)I

    .line 65
    move-result p1

    .line 66
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
    .locals 6
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
    iget-object p1, p0, Lcoil/compose/e;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/painter/Painter;->k()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    sget-object p1, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Size$Companion;->a()J

    .line 12
    move-result-wide v2

    .line 13
    .line 14
    cmp-long p1, v0, v2

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    .line 21
    const/16 v4, 0xd

    .line 22
    const/4 v5, 0x0

    .line 23
    move v1, p3

    .line 24
    .line 25
    .line 26
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIIILjava/lang/Object;)J

    .line 27
    move-result-wide v0

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0, v1}, Lcoil/compose/e;->b(J)J

    .line 31
    move-result-wide v0

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 35
    move-result p1

    .line 36
    .line 37
    .line 38
    invoke-interface {p2, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->M(I)I

    .line 39
    move-result p1

    .line 40
    int-to-float p2, p3

    .line 41
    int-to-float p3, p1

    .line 42
    .line 43
    .line 44
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/SizeKt;->a(FF)J

    .line 45
    move-result-wide p2

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, p2, p3}, Lcoil/compose/e;->a(J)J

    .line 49
    move-result-wide p2

    .line 50
    .line 51
    .line 52
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 53
    move-result p2

    .line 54
    .line 55
    .line 56
    invoke-static {p2}, Lg8/a;->c(F)I

    .line 57
    move-result p2

    .line 58
    .line 59
    .line 60
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 61
    move-result p1

    .line 62
    goto :goto_0

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->M(I)I

    .line 66
    move-result p1

    .line 67
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
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcoil/compose/e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcoil/compose/e;

    iget-object v1, p0, Lcoil/compose/e;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v3, p1, Lcoil/compose/e;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcoil/compose/e;->alignment:Landroidx/compose/ui/Alignment;

    iget-object v3, p1, Lcoil/compose/e;->alignment:Landroidx/compose/ui/Alignment;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcoil/compose/e;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    iget-object v3, p1, Lcoil/compose/e;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcoil/compose/e;->alpha:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcoil/compose/e;->alpha:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcoil/compose/e;->colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    iget-object p1, p1, Lcoil/compose/e;->colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcoil/compose/e;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcoil/compose/e;->alignment:Landroidx/compose/ui/Alignment;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcoil/compose/e;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcoil/compose/e;->alpha:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcoil/compose/e;->colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public r(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 12
    .param p1    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0, v1}, Lcoil/compose/e;->a(J)J

    .line 8
    move-result-wide v4

    .line 9
    .line 10
    iget-object v6, p0, Lcoil/compose/e;->alignment:Landroidx/compose/ui/Alignment;

    .line 11
    .line 12
    .line 13
    invoke-static {v4, v5}, Lcoil/compose/j;->e(J)J

    .line 14
    move-result-wide v7

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 18
    move-result-wide v0

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lcoil/compose/j;->e(J)J

    .line 22
    move-result-wide v9

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 26
    move-result-object v11

    .line 27
    .line 28
    .line 29
    invoke-interface/range {v6 .. v11}, Landroidx/compose/ui/Alignment;->a(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    .line 30
    move-result-wide v0

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->c(J)I

    .line 34
    move-result v2

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->d(J)I

    .line 38
    move-result v0

    .line 39
    int-to-float v1, v2

    .line 40
    int-to-float v0, v0

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->T()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->d()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    invoke-interface {v2, v1, v0}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->b(FF)V

    .line 52
    .line 53
    iget-object v2, p0, Lcoil/compose/e;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 54
    .line 55
    iget v6, p0, Lcoil/compose/e;->alpha:F

    .line 56
    .line 57
    iget-object v7, p0, Lcoil/compose/e;->colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    .line 58
    move-object v3, p1

    .line 59
    .line 60
    .line 61
    invoke-virtual/range {v2 .. v7}, Landroidx/compose/ui/graphics/painter/Painter;->j(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFLandroidx/compose/ui/graphics/ColorFilter;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->T()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    .line 68
    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->d()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    .line 69
    move-result-object v2

    .line 70
    neg-float v1, v1

    .line 71
    neg-float v0, v0

    .line 72
    .line 73
    .line 74
    invoke-interface {v2, v1, v0}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->b(FF)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->Z()V

    .line 78
    return-void
.end method

.method public s0(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 6
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
    iget-object p1, p0, Lcoil/compose/e;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/painter/Painter;->k()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    sget-object p1, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Size$Companion;->a()J

    .line 12
    move-result-wide v2

    .line 13
    .line 14
    cmp-long p1, v0, v2

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    .line 21
    const/16 v4, 0xd

    .line 22
    const/4 v5, 0x0

    .line 23
    move v1, p3

    .line 24
    .line 25
    .line 26
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIIILjava/lang/Object;)J

    .line 27
    move-result-wide v0

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0, v1}, Lcoil/compose/e;->b(J)J

    .line 31
    move-result-wide v0

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 35
    move-result p1

    .line 36
    .line 37
    .line 38
    invoke-interface {p2, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->V(I)I

    .line 39
    move-result p1

    .line 40
    int-to-float p2, p3

    .line 41
    int-to-float p3, p1

    .line 42
    .line 43
    .line 44
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/SizeKt;->a(FF)J

    .line 45
    move-result-wide p2

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, p2, p3}, Lcoil/compose/e;->a(J)J

    .line 49
    move-result-wide p2

    .line 50
    .line 51
    .line 52
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 53
    move-result p2

    .line 54
    .line 55
    .line 56
    invoke-static {p2}, Lg8/a;->c(F)I

    .line 57
    move-result p2

    .line 58
    .line 59
    .line 60
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 61
    move-result p1

    .line 62
    goto :goto_0

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->V(I)I

    .line 66
    move-result p1

    .line 67
    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentPainterModifier(painter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil/compose/e;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", alignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil/compose/e;->alignment:Landroidx/compose/ui/Alignment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil/compose/e;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcoil/compose/e;->alpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", colorFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil/compose/e;->colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
