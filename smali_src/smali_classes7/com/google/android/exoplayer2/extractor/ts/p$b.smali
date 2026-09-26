.class final Lcom/google/android/exoplayer2/extractor/ts/p$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ts/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/p$b$a;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x80


# instance fields
.field private final allowNonIdrKeyframes:Z

.field private final bitArray:Lcom/google/android/exoplayer2/util/d0;

.field private buffer:[B

.field private bufferLength:I

.field private final detectAccessUnits:Z

.field private isFilling:Z

.field private nalUnitStartPosition:J

.field private nalUnitTimeUs:J

.field private nalUnitType:I

.field private final output:Lcom/google/android/exoplayer2/extractor/e0;

.field private final pps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/util/y$b;",
            ">;"
        }
    .end annotation
.end field

.field private previousSliceHeader:Lcom/google/android/exoplayer2/extractor/ts/p$b$a;

.field private readingSample:Z

.field private sampleIsKeyframe:Z

.field private samplePosition:J

.field private sampleTimeUs:J

.field private sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/p$b$a;

.field private final sps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/util/y$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/e0;ZZ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 6
    .line 7
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->allowNonIdrKeyframes:Z

    .line 8
    .line 9
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->detectAccessUnits:Z

    .line 10
    .line 11
    new-instance p1, Landroid/util/SparseArray;

    .line 12
    .line 13
    .line 14
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->sps:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance p1, Landroid/util/SparseArray;

    .line 19
    .line 20
    .line 21
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 22
    .line 23
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->pps:Landroid/util/SparseArray;

    .line 24
    .line 25
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/p$b$a;

    .line 26
    const/4 p2, 0x0

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/p$b$a;-><init>(Lcom/google/android/exoplayer2/extractor/ts/p$a;)V

    .line 30
    .line 31
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->previousSliceHeader:Lcom/google/android/exoplayer2/extractor/ts/p$b$a;

    .line 32
    .line 33
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/p$b$a;

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/p$b$a;-><init>(Lcom/google/android/exoplayer2/extractor/ts/p$a;)V

    .line 37
    .line 38
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/p$b$a;

    .line 39
    .line 40
    const/16 p1, 0x80

    .line 41
    .line 42
    new-array p1, p1, [B

    .line 43
    .line 44
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->buffer:[B

    .line 45
    .line 46
    new-instance p2, Lcom/google/android/exoplayer2/util/d0;

    .line 47
    const/4 p3, 0x0

    .line 48
    .line 49
    .line 50
    invoke-direct {p2, p1, p3, p3}, Lcom/google/android/exoplayer2/util/d0;-><init>([BII)V

    .line 51
    .line 52
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bitArray:Lcom/google/android/exoplayer2/util/d0;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ts/p$b;->g()V

    .line 56
    return-void
.end method

.method private d(I)V
    .locals 8

    .line 1
    .line 2
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->sampleTimeUs:J

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    cmp-long v0, v1, v3

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->sampleIsKeyframe:Z

    .line 15
    .line 16
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->nalUnitStartPosition:J

    .line 17
    .line 18
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->samplePosition:J

    .line 19
    sub-long/2addr v4, v6

    .line 20
    long-to-int v4, v4

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 23
    const/4 v6, 0x0

    .line 24
    move v5, p1

    .line 25
    .line 26
    .line 27
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/e0;->e(JIIILcom/google/android/exoplayer2/extractor/e0$a;)V

    .line 28
    return-void
.end method


# virtual methods
.method public a([BII)V
    .locals 23

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v1, p2

    .line 5
    .line 6
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->isFilling:Z

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    sub-int v2, p3, v1

    .line 12
    .line 13
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->buffer:[B

    .line 14
    array-length v4, v3

    .line 15
    .line 16
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bufferLength:I

    .line 17
    .line 18
    add-int v6, v5, v2

    .line 19
    const/4 v7, 0x2

    .line 20
    .line 21
    if-ge v4, v6, :cond_1

    .line 22
    add-int/2addr v5, v2

    .line 23
    mul-int/2addr v5, v7

    .line 24
    .line 25
    .line 26
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 27
    move-result-object v3

    .line 28
    .line 29
    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->buffer:[B

    .line 30
    .line 31
    :cond_1
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->buffer:[B

    .line 32
    .line 33
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bufferLength:I

    .line 34
    .line 35
    move-object/from16 v5, p1

    .line 36
    .line 37
    .line 38
    invoke-static {v5, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    .line 40
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bufferLength:I

    .line 41
    add-int/2addr v1, v2

    .line 42
    .line 43
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bufferLength:I

    .line 44
    .line 45
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bitArray:Lcom/google/android/exoplayer2/util/d0;

    .line 46
    .line 47
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->buffer:[B

    .line 48
    const/4 v4, 0x0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/exoplayer2/util/d0;->i([BII)V

    .line 52
    .line 53
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bitArray:Lcom/google/android/exoplayer2/util/d0;

    .line 54
    .line 55
    const/16 v2, 0x8

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/d0;->b(I)Z

    .line 59
    move-result v1

    .line 60
    .line 61
    if-nez v1, :cond_2

    .line 62
    return-void

    .line 63
    .line 64
    :cond_2
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bitArray:Lcom/google/android/exoplayer2/util/d0;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/d0;->k()V

    .line 68
    .line 69
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bitArray:Lcom/google/android/exoplayer2/util/d0;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/util/d0;->e(I)I

    .line 73
    move-result v10

    .line 74
    .line 75
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bitArray:Lcom/google/android/exoplayer2/util/d0;

    .line 76
    const/4 v2, 0x5

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/d0;->l(I)V

    .line 80
    .line 81
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bitArray:Lcom/google/android/exoplayer2/util/d0;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/d0;->c()Z

    .line 85
    move-result v1

    .line 86
    .line 87
    if-nez v1, :cond_3

    .line 88
    return-void

    .line 89
    .line 90
    :cond_3
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bitArray:Lcom/google/android/exoplayer2/util/d0;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 94
    .line 95
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bitArray:Lcom/google/android/exoplayer2/util/d0;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/d0;->c()Z

    .line 99
    move-result v1

    .line 100
    .line 101
    if-nez v1, :cond_4

    .line 102
    return-void

    .line 103
    .line 104
    :cond_4
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bitArray:Lcom/google/android/exoplayer2/util/d0;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 108
    move-result v11

    .line 109
    .line 110
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->detectAccessUnits:Z

    .line 111
    .line 112
    if-nez v1, :cond_5

    .line 113
    .line 114
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->isFilling:Z

    .line 115
    .line 116
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/p$b$a;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v11}, Lcom/google/android/exoplayer2/extractor/ts/p$b$a;->f(I)V

    .line 120
    return-void

    .line 121
    .line 122
    :cond_5
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bitArray:Lcom/google/android/exoplayer2/util/d0;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/d0;->c()Z

    .line 126
    move-result v1

    .line 127
    .line 128
    if-nez v1, :cond_6

    .line 129
    return-void

    .line 130
    .line 131
    :cond_6
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bitArray:Lcom/google/android/exoplayer2/util/d0;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 135
    move-result v13

    .line 136
    .line 137
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->pps:Landroid/util/SparseArray;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 141
    move-result v1

    .line 142
    .line 143
    if-gez v1, :cond_7

    .line 144
    .line 145
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->isFilling:Z

    .line 146
    return-void

    .line 147
    .line 148
    :cond_7
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->pps:Landroid/util/SparseArray;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 152
    move-result-object v1

    .line 153
    .line 154
    check-cast v1, Lcom/google/android/exoplayer2/util/y$b;

    .line 155
    .line 156
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->sps:Landroid/util/SparseArray;

    .line 157
    .line 158
    iget v5, v1, Lcom/google/android/exoplayer2/util/y$b;->seqParameterSetId:I

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 162
    move-result-object v3

    .line 163
    move-object v9, v3

    .line 164
    .line 165
    check-cast v9, Lcom/google/android/exoplayer2/util/y$c;

    .line 166
    .line 167
    iget-boolean v3, v9, Lcom/google/android/exoplayer2/util/y$c;->separateColorPlaneFlag:Z

    .line 168
    .line 169
    if-eqz v3, :cond_9

    .line 170
    .line 171
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bitArray:Lcom/google/android/exoplayer2/util/d0;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/d0;->b(I)Z

    .line 175
    move-result v3

    .line 176
    .line 177
    if-nez v3, :cond_8

    .line 178
    return-void

    .line 179
    .line 180
    :cond_8
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bitArray:Lcom/google/android/exoplayer2/util/d0;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/d0;->l(I)V

    .line 184
    .line 185
    :cond_9
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bitArray:Lcom/google/android/exoplayer2/util/d0;

    .line 186
    .line 187
    iget v5, v9, Lcom/google/android/exoplayer2/util/y$c;->frameNumLength:I

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/d0;->b(I)Z

    .line 191
    move-result v3

    .line 192
    .line 193
    if-nez v3, :cond_a

    .line 194
    return-void

    .line 195
    .line 196
    :cond_a
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bitArray:Lcom/google/android/exoplayer2/util/d0;

    .line 197
    .line 198
    iget v5, v9, Lcom/google/android/exoplayer2/util/y$c;->frameNumLength:I

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/d0;->e(I)I

    .line 202
    move-result v12

    .line 203
    .line 204
    iget-boolean v3, v9, Lcom/google/android/exoplayer2/util/y$c;->frameMbsOnlyFlag:Z

    .line 205
    const/4 v5, 0x1

    .line 206
    .line 207
    if-nez v3, :cond_e

    .line 208
    .line 209
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bitArray:Lcom/google/android/exoplayer2/util/d0;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/d0;->b(I)Z

    .line 213
    move-result v3

    .line 214
    .line 215
    if-nez v3, :cond_b

    .line 216
    return-void

    .line 217
    .line 218
    :cond_b
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bitArray:Lcom/google/android/exoplayer2/util/d0;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 222
    move-result v3

    .line 223
    .line 224
    if-eqz v3, :cond_d

    .line 225
    .line 226
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bitArray:Lcom/google/android/exoplayer2/util/d0;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/util/d0;->b(I)Z

    .line 230
    move-result v6

    .line 231
    .line 232
    if-nez v6, :cond_c

    .line 233
    return-void

    .line 234
    .line 235
    :cond_c
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bitArray:Lcom/google/android/exoplayer2/util/d0;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 239
    move-result v6

    .line 240
    move v14, v3

    .line 241
    move v15, v5

    .line 242
    .line 243
    move/from16 v16, v6

    .line 244
    goto :goto_1

    .line 245
    :cond_d
    move v14, v3

    .line 246
    move v15, v4

    .line 247
    .line 248
    :goto_0
    move/from16 v16, v15

    .line 249
    goto :goto_1

    .line 250
    :cond_e
    move v14, v4

    .line 251
    move v15, v14

    .line 252
    goto :goto_0

    .line 253
    .line 254
    :goto_1
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->nalUnitType:I

    .line 255
    .line 256
    if-ne v3, v2, :cond_f

    .line 257
    .line 258
    move/from16 v17, v5

    .line 259
    goto :goto_2

    .line 260
    .line 261
    :cond_f
    move/from16 v17, v4

    .line 262
    .line 263
    :goto_2
    if-eqz v17, :cond_11

    .line 264
    .line 265
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bitArray:Lcom/google/android/exoplayer2/util/d0;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/d0;->c()Z

    .line 269
    move-result v2

    .line 270
    .line 271
    if-nez v2, :cond_10

    .line 272
    return-void

    .line 273
    .line 274
    :cond_10
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bitArray:Lcom/google/android/exoplayer2/util/d0;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 278
    move-result v2

    .line 279
    .line 280
    move/from16 v18, v2

    .line 281
    goto :goto_3

    .line 282
    .line 283
    :cond_11
    move/from16 v18, v4

    .line 284
    .line 285
    :goto_3
    iget v2, v9, Lcom/google/android/exoplayer2/util/y$c;->picOrderCountType:I

    .line 286
    .line 287
    if-nez v2, :cond_15

    .line 288
    .line 289
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bitArray:Lcom/google/android/exoplayer2/util/d0;

    .line 290
    .line 291
    iget v3, v9, Lcom/google/android/exoplayer2/util/y$c;->picOrderCntLsbLength:I

    .line 292
    .line 293
    .line 294
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/d0;->b(I)Z

    .line 295
    move-result v2

    .line 296
    .line 297
    if-nez v2, :cond_12

    .line 298
    return-void

    .line 299
    .line 300
    :cond_12
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bitArray:Lcom/google/android/exoplayer2/util/d0;

    .line 301
    .line 302
    iget v3, v9, Lcom/google/android/exoplayer2/util/y$c;->picOrderCntLsbLength:I

    .line 303
    .line 304
    .line 305
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/d0;->e(I)I

    .line 306
    move-result v2

    .line 307
    .line 308
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/util/y$b;->bottomFieldPicOrderInFramePresentFlag:Z

    .line 309
    .line 310
    if-eqz v1, :cond_14

    .line 311
    .line 312
    if-nez v14, :cond_14

    .line 313
    .line 314
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bitArray:Lcom/google/android/exoplayer2/util/d0;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/d0;->c()Z

    .line 318
    move-result v1

    .line 319
    .line 320
    if-nez v1, :cond_13

    .line 321
    return-void

    .line 322
    .line 323
    :cond_13
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bitArray:Lcom/google/android/exoplayer2/util/d0;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/d0;->g()I

    .line 327
    move-result v1

    .line 328
    .line 329
    move/from16 v20, v1

    .line 330
    .line 331
    move/from16 v19, v2

    .line 332
    .line 333
    move/from16 v21, v4

    .line 334
    .line 335
    :goto_4
    move/from16 v22, v21

    .line 336
    goto :goto_6

    .line 337
    .line 338
    :cond_14
    move/from16 v19, v2

    .line 339
    .line 340
    move/from16 v20, v4

    .line 341
    .line 342
    :goto_5
    move/from16 v21, v20

    .line 343
    goto :goto_4

    .line 344
    .line 345
    :cond_15
    if-ne v2, v5, :cond_19

    .line 346
    .line 347
    iget-boolean v2, v9, Lcom/google/android/exoplayer2/util/y$c;->deltaPicOrderAlwaysZeroFlag:Z

    .line 348
    .line 349
    if-nez v2, :cond_19

    .line 350
    .line 351
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bitArray:Lcom/google/android/exoplayer2/util/d0;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/d0;->c()Z

    .line 355
    move-result v2

    .line 356
    .line 357
    if-nez v2, :cond_16

    .line 358
    return-void

    .line 359
    .line 360
    :cond_16
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bitArray:Lcom/google/android/exoplayer2/util/d0;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/d0;->g()I

    .line 364
    move-result v2

    .line 365
    .line 366
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/util/y$b;->bottomFieldPicOrderInFramePresentFlag:Z

    .line 367
    .line 368
    if-eqz v1, :cond_18

    .line 369
    .line 370
    if-nez v14, :cond_18

    .line 371
    .line 372
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bitArray:Lcom/google/android/exoplayer2/util/d0;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/d0;->c()Z

    .line 376
    move-result v1

    .line 377
    .line 378
    if-nez v1, :cond_17

    .line 379
    return-void

    .line 380
    .line 381
    :cond_17
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bitArray:Lcom/google/android/exoplayer2/util/d0;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/d0;->g()I

    .line 385
    move-result v1

    .line 386
    .line 387
    move/from16 v22, v1

    .line 388
    .line 389
    move/from16 v21, v2

    .line 390
    .line 391
    move/from16 v19, v4

    .line 392
    .line 393
    move/from16 v20, v19

    .line 394
    goto :goto_6

    .line 395
    .line 396
    :cond_18
    move/from16 v21, v2

    .line 397
    .line 398
    move/from16 v19, v4

    .line 399
    .line 400
    move/from16 v20, v19

    .line 401
    .line 402
    move/from16 v22, v20

    .line 403
    goto :goto_6

    .line 404
    .line 405
    :cond_19
    move/from16 v19, v4

    .line 406
    .line 407
    move/from16 v20, v19

    .line 408
    goto :goto_5

    .line 409
    .line 410
    :goto_6
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/p$b$a;

    .line 411
    .line 412
    .line 413
    invoke-virtual/range {v8 .. v22}, Lcom/google/android/exoplayer2/extractor/ts/p$b$a;->e(Lcom/google/android/exoplayer2/util/y$c;IIIIZZZZIIIII)V

    .line 414
    .line 415
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->isFilling:Z

    .line 416
    return-void
.end method

.method public b(JIZZ)Z
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->nalUnitType:I

    .line 3
    .line 4
    const/16 v1, 0x9

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->detectAccessUnits:Z

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/p$b$a;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->previousSliceHeader:Lcom/google/android/exoplayer2/extractor/ts/p$b$a;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/p$b$a;->a(Lcom/google/android/exoplayer2/extractor/ts/p$b$a;Lcom/google/android/exoplayer2/extractor/ts/p$b$a;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    :cond_0
    if-eqz p4, :cond_1

    .line 25
    .line 26
    iget-boolean p4, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->readingSample:Z

    .line 27
    .line 28
    if-eqz p4, :cond_1

    .line 29
    .line 30
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->nalUnitStartPosition:J

    .line 31
    sub-long/2addr p1, v0

    .line 32
    long-to-int p1, p1

    .line 33
    add-int/2addr p3, p1

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/extractor/ts/p$b;->d(I)V

    .line 37
    .line 38
    :cond_1
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->nalUnitStartPosition:J

    .line 39
    .line 40
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->samplePosition:J

    .line 41
    .line 42
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->nalUnitTimeUs:J

    .line 43
    .line 44
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->sampleTimeUs:J

    .line 45
    .line 46
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->sampleIsKeyframe:Z

    .line 47
    .line 48
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->readingSample:Z

    .line 49
    .line 50
    :cond_2
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->allowNonIdrKeyframes:Z

    .line 51
    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/p$b$a;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/ts/p$b$a;->d()Z

    .line 58
    move-result p5

    .line 59
    .line 60
    :cond_3
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->sampleIsKeyframe:Z

    .line 61
    .line 62
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->nalUnitType:I

    .line 63
    const/4 p3, 0x5

    .line 64
    .line 65
    if-eq p2, p3, :cond_4

    .line 66
    .line 67
    if-eqz p5, :cond_5

    .line 68
    .line 69
    if-ne p2, v3, :cond_5

    .line 70
    :cond_4
    move v2, v3

    .line 71
    :cond_5
    or-int/2addr p1, v2

    .line 72
    .line 73
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->sampleIsKeyframe:Z

    .line 74
    return p1
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->detectAccessUnits:Z

    return v0
.end method

.method public e(Lcom/google/android/exoplayer2/util/y$b;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->pps:Landroid/util/SparseArray;

    .line 3
    .line 4
    iget v1, p1, Lcom/google/android/exoplayer2/util/y$b;->picParameterSetId:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 8
    return-void
.end method

.method public f(Lcom/google/android/exoplayer2/util/y$c;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->sps:Landroid/util/SparseArray;

    .line 3
    .line 4
    iget v1, p1, Lcom/google/android/exoplayer2/util/y$c;->seqParameterSetId:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 8
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->isFilling:Z

    .line 4
    .line 5
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->readingSample:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/p$b$a;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/p$b$a;->b()V

    .line 11
    return-void
.end method

.method public h(JIJ)V
    .locals 0

    .line 1
    .line 2
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->nalUnitType:I

    .line 3
    .line 4
    iput-wide p4, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->nalUnitTimeUs:J

    .line 5
    .line 6
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->nalUnitStartPosition:J

    .line 7
    .line 8
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->allowNonIdrKeyframes:Z

    .line 9
    const/4 p2, 0x1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    if-eq p3, p2, :cond_1

    .line 14
    .line 15
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->detectAccessUnits:Z

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    const/4 p1, 0x5

    .line 19
    .line 20
    if-eq p3, p1, :cond_1

    .line 21
    .line 22
    if-eq p3, p2, :cond_1

    .line 23
    const/4 p1, 0x2

    .line 24
    .line 25
    if-ne p3, p1, :cond_2

    .line 26
    .line 27
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->previousSliceHeader:Lcom/google/android/exoplayer2/extractor/ts/p$b$a;

    .line 28
    .line 29
    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/p$b$a;

    .line 30
    .line 31
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->previousSliceHeader:Lcom/google/android/exoplayer2/extractor/ts/p$b$a;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/p$b$a;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/ts/p$b$a;->b()V

    .line 37
    const/4 p1, 0x0

    .line 38
    .line 39
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->bufferLength:I

    .line 40
    .line 41
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/ts/p$b;->isFilling:Z

    .line 42
    :cond_2
    return-void
.end method
