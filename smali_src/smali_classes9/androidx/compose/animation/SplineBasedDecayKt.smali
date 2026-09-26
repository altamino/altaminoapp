.class public final Landroidx/compose/animation/SplineBasedDecayKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EndTension:F = 1.0f

.field private static final Inflection:F = 0.35f

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final StartTension:F = 0.5f


# direct methods
.method public static final synthetic a([F[FI)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/animation/SplineBasedDecayKt;->b([F[FI)V

    .line 4
    return-void
.end method

.method private static final b([F[FI)V
    .locals 19

    .line 1
    .line 2
    move/from16 v0, p2

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    move v2, v1

    .line 7
    .line 8
    :goto_0
    const/high16 v4, 0x3f800000    # 1.0f

    .line 9
    .line 10
    if-ge v3, v0, :cond_4

    .line 11
    int-to-float v5, v3

    .line 12
    int-to-float v6, v0

    .line 13
    div-float/2addr v5, v6

    .line 14
    move v6, v4

    .line 15
    .line 16
    :goto_1
    sub-float v7, v6, v1

    .line 17
    .line 18
    const/high16 v8, 0x40000000    # 2.0f

    .line 19
    div-float/2addr v7, v8

    .line 20
    add-float/2addr v7, v1

    .line 21
    .line 22
    const/high16 v9, 0x40400000    # 3.0f

    .line 23
    .line 24
    mul-float v10, v7, v9

    .line 25
    .line 26
    sub-float v11, v4, v7

    .line 27
    mul-float/2addr v10, v11

    .line 28
    .line 29
    .line 30
    const v12, 0x3e333333    # 0.175f

    .line 31
    .line 32
    mul-float v13, v11, v12

    .line 33
    .line 34
    .line 35
    const v14, 0x3eb33334    # 0.35000002f

    .line 36
    .line 37
    mul-float v15, v7, v14

    .line 38
    add-float/2addr v13, v15

    .line 39
    mul-float/2addr v13, v10

    .line 40
    .line 41
    mul-float v15, v7, v7

    .line 42
    mul-float/2addr v15, v7

    .line 43
    add-float/2addr v13, v15

    .line 44
    .line 45
    sub-float v16, v13, v5

    .line 46
    .line 47
    .line 48
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    .line 49
    move-result v14

    .line 50
    float-to-double v8, v14

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    const-wide v17, 0x3ee4f8b588e368f1L    # 1.0E-5

    .line 56
    .line 57
    cmpg-double v8, v8, v17

    .line 58
    .line 59
    if-ltz v8, :cond_1

    .line 60
    .line 61
    cmpl-float v8, v13, v5

    .line 62
    .line 63
    if-lez v8, :cond_0

    .line 64
    move v6, v7

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    move v1, v7

    .line 67
    goto :goto_1

    .line 68
    .line 69
    :cond_1
    const/high16 v6, 0x3f000000    # 0.5f

    .line 70
    mul-float/2addr v11, v6

    .line 71
    add-float/2addr v11, v7

    .line 72
    mul-float/2addr v10, v11

    .line 73
    add-float/2addr v10, v15

    .line 74
    .line 75
    aput v10, p0, v3

    .line 76
    move v7, v4

    .line 77
    .line 78
    :goto_2
    sub-float v8, v7, v2

    .line 79
    .line 80
    const/high16 v9, 0x40000000    # 2.0f

    .line 81
    div-float/2addr v8, v9

    .line 82
    add-float/2addr v8, v2

    .line 83
    .line 84
    const/high16 v10, 0x40400000    # 3.0f

    .line 85
    .line 86
    mul-float v11, v8, v10

    .line 87
    .line 88
    sub-float v13, v4, v8

    .line 89
    mul-float/2addr v11, v13

    .line 90
    .line 91
    mul-float v14, v13, v6

    .line 92
    add-float/2addr v14, v8

    .line 93
    mul-float/2addr v14, v11

    .line 94
    .line 95
    mul-float v15, v8, v8

    .line 96
    mul-float/2addr v15, v8

    .line 97
    add-float/2addr v14, v15

    .line 98
    .line 99
    sub-float v16, v14, v5

    .line 100
    .line 101
    .line 102
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    .line 103
    move-result v6

    .line 104
    float-to-double v9, v6

    .line 105
    .line 106
    cmpg-double v6, v9, v17

    .line 107
    .line 108
    if-ltz v6, :cond_3

    .line 109
    .line 110
    cmpl-float v6, v14, v5

    .line 111
    .line 112
    if-lez v6, :cond_2

    .line 113
    move v7, v8

    .line 114
    .line 115
    :goto_3
    const/high16 v6, 0x3f000000    # 0.5f

    .line 116
    goto :goto_2

    .line 117
    :cond_2
    move v2, v8

    .line 118
    goto :goto_3

    .line 119
    :cond_3
    mul-float/2addr v13, v12

    .line 120
    .line 121
    .line 122
    const v4, 0x3eb33334    # 0.35000002f

    .line 123
    mul-float/2addr v8, v4

    .line 124
    add-float/2addr v13, v8

    .line 125
    mul-float/2addr v11, v13

    .line 126
    add-float/2addr v11, v15

    .line 127
    .line 128
    aput v11, p1, v3

    .line 129
    .line 130
    add-int/lit8 v3, v3, 0x1

    .line 131
    goto :goto_0

    .line 132
    .line 133
    :cond_4
    aput v4, p1, v0

    .line 134
    .line 135
    aput v4, p0, v0

    .line 136
    return-void
.end method
