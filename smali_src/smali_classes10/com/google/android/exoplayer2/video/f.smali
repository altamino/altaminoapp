.class public final Lcom/google/android/exoplayer2/video/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SPS_NAL_UNIT_TYPE:I = 0x21


# instance fields
.field public final codecs:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final height:I

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final nalUnitLengthFieldLength:I

.field public final pixelWidthHeightRatio:F

.field public final width:I


# direct methods
.method private constructor <init>(Ljava/util/List;IIIFLjava/lang/String;)V
    .locals 0
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;IIIF",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/f;->initializationData:Ljava/util/List;

    .line 6
    .line 7
    iput p2, p0, Lcom/google/android/exoplayer2/video/f;->nalUnitLengthFieldLength:I

    .line 8
    .line 9
    iput p3, p0, Lcom/google/android/exoplayer2/video/f;->width:I

    .line 10
    .line 11
    iput p4, p0, Lcom/google/android/exoplayer2/video/f;->height:I

    .line 12
    .line 13
    iput p5, p0, Lcom/google/android/exoplayer2/video/f;->pixelWidthHeightRatio:F

    .line 14
    .line 15
    iput-object p6, p0, Lcom/google/android/exoplayer2/video/f;->codecs:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static a(Lcom/google/android/exoplayer2/util/c0;)Lcom/google/android/exoplayer2/video/f;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    const/16 v1, 0x15

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 11
    move-result v1

    .line 12
    .line 13
    and-int/lit8 v1, v1, 0x3

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 17
    move-result v2

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->e()I

    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x0

    .line 23
    move v5, v4

    .line 24
    move v6, v5

    .line 25
    :goto_0
    const/4 v7, 0x1

    .line 26
    .line 27
    if-ge v5, v2, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->J()I

    .line 34
    move-result v7

    .line 35
    move v8, v4

    .line 36
    .line 37
    :goto_1
    if-ge v8, v7, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->J()I

    .line 41
    move-result v9

    .line 42
    .line 43
    add-int/lit8 v10, v9, 0x4

    .line 44
    add-int/2addr v6, v10

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 48
    .line 49
    add-int/lit8 v8, v8, 0x1

    .line 50
    goto :goto_1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .line 53
    goto/16 :goto_7

    .line 54
    .line 55
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 60
    .line 61
    new-array v3, v6, [B

    .line 62
    const/4 v5, -0x1

    .line 63
    .line 64
    const/high16 v8, 0x3f800000    # 1.0f

    .line 65
    const/4 v9, 0x0

    .line 66
    move v13, v5

    .line 67
    move v14, v13

    .line 68
    move v15, v8

    .line 69
    .line 70
    move-object/from16 v16, v9

    .line 71
    move v5, v4

    .line 72
    move v8, v5

    .line 73
    .line 74
    :goto_2
    if-ge v5, v2, :cond_4

    .line 75
    .line 76
    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 78
    move-result v9

    .line 79
    .line 80
    and-int/lit8 v9, v9, 0x3f

    .line 81
    .line 82
    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->J()I

    .line 84
    move-result v10

    .line 85
    move v11, v4

    .line 86
    .line 87
    :goto_3
    if-ge v11, v10, :cond_3

    .line 88
    .line 89
    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->J()I

    .line 91
    move-result v12

    .line 92
    .line 93
    sget-object v7, Lcom/google/android/exoplayer2/util/y;->NAL_START_CODE:[B

    .line 94
    .line 95
    move/from16 v17, v2

    .line 96
    array-length v2, v7

    .line 97
    .line 98
    .line 99
    invoke-static {v7, v4, v3, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    array-length v2, v7

    .line 101
    add-int/2addr v8, v2

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 105
    move-result-object v2

    .line 106
    .line 107
    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->e()I

    .line 109
    move-result v7

    .line 110
    .line 111
    .line 112
    invoke-static {v2, v7, v3, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    .line 114
    const/16 v2, 0x21

    .line 115
    .line 116
    if-ne v9, v2, :cond_2

    .line 117
    .line 118
    if-nez v11, :cond_2

    .line 119
    .line 120
    add-int v2, v8, v12

    .line 121
    .line 122
    .line 123
    invoke-static {v3, v8, v2}, Lcom/google/android/exoplayer2/util/y;->h([BII)Lcom/google/android/exoplayer2/util/y$a;

    .line 124
    move-result-object v2

    .line 125
    .line 126
    iget v13, v2, Lcom/google/android/exoplayer2/util/y$a;->width:I

    .line 127
    .line 128
    iget v14, v2, Lcom/google/android/exoplayer2/util/y$a;->height:I

    .line 129
    .line 130
    iget v15, v2, Lcom/google/android/exoplayer2/util/y$a;->pixelWidthHeightRatio:F

    .line 131
    .line 132
    iget v7, v2, Lcom/google/android/exoplayer2/util/y$a;->generalProfileSpace:I

    .line 133
    .line 134
    iget-boolean v4, v2, Lcom/google/android/exoplayer2/util/y$a;->generalTierFlag:Z

    .line 135
    .line 136
    move/from16 v24, v9

    .line 137
    .line 138
    iget v9, v2, Lcom/google/android/exoplayer2/util/y$a;->generalProfileIdc:I

    .line 139
    .line 140
    move/from16 v25, v10

    .line 141
    .line 142
    iget v10, v2, Lcom/google/android/exoplayer2/util/y$a;->generalProfileCompatibilityFlags:I

    .line 143
    .line 144
    move/from16 v16, v13

    .line 145
    .line 146
    iget-object v13, v2, Lcom/google/android/exoplayer2/util/y$a;->constraintBytes:[I

    .line 147
    .line 148
    iget v2, v2, Lcom/google/android/exoplayer2/util/y$a;->generalLevelIdc:I

    .line 149
    .line 150
    move/from16 v18, v7

    .line 151
    .line 152
    move/from16 v19, v4

    .line 153
    .line 154
    move/from16 v20, v9

    .line 155
    .line 156
    move/from16 v21, v10

    .line 157
    .line 158
    move-object/from16 v22, v13

    .line 159
    .line 160
    move/from16 v23, v2

    .line 161
    .line 162
    .line 163
    invoke-static/range {v18 .. v23}, Lcom/google/android/exoplayer2/util/e;->c(IZII[II)Ljava/lang/String;

    .line 164
    move-result-object v2

    .line 165
    .line 166
    move/from16 v13, v16

    .line 167
    .line 168
    move-object/from16 v16, v2

    .line 169
    goto :goto_4

    .line 170
    .line 171
    :cond_2
    move/from16 v24, v9

    .line 172
    .line 173
    move/from16 v25, v10

    .line 174
    :goto_4
    add-int/2addr v8, v12

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 178
    .line 179
    add-int/lit8 v11, v11, 0x1

    .line 180
    .line 181
    move/from16 v2, v17

    .line 182
    .line 183
    move/from16 v9, v24

    .line 184
    .line 185
    move/from16 v10, v25

    .line 186
    const/4 v4, 0x0

    .line 187
    const/4 v7, 0x1

    .line 188
    goto :goto_3

    .line 189
    .line 190
    :cond_3
    move/from16 v17, v2

    .line 191
    .line 192
    add-int/lit8 v5, v5, 0x1

    .line 193
    const/4 v4, 0x0

    .line 194
    const/4 v7, 0x1

    .line 195
    goto :goto_2

    .line 196
    .line 197
    :cond_4
    if-nez v6, :cond_5

    .line 198
    .line 199
    .line 200
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 201
    move-result-object v0

    .line 202
    :goto_5
    move-object v11, v0

    .line 203
    goto :goto_6

    .line 204
    .line 205
    .line 206
    :cond_5
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 207
    move-result-object v0

    .line 208
    goto :goto_5

    .line 209
    .line 210
    :goto_6
    new-instance v0, Lcom/google/android/exoplayer2/video/f;

    .line 211
    const/4 v2, 0x1

    .line 212
    .line 213
    add-int/lit8 v12, v1, 0x1

    .line 214
    move-object v10, v0

    .line 215
    .line 216
    .line 217
    invoke-direct/range {v10 .. v16}, Lcom/google/android/exoplayer2/video/f;-><init>(Ljava/util/List;IIIFLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    return-object v0

    .line 219
    .line 220
    :goto_7
    const-string v1, "Error parsing HEVC config"

    .line 221
    .line 222
    .line 223
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/v2;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;

    .line 224
    move-result-object v0

    .line 225
    throw v0
.end method
