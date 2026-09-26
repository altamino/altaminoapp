.class public Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;
.super Landroidx/constraintlayout/core/motion/utils/CurveFit;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;
    }
.end annotation


# static fields
.field public static final ARC_START_FLIP:I = 0x3

.field public static final ARC_START_HORIZONTAL:I = 0x2

.field public static final ARC_START_LINEAR:I = 0x0

.field public static final ARC_START_VERTICAL:I = 0x1

.field private static final START_HORIZONTAL:I = 0x2

.field private static final START_LINEAR:I = 0x3

.field private static final START_VERTICAL:I = 0x1


# instance fields
.field mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

.field private mExtrapolate:Z

.field private final mTime:[D


# direct methods
.method public constructor <init>([I[D[[D)V
    .locals 24

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    .line 7
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;-><init>()V

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    iput-boolean v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mExtrapolate:Z

    .line 11
    .line 12
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mTime:[D

    .line 13
    array-length v3, v1

    .line 14
    sub-int/2addr v3, v2

    .line 15
    .line 16
    new-array v3, v3, [Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 17
    .line 18
    iput-object v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 19
    const/4 v3, 0x0

    .line 20
    move v5, v2

    .line 21
    move v6, v5

    .line 22
    move v4, v3

    .line 23
    .line 24
    :goto_0
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 25
    array-length v8, v7

    .line 26
    .line 27
    if-ge v4, v8, :cond_4

    .line 28
    .line 29
    aget v8, p1, v4

    .line 30
    const/4 v9, 0x3

    .line 31
    .line 32
    if-eqz v8, :cond_3

    .line 33
    .line 34
    if-eq v8, v2, :cond_2

    .line 35
    const/4 v10, 0x2

    .line 36
    .line 37
    if-eq v8, v10, :cond_1

    .line 38
    .line 39
    if-eq v8, v9, :cond_0

    .line 40
    goto :goto_3

    .line 41
    .line 42
    :cond_0
    if-ne v5, v2, :cond_2

    .line 43
    goto :goto_2

    .line 44
    :goto_1
    move v6, v5

    .line 45
    goto :goto_3

    .line 46
    :cond_1
    :goto_2
    move v5, v10

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v5, v2

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    move v6, v9

    .line 51
    .line 52
    :goto_3
    new-instance v22, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 53
    .line 54
    aget-wide v10, v1, v4

    .line 55
    .line 56
    add-int/lit8 v23, v4, 0x1

    .line 57
    .line 58
    aget-wide v12, v1, v23

    .line 59
    .line 60
    aget-object v8, p3, v4

    .line 61
    .line 62
    aget-wide v14, v8, v3

    .line 63
    .line 64
    aget-wide v16, v8, v2

    .line 65
    .line 66
    aget-object v8, p3, v23

    .line 67
    .line 68
    aget-wide v18, v8, v3

    .line 69
    .line 70
    aget-wide v20, v8, v2

    .line 71
    .line 72
    move-object/from16 v8, v22

    .line 73
    move v9, v6

    .line 74
    .line 75
    .line 76
    invoke-direct/range {v8 .. v21}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;-><init>(IDDDDDD)V

    .line 77
    .line 78
    aput-object v22, v7, v4

    .line 79
    .line 80
    move/from16 v4, v23

    .line 81
    goto :goto_0

    .line 82
    :cond_4
    return-void
.end method


# virtual methods
.method public c(DI)D
    .locals 7

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mExtrapolate:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 8
    .line 9
    aget-object v2, v0, v1

    .line 10
    .line 11
    iget-wide v3, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    .line 12
    .line 13
    cmpg-double v5, p1, v3

    .line 14
    .line 15
    if-gez v5, :cond_3

    .line 16
    sub-double/2addr p1, v3

    .line 17
    .line 18
    iget-boolean v0, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    if-nez p3, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->f(D)D

    .line 26
    move-result-wide v5

    .line 27
    .line 28
    iget-object p3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 29
    .line 30
    aget-object p3, p3, v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d(D)D

    .line 34
    move-result-wide v0

    .line 35
    :goto_0
    mul-double/2addr p1, v0

    .line 36
    add-double/2addr v5, p1

    .line 37
    return-wide v5

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->g(D)D

    .line 41
    move-result-wide v5

    .line 42
    .line 43
    iget-object p3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 44
    .line 45
    aget-object p3, p3, v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->e(D)D

    .line 49
    move-result-wide v0

    .line 50
    goto :goto_0

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->k(D)V

    .line 54
    .line 55
    if-nez p3, :cond_2

    .line 56
    .line 57
    iget-object p3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 58
    .line 59
    aget-object p3, p3, v1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->h()D

    .line 63
    move-result-wide v2

    .line 64
    .line 65
    iget-object p3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 66
    .line 67
    aget-object p3, p3, v1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->b()D

    .line 71
    move-result-wide v0

    .line 72
    :goto_1
    mul-double/2addr p1, v0

    .line 73
    add-double/2addr v2, p1

    .line 74
    return-wide v2

    .line 75
    .line 76
    :cond_2
    iget-object p3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 77
    .line 78
    aget-object p3, p3, v1

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->i()D

    .line 82
    move-result-wide v2

    .line 83
    .line 84
    iget-object p3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 85
    .line 86
    aget-object p3, p3, v1

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->c()D

    .line 90
    move-result-wide v0

    .line 91
    goto :goto_1

    .line 92
    :cond_3
    array-length v2, v0

    .line 93
    .line 94
    add-int/lit8 v2, v2, -0x1

    .line 95
    .line 96
    aget-object v2, v0, v2

    .line 97
    .line 98
    iget-wide v2, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 99
    .line 100
    cmpl-double v2, p1, v2

    .line 101
    .line 102
    if-lez v2, :cond_7

    .line 103
    array-length v1, v0

    .line 104
    .line 105
    add-int/lit8 v1, v1, -0x1

    .line 106
    .line 107
    aget-object v1, v0, v1

    .line 108
    .line 109
    iget-wide v1, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 110
    sub-double/2addr p1, v1

    .line 111
    array-length v3, v0

    .line 112
    .line 113
    add-int/lit8 v3, v3, -0x1

    .line 114
    .line 115
    if-nez p3, :cond_4

    .line 116
    .line 117
    aget-object p3, v0, v3

    .line 118
    .line 119
    .line 120
    invoke-virtual {p3, v1, v2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->f(D)D

    .line 121
    move-result-wide v4

    .line 122
    .line 123
    iget-object p3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 124
    .line 125
    aget-object p3, p3, v3

    .line 126
    .line 127
    .line 128
    invoke-virtual {p3, v1, v2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d(D)D

    .line 129
    move-result-wide v0

    .line 130
    :goto_2
    mul-double/2addr p1, v0

    .line 131
    add-double/2addr v4, p1

    .line 132
    return-wide v4

    .line 133
    .line 134
    :cond_4
    aget-object p3, v0, v3

    .line 135
    .line 136
    .line 137
    invoke-virtual {p3, v1, v2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->g(D)D

    .line 138
    move-result-wide v4

    .line 139
    .line 140
    iget-object p3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 141
    .line 142
    aget-object p3, p3, v3

    .line 143
    .line 144
    .line 145
    invoke-virtual {p3, v1, v2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->e(D)D

    .line 146
    move-result-wide v0

    .line 147
    goto :goto_2

    .line 148
    .line 149
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 150
    .line 151
    aget-object v2, v0, v1

    .line 152
    .line 153
    iget-wide v2, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    .line 154
    .line 155
    cmpg-double v4, p1, v2

    .line 156
    .line 157
    if-gez v4, :cond_6

    .line 158
    move-wide p1, v2

    .line 159
    goto :goto_3

    .line 160
    :cond_6
    array-length v2, v0

    .line 161
    .line 162
    add-int/lit8 v2, v2, -0x1

    .line 163
    .line 164
    aget-object v2, v0, v2

    .line 165
    .line 166
    iget-wide v2, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 167
    .line 168
    cmpl-double v2, p1, v2

    .line 169
    .line 170
    if-lez v2, :cond_7

    .line 171
    array-length p1, v0

    .line 172
    .line 173
    add-int/lit8 p1, p1, -0x1

    .line 174
    .line 175
    aget-object p1, v0, p1

    .line 176
    .line 177
    iget-wide p1, p1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 178
    .line 179
    :cond_7
    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 180
    array-length v2, v0

    .line 181
    .line 182
    if-ge v1, v2, :cond_c

    .line 183
    .line 184
    aget-object v0, v0, v1

    .line 185
    .line 186
    iget-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 187
    .line 188
    cmpg-double v2, p1, v2

    .line 189
    .line 190
    if-gtz v2, :cond_b

    .line 191
    .line 192
    iget-boolean v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    .line 193
    .line 194
    if-eqz v2, :cond_9

    .line 195
    .line 196
    if-nez p3, :cond_8

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->f(D)D

    .line 200
    move-result-wide p1

    .line 201
    return-wide p1

    .line 202
    .line 203
    .line 204
    :cond_8
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->g(D)D

    .line 205
    move-result-wide p1

    .line 206
    return-wide p1

    .line 207
    .line 208
    .line 209
    :cond_9
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->k(D)V

    .line 210
    .line 211
    if-nez p3, :cond_a

    .line 212
    .line 213
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 214
    .line 215
    aget-object p1, p1, v1

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->h()D

    .line 219
    move-result-wide p1

    .line 220
    return-wide p1

    .line 221
    .line 222
    :cond_a
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 223
    .line 224
    aget-object p1, p1, v1

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->i()D

    .line 228
    move-result-wide p1

    .line 229
    return-wide p1

    .line 230
    .line 231
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 232
    goto :goto_3

    .line 233
    .line 234
    :cond_c
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    .line 235
    return-wide p1
.end method

.method public d(D[D)V
    .locals 10

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mExtrapolate:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 9
    .line 10
    aget-object v3, v0, v1

    .line 11
    .line 12
    iget-wide v4, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    .line 13
    .line 14
    cmpg-double v6, p1, v4

    .line 15
    .line 16
    if-gez v6, :cond_1

    .line 17
    sub-double/2addr p1, v4

    .line 18
    .line 19
    iget-boolean v0, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->f(D)D

    .line 25
    move-result-wide v6

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 28
    .line 29
    aget-object v0, v0, v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v4, v5}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d(D)D

    .line 33
    move-result-wide v8

    .line 34
    mul-double/2addr v8, p1

    .line 35
    add-double/2addr v6, v8

    .line 36
    .line 37
    aput-wide v6, p3, v1

    .line 38
    .line 39
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 40
    .line 41
    aget-object v0, v0, v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v4, v5}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->g(D)D

    .line 45
    move-result-wide v6

    .line 46
    .line 47
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 48
    .line 49
    aget-object v0, v0, v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v4, v5}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->e(D)D

    .line 53
    move-result-wide v0

    .line 54
    mul-double/2addr p1, v0

    .line 55
    add-double/2addr v6, p1

    .line 56
    .line 57
    aput-wide v6, p3, v2

    .line 58
    goto :goto_0

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->k(D)V

    .line 62
    .line 63
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 64
    .line 65
    aget-object v0, v0, v1

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->h()D

    .line 69
    move-result-wide v3

    .line 70
    .line 71
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 72
    .line 73
    aget-object v0, v0, v1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->b()D

    .line 77
    move-result-wide v5

    .line 78
    mul-double/2addr v5, p1

    .line 79
    add-double/2addr v3, v5

    .line 80
    .line 81
    aput-wide v3, p3, v1

    .line 82
    .line 83
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 84
    .line 85
    aget-object v0, v0, v1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->i()D

    .line 89
    move-result-wide v3

    .line 90
    .line 91
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 92
    .line 93
    aget-object v0, v0, v1

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->c()D

    .line 97
    move-result-wide v0

    .line 98
    mul-double/2addr p1, v0

    .line 99
    add-double/2addr v3, p1

    .line 100
    .line 101
    aput-wide v3, p3, v2

    .line 102
    :goto_0
    return-void

    .line 103
    :cond_1
    array-length v3, v0

    .line 104
    sub-int/2addr v3, v2

    .line 105
    .line 106
    aget-object v3, v0, v3

    .line 107
    .line 108
    iget-wide v3, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 109
    .line 110
    cmpl-double v3, p1, v3

    .line 111
    .line 112
    if-lez v3, :cond_5

    .line 113
    array-length v3, v0

    .line 114
    sub-int/2addr v3, v2

    .line 115
    .line 116
    aget-object v3, v0, v3

    .line 117
    .line 118
    iget-wide v3, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 119
    .line 120
    sub-double v5, p1, v3

    .line 121
    array-length v7, v0

    .line 122
    sub-int/2addr v7, v2

    .line 123
    .line 124
    aget-object v0, v0, v7

    .line 125
    .line 126
    iget-boolean v8, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    .line 127
    .line 128
    if-eqz v8, :cond_2

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->f(D)D

    .line 132
    move-result-wide p1

    .line 133
    .line 134
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 135
    .line 136
    aget-object v0, v0, v7

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d(D)D

    .line 140
    move-result-wide v8

    .line 141
    mul-double/2addr v8, v5

    .line 142
    add-double/2addr p1, v8

    .line 143
    .line 144
    aput-wide p1, p3, v1

    .line 145
    .line 146
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 147
    .line 148
    aget-object p1, p1, v7

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->g(D)D

    .line 152
    move-result-wide p1

    .line 153
    .line 154
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 155
    .line 156
    aget-object v0, v0, v7

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->e(D)D

    .line 160
    move-result-wide v0

    .line 161
    mul-double/2addr v5, v0

    .line 162
    add-double/2addr p1, v5

    .line 163
    .line 164
    aput-wide p1, p3, v2

    .line 165
    goto :goto_1

    .line 166
    .line 167
    .line 168
    :cond_2
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->k(D)V

    .line 169
    .line 170
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 171
    .line 172
    aget-object p1, p1, v7

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->h()D

    .line 176
    move-result-wide p1

    .line 177
    .line 178
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 179
    .line 180
    aget-object v0, v0, v7

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->b()D

    .line 184
    move-result-wide v3

    .line 185
    mul-double/2addr v3, v5

    .line 186
    add-double/2addr p1, v3

    .line 187
    .line 188
    aput-wide p1, p3, v1

    .line 189
    .line 190
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 191
    .line 192
    aget-object p1, p1, v7

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->i()D

    .line 196
    move-result-wide p1

    .line 197
    .line 198
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 199
    .line 200
    aget-object v0, v0, v7

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->c()D

    .line 204
    move-result-wide v0

    .line 205
    mul-double/2addr v5, v0

    .line 206
    add-double/2addr p1, v5

    .line 207
    .line 208
    aput-wide p1, p3, v2

    .line 209
    :goto_1
    return-void

    .line 210
    .line 211
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 212
    .line 213
    aget-object v3, v0, v1

    .line 214
    .line 215
    iget-wide v3, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    .line 216
    .line 217
    cmpg-double v5, p1, v3

    .line 218
    .line 219
    if-gez v5, :cond_4

    .line 220
    move-wide p1, v3

    .line 221
    :cond_4
    array-length v3, v0

    .line 222
    sub-int/2addr v3, v2

    .line 223
    .line 224
    aget-object v3, v0, v3

    .line 225
    .line 226
    iget-wide v3, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 227
    .line 228
    cmpl-double v3, p1, v3

    .line 229
    .line 230
    if-lez v3, :cond_5

    .line 231
    array-length p1, v0

    .line 232
    sub-int/2addr p1, v2

    .line 233
    .line 234
    aget-object p1, v0, p1

    .line 235
    .line 236
    iget-wide p1, p1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 237
    :cond_5
    move v0, v1

    .line 238
    .line 239
    :goto_2
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 240
    array-length v4, v3

    .line 241
    .line 242
    if-ge v0, v4, :cond_8

    .line 243
    .line 244
    aget-object v3, v3, v0

    .line 245
    .line 246
    iget-wide v4, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 247
    .line 248
    cmpg-double v4, p1, v4

    .line 249
    .line 250
    if-gtz v4, :cond_7

    .line 251
    .line 252
    iget-boolean v4, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    .line 253
    .line 254
    if-eqz v4, :cond_6

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->f(D)D

    .line 258
    move-result-wide v3

    .line 259
    .line 260
    aput-wide v3, p3, v1

    .line 261
    .line 262
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 263
    .line 264
    aget-object v0, v1, v0

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->g(D)D

    .line 268
    move-result-wide p1

    .line 269
    .line 270
    aput-wide p1, p3, v2

    .line 271
    return-void

    .line 272
    .line 273
    .line 274
    :cond_6
    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->k(D)V

    .line 275
    .line 276
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 277
    .line 278
    aget-object p1, p1, v0

    .line 279
    .line 280
    .line 281
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->h()D

    .line 282
    move-result-wide p1

    .line 283
    .line 284
    aput-wide p1, p3, v1

    .line 285
    .line 286
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 287
    .line 288
    aget-object p1, p1, v0

    .line 289
    .line 290
    .line 291
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->i()D

    .line 292
    move-result-wide p1

    .line 293
    .line 294
    aput-wide p1, p3, v2

    .line 295
    return-void

    .line 296
    .line 297
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 298
    goto :goto_2

    .line 299
    :cond_8
    return-void
.end method

.method public e(D[F)V
    .locals 10

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mExtrapolate:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 9
    .line 10
    aget-object v3, v0, v1

    .line 11
    .line 12
    iget-wide v4, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    .line 13
    .line 14
    cmpg-double v6, p1, v4

    .line 15
    .line 16
    if-gez v6, :cond_1

    .line 17
    sub-double/2addr p1, v4

    .line 18
    .line 19
    iget-boolean v0, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->f(D)D

    .line 25
    move-result-wide v6

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 28
    .line 29
    aget-object v0, v0, v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v4, v5}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d(D)D

    .line 33
    move-result-wide v8

    .line 34
    mul-double/2addr v8, p1

    .line 35
    add-double/2addr v6, v8

    .line 36
    double-to-float v0, v6

    .line 37
    .line 38
    aput v0, p3, v1

    .line 39
    .line 40
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 41
    .line 42
    aget-object v0, v0, v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v4, v5}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->g(D)D

    .line 46
    move-result-wide v6

    .line 47
    .line 48
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 49
    .line 50
    aget-object v0, v0, v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v4, v5}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->e(D)D

    .line 54
    move-result-wide v0

    .line 55
    mul-double/2addr p1, v0

    .line 56
    add-double/2addr v6, p1

    .line 57
    double-to-float p1, v6

    .line 58
    .line 59
    aput p1, p3, v2

    .line 60
    goto :goto_0

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->k(D)V

    .line 64
    .line 65
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 66
    .line 67
    aget-object v0, v0, v1

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->h()D

    .line 71
    move-result-wide v3

    .line 72
    .line 73
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 74
    .line 75
    aget-object v0, v0, v1

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->b()D

    .line 79
    move-result-wide v5

    .line 80
    mul-double/2addr v5, p1

    .line 81
    add-double/2addr v3, v5

    .line 82
    double-to-float v0, v3

    .line 83
    .line 84
    aput v0, p3, v1

    .line 85
    .line 86
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 87
    .line 88
    aget-object v0, v0, v1

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->i()D

    .line 92
    move-result-wide v3

    .line 93
    .line 94
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 95
    .line 96
    aget-object v0, v0, v1

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->c()D

    .line 100
    move-result-wide v0

    .line 101
    mul-double/2addr p1, v0

    .line 102
    add-double/2addr v3, p1

    .line 103
    double-to-float p1, v3

    .line 104
    .line 105
    aput p1, p3, v2

    .line 106
    :goto_0
    return-void

    .line 107
    :cond_1
    array-length v3, v0

    .line 108
    sub-int/2addr v3, v2

    .line 109
    .line 110
    aget-object v3, v0, v3

    .line 111
    .line 112
    iget-wide v3, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 113
    .line 114
    cmpl-double v3, p1, v3

    .line 115
    .line 116
    if-lez v3, :cond_5

    .line 117
    array-length v3, v0

    .line 118
    sub-int/2addr v3, v2

    .line 119
    .line 120
    aget-object v3, v0, v3

    .line 121
    .line 122
    iget-wide v3, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 123
    .line 124
    sub-double v5, p1, v3

    .line 125
    array-length v7, v0

    .line 126
    sub-int/2addr v7, v2

    .line 127
    .line 128
    aget-object v0, v0, v7

    .line 129
    .line 130
    iget-boolean v8, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    .line 131
    .line 132
    if-eqz v8, :cond_2

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->f(D)D

    .line 136
    move-result-wide p1

    .line 137
    .line 138
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 139
    .line 140
    aget-object v0, v0, v7

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d(D)D

    .line 144
    move-result-wide v8

    .line 145
    mul-double/2addr v8, v5

    .line 146
    add-double/2addr p1, v8

    .line 147
    double-to-float p1, p1

    .line 148
    .line 149
    aput p1, p3, v1

    .line 150
    .line 151
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 152
    .line 153
    aget-object p1, p1, v7

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->g(D)D

    .line 157
    move-result-wide p1

    .line 158
    .line 159
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 160
    .line 161
    aget-object v0, v0, v7

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->e(D)D

    .line 165
    move-result-wide v0

    .line 166
    mul-double/2addr v5, v0

    .line 167
    add-double/2addr p1, v5

    .line 168
    double-to-float p1, p1

    .line 169
    .line 170
    aput p1, p3, v2

    .line 171
    goto :goto_1

    .line 172
    .line 173
    .line 174
    :cond_2
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->k(D)V

    .line 175
    .line 176
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 177
    .line 178
    aget-object p1, p1, v7

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->h()D

    .line 182
    move-result-wide p1

    .line 183
    double-to-float p1, p1

    .line 184
    .line 185
    aput p1, p3, v1

    .line 186
    .line 187
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 188
    .line 189
    aget-object p1, p1, v7

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->i()D

    .line 193
    move-result-wide p1

    .line 194
    double-to-float p1, p1

    .line 195
    .line 196
    aput p1, p3, v2

    .line 197
    :goto_1
    return-void

    .line 198
    .line 199
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 200
    .line 201
    aget-object v3, v0, v1

    .line 202
    .line 203
    iget-wide v3, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    .line 204
    .line 205
    cmpg-double v5, p1, v3

    .line 206
    .line 207
    if-gez v5, :cond_4

    .line 208
    move-wide p1, v3

    .line 209
    goto :goto_2

    .line 210
    :cond_4
    array-length v3, v0

    .line 211
    sub-int/2addr v3, v2

    .line 212
    .line 213
    aget-object v3, v0, v3

    .line 214
    .line 215
    iget-wide v3, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 216
    .line 217
    cmpl-double v3, p1, v3

    .line 218
    .line 219
    if-lez v3, :cond_5

    .line 220
    array-length p1, v0

    .line 221
    sub-int/2addr p1, v2

    .line 222
    .line 223
    aget-object p1, v0, p1

    .line 224
    .line 225
    iget-wide p1, p1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 226
    :cond_5
    :goto_2
    move v0, v1

    .line 227
    .line 228
    :goto_3
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 229
    array-length v4, v3

    .line 230
    .line 231
    if-ge v0, v4, :cond_8

    .line 232
    .line 233
    aget-object v3, v3, v0

    .line 234
    .line 235
    iget-wide v4, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 236
    .line 237
    cmpg-double v4, p1, v4

    .line 238
    .line 239
    if-gtz v4, :cond_7

    .line 240
    .line 241
    iget-boolean v4, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    .line 242
    .line 243
    if-eqz v4, :cond_6

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->f(D)D

    .line 247
    move-result-wide v3

    .line 248
    double-to-float v3, v3

    .line 249
    .line 250
    aput v3, p3, v1

    .line 251
    .line 252
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 253
    .line 254
    aget-object v0, v1, v0

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->g(D)D

    .line 258
    move-result-wide p1

    .line 259
    double-to-float p1, p1

    .line 260
    .line 261
    aput p1, p3, v2

    .line 262
    return-void

    .line 263
    .line 264
    .line 265
    :cond_6
    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->k(D)V

    .line 266
    .line 267
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 268
    .line 269
    aget-object p1, p1, v0

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->h()D

    .line 273
    move-result-wide p1

    .line 274
    double-to-float p1, p1

    .line 275
    .line 276
    aput p1, p3, v1

    .line 277
    .line 278
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 279
    .line 280
    aget-object p1, p1, v0

    .line 281
    .line 282
    .line 283
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->i()D

    .line 284
    move-result-wide p1

    .line 285
    double-to-float p1, p1

    .line 286
    .line 287
    aput p1, p3, v2

    .line 288
    return-void

    .line 289
    .line 290
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 291
    goto :goto_3

    .line 292
    :cond_8
    return-void
.end method

.method public f(DI)D
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    aget-object v2, v0, v1

    .line 6
    .line 7
    iget-wide v2, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    .line 8
    .line 9
    cmpg-double v4, p1, v2

    .line 10
    .line 11
    if-gez v4, :cond_0

    .line 12
    move-wide p1, v2

    .line 13
    :cond_0
    array-length v2, v0

    .line 14
    .line 15
    add-int/lit8 v2, v2, -0x1

    .line 16
    .line 17
    aget-object v2, v0, v2

    .line 18
    .line 19
    iget-wide v2, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 20
    .line 21
    cmpl-double v2, p1, v2

    .line 22
    .line 23
    if-lez v2, :cond_1

    .line 24
    array-length p1, v0

    .line 25
    .line 26
    add-int/lit8 p1, p1, -0x1

    .line 27
    .line 28
    aget-object p1, v0, p1

    .line 29
    .line 30
    iget-wide p1, p1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 31
    .line 32
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 33
    array-length v2, v0

    .line 34
    .line 35
    if-ge v1, v2, :cond_6

    .line 36
    .line 37
    aget-object v0, v0, v1

    .line 38
    .line 39
    iget-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 40
    .line 41
    cmpg-double v2, p1, v2

    .line 42
    .line 43
    if-gtz v2, :cond_5

    .line 44
    .line 45
    iget-boolean v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    .line 46
    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    if-nez p3, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d(D)D

    .line 53
    move-result-wide p1

    .line 54
    return-wide p1

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->e(D)D

    .line 58
    move-result-wide p1

    .line 59
    return-wide p1

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->k(D)V

    .line 63
    .line 64
    if-nez p3, :cond_4

    .line 65
    .line 66
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 67
    .line 68
    aget-object p1, p1, v1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->b()D

    .line 72
    move-result-wide p1

    .line 73
    return-wide p1

    .line 74
    .line 75
    :cond_4
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 76
    .line 77
    aget-object p1, p1, v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->c()D

    .line 81
    move-result-wide p1

    .line 82
    return-wide p1

    .line 83
    .line 84
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 85
    goto :goto_0

    .line 86
    .line 87
    :cond_6
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    .line 88
    return-wide p1
.end method

.method public g(D[D)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    aget-object v2, v0, v1

    .line 6
    .line 7
    iget-wide v2, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    .line 8
    .line 9
    cmpg-double v4, p1, v2

    .line 10
    const/4 v5, 0x1

    .line 11
    .line 12
    if-gez v4, :cond_0

    .line 13
    move-wide p1, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    array-length v2, v0

    .line 16
    sub-int/2addr v2, v5

    .line 17
    .line 18
    aget-object v2, v0, v2

    .line 19
    .line 20
    iget-wide v2, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 21
    .line 22
    cmpl-double v2, p1, v2

    .line 23
    .line 24
    if-lez v2, :cond_1

    .line 25
    array-length p1, v0

    .line 26
    sub-int/2addr p1, v5

    .line 27
    .line 28
    aget-object p1, v0, p1

    .line 29
    .line 30
    iget-wide p1, p1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 31
    :cond_1
    :goto_0
    move v0, v1

    .line 32
    .line 33
    :goto_1
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 34
    array-length v3, v2

    .line 35
    .line 36
    if-ge v0, v3, :cond_4

    .line 37
    .line 38
    aget-object v2, v2, v0

    .line 39
    .line 40
    iget-wide v3, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 41
    .line 42
    cmpg-double v3, p1, v3

    .line 43
    .line 44
    if-gtz v3, :cond_3

    .line 45
    .line 46
    iget-boolean v3, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    .line 47
    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->d(D)D

    .line 52
    move-result-wide v2

    .line 53
    .line 54
    aput-wide v2, p3, v1

    .line 55
    .line 56
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 57
    .line 58
    aget-object v0, v1, v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->e(D)D

    .line 62
    move-result-wide p1

    .line 63
    .line 64
    aput-wide p1, p3, v5

    .line 65
    return-void

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->k(D)V

    .line 69
    .line 70
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 71
    .line 72
    aget-object p1, p1, v0

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->b()D

    .line 76
    move-result-wide p1

    .line 77
    .line 78
    aput-wide p1, p3, v1

    .line 79
    .line 80
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 81
    .line 82
    aget-object p1, p1, v0

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->c()D

    .line 86
    move-result-wide p1

    .line 87
    .line 88
    aput-wide p1, p3, v5

    .line 89
    return-void

    .line 90
    .line 91
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 92
    goto :goto_1

    .line 93
    :cond_4
    return-void
.end method

.method public h()[D
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mTime:[D

    return-object v0
.end method
