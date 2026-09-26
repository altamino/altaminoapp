.class public final Landroidx/compose/ui/geometry/RoundRectKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(FFFFFF)Landroidx/compose/ui/geometry/RoundRect;
    .locals 15
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/geometry/CornerRadiusKt;->a(FF)J

    .line 4
    move-result-wide v11

    .line 5
    .line 6
    new-instance v14, Landroidx/compose/ui/geometry/RoundRect;

    .line 7
    const/4 v13, 0x0

    .line 8
    move-object v0, v14

    .line 9
    move v1, p0

    .line 10
    .line 11
    move/from16 v2, p1

    .line 12
    .line 13
    move/from16 v3, p2

    .line 14
    .line 15
    move/from16 v4, p3

    .line 16
    move-wide v5, v11

    .line 17
    move-wide v7, v11

    .line 18
    move-wide v9, v11

    .line 19
    .line 20
    .line 21
    invoke-direct/range {v0 .. v13}, Landroidx/compose/ui/geometry/RoundRect;-><init>(FFFFJJJJLkotlin/jvm/internal/k;)V

    .line 22
    return-object v14
.end method

.method public static final b(Landroidx/compose/ui/geometry/Rect;JJJJ)Landroidx/compose/ui/geometry/RoundRect;
    .locals 15
    .param p0    # Landroidx/compose/ui/geometry/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "rect"

    .line 3
    move-object v1, p0

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/ui/geometry/RoundRect;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->j()F

    .line 12
    move-result v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 16
    move-result v3

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->k()F

    .line 20
    move-result v4

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->e()F

    .line 24
    move-result v5

    .line 25
    const/4 v14, 0x0

    .line 26
    move-object v1, v0

    .line 27
    .line 28
    move-wide/from16 v6, p1

    .line 29
    .line 30
    move-wide/from16 v8, p3

    .line 31
    .line 32
    move-wide/from16 v10, p5

    .line 33
    .line 34
    move-wide/from16 v12, p7

    .line 35
    .line 36
    .line 37
    invoke-direct/range {v1 .. v14}, Landroidx/compose/ui/geometry/RoundRect;-><init>(FFFFJJJJLkotlin/jvm/internal/k;)V

    .line 38
    return-object v0
.end method

.method public static final c(FFFFJ)Landroidx/compose/ui/geometry/RoundRect;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p4, p5}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 4
    move-result v4

    .line 5
    .line 6
    .line 7
    invoke-static {p4, p5}, Landroidx/compose/ui/geometry/CornerRadius;->f(J)F

    .line 8
    move-result v5

    .line 9
    move v0, p0

    .line 10
    move v1, p1

    .line 11
    move v2, p2

    .line 12
    move v3, p3

    .line 13
    .line 14
    .line 15
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/geometry/RoundRectKt;->a(FFFFFF)Landroidx/compose/ui/geometry/RoundRect;

    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static final d(Landroidx/compose/ui/geometry/RoundRect;)Z
    .locals 3
    .param p0    # Landroidx/compose/ui/geometry/RoundRect;
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
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->h()J

    .line 9
    move-result-wide v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 13
    move-result v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->h()J

    .line 17
    move-result-wide v1

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->f(J)F

    .line 21
    move-result v1

    .line 22
    .line 23
    cmpg-float v0, v0, v1

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->h()J

    .line 29
    move-result-wide v0

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 33
    move-result v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->i()J

    .line 37
    move-result-wide v1

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 41
    move-result v1

    .line 42
    .line 43
    cmpg-float v0, v0, v1

    .line 44
    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->h()J

    .line 49
    move-result-wide v0

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 53
    move-result v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->i()J

    .line 57
    move-result-wide v1

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->f(J)F

    .line 61
    move-result v1

    .line 62
    .line 63
    cmpg-float v0, v0, v1

    .line 64
    .line 65
    if-nez v0, :cond_0

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->h()J

    .line 69
    move-result-wide v0

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 73
    move-result v0

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->c()J

    .line 77
    move-result-wide v1

    .line 78
    .line 79
    .line 80
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 81
    move-result v1

    .line 82
    .line 83
    cmpg-float v0, v0, v1

    .line 84
    .line 85
    if-nez v0, :cond_0

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->h()J

    .line 89
    move-result-wide v0

    .line 90
    .line 91
    .line 92
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 93
    move-result v0

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->c()J

    .line 97
    move-result-wide v1

    .line 98
    .line 99
    .line 100
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->f(J)F

    .line 101
    move-result v1

    .line 102
    .line 103
    cmpg-float v0, v0, v1

    .line 104
    .line 105
    if-nez v0, :cond_0

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->h()J

    .line 109
    move-result-wide v0

    .line 110
    .line 111
    .line 112
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 113
    move-result v0

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->b()J

    .line 117
    move-result-wide v1

    .line 118
    .line 119
    .line 120
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 121
    move-result v1

    .line 122
    .line 123
    cmpg-float v0, v0, v1

    .line 124
    .line 125
    if-nez v0, :cond_0

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->h()J

    .line 129
    move-result-wide v0

    .line 130
    .line 131
    .line 132
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 133
    move-result v0

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->b()J

    .line 137
    move-result-wide v1

    .line 138
    .line 139
    .line 140
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->f(J)F

    .line 141
    move-result p0

    .line 142
    .line 143
    cmpg-float p0, v0, p0

    .line 144
    .line 145
    if-nez p0, :cond_0

    .line 146
    const/4 p0, 0x1

    .line 147
    goto :goto_0

    .line 148
    :cond_0
    const/4 p0, 0x0

    .line 149
    :goto_0
    return p0
.end method
