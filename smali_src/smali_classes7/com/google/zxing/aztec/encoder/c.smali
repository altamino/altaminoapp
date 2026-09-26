.class public final Lcom/google/zxing/aztec/encoder/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_AZTEC_LAYERS:I = 0x0

.field public static final DEFAULT_EC_PERCENT:I = 0x21

.field private static final MAX_NB_BITS:I = 0x20

.field private static final MAX_NB_BITS_COMPACT:I = 0x4

.field private static final WORD_SIZE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/aztec/encoder/c;->WORD_SIZE:[I

    return-void

    :array_0
    .array-data 4
        0x4
        0x6
        0x6
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
    .end array-data
.end method

.method private static a(Lg5/a;II)[I
    .locals 7

    .line 1
    .line 2
    new-array p2, p2, [I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lg5/a;->i()I

    .line 6
    move-result v0

    .line 7
    div-int/2addr v0, p1

    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    .line 11
    :goto_0
    if-ge v2, v0, :cond_2

    .line 12
    move v3, v1

    .line 13
    move v4, v3

    .line 14
    .line 15
    :goto_1
    if-ge v3, p1, :cond_1

    .line 16
    .line 17
    mul-int v5, v2, p1

    .line 18
    add-int/2addr v5, v3

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v5}, Lg5/a;->g(I)Z

    .line 22
    move-result v5

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    sub-int v5, p1, v3

    .line 27
    const/4 v6, 0x1

    .line 28
    sub-int/2addr v5, v6

    .line 29
    .line 30
    shl-int v5, v6, v5

    .line 31
    goto :goto_2

    .line 32
    :cond_0
    move v5, v1

    .line 33
    :goto_2
    or-int/2addr v4, v5

    .line 34
    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_1
    aput v4, p2, v2

    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return-object p2
.end method

.method private static b(Lg5/b;II)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    if-ge v0, p2, :cond_1

    .line 4
    .line 5
    sub-int v1, p1, v0

    .line 6
    move v2, v1

    .line 7
    .line 8
    :goto_1
    add-int v3, p1, v0

    .line 9
    .line 10
    if-gt v2, v3, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v2, v1}, Lg5/b;->j(II)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v2, v3}, Lg5/b;->j(II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1, v2}, Lg5/b;->j(II)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v3, v2}, Lg5/b;->j(II)V

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v0, v0, 0x2

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_1
    sub-int v0, p1, p2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0, v0}, Lg5/b;->j(II)V

    .line 34
    .line 35
    add-int/lit8 v1, v0, 0x1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1, v0}, Lg5/b;->j(II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0, v1}, Lg5/b;->j(II)V

    .line 42
    add-int/2addr p1, p2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1, v0}, Lg5/b;->j(II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1, v1}, Lg5/b;->j(II)V

    .line 49
    .line 50
    add-int/lit8 p2, p1, -0x1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1, p2}, Lg5/b;->j(II)V

    .line 54
    return-void
.end method

.method private static c(Lg5/b;ZILg5/a;)V
    .locals 2

    .line 1
    .line 2
    div-int/lit8 p2, p2, 0x2

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p1, :cond_5

    .line 6
    :goto_0
    const/4 p1, 0x7

    .line 7
    .line 8
    if-ge v0, p1, :cond_4

    .line 9
    .line 10
    add-int/lit8 p1, p2, -0x3

    .line 11
    add-int/2addr p1, v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3, v0}, Lg5/a;->g(I)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    add-int/lit8 v1, p2, -0x5

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1, v1}, Lg5/b;->j(II)V

    .line 23
    .line 24
    :cond_0
    add-int/lit8 v1, v0, 0x7

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, v1}, Lg5/a;->g(I)Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    add-int/lit8 v1, p2, 0x5

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1, p1}, Lg5/b;->j(II)V

    .line 36
    .line 37
    :cond_1
    rsub-int/lit8 v1, v0, 0x14

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, v1}, Lg5/a;->g(I)Z

    .line 41
    move-result v1

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    add-int/lit8 v1, p2, 0x5

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1, v1}, Lg5/b;->j(II)V

    .line 49
    .line 50
    :cond_2
    rsub-int/lit8 v1, v0, 0x1b

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, v1}, Lg5/a;->g(I)Z

    .line 54
    move-result v1

    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    add-int/lit8 v1, p2, -0x5

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v1, p1}, Lg5/b;->j(II)V

    .line 62
    .line 63
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_4
    return-void

    .line 66
    .line 67
    :cond_5
    :goto_1
    const/16 p1, 0xa

    .line 68
    .line 69
    if-ge v0, p1, :cond_a

    .line 70
    .line 71
    add-int/lit8 p1, p2, -0x5

    .line 72
    add-int/2addr p1, v0

    .line 73
    .line 74
    div-int/lit8 v1, v0, 0x5

    .line 75
    add-int/2addr p1, v1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3, v0}, Lg5/a;->g(I)Z

    .line 79
    move-result v1

    .line 80
    .line 81
    if-eqz v1, :cond_6

    .line 82
    .line 83
    add-int/lit8 v1, p2, -0x7

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1, v1}, Lg5/b;->j(II)V

    .line 87
    .line 88
    :cond_6
    add-int/lit8 v1, v0, 0xa

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, v1}, Lg5/a;->g(I)Z

    .line 92
    move-result v1

    .line 93
    .line 94
    if-eqz v1, :cond_7

    .line 95
    .line 96
    add-int/lit8 v1, p2, 0x7

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v1, p1}, Lg5/b;->j(II)V

    .line 100
    .line 101
    :cond_7
    rsub-int/lit8 v1, v0, 0x1d

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3, v1}, Lg5/a;->g(I)Z

    .line 105
    move-result v1

    .line 106
    .line 107
    if-eqz v1, :cond_8

    .line 108
    .line 109
    add-int/lit8 v1, p2, 0x7

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p1, v1}, Lg5/b;->j(II)V

    .line 113
    .line 114
    :cond_8
    rsub-int/lit8 v1, v0, 0x27

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3, v1}, Lg5/a;->g(I)Z

    .line 118
    move-result v1

    .line 119
    .line 120
    if-eqz v1, :cond_9

    .line 121
    .line 122
    add-int/lit8 v1, p2, -0x7

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v1, p1}, Lg5/b;->j(II)V

    .line 126
    .line 127
    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 128
    goto :goto_1

    .line 129
    :cond_a
    return-void
.end method

.method public static d([BII)Lcom/google/zxing/aztec/encoder/a;
    .locals 19

    .line 1
    .line 2
    new-instance v0, Lcom/google/zxing/aztec/encoder/d;

    .line 3
    .line 4
    move-object/from16 v1, p0

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/google/zxing/aztec/encoder/d;-><init>([B)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/zxing/aztec/encoder/d;->a()Lg5/a;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lg5/a;->i()I

    .line 15
    move-result v1

    .line 16
    .line 17
    mul-int v1, v1, p1

    .line 18
    .line 19
    div-int/lit8 v1, v1, 0x64

    .line 20
    .line 21
    const/16 v2, 0xb

    .line 22
    add-int/2addr v1, v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lg5/a;->i()I

    .line 26
    move-result v3

    .line 27
    add-int/2addr v3, v1

    .line 28
    .line 29
    const/16 v4, 0x20

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x1

    .line 32
    .line 33
    if-eqz p2, :cond_5

    .line 34
    .line 35
    if-gez p2, :cond_0

    .line 36
    move v3, v6

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v3, v5

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    .line 42
    move-result v7

    .line 43
    .line 44
    if-eqz v3, :cond_1

    .line 45
    const/4 v4, 0x4

    .line 46
    .line 47
    :cond_1
    if-gt v7, v4, :cond_4

    .line 48
    .line 49
    .line 50
    invoke-static {v7, v3}, Lcom/google/zxing/aztec/encoder/c;->i(IZ)I

    .line 51
    move-result v4

    .line 52
    .line 53
    sget-object v8, Lcom/google/zxing/aztec/encoder/c;->WORD_SIZE:[I

    .line 54
    .line 55
    aget v8, v8, v7

    .line 56
    .line 57
    rem-int v9, v4, v8

    .line 58
    .line 59
    sub-int v9, v4, v9

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v8}, Lcom/google/zxing/aztec/encoder/c;->h(Lg5/a;I)Lg5/a;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lg5/a;->i()I

    .line 67
    move-result v10

    .line 68
    add-int/2addr v10, v1

    .line 69
    .line 70
    const-string v1, "Data to large for user specified layer"

    .line 71
    .line 72
    if-gt v10, v9, :cond_3

    .line 73
    .line 74
    if-eqz v3, :cond_d

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lg5/a;->i()I

    .line 78
    move-result v9

    .line 79
    .line 80
    shl-int/lit8 v10, v8, 0x6

    .line 81
    .line 82
    if-gt v9, v10, :cond_2

    .line 83
    .line 84
    goto/16 :goto_4

    .line 85
    .line 86
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    throw v0

    .line 91
    .line 92
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 93
    .line 94
    .line 95
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 96
    throw v0

    .line 97
    .line 98
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    new-array v1, v6, [Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    move-result-object v2

    .line 105
    .line 106
    aput-object v2, v1, v5

    .line 107
    .line 108
    const-string v2, "Illegal value %s for layers"

    .line 109
    .line 110
    .line 111
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    move-result-object v1

    .line 113
    .line 114
    .line 115
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 116
    throw v0

    .line 117
    :cond_5
    const/4 v7, 0x0

    .line 118
    move v8, v5

    .line 119
    move v9, v8

    .line 120
    .line 121
    :goto_1
    if-gt v8, v4, :cond_1d

    .line 122
    const/4 v10, 0x3

    .line 123
    .line 124
    if-gt v8, v10, :cond_6

    .line 125
    move v10, v6

    .line 126
    goto :goto_2

    .line 127
    :cond_6
    move v10, v5

    .line 128
    .line 129
    :goto_2
    if-eqz v10, :cond_7

    .line 130
    .line 131
    add-int/lit8 v11, v8, 0x1

    .line 132
    goto :goto_3

    .line 133
    :cond_7
    move v11, v8

    .line 134
    .line 135
    .line 136
    :goto_3
    invoke-static {v11, v10}, Lcom/google/zxing/aztec/encoder/c;->i(IZ)I

    .line 137
    move-result v12

    .line 138
    .line 139
    if-gt v3, v12, :cond_b

    .line 140
    .line 141
    if-eqz v7, :cond_8

    .line 142
    .line 143
    sget-object v13, Lcom/google/zxing/aztec/encoder/c;->WORD_SIZE:[I

    .line 144
    .line 145
    aget v13, v13, v11

    .line 146
    .line 147
    if-eq v9, v13, :cond_9

    .line 148
    .line 149
    :cond_8
    sget-object v7, Lcom/google/zxing/aztec/encoder/c;->WORD_SIZE:[I

    .line 150
    .line 151
    aget v7, v7, v11

    .line 152
    .line 153
    .line 154
    invoke-static {v0, v7}, Lcom/google/zxing/aztec/encoder/c;->h(Lg5/a;I)Lg5/a;

    .line 155
    move-result-object v9

    .line 156
    .line 157
    move-object/from16 v18, v9

    .line 158
    move v9, v7

    .line 159
    .line 160
    move-object/from16 v7, v18

    .line 161
    .line 162
    :cond_9
    rem-int v13, v12, v9

    .line 163
    .line 164
    sub-int v13, v12, v13

    .line 165
    .line 166
    if-eqz v10, :cond_a

    .line 167
    .line 168
    .line 169
    invoke-virtual {v7}, Lg5/a;->i()I

    .line 170
    move-result v14

    .line 171
    .line 172
    shl-int/lit8 v15, v9, 0x6

    .line 173
    .line 174
    if-gt v14, v15, :cond_b

    .line 175
    .line 176
    .line 177
    :cond_a
    invoke-virtual {v7}, Lg5/a;->i()I

    .line 178
    move-result v14

    .line 179
    add-int/2addr v14, v1

    .line 180
    .line 181
    if-le v14, v13, :cond_c

    .line 182
    :cond_b
    move v12, v6

    .line 183
    .line 184
    goto/16 :goto_10

    .line 185
    :cond_c
    move-object v0, v7

    .line 186
    move v8, v9

    .line 187
    move v3, v10

    .line 188
    move v7, v11

    .line 189
    move v4, v12

    .line 190
    .line 191
    .line 192
    :cond_d
    :goto_4
    invoke-static {v0, v4, v8}, Lcom/google/zxing/aztec/encoder/c;->e(Lg5/a;II)Lg5/a;

    .line 193
    move-result-object v1

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Lg5/a;->i()I

    .line 197
    move-result v0

    .line 198
    div-int/2addr v0, v8

    .line 199
    .line 200
    .line 201
    invoke-static {v3, v7, v0}, Lcom/google/zxing/aztec/encoder/c;->f(ZII)Lg5/a;

    .line 202
    move-result-object v4

    .line 203
    .line 204
    if-eqz v3, :cond_e

    .line 205
    goto :goto_5

    .line 206
    .line 207
    :cond_e
    const/16 v2, 0xe

    .line 208
    .line 209
    :goto_5
    shl-int/lit8 v8, v7, 0x2

    .line 210
    add-int/2addr v2, v8

    .line 211
    .line 212
    new-array v8, v2, [I

    .line 213
    const/4 v9, 0x2

    .line 214
    .line 215
    if-eqz v3, :cond_10

    .line 216
    move v10, v5

    .line 217
    .line 218
    :goto_6
    if-ge v10, v2, :cond_f

    .line 219
    .line 220
    aput v10, v8, v10

    .line 221
    .line 222
    add-int/lit8 v10, v10, 0x1

    .line 223
    goto :goto_6

    .line 224
    :cond_f
    move v10, v2

    .line 225
    goto :goto_8

    .line 226
    .line 227
    :cond_10
    add-int/lit8 v10, v2, 0x1

    .line 228
    .line 229
    div-int/lit8 v11, v2, 0x2

    .line 230
    .line 231
    add-int/lit8 v12, v11, -0x1

    .line 232
    .line 233
    div-int/lit8 v12, v12, 0xf

    .line 234
    mul-int/2addr v12, v9

    .line 235
    add-int/2addr v10, v12

    .line 236
    .line 237
    div-int/lit8 v12, v10, 0x2

    .line 238
    move v13, v5

    .line 239
    .line 240
    :goto_7
    if-ge v13, v11, :cond_11

    .line 241
    .line 242
    div-int/lit8 v14, v13, 0xf

    .line 243
    add-int/2addr v14, v13

    .line 244
    .line 245
    sub-int v15, v11, v13

    .line 246
    sub-int/2addr v15, v6

    .line 247
    .line 248
    sub-int v16, v12, v14

    .line 249
    .line 250
    add-int/lit8 v16, v16, -0x1

    .line 251
    .line 252
    aput v16, v8, v15

    .line 253
    .line 254
    add-int v15, v11, v13

    .line 255
    add-int/2addr v14, v12

    .line 256
    add-int/2addr v14, v6

    .line 257
    .line 258
    aput v14, v8, v15

    .line 259
    .line 260
    add-int/lit8 v13, v13, 0x1

    .line 261
    goto :goto_7

    .line 262
    .line 263
    :cond_11
    :goto_8
    new-instance v11, Lg5/b;

    .line 264
    .line 265
    .line 266
    invoke-direct {v11, v10}, Lg5/b;-><init>(I)V

    .line 267
    move v12, v5

    .line 268
    move v13, v12

    .line 269
    .line 270
    :goto_9
    if-ge v12, v7, :cond_19

    .line 271
    .line 272
    sub-int v14, v7, v12

    .line 273
    shl-int/2addr v14, v9

    .line 274
    .line 275
    if-eqz v3, :cond_12

    .line 276
    .line 277
    const/16 v15, 0x9

    .line 278
    goto :goto_a

    .line 279
    .line 280
    :cond_12
    const/16 v15, 0xc

    .line 281
    :goto_a
    add-int/2addr v14, v15

    .line 282
    move v15, v5

    .line 283
    .line 284
    :goto_b
    if-ge v15, v14, :cond_18

    .line 285
    .line 286
    shl-int/lit8 v16, v15, 0x1

    .line 287
    .line 288
    :goto_c
    if-ge v5, v9, :cond_17

    .line 289
    .line 290
    add-int v17, v13, v16

    .line 291
    .line 292
    add-int v6, v17, v5

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1, v6}, Lg5/a;->g(I)Z

    .line 296
    move-result v6

    .line 297
    .line 298
    if-eqz v6, :cond_13

    .line 299
    .line 300
    shl-int/lit8 v6, v12, 0x1

    .line 301
    .line 302
    add-int v17, v6, v5

    .line 303
    .line 304
    aget v9, v8, v17

    .line 305
    add-int/2addr v6, v15

    .line 306
    .line 307
    aget v6, v8, v6

    .line 308
    .line 309
    .line 310
    invoke-virtual {v11, v9, v6}, Lg5/b;->j(II)V

    .line 311
    .line 312
    :cond_13
    shl-int/lit8 v6, v14, 0x1

    .line 313
    add-int/2addr v6, v13

    .line 314
    .line 315
    add-int v6, v6, v16

    .line 316
    add-int/2addr v6, v5

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1, v6}, Lg5/a;->g(I)Z

    .line 320
    move-result v6

    .line 321
    .line 322
    if-eqz v6, :cond_14

    .line 323
    .line 324
    shl-int/lit8 v6, v12, 0x1

    .line 325
    .line 326
    add-int v9, v6, v15

    .line 327
    .line 328
    aget v9, v8, v9

    .line 329
    .line 330
    add-int/lit8 v17, v2, -0x1

    .line 331
    .line 332
    sub-int v17, v17, v6

    .line 333
    .line 334
    sub-int v17, v17, v5

    .line 335
    .line 336
    aget v6, v8, v17

    .line 337
    .line 338
    .line 339
    invoke-virtual {v11, v9, v6}, Lg5/b;->j(II)V

    .line 340
    .line 341
    :cond_14
    shl-int/lit8 v6, v14, 0x2

    .line 342
    add-int/2addr v6, v13

    .line 343
    .line 344
    add-int v6, v6, v16

    .line 345
    add-int/2addr v6, v5

    .line 346
    .line 347
    .line 348
    invoke-virtual {v1, v6}, Lg5/a;->g(I)Z

    .line 349
    move-result v6

    .line 350
    .line 351
    if-eqz v6, :cond_15

    .line 352
    .line 353
    add-int/lit8 v6, v2, -0x1

    .line 354
    .line 355
    shl-int/lit8 v9, v12, 0x1

    .line 356
    sub-int/2addr v6, v9

    .line 357
    .line 358
    sub-int v9, v6, v5

    .line 359
    .line 360
    aget v9, v8, v9

    .line 361
    sub-int/2addr v6, v15

    .line 362
    .line 363
    aget v6, v8, v6

    .line 364
    .line 365
    .line 366
    invoke-virtual {v11, v9, v6}, Lg5/b;->j(II)V

    .line 367
    .line 368
    :cond_15
    mul-int/lit8 v6, v14, 0x6

    .line 369
    add-int/2addr v6, v13

    .line 370
    .line 371
    add-int v6, v6, v16

    .line 372
    add-int/2addr v6, v5

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1, v6}, Lg5/a;->g(I)Z

    .line 376
    move-result v6

    .line 377
    .line 378
    if-eqz v6, :cond_16

    .line 379
    .line 380
    add-int/lit8 v6, v2, -0x1

    .line 381
    .line 382
    shl-int/lit8 v9, v12, 0x1

    .line 383
    sub-int/2addr v6, v9

    .line 384
    sub-int/2addr v6, v15

    .line 385
    .line 386
    aget v6, v8, v6

    .line 387
    add-int/2addr v9, v5

    .line 388
    .line 389
    aget v9, v8, v9

    .line 390
    .line 391
    .line 392
    invoke-virtual {v11, v6, v9}, Lg5/b;->j(II)V

    .line 393
    .line 394
    :cond_16
    add-int/lit8 v5, v5, 0x1

    .line 395
    const/4 v6, 0x1

    .line 396
    const/4 v9, 0x2

    .line 397
    goto :goto_c

    .line 398
    .line 399
    :cond_17
    add-int/lit8 v15, v15, 0x1

    .line 400
    const/4 v5, 0x0

    .line 401
    const/4 v6, 0x1

    .line 402
    const/4 v9, 0x2

    .line 403
    goto :goto_b

    .line 404
    .line 405
    :cond_18
    shl-int/lit8 v5, v14, 0x3

    .line 406
    add-int/2addr v13, v5

    .line 407
    .line 408
    add-int/lit8 v12, v12, 0x1

    .line 409
    const/4 v5, 0x0

    .line 410
    const/4 v6, 0x1

    .line 411
    const/4 v9, 0x2

    .line 412
    .line 413
    goto/16 :goto_9

    .line 414
    .line 415
    .line 416
    :cond_19
    invoke-static {v11, v3, v10, v4}, Lcom/google/zxing/aztec/encoder/c;->c(Lg5/b;ZILg5/a;)V

    .line 417
    .line 418
    if-eqz v3, :cond_1a

    .line 419
    .line 420
    div-int/lit8 v1, v10, 0x2

    .line 421
    const/4 v2, 0x5

    .line 422
    .line 423
    .line 424
    invoke-static {v11, v1, v2}, Lcom/google/zxing/aztec/encoder/c;->b(Lg5/b;II)V

    .line 425
    goto :goto_f

    .line 426
    .line 427
    :cond_1a
    div-int/lit8 v1, v10, 0x2

    .line 428
    const/4 v4, 0x7

    .line 429
    .line 430
    .line 431
    invoke-static {v11, v1, v4}, Lcom/google/zxing/aztec/encoder/c;->b(Lg5/b;II)V

    .line 432
    const/4 v4, 0x0

    .line 433
    const/4 v5, 0x0

    .line 434
    const/4 v6, 0x2

    .line 435
    .line 436
    :goto_d
    div-int/lit8 v8, v2, 0x2

    .line 437
    const/4 v12, 0x1

    .line 438
    sub-int/2addr v8, v12

    .line 439
    .line 440
    if-ge v5, v8, :cond_1c

    .line 441
    .line 442
    and-int/lit8 v8, v1, 0x1

    .line 443
    .line 444
    :goto_e
    if-ge v8, v10, :cond_1b

    .line 445
    .line 446
    sub-int v9, v1, v4

    .line 447
    .line 448
    .line 449
    invoke-virtual {v11, v9, v8}, Lg5/b;->j(II)V

    .line 450
    .line 451
    add-int v13, v1, v4

    .line 452
    .line 453
    .line 454
    invoke-virtual {v11, v13, v8}, Lg5/b;->j(II)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v11, v8, v9}, Lg5/b;->j(II)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v11, v8, v13}, Lg5/b;->j(II)V

    .line 461
    .line 462
    add-int/lit8 v8, v8, 0x2

    .line 463
    goto :goto_e

    .line 464
    .line 465
    :cond_1b
    add-int/lit8 v5, v5, 0xf

    .line 466
    .line 467
    add-int/lit8 v4, v4, 0x10

    .line 468
    goto :goto_d

    .line 469
    .line 470
    :cond_1c
    :goto_f
    new-instance v1, Lcom/google/zxing/aztec/encoder/a;

    .line 471
    .line 472
    .line 473
    invoke-direct {v1}, Lcom/google/zxing/aztec/encoder/a;-><init>()V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v1, v3}, Lcom/google/zxing/aztec/encoder/a;->c(Z)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v1, v10}, Lcom/google/zxing/aztec/encoder/a;->f(I)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v1, v7}, Lcom/google/zxing/aztec/encoder/a;->d(I)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v1, v0}, Lcom/google/zxing/aztec/encoder/a;->b(I)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v1, v11}, Lcom/google/zxing/aztec/encoder/a;->e(Lg5/b;)V

    .line 489
    return-object v1

    .line 490
    .line 491
    :goto_10
    add-int/lit8 v8, v8, 0x1

    .line 492
    move v6, v12

    .line 493
    const/4 v5, 0x0

    .line 494
    .line 495
    goto/16 :goto_1

    .line 496
    .line 497
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 498
    .line 499
    const-string v1, "Data too large for an Aztec code"

    .line 500
    .line 501
    .line 502
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 503
    throw v0
.end method

.method private static e(Lg5/a;II)Lg5/a;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lg5/a;->i()I

    .line 4
    move-result v0

    .line 5
    div-int/2addr v0, p2

    .line 6
    .line 7
    new-instance v1, Lh5/c;

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Lcom/google/zxing/aztec/encoder/c;->g(I)Lh5/a;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lh5/c;-><init>(Lh5/a;)V

    .line 15
    .line 16
    div-int v2, p1, p2

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p2, v2}, Lcom/google/zxing/aztec/encoder/c;->a(Lg5/a;II)[I

    .line 20
    move-result-object p0

    .line 21
    sub-int/2addr v2, v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p0, v2}, Lh5/c;->b([II)V

    .line 25
    rem-int/2addr p1, p2

    .line 26
    .line 27
    new-instance v0, Lg5/a;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0}, Lg5/a;-><init>()V

    .line 31
    const/4 v1, 0x0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, p1}, Lg5/a;->d(II)V

    .line 35
    array-length p1, p0

    .line 36
    .line 37
    :goto_0
    if-ge v1, p1, :cond_0

    .line 38
    .line 39
    aget v2, p0, v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2, p2}, Lg5/a;->d(II)V

    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-object v0
.end method

.method static f(ZII)Lg5/a;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lg5/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lg5/a;-><init>()V

    .line 6
    const/4 v1, 0x4

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    add-int/lit8 p1, p1, -0x1

    .line 11
    const/4 p0, 0x2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, p0}, Lg5/a;->d(II)V

    .line 15
    .line 16
    add-int/lit8 p2, p2, -0x1

    .line 17
    const/4 p0, 0x6

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2, p0}, Lg5/a;->d(II)V

    .line 21
    .line 22
    const/16 p0, 0x1c

    .line 23
    .line 24
    .line 25
    invoke-static {v0, p0, v1}, Lcom/google/zxing/aztec/encoder/c;->e(Lg5/a;II)Lg5/a;

    .line 26
    move-result-object p0

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 30
    const/4 p0, 0x5

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1, p0}, Lg5/a;->d(II)V

    .line 34
    .line 35
    add-int/lit8 p2, p2, -0x1

    .line 36
    .line 37
    const/16 p0, 0xb

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p2, p0}, Lg5/a;->d(II)V

    .line 41
    .line 42
    const/16 p0, 0x28

    .line 43
    .line 44
    .line 45
    invoke-static {v0, p0, v1}, Lcom/google/zxing/aztec/encoder/c;->e(Lg5/a;II)Lg5/a;

    .line 46
    move-result-object p0

    .line 47
    :goto_0
    return-object p0
.end method

.method private static g(I)Lh5/a;
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    if-eq p0, v0, :cond_4

    .line 4
    const/4 v0, 0x6

    .line 5
    .line 6
    if-eq p0, v0, :cond_3

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/16 v0, 0xa

    .line 13
    .line 14
    if-eq p0, v0, :cond_1

    .line 15
    .line 16
    const/16 v0, 0xc

    .line 17
    .line 18
    if-ne p0, v0, :cond_0

    .line 19
    .line 20
    sget-object p0, Lh5/a;->AZTEC_DATA_12:Lh5/a;

    .line 21
    return-object p0

    .line 22
    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string v1, "Unsupported word size "

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    throw v0

    .line 38
    .line 39
    :cond_1
    sget-object p0, Lh5/a;->AZTEC_DATA_10:Lh5/a;

    .line 40
    return-object p0

    .line 41
    .line 42
    :cond_2
    sget-object p0, Lh5/a;->AZTEC_DATA_8:Lh5/a;

    .line 43
    return-object p0

    .line 44
    .line 45
    :cond_3
    sget-object p0, Lh5/a;->AZTEC_DATA_6:Lh5/a;

    .line 46
    return-object p0

    .line 47
    .line 48
    :cond_4
    sget-object p0, Lh5/a;->AZTEC_PARAM:Lh5/a;

    .line 49
    return-object p0
.end method

.method static h(Lg5/a;I)Lg5/a;
    .locals 9

    .line 1
    .line 2
    new-instance v0, Lg5/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lg5/a;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lg5/a;->i()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    .line 12
    shl-int v3, v2, p1

    .line 13
    .line 14
    add-int/lit8 v3, v3, -0x2

    .line 15
    const/4 v4, 0x0

    .line 16
    move v5, v4

    .line 17
    .line 18
    :goto_0
    if-ge v5, v1, :cond_5

    .line 19
    move v6, v4

    .line 20
    move v7, v6

    .line 21
    .line 22
    :goto_1
    if-ge v6, p1, :cond_2

    .line 23
    .line 24
    add-int v8, v5, v6

    .line 25
    .line 26
    if-ge v8, v1, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v8}, Lg5/a;->g(I)Z

    .line 30
    move-result v8

    .line 31
    .line 32
    if-eqz v8, :cond_1

    .line 33
    .line 34
    :cond_0
    add-int/lit8 v8, p1, -0x1

    .line 35
    sub-int/2addr v8, v6

    .line 36
    .line 37
    shl-int v8, v2, v8

    .line 38
    or-int/2addr v7, v8

    .line 39
    .line 40
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_2
    and-int v6, v7, v3

    .line 44
    .line 45
    if-ne v6, v3, :cond_3

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v6, p1}, Lg5/a;->d(II)V

    .line 49
    .line 50
    :goto_2
    add-int/lit8 v5, v5, -0x1

    .line 51
    goto :goto_3

    .line 52
    .line 53
    :cond_3
    if-nez v6, :cond_4

    .line 54
    .line 55
    or-int/lit8 v6, v7, 0x1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v6, p1}, Lg5/a;->d(II)V

    .line 59
    goto :goto_2

    .line 60
    .line 61
    .line 62
    :cond_4
    invoke-virtual {v0, v7, p1}, Lg5/a;->d(II)V

    .line 63
    :goto_3
    add-int/2addr v5, p1

    .line 64
    goto :goto_0

    .line 65
    :cond_5
    return-object v0
.end method

.method private static i(IZ)I
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    const/16 p1, 0x58

    goto :goto_0

    :cond_0
    const/16 p1, 0x70

    :goto_0
    shl-int/lit8 v0, p0, 0x4

    add-int/2addr p1, v0

    mul-int/2addr p1, p0

    return p1
.end method
