.class public Lcom/airbnb/lottie/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static a(F)F
    .locals 4

    .line 1
    .line 2
    .line 3
    const v0, 0x3d25aee6    # 0.04045f

    .line 4
    .line 5
    cmpg-float v0, p0, v0

    .line 6
    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    .line 10
    const v0, 0x414eb852    # 12.92f

    .line 11
    div-float/2addr p0, v0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    const v0, 0x3d6147ae    # 0.055f

    .line 16
    add-float/2addr p0, v0

    .line 17
    .line 18
    .line 19
    const v0, 0x3f870a3d    # 1.055f

    .line 20
    div-float/2addr p0, v0

    .line 21
    float-to-double v0, p0

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    const-wide v2, 0x4003333340000000L    # 2.4000000953674316

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 30
    move-result-wide v0

    .line 31
    double-to-float p0, v0

    .line 32
    :goto_0
    return p0
.end method

.method private static b(F)F
    .locals 4

    .line 1
    .line 2
    .line 3
    const v0, 0x3b4d2e1c    # 0.0031308f

    .line 4
    .line 5
    cmpg-float v0, p0, v0

    .line 6
    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    .line 10
    const v0, 0x414eb852    # 12.92f

    .line 11
    mul-float/2addr p0, v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    float-to-double v0, p0

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const-wide v2, 0x3fdaaaaaa0000000L    # 0.4166666567325592

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 22
    move-result-wide v0

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    const-wide v2, 0x3ff0e147a0000000L    # 1.0549999475479126

    .line 28
    mul-double/2addr v0, v2

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    const-wide v2, 0x3fac28f5c0000000L    # 0.054999999701976776

    .line 34
    sub-double/2addr v0, v2

    .line 35
    double-to-float p0, v0

    .line 36
    :goto_0
    return p0
.end method

.method public static c(FII)I
    .locals 7

    .line 1
    .line 2
    shr-int/lit8 v0, p1, 0x18

    .line 3
    .line 4
    and-int/lit16 v0, v0, 0xff

    .line 5
    int-to-float v0, v0

    .line 6
    .line 7
    const/high16 v1, 0x437f0000    # 255.0f

    .line 8
    div-float/2addr v0, v1

    .line 9
    .line 10
    shr-int/lit8 v2, p1, 0x10

    .line 11
    .line 12
    and-int/lit16 v2, v2, 0xff

    .line 13
    int-to-float v2, v2

    .line 14
    div-float/2addr v2, v1

    .line 15
    .line 16
    shr-int/lit8 v3, p1, 0x8

    .line 17
    .line 18
    and-int/lit16 v3, v3, 0xff

    .line 19
    int-to-float v3, v3

    .line 20
    div-float/2addr v3, v1

    .line 21
    .line 22
    and-int/lit16 p1, p1, 0xff

    .line 23
    int-to-float p1, p1

    .line 24
    div-float/2addr p1, v1

    .line 25
    .line 26
    shr-int/lit8 v4, p2, 0x18

    .line 27
    .line 28
    and-int/lit16 v4, v4, 0xff

    .line 29
    int-to-float v4, v4

    .line 30
    div-float/2addr v4, v1

    .line 31
    .line 32
    shr-int/lit8 v5, p2, 0x10

    .line 33
    .line 34
    and-int/lit16 v5, v5, 0xff

    .line 35
    int-to-float v5, v5

    .line 36
    div-float/2addr v5, v1

    .line 37
    .line 38
    shr-int/lit8 v6, p2, 0x8

    .line 39
    .line 40
    and-int/lit16 v6, v6, 0xff

    .line 41
    int-to-float v6, v6

    .line 42
    div-float/2addr v6, v1

    .line 43
    .line 44
    and-int/lit16 p2, p2, 0xff

    .line 45
    int-to-float p2, p2

    .line 46
    div-float/2addr p2, v1

    .line 47
    .line 48
    .line 49
    invoke-static {v2}, Lcom/airbnb/lottie/utils/a;->a(F)F

    .line 50
    move-result v2

    .line 51
    .line 52
    .line 53
    invoke-static {v3}, Lcom/airbnb/lottie/utils/a;->a(F)F

    .line 54
    move-result v3

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lcom/airbnb/lottie/utils/a;->a(F)F

    .line 58
    move-result p1

    .line 59
    .line 60
    .line 61
    invoke-static {v5}, Lcom/airbnb/lottie/utils/a;->a(F)F

    .line 62
    move-result v5

    .line 63
    .line 64
    .line 65
    invoke-static {v6}, Lcom/airbnb/lottie/utils/a;->a(F)F

    .line 66
    move-result v6

    .line 67
    .line 68
    .line 69
    invoke-static {p2}, Lcom/airbnb/lottie/utils/a;->a(F)F

    .line 70
    move-result p2

    .line 71
    sub-float/2addr v4, v0

    .line 72
    mul-float/2addr v4, p0

    .line 73
    add-float/2addr v0, v4

    .line 74
    sub-float/2addr v5, v2

    .line 75
    mul-float/2addr v5, p0

    .line 76
    add-float/2addr v2, v5

    .line 77
    sub-float/2addr v6, v3

    .line 78
    mul-float/2addr v6, p0

    .line 79
    add-float/2addr v3, v6

    .line 80
    sub-float/2addr p2, p1

    .line 81
    mul-float/2addr p0, p2

    .line 82
    add-float/2addr p1, p0

    .line 83
    mul-float/2addr v0, v1

    .line 84
    .line 85
    .line 86
    invoke-static {v2}, Lcom/airbnb/lottie/utils/a;->b(F)F

    .line 87
    move-result p0

    .line 88
    mul-float/2addr p0, v1

    .line 89
    .line 90
    .line 91
    invoke-static {v3}, Lcom/airbnb/lottie/utils/a;->b(F)F

    .line 92
    move-result p2

    .line 93
    mul-float/2addr p2, v1

    .line 94
    .line 95
    .line 96
    invoke-static {p1}, Lcom/airbnb/lottie/utils/a;->b(F)F

    .line 97
    move-result p1

    .line 98
    mul-float/2addr p1, v1

    .line 99
    .line 100
    .line 101
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 102
    move-result v0

    .line 103
    .line 104
    shl-int/lit8 v0, v0, 0x18

    .line 105
    .line 106
    .line 107
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 108
    move-result p0

    .line 109
    .line 110
    shl-int/lit8 p0, p0, 0x10

    .line 111
    or-int/2addr p0, v0

    .line 112
    .line 113
    .line 114
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 115
    move-result p2

    .line 116
    .line 117
    shl-int/lit8 p2, p2, 0x8

    .line 118
    or-int/2addr p0, p2

    .line 119
    .line 120
    .line 121
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 122
    move-result p1

    .line 123
    or-int/2addr p0, p1

    .line 124
    return p0
.end method
