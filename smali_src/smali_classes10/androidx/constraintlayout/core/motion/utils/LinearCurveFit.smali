.class public Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;
.super Landroidx/constraintlayout/core/motion/utils/CurveFit;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LinearCurveFit"


# instance fields
.field private mExtrapolate:Z

.field mSlopeTemp:[D

.field private mT:[D

.field private mTotalLength:D

.field private mY:[[D


# direct methods
.method public constructor <init>([D[[D)V
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;-><init>()V

    .line 4
    .line 5
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 6
    .line 7
    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mTotalLength:D

    .line 8
    const/4 v0, 0x1

    .line 9
    .line 10
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mExtrapolate:Z

    .line 11
    array-length v0, p1

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    aget-object v1, p2, v0

    .line 15
    array-length v1, v1

    .line 16
    .line 17
    new-array v2, v1, [D

    .line 18
    .line 19
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    .line 20
    .line 21
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    .line 22
    .line 23
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 24
    const/4 v2, 0x2

    .line 25
    .line 26
    if-le v1, v2, :cond_2

    .line 27
    .line 28
    const-wide/16 v1, 0x0

    .line 29
    move v3, v0

    .line 30
    move-wide v4, v1

    .line 31
    :goto_0
    move-wide v6, v4

    .line 32
    array-length v8, p1

    .line 33
    .line 34
    if-ge v3, v8, :cond_1

    .line 35
    .line 36
    aget-object v8, p2, v3

    .line 37
    .line 38
    aget-wide v9, v8, v0

    .line 39
    .line 40
    if-lez v3, :cond_0

    .line 41
    .line 42
    sub-double v4, v9, v4

    .line 43
    .line 44
    sub-double v6, v9, v6

    .line 45
    .line 46
    .line 47
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    .line 48
    .line 49
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 50
    move-wide v4, v9

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_1
    iput-wide v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mTotalLength:D

    .line 54
    :cond_2
    return-void
.end method


# virtual methods
.method public c(DI)D
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    .line 3
    array-length v1, v0

    .line 4
    .line 5
    iget-boolean v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mExtrapolate:Z

    .line 6
    const/4 v3, 0x0

    .line 7
    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    aget-wide v4, v0, v3

    .line 11
    .line 12
    cmpg-double v2, p1, v4

    .line 13
    .line 14
    if-gtz v2, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 17
    .line 18
    aget-object v0, v0, v3

    .line 19
    .line 20
    aget-wide v1, v0, p3

    .line 21
    sub-double/2addr p1, v4

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v4, v5, p3}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->f(DI)D

    .line 25
    move-result-wide v3

    .line 26
    :goto_0
    mul-double/2addr p1, v3

    .line 27
    add-double/2addr v1, p1

    .line 28
    return-wide v1

    .line 29
    .line 30
    :cond_0
    add-int/lit8 v2, v1, -0x1

    .line 31
    .line 32
    aget-wide v4, v0, v2

    .line 33
    .line 34
    cmpl-double v0, p1, v4

    .line 35
    .line 36
    if-ltz v0, :cond_3

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 39
    .line 40
    aget-object v0, v0, v2

    .line 41
    .line 42
    aget-wide v1, v0, p3

    .line 43
    sub-double/2addr p1, v4

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v4, v5, p3}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->f(DI)D

    .line 47
    move-result-wide v3

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_1
    aget-wide v4, v0, v3

    .line 51
    .line 52
    cmpg-double v2, p1, v4

    .line 53
    .line 54
    if-gtz v2, :cond_2

    .line 55
    .line 56
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 57
    .line 58
    aget-object p1, p1, v3

    .line 59
    .line 60
    aget-wide p2, p1, p3

    .line 61
    return-wide p2

    .line 62
    .line 63
    :cond_2
    add-int/lit8 v2, v1, -0x1

    .line 64
    .line 65
    aget-wide v4, v0, v2

    .line 66
    .line 67
    cmpl-double v0, p1, v4

    .line 68
    .line 69
    if-ltz v0, :cond_3

    .line 70
    .line 71
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 72
    .line 73
    aget-object p1, p1, v2

    .line 74
    .line 75
    aget-wide p2, p1, p3

    .line 76
    return-wide p2

    .line 77
    .line 78
    :cond_3
    :goto_1
    add-int/lit8 v0, v1, -0x1

    .line 79
    .line 80
    if-ge v3, v0, :cond_6

    .line 81
    .line 82
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    .line 83
    .line 84
    aget-wide v4, v0, v3

    .line 85
    .line 86
    cmpl-double v2, p1, v4

    .line 87
    .line 88
    if-nez v2, :cond_4

    .line 89
    .line 90
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 91
    .line 92
    aget-object p1, p1, v3

    .line 93
    .line 94
    aget-wide p2, p1, p3

    .line 95
    return-wide p2

    .line 96
    .line 97
    :cond_4
    add-int/lit8 v2, v3, 0x1

    .line 98
    .line 99
    aget-wide v6, v0, v2

    .line 100
    .line 101
    cmpg-double v0, p1, v6

    .line 102
    .line 103
    if-gez v0, :cond_5

    .line 104
    sub-double/2addr v6, v4

    .line 105
    sub-double/2addr p1, v4

    .line 106
    div-double/2addr p1, v6

    .line 107
    .line 108
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 109
    .line 110
    aget-object v1, v0, v3

    .line 111
    .line 112
    aget-wide v3, v1, p3

    .line 113
    .line 114
    aget-object v0, v0, v2

    .line 115
    .line 116
    aget-wide v1, v0, p3

    .line 117
    .line 118
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 119
    sub-double/2addr v5, p1

    .line 120
    mul-double/2addr v3, v5

    .line 121
    mul-double/2addr v1, p1

    .line 122
    add-double/2addr v3, v1

    .line 123
    return-wide v3

    .line 124
    :cond_5
    move v3, v2

    .line 125
    goto :goto_1

    .line 126
    .line 127
    :cond_6
    const-wide/16 p1, 0x0

    .line 128
    return-wide p1
.end method

.method public d(D[D)V
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    .line 3
    array-length v1, v0

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 6
    const/4 v3, 0x0

    .line 7
    .line 8
    aget-object v2, v2, v3

    .line 9
    array-length v2, v2

    .line 10
    .line 11
    iget-boolean v4, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mExtrapolate:Z

    .line 12
    .line 13
    if-eqz v4, :cond_3

    .line 14
    .line 15
    aget-wide v4, v0, v3

    .line 16
    .line 17
    cmpg-double v6, p1, v4

    .line 18
    .line 19
    if-gtz v6, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v4, v5, v0}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->g(D[D)V

    .line 25
    move v0, v3

    .line 26
    .line 27
    :goto_0
    if-ge v0, v2, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 30
    .line 31
    aget-object v1, v1, v3

    .line 32
    .line 33
    aget-wide v4, v1, v0

    .line 34
    .line 35
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    .line 36
    .line 37
    aget-wide v6, v1, v3

    .line 38
    .line 39
    sub-double v6, p1, v6

    .line 40
    .line 41
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    .line 42
    .line 43
    aget-wide v8, v1, v0

    .line 44
    mul-double/2addr v6, v8

    .line 45
    add-double/2addr v4, v6

    .line 46
    .line 47
    aput-wide v4, p3, v0

    .line 48
    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    return-void

    .line 52
    .line 53
    :cond_1
    add-int/lit8 v4, v1, -0x1

    .line 54
    .line 55
    aget-wide v5, v0, v4

    .line 56
    .line 57
    cmpl-double v0, p1, v5

    .line 58
    .line 59
    if-ltz v0, :cond_7

    .line 60
    .line 61
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v5, v6, v0}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->g(D[D)V

    .line 65
    .line 66
    :goto_1
    if-ge v3, v2, :cond_2

    .line 67
    .line 68
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 69
    .line 70
    aget-object v0, v0, v4

    .line 71
    .line 72
    aget-wide v5, v0, v3

    .line 73
    .line 74
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    .line 75
    .line 76
    aget-wide v7, v0, v4

    .line 77
    .line 78
    sub-double v0, p1, v7

    .line 79
    .line 80
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    .line 81
    .line 82
    aget-wide v8, v7, v3

    .line 83
    mul-double/2addr v0, v8

    .line 84
    add-double/2addr v5, v0

    .line 85
    .line 86
    aput-wide v5, p3, v3

    .line 87
    .line 88
    add-int/lit8 v3, v3, 0x1

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    return-void

    .line 91
    .line 92
    :cond_3
    aget-wide v4, v0, v3

    .line 93
    .line 94
    cmpg-double v4, p1, v4

    .line 95
    .line 96
    if-gtz v4, :cond_5

    .line 97
    move p1, v3

    .line 98
    .line 99
    :goto_2
    if-ge p1, v2, :cond_4

    .line 100
    .line 101
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 102
    .line 103
    aget-object p2, p2, v3

    .line 104
    .line 105
    aget-wide v0, p2, p1

    .line 106
    .line 107
    aput-wide v0, p3, p1

    .line 108
    .line 109
    add-int/lit8 p1, p1, 0x1

    .line 110
    goto :goto_2

    .line 111
    :cond_4
    return-void

    .line 112
    .line 113
    :cond_5
    add-int/lit8 v4, v1, -0x1

    .line 114
    .line 115
    aget-wide v5, v0, v4

    .line 116
    .line 117
    cmpl-double v0, p1, v5

    .line 118
    .line 119
    if-ltz v0, :cond_7

    .line 120
    .line 121
    :goto_3
    if-ge v3, v2, :cond_6

    .line 122
    .line 123
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 124
    .line 125
    aget-object p1, p1, v4

    .line 126
    .line 127
    aget-wide v0, p1, v3

    .line 128
    .line 129
    aput-wide v0, p3, v3

    .line 130
    .line 131
    add-int/lit8 v3, v3, 0x1

    .line 132
    goto :goto_3

    .line 133
    :cond_6
    return-void

    .line 134
    :cond_7
    move v0, v3

    .line 135
    .line 136
    :goto_4
    add-int/lit8 v4, v1, -0x1

    .line 137
    .line 138
    if-ge v0, v4, :cond_b

    .line 139
    .line 140
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    .line 141
    .line 142
    aget-wide v5, v4, v0

    .line 143
    .line 144
    cmpl-double v4, p1, v5

    .line 145
    .line 146
    if-nez v4, :cond_8

    .line 147
    move v4, v3

    .line 148
    .line 149
    :goto_5
    if-ge v4, v2, :cond_8

    .line 150
    .line 151
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 152
    .line 153
    aget-object v5, v5, v0

    .line 154
    .line 155
    aget-wide v6, v5, v4

    .line 156
    .line 157
    aput-wide v6, p3, v4

    .line 158
    .line 159
    add-int/lit8 v4, v4, 0x1

    .line 160
    goto :goto_5

    .line 161
    .line 162
    :cond_8
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    .line 163
    .line 164
    add-int/lit8 v5, v0, 0x1

    .line 165
    .line 166
    aget-wide v6, v4, v5

    .line 167
    .line 168
    cmpg-double v8, p1, v6

    .line 169
    .line 170
    if-gez v8, :cond_a

    .line 171
    .line 172
    aget-wide v8, v4, v0

    .line 173
    sub-double/2addr v6, v8

    .line 174
    sub-double/2addr p1, v8

    .line 175
    div-double/2addr p1, v6

    .line 176
    .line 177
    :goto_6
    if-ge v3, v2, :cond_9

    .line 178
    .line 179
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 180
    .line 181
    aget-object v4, v1, v0

    .line 182
    .line 183
    aget-wide v6, v4, v3

    .line 184
    .line 185
    aget-object v1, v1, v5

    .line 186
    .line 187
    aget-wide v8, v1, v3

    .line 188
    .line 189
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 190
    sub-double/2addr v10, p1

    .line 191
    mul-double/2addr v6, v10

    .line 192
    mul-double/2addr v8, p1

    .line 193
    add-double/2addr v6, v8

    .line 194
    .line 195
    aput-wide v6, p3, v3

    .line 196
    .line 197
    add-int/lit8 v3, v3, 0x1

    .line 198
    goto :goto_6

    .line 199
    :cond_9
    return-void

    .line 200
    :cond_a
    move v0, v5

    .line 201
    goto :goto_4

    .line 202
    :cond_b
    return-void
.end method

.method public e(D[F)V
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    .line 3
    array-length v1, v0

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 6
    const/4 v3, 0x0

    .line 7
    .line 8
    aget-object v2, v2, v3

    .line 9
    array-length v2, v2

    .line 10
    .line 11
    iget-boolean v4, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mExtrapolate:Z

    .line 12
    .line 13
    if-eqz v4, :cond_3

    .line 14
    .line 15
    aget-wide v4, v0, v3

    .line 16
    .line 17
    cmpg-double v6, p1, v4

    .line 18
    .line 19
    if-gtz v6, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v4, v5, v0}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->g(D[D)V

    .line 25
    move v0, v3

    .line 26
    .line 27
    :goto_0
    if-ge v0, v2, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 30
    .line 31
    aget-object v1, v1, v3

    .line 32
    .line 33
    aget-wide v4, v1, v0

    .line 34
    .line 35
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    .line 36
    .line 37
    aget-wide v6, v1, v3

    .line 38
    .line 39
    sub-double v6, p1, v6

    .line 40
    .line 41
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    .line 42
    .line 43
    aget-wide v8, v1, v0

    .line 44
    mul-double/2addr v6, v8

    .line 45
    add-double/2addr v4, v6

    .line 46
    double-to-float v1, v4

    .line 47
    .line 48
    aput v1, p3, v0

    .line 49
    .line 50
    add-int/lit8 v0, v0, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    return-void

    .line 53
    .line 54
    :cond_1
    add-int/lit8 v4, v1, -0x1

    .line 55
    .line 56
    aget-wide v5, v0, v4

    .line 57
    .line 58
    cmpl-double v0, p1, v5

    .line 59
    .line 60
    if-ltz v0, :cond_7

    .line 61
    .line 62
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v5, v6, v0}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->g(D[D)V

    .line 66
    .line 67
    :goto_1
    if-ge v3, v2, :cond_2

    .line 68
    .line 69
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 70
    .line 71
    aget-object v0, v0, v4

    .line 72
    .line 73
    aget-wide v5, v0, v3

    .line 74
    .line 75
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    .line 76
    .line 77
    aget-wide v7, v0, v4

    .line 78
    .line 79
    sub-double v0, p1, v7

    .line 80
    .line 81
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    .line 82
    .line 83
    aget-wide v8, v7, v3

    .line 84
    mul-double/2addr v0, v8

    .line 85
    add-double/2addr v5, v0

    .line 86
    double-to-float v0, v5

    .line 87
    .line 88
    aput v0, p3, v3

    .line 89
    .line 90
    add-int/lit8 v3, v3, 0x1

    .line 91
    goto :goto_1

    .line 92
    :cond_2
    return-void

    .line 93
    .line 94
    :cond_3
    aget-wide v4, v0, v3

    .line 95
    .line 96
    cmpg-double v4, p1, v4

    .line 97
    .line 98
    if-gtz v4, :cond_5

    .line 99
    move p1, v3

    .line 100
    .line 101
    :goto_2
    if-ge p1, v2, :cond_4

    .line 102
    .line 103
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 104
    .line 105
    aget-object p2, p2, v3

    .line 106
    .line 107
    aget-wide v0, p2, p1

    .line 108
    double-to-float p2, v0

    .line 109
    .line 110
    aput p2, p3, p1

    .line 111
    .line 112
    add-int/lit8 p1, p1, 0x1

    .line 113
    goto :goto_2

    .line 114
    :cond_4
    return-void

    .line 115
    .line 116
    :cond_5
    add-int/lit8 v4, v1, -0x1

    .line 117
    .line 118
    aget-wide v5, v0, v4

    .line 119
    .line 120
    cmpl-double v0, p1, v5

    .line 121
    .line 122
    if-ltz v0, :cond_7

    .line 123
    .line 124
    :goto_3
    if-ge v3, v2, :cond_6

    .line 125
    .line 126
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 127
    .line 128
    aget-object p1, p1, v4

    .line 129
    .line 130
    aget-wide v0, p1, v3

    .line 131
    double-to-float p1, v0

    .line 132
    .line 133
    aput p1, p3, v3

    .line 134
    .line 135
    add-int/lit8 v3, v3, 0x1

    .line 136
    goto :goto_3

    .line 137
    :cond_6
    return-void

    .line 138
    :cond_7
    move v0, v3

    .line 139
    .line 140
    :goto_4
    add-int/lit8 v4, v1, -0x1

    .line 141
    .line 142
    if-ge v0, v4, :cond_b

    .line 143
    .line 144
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    .line 145
    .line 146
    aget-wide v5, v4, v0

    .line 147
    .line 148
    cmpl-double v4, p1, v5

    .line 149
    .line 150
    if-nez v4, :cond_8

    .line 151
    move v4, v3

    .line 152
    .line 153
    :goto_5
    if-ge v4, v2, :cond_8

    .line 154
    .line 155
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 156
    .line 157
    aget-object v5, v5, v0

    .line 158
    .line 159
    aget-wide v6, v5, v4

    .line 160
    double-to-float v5, v6

    .line 161
    .line 162
    aput v5, p3, v4

    .line 163
    .line 164
    add-int/lit8 v4, v4, 0x1

    .line 165
    goto :goto_5

    .line 166
    .line 167
    :cond_8
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    .line 168
    .line 169
    add-int/lit8 v5, v0, 0x1

    .line 170
    .line 171
    aget-wide v6, v4, v5

    .line 172
    .line 173
    cmpg-double v8, p1, v6

    .line 174
    .line 175
    if-gez v8, :cond_a

    .line 176
    .line 177
    aget-wide v8, v4, v0

    .line 178
    sub-double/2addr v6, v8

    .line 179
    sub-double/2addr p1, v8

    .line 180
    div-double/2addr p1, v6

    .line 181
    .line 182
    :goto_6
    if-ge v3, v2, :cond_9

    .line 183
    .line 184
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 185
    .line 186
    aget-object v4, v1, v0

    .line 187
    .line 188
    aget-wide v6, v4, v3

    .line 189
    .line 190
    aget-object v1, v1, v5

    .line 191
    .line 192
    aget-wide v8, v1, v3

    .line 193
    .line 194
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 195
    sub-double/2addr v10, p1

    .line 196
    mul-double/2addr v6, v10

    .line 197
    mul-double/2addr v8, p1

    .line 198
    add-double/2addr v6, v8

    .line 199
    double-to-float v1, v6

    .line 200
    .line 201
    aput v1, p3, v3

    .line 202
    .line 203
    add-int/lit8 v3, v3, 0x1

    .line 204
    goto :goto_6

    .line 205
    :cond_9
    return-void

    .line 206
    :cond_a
    move v0, v5

    .line 207
    goto :goto_4

    .line 208
    :cond_b
    return-void
.end method

.method public f(DI)D
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    aget-wide v3, v0, v2

    .line 7
    .line 8
    cmpg-double v5, p1, v3

    .line 9
    .line 10
    if-gez v5, :cond_0

    .line 11
    :goto_0
    move-wide p1, v3

    .line 12
    goto :goto_1

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v3, v1, -0x1

    .line 15
    .line 16
    aget-wide v3, v0, v3

    .line 17
    .line 18
    cmpl-double v0, p1, v3

    .line 19
    .line 20
    if-ltz v0, :cond_1

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, -0x1

    .line 24
    .line 25
    if-ge v2, v0, :cond_3

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    .line 28
    .line 29
    add-int/lit8 v3, v2, 0x1

    .line 30
    .line 31
    aget-wide v4, v0, v3

    .line 32
    .line 33
    cmpg-double v6, p1, v4

    .line 34
    .line 35
    if-gtz v6, :cond_2

    .line 36
    .line 37
    aget-wide p1, v0, v2

    .line 38
    sub-double/2addr v4, p1

    .line 39
    .line 40
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 41
    .line 42
    aget-object p2, p1, v2

    .line 43
    .line 44
    aget-wide v0, p2, p3

    .line 45
    .line 46
    aget-object p1, p1, v3

    .line 47
    .line 48
    aget-wide p2, p1, p3

    .line 49
    sub-double/2addr p2, v0

    .line 50
    div-double/2addr p2, v4

    .line 51
    return-wide p2

    .line 52
    :cond_2
    move v2, v3

    .line 53
    goto :goto_1

    .line 54
    .line 55
    :cond_3
    const-wide/16 p1, 0x0

    .line 56
    return-wide p1
.end method

.method public g(D[D)V
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    .line 3
    array-length v1, v0

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 6
    const/4 v3, 0x0

    .line 7
    .line 8
    aget-object v2, v2, v3

    .line 9
    array-length v2, v2

    .line 10
    .line 11
    aget-wide v4, v0, v3

    .line 12
    .line 13
    cmpg-double v6, p1, v4

    .line 14
    .line 15
    if-gtz v6, :cond_0

    .line 16
    :goto_0
    move-wide p1, v4

    .line 17
    goto :goto_1

    .line 18
    .line 19
    :cond_0
    add-int/lit8 v4, v1, -0x1

    .line 20
    .line 21
    aget-wide v4, v0, v4

    .line 22
    .line 23
    cmpl-double v0, p1, v4

    .line 24
    .line 25
    if-ltz v0, :cond_1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    :goto_1
    move v0, v3

    .line 28
    .line 29
    :goto_2
    add-int/lit8 v4, v1, -0x1

    .line 30
    .line 31
    if-ge v0, v4, :cond_3

    .line 32
    .line 33
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    .line 34
    .line 35
    add-int/lit8 v5, v0, 0x1

    .line 36
    .line 37
    aget-wide v6, v4, v5

    .line 38
    .line 39
    cmpg-double v8, p1, v6

    .line 40
    .line 41
    if-gtz v8, :cond_2

    .line 42
    .line 43
    aget-wide p1, v4, v0

    .line 44
    sub-double/2addr v6, p1

    .line 45
    .line 46
    :goto_3
    if-ge v3, v2, :cond_3

    .line 47
    .line 48
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 49
    .line 50
    aget-object p2, p1, v0

    .line 51
    .line 52
    aget-wide v8, p2, v3

    .line 53
    .line 54
    aget-object p1, p1, v5

    .line 55
    .line 56
    aget-wide v10, p1, v3

    .line 57
    sub-double/2addr v10, v8

    .line 58
    div-double/2addr v10, v6

    .line 59
    .line 60
    aput-wide v10, p3, v3

    .line 61
    .line 62
    add-int/lit8 v3, v3, 0x1

    .line 63
    goto :goto_3

    .line 64
    :cond_2
    move v0, v5

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    return-void
.end method

.method public h()[D
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    return-object v0
.end method
