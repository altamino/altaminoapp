.class public final Lcom/google/zxing/oned/k;
.super Lcom/google/zxing/oned/u;
.source "SourceFile"


# static fields
.field private static final CODE_WIDTH:I = 0x43


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
    sget-object v0, Lcom/google/zxing/a;->EAN_8:Lcom/google/zxing/a;

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
    const-string p3, "Can only encode EAN_8, but got "

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
    .locals 8

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
    invoke-static {p1}, Lcom/google/zxing/oned/t;->b(Ljava/lang/CharSequence;)I

    .line 54
    move-result v0
    :try_end_1
    .catch Lcom/google/zxing/d; {:try_start_1 .. :try_end_1} :catch_1

    .line 55
    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    :goto_0
    const/16 v0, 0x43

    .line 72
    .line 73
    new-array v0, v0, [Z

    .line 74
    .line 75
    sget-object v2, Lcom/google/zxing/oned/t;->START_END_PATTERN:[I

    .line 76
    const/4 v3, 0x0

    .line 77
    const/4 v4, 0x1

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v3, v2, v4}, Lcom/google/zxing/oned/o;->b([ZI[IZ)I

    .line 81
    move-result v2

    .line 82
    move v5, v3

    .line 83
    :goto_1
    const/4 v6, 0x3

    .line 84
    .line 85
    const/16 v7, 0xa

    .line 86
    .line 87
    if-gt v5, v6, :cond_3

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 91
    move-result v6

    .line 92
    .line 93
    .line 94
    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    .line 95
    move-result v6

    .line 96
    .line 97
    sget-object v7, Lcom/google/zxing/oned/t;->L_PATTERNS:[[I

    .line 98
    .line 99
    aget-object v6, v7, v6

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v2, v6, v3}, Lcom/google/zxing/oned/o;->b([ZI[IZ)I

    .line 103
    move-result v6

    .line 104
    add-int/2addr v2, v6

    .line 105
    .line 106
    add-int/lit8 v5, v5, 0x1

    .line 107
    goto :goto_1

    .line 108
    .line 109
    :cond_3
    sget-object v5, Lcom/google/zxing/oned/t;->MIDDLE_PATTERN:[I

    .line 110
    .line 111
    .line 112
    invoke-static {v0, v2, v5, v3}, Lcom/google/zxing/oned/o;->b([ZI[IZ)I

    .line 113
    move-result v3

    .line 114
    add-int/2addr v2, v3

    .line 115
    const/4 v3, 0x4

    .line 116
    .line 117
    :goto_2
    if-gt v3, v1, :cond_4

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 121
    move-result v5

    .line 122
    .line 123
    .line 124
    invoke-static {v5, v7}, Ljava/lang/Character;->digit(CI)I

    .line 125
    move-result v5

    .line 126
    .line 127
    sget-object v6, Lcom/google/zxing/oned/t;->L_PATTERNS:[[I

    .line 128
    .line 129
    aget-object v5, v6, v5

    .line 130
    .line 131
    .line 132
    invoke-static {v0, v2, v5, v4}, Lcom/google/zxing/oned/o;->b([ZI[IZ)I

    .line 133
    move-result v5

    .line 134
    add-int/2addr v2, v5

    .line 135
    .line 136
    add-int/lit8 v3, v3, 0x1

    .line 137
    goto :goto_2

    .line 138
    .line 139
    :cond_4
    sget-object p1, Lcom/google/zxing/oned/t;->START_END_PATTERN:[I

    .line 140
    .line 141
    .line 142
    invoke-static {v0, v2, p1, v4}, Lcom/google/zxing/oned/o;->b([ZI[IZ)I

    .line 143
    return-object v0

    .line 144
    :catch_1
    move-exception p1

    .line 145
    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 147
    .line 148
    .line 149
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 150
    throw v0
.end method
