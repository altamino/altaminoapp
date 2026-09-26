.class public final Landroidx/compose/ui/platform/ShapeContainingUtilKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static final a(Landroidx/compose/ui/geometry/RoundRect;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->h()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->i()J

    .line 12
    move-result-wide v1

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 16
    move-result v1

    .line 17
    add-float/2addr v0, v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->j()F

    .line 21
    move-result v1

    .line 22
    .line 23
    cmpg-float v0, v0, v1

    .line 24
    .line 25
    if-gtz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->b()J

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
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->c()J

    .line 37
    move-result-wide v1

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 41
    move-result v1

    .line 42
    add-float/2addr v0, v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->j()F

    .line 46
    move-result v1

    .line 47
    .line 48
    cmpg-float v0, v0, v1

    .line 49
    .line 50
    if-gtz v0, :cond_0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->h()J

    .line 54
    move-result-wide v0

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/CornerRadius;->f(J)F

    .line 58
    move-result v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->b()J

    .line 62
    move-result-wide v1

    .line 63
    .line 64
    .line 65
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->f(J)F

    .line 66
    move-result v1

    .line 67
    add-float/2addr v0, v1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->d()F

    .line 71
    move-result v1

    .line 72
    .line 73
    cmpg-float v0, v0, v1

    .line 74
    .line 75
    if-gtz v0, :cond_0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->i()J

    .line 79
    move-result-wide v0

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/CornerRadius;->f(J)F

    .line 83
    move-result v0

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->c()J

    .line 87
    move-result-wide v1

    .line 88
    .line 89
    .line 90
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->f(J)F

    .line 91
    move-result v1

    .line 92
    add-float/2addr v0, v1

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->d()F

    .line 96
    move-result p0

    .line 97
    .line 98
    cmpg-float p0, v0, p0

    .line 99
    .line 100
    if-gtz p0, :cond_0

    .line 101
    const/4 p0, 0x1

    .line 102
    goto :goto_0

    .line 103
    :cond_0
    const/4 p0, 0x0

    .line 104
    :goto_0
    return p0
.end method

.method public static final b(Landroidx/compose/ui/graphics/Outline;FFLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;)Z
    .locals 1
    .param p0    # Landroidx/compose/ui/graphics/Outline;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "outline"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    instance-of v0, p0, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p0, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Outline$Rectangle;->a()Landroidx/compose/ui/geometry/Rect;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    .line 18
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->d(Landroidx/compose/ui/geometry/Rect;FF)Z

    .line 19
    move-result p0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    instance-of v0, p0, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    check-cast p0, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->e(Landroidx/compose/ui/graphics/Outline$Rounded;FFLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;)Z

    .line 30
    move-result p0

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_1
    instance-of v0, p0, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    check-cast p0, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Outline$Generic;->a()Landroidx/compose/ui/graphics/Path;

    .line 41
    move-result-object p0

    .line 42
    .line 43
    .line 44
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->c(Landroidx/compose/ui/graphics/Path;FFLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;)Z

    .line 45
    move-result p0

    .line 46
    :goto_0
    return p0

    .line 47
    .line 48
    :cond_2
    new-instance p0, Lw7/s;

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lw7/s;-><init>()V

    .line 52
    throw p0
.end method

.method private static final c(Landroidx/compose/ui/graphics/Path;FFLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;)Z
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    .line 3
    .line 4
    .line 5
    const v1, 0x3ba3d70a    # 0.005f

    .line 6
    .line 7
    sub-float v2, p1, v1

    .line 8
    .line 9
    sub-float v3, p2, v1

    .line 10
    add-float/2addr p1, v1

    .line 11
    add-float/2addr p2, v1

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v2, v3, p1, p2}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 15
    .line 16
    if-nez p3, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->a()Landroidx/compose/ui/graphics/Path;

    .line 20
    move-result-object p3

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-interface {p3, v0}, Landroidx/compose/ui/graphics/Path;->j(Landroidx/compose/ui/geometry/Rect;)V

    .line 24
    .line 25
    if-nez p4, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->a()Landroidx/compose/ui/graphics/Path;

    .line 29
    move-result-object p4

    .line 30
    .line 31
    :cond_1
    sget-object p1, Landroidx/compose/ui/graphics/PathOperation;->Companion:Landroidx/compose/ui/graphics/PathOperation$Companion;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/PathOperation$Companion;->b()I

    .line 35
    move-result p1

    .line 36
    .line 37
    .line 38
    invoke-interface {p4, p0, p3, p1}, Landroidx/compose/ui/graphics/Path;->k(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;I)Z

    .line 39
    .line 40
    .line 41
    invoke-interface {p4}, Landroidx/compose/ui/graphics/Path;->isEmpty()Z

    .line 42
    move-result p0

    .line 43
    .line 44
    .line 45
    invoke-interface {p4}, Landroidx/compose/ui/graphics/Path;->reset()V

    .line 46
    .line 47
    .line 48
    invoke-interface {p3}, Landroidx/compose/ui/graphics/Path;->reset()V

    .line 49
    .line 50
    xor-int/lit8 p0, p0, 0x1

    .line 51
    return p0
.end method

.method private static final d(Landroidx/compose/ui/geometry/Rect;FF)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->j()F

    .line 4
    move-result v0

    .line 5
    .line 6
    cmpg-float v0, v0, p1

    .line 7
    .line 8
    if-gtz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->k()F

    .line 12
    move-result v0

    .line 13
    .line 14
    cmpg-float p1, p1, v0

    .line 15
    .line 16
    if-gez p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 20
    move-result p1

    .line 21
    .line 22
    cmpg-float p1, p1, p2

    .line 23
    .line 24
    if-gtz p1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->e()F

    .line 28
    move-result p0

    .line 29
    .line 30
    cmpg-float p0, p2, p0

    .line 31
    .line 32
    if-gez p0, :cond_0

    .line 33
    const/4 p0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    :goto_0
    return p0
.end method

.method private static final e(Landroidx/compose/ui/graphics/Outline$Rounded;FFLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;)Z
    .locals 13

    .line 1
    move v0, p1

    .line 2
    move v1, p2

    .line 3
    .line 4
    move-object/from16 v2, p4

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Outline$Rounded;->a()Landroidx/compose/ui/geometry/RoundRect;

    .line 8
    move-result-object v3

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->e()F

    .line 12
    move-result v4

    .line 13
    .line 14
    cmpg-float v4, v0, v4

    .line 15
    .line 16
    if-ltz v4, :cond_7

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->f()F

    .line 20
    move-result v4

    .line 21
    .line 22
    cmpl-float v4, v0, v4

    .line 23
    .line 24
    if-gez v4, :cond_7

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->g()F

    .line 28
    move-result v4

    .line 29
    .line 30
    cmpg-float v4, v1, v4

    .line 31
    .line 32
    if-ltz v4, :cond_7

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->a()F

    .line 36
    move-result v4

    .line 37
    .line 38
    cmpl-float v4, v1, v4

    .line 39
    .line 40
    if-ltz v4, :cond_0

    .line 41
    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-static {v3}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->a(Landroidx/compose/ui/geometry/RoundRect;)Z

    .line 46
    move-result v4

    .line 47
    .line 48
    if-nez v4, :cond_2

    .line 49
    .line 50
    if-nez v2, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->a()Landroidx/compose/ui/graphics/Path;

    .line 54
    move-result-object v4

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move-object v4, v2

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-interface {v4, v3}, Landroidx/compose/ui/graphics/Path;->e(Landroidx/compose/ui/geometry/RoundRect;)V

    .line 60
    .line 61
    move-object/from16 v3, p3

    .line 62
    .line 63
    .line 64
    invoke-static {v4, p1, p2, v3, v2}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->c(Landroidx/compose/ui/graphics/Path;FFLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;)Z

    .line 65
    move-result v0

    .line 66
    return v0

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->e()F

    .line 70
    move-result v2

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->h()J

    .line 74
    move-result-wide v4

    .line 75
    .line 76
    .line 77
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 78
    move-result v4

    .line 79
    add-float/2addr v4, v2

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->g()F

    .line 83
    move-result v2

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->h()J

    .line 87
    move-result-wide v5

    .line 88
    .line 89
    .line 90
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->f(J)F

    .line 91
    move-result v5

    .line 92
    add-float/2addr v5, v2

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->f()F

    .line 96
    move-result v2

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->i()J

    .line 100
    move-result-wide v6

    .line 101
    .line 102
    .line 103
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 104
    move-result v6

    .line 105
    .line 106
    sub-float v6, v2, v6

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->g()F

    .line 110
    move-result v2

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->i()J

    .line 114
    move-result-wide v7

    .line 115
    .line 116
    .line 117
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/CornerRadius;->f(J)F

    .line 118
    move-result v7

    .line 119
    add-float/2addr v7, v2

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->f()F

    .line 123
    move-result v2

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->c()J

    .line 127
    move-result-wide v8

    .line 128
    .line 129
    .line 130
    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 131
    move-result v8

    .line 132
    .line 133
    sub-float v8, v2, v8

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->a()F

    .line 137
    move-result v2

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->c()J

    .line 141
    move-result-wide v9

    .line 142
    .line 143
    .line 144
    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/CornerRadius;->f(J)F

    .line 145
    move-result v9

    .line 146
    .line 147
    sub-float v9, v2, v9

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->a()F

    .line 151
    move-result v2

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->b()J

    .line 155
    move-result-wide v10

    .line 156
    .line 157
    .line 158
    invoke-static {v10, v11}, Landroidx/compose/ui/geometry/CornerRadius;->f(J)F

    .line 159
    move-result v10

    .line 160
    .line 161
    sub-float v10, v2, v10

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->e()F

    .line 165
    move-result v2

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->b()J

    .line 169
    move-result-wide v11

    .line 170
    .line 171
    .line 172
    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 173
    move-result v11

    .line 174
    add-float/2addr v11, v2

    .line 175
    .line 176
    cmpg-float v2, v0, v4

    .line 177
    .line 178
    if-gez v2, :cond_3

    .line 179
    .line 180
    cmpg-float v2, v1, v5

    .line 181
    .line 182
    if-gez v2, :cond_3

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->h()J

    .line 186
    move-result-wide v2

    .line 187
    move v0, p1

    .line 188
    move v1, p2

    .line 189
    .line 190
    .line 191
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->f(FFJFF)Z

    .line 192
    move-result v0

    .line 193
    goto :goto_1

    .line 194
    .line 195
    :cond_3
    cmpg-float v2, v0, v11

    .line 196
    .line 197
    if-gez v2, :cond_4

    .line 198
    .line 199
    cmpl-float v2, v1, v10

    .line 200
    .line 201
    if-lez v2, :cond_4

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->b()J

    .line 205
    move-result-wide v2

    .line 206
    move v0, p1

    .line 207
    move v1, p2

    .line 208
    move v4, v11

    .line 209
    move v5, v10

    .line 210
    .line 211
    .line 212
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->f(FFJFF)Z

    .line 213
    move-result v0

    .line 214
    goto :goto_1

    .line 215
    .line 216
    :cond_4
    cmpl-float v2, v0, v6

    .line 217
    .line 218
    if-lez v2, :cond_5

    .line 219
    .line 220
    cmpg-float v2, v1, v7

    .line 221
    .line 222
    if-gez v2, :cond_5

    .line 223
    .line 224
    .line 225
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->i()J

    .line 226
    move-result-wide v2

    .line 227
    move v0, p1

    .line 228
    move v1, p2

    .line 229
    move v4, v6

    .line 230
    move v5, v7

    .line 231
    .line 232
    .line 233
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->f(FFJFF)Z

    .line 234
    move-result v0

    .line 235
    goto :goto_1

    .line 236
    .line 237
    :cond_5
    cmpl-float v2, v0, v8

    .line 238
    .line 239
    if-lez v2, :cond_6

    .line 240
    .line 241
    cmpl-float v2, v1, v9

    .line 242
    .line 243
    if-lez v2, :cond_6

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->c()J

    .line 247
    move-result-wide v2

    .line 248
    move v0, p1

    .line 249
    move v1, p2

    .line 250
    move v4, v8

    .line 251
    move v5, v9

    .line 252
    .line 253
    .line 254
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->f(FFJFF)Z

    .line 255
    move-result v0

    .line 256
    goto :goto_1

    .line 257
    :cond_6
    const/4 v0, 0x1

    .line 258
    :goto_1
    return v0

    .line 259
    :cond_7
    :goto_2
    const/4 v0, 0x0

    .line 260
    return v0
.end method

.method private static final f(FFJFF)Z
    .locals 0

    .line 1
    sub-float/2addr p0, p4

    .line 2
    sub-float/2addr p1, p5

    .line 3
    .line 4
    .line 5
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 6
    move-result p4

    .line 7
    .line 8
    .line 9
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/CornerRadius;->f(J)F

    .line 10
    move-result p2

    .line 11
    mul-float/2addr p0, p0

    .line 12
    mul-float/2addr p4, p4

    .line 13
    div-float/2addr p0, p4

    .line 14
    mul-float/2addr p1, p1

    .line 15
    mul-float/2addr p2, p2

    .line 16
    div-float/2addr p1, p2

    .line 17
    add-float/2addr p0, p1

    .line 18
    .line 19
    const/high16 p1, 0x3f800000    # 1.0f

    .line 20
    .line 21
    cmpg-float p0, p0, p1

    .line 22
    .line 23
    if-gtz p0, :cond_0

    .line 24
    const/4 p0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    return p0
.end method
