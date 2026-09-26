.class public Le3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Le3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Le3/c;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Le3/c;-><init>()V

    .line 6
    .line 7
    sput-object v0, Le3/c;->instance:Le3/c;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static b()Le3/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Le3/c;->instance:Le3/c;

    return-object v0
.end method


# virtual methods
.method public a(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 4
    move-result p2

    .line 5
    .line 6
    shr-int/lit8 v0, p2, 0x18

    .line 7
    .line 8
    and-int/lit16 v0, v0, 0xff

    .line 9
    int-to-float v0, v0

    .line 10
    .line 11
    const/high16 v1, 0x437f0000    # 255.0f

    .line 12
    div-float/2addr v0, v1

    .line 13
    .line 14
    shr-int/lit8 v2, p2, 0x10

    .line 15
    .line 16
    and-int/lit16 v2, v2, 0xff

    .line 17
    int-to-float v2, v2

    .line 18
    div-float/2addr v2, v1

    .line 19
    .line 20
    shr-int/lit8 v3, p2, 0x8

    .line 21
    .line 22
    and-int/lit16 v3, v3, 0xff

    .line 23
    int-to-float v3, v3

    .line 24
    div-float/2addr v3, v1

    .line 25
    .line 26
    and-int/lit16 p2, p2, 0xff

    .line 27
    int-to-float p2, p2

    .line 28
    div-float/2addr p2, v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result p3

    .line 33
    .line 34
    shr-int/lit8 v4, p3, 0x18

    .line 35
    .line 36
    and-int/lit16 v4, v4, 0xff

    .line 37
    int-to-float v4, v4

    .line 38
    div-float/2addr v4, v1

    .line 39
    .line 40
    shr-int/lit8 v5, p3, 0x10

    .line 41
    .line 42
    and-int/lit16 v5, v5, 0xff

    .line 43
    int-to-float v5, v5

    .line 44
    div-float/2addr v5, v1

    .line 45
    .line 46
    shr-int/lit8 v6, p3, 0x8

    .line 47
    .line 48
    and-int/lit16 v6, v6, 0xff

    .line 49
    int-to-float v6, v6

    .line 50
    div-float/2addr v6, v1

    .line 51
    .line 52
    and-int/lit16 p3, p3, 0xff

    .line 53
    int-to-float p3, p3

    .line 54
    div-float/2addr p3, v1

    .line 55
    float-to-double v7, v2

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    const-wide v9, 0x400199999999999aL    # 2.2

    .line 61
    .line 62
    .line 63
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 64
    move-result-wide v7

    .line 65
    double-to-float v2, v7

    .line 66
    float-to-double v7, v3

    .line 67
    .line 68
    .line 69
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 70
    move-result-wide v7

    .line 71
    double-to-float v3, v7

    .line 72
    float-to-double v7, p2

    .line 73
    .line 74
    .line 75
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 76
    move-result-wide v7

    .line 77
    double-to-float p2, v7

    .line 78
    float-to-double v7, v5

    .line 79
    .line 80
    .line 81
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 82
    move-result-wide v7

    .line 83
    double-to-float v5, v7

    .line 84
    float-to-double v6, v6

    .line 85
    .line 86
    .line 87
    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 88
    move-result-wide v6

    .line 89
    double-to-float v6, v6

    .line 90
    float-to-double v7, p3

    .line 91
    .line 92
    .line 93
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 94
    move-result-wide v7

    .line 95
    double-to-float p3, v7

    .line 96
    sub-float/2addr v4, v0

    .line 97
    mul-float/2addr v4, p1

    .line 98
    add-float/2addr v0, v4

    .line 99
    sub-float/2addr v5, v2

    .line 100
    mul-float/2addr v5, p1

    .line 101
    add-float/2addr v2, v5

    .line 102
    sub-float/2addr v6, v3

    .line 103
    mul-float/2addr v6, p1

    .line 104
    add-float/2addr v3, v6

    .line 105
    sub-float/2addr p3, p2

    .line 106
    mul-float/2addr p1, p3

    .line 107
    add-float/2addr p2, p1

    .line 108
    mul-float/2addr v0, v1

    .line 109
    float-to-double v4, v2

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    const-wide v6, 0x3fdd1745d1745d17L    # 0.45454545454545453

    .line 115
    .line 116
    .line 117
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 118
    move-result-wide v4

    .line 119
    double-to-float p1, v4

    .line 120
    mul-float/2addr p1, v1

    .line 121
    float-to-double v2, v3

    .line 122
    .line 123
    .line 124
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 125
    move-result-wide v2

    .line 126
    double-to-float p3, v2

    .line 127
    mul-float/2addr p3, v1

    .line 128
    float-to-double v2, p2

    .line 129
    .line 130
    .line 131
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 132
    move-result-wide v2

    .line 133
    double-to-float p2, v2

    .line 134
    mul-float/2addr p2, v1

    .line 135
    .line 136
    .line 137
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 138
    move-result v0

    .line 139
    .line 140
    shl-int/lit8 v0, v0, 0x18

    .line 141
    .line 142
    .line 143
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 144
    move-result p1

    .line 145
    .line 146
    shl-int/lit8 p1, p1, 0x10

    .line 147
    or-int/2addr p1, v0

    .line 148
    .line 149
    .line 150
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    .line 151
    move-result p3

    .line 152
    .line 153
    shl-int/lit8 p3, p3, 0x8

    .line 154
    or-int/2addr p1, p3

    .line 155
    .line 156
    .line 157
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 158
    move-result p2

    .line 159
    or-int/2addr p1, p2

    .line 160
    .line 161
    .line 162
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    move-result-object p1

    .line 164
    return-object p1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    check-cast p2, Ljava/lang/Integer;

    .line 3
    .line 4
    check-cast p3, Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Le3/c;->a(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
