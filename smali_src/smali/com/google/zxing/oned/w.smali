.class public final Lcom/google/zxing/oned/w;
.super Lcom/google/zxing/oned/u;
.source "SourceFile"


# static fields
.field private static final CODE_WIDTH:I = 0x33


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
    sget-object v0, Lcom/google/zxing/a;->UPC_E:Lcom/google/zxing/a;

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
    const-string p3, "Can only encode UPC_E, but got "

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
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x7

    .line 6
    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    if-ne v0, v2, :cond_1

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-static {p1}, Lcom/google/zxing/oned/t;->a(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string v0, "Contents do not pass checksum"

    .line 23
    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p1
    :try_end_0
    .catch Lcom/google/zxing/d; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    const-string v0, "Illegal contents"

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p1

    .line 35
    .line 36
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    const-string v1, "Requested contents should be 8 digits long, but got "

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p1

    .line 51
    .line 52
    .line 53
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/google/zxing/oned/v;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lcom/google/zxing/oned/t;->b(Ljava/lang/CharSequence;)I

    .line 58
    move-result v0
    :try_end_1
    .catch Lcom/google/zxing/d; {:try_start_1 .. :try_end_1} :catch_1

    .line 59
    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    :goto_0
    const/4 v0, 0x0

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 78
    move-result v2

    .line 79
    .line 80
    const/16 v3, 0xa

    .line 81
    .line 82
    .line 83
    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    .line 84
    move-result v2

    .line 85
    const/4 v4, 0x1

    .line 86
    .line 87
    if-eqz v2, :cond_4

    .line 88
    .line 89
    if-ne v2, v4, :cond_3

    .line 90
    goto :goto_1

    .line 91
    .line 92
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 93
    .line 94
    const-string v0, "Number system must be 0 or 1"

    .line 95
    .line 96
    .line 97
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    throw p1

    .line 99
    .line 100
    .line 101
    :cond_4
    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 102
    move-result v1

    .line 103
    .line 104
    .line 105
    invoke-static {v1, v3}, Ljava/lang/Character;->digit(CI)I

    .line 106
    move-result v1

    .line 107
    .line 108
    sget-object v5, Lcom/google/zxing/oned/v;->NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I

    .line 109
    .line 110
    aget-object v2, v5, v2

    .line 111
    .line 112
    aget v1, v2, v1

    .line 113
    .line 114
    const/16 v2, 0x33

    .line 115
    .line 116
    new-array v2, v2, [Z

    .line 117
    .line 118
    sget-object v5, Lcom/google/zxing/oned/t;->START_END_PATTERN:[I

    .line 119
    .line 120
    .line 121
    invoke-static {v2, v0, v5, v4}, Lcom/google/zxing/oned/o;->b([ZI[IZ)I

    .line 122
    move-result v5

    .line 123
    move v6, v4

    .line 124
    :goto_2
    const/4 v7, 0x6

    .line 125
    .line 126
    if-gt v6, v7, :cond_6

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    .line 130
    move-result v7

    .line 131
    .line 132
    .line 133
    invoke-static {v7, v3}, Ljava/lang/Character;->digit(CI)I

    .line 134
    move-result v7

    .line 135
    .line 136
    rsub-int/lit8 v8, v6, 0x6

    .line 137
    .line 138
    shr-int v8, v1, v8

    .line 139
    and-int/2addr v8, v4

    .line 140
    .line 141
    if-ne v8, v4, :cond_5

    .line 142
    .line 143
    add-int/lit8 v7, v7, 0xa

    .line 144
    .line 145
    :cond_5
    sget-object v8, Lcom/google/zxing/oned/t;->L_AND_G_PATTERNS:[[I

    .line 146
    .line 147
    aget-object v7, v8, v7

    .line 148
    .line 149
    .line 150
    invoke-static {v2, v5, v7, v0}, Lcom/google/zxing/oned/o;->b([ZI[IZ)I

    .line 151
    move-result v7

    .line 152
    add-int/2addr v5, v7

    .line 153
    .line 154
    add-int/lit8 v6, v6, 0x1

    .line 155
    goto :goto_2

    .line 156
    .line 157
    :cond_6
    sget-object p1, Lcom/google/zxing/oned/t;->END_PATTERN:[I

    .line 158
    .line 159
    .line 160
    invoke-static {v2, v5, p1, v0}, Lcom/google/zxing/oned/o;->b([ZI[IZ)I

    .line 161
    return-object v2

    .line 162
    :catch_1
    move-exception p1

    .line 163
    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 165
    .line 166
    .line 167
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 168
    throw v0
.end method
