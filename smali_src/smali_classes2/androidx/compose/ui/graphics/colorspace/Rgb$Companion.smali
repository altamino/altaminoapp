.class public final Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/colorspace/Rgb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;[F)Landroidx/compose/ui/graphics/colorspace/WhitePoint;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->i([F)Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;)[F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->j([FLandroidx/compose/ui/graphics/colorspace/WhitePoint;)[F

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Le8/l;Le8/l;FFI)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p7}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->m([FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Le8/l;Le8/l;FFI)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic d(Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;[FFF)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->n([FFF)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic e(Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;[F)[F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->o([F)[F

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final f([F)F
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    aget v0, p1, v0

    .line 4
    const/4 v1, 0x1

    .line 5
    .line 6
    aget v1, p1, v1

    .line 7
    const/4 v2, 0x2

    .line 8
    .line 9
    aget v2, p1, v2

    .line 10
    const/4 v3, 0x3

    .line 11
    .line 12
    aget v3, p1, v3

    .line 13
    const/4 v4, 0x4

    .line 14
    .line 15
    aget v4, p1, v4

    .line 16
    const/4 v5, 0x5

    .line 17
    .line 18
    aget p1, p1, v5

    .line 19
    .line 20
    mul-float v5, v0, v3

    .line 21
    .line 22
    mul-float v6, v1, v4

    .line 23
    add-float/2addr v5, v6

    .line 24
    .line 25
    mul-float v6, v2, p1

    .line 26
    add-float/2addr v5, v6

    .line 27
    mul-float/2addr v3, v4

    .line 28
    sub-float/2addr v5, v3

    .line 29
    mul-float/2addr v1, v2

    .line 30
    sub-float/2addr v5, v1

    .line 31
    mul-float/2addr v0, p1

    .line 32
    sub-float/2addr v5, v0

    .line 33
    .line 34
    const/high16 p1, 0x3f000000    # 0.5f

    .line 35
    mul-float/2addr v5, p1

    .line 36
    const/4 p1, 0x0

    .line 37
    .line 38
    cmpg-float p1, v5, p1

    .line 39
    .line 40
    if-gez p1, :cond_0

    .line 41
    neg-float v5, v5

    .line 42
    :cond_0
    return v5
.end method

.method private final g(DLe8/l;Le8/l;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Le8/l<",
            "-",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;",
            "Le8/l<",
            "-",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p3

    .line 9
    .line 10
    check-cast p3, Ljava/lang/Number;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-interface {p4, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    check-cast p1, Ljava/lang/Number;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    .line 28
    move-result-wide p1

    .line 29
    sub-double/2addr v0, p1

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 33
    move-result-wide p1

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    const-wide p3, 0x3f50624dd2f1a9fcL    # 0.001

    .line 39
    .line 40
    cmpg-double p1, p1, p3

    .line 41
    .line 42
    if-gtz p1, :cond_0

    .line 43
    const/4 p1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 p1, 0x0

    .line 46
    :goto_0
    return p1
.end method

.method private final i([F)Landroidx/compose/ui/graphics/colorspace/WhitePoint;
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    .line 6
    fill-array-data v0, :array_0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->m([F[F)[F

    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    aget v0, p1, v0

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    aget v1, p1, v1

    .line 17
    .line 18
    add-float v2, v0, v1

    .line 19
    const/4 v3, 0x2

    .line 20
    .line 21
    aget p1, p1, v3

    .line 22
    add-float/2addr v2, p1

    .line 23
    .line 24
    new-instance p1, Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 25
    div-float/2addr v0, v2

    .line 26
    div-float/2addr v1, v2

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, v0, v1}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;-><init>(FF)V

    .line 30
    return-object p1

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final j([FLandroidx/compose/ui/graphics/colorspace/WhitePoint;)[F
    .locals 21

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    aget v1, p1, v0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    aget v3, p1, v2

    .line 7
    const/4 v4, 0x2

    .line 8
    .line 9
    aget v5, p1, v4

    .line 10
    const/4 v6, 0x3

    .line 11
    .line 12
    aget v7, p1, v6

    .line 13
    const/4 v8, 0x4

    .line 14
    .line 15
    aget v9, p1, v8

    .line 16
    const/4 v10, 0x5

    .line 17
    .line 18
    aget v11, p1, v10

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->a()F

    .line 22
    move-result v12

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->b()F

    .line 26
    move-result v13

    .line 27
    int-to-float v14, v2

    .line 28
    .line 29
    sub-float v15, v14, v1

    .line 30
    div-float/2addr v15, v3

    .line 31
    .line 32
    sub-float v16, v14, v5

    .line 33
    .line 34
    div-float v16, v16, v7

    .line 35
    .line 36
    sub-float v17, v14, v9

    .line 37
    .line 38
    div-float v17, v17, v11

    .line 39
    sub-float/2addr v14, v12

    .line 40
    div-float/2addr v14, v13

    .line 41
    .line 42
    div-float v18, v1, v3

    .line 43
    .line 44
    div-float v19, v5, v7

    .line 45
    .line 46
    div-float v20, v9, v11

    .line 47
    div-float/2addr v12, v13

    .line 48
    sub-float/2addr v14, v15

    .line 49
    .line 50
    sub-float v19, v19, v18

    .line 51
    .line 52
    mul-float v14, v14, v19

    .line 53
    .line 54
    sub-float v12, v12, v18

    .line 55
    .line 56
    sub-float v16, v16, v15

    .line 57
    .line 58
    mul-float v13, v12, v16

    .line 59
    sub-float/2addr v14, v13

    .line 60
    .line 61
    sub-float v17, v17, v15

    .line 62
    .line 63
    mul-float v17, v17, v19

    .line 64
    .line 65
    sub-float v20, v20, v18

    .line 66
    .line 67
    mul-float v16, v16, v20

    .line 68
    .line 69
    sub-float v17, v17, v16

    .line 70
    .line 71
    div-float v14, v14, v17

    .line 72
    .line 73
    mul-float v20, v20, v14

    .line 74
    .line 75
    sub-float v12, v12, v20

    .line 76
    .line 77
    div-float v12, v12, v19

    .line 78
    .line 79
    const/high16 v13, 0x3f800000    # 1.0f

    .line 80
    .line 81
    sub-float v15, v13, v12

    .line 82
    sub-float/2addr v15, v14

    .line 83
    .line 84
    div-float v16, v15, v3

    .line 85
    .line 86
    div-float v17, v12, v7

    .line 87
    .line 88
    div-float v18, v14, v11

    .line 89
    .line 90
    const/16 v10, 0x9

    .line 91
    .line 92
    new-array v10, v10, [F

    .line 93
    .line 94
    mul-float v20, v16, v1

    .line 95
    .line 96
    aput v20, v10, v0

    .line 97
    .line 98
    aput v15, v10, v2

    .line 99
    .line 100
    sub-float v0, v13, v1

    .line 101
    sub-float/2addr v0, v3

    .line 102
    .line 103
    mul-float v16, v16, v0

    .line 104
    .line 105
    aput v16, v10, v4

    .line 106
    .line 107
    mul-float v0, v17, v5

    .line 108
    .line 109
    aput v0, v10, v6

    .line 110
    .line 111
    aput v12, v10, v8

    .line 112
    .line 113
    sub-float v0, v13, v5

    .line 114
    sub-float/2addr v0, v7

    .line 115
    .line 116
    mul-float v17, v17, v0

    .line 117
    const/4 v0, 0x5

    .line 118
    .line 119
    aput v17, v10, v0

    .line 120
    const/4 v0, 0x6

    .line 121
    .line 122
    mul-float v1, v18, v9

    .line 123
    .line 124
    aput v1, v10, v0

    .line 125
    const/4 v0, 0x7

    .line 126
    .line 127
    aput v14, v10, v0

    .line 128
    sub-float/2addr v13, v9

    .line 129
    sub-float/2addr v13, v11

    .line 130
    .line 131
    mul-float v18, v18, v13

    .line 132
    .line 133
    const/16 v0, 0x8

    .line 134
    .line 135
    aput v18, v10, v0

    .line 136
    return-object v10
.end method

.method private final k([F[F)Z
    .locals 12

    .line 1
    const/4 v0, 0x6

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    aget v2, p1, v1

    .line 7
    .line 8
    aget v3, p2, v1

    .line 9
    sub-float/2addr v2, v3

    .line 10
    .line 11
    aput v2, v0, v1

    .line 12
    const/4 v3, 0x1

    .line 13
    .line 14
    aget v4, p1, v3

    .line 15
    .line 16
    aget v5, p2, v3

    .line 17
    sub-float/2addr v4, v5

    .line 18
    .line 19
    aput v4, v0, v3

    .line 20
    const/4 v5, 0x2

    .line 21
    .line 22
    aget v6, p1, v5

    .line 23
    .line 24
    aget v7, p2, v5

    .line 25
    sub-float/2addr v6, v7

    .line 26
    .line 27
    aput v6, v0, v5

    .line 28
    const/4 v6, 0x3

    .line 29
    .line 30
    aget v7, p1, v6

    .line 31
    .line 32
    aget v8, p2, v6

    .line 33
    sub-float/2addr v7, v8

    .line 34
    .line 35
    aput v7, v0, v6

    .line 36
    const/4 v7, 0x4

    .line 37
    .line 38
    aget v8, p1, v7

    .line 39
    .line 40
    aget v9, p2, v7

    .line 41
    sub-float/2addr v8, v9

    .line 42
    .line 43
    aput v8, v0, v7

    .line 44
    const/4 v8, 0x5

    .line 45
    .line 46
    aget p1, p1, v8

    .line 47
    .line 48
    aget v9, p2, v8

    .line 49
    sub-float/2addr p1, v9

    .line 50
    .line 51
    aput p1, v0, v8

    .line 52
    .line 53
    aget p1, p2, v1

    .line 54
    .line 55
    aget v9, p2, v7

    .line 56
    sub-float/2addr p1, v9

    .line 57
    .line 58
    aget v9, p2, v3

    .line 59
    .line 60
    aget v10, p2, v8

    .line 61
    sub-float/2addr v9, v10

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, v2, v4, p1, v9}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->l(FFFF)F

    .line 65
    move-result p1

    .line 66
    const/4 v2, 0x0

    .line 67
    .line 68
    cmpg-float p1, p1, v2

    .line 69
    .line 70
    if-ltz p1, :cond_2

    .line 71
    .line 72
    aget p1, p2, v1

    .line 73
    .line 74
    aget v4, p2, v5

    .line 75
    sub-float/2addr p1, v4

    .line 76
    .line 77
    aget v4, p2, v3

    .line 78
    .line 79
    aget v9, p2, v6

    .line 80
    sub-float/2addr v4, v9

    .line 81
    .line 82
    aget v9, v0, v1

    .line 83
    .line 84
    aget v10, v0, v3

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, p1, v4, v9, v10}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->l(FFFF)F

    .line 88
    move-result p1

    .line 89
    .line 90
    cmpg-float p1, p1, v2

    .line 91
    .line 92
    if-gez p1, :cond_0

    .line 93
    goto :goto_0

    .line 94
    .line 95
    :cond_0
    aget p1, v0, v5

    .line 96
    .line 97
    aget v4, v0, v6

    .line 98
    .line 99
    aget v9, p2, v5

    .line 100
    .line 101
    aget v10, p2, v1

    .line 102
    sub-float/2addr v9, v10

    .line 103
    .line 104
    aget v10, p2, v6

    .line 105
    .line 106
    aget v11, p2, v3

    .line 107
    sub-float/2addr v10, v11

    .line 108
    .line 109
    .line 110
    invoke-direct {p0, p1, v4, v9, v10}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->l(FFFF)F

    .line 111
    move-result p1

    .line 112
    .line 113
    cmpg-float p1, p1, v2

    .line 114
    .line 115
    if-ltz p1, :cond_2

    .line 116
    .line 117
    aget p1, p2, v5

    .line 118
    .line 119
    aget v4, p2, v7

    .line 120
    sub-float/2addr p1, v4

    .line 121
    .line 122
    aget v4, p2, v6

    .line 123
    .line 124
    aget v9, p2, v8

    .line 125
    sub-float/2addr v4, v9

    .line 126
    .line 127
    aget v9, v0, v5

    .line 128
    .line 129
    aget v10, v0, v6

    .line 130
    .line 131
    .line 132
    invoke-direct {p0, p1, v4, v9, v10}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->l(FFFF)F

    .line 133
    move-result p1

    .line 134
    .line 135
    cmpg-float p1, p1, v2

    .line 136
    .line 137
    if-gez p1, :cond_1

    .line 138
    goto :goto_0

    .line 139
    .line 140
    :cond_1
    aget p1, v0, v7

    .line 141
    .line 142
    aget v4, v0, v8

    .line 143
    .line 144
    aget v9, p2, v7

    .line 145
    .line 146
    aget v5, p2, v5

    .line 147
    sub-float/2addr v9, v5

    .line 148
    .line 149
    aget v5, p2, v8

    .line 150
    .line 151
    aget v6, p2, v6

    .line 152
    sub-float/2addr v5, v6

    .line 153
    .line 154
    .line 155
    invoke-direct {p0, p1, v4, v9, v5}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->l(FFFF)F

    .line 156
    move-result p1

    .line 157
    .line 158
    cmpg-float p1, p1, v2

    .line 159
    .line 160
    if-ltz p1, :cond_2

    .line 161
    .line 162
    aget p1, p2, v7

    .line 163
    .line 164
    aget v4, p2, v1

    .line 165
    sub-float/2addr p1, v4

    .line 166
    .line 167
    aget v4, p2, v8

    .line 168
    .line 169
    aget p2, p2, v3

    .line 170
    sub-float/2addr v4, p2

    .line 171
    .line 172
    aget p2, v0, v7

    .line 173
    .line 174
    aget v0, v0, v8

    .line 175
    .line 176
    .line 177
    invoke-direct {p0, p1, v4, p2, v0}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->l(FFFF)F

    .line 178
    move-result p1

    .line 179
    .line 180
    cmpg-float p1, p1, v2

    .line 181
    .line 182
    if-ltz p1, :cond_2

    .line 183
    move v1, v3

    .line 184
    :cond_2
    :goto_0
    return v1
.end method

.method private final l(FFFF)F
    .locals 0

    .line 1
    mul-float/2addr p1, p4

    mul-float/2addr p2, p3

    sub-float/2addr p1, p2

    return p1
.end method

.method private final m([FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Le8/l;Le8/l;FFI)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Landroidx/compose/ui/graphics/colorspace/WhitePoint;",
            "Le8/l<",
            "-",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;",
            "Le8/l<",
            "-",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;FFI)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-nez p7, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    sget-object p7, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p7}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->t()[F

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->g([F[F)Z

    .line 14
    move-result p1

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    return v1

    .line 19
    .line 20
    :cond_1
    sget-object p1, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->e()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-static {p2, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->f(Landroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/WhitePoint;)Z

    .line 28
    move-result p1

    .line 29
    .line 30
    if-nez p1, :cond_2

    .line 31
    return v1

    .line 32
    :cond_2
    const/4 p1, 0x0

    .line 33
    .line 34
    cmpg-float p1, p5, p1

    .line 35
    .line 36
    if-nez p1, :cond_6

    .line 37
    .line 38
    const/high16 p1, 0x3f800000    # 1.0f

    .line 39
    .line 40
    cmpg-float p1, p6, p1

    .line 41
    .line 42
    if-nez p1, :cond_6

    .line 43
    .line 44
    .line 45
    invoke-virtual {p7}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->s()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    const-wide/16 p5, 0x0

    .line 49
    .line 50
    :goto_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 51
    .line 52
    cmpg-double p2, p5, v2

    .line 53
    .line 54
    if-gtz p2, :cond_5

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->p()Le8/l;

    .line 58
    move-result-object p2

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, p5, p6, p3, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->g(DLe8/l;Le8/l;)Z

    .line 62
    move-result p2

    .line 63
    .line 64
    if-nez p2, :cond_3

    .line 65
    return v1

    .line 66
    .line 67
    .line 68
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->m()Le8/l;

    .line 69
    move-result-object p2

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, p5, p6, p4, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->g(DLe8/l;Le8/l;)Z

    .line 73
    move-result p2

    .line 74
    .line 75
    if-nez p2, :cond_4

    .line 76
    return v1

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    :cond_4
    const-wide v2, 0x3f70101010101010L    # 0.00392156862745098

    .line 82
    add-double/2addr p5, v2

    .line 83
    goto :goto_0

    .line 84
    :cond_5
    return v0

    .line 85
    :cond_6
    return v1
.end method

.method private final n([FFF)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->f([F)F

    .line 4
    move-result v0

    .line 5
    .line 6
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->o()[F

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->f([F)F

    .line 14
    move-result v2

    .line 15
    div-float/2addr v0, v2

    .line 16
    .line 17
    .line 18
    const v2, 0x3f666666    # 0.9f

    .line 19
    .line 20
    cmpl-float v0, v0, v2

    .line 21
    .line 22
    if-lez v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->t()[F

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->k([F[F)Z

    .line 30
    move-result p1

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    .line 35
    cmpg-float p1, p2, p1

    .line 36
    .line 37
    if-gez p1, :cond_2

    .line 38
    .line 39
    const/high16 p1, 0x3f800000    # 1.0f

    .line 40
    .line 41
    cmpl-float p1, p3, p1

    .line 42
    .line 43
    if-lez p1, :cond_2

    .line 44
    :cond_1
    const/4 p1, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 p1, 0x0

    .line 47
    :goto_0
    return p1
.end method

.method private final o([F)[F
    .locals 10

    .line 1
    const/4 v0, 0x6

    .line 2
    .line 3
    new-array v8, v0, [F

    .line 4
    array-length v1, p1

    .line 5
    .line 6
    const/16 v2, 0x9

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    aget v2, p1, v1

    .line 12
    const/4 v3, 0x1

    .line 13
    .line 14
    aget v4, p1, v3

    .line 15
    .line 16
    add-float v5, v2, v4

    .line 17
    const/4 v6, 0x2

    .line 18
    .line 19
    aget v7, p1, v6

    .line 20
    add-float/2addr v5, v7

    .line 21
    div-float/2addr v2, v5

    .line 22
    .line 23
    aput v2, v8, v1

    .line 24
    div-float/2addr v4, v5

    .line 25
    .line 26
    aput v4, v8, v3

    .line 27
    const/4 v1, 0x3

    .line 28
    .line 29
    aget v2, p1, v1

    .line 30
    const/4 v3, 0x4

    .line 31
    .line 32
    aget v4, p1, v3

    .line 33
    .line 34
    add-float v5, v2, v4

    .line 35
    const/4 v7, 0x5

    .line 36
    .line 37
    aget v9, p1, v7

    .line 38
    add-float/2addr v5, v9

    .line 39
    div-float/2addr v2, v5

    .line 40
    .line 41
    aput v2, v8, v6

    .line 42
    div-float/2addr v4, v5

    .line 43
    .line 44
    aput v4, v8, v1

    .line 45
    .line 46
    aget v0, p1, v0

    .line 47
    const/4 v1, 0x7

    .line 48
    .line 49
    aget v1, p1, v1

    .line 50
    .line 51
    add-float v2, v0, v1

    .line 52
    .line 53
    const/16 v4, 0x8

    .line 54
    .line 55
    aget p1, p1, v4

    .line 56
    add-float/2addr v2, p1

    .line 57
    div-float/2addr v0, v2

    .line 58
    .line 59
    aput v0, v8, v3

    .line 60
    div-float/2addr v1, v2

    .line 61
    .line 62
    aput v1, v8, v7

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const/4 v3, 0x0

    .line 65
    const/4 v4, 0x0

    .line 66
    const/4 v5, 0x6

    .line 67
    const/4 v6, 0x6

    .line 68
    const/4 v7, 0x0

    .line 69
    move-object v1, p1

    .line 70
    move-object v2, v8

    .line 71
    .line 72
    .line 73
    invoke-static/range {v1 .. v7}, Lkotlin/collections/l;->k([F[FIIIILjava/lang/Object;)[F

    .line 74
    :goto_0
    return-object v8
.end method


# virtual methods
.method public final h([F)[F
    .locals 11
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "toXYZ"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x3

    .line 7
    .line 8
    new-array v1, v0, [F

    .line 9
    .line 10
    .line 11
    fill-array-data v1, :array_0

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->m([F[F)[F

    .line 15
    move-result-object v1

    .line 16
    .line 17
    new-array v2, v0, [F

    .line 18
    .line 19
    .line 20
    fill-array-data v2, :array_1

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->m([F[F)[F

    .line 24
    move-result-object v2

    .line 25
    .line 26
    new-array v3, v0, [F

    .line 27
    .line 28
    .line 29
    fill-array-data v3, :array_2

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v3}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->m([F[F)[F

    .line 33
    move-result-object p1

    .line 34
    const/4 v3, 0x0

    .line 35
    .line 36
    aget v4, v1, v3

    .line 37
    const/4 v5, 0x1

    .line 38
    .line 39
    aget v6, v1, v5

    .line 40
    .line 41
    add-float v7, v4, v6

    .line 42
    const/4 v8, 0x2

    .line 43
    .line 44
    aget v1, v1, v8

    .line 45
    add-float/2addr v7, v1

    .line 46
    .line 47
    aget v1, v2, v3

    .line 48
    .line 49
    aget v9, v2, v5

    .line 50
    add-float/2addr v1, v9

    .line 51
    .line 52
    aget v9, v2, v8

    .line 53
    add-float/2addr v1, v9

    .line 54
    .line 55
    aget v9, p1, v3

    .line 56
    .line 57
    aget v10, p1, v5

    .line 58
    add-float/2addr v9, v10

    .line 59
    .line 60
    aget v10, p1, v8

    .line 61
    add-float/2addr v9, v10

    .line 62
    const/4 v10, 0x6

    .line 63
    .line 64
    new-array v10, v10, [F

    .line 65
    div-float/2addr v4, v7

    .line 66
    .line 67
    aput v4, v10, v3

    .line 68
    div-float/2addr v6, v7

    .line 69
    .line 70
    aput v6, v10, v5

    .line 71
    .line 72
    aget v4, v2, v3

    .line 73
    div-float/2addr v4, v1

    .line 74
    .line 75
    aput v4, v10, v8

    .line 76
    .line 77
    aget v2, v2, v5

    .line 78
    div-float/2addr v2, v1

    .line 79
    .line 80
    aput v2, v10, v0

    .line 81
    .line 82
    aget v0, p1, v3

    .line 83
    div-float/2addr v0, v9

    .line 84
    const/4 v1, 0x4

    .line 85
    .line 86
    aput v0, v10, v1

    .line 87
    .line 88
    aget p1, p1, v5

    .line 89
    div-float/2addr p1, v9

    .line 90
    const/4 v0, 0x5

    .line 91
    .line 92
    aput p1, v10, v0

    .line 93
    return-object v10

    .line 94
    nop

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    :array_2
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
