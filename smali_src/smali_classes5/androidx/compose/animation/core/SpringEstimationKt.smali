.class public final Landroidx/compose/animation/core/SpringEstimationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSpringEstimation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpringEstimation.kt\nandroidx/compose/animation/core/SpringEstimationKt\n*L\n1#1,318:1\n317#1:319\n317#1:320\n313#1:321\n317#1:322\n317#1:323\n313#1:324\n*S KotlinDebug\n*F\n+ 1 SpringEstimation.kt\nandroidx/compose/animation/core/SpringEstimationKt\n*L\n141#1:319\n142#1:320\n183#1:321\n211#1:322\n212#1:323\n259#1:324\n*E\n"
.end annotation


# direct methods
.method public static final a(DDDDD)J
    .locals 11

    .line 1
    .line 2
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 3
    mul-double/2addr v0, p2

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    .line 7
    move-result-wide v2

    .line 8
    .line 9
    mul-double v6, v0, v2

    .line 10
    .line 11
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 12
    move-wide v8, p0

    .line 13
    .line 14
    .line 15
    invoke-static/range {v4 .. v9}, Landroidx/compose/animation/core/ComplexDoubleKt;->a(DDD)Lw7/u;

    .line 16
    move-result-object v2

    .line 17
    move-wide v3, p2

    .line 18
    move-wide v5, p4

    .line 19
    .line 20
    move-wide/from16 v7, p6

    .line 21
    .line 22
    move-wide/from16 v9, p8

    .line 23
    .line 24
    .line 25
    invoke-static/range {v2 .. v10}, Landroidx/compose/animation/core/SpringEstimationKt;->f(Lw7/u;DDDD)J

    .line 26
    move-result-wide v0

    .line 27
    return-wide v0
.end method

.method public static final b(FFFFF)J
    .locals 10

    .line 1
    float-to-double v0, p0

    .line 2
    float-to-double v2, p1

    .line 3
    float-to-double v4, p2

    .line 4
    float-to-double v6, p3

    .line 5
    float-to-double v8, p4

    .line 6
    .line 7
    .line 8
    invoke-static/range {v0 .. v9}, Landroidx/compose/animation/core/SpringEstimationKt;->a(DDDDD)J

    .line 9
    move-result-wide p0

    .line 10
    return-wide p0
.end method

.method private static final c(Lw7/u;DDD)D
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/u<",
            "Landroidx/compose/animation/core/ComplexDouble;",
            "Landroidx/compose/animation/core/ComplexDouble;",
            ">;DDD)D"
        }
    .end annotation

    .line 1
    .line 2
    move-wide/from16 v8, p5

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lw7/u;->c()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/animation/core/ComplexDouble;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/animation/core/ComplexDouble;->f()D

    .line 12
    move-result-wide v10

    .line 13
    .line 14
    mul-double v0, v10, p1

    .line 15
    .line 16
    sub-double v12, p3, v0

    .line 17
    .line 18
    div-double v2, v8, p1

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 22
    move-result-wide v2

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    .line 26
    move-result-wide v2

    .line 27
    div-double/2addr v2, v10

    .line 28
    .line 29
    div-double v4, v8, v12

    .line 30
    .line 31
    .line 32
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    .line 33
    move-result-wide v4

    .line 34
    .line 35
    .line 36
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    .line 37
    move-result-wide v4

    .line 38
    .line 39
    .line 40
    invoke-static {v4, v5, v10, v11}, Landroidx/compose/animation/core/SpringEstimationKt;->d(DD)D

    .line 41
    move-result-wide v4

    .line 42
    div-double/2addr v4, v10

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    .line 46
    move-result v6

    .line 47
    const/4 v14, 0x0

    .line 48
    const/4 v7, 0x1

    .line 49
    .line 50
    if-nez v6, :cond_0

    .line 51
    .line 52
    .line 53
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 54
    move-result v6

    .line 55
    .line 56
    if-nez v6, :cond_0

    .line 57
    move v6, v7

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move v6, v14

    .line 60
    :goto_0
    xor-int/2addr v6, v7

    .line 61
    .line 62
    if-eqz v6, :cond_1

    .line 63
    move-wide v15, v4

    .line 64
    goto :goto_3

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    .line 68
    move-result v6

    .line 69
    .line 70
    if-nez v6, :cond_2

    .line 71
    .line 72
    .line 73
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 74
    move-result v6

    .line 75
    .line 76
    if-nez v6, :cond_2

    .line 77
    move v6, v7

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    move v6, v14

    .line 80
    :goto_1
    xor-int/2addr v6, v7

    .line 81
    .line 82
    if-eqz v6, :cond_3

    .line 83
    :goto_2
    move-wide v15, v2

    .line 84
    goto :goto_3

    .line 85
    .line 86
    .line 87
    :cond_3
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    .line 88
    move-result-wide v2

    .line 89
    goto :goto_2

    .line 90
    :goto_3
    add-double/2addr v0, v12

    .line 91
    neg-double v0, v0

    .line 92
    .line 93
    mul-double v2, v10, v12

    .line 94
    .line 95
    div-double v4, v0, v2

    .line 96
    .line 97
    .line 98
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 99
    move-result v0

    .line 100
    .line 101
    if-nez v0, :cond_5

    .line 102
    .line 103
    const-wide/16 v17, 0x0

    .line 104
    .line 105
    cmpg-double v0, v4, v17

    .line 106
    .line 107
    if-gtz v0, :cond_4

    .line 108
    goto :goto_4

    .line 109
    .line 110
    :cond_4
    cmpl-double v0, v4, v17

    .line 111
    .line 112
    if-lez v0, :cond_6

    .line 113
    .line 114
    move-wide/from16 v0, p1

    .line 115
    move-wide v2, v10

    .line 116
    move-wide v6, v12

    .line 117
    .line 118
    .line 119
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/SpringEstimationKt;->e(DDDD)D

    .line 120
    move-result-wide v0

    .line 121
    neg-double v0, v0

    .line 122
    .line 123
    cmpg-double v0, v0, v8

    .line 124
    .line 125
    if-gez v0, :cond_6

    .line 126
    .line 127
    cmpg-double v0, v12, v17

    .line 128
    .line 129
    if-gez v0, :cond_5

    .line 130
    .line 131
    cmpl-double v0, p1, v17

    .line 132
    .line 133
    if-lez v0, :cond_5

    .line 134
    .line 135
    move-wide/from16 v15, v17

    .line 136
    :cond_5
    :goto_4
    neg-double v0, v8

    .line 137
    move-wide v7, v0

    .line 138
    goto :goto_5

    .line 139
    .line 140
    :cond_6
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 141
    div-double/2addr v0, v10

    .line 142
    neg-double v0, v0

    .line 143
    .line 144
    div-double v2, p1, v12

    .line 145
    .line 146
    sub-double v15, v0, v2

    .line 147
    move-wide v7, v8

    .line 148
    .line 149
    :goto_5
    new-instance v9, Landroidx/compose/animation/core/SpringEstimationKt$estimateCriticallyDamped$fn$1;

    .line 150
    move-object v0, v9

    .line 151
    .line 152
    move-wide/from16 v1, p1

    .line 153
    move-wide v3, v12

    .line 154
    move-wide v5, v10

    .line 155
    .line 156
    .line 157
    invoke-direct/range {v0 .. v8}, Landroidx/compose/animation/core/SpringEstimationKt$estimateCriticallyDamped$fn$1;-><init>(DDDD)V

    .line 158
    .line 159
    new-instance v7, Landroidx/compose/animation/core/SpringEstimationKt$estimateCriticallyDamped$fnPrime$1;

    .line 160
    move-object v0, v7

    .line 161
    move-wide v1, v12

    .line 162
    move-wide v3, v10

    .line 163
    .line 164
    move-wide/from16 v5, p1

    .line 165
    .line 166
    .line 167
    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/core/SpringEstimationKt$estimateCriticallyDamped$fnPrime$1;-><init>(DDD)V

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :goto_6
    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    .line 178
    .line 179
    cmpl-double v0, v0, v2

    .line 180
    .line 181
    if-lez v0, :cond_7

    .line 182
    .line 183
    const/16 v0, 0x64

    .line 184
    .line 185
    if-ge v14, v0, :cond_7

    .line 186
    .line 187
    add-int/lit8 v14, v14, 0x1

    .line 188
    .line 189
    .line 190
    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 191
    move-result-object v0

    .line 192
    .line 193
    .line 194
    invoke-interface {v9, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    move-result-object v0

    .line 196
    .line 197
    check-cast v0, Ljava/lang/Number;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 201
    move-result-wide v0

    .line 202
    .line 203
    .line 204
    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 205
    move-result-object v2

    .line 206
    .line 207
    .line 208
    invoke-interface {v7, v2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    move-result-object v2

    .line 210
    .line 211
    check-cast v2, Ljava/lang/Number;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    .line 215
    move-result-wide v2

    .line 216
    div-double/2addr v0, v2

    .line 217
    .line 218
    sub-double v0, v15, v0

    .line 219
    sub-double/2addr v15, v0

    .line 220
    .line 221
    .line 222
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    .line 223
    move-result-wide v2

    .line 224
    move-wide v15, v0

    .line 225
    move-wide v0, v2

    .line 226
    goto :goto_6

    .line 227
    :cond_7
    return-wide v15
.end method

.method private static final d(DD)D
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move-wide v1, p0

    .line 3
    :goto_0
    const/4 v3, 0x6

    .line 4
    .line 5
    if-ge v0, v3, :cond_0

    .line 6
    div-double/2addr v1, p2

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    .line 10
    move-result-wide v1

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    .line 14
    move-result-wide v1

    .line 15
    .line 16
    sub-double v1, p0, v1

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-wide v1
.end method

.method private static final e(DDDD)D
    .locals 2

    .line 1
    mul-double/2addr p2, p4

    .line 2
    .line 3
    .line 4
    invoke-static {p2, p3}, Ljava/lang/Math;->exp(D)D

    .line 5
    move-result-wide v0

    .line 6
    mul-double/2addr p0, v0

    .line 7
    mul-double/2addr p6, p4

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p3}, Ljava/lang/Math;->exp(D)D

    .line 11
    move-result-wide p2

    .line 12
    mul-double/2addr p6, p2

    .line 13
    add-double/2addr p0, p6

    .line 14
    return-wide p0
.end method

.method private static final f(Lw7/u;DDDD)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/u<",
            "Landroidx/compose/animation/core/ComplexDouble;",
            "Landroidx/compose/animation/core/ComplexDouble;",
            ">;DDDD)J"
        }
    .end annotation

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmpg-double v2, p5, v0

    .line 5
    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    cmpg-double v0, p3, v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-wide/16 p0, 0x0

    .line 13
    return-wide p0

    .line 14
    .line 15
    :cond_0
    if-gez v2, :cond_1

    .line 16
    neg-double p3, p3

    .line 17
    :cond_1
    move-wide v3, p3

    .line 18
    .line 19
    .line 20
    invoke-static {p5, p6}, Ljava/lang/Math;->abs(D)D

    .line 21
    move-result-wide v1

    .line 22
    .line 23
    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    .line 24
    .line 25
    cmpl-double p5, p1, p3

    .line 26
    .line 27
    if-lez p5, :cond_2

    .line 28
    move-object v0, p0

    .line 29
    move-wide v5, p7

    .line 30
    .line 31
    .line 32
    invoke-static/range {v0 .. v6}, Landroidx/compose/animation/core/SpringEstimationKt;->g(Lw7/u;DDD)D

    .line 33
    move-result-wide p0

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_2
    cmpg-double p1, p1, p3

    .line 37
    .line 38
    if-gez p1, :cond_3

    .line 39
    move-object v0, p0

    .line 40
    move-wide v5, p7

    .line 41
    .line 42
    .line 43
    invoke-static/range {v0 .. v6}, Landroidx/compose/animation/core/SpringEstimationKt;->i(Lw7/u;DDD)D

    .line 44
    move-result-wide p0

    .line 45
    goto :goto_0

    .line 46
    :cond_3
    move-object v0, p0

    .line 47
    move-wide v5, p7

    .line 48
    .line 49
    .line 50
    invoke-static/range {v0 .. v6}, Landroidx/compose/animation/core/SpringEstimationKt;->c(Lw7/u;DDD)D

    .line 51
    move-result-wide p0

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    :goto_0
    const-wide p2, 0x408f400000000000L    # 1000.0

    .line 57
    mul-double/2addr p0, p2

    .line 58
    double-to-long p0, p0

    .line 59
    return-wide p0
.end method

.method private static final g(Lw7/u;DDD)D
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/u<",
            "Landroidx/compose/animation/core/ComplexDouble;",
            "Landroidx/compose/animation/core/ComplexDouble;",
            ">;DDD)D"
        }
    .end annotation

    .line 1
    .line 2
    move-wide/from16 v0, p5

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lw7/u;->c()Ljava/lang/Object;

    .line 6
    move-result-object v2

    .line 7
    .line 8
    check-cast v2, Landroidx/compose/animation/core/ComplexDouble;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2}, Landroidx/compose/animation/core/ComplexDouble;->f()D

    .line 12
    move-result-wide v14

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Lw7/u;->d()Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    check-cast v2, Landroidx/compose/animation/core/ComplexDouble;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Landroidx/compose/animation/core/ComplexDouble;->f()D

    .line 22
    move-result-wide v16

    .line 23
    .line 24
    mul-double v2, v14, p1

    .line 25
    .line 26
    sub-double v2, v2, p3

    .line 27
    .line 28
    sub-double v18, v14, v16

    .line 29
    .line 30
    div-double v11, v2, v18

    .line 31
    .line 32
    sub-double v20, p1, v11

    .line 33
    .line 34
    div-double v2, v0, v20

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 38
    move-result-wide v2

    .line 39
    .line 40
    .line 41
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    .line 42
    move-result-wide v2

    .line 43
    div-double/2addr v2, v14

    .line 44
    .line 45
    div-double v4, v0, v11

    .line 46
    .line 47
    .line 48
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    .line 49
    move-result-wide v4

    .line 50
    .line 51
    .line 52
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    .line 53
    move-result-wide v4

    .line 54
    .line 55
    div-double v4, v4, v16

    .line 56
    .line 57
    .line 58
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    .line 59
    move-result v6

    .line 60
    .line 61
    const/16 v22, 0x0

    .line 62
    const/4 v7, 0x1

    .line 63
    .line 64
    if-nez v6, :cond_0

    .line 65
    .line 66
    .line 67
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 68
    move-result v6

    .line 69
    .line 70
    if-nez v6, :cond_0

    .line 71
    move v6, v7

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :cond_0
    move/from16 v6, v22

    .line 75
    :goto_0
    xor-int/2addr v6, v7

    .line 76
    .line 77
    if-eqz v6, :cond_1

    .line 78
    .line 79
    move-wide/from16 v23, v4

    .line 80
    goto :goto_3

    .line 81
    .line 82
    .line 83
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    .line 84
    move-result v6

    .line 85
    .line 86
    if-nez v6, :cond_2

    .line 87
    .line 88
    .line 89
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 90
    move-result v6

    .line 91
    .line 92
    if-nez v6, :cond_2

    .line 93
    move v6, v7

    .line 94
    goto :goto_1

    .line 95
    .line 96
    :cond_2
    move/from16 v6, v22

    .line 97
    :goto_1
    xor-int/2addr v6, v7

    .line 98
    .line 99
    if-eqz v6, :cond_3

    .line 100
    .line 101
    :goto_2
    move-wide/from16 v23, v2

    .line 102
    goto :goto_3

    .line 103
    .line 104
    .line 105
    :cond_3
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    .line 106
    move-result-wide v2

    .line 107
    goto :goto_2

    .line 108
    .line 109
    :goto_3
    mul-double v25, v20, v14

    .line 110
    neg-double v2, v11

    .line 111
    .line 112
    mul-double v2, v2, v16

    .line 113
    .line 114
    div-double v2, v25, v2

    .line 115
    .line 116
    .line 117
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    .line 118
    move-result-wide v2

    .line 119
    .line 120
    sub-double v4, v16, v14

    .line 121
    .line 122
    div-double v7, v2, v4

    .line 123
    .line 124
    .line 125
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    .line 126
    move-result v2

    .line 127
    .line 128
    if-nez v2, :cond_4

    .line 129
    .line 130
    const-wide/16 v27, 0x0

    .line 131
    .line 132
    cmpg-double v2, v7, v27

    .line 133
    .line 134
    if-gtz v2, :cond_5

    .line 135
    .line 136
    :cond_4
    move-wide/from16 v29, v11

    .line 137
    goto :goto_4

    .line 138
    .line 139
    :cond_5
    cmpl-double v2, v7, v27

    .line 140
    .line 141
    if-lez v2, :cond_7

    .line 142
    .line 143
    move-wide/from16 v3, v20

    .line 144
    move-wide v5, v14

    .line 145
    move-wide v9, v11

    .line 146
    .line 147
    move-wide/from16 v29, v11

    .line 148
    .line 149
    move-wide/from16 v11, v16

    .line 150
    .line 151
    .line 152
    invoke-static/range {v3 .. v12}, Landroidx/compose/animation/core/SpringEstimationKt;->h(DDDDD)D

    .line 153
    move-result-wide v2

    .line 154
    neg-double v2, v2

    .line 155
    .line 156
    cmpg-double v2, v2, v0

    .line 157
    .line 158
    if-gez v2, :cond_8

    .line 159
    .line 160
    cmpl-double v2, v29, v27

    .line 161
    .line 162
    if-lez v2, :cond_6

    .line 163
    .line 164
    cmpg-double v2, v20, v27

    .line 165
    .line 166
    if-gez v2, :cond_6

    .line 167
    .line 168
    move-wide/from16 v23, v27

    .line 169
    :cond_6
    :goto_4
    neg-double v0, v0

    .line 170
    :goto_5
    move-wide v12, v0

    .line 171
    goto :goto_6

    .line 172
    .line 173
    :cond_7
    move-wide/from16 v29, v11

    .line 174
    .line 175
    :cond_8
    mul-double v11, v29, v16

    .line 176
    .line 177
    mul-double v11, v11, v16

    .line 178
    neg-double v2, v11

    .line 179
    .line 180
    mul-double v25, v25, v14

    .line 181
    .line 182
    div-double v2, v2, v25

    .line 183
    .line 184
    .line 185
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    .line 186
    move-result-wide v2

    .line 187
    .line 188
    div-double v23, v2, v18

    .line 189
    goto :goto_5

    .line 190
    .line 191
    :goto_6
    new-instance v0, Landroidx/compose/animation/core/SpringEstimationKt$estimateOverDamped$fn$1;

    .line 192
    move-object v3, v0

    .line 193
    .line 194
    move-wide/from16 v4, v20

    .line 195
    move-wide v6, v14

    .line 196
    .line 197
    move-wide/from16 v8, v29

    .line 198
    .line 199
    move-wide/from16 v10, v16

    .line 200
    .line 201
    .line 202
    invoke-direct/range {v3 .. v13}, Landroidx/compose/animation/core/SpringEstimationKt$estimateOverDamped$fn$1;-><init>(DDDDD)V

    .line 203
    .line 204
    new-instance v1, Landroidx/compose/animation/core/SpringEstimationKt$estimateOverDamped$fnPrime$1;

    .line 205
    move-object v3, v1

    .line 206
    .line 207
    .line 208
    invoke-direct/range {v3 .. v11}, Landroidx/compose/animation/core/SpringEstimationKt$estimateOverDamped$fnPrime$1;-><init>(DDDD)V

    .line 209
    .line 210
    .line 211
    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 212
    move-result-object v2

    .line 213
    .line 214
    .line 215
    invoke-interface {v0, v2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    move-result-object v2

    .line 217
    .line 218
    check-cast v2, Ljava/lang/Number;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    .line 222
    move-result-wide v2

    .line 223
    .line 224
    .line 225
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 226
    move-result-wide v2

    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 232
    .line 233
    cmpg-double v2, v2, v4

    .line 234
    .line 235
    if-gez v2, :cond_9

    .line 236
    return-wide v23

    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :cond_9
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 242
    .line 243
    move/from16 v4, v22

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    :goto_7
    const-wide v5, 0x3f50624dd2f1a9fcL    # 0.001

    .line 249
    .line 250
    cmpl-double v2, v2, v5

    .line 251
    .line 252
    if-lez v2, :cond_a

    .line 253
    .line 254
    const/16 v2, 0x64

    .line 255
    .line 256
    if-ge v4, v2, :cond_a

    .line 257
    .line 258
    add-int/lit8 v4, v4, 0x1

    .line 259
    .line 260
    .line 261
    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 262
    move-result-object v2

    .line 263
    .line 264
    .line 265
    invoke-interface {v0, v2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    move-result-object v2

    .line 267
    .line 268
    check-cast v2, Ljava/lang/Number;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    .line 272
    move-result-wide v2

    .line 273
    .line 274
    .line 275
    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 276
    move-result-object v5

    .line 277
    .line 278
    .line 279
    invoke-interface {v1, v5}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    move-result-object v5

    .line 281
    .line 282
    check-cast v5, Ljava/lang/Number;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    .line 286
    move-result-wide v5

    .line 287
    div-double/2addr v2, v5

    .line 288
    .line 289
    sub-double v2, v23, v2

    .line 290
    .line 291
    sub-double v23, v23, v2

    .line 292
    .line 293
    .line 294
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->abs(D)D

    .line 295
    move-result-wide v5

    .line 296
    .line 297
    move-wide/from16 v23, v2

    .line 298
    move-wide v2, v5

    .line 299
    goto :goto_7

    .line 300
    :cond_a
    return-wide v23
.end method

.method private static final h(DDDDD)D
    .locals 0

    .line 1
    mul-double/2addr p2, p4

    .line 2
    .line 3
    .line 4
    invoke-static {p2, p3}, Ljava/lang/Math;->exp(D)D

    .line 5
    move-result-wide p2

    .line 6
    mul-double/2addr p0, p2

    .line 7
    mul-double/2addr p8, p4

    .line 8
    .line 9
    .line 10
    invoke-static {p8, p9}, Ljava/lang/Math;->exp(D)D

    .line 11
    move-result-wide p2

    .line 12
    mul-double/2addr p6, p2

    .line 13
    add-double/2addr p0, p6

    .line 14
    return-wide p0
.end method

.method private static final i(Lw7/u;DDD)D
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/u<",
            "Landroidx/compose/animation/core/ComplexDouble;",
            "Landroidx/compose/animation/core/ComplexDouble;",
            ">;DDD)D"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lw7/u;->c()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroidx/compose/animation/core/ComplexDouble;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/animation/core/ComplexDouble;->f()D

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    mul-double v2, v0, p1

    .line 13
    sub-double/2addr p3, v2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lw7/u;->c()Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    check-cast p0, Landroidx/compose/animation/core/ComplexDouble;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/compose/animation/core/ComplexDouble;->e()D

    .line 23
    move-result-wide v2

    .line 24
    div-double/2addr p3, v2

    .line 25
    mul-double/2addr p1, p1

    .line 26
    mul-double/2addr p3, p3

    .line 27
    add-double/2addr p1, p3

    .line 28
    .line 29
    .line 30
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 31
    move-result-wide p0

    .line 32
    div-double/2addr p5, p0

    .line 33
    .line 34
    .line 35
    invoke-static {p5, p6}, Ljava/lang/Math;->log(D)D

    .line 36
    move-result-wide p0

    .line 37
    div-double/2addr p0, v0

    .line 38
    return-wide p0
.end method
