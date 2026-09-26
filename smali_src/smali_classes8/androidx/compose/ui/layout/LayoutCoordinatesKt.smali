.class public final Landroidx/compose/ui/layout/LayoutCoordinatesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;
    .locals 4
    .param p0    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->B()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    const/4 v1, 0x2

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p0, v3, v1, v2}, Landroidx/compose/ui/layout/a;->a(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;ZILjava/lang/Object;)Landroidx/compose/ui/geometry/Rect;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    :cond_0
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    .line 23
    .line 24
    .line 25
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    .line 26
    move-result-wide v1

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 30
    move-result v1

    .line 31
    int-to-float v1, v1

    .line 32
    .line 33
    .line 34
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    .line 35
    move-result-wide v2

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 39
    move-result p0

    .line 40
    int-to-float p0, p0

    .line 41
    const/4 v2, 0x0

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v2, v2, v1, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 45
    :cond_1
    return-object v0
.end method

.method public static final b(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;
    .locals 4
    .param p0    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->d(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x2

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p0, v3, v1, v2}, Landroidx/compose/ui/layout/a;->a(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;ZILjava/lang/Object;)Landroidx/compose/ui/geometry/Rect;

    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static final c(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;
    .locals 17
    .param p0    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    move-object/from16 v1, p0

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->d(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->b(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->j()F

    .line 19
    move-result v2

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 23
    move-result v3

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 27
    move-result-wide v2

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v2, v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->m(J)J

    .line 31
    move-result-wide v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->k()F

    .line 35
    move-result v4

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 39
    move-result v5

    .line 40
    .line 41
    .line 42
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 43
    move-result-wide v4

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v4, v5}, Landroidx/compose/ui/layout/LayoutCoordinates;->m(J)J

    .line 47
    move-result-wide v4

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->k()F

    .line 51
    move-result v6

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->e()F

    .line 55
    move-result v7

    .line 56
    .line 57
    .line 58
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 59
    move-result-wide v6

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, v6, v7}, Landroidx/compose/ui/layout/LayoutCoordinates;->m(J)J

    .line 63
    move-result-wide v6

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->j()F

    .line 67
    move-result v8

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->e()F

    .line 71
    move-result v1

    .line 72
    .line 73
    .line 74
    invoke-static {v8, v1}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 75
    move-result-wide v8

    .line 76
    .line 77
    .line 78
    invoke-interface {v0, v8, v9}, Landroidx/compose/ui/layout/LayoutCoordinates;->m(J)J

    .line 79
    move-result-wide v0

    .line 80
    .line 81
    .line 82
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 83
    move-result v8

    .line 84
    const/4 v9, 0x3

    .line 85
    .line 86
    new-array v10, v9, [F

    .line 87
    .line 88
    .line 89
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 90
    move-result v11

    .line 91
    const/4 v12, 0x0

    .line 92
    .line 93
    aput v11, v10, v12

    .line 94
    .line 95
    .line 96
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 97
    move-result v11

    .line 98
    const/4 v13, 0x1

    .line 99
    .line 100
    aput v11, v10, v13

    .line 101
    .line 102
    .line 103
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 104
    move-result v11

    .line 105
    const/4 v14, 0x2

    .line 106
    .line 107
    aput v11, v10, v14

    .line 108
    .line 109
    .line 110
    invoke-static {v8, v10}, Ly7/a;->h(F[F)F

    .line 111
    move-result v8

    .line 112
    .line 113
    .line 114
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 115
    move-result v10

    .line 116
    .line 117
    new-array v11, v9, [F

    .line 118
    .line 119
    .line 120
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 121
    move-result v15

    .line 122
    .line 123
    aput v15, v11, v12

    .line 124
    .line 125
    .line 126
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 127
    move-result v15

    .line 128
    .line 129
    aput v15, v11, v13

    .line 130
    .line 131
    .line 132
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 133
    move-result v15

    .line 134
    .line 135
    aput v15, v11, v14

    .line 136
    .line 137
    .line 138
    invoke-static {v10, v11}, Ly7/a;->h(F[F)F

    .line 139
    move-result v10

    .line 140
    .line 141
    .line 142
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 143
    move-result v11

    .line 144
    .line 145
    new-array v15, v9, [F

    .line 146
    .line 147
    .line 148
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 149
    move-result v16

    .line 150
    .line 151
    aput v16, v15, v12

    .line 152
    .line 153
    .line 154
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 155
    move-result v16

    .line 156
    .line 157
    aput v16, v15, v13

    .line 158
    .line 159
    .line 160
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 161
    move-result v16

    .line 162
    .line 163
    aput v16, v15, v14

    .line 164
    .line 165
    .line 166
    invoke-static {v11, v15}, Ly7/a;->g(F[F)F

    .line 167
    move-result v11

    .line 168
    .line 169
    .line 170
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 171
    move-result v2

    .line 172
    .line 173
    new-array v3, v9, [F

    .line 174
    .line 175
    .line 176
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 177
    move-result v4

    .line 178
    .line 179
    aput v4, v3, v12

    .line 180
    .line 181
    .line 182
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 183
    move-result v0

    .line 184
    .line 185
    aput v0, v3, v13

    .line 186
    .line 187
    .line 188
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 189
    move-result v0

    .line 190
    .line 191
    aput v0, v3, v14

    .line 192
    .line 193
    .line 194
    invoke-static {v2, v3}, Ly7/a;->g(F[F)F

    .line 195
    move-result v0

    .line 196
    .line 197
    new-instance v1, Landroidx/compose/ui/geometry/Rect;

    .line 198
    .line 199
    .line 200
    invoke-direct {v1, v8, v10, v11, v0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 201
    return-object v1
.end method

.method public static final d(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 2
    .param p0    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->B()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 9
    move-result-object v0

    .line 10
    :goto_0
    move-object v1, v0

    .line 11
    move-object v0, p0

    .line 12
    move-object p0, v1

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->B()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    instance-of p0, v0, Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    move-object p0, v0

    .line 25
    .line 26
    check-cast p0, Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    .line 30
    :goto_1
    if-nez p0, :cond_2

    .line 31
    return-object v0

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->G1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 35
    move-result-object v0

    .line 36
    :goto_2
    move-object v1, v0

    .line 37
    move-object v0, p0

    .line 38
    move-object p0, v1

    .line 39
    .line 40
    if-eqz p0, :cond_3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->G1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 44
    move-result-object v0

    .line 45
    goto :goto_2

    .line 46
    :cond_3
    return-object v0
.end method

.method public static final e(Landroidx/compose/ui/layout/LayoutCoordinates;)J
    .locals 2
    .param p0    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 11
    move-result-wide v0

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->K(J)J

    .line 15
    move-result-wide v0

    .line 16
    return-wide v0
.end method

.method public static final f(Landroidx/compose/ui/layout/LayoutCoordinates;)J
    .locals 2
    .param p0    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 11
    move-result-wide v0

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->m(J)J

    .line 15
    move-result-wide v0

    .line 16
    return-wide v0
.end method
