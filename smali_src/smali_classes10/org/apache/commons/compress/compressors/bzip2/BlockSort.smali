.class Lorg/apache/commons/compress/compressors/bzip2/BlockSort;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CLEARMASK:I = -0x200001

.field private static final DEPTH_THRESH:I = 0xa

.field private static final FALLBACK_QSORT_SMALL_THRESH:I = 0xa

.field private static final FALLBACK_QSORT_STACK_SIZE:I = 0x64

.field private static final INCS:[I

.field private static final QSORT_STACK_SIZE:I = 0x3e8

.field private static final SETMASK:I = 0x200000

.field private static final SMALL_THRESH:I = 0x14

.field private static final STACK_SIZE:I = 0x3e8

.field private static final WORK_FACTOR:I = 0x1e


# instance fields
.field private eclass:[I

.field private firstAttempt:Z

.field private final ftab:[I

.field private final mainSort_bigDone:[Z

.field private final mainSort_copy:[I

.field private final mainSort_runningOrder:[I

.field private final quadrant:[C

.field private final stack_dd:[I

.field private final stack_hh:[I

.field private final stack_ll:[I

.field private workDone:I

.field private workLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->INCS:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x4
        0xd
        0x28
        0x79
        0x16c
        0x445
        0xcd0
        0x2671
        0x7354
        0x159fd
        0x40df8
        0xc29e9
        0x247dbc
    .end array-data
.end method

.method constructor <init>(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0x3e8

    .line 6
    .line 7
    new-array v1, v0, [I

    .line 8
    .line 9
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_ll:[I

    .line 10
    .line 11
    new-array v1, v0, [I

    .line 12
    .line 13
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_hh:[I

    .line 14
    .line 15
    new-array v0, v0, [I

    .line 16
    .line 17
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_dd:[I

    .line 18
    .line 19
    const/16 v0, 0x100

    .line 20
    .line 21
    new-array v1, v0, [I

    .line 22
    .line 23
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_runningOrder:[I

    .line 24
    .line 25
    new-array v1, v0, [I

    .line 26
    .line 27
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_copy:[I

    .line 28
    .line 29
    new-array v0, v0, [Z

    .line 30
    .line 31
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_bigDone:[Z

    .line 32
    .line 33
    .line 34
    const v0, 0x10001

    .line 35
    .line 36
    new-array v0, v0, [I

    .line 37
    .line 38
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->ftab:[I

    .line 39
    .line 40
    iget-object p1, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sfmap:[C

    .line 41
    .line 42
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->quadrant:[C

    .line 43
    return-void
.end method

.method private fallbackQSort3([I[III)V
    .locals 18

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p2

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    move/from16 v4, p3

    .line 10
    .line 11
    move/from16 v5, p4

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v3, v4, v5}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpush(III)V

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    const/4 v6, 0x1

    .line 18
    move-wide v8, v4

    .line 19
    move v7, v6

    .line 20
    .line 21
    :goto_0
    if-lez v7, :cond_c

    .line 22
    .line 23
    add-int/lit8 v10, v7, -0x1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v10}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpop(I)[I

    .line 27
    move-result-object v11

    .line 28
    .line 29
    aget v12, v11, v3

    .line 30
    .line 31
    aget v11, v11, v6

    .line 32
    .line 33
    sub-int v13, v11, v12

    .line 34
    .line 35
    const/16 v14, 0xa

    .line 36
    .line 37
    if-ge v13, v14, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v1, v2, v12, v11}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fallbackSimpleSort([I[III)V

    .line 41
    move v7, v10

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_0
    const-wide/16 v13, 0x1dc5

    .line 45
    mul-long/2addr v8, v13

    .line 46
    .line 47
    const-wide/16 v13, 0x1

    .line 48
    add-long/2addr v8, v13

    .line 49
    .line 50
    .line 51
    const-wide/32 v15, 0x8000

    .line 52
    rem-long/2addr v8, v15

    .line 53
    .line 54
    const-wide/16 v15, 0x3

    .line 55
    .line 56
    rem-long v15, v8, v15

    .line 57
    .line 58
    cmp-long v17, v15, v4

    .line 59
    .line 60
    if-nez v17, :cond_1

    .line 61
    .line 62
    aget v13, v1, v12

    .line 63
    .line 64
    aget v13, v2, v13

    .line 65
    :goto_1
    int-to-long v13, v13

    .line 66
    goto :goto_2

    .line 67
    .line 68
    :cond_1
    cmp-long v13, v15, v13

    .line 69
    .line 70
    if-nez v13, :cond_2

    .line 71
    .line 72
    add-int v13, v12, v11

    .line 73
    ushr-int/2addr v13, v6

    .line 74
    .line 75
    aget v13, v1, v13

    .line 76
    .line 77
    aget v13, v2, v13

    .line 78
    goto :goto_1

    .line 79
    .line 80
    :cond_2
    aget v13, v1, v11

    .line 81
    .line 82
    aget v13, v2, v13

    .line 83
    goto :goto_1

    .line 84
    :goto_2
    move v3, v11

    .line 85
    move v5, v3

    .line 86
    move v4, v12

    .line 87
    move v15, v4

    .line 88
    .line 89
    :goto_3
    if-le v15, v3, :cond_3

    .line 90
    goto :goto_4

    .line 91
    .line 92
    :cond_3
    aget v17, v1, v15

    .line 93
    .line 94
    aget v17, v2, v17

    .line 95
    long-to-int v6, v13

    .line 96
    .line 97
    sub-int v17, v17, v6

    .line 98
    .line 99
    if-nez v17, :cond_4

    .line 100
    .line 101
    .line 102
    invoke-direct {v0, v1, v15, v4}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fswap([III)V

    .line 103
    .line 104
    add-int/lit8 v4, v4, 0x1

    .line 105
    .line 106
    add-int/lit8 v15, v15, 0x1

    .line 107
    const/4 v6, 0x1

    .line 108
    goto :goto_3

    .line 109
    .line 110
    :cond_4
    if-lez v17, :cond_b

    .line 111
    .line 112
    :goto_4
    if-le v15, v3, :cond_5

    .line 113
    goto :goto_6

    .line 114
    .line 115
    :cond_5
    aget v6, v1, v3

    .line 116
    .line 117
    aget v6, v2, v6

    .line 118
    long-to-int v2, v13

    .line 119
    sub-int/2addr v6, v2

    .line 120
    .line 121
    if-nez v6, :cond_6

    .line 122
    .line 123
    .line 124
    invoke-direct {v0, v1, v3, v5}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fswap([III)V

    .line 125
    .line 126
    add-int/lit8 v5, v5, -0x1

    .line 127
    .line 128
    :goto_5
    add-int/lit8 v3, v3, -0x1

    .line 129
    .line 130
    move-object/from16 v2, p2

    .line 131
    goto :goto_4

    .line 132
    .line 133
    :cond_6
    if-gez v6, :cond_a

    .line 134
    .line 135
    :goto_6
    if-le v15, v3, :cond_9

    .line 136
    .line 137
    if-ge v5, v4, :cond_7

    .line 138
    .line 139
    move-object/from16 v2, p2

    .line 140
    move v7, v10

    .line 141
    const/4 v3, 0x0

    .line 142
    .line 143
    const-wide/16 v4, 0x0

    .line 144
    const/4 v6, 0x1

    .line 145
    goto :goto_0

    .line 146
    .line 147
    :cond_7
    sub-int v2, v4, v12

    .line 148
    .line 149
    sub-int v6, v15, v4

    .line 150
    .line 151
    .line 152
    invoke-direct {v0, v2, v6}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fmin(II)I

    .line 153
    move-result v2

    .line 154
    .line 155
    sub-int v6, v15, v2

    .line 156
    .line 157
    .line 158
    invoke-direct {v0, v1, v12, v6, v2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fvswap([IIII)V

    .line 159
    .line 160
    sub-int v2, v11, v5

    .line 161
    sub-int/2addr v5, v3

    .line 162
    .line 163
    .line 164
    invoke-direct {v0, v2, v5}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fmin(II)I

    .line 165
    move-result v2

    .line 166
    .line 167
    add-int/lit8 v3, v3, 0x1

    .line 168
    .line 169
    sub-int v6, v11, v2

    .line 170
    .line 171
    const/16 v17, 0x1

    .line 172
    .line 173
    add-int/lit8 v6, v6, 0x1

    .line 174
    .line 175
    .line 176
    invoke-direct {v0, v1, v3, v6, v2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fvswap([IIII)V

    .line 177
    add-int/2addr v15, v12

    .line 178
    sub-int/2addr v15, v4

    .line 179
    .line 180
    add-int/lit8 v15, v15, -0x1

    .line 181
    .line 182
    sub-int v2, v11, v5

    .line 183
    .line 184
    add-int/lit8 v2, v2, 0x1

    .line 185
    .line 186
    sub-int v3, v15, v12

    .line 187
    .line 188
    sub-int v4, v11, v2

    .line 189
    .line 190
    if-le v3, v4, :cond_8

    .line 191
    .line 192
    .line 193
    invoke-direct {v0, v10, v12, v15}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpush(III)V

    .line 194
    .line 195
    add-int/lit8 v3, v7, 0x1

    .line 196
    .line 197
    .line 198
    invoke-direct {v0, v7, v2, v11}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpush(III)V

    .line 199
    move v7, v3

    .line 200
    goto :goto_7

    .line 201
    .line 202
    .line 203
    :cond_8
    invoke-direct {v0, v10, v2, v11}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpush(III)V

    .line 204
    .line 205
    add-int/lit8 v2, v7, 0x1

    .line 206
    .line 207
    .line 208
    invoke-direct {v0, v7, v12, v15}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpush(III)V

    .line 209
    move v7, v2

    .line 210
    .line 211
    :goto_7
    move-object/from16 v2, p2

    .line 212
    .line 213
    move/from16 v6, v17

    .line 214
    const/4 v3, 0x0

    .line 215
    .line 216
    const-wide/16 v4, 0x0

    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :cond_9
    const/16 v17, 0x1

    .line 221
    .line 222
    .line 223
    invoke-direct {v0, v1, v15, v3}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fswap([III)V

    .line 224
    .line 225
    add-int/lit8 v15, v15, 0x1

    .line 226
    .line 227
    add-int/lit8 v3, v3, -0x1

    .line 228
    .line 229
    :goto_8
    move-object/from16 v2, p2

    .line 230
    .line 231
    move/from16 v6, v17

    .line 232
    .line 233
    goto/16 :goto_3

    .line 234
    .line 235
    :cond_a
    const/16 v17, 0x1

    .line 236
    goto :goto_5

    .line 237
    .line 238
    :cond_b
    const/16 v17, 0x1

    .line 239
    .line 240
    add-int/lit8 v15, v15, 0x1

    .line 241
    goto :goto_8

    .line 242
    :cond_c
    return-void
.end method

.method private fallbackSimpleSort([I[III)V
    .locals 6

    .line 1
    .line 2
    if-ne p3, p4, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    sub-int v0, p4, p3

    .line 6
    const/4 v1, 0x3

    .line 7
    .line 8
    if-le v0, v1, :cond_2

    .line 9
    .line 10
    add-int/lit8 v0, p4, -0x4

    .line 11
    .line 12
    :goto_0
    if-lt v0, p3, :cond_2

    .line 13
    .line 14
    aget v1, p1, v0

    .line 15
    .line 16
    aget v2, p2, v1

    .line 17
    .line 18
    add-int/lit8 v3, v0, 0x4

    .line 19
    .line 20
    :goto_1
    if-gt v3, p4, :cond_1

    .line 21
    .line 22
    aget v4, p1, v3

    .line 23
    .line 24
    aget v5, p2, v4

    .line 25
    .line 26
    if-le v2, v5, :cond_1

    .line 27
    .line 28
    add-int/lit8 v5, v3, -0x4

    .line 29
    .line 30
    aput v4, p1, v5

    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x4

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :cond_1
    add-int/lit8 v3, v3, -0x4

    .line 36
    .line 37
    aput v1, p1, v3

    .line 38
    .line 39
    add-int/lit8 v0, v0, -0x1

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_2
    add-int/lit8 v0, p4, -0x1

    .line 43
    .line 44
    :goto_2
    if-lt v0, p3, :cond_4

    .line 45
    .line 46
    aget v1, p1, v0

    .line 47
    .line 48
    aget v2, p2, v1

    .line 49
    .line 50
    add-int/lit8 v3, v0, 0x1

    .line 51
    .line 52
    :goto_3
    if-gt v3, p4, :cond_3

    .line 53
    .line 54
    aget v4, p1, v3

    .line 55
    .line 56
    aget v5, p2, v4

    .line 57
    .line 58
    if-le v2, v5, :cond_3

    .line 59
    .line 60
    add-int/lit8 v5, v3, -0x1

    .line 61
    .line 62
    aput v4, p1, v5

    .line 63
    .line 64
    add-int/lit8 v3, v3, 0x1

    .line 65
    goto :goto_3

    .line 66
    .line 67
    :cond_3
    add-int/lit8 v3, v3, -0x1

    .line 68
    .line 69
    aput v1, p1, v3

    .line 70
    .line 71
    add-int/lit8 v0, v0, -0x1

    .line 72
    goto :goto_2

    .line 73
    :cond_4
    return-void
.end method

.method private fmin(II)I
    .locals 0

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    return p1
.end method

.method private fpop(I)[I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_ll:[I

    .line 3
    .line 4
    aget v0, v0, p1

    .line 5
    .line 6
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_hh:[I

    .line 7
    .line 8
    aget p1, v1, p1

    .line 9
    .line 10
    .line 11
    filled-new-array {v0, p1}, [I

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method private fpush(III)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_ll:[I

    .line 3
    .line 4
    aput p2, v0, p1

    .line 5
    .line 6
    iget-object p2, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_hh:[I

    .line 7
    .line 8
    aput p3, p2, p1

    .line 9
    return-void
.end method

.method private fswap([III)V
    .locals 2

    .line 1
    .line 2
    aget v0, p1, p2

    .line 3
    .line 4
    aget v1, p1, p3

    .line 5
    .line 6
    aput v1, p1, p2

    .line 7
    .line 8
    aput v0, p1, p3

    .line 9
    return-void
.end method

.method private fvswap([IIII)V
    .locals 0

    .line 1
    .line 2
    :goto_0
    if-lez p4, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fswap([III)V

    .line 6
    .line 7
    add-int/lit8 p2, p2, 0x1

    .line 8
    .line 9
    add-int/lit8 p3, p3, 0x1

    .line 10
    .line 11
    add-int/lit8 p4, p4, -0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void
.end method

.method private getEclass()[I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->eclass:[I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->quadrant:[C

    .line 7
    array-length v0, v0

    .line 8
    .line 9
    div-int/lit8 v0, v0, 0x2

    .line 10
    .line 11
    new-array v0, v0, [I

    .line 12
    .line 13
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->eclass:[I

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->eclass:[I

    .line 16
    return-object v0
.end method

.method private mainQSort3(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;IIII)V
    .locals 19

    .line 1
    .line 2
    move-object/from16 v6, p0

    .line 3
    .line 4
    move-object/from16 v7, p1

    .line 5
    .line 6
    iget-object v8, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_ll:[I

    .line 7
    .line 8
    iget-object v9, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_hh:[I

    .line 9
    .line 10
    iget-object v10, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_dd:[I

    .line 11
    .line 12
    iget-object v11, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    .line 13
    .line 14
    iget-object v12, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    aput p2, v8, v0

    .line 18
    .line 19
    aput p3, v9, v0

    .line 20
    .line 21
    aput p4, v10, v0

    .line 22
    const/4 v13, 0x1

    .line 23
    move v0, v13

    .line 24
    .line 25
    :goto_0
    add-int/lit8 v14, v0, -0x1

    .line 26
    .line 27
    if-ltz v14, :cond_c

    .line 28
    .line 29
    aget v2, v8, v14

    .line 30
    .line 31
    aget v3, v9, v14

    .line 32
    .line 33
    aget v4, v10, v14

    .line 34
    .line 35
    sub-int v1, v3, v2

    .line 36
    .line 37
    const/16 v5, 0x14

    .line 38
    .line 39
    if-lt v1, v5, :cond_0

    .line 40
    .line 41
    const/16 v1, 0xa

    .line 42
    .line 43
    if-le v4, v1, :cond_1

    .line 44
    :cond_0
    move v15, v13

    .line 45
    .line 46
    goto/16 :goto_7

    .line 47
    .line 48
    :cond_1
    add-int/lit8 v1, v4, 0x1

    .line 49
    .line 50
    aget v5, v11, v2

    .line 51
    add-int/2addr v5, v1

    .line 52
    .line 53
    aget-byte v5, v12, v5

    .line 54
    .line 55
    aget v15, v11, v3

    .line 56
    add-int/2addr v15, v1

    .line 57
    .line 58
    aget-byte v15, v12, v15

    .line 59
    .line 60
    add-int v16, v2, v3

    .line 61
    .line 62
    ushr-int/lit8 v16, v16, 0x1

    .line 63
    .line 64
    aget v16, v11, v16

    .line 65
    .line 66
    add-int v16, v16, v1

    .line 67
    .line 68
    aget-byte v13, v12, v16

    .line 69
    .line 70
    .line 71
    invoke-static {v5, v15, v13}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->med3(BBB)B

    .line 72
    move-result v5

    .line 73
    .line 74
    and-int/lit16 v5, v5, 0xff

    .line 75
    move v6, v2

    .line 76
    move v13, v6

    .line 77
    move v15, v3

    .line 78
    .line 79
    move/from16 v16, v15

    .line 80
    .line 81
    :goto_1
    if-gt v13, v15, :cond_3

    .line 82
    .line 83
    aget v17, v11, v13

    .line 84
    .line 85
    add-int v18, v17, v1

    .line 86
    .line 87
    aget-byte v7, v12, v18

    .line 88
    .line 89
    and-int/lit16 v7, v7, 0xff

    .line 90
    sub-int/2addr v7, v5

    .line 91
    .line 92
    if-nez v7, :cond_2

    .line 93
    .line 94
    add-int/lit8 v7, v13, 0x1

    .line 95
    .line 96
    aget v18, v11, v6

    .line 97
    .line 98
    aput v18, v11, v13

    .line 99
    .line 100
    add-int/lit8 v13, v6, 0x1

    .line 101
    .line 102
    aput v17, v11, v6

    .line 103
    move v6, v13

    .line 104
    move v13, v7

    .line 105
    goto :goto_2

    .line 106
    .line 107
    :cond_2
    if-gez v7, :cond_3

    .line 108
    .line 109
    add-int/lit8 v13, v13, 0x1

    .line 110
    .line 111
    :goto_2
    move-object/from16 v7, p1

    .line 112
    goto :goto_1

    .line 113
    .line 114
    :cond_3
    move/from16 v7, v16

    .line 115
    .line 116
    :goto_3
    if-gt v13, v15, :cond_5

    .line 117
    .line 118
    aget v16, v11, v15

    .line 119
    .line 120
    add-int v17, v16, v1

    .line 121
    .line 122
    move/from16 p3, v0

    .line 123
    .line 124
    aget-byte v0, v12, v17

    .line 125
    .line 126
    and-int/lit16 v0, v0, 0xff

    .line 127
    sub-int/2addr v0, v5

    .line 128
    .line 129
    if-nez v0, :cond_4

    .line 130
    .line 131
    add-int/lit8 v0, v15, -0x1

    .line 132
    .line 133
    aget v17, v11, v7

    .line 134
    .line 135
    aput v17, v11, v15

    .line 136
    .line 137
    add-int/lit8 v15, v7, -0x1

    .line 138
    .line 139
    aput v16, v11, v7

    .line 140
    move v7, v15

    .line 141
    move v15, v0

    .line 142
    goto :goto_4

    .line 143
    .line 144
    :cond_4
    if-lez v0, :cond_6

    .line 145
    .line 146
    add-int/lit8 v15, v15, -0x1

    .line 147
    .line 148
    :goto_4
    move/from16 v0, p3

    .line 149
    goto :goto_3

    .line 150
    .line 151
    :cond_5
    move/from16 p3, v0

    .line 152
    .line 153
    :cond_6
    if-gt v13, v15, :cond_7

    .line 154
    .line 155
    aget v0, v11, v13

    .line 156
    .line 157
    add-int/lit8 v16, v13, 0x1

    .line 158
    .line 159
    aget v17, v11, v15

    .line 160
    .line 161
    aput v17, v11, v13

    .line 162
    .line 163
    add-int/lit8 v13, v15, -0x1

    .line 164
    .line 165
    aput v0, v11, v15

    .line 166
    .line 167
    move/from16 v0, p3

    .line 168
    move v15, v13

    .line 169
    .line 170
    move/from16 v13, v16

    .line 171
    .line 172
    move/from16 v16, v7

    .line 173
    goto :goto_2

    .line 174
    .line 175
    :cond_7
    if-ge v7, v6, :cond_8

    .line 176
    .line 177
    aput v2, v8, v14

    .line 178
    .line 179
    aput v3, v9, v14

    .line 180
    .line 181
    aput v1, v10, v14

    .line 182
    .line 183
    move/from16 v0, p3

    .line 184
    const/4 v15, 0x1

    .line 185
    goto :goto_8

    .line 186
    .line 187
    :cond_8
    sub-int v0, v6, v2

    .line 188
    .line 189
    sub-int v5, v13, v6

    .line 190
    .line 191
    if-ge v0, v5, :cond_9

    .line 192
    goto :goto_5

    .line 193
    :cond_9
    move v0, v5

    .line 194
    .line 195
    :goto_5
    sub-int v5, v13, v0

    .line 196
    .line 197
    .line 198
    invoke-static {v11, v2, v5, v0}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->vswap([IIII)V

    .line 199
    .line 200
    sub-int v0, v3, v7

    .line 201
    sub-int/2addr v7, v15

    .line 202
    .line 203
    if-ge v0, v7, :cond_a

    .line 204
    goto :goto_6

    .line 205
    :cond_a
    move v0, v7

    .line 206
    .line 207
    :goto_6
    sub-int v5, v3, v0

    .line 208
    const/4 v15, 0x1

    .line 209
    add-int/2addr v5, v15

    .line 210
    .line 211
    .line 212
    invoke-static {v11, v13, v5, v0}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->vswap([IIII)V

    .line 213
    add-int/2addr v13, v2

    .line 214
    sub-int/2addr v13, v6

    .line 215
    .line 216
    add-int/lit8 v0, v13, -0x1

    .line 217
    .line 218
    sub-int v5, v3, v7

    .line 219
    .line 220
    add-int/lit8 v6, v5, 0x1

    .line 221
    .line 222
    aput v2, v8, v14

    .line 223
    .line 224
    aput v0, v9, v14

    .line 225
    .line 226
    aput v4, v10, v14

    .line 227
    .line 228
    aput v13, v8, p3

    .line 229
    .line 230
    aput v5, v9, p3

    .line 231
    .line 232
    aput v1, v10, p3

    .line 233
    .line 234
    add-int/lit8 v0, p3, 0x1

    .line 235
    .line 236
    aput v6, v8, v0

    .line 237
    .line 238
    aput v3, v9, v0

    .line 239
    .line 240
    aput v4, v10, v0

    .line 241
    .line 242
    add-int/lit8 v0, p3, 0x2

    .line 243
    goto :goto_8

    .line 244
    .line 245
    :goto_7
    move-object/from16 v0, p0

    .line 246
    .line 247
    move-object/from16 v1, p1

    .line 248
    .line 249
    move/from16 v5, p5

    .line 250
    .line 251
    .line 252
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSimpleSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;IIII)Z

    .line 253
    move-result v0

    .line 254
    .line 255
    if-eqz v0, :cond_b

    .line 256
    return-void

    .line 257
    :cond_b
    move v0, v14

    .line 258
    .line 259
    :goto_8
    move-object/from16 v6, p0

    .line 260
    .line 261
    move-object/from16 v7, p1

    .line 262
    move v13, v15

    .line 263
    .line 264
    goto/16 :goto_0

    .line 265
    :cond_c
    return-void
.end method

.method private mainSimpleSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;IIII)Z
    .locals 28

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move/from16 v2, p3

    .line 7
    .line 8
    sub-int v3, v2, p2

    .line 9
    const/4 v4, 0x1

    .line 10
    add-int/2addr v3, v4

    .line 11
    const/4 v5, 0x2

    .line 12
    .line 13
    if-ge v3, v5, :cond_1

    .line 14
    .line 15
    iget-boolean v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->firstAttempt:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    .line 20
    .line 21
    iget v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workLimit:I

    .line 22
    .line 23
    if-le v1, v2, :cond_0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v4, 0x0

    .line 26
    :goto_0
    return v4

    .line 27
    :cond_1
    const/4 v5, 0x0

    .line 28
    .line 29
    :goto_1
    sget-object v7, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->INCS:[I

    .line 30
    .line 31
    aget v7, v7, v5

    .line 32
    .line 33
    if-ge v7, v3, :cond_2

    .line 34
    .line 35
    add-int/lit8 v5, v5, 0x1

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_2
    iget-object v3, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    .line 39
    .line 40
    iget-object v7, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->quadrant:[C

    .line 41
    .line 42
    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 43
    .line 44
    add-int/lit8 v8, p5, 0x1

    .line 45
    .line 46
    iget-boolean v9, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->firstAttempt:Z

    .line 47
    .line 48
    iget v10, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workLimit:I

    .line 49
    .line 50
    iget v11, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    .line 51
    .line 52
    :goto_2
    add-int/lit8 v5, v5, -0x1

    .line 53
    .line 54
    if-ltz v5, :cond_1a

    .line 55
    .line 56
    sget-object v12, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->INCS:[I

    .line 57
    .line 58
    aget v12, v12, v5

    .line 59
    .line 60
    add-int v13, p2, v12

    .line 61
    .line 62
    add-int/lit8 v14, v13, -0x1

    .line 63
    .line 64
    :goto_3
    if-gt v13, v2, :cond_19

    .line 65
    const/4 v15, 0x3

    .line 66
    .line 67
    :goto_4
    if-gt v13, v2, :cond_17

    .line 68
    .line 69
    add-int/lit8 v15, v15, -0x1

    .line 70
    .line 71
    if-ltz v15, :cond_17

    .line 72
    .line 73
    aget v16, v3, v13

    .line 74
    .line 75
    add-int v17, v16, p4

    .line 76
    .line 77
    move/from16 v19, v13

    .line 78
    .line 79
    const/16 v18, 0x0

    .line 80
    .line 81
    const/16 v20, 0x0

    .line 82
    .line 83
    :goto_5
    if-eqz v18, :cond_4

    .line 84
    .line 85
    aput v20, v3, v19

    .line 86
    .line 87
    sub-int v4, v19, v12

    .line 88
    .line 89
    if-gt v4, v14, :cond_3

    .line 90
    .line 91
    move/from16 v22, v5

    .line 92
    .line 93
    move/from16 v25, v12

    .line 94
    .line 95
    move/from16 v27, v14

    .line 96
    .line 97
    move/from16 v24, v15

    .line 98
    .line 99
    goto/16 :goto_a

    .line 100
    .line 101
    :cond_3
    move/from16 v19, v4

    .line 102
    goto :goto_6

    .line 103
    .line 104
    :cond_4
    const/16 v18, 0x1

    .line 105
    .line 106
    :goto_6
    sub-int v4, v19, v12

    .line 107
    .line 108
    aget v4, v3, v4

    .line 109
    .line 110
    add-int v21, v4, p4

    .line 111
    .line 112
    add-int/lit8 v22, v21, 0x1

    .line 113
    .line 114
    aget-byte v6, v1, v22

    .line 115
    .line 116
    add-int/lit8 v22, v17, 0x1

    .line 117
    .line 118
    move/from16 p1, v4

    .line 119
    .line 120
    aget-byte v4, v1, v22

    .line 121
    .line 122
    if-ne v6, v4, :cond_16

    .line 123
    .line 124
    add-int/lit8 v4, v21, 0x2

    .line 125
    .line 126
    aget-byte v4, v1, v4

    .line 127
    .line 128
    add-int/lit8 v6, v17, 0x2

    .line 129
    .line 130
    aget-byte v6, v1, v6

    .line 131
    .line 132
    if-ne v4, v6, :cond_15

    .line 133
    .line 134
    add-int/lit8 v4, v21, 0x3

    .line 135
    .line 136
    aget-byte v4, v1, v4

    .line 137
    .line 138
    add-int/lit8 v6, v17, 0x3

    .line 139
    .line 140
    aget-byte v6, v1, v6

    .line 141
    .line 142
    if-ne v4, v6, :cond_14

    .line 143
    .line 144
    add-int/lit8 v4, v21, 0x4

    .line 145
    .line 146
    aget-byte v4, v1, v4

    .line 147
    .line 148
    add-int/lit8 v6, v17, 0x4

    .line 149
    .line 150
    aget-byte v6, v1, v6

    .line 151
    .line 152
    if-ne v4, v6, :cond_13

    .line 153
    .line 154
    add-int/lit8 v4, v21, 0x5

    .line 155
    .line 156
    aget-byte v4, v1, v4

    .line 157
    .line 158
    add-int/lit8 v6, v17, 0x5

    .line 159
    .line 160
    aget-byte v6, v1, v6

    .line 161
    .line 162
    if-ne v4, v6, :cond_12

    .line 163
    .line 164
    add-int/lit8 v21, v21, 0x6

    .line 165
    .line 166
    aget-byte v4, v1, v21

    .line 167
    .line 168
    add-int/lit8 v6, v17, 0x6

    .line 169
    .line 170
    move/from16 v22, v5

    .line 171
    .line 172
    aget-byte v5, v1, v6

    .line 173
    .line 174
    if-ne v4, v5, :cond_11

    .line 175
    .line 176
    move/from16 v4, p5

    .line 177
    .line 178
    :goto_7
    if-lez v4, :cond_f

    .line 179
    .line 180
    add-int/lit8 v4, v4, -0x4

    .line 181
    .line 182
    add-int/lit8 v5, v21, 0x1

    .line 183
    .line 184
    move/from16 v23, v4

    .line 185
    .line 186
    aget-byte v4, v1, v5

    .line 187
    .line 188
    add-int/lit8 v24, v6, 0x1

    .line 189
    .line 190
    move/from16 v25, v12

    .line 191
    .line 192
    aget-byte v12, v1, v24

    .line 193
    .line 194
    if-ne v4, v12, :cond_e

    .line 195
    .line 196
    aget-char v4, v7, v21

    .line 197
    .line 198
    aget-char v12, v7, v6

    .line 199
    .line 200
    if-ne v4, v12, :cond_d

    .line 201
    .line 202
    add-int/lit8 v4, v21, 0x2

    .line 203
    .line 204
    aget-byte v12, v1, v4

    .line 205
    .line 206
    add-int/lit8 v26, v6, 0x2

    .line 207
    .line 208
    move/from16 v27, v14

    .line 209
    .line 210
    aget-byte v14, v1, v26

    .line 211
    .line 212
    if-ne v12, v14, :cond_c

    .line 213
    .line 214
    aget-char v5, v7, v5

    .line 215
    .line 216
    aget-char v12, v7, v24

    .line 217
    .line 218
    if-ne v5, v12, :cond_b

    .line 219
    .line 220
    add-int/lit8 v5, v21, 0x3

    .line 221
    .line 222
    aget-byte v12, v1, v5

    .line 223
    .line 224
    add-int/lit8 v14, v6, 0x3

    .line 225
    .line 226
    move/from16 v24, v15

    .line 227
    .line 228
    aget-byte v15, v1, v14

    .line 229
    .line 230
    if-ne v12, v15, :cond_a

    .line 231
    .line 232
    aget-char v4, v7, v4

    .line 233
    .line 234
    aget-char v12, v7, v26

    .line 235
    .line 236
    if-ne v4, v12, :cond_9

    .line 237
    .line 238
    add-int/lit8 v4, v21, 0x4

    .line 239
    .line 240
    aget-byte v12, v1, v4

    .line 241
    .line 242
    add-int/lit8 v6, v6, 0x4

    .line 243
    .line 244
    aget-byte v15, v1, v6

    .line 245
    .line 246
    if-ne v12, v15, :cond_8

    .line 247
    .line 248
    aget-char v5, v7, v5

    .line 249
    .line 250
    aget-char v12, v7, v14

    .line 251
    .line 252
    if-ne v5, v12, :cond_7

    .line 253
    .line 254
    if-lt v4, v8, :cond_5

    .line 255
    sub-int/2addr v4, v8

    .line 256
    .line 257
    :cond_5
    move/from16 v21, v4

    .line 258
    .line 259
    if-lt v6, v8, :cond_6

    .line 260
    sub-int/2addr v6, v8

    .line 261
    .line 262
    :cond_6
    add-int/lit8 v11, v11, 0x1

    .line 263
    .line 264
    move/from16 v4, v23

    .line 265
    .line 266
    move/from16 v15, v24

    .line 267
    .line 268
    move/from16 v12, v25

    .line 269
    .line 270
    move/from16 v14, v27

    .line 271
    goto :goto_7

    .line 272
    .line 273
    :cond_7
    if-le v5, v12, :cond_10

    .line 274
    goto :goto_8

    .line 275
    .line 276
    :cond_8
    and-int/lit16 v4, v12, 0xff

    .line 277
    .line 278
    and-int/lit16 v5, v15, 0xff

    .line 279
    .line 280
    if-le v4, v5, :cond_10

    .line 281
    goto :goto_8

    .line 282
    .line 283
    :cond_9
    if-le v4, v12, :cond_10

    .line 284
    goto :goto_8

    .line 285
    .line 286
    :cond_a
    and-int/lit16 v4, v12, 0xff

    .line 287
    .line 288
    and-int/lit16 v5, v15, 0xff

    .line 289
    .line 290
    if-le v4, v5, :cond_10

    .line 291
    goto :goto_8

    .line 292
    .line 293
    :cond_b
    move/from16 v24, v15

    .line 294
    .line 295
    if-le v5, v12, :cond_10

    .line 296
    goto :goto_8

    .line 297
    .line 298
    :cond_c
    move/from16 v24, v15

    .line 299
    .line 300
    and-int/lit16 v4, v12, 0xff

    .line 301
    .line 302
    and-int/lit16 v5, v14, 0xff

    .line 303
    .line 304
    if-le v4, v5, :cond_10

    .line 305
    goto :goto_8

    .line 306
    .line 307
    :cond_d
    move/from16 v27, v14

    .line 308
    .line 309
    move/from16 v24, v15

    .line 310
    .line 311
    if-le v4, v12, :cond_10

    .line 312
    goto :goto_8

    .line 313
    .line 314
    :cond_e
    move/from16 v27, v14

    .line 315
    .line 316
    move/from16 v24, v15

    .line 317
    .line 318
    and-int/lit16 v4, v4, 0xff

    .line 319
    .line 320
    and-int/lit16 v5, v12, 0xff

    .line 321
    .line 322
    if-le v4, v5, :cond_10

    .line 323
    .line 324
    :goto_8
    move/from16 v20, p1

    .line 325
    .line 326
    move/from16 v5, v22

    .line 327
    .line 328
    move/from16 v15, v24

    .line 329
    .line 330
    move/from16 v12, v25

    .line 331
    .line 332
    move/from16 v14, v27

    .line 333
    const/4 v4, 0x1

    .line 334
    .line 335
    goto/16 :goto_5

    .line 336
    .line 337
    :cond_f
    move/from16 v25, v12

    .line 338
    .line 339
    move/from16 v27, v14

    .line 340
    .line 341
    move/from16 v24, v15

    .line 342
    .line 343
    :cond_10
    move/from16 v4, v19

    .line 344
    .line 345
    goto/16 :goto_a

    .line 346
    .line 347
    :cond_11
    move/from16 v25, v12

    .line 348
    .line 349
    move/from16 v27, v14

    .line 350
    .line 351
    move/from16 v24, v15

    .line 352
    .line 353
    and-int/lit16 v4, v4, 0xff

    .line 354
    .line 355
    and-int/lit16 v5, v5, 0xff

    .line 356
    .line 357
    if-le v4, v5, :cond_10

    .line 358
    goto :goto_9

    .line 359
    .line 360
    :cond_12
    move/from16 v22, v5

    .line 361
    .line 362
    move/from16 v25, v12

    .line 363
    .line 364
    move/from16 v27, v14

    .line 365
    .line 366
    move/from16 v24, v15

    .line 367
    .line 368
    and-int/lit16 v4, v4, 0xff

    .line 369
    .line 370
    and-int/lit16 v5, v6, 0xff

    .line 371
    .line 372
    if-le v4, v5, :cond_10

    .line 373
    goto :goto_9

    .line 374
    .line 375
    :cond_13
    move/from16 v22, v5

    .line 376
    .line 377
    move/from16 v25, v12

    .line 378
    .line 379
    move/from16 v27, v14

    .line 380
    .line 381
    move/from16 v24, v15

    .line 382
    .line 383
    and-int/lit16 v4, v4, 0xff

    .line 384
    .line 385
    and-int/lit16 v5, v6, 0xff

    .line 386
    .line 387
    if-le v4, v5, :cond_10

    .line 388
    goto :goto_9

    .line 389
    .line 390
    :cond_14
    move/from16 v22, v5

    .line 391
    .line 392
    move/from16 v25, v12

    .line 393
    .line 394
    move/from16 v27, v14

    .line 395
    .line 396
    move/from16 v24, v15

    .line 397
    .line 398
    and-int/lit16 v4, v4, 0xff

    .line 399
    .line 400
    and-int/lit16 v5, v6, 0xff

    .line 401
    .line 402
    if-le v4, v5, :cond_10

    .line 403
    goto :goto_9

    .line 404
    .line 405
    :cond_15
    move/from16 v22, v5

    .line 406
    .line 407
    move/from16 v25, v12

    .line 408
    .line 409
    move/from16 v27, v14

    .line 410
    .line 411
    move/from16 v24, v15

    .line 412
    .line 413
    and-int/lit16 v4, v4, 0xff

    .line 414
    .line 415
    and-int/lit16 v5, v6, 0xff

    .line 416
    .line 417
    if-le v4, v5, :cond_10

    .line 418
    goto :goto_9

    .line 419
    .line 420
    :cond_16
    move/from16 v22, v5

    .line 421
    .line 422
    move/from16 v25, v12

    .line 423
    .line 424
    move/from16 v27, v14

    .line 425
    .line 426
    move/from16 v24, v15

    .line 427
    .line 428
    and-int/lit16 v5, v6, 0xff

    .line 429
    .line 430
    and-int/lit16 v4, v4, 0xff

    .line 431
    .line 432
    if-le v5, v4, :cond_10

    .line 433
    :goto_9
    goto :goto_8

    .line 434
    .line 435
    :goto_a
    aput v16, v3, v4

    .line 436
    .line 437
    add-int/lit8 v13, v13, 0x1

    .line 438
    .line 439
    move/from16 v5, v22

    .line 440
    .line 441
    move/from16 v15, v24

    .line 442
    .line 443
    move/from16 v12, v25

    .line 444
    .line 445
    move/from16 v14, v27

    .line 446
    const/4 v4, 0x1

    .line 447
    .line 448
    goto/16 :goto_4

    .line 449
    .line 450
    :cond_17
    move/from16 v22, v5

    .line 451
    .line 452
    move/from16 v25, v12

    .line 453
    .line 454
    move/from16 v27, v14

    .line 455
    .line 456
    if-eqz v9, :cond_18

    .line 457
    .line 458
    if-gt v13, v2, :cond_18

    .line 459
    .line 460
    if-le v11, v10, :cond_18

    .line 461
    goto :goto_b

    .line 462
    .line 463
    :cond_18
    move/from16 v5, v22

    .line 464
    .line 465
    move/from16 v12, v25

    .line 466
    .line 467
    move/from16 v14, v27

    .line 468
    const/4 v4, 0x1

    .line 469
    .line 470
    goto/16 :goto_3

    .line 471
    .line 472
    :cond_19
    move/from16 v22, v5

    .line 473
    .line 474
    goto/16 :goto_2

    .line 475
    .line 476
    :cond_1a
    :goto_b
    iput v11, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    .line 477
    .line 478
    if-eqz v9, :cond_1b

    .line 479
    .line 480
    if-le v11, v10, :cond_1b

    .line 481
    const/4 v4, 0x1

    .line 482
    goto :goto_c

    .line 483
    :cond_1b
    const/4 v4, 0x0

    .line 484
    :goto_c
    return v4
.end method

.method private static med3(BBB)B
    .locals 0

    if-ge p0, p1, :cond_1

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-ge p0, p2, :cond_3

    goto :goto_1

    :cond_1
    if-le p1, p2, :cond_2

    :goto_0
    move p0, p1

    goto :goto_2

    :cond_2
    if-le p0, p2, :cond_3

    :goto_1
    move p0, p2

    :cond_3
    :goto_2
    return p0
.end method

.method private static vswap([IIII)V
    .locals 3

    .line 1
    add-int/2addr p3, p1

    .line 2
    .line 3
    :goto_0
    if-ge p1, p3, :cond_0

    .line 4
    .line 5
    aget v0, p0, p1

    .line 6
    .line 7
    add-int/lit8 v1, p1, 0x1

    .line 8
    .line 9
    aget v2, p0, p2

    .line 10
    .line 11
    aput v2, p0, p1

    .line 12
    .line 13
    add-int/lit8 p1, p2, 0x1

    .line 14
    .line 15
    aput v0, p0, p2

    .line 16
    move p2, p1

    .line 17
    move p1, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method


# virtual methods
.method blockSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V
    .locals 3

    .line 1
    .line 2
    mul-int/lit8 v0, p2, 0x1e

    .line 3
    .line 4
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workLimit:I

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    iput-boolean v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->firstAttempt:Z

    .line 11
    .line 12
    add-int/lit8 v1, p2, 0x1

    .line 13
    .line 14
    const/16 v2, 0x2710

    .line 15
    .line 16
    if-ge v1, v2, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fallbackSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V

    .line 24
    .line 25
    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->firstAttempt:Z

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    .line 30
    .line 31
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workLimit:I

    .line 32
    .line 33
    if-le v1, v2, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fallbackSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V

    .line 37
    .line 38
    :cond_1
    :goto_0
    iget-object v1, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    .line 39
    const/4 v2, -0x1

    .line 40
    .line 41
    iput v2, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->origPtr:I

    .line 42
    .line 43
    :goto_1
    if-gt v0, p2, :cond_3

    .line 44
    .line 45
    aget v2, v1, v0

    .line 46
    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    iput v0, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->origPtr:I

    .line 50
    goto :goto_2

    .line 51
    .line 52
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    :goto_2
    return-void
.end method

.method final fallbackSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V
    .locals 5

    .line 1
    iget-object v0, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    add-int/lit8 v1, p2, 0x1

    aget-byte v2, v0, v1

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    .line 2
    iget-object v2, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fallbackSort([I[BI)V

    move v0, v3

    :goto_0
    if-ge v0, v1, :cond_0

    .line 3
    iget-object v2, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    aget v4, v2, v0

    add-int/lit8 v4, v4, -0x1

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v3, v1, :cond_2

    .line 4
    iget-object v0, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    aget v2, v0, v3

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 5
    aput p2, v0, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method final fallbackSort([I[BI)V
    .locals 10

    const/16 v0, 0x101

    new-array v1, v0, [I

    .line 6
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->getEclass()[I

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p3, :cond_0

    .line 7
    aput v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_1
    const/4 v5, 0x1

    if-ge v4, p3, :cond_1

    .line 8
    aget-byte v6, p2, v4

    and-int/lit16 v6, v6, 0xff

    aget v7, v1, v6

    add-int/2addr v7, v5

    aput v7, v1, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_2
    if-ge v4, v0, :cond_2

    .line 9
    aget v6, v1, v4

    add-int/lit8 v7, v4, -0x1

    aget v7, v1, v7

    add-int/2addr v6, v7

    aput v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_3
    if-ge v0, p3, :cond_3

    .line 10
    aget-byte v4, p2, v0

    and-int/lit16 v4, v4, 0xff

    .line 11
    aget v6, v1, v4

    sub-int/2addr v6, v5

    .line 12
    aput v6, v1, v4

    .line 13
    aput v0, p1, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 p2, p3, 0x40

    .line 14
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p2}, Ljava/util/BitSet;-><init>(I)V

    move p2, v3

    :goto_4
    const/16 v4, 0x100

    if-ge p2, v4, :cond_4

    .line 15
    aget v4, v1, p2

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_4
    move p2, v3

    :goto_5
    const/16 v1, 0x20

    if-ge p2, v1, :cond_5

    mul-int/lit8 v1, p2, 0x2

    add-int/2addr v1, p3

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    add-int/2addr v1, v5

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_5
    move p2, v5

    :cond_6
    move v1, v3

    move v4, v1

    :goto_6
    if-ge v1, p3, :cond_9

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_7

    move v4, v1

    .line 19
    :cond_7
    aget v6, p1, v1

    sub-int/2addr v6, p2

    if-gez v6, :cond_8

    add-int/2addr v6, p3

    .line 20
    :cond_8
    aput v4, v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    const/4 v1, -0x1

    move v4, v1

    move v6, v3

    :cond_a
    add-int/2addr v4, v5

    .line 21
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v4

    add-int/lit8 v7, v4, -0x1

    if-lt v7, p3, :cond_b

    goto :goto_7

    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 22
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    sub-int/2addr v4, v5

    if-lt v4, p3, :cond_d

    :goto_7
    mul-int/lit8 p2, p2, 0x2

    if-gt p2, p3, :cond_c

    if-nez v6, :cond_6

    :cond_c
    return-void

    :cond_d
    if-le v4, v7, :cond_a

    sub-int v8, v4, v7

    add-int/2addr v8, v5

    add-int/2addr v6, v8

    .line 23
    invoke-direct {p0, p1, v2, v7, v4}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fallbackQSort3([I[III)V

    move v8, v1

    :goto_8
    if-gt v7, v4, :cond_a

    .line 24
    aget v9, p1, v7

    aget v9, v2, v9

    if-eq v8, v9, :cond_e

    .line 25
    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    move v8, v9

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_8
.end method

.method final mainSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V
    .locals 29

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    iget-object v9, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_runningOrder:[I

    iget-object v10, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_copy:[I

    iget-object v11, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_bigDone:[Z

    iget-object v12, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->ftab:[I

    .line 1
    iget-object v13, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 2
    iget-object v14, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    iget-object v15, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->quadrant:[C

    iget v5, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workLimit:I

    iget-boolean v4, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->firstAttempt:Z

    const v0, 0x10001

    :goto_0
    add-int/lit8 v0, v0, -0x1

    const/16 v16, 0x0

    if-ltz v0, :cond_0

    .line 3
    aput v16, v12, v0

    goto :goto_0

    :cond_0
    move/from16 v0, v16

    :goto_1
    const/16 v3, 0x14

    const/4 v2, 0x1

    if-ge v0, v3, :cond_1

    add-int v1, v8, v0

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v3, v8, 0x1

    .line 4
    rem-int v3, v0, v3

    add-int/2addr v3, v2

    aget-byte v2, v13, v3

    aput-byte v2, v13, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v8, 0x15

    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 5
    aput-char v16, v15, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v8, 0x1

    .line 6
    aget-byte v1, v13, v0

    aput-byte v1, v13, v16

    move/from16 v17, v4

    const/16 v4, 0xff

    and-int/2addr v1, v4

    move/from16 v3, v16

    :goto_3
    if-gt v3, v8, :cond_3

    add-int/lit8 v3, v3, 0x1

    .line 7
    aget-byte v2, v13, v3

    and-int/2addr v2, v4

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v2

    .line 8
    aget v20, v12, v1

    const/16 v19, 0x1

    add-int/lit8 v20, v20, 0x1

    aput v20, v12, v1

    move v1, v2

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x1

    :goto_4
    const/high16 v2, 0x10000

    if-gt v1, v2, :cond_4

    .line 9
    aget v2, v12, v1

    add-int/lit8 v3, v1, -0x1

    aget v3, v12, v3

    add-int/2addr v2, v3

    aput v2, v12, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x1

    .line 10
    aget-byte v2, v13, v1

    and-int/2addr v2, v4

    move/from16 v3, v16

    :goto_5
    if-ge v3, v8, :cond_5

    add-int/lit8 v19, v3, 0x2

    .line 11
    aget-byte v1, v13, v19

    and-int/2addr v1, v4

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v1

    .line 12
    aget v19, v12, v2

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    aput v19, v12, v2

    aput v3, v14, v19

    add-int/lit8 v3, v3, 0x1

    move v2, v1

    move/from16 v1, v20

    goto :goto_5

    :cond_5
    move/from16 v20, v1

    .line 13
    aget-byte v0, v13, v0

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, v13, v20

    and-int/2addr v1, v4

    add-int/2addr v0, v1

    aget v1, v12, v0

    add-int/lit8 v1, v1, -0x1

    aput v1, v12, v0

    aput v8, v14, v1

    const/16 v20, 0x100

    move/from16 v0, v20

    :goto_6
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_6

    .line 14
    aput-boolean v16, v11, v0

    .line 15
    aput v0, v9, v0

    goto :goto_6

    :cond_6
    const/16 v0, 0x16c

    :cond_7
    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    .line 16
    div-int/lit8 v0, v0, 0x3

    move v1, v0

    :goto_7
    if-gt v1, v4, :cond_7

    .line 17
    aget v2, v9, v1

    add-int/lit8 v3, v2, 0x1

    shl-int/lit8 v3, v3, 0x8

    .line 18
    aget v3, v12, v3

    shl-int/lit8 v21, v2, 0x8

    aget v21, v12, v21

    sub-int v3, v3, v21

    add-int/lit8 v4, v0, -0x1

    sub-int v22, v1, v0

    .line 19
    aget v22, v9, v22

    move/from16 v23, v1

    :goto_8
    add-int/lit8 v24, v22, 0x1

    shl-int/lit8 v24, v24, 0x8

    aget v24, v12, v24

    shl-int/lit8 v25, v22, 0x8

    aget v25, v12, v25

    move/from16 v26, v5

    sub-int v5, v24, v25

    if-le v5, v3, :cond_9

    .line 20
    aput v22, v9, v23

    sub-int v5, v23, v0

    if-gt v5, v4, :cond_8

    move/from16 v23, v5

    goto :goto_9

    :cond_8
    sub-int v22, v5, v0

    .line 21
    aget v22, v9, v22

    move/from16 v23, v5

    move/from16 v5, v26

    goto :goto_8

    .line 22
    :cond_9
    :goto_9
    aput v2, v9, v23

    add-int/lit8 v1, v1, 0x1

    move/from16 v5, v26

    const/16 v4, 0xff

    goto :goto_7

    :cond_a
    move/from16 v26, v5

    move/from16 v5, v16

    :goto_a
    if-gt v5, v4, :cond_17

    .line 23
    aget v21, v9, v5

    move/from16 v3, v16

    :goto_b
    const/high16 v2, 0x200000

    const v0, -0x200001

    if-gt v3, v4, :cond_e

    shl-int/lit8 v1, v21, 0x8

    add-int v22, v1, v3

    .line 24
    aget v23, v12, v22

    and-int v1, v23, v2

    if-eq v1, v2, :cond_d

    and-int v1, v23, v0

    add-int/lit8 v24, v22, 0x1

    .line 25
    aget v24, v12, v24

    and-int v0, v24, v0

    const/16 v19, 0x1

    add-int/lit8 v0, v0, -0x1

    if-le v0, v1, :cond_b

    const/16 v24, 0x2

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v27, v1

    move-object/from16 v1, p1

    move/from16 v28, v2

    move/from16 v2, v27

    move/from16 v18, v3

    const/16 v7, 0x14

    move/from16 v3, v25

    move v7, v4

    move/from16 v4, v24

    move/from16 v7, v26

    move-object/from16 v26, v9

    move v9, v5

    move/from16 v5, p2

    .line 26
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainQSort3(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;IIII)V

    if-eqz v17, :cond_c

    iget v0, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    if-le v0, v7, :cond_c

    return-void

    :cond_b
    move/from16 v28, v2

    move/from16 v18, v3

    move/from16 v7, v26

    move-object/from16 v26, v9

    move v9, v5

    :cond_c
    or-int v0, v23, v28

    .line 27
    aput v0, v12, v22

    goto :goto_c

    :cond_d
    move/from16 v18, v3

    move/from16 v7, v26

    const/16 v19, 0x1

    move-object/from16 v26, v9

    move v9, v5

    :goto_c
    add-int/lit8 v3, v18, 0x1

    move v5, v9

    move-object/from16 v9, v26

    const/16 v4, 0xff

    move/from16 v26, v7

    move-object/from16 v7, p1

    goto :goto_b

    :cond_e
    move/from16 v28, v2

    move/from16 v7, v26

    const/16 v19, 0x1

    move-object/from16 v26, v9

    move v9, v5

    move v1, v4

    move/from16 v2, v16

    :goto_d
    if-gt v2, v1, :cond_f

    shl-int/lit8 v1, v2, 0x8

    add-int v1, v1, v21

    .line 28
    aget v1, v12, v1

    and-int/2addr v1, v0

    aput v1, v10, v2

    add-int/lit8 v2, v2, 0x1

    const/16 v1, 0xff

    goto :goto_d

    :cond_f
    shl-int/lit8 v1, v21, 0x8

    .line 29
    aget v2, v12, v1

    and-int/2addr v2, v0

    add-int/lit8 v3, v21, 0x1

    shl-int/lit8 v3, v3, 0x8

    aget v4, v12, v3

    and-int/2addr v4, v0

    :goto_e
    if-ge v2, v4, :cond_12

    .line 30
    aget v5, v14, v2

    .line 31
    aget-byte v0, v13, v5

    move/from16 v22, v4

    const/16 v4, 0xff

    and-int/2addr v0, v4

    .line 32
    aget-boolean v4, v11, v0

    if-nez v4, :cond_11

    .line 33
    aget v4, v10, v0

    if-nez v5, :cond_10

    move v5, v8

    goto :goto_f

    :cond_10
    add-int/lit8 v5, v5, -0x1

    :goto_f
    aput v5, v14, v4

    .line 34
    aget v4, v10, v0

    add-int/lit8 v4, v4, 0x1

    aput v4, v10, v0

    :cond_11
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, v22

    const v0, -0x200001

    goto :goto_e

    :cond_12
    move/from16 v0, v20

    :goto_10
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_13

    shl-int/lit8 v2, v0, 0x8

    add-int v2, v2, v21

    .line 35
    aget v4, v12, v2

    or-int v4, v4, v28

    aput v4, v12, v2

    goto :goto_10

    .line 36
    :cond_13
    aput-boolean v19, v11, v21

    const/16 v0, 0xff

    if-ge v9, v0, :cond_16

    .line 37
    aget v1, v12, v1

    const v2, -0x200001

    and-int/2addr v1, v2

    .line 38
    aget v3, v12, v3

    and-int/2addr v2, v3

    sub-int/2addr v2, v1

    move/from16 v3, v16

    :goto_11
    shr-int v4, v2, v3

    const v5, 0xfffe

    if-le v4, v5, :cond_14

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_14
    move/from16 v4, v16

    :goto_12
    if-ge v4, v2, :cond_16

    add-int v5, v1, v4

    .line 39
    aget v5, v14, v5

    shr-int v0, v4, v3

    int-to-char v0, v0

    .line 40
    aput-char v0, v15, v5

    move/from16 v18, v1

    const/16 v1, 0x14

    if-ge v5, v1, :cond_15

    add-int/2addr v5, v8

    add-int/lit8 v5, v5, 0x1

    .line 41
    aput-char v0, v15, v5

    :cond_15
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v18

    const/16 v0, 0xff

    goto :goto_12

    :cond_16
    const/16 v1, 0x14

    add-int/lit8 v5, v9, 0x1

    move-object/from16 v9, v26

    const/16 v4, 0xff

    move/from16 v26, v7

    move-object/from16 v7, p1

    goto/16 :goto_a

    :cond_17
    return-void
.end method
