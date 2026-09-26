.class public abstract Lcom/google/zxing/oned/t;
.super Lcom/google/zxing/oned/n;
.source "SourceFile"


# static fields
.field static final END_PATTERN:[I

.field static final L_AND_G_PATTERNS:[[I

.field static final L_PATTERNS:[[I

.field private static final MAX_AVG_VARIANCE:F = 0.48f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.7f

.field static final MIDDLE_PATTERN:[I

.field static final START_END_PATTERN:[I


# instance fields
.field private final decodeRowStringBuffer:Ljava/lang/StringBuilder;

.field private final eanManSupport:Lcom/google/zxing/oned/l;

.field private final extensionReader:Lcom/google/zxing/oned/s;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    filled-new-array {v0, v0, v0}, [I

    .line 5
    move-result-object v1

    .line 6
    .line 7
    sput-object v1, Lcom/google/zxing/oned/t;->START_END_PATTERN:[I

    .line 8
    .line 9
    .line 10
    filled-new-array {v0, v0, v0, v0, v0}, [I

    .line 11
    move-result-object v1

    .line 12
    .line 13
    sput-object v1, Lcom/google/zxing/oned/t;->MIDDLE_PATTERN:[I

    .line 14
    const/4 v1, 0x6

    .line 15
    .line 16
    new-array v2, v1, [I

    .line 17
    .line 18
    .line 19
    fill-array-data v2, :array_0

    .line 20
    .line 21
    sput-object v2, Lcom/google/zxing/oned/t;->END_PATTERN:[I

    .line 22
    .line 23
    const/16 v2, 0xa

    .line 24
    .line 25
    new-array v3, v2, [[I

    .line 26
    const/4 v4, 0x3

    .line 27
    const/4 v5, 0x2

    .line 28
    .line 29
    .line 30
    filled-new-array {v4, v5, v0, v0}, [I

    .line 31
    move-result-object v6

    .line 32
    const/4 v7, 0x0

    .line 33
    .line 34
    aput-object v6, v3, v7

    .line 35
    .line 36
    .line 37
    filled-new-array {v5, v5, v5, v0}, [I

    .line 38
    move-result-object v6

    .line 39
    .line 40
    aput-object v6, v3, v0

    .line 41
    .line 42
    .line 43
    filled-new-array {v5, v0, v5, v5}, [I

    .line 44
    move-result-object v6

    .line 45
    .line 46
    aput-object v6, v3, v5

    .line 47
    const/4 v6, 0x4

    .line 48
    .line 49
    .line 50
    filled-new-array {v0, v6, v0, v0}, [I

    .line 51
    move-result-object v8

    .line 52
    .line 53
    aput-object v8, v3, v4

    .line 54
    .line 55
    .line 56
    filled-new-array {v0, v0, v4, v5}, [I

    .line 57
    move-result-object v8

    .line 58
    .line 59
    aput-object v8, v3, v6

    .line 60
    const/4 v8, 0x5

    .line 61
    .line 62
    .line 63
    filled-new-array {v0, v5, v4, v0}, [I

    .line 64
    move-result-object v9

    .line 65
    .line 66
    aput-object v9, v3, v8

    .line 67
    .line 68
    .line 69
    filled-new-array {v0, v0, v0, v6}, [I

    .line 70
    move-result-object v6

    .line 71
    .line 72
    aput-object v6, v3, v1

    .line 73
    const/4 v1, 0x7

    .line 74
    .line 75
    .line 76
    filled-new-array {v0, v4, v0, v5}, [I

    .line 77
    move-result-object v6

    .line 78
    .line 79
    aput-object v6, v3, v1

    .line 80
    .line 81
    const/16 v1, 0x8

    .line 82
    .line 83
    .line 84
    filled-new-array {v0, v5, v0, v4}, [I

    .line 85
    move-result-object v6

    .line 86
    .line 87
    aput-object v6, v3, v1

    .line 88
    .line 89
    const/16 v1, 0x9

    .line 90
    .line 91
    .line 92
    filled-new-array {v4, v0, v0, v5}, [I

    .line 93
    move-result-object v4

    .line 94
    .line 95
    aput-object v4, v3, v1

    .line 96
    .line 97
    sput-object v3, Lcom/google/zxing/oned/t;->L_PATTERNS:[[I

    .line 98
    .line 99
    const/16 v1, 0x14

    .line 100
    .line 101
    new-array v4, v1, [[I

    .line 102
    .line 103
    sput-object v4, Lcom/google/zxing/oned/t;->L_AND_G_PATTERNS:[[I

    .line 104
    .line 105
    .line 106
    invoke-static {v3, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    .line 108
    :goto_0
    if-ge v2, v1, :cond_1

    .line 109
    .line 110
    sget-object v3, Lcom/google/zxing/oned/t;->L_PATTERNS:[[I

    .line 111
    .line 112
    add-int/lit8 v4, v2, -0xa

    .line 113
    .line 114
    aget-object v3, v3, v4

    .line 115
    array-length v4, v3

    .line 116
    .line 117
    new-array v4, v4, [I

    .line 118
    move v5, v7

    .line 119
    :goto_1
    array-length v6, v3

    .line 120
    .line 121
    if-ge v5, v6, :cond_0

    .line 122
    array-length v6, v3

    .line 123
    sub-int/2addr v6, v5

    .line 124
    sub-int/2addr v6, v0

    .line 125
    .line 126
    aget v6, v3, v6

    .line 127
    .line 128
    aput v6, v4, v5

    .line 129
    .line 130
    add-int/lit8 v5, v5, 0x1

    .line 131
    goto :goto_1

    .line 132
    .line 133
    :cond_0
    sget-object v3, Lcom/google/zxing/oned/t;->L_AND_G_PATTERNS:[[I

    .line 134
    .line 135
    aput-object v4, v3, v2

    .line 136
    .line 137
    add-int/lit8 v2, v2, 0x1

    .line 138
    goto :goto_0

    .line 139
    :cond_1
    return-void

    .line 140
    nop

    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/zxing/oned/n;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const/16 v1, 0x14

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/zxing/oned/t;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    .line 13
    .line 14
    new-instance v0, Lcom/google/zxing/oned/s;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Lcom/google/zxing/oned/s;-><init>()V

    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/zxing/oned/t;->extensionReader:Lcom/google/zxing/oned/s;

    .line 20
    .line 21
    new-instance v0, Lcom/google/zxing/oned/l;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0}, Lcom/google/zxing/oned/l;-><init>()V

    .line 25
    .line 26
    iput-object v0, p0, Lcom/google/zxing/oned/t;->eanManSupport:Lcom/google/zxing/oned/l;

    .line 27
    return-void
.end method

.method static a(Ljava/lang/CharSequence;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/d;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    const/4 v2, 0x1

    .line 10
    sub-int/2addr v0, v2

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 14
    move-result v3

    .line 15
    .line 16
    const/16 v4, 0xa

    .line 17
    .line 18
    .line 19
    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    .line 20
    move-result v3

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Lcom/google/zxing/oned/t;->b(Ljava/lang/CharSequence;)I

    .line 28
    move-result p0

    .line 29
    .line 30
    if-ne p0, v3, :cond_1

    .line 31
    return v2

    .line 32
    :cond_1
    return v1
.end method

.method static b(Ljava/lang/CharSequence;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/d;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v1, v0, -0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    :goto_0
    const/16 v3, 0x9

    .line 10
    .line 11
    if-ltz v1, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 15
    move-result v4

    .line 16
    .line 17
    add-int/lit8 v4, v4, -0x30

    .line 18
    .line 19
    if-ltz v4, :cond_0

    .line 20
    .line 21
    if-gt v4, v3, :cond_0

    .line 22
    add-int/2addr v2, v4

    .line 23
    .line 24
    add-int/lit8 v1, v1, -0x2

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {}, Lcom/google/zxing/d;->a()Lcom/google/zxing/d;

    .line 29
    move-result-object p0

    .line 30
    throw p0

    .line 31
    .line 32
    :cond_1
    mul-int/lit8 v2, v2, 0x3

    .line 33
    .line 34
    add-int/lit8 v0, v0, -0x2

    .line 35
    .line 36
    :goto_1
    if-ltz v0, :cond_3

    .line 37
    .line 38
    .line 39
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 40
    move-result v1

    .line 41
    .line 42
    add-int/lit8 v1, v1, -0x30

    .line 43
    .line 44
    if-ltz v1, :cond_2

    .line 45
    .line 46
    if-gt v1, v3, :cond_2

    .line 47
    add-int/2addr v2, v1

    .line 48
    .line 49
    add-int/lit8 v0, v0, -0x2

    .line 50
    goto :goto_1

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-static {}, Lcom/google/zxing/d;->a()Lcom/google/zxing/d;

    .line 54
    move-result-object p0

    .line 55
    throw p0

    .line 56
    .line 57
    :cond_3
    rsub-int p0, v2, 0x3e8

    .line 58
    .line 59
    rem-int/lit8 p0, p0, 0xa

    .line 60
    return p0
.end method
