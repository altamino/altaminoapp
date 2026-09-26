.class public final Lcom/google/zxing/oned/f;
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

.method private static f(I[I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    const/16 v1, 0x9

    .line 4
    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    rsub-int/lit8 v1, v0, 0x8

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    shl-int v1, v2, v1

    .line 11
    and-int/2addr v1, p0

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v2, 0x2

    .line 16
    .line 17
    :goto_1
    aput v2, p1, v0

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return-void
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    :goto_0
    if-ge v2, v0, :cond_e

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 16
    move-result v3

    .line 17
    .line 18
    if-eqz v3, :cond_d

    .line 19
    .line 20
    const/16 v4, 0x20

    .line 21
    .line 22
    if-eq v3, v4, :cond_c

    .line 23
    .line 24
    const/16 v5, 0x40

    .line 25
    .line 26
    if-eq v3, v5, :cond_b

    .line 27
    .line 28
    const/16 v5, 0x60

    .line 29
    .line 30
    if-eq v3, v5, :cond_a

    .line 31
    .line 32
    const/16 v5, 0x2d

    .line 33
    .line 34
    if-eq v3, v5, :cond_c

    .line 35
    .line 36
    const/16 v5, 0x2e

    .line 37
    .line 38
    if-eq v3, v5, :cond_c

    .line 39
    .line 40
    const/16 v5, 0x1a

    .line 41
    .line 42
    if-gt v3, v5, :cond_0

    .line 43
    .line 44
    const/16 v4, 0x24

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    add-int/lit8 v3, v3, 0x40

    .line 50
    int-to-char v3, v3

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    goto/16 :goto_2

    .line 56
    .line 57
    :cond_0
    const/16 v5, 0x25

    .line 58
    .line 59
    if-ge v3, v4, :cond_1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    add-int/lit8 v3, v3, 0x26

    .line 65
    int-to-char v3, v3

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    goto/16 :goto_2

    .line 71
    .line 72
    :cond_1
    const/16 v4, 0x2c

    .line 73
    .line 74
    const/16 v6, 0x2f

    .line 75
    .line 76
    if-le v3, v4, :cond_9

    .line 77
    .line 78
    if-eq v3, v6, :cond_9

    .line 79
    .line 80
    const/16 v4, 0x3a

    .line 81
    .line 82
    if-ne v3, v4, :cond_2

    .line 83
    goto :goto_1

    .line 84
    .line 85
    :cond_2
    const/16 v4, 0x39

    .line 86
    .line 87
    if-gt v3, v4, :cond_3

    .line 88
    int-to-char v3, v3

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    goto/16 :goto_2

    .line 94
    .line 95
    :cond_3
    const/16 v4, 0x3f

    .line 96
    .line 97
    if-gt v3, v4, :cond_4

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    add-int/lit8 v3, v3, 0xb

    .line 103
    int-to-char v3, v3

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    goto/16 :goto_2

    .line 109
    .line 110
    :cond_4
    const/16 v4, 0x5a

    .line 111
    .line 112
    if-gt v3, v4, :cond_5

    .line 113
    int-to-char v3, v3

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    goto :goto_2

    .line 118
    .line 119
    :cond_5
    const/16 v4, 0x5f

    .line 120
    .line 121
    if-gt v3, v4, :cond_6

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    add-int/lit8 v3, v3, -0x10

    .line 127
    int-to-char v3, v3

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    goto :goto_2

    .line 132
    .line 133
    :cond_6
    const/16 v4, 0x7a

    .line 134
    .line 135
    if-gt v3, v4, :cond_7

    .line 136
    .line 137
    const/16 v4, 0x2b

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    add-int/lit8 v3, v3, -0x20

    .line 143
    int-to-char v3, v3

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    goto :goto_2

    .line 148
    .line 149
    :cond_7
    const/16 v4, 0x7f

    .line 150
    .line 151
    if-gt v3, v4, :cond_8

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    add-int/lit8 v3, v3, -0x2b

    .line 157
    int-to-char v3, v3

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    goto :goto_2

    .line 162
    .line 163
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 164
    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v3, "Requested content contains a non-encodable character: \'"

    .line 168
    .line 169
    .line 170
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 174
    move-result p0

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    const-string p0, "\'"

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object p0

    .line 187
    .line 188
    .line 189
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 190
    throw v0

    .line 191
    .line 192
    .line 193
    :cond_9
    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    add-int/lit8 v3, v3, 0x20

    .line 196
    int-to-char v3, v3

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    goto :goto_2

    .line 201
    .line 202
    :cond_a
    const-string v3, "%W"

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    goto :goto_2

    .line 207
    .line 208
    :cond_b
    const-string v3, "%V"

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    goto :goto_2

    .line 213
    .line 214
    .line 215
    :cond_c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    goto :goto_2

    .line 217
    .line 218
    :cond_d
    const-string v3, "%U"

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 224
    .line 225
    goto/16 :goto_0

    .line 226
    .line 227
    .line 228
    :cond_e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    move-result-object p0

    .line 230
    return-object p0
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
    sget-object v0, Lcom/google/zxing/a;->CODE_39:Lcom/google/zxing/a;

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
    const-string p3, "Can only encode CODE_39, but got "

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
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const-string v1, "Requested contents should be less than 80 digits long, but got "

    .line 7
    .line 8
    const/16 v2, 0x50

    .line 9
    .line 10
    if-gt v0, v2, :cond_6

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    .line 14
    :goto_0
    const-string v5, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    .line 15
    .line 16
    if-ge v4, v0, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 20
    move-result v6

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    .line 24
    move-result v6

    .line 25
    .line 26
    if-gez v6, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/google/zxing/oned/f;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 34
    move-result v0

    .line 35
    .line 36
    if-gt v0, v2, :cond_0

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v0, " (extended full ASCII mode)"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    throw p1

    .line 61
    .line 62
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :cond_2
    :goto_1
    const/16 v1, 0x9

    .line 66
    .line 67
    new-array v2, v1, [I

    .line 68
    .line 69
    add-int/lit8 v4, v0, 0x19

    .line 70
    move v6, v3

    .line 71
    .line 72
    :goto_2
    if-ge v6, v0, :cond_4

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    .line 76
    move-result v7

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    .line 80
    move-result v7

    .line 81
    .line 82
    sget-object v8, Lcom/google/zxing/oned/e;->CHARACTER_ENCODINGS:[I

    .line 83
    .line 84
    aget v7, v8, v7

    .line 85
    .line 86
    .line 87
    invoke-static {v7, v2}, Lcom/google/zxing/oned/f;->f(I[I)V

    .line 88
    move v7, v3

    .line 89
    .line 90
    :goto_3
    if-ge v7, v1, :cond_3

    .line 91
    .line 92
    aget v8, v2, v7

    .line 93
    add-int/2addr v4, v8

    .line 94
    .line 95
    add-int/lit8 v7, v7, 0x1

    .line 96
    goto :goto_3

    .line 97
    .line 98
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 99
    goto :goto_2

    .line 100
    .line 101
    :cond_4
    new-array v1, v4, [Z

    .line 102
    .line 103
    const/16 v4, 0x94

    .line 104
    .line 105
    .line 106
    invoke-static {v4, v2}, Lcom/google/zxing/oned/f;->f(I[I)V

    .line 107
    const/4 v6, 0x1

    .line 108
    .line 109
    .line 110
    invoke-static {v1, v3, v2, v6}, Lcom/google/zxing/oned/o;->b([ZI[IZ)I

    .line 111
    move-result v7

    .line 112
    .line 113
    .line 114
    filled-new-array {v6}, [I

    .line 115
    move-result-object v8

    .line 116
    .line 117
    .line 118
    invoke-static {v1, v7, v8, v3}, Lcom/google/zxing/oned/o;->b([ZI[IZ)I

    .line 119
    move-result v9

    .line 120
    add-int/2addr v7, v9

    .line 121
    move v9, v3

    .line 122
    .line 123
    :goto_4
    if-ge v9, v0, :cond_5

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    .line 127
    move-result v10

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    .line 131
    move-result v10

    .line 132
    .line 133
    sget-object v11, Lcom/google/zxing/oned/e;->CHARACTER_ENCODINGS:[I

    .line 134
    .line 135
    aget v10, v11, v10

    .line 136
    .line 137
    .line 138
    invoke-static {v10, v2}, Lcom/google/zxing/oned/f;->f(I[I)V

    .line 139
    .line 140
    .line 141
    invoke-static {v1, v7, v2, v6}, Lcom/google/zxing/oned/o;->b([ZI[IZ)I

    .line 142
    move-result v10

    .line 143
    add-int/2addr v7, v10

    .line 144
    .line 145
    .line 146
    invoke-static {v1, v7, v8, v3}, Lcom/google/zxing/oned/o;->b([ZI[IZ)I

    .line 147
    move-result v10

    .line 148
    add-int/2addr v7, v10

    .line 149
    .line 150
    add-int/lit8 v9, v9, 0x1

    .line 151
    goto :goto_4

    .line 152
    .line 153
    .line 154
    :cond_5
    invoke-static {v4, v2}, Lcom/google/zxing/oned/f;->f(I[I)V

    .line 155
    .line 156
    .line 157
    invoke-static {v1, v7, v2, v6}, Lcom/google/zxing/oned/o;->b([ZI[IZ)I

    .line 158
    return-object v1

    .line 159
    .line 160
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 161
    .line 162
    .line 163
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 164
    move-result-object v0

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    move-result-object v0

    .line 169
    .line 170
    .line 171
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 172
    throw p1
.end method
