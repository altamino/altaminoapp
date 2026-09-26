.class public final Lcom/google/zxing/oned/j;
.super Lcom/google/zxing/oned/u;
.source "SourceFile"


# static fields
.field private static final CODE_WIDTH:I = 0x5f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/zxing/oned/u;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/zxing/a;IILjava/util/Map;)Lg5/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/a;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/c;",
            "*>;)",
            "Lg5/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/google/zxing/a;->EAN_13:Lcom/google/zxing/a;

    .line 3
    .line 4
    if-ne p2, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/o;->a(Ljava/lang/String;Lcom/google/zxing/a;IILjava/util/Map;)Lg5/b;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    .line 14
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    const-string p3, "Can only encode EAN_13, but got "

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p1
.end method

.method public c(Ljava/lang/String;)[Z
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0xc

    .line 7
    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    const/16 v2, 0xd

    .line 11
    .line 12
    if-ne v0, v2, :cond_1

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-static {p1}, Lcom/google/zxing/oned/t;->a(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string v0, "Contents do not pass checksum"

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p1
    :try_end_0
    .catch Lcom/google/zxing/d; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string v0, "Illegal contents"

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p1

    .line 36
    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    const-string v1, "Requested contents should be 12 or 13 digits long, but got "

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p1

    .line 52
    .line 53
    .line 54
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/google/zxing/oned/t;->b(Ljava/lang/CharSequence;)I

    .line 55
    move-result v0
    :try_end_1
    .catch Lcom/google/zxing/d; {:try_start_1 .. :try_end_1} :catch_1

    .line 56
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    :goto_0
    const/4 v0, 0x0

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 75
    move-result v2

    .line 76
    .line 77
    const/16 v3, 0xa

    .line 78
    .line 79
    .line 80
    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    .line 81
    move-result v2

    .line 82
    .line 83
    sget-object v4, Lcom/google/zxing/oned/i;->FIRST_DIGIT_ENCODINGS:[I

    .line 84
    .line 85
    aget v2, v4, v2

    .line 86
    .line 87
    const/16 v4, 0x5f

    .line 88
    .line 89
    new-array v4, v4, [Z

    .line 90
    .line 91
    sget-object v5, Lcom/google/zxing/oned/t;->START_END_PATTERN:[I

    .line 92
    const/4 v6, 0x1

    .line 93
    .line 94
    .line 95
    invoke-static {v4, v0, v5, v6}, Lcom/google/zxing/oned/o;->b([ZI[IZ)I

    .line 96
    move-result v5

    .line 97
    move v7, v6

    .line 98
    :goto_1
    const/4 v8, 0x6

    .line 99
    .line 100
    if-gt v7, v8, :cond_4

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    .line 104
    move-result v8

    .line 105
    .line 106
    .line 107
    invoke-static {v8, v3}, Ljava/lang/Character;->digit(CI)I

    .line 108
    move-result v8

    .line 109
    .line 110
    rsub-int/lit8 v9, v7, 0x6

    .line 111
    .line 112
    shr-int v9, v2, v9

    .line 113
    and-int/2addr v9, v6

    .line 114
    .line 115
    if-ne v9, v6, :cond_3

    .line 116
    .line 117
    add-int/lit8 v8, v8, 0xa

    .line 118
    .line 119
    :cond_3
    sget-object v9, Lcom/google/zxing/oned/t;->L_AND_G_PATTERNS:[[I

    .line 120
    .line 121
    aget-object v8, v9, v8

    .line 122
    .line 123
    .line 124
    invoke-static {v4, v5, v8, v0}, Lcom/google/zxing/oned/o;->b([ZI[IZ)I

    .line 125
    move-result v8

    .line 126
    add-int/2addr v5, v8

    .line 127
    .line 128
    add-int/lit8 v7, v7, 0x1

    .line 129
    goto :goto_1

    .line 130
    .line 131
    :cond_4
    sget-object v2, Lcom/google/zxing/oned/t;->MIDDLE_PATTERN:[I

    .line 132
    .line 133
    .line 134
    invoke-static {v4, v5, v2, v0}, Lcom/google/zxing/oned/o;->b([ZI[IZ)I

    .line 135
    move-result v0

    .line 136
    add-int/2addr v5, v0

    .line 137
    const/4 v0, 0x7

    .line 138
    .line 139
    :goto_2
    if-gt v0, v1, :cond_5

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 143
    move-result v2

    .line 144
    .line 145
    .line 146
    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    .line 147
    move-result v2

    .line 148
    .line 149
    sget-object v7, Lcom/google/zxing/oned/t;->L_PATTERNS:[[I

    .line 150
    .line 151
    aget-object v2, v7, v2

    .line 152
    .line 153
    .line 154
    invoke-static {v4, v5, v2, v6}, Lcom/google/zxing/oned/o;->b([ZI[IZ)I

    .line 155
    move-result v2

    .line 156
    add-int/2addr v5, v2

    .line 157
    .line 158
    add-int/lit8 v0, v0, 0x1

    .line 159
    goto :goto_2

    .line 160
    .line 161
    :cond_5
    sget-object p1, Lcom/google/zxing/oned/t;->START_END_PATTERN:[I

    .line 162
    .line 163
    .line 164
    invoke-static {v4, v5, p1, v6}, Lcom/google/zxing/oned/o;->b([ZI[IZ)I

    .line 165
    return-object v4

    .line 166
    :catch_1
    move-exception p1

    .line 167
    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 169
    .line 170
    .line 171
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 172
    throw v0
.end method
