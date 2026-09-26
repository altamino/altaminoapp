.class public final Landroidx/compose/foundation/layout/AlignmentLineKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAlignmentLine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AlignmentLine.kt\nandroidx/compose/foundation/layout/AlignmentLineKt\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,301:1\n135#2:302\n135#2:303\n*S KotlinDebug\n*F\n+ 1 AlignmentLine.kt\nandroidx/compose/foundation/layout/AlignmentLineKt\n*L\n75#1:302\n121#1:303\n*E\n"
.end annotation


# direct methods
.method public static final synthetic a(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/AlignmentLine;FFLandroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p6}, Landroidx/compose/foundation/layout/AlignmentLineKt;->c(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/AlignmentLine;FFLandroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/ui/layout/AlignmentLine;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/foundation/layout/AlignmentLineKt;->d(Landroidx/compose/ui/layout/AlignmentLine;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final c(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/AlignmentLine;FFLandroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    move/from16 v3, p2

    .line 4
    .line 5
    move/from16 v1, p3

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroidx/compose/foundation/layout/AlignmentLineKt;->d(Landroidx/compose/ui/layout/AlignmentLine;)Z

    .line 9
    move-result v2

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x0

    .line 15
    const/4 v9, 0x0

    .line 16
    .line 17
    const/16 v10, 0xb

    .line 18
    const/4 v11, 0x0

    .line 19
    .line 20
    move-wide/from16 v4, p5

    .line 21
    .line 22
    .line 23
    invoke-static/range {v4 .. v11}, Landroidx/compose/ui/unit/Constraints;->e(JIIIIILjava/lang/Object;)J

    .line 24
    move-result-wide v4

    .line 25
    .line 26
    :goto_0
    move-object/from16 v2, p4

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const/4 v8, 0x0

    .line 29
    const/4 v9, 0x0

    .line 30
    const/4 v10, 0x0

    .line 31
    const/4 v11, 0x0

    .line 32
    .line 33
    const/16 v12, 0xe

    .line 34
    const/4 v13, 0x0

    .line 35
    .line 36
    move-wide/from16 v6, p5

    .line 37
    .line 38
    .line 39
    invoke-static/range {v6 .. v13}, Landroidx/compose/ui/unit/Constraints;->e(JIIIIILjava/lang/Object;)J

    .line 40
    move-result-wide v4

    .line 41
    goto :goto_0

    .line 42
    .line 43
    .line 44
    :goto_1
    invoke-interface {v2, v4, v5}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 45
    move-result-object v7

    .line 46
    move-object v2, p1

    .line 47
    .line 48
    .line 49
    invoke-interface {v7, p1}, Landroidx/compose/ui/layout/Measured;->c0(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 50
    move-result v4

    .line 51
    .line 52
    const/high16 v5, -0x80000000

    .line 53
    const/4 v6, 0x0

    .line 54
    .line 55
    if-eq v4, v5, :cond_1

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    move v4, v6

    .line 58
    .line 59
    .line 60
    :goto_2
    invoke-static {p1}, Landroidx/compose/foundation/layout/AlignmentLineKt;->d(Landroidx/compose/ui/layout/AlignmentLine;)Z

    .line 61
    move-result v5

    .line 62
    .line 63
    if-eqz v5, :cond_2

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 67
    move-result v5

    .line 68
    goto :goto_3

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 72
    move-result v5

    .line 73
    .line 74
    .line 75
    :goto_3
    invoke-static {p1}, Landroidx/compose/foundation/layout/AlignmentLineKt;->d(Landroidx/compose/ui/layout/AlignmentLine;)Z

    .line 76
    move-result v8

    .line 77
    .line 78
    if-eqz v8, :cond_3

    .line 79
    .line 80
    .line 81
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 82
    move-result v8

    .line 83
    goto :goto_4

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 87
    move-result v8

    .line 88
    .line 89
    :goto_4
    sget-object v9, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v9}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    .line 93
    move-result v10

    .line 94
    .line 95
    .line 96
    invoke-static {v3, v10}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 97
    move-result v10

    .line 98
    .line 99
    if-nez v10, :cond_4

    .line 100
    .line 101
    .line 102
    invoke-interface {p0, v3}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 103
    move-result v10

    .line 104
    goto :goto_5

    .line 105
    :cond_4
    move v10, v6

    .line 106
    :goto_5
    sub-int/2addr v10, v4

    .line 107
    sub-int/2addr v8, v5

    .line 108
    .line 109
    .line 110
    invoke-static {v10, v6, v8}, Lj8/m;->n(III)I

    .line 111
    move-result v10

    .line 112
    .line 113
    .line 114
    invoke-virtual {v9}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    .line 115
    move-result v9

    .line 116
    .line 117
    .line 118
    invoke-static {v1, v9}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 119
    move-result v9

    .line 120
    .line 121
    if-nez v9, :cond_5

    .line 122
    .line 123
    .line 124
    invoke-interface {p0, v1}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 125
    move-result v1

    .line 126
    goto :goto_6

    .line 127
    :cond_5
    move v1, v6

    .line 128
    :goto_6
    sub-int/2addr v1, v5

    .line 129
    add-int/2addr v1, v4

    .line 130
    sub-int/2addr v8, v10

    .line 131
    .line 132
    .line 133
    invoke-static {v1, v6, v8}, Lj8/m;->n(III)I

    .line 134
    move-result v6

    .line 135
    .line 136
    .line 137
    invoke-static {p1}, Landroidx/compose/foundation/layout/AlignmentLineKt;->d(Landroidx/compose/ui/layout/AlignmentLine;)Z

    .line 138
    move-result v1

    .line 139
    .line 140
    if-eqz v1, :cond_6

    .line 141
    .line 142
    .line 143
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 144
    move-result v1

    .line 145
    :goto_7
    move v9, v1

    .line 146
    goto :goto_8

    .line 147
    .line 148
    .line 149
    :cond_6
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 150
    move-result v1

    .line 151
    add-int/2addr v1, v10

    .line 152
    add-int/2addr v1, v6

    .line 153
    .line 154
    .line 155
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/Constraints;->p(J)I

    .line 156
    move-result v4

    .line 157
    .line 158
    .line 159
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 160
    move-result v1

    .line 161
    goto :goto_7

    .line 162
    .line 163
    .line 164
    :goto_8
    invoke-static {p1}, Landroidx/compose/foundation/layout/AlignmentLineKt;->d(Landroidx/compose/ui/layout/AlignmentLine;)Z

    .line 165
    move-result v1

    .line 166
    .line 167
    if-eqz v1, :cond_7

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 171
    move-result v1

    .line 172
    add-int/2addr v1, v10

    .line 173
    add-int/2addr v1, v6

    .line 174
    .line 175
    .line 176
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/Constraints;->o(J)I

    .line 177
    move-result v4

    .line 178
    .line 179
    .line 180
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 181
    move-result v1

    .line 182
    :goto_9
    move v11, v1

    .line 183
    goto :goto_a

    .line 184
    .line 185
    .line 186
    :cond_7
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 187
    move-result v1

    .line 188
    goto :goto_9

    .line 189
    :goto_a
    const/4 v12, 0x0

    .line 190
    .line 191
    new-instance v13, Landroidx/compose/foundation/layout/AlignmentLineKt$alignmentLineOffsetMeasure$1;

    .line 192
    move-object v1, v13

    .line 193
    move-object v2, p1

    .line 194
    .line 195
    move/from16 v3, p2

    .line 196
    move v4, v10

    .line 197
    move v5, v9

    .line 198
    move v8, v11

    .line 199
    .line 200
    .line 201
    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/layout/AlignmentLineKt$alignmentLineOffsetMeasure$1;-><init>(Landroidx/compose/ui/layout/AlignmentLine;FIIILandroidx/compose/ui/layout/Placeable;I)V

    .line 202
    const/4 v1, 0x4

    .line 203
    const/4 v2, 0x0

    .line 204
    move p1, v9

    .line 205
    .line 206
    move/from16 p2, v11

    .line 207
    .line 208
    move-object/from16 p3, v12

    .line 209
    .line 210
    move-object/from16 p4, v13

    .line 211
    .line 212
    move/from16 p5, v1

    .line 213
    .line 214
    move-object/from16 p6, v2

    .line 215
    .line 216
    .line 217
    invoke-static/range {p0 .. p6}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 218
    move-result-object v0

    .line 219
    return-object v0
.end method

.method private static final d(Landroidx/compose/ui/layout/AlignmentLine;)Z
    .locals 0

    .line 1
    .line 2
    instance-of p0, p0, Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 3
    return p0
.end method

.method public static final e(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/AlignmentLine;FF)Landroidx/compose/ui/Modifier;
    .locals 7
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/layout/AlignmentLine;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$paddingFrom"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "alignmentLine"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/foundation/layout/AlignmentLineOffsetDp;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    new-instance v1, Landroidx/compose/foundation/layout/AlignmentLineKt$paddingFrom-4j6BHR0$$inlined$debugInspectorInfo$1;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p1, p2, p3}, Landroidx/compose/foundation/layout/AlignmentLineKt$paddingFrom-4j6BHR0$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/ui/layout/AlignmentLine;FF)V

    .line 24
    :goto_0
    move-object v5, v1

    .line 25
    goto :goto_1

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 29
    move-result-object v1

    .line 30
    goto :goto_0

    .line 31
    :goto_1
    const/4 v6, 0x0

    .line 32
    move-object v1, v0

    .line 33
    move-object v2, p1

    .line 34
    move v3, p2

    .line 35
    move v4, p3

    .line 36
    .line 37
    .line 38
    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/layout/AlignmentLineOffsetDp;-><init>(Landroidx/compose/ui/layout/AlignmentLine;FFLe8/l;Lkotlin/jvm/internal/k;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static synthetic f(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/AlignmentLine;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p5, p4, 0x2

    .line 3
    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    sget-object p2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    .line 10
    move-result p2

    .line 11
    .line 12
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 13
    .line 14
    if-eqz p4, :cond_1

    .line 15
    .line 16
    sget-object p3, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    .line 20
    move-result p3

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/AlignmentLineKt;->e(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/AlignmentLine;FF)Landroidx/compose/ui/Modifier;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static final g(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;
    .locals 8
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$paddingFromBaseline"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-static {p2, v1}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->b()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 21
    move-result-object v3

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v6, 0x2

    .line 24
    const/4 v7, 0x0

    .line 25
    move-object v2, p0

    .line 26
    move v5, p2

    .line 27
    .line 28
    .line 29
    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/layout/AlignmentLineKt;->f(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/AlignmentLine;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 30
    move-result-object p2

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    sget-object p2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-interface {p0, p2}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    .line 41
    move-result v0

    .line 42
    .line 43
    .line 44
    invoke-static {p1, v0}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->a()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 51
    move-result-object v2

    .line 52
    const/4 v4, 0x0

    .line 53
    const/4 v5, 0x4

    .line 54
    const/4 v6, 0x0

    .line 55
    move-object v1, p0

    .line 56
    move v3, p1

    .line 57
    .line 58
    .line 59
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/layout/AlignmentLineKt;->f(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/AlignmentLine;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 60
    move-result-object p0

    .line 61
    goto :goto_1

    .line 62
    .line 63
    :cond_1
    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 64
    .line 65
    .line 66
    :goto_1
    invoke-interface {p2, p0}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 67
    move-result-object p0

    .line 68
    return-object p0
.end method
