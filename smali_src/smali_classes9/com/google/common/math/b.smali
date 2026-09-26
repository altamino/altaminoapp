.class public final Lcom/google/common/math/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final FLOOR_SQRT_MAX_INT:I = 0xb504

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:I = -0x4afb0ccd

.field static final MAX_SIGNED_POWER_OF_TWO:I = 0x40000000

.field static biggestBinomials:[I

.field private static final factorials:[I

.field static final halfPowersOf10:[I

.field static final maxLog10ForLeadingZeros:[B

.field static final powersOf10:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/common/math/b;->maxLog10ForLeadingZeros:[B

    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/common/math/b;->powersOf10:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/common/math/b;->halfPowersOf10:[I

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/common/math/b;->factorials:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/common/math/b;->biggestBinomials:[I

    return-void

    :array_0
    .array-data 1
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0x7fffffff
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
    .end array-data

    :array_4
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x10000
        0x929
        0x1dd
        0xc1
        0x6e
        0x4b
        0x3a
        0x31
        0x2b
        0x27
        0x25
        0x23
        0x22
        0x22
        0x21
    .end array-data
.end method

.method public static a(IILjava/math/RoundingMode;)I
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Lcom/google/common/base/o;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    if-eqz p1, :cond_7

    .line 6
    .line 7
    div-int v0, p0, p1

    .line 8
    .line 9
    mul-int v1, p1, v0

    .line 10
    .line 11
    sub-int v1, p0, v1

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    return v0

    .line 15
    :cond_0
    xor-int/2addr p0, p1

    .line 16
    .line 17
    shr-int/lit8 p0, p0, 0x1f

    .line 18
    const/4 v2, 0x1

    .line 19
    or-int/2addr p0, v2

    .line 20
    .line 21
    sget-object v3, Lcom/google/common/math/b$a;->$SwitchMap$java$math$RoundingMode:[I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 25
    move-result v4

    .line 26
    .line 27
    aget v3, v3, v4

    .line 28
    const/4 v4, 0x0

    .line 29
    .line 30
    .line 31
    packed-switch v3, :pswitch_data_0

    .line 32
    .line 33
    new-instance p0, Ljava/lang/AssertionError;

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 37
    throw p0

    .line 38
    .line 39
    .line 40
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 41
    move-result v1

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 45
    move-result p1

    .line 46
    sub-int/2addr p1, v1

    .line 47
    sub-int/2addr v1, p1

    .line 48
    .line 49
    if-nez v1, :cond_3

    .line 50
    .line 51
    sget-object p1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 52
    .line 53
    if-eq p2, p1, :cond_4

    .line 54
    .line 55
    sget-object p1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 56
    .line 57
    if-ne p2, p1, :cond_1

    .line 58
    move p1, v2

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move p1, v4

    .line 61
    .line 62
    :goto_0
    and-int/lit8 p2, v0, 0x1

    .line 63
    .line 64
    if-eqz p2, :cond_2

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    move v2, v4

    .line 67
    :goto_1
    and-int/2addr p1, v2

    .line 68
    .line 69
    if-eqz p1, :cond_6

    .line 70
    goto :goto_2

    .line 71
    .line 72
    :cond_3
    if-lez v1, :cond_6

    .line 73
    goto :goto_2

    .line 74
    .line 75
    :pswitch_1
    if-lez p0, :cond_6

    .line 76
    goto :goto_2

    .line 77
    .line 78
    :pswitch_2
    if-gez p0, :cond_6

    .line 79
    :cond_4
    :goto_2
    :pswitch_3
    add-int/2addr v0, p0

    .line 80
    goto :goto_4

    .line 81
    .line 82
    :pswitch_4
    if-nez v1, :cond_5

    .line 83
    goto :goto_3

    .line 84
    :cond_5
    move v2, v4

    .line 85
    .line 86
    .line 87
    :goto_3
    invoke-static {v2}, Lcom/google/common/math/d;->a(Z)V

    .line 88
    :cond_6
    :goto_4
    :pswitch_5
    return v0

    .line 89
    .line 90
    :cond_7
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 91
    .line 92
    const-string p1, "/ by zero"

    .line 93
    .line 94
    .line 95
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 96
    throw p0

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
