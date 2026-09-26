.class public Lcom/google/zxing/oned/h;
.super Lcom/google/zxing/oned/o;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/zxing/oned/o;-><init>()V

    .line 4
    return-void
.end method

.method private static f([ZI[I)I
    .locals 5

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    .line 5
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    .line 7
    aget v3, p2, v2

    .line 8
    .line 9
    add-int/lit8 v4, p1, 0x1

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    const/4 v3, 0x1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    move v3, v1

    .line 15
    .line 16
    :goto_1
    aput-boolean v3, p0, p1

    .line 17
    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 19
    move p1, v4

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_1
    const/16 p0, 0x9

    .line 23
    return p0
.end method

.method private static g(Ljava/lang/String;I)I
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v1

    .line 9
    .line 10
    :goto_0
    if-ltz v0, :cond_1

    .line 11
    .line 12
    const-string v4, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 16
    move-result v5

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    .line 20
    move-result v4

    .line 21
    mul-int/2addr v4, v3

    .line 22
    add-int/2addr v2, v4

    .line 23
    add-int/2addr v3, v1

    .line 24
    .line 25
    if-le v3, p1, :cond_0

    .line 26
    move v3, v1

    .line 27
    .line 28
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_1
    rem-int/lit8 v2, v2, 0x2f

    .line 32
    return v2
.end method

.method private static h(I[I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    :goto_0
    const/16 v2, 0x9

    .line 5
    .line 6
    if-ge v1, v2, :cond_1

    .line 7
    .line 8
    rsub-int/lit8 v2, v1, 0x8

    .line 9
    const/4 v3, 0x1

    .line 10
    .line 11
    shl-int v2, v3, v2

    .line 12
    and-int/2addr v2, p0

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    move v3, v0

    .line 16
    .line 17
    :cond_0
    aput v3, p1, v1

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
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
    sget-object v0, Lcom/google/zxing/a;->CODE_93:Lcom/google/zxing/a;

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
    const-string p3, "Can only encode CODE_93, but got "

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
    .line 6
    const/16 v1, 0x50

    .line 7
    .line 8
    if-gt v0, v1, :cond_1

    .line 9
    .line 10
    const/16 v1, 0x9

    .line 11
    .line 12
    new-array v2, v1, [I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 16
    move-result v3

    .line 17
    .line 18
    add-int/lit8 v3, v3, 0x4

    .line 19
    mul-int/2addr v3, v1

    .line 20
    const/4 v1, 0x1

    .line 21
    add-int/2addr v3, v1

    .line 22
    .line 23
    sget-object v4, Lcom/google/zxing/oned/g;->CHARACTER_ENCODINGS:[I

    .line 24
    .line 25
    const/16 v5, 0x2f

    .line 26
    .line 27
    aget v4, v4, v5

    .line 28
    .line 29
    .line 30
    invoke-static {v4, v2}, Lcom/google/zxing/oned/h;->h(I[I)V

    .line 31
    .line 32
    new-array v3, v3, [Z

    .line 33
    const/4 v4, 0x0

    .line 34
    .line 35
    .line 36
    invoke-static {v3, v4, v2}, Lcom/google/zxing/oned/h;->f([ZI[I)I

    .line 37
    move-result v6

    .line 38
    .line 39
    :goto_0
    const-string v7, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    .line 40
    .line 41
    if-ge v4, v0, :cond_0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 45
    move-result v8

    .line 46
    .line 47
    .line 48
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    .line 49
    move-result v7

    .line 50
    .line 51
    sget-object v8, Lcom/google/zxing/oned/g;->CHARACTER_ENCODINGS:[I

    .line 52
    .line 53
    aget v7, v8, v7

    .line 54
    .line 55
    .line 56
    invoke-static {v7, v2}, Lcom/google/zxing/oned/h;->h(I[I)V

    .line 57
    .line 58
    .line 59
    invoke-static {v3, v6, v2}, Lcom/google/zxing/oned/h;->f([ZI[I)I

    .line 60
    move-result v7

    .line 61
    add-int/2addr v6, v7

    .line 62
    .line 63
    add-int/lit8 v4, v4, 0x1

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_0
    const/16 v0, 0x14

    .line 67
    .line 68
    .line 69
    invoke-static {p1, v0}, Lcom/google/zxing/oned/h;->g(Ljava/lang/String;I)I

    .line 70
    move-result v0

    .line 71
    .line 72
    sget-object v4, Lcom/google/zxing/oned/g;->CHARACTER_ENCODINGS:[I

    .line 73
    .line 74
    aget v8, v4, v0

    .line 75
    .line 76
    .line 77
    invoke-static {v8, v2}, Lcom/google/zxing/oned/h;->h(I[I)V

    .line 78
    .line 79
    .line 80
    invoke-static {v3, v6, v2}, Lcom/google/zxing/oned/h;->f([ZI[I)I

    .line 81
    move-result v8

    .line 82
    add-int/2addr v6, v8

    .line 83
    .line 84
    new-instance v8, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    .line 94
    move-result p1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    const/16 v0, 0xf

    .line 104
    .line 105
    .line 106
    invoke-static {p1, v0}, Lcom/google/zxing/oned/h;->g(Ljava/lang/String;I)I

    .line 107
    move-result p1

    .line 108
    .line 109
    aget p1, v4, p1

    .line 110
    .line 111
    .line 112
    invoke-static {p1, v2}, Lcom/google/zxing/oned/h;->h(I[I)V

    .line 113
    .line 114
    .line 115
    invoke-static {v3, v6, v2}, Lcom/google/zxing/oned/h;->f([ZI[I)I

    .line 116
    move-result p1

    .line 117
    add-int/2addr v6, p1

    .line 118
    .line 119
    aget p1, v4, v5

    .line 120
    .line 121
    .line 122
    invoke-static {p1, v2}, Lcom/google/zxing/oned/h;->h(I[I)V

    .line 123
    .line 124
    .line 125
    invoke-static {v3, v6, v2}, Lcom/google/zxing/oned/h;->f([ZI[I)I

    .line 126
    move-result p1

    .line 127
    add-int/2addr v6, p1

    .line 128
    .line 129
    aput-boolean v1, v3, v6

    .line 130
    return-object v3

    .line 131
    .line 132
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 133
    .line 134
    const-string v1, "Requested contents should be less than 80 digits long, but got "

    .line 135
    .line 136
    .line 137
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    move-result-object v0

    .line 143
    .line 144
    .line 145
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 146
    throw p1
.end method
