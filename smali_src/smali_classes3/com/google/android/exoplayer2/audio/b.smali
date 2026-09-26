.class public final Lcom/google/android/exoplayer2/audio/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/b$b;
    }
.end annotation


# static fields
.field public static final AC3_MAX_RATE_BYTES_PER_SECOND:I = 0x13880

.field private static final AC3_SYNCFRAME_AUDIO_SAMPLE_COUNT:I = 0x600

.field private static final AUDIO_SAMPLES_PER_AUDIO_BLOCK:I = 0x100

.field private static final BITRATE_BY_HALF_FRMSIZECOD:[I

.field private static final BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

.field private static final CHANNEL_COUNT_BY_ACMOD:[I

.field public static final E_AC3_MAX_RATE_BYTES_PER_SECOND:I = 0xbb800

.field private static final SAMPLE_RATE_BY_FSCOD:[I

.field private static final SAMPLE_RATE_BY_FSCOD2:[I

.field private static final SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

.field public static final TRUEHD_MAX_RATE_BYTES_PER_SECOND:I = 0x2ebae4

.field public static final TRUEHD_RECHUNK_SAMPLE_COUNT:I = 0x10

.field public static final TRUEHD_SYNCFRAME_PREFIX_LENGTH:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x2

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/audio/b;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    const v0, 0xac44

    const/16 v1, 0x7d00

    const v2, 0xbb80

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/audio/b;->SAMPLE_RATE_BY_FSCOD:[I

    const/16 v0, 0x5622

    const/16 v1, 0x3e80

    const/16 v2, 0x5dc0

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/audio/b;->SAMPLE_RATE_BY_FSCOD2:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/audio/b;->CHANNEL_COUNT_BY_ACMOD:[I

    const/16 v0, 0x13

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/android/exoplayer2/audio/b;->BITRATE_BY_HALF_FRMSIZECOD:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer2/audio/b;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    :array_2
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method public static a(Ljava/nio/ByteBuffer;)I
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    .line 8
    move-result v1

    .line 9
    .line 10
    add-int/lit8 v1, v1, -0xa

    .line 11
    move v2, v0

    .line 12
    .line 13
    :goto_0
    if-gt v2, v1, :cond_1

    .line 14
    .line 15
    add-int/lit8 v3, v2, 0x4

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/util/o0;->F(Ljava/nio/ByteBuffer;I)I

    .line 19
    move-result v3

    .line 20
    .line 21
    and-int/lit8 v3, v3, -0x2

    .line 22
    .line 23
    .line 24
    const v4, -0x78d9046

    .line 25
    .line 26
    if-ne v3, v4, :cond_0

    .line 27
    sub-int/2addr v2, v0

    .line 28
    return v2

    .line 29
    .line 30
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, -0x1

    .line 33
    return p0
.end method

.method private static b(II)I
    .locals 4

    .line 1
    .line 2
    div-int/lit8 v0, p1, 0x2

    .line 3
    .line 4
    if-ltz p0, :cond_3

    .line 5
    .line 6
    sget-object v1, Lcom/google/android/exoplayer2/audio/b;->SAMPLE_RATE_BY_FSCOD:[I

    .line 7
    array-length v2, v1

    .line 8
    .line 9
    if-ge p0, v2, :cond_3

    .line 10
    .line 11
    if-ltz p1, :cond_3

    .line 12
    .line 13
    sget-object v2, Lcom/google/android/exoplayer2/audio/b;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    .line 14
    array-length v3, v2

    .line 15
    .line 16
    if-lt v0, v3, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    aget p0, v1, p0

    .line 20
    .line 21
    .line 22
    const v1, 0xac44

    .line 23
    .line 24
    if-ne p0, v1, :cond_1

    .line 25
    .line 26
    aget p0, v2, v0

    .line 27
    .line 28
    rem-int/lit8 p1, p1, 0x2

    .line 29
    add-int/2addr p0, p1

    .line 30
    .line 31
    mul-int/lit8 p0, p0, 0x2

    .line 32
    return p0

    .line 33
    .line 34
    :cond_1
    sget-object p1, Lcom/google/android/exoplayer2/audio/b;->BITRATE_BY_HALF_FRMSIZECOD:[I

    .line 35
    .line 36
    aget p1, p1, v0

    .line 37
    .line 38
    const/16 v0, 0x7d00

    .line 39
    .line 40
    if-ne p0, v0, :cond_2

    .line 41
    .line 42
    mul-int/lit8 p1, p1, 0x6

    .line 43
    return p1

    .line 44
    .line 45
    :cond_2
    mul-int/lit8 p1, p1, 0x4

    .line 46
    return p1

    .line 47
    :cond_3
    :goto_0
    const/4 p0, -0x1

    .line 48
    return p0
.end method

.method public static c(Lcom/google/android/exoplayer2/util/c0;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/a2;
    .locals 3
    .param p3    # Lcom/google/android/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 4
    move-result v0

    .line 5
    .line 6
    and-int/lit16 v0, v0, 0xc0

    .line 7
    .line 8
    shr-int/lit8 v0, v0, 0x6

    .line 9
    .line 10
    sget-object v1, Lcom/google/android/exoplayer2/audio/b;->SAMPLE_RATE_BY_FSCOD:[I

    .line 11
    .line 12
    aget v0, v1, v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 16
    move-result p0

    .line 17
    .line 18
    sget-object v1, Lcom/google/android/exoplayer2/audio/b;->CHANNEL_COUNT_BY_ACMOD:[I

    .line 19
    .line 20
    and-int/lit8 v2, p0, 0x38

    .line 21
    .line 22
    shr-int/lit8 v2, v2, 0x3

    .line 23
    .line 24
    aget v1, v1, v2

    .line 25
    .line 26
    and-int/lit8 p0, p0, 0x4

    .line 27
    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    :cond_0
    new-instance p0, Lcom/google/android/exoplayer2/a2$b;

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a2$b;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a2$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 39
    move-result-object p0

    .line 40
    .line 41
    const-string p1, "audio/ac3"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a2$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 45
    move-result-object p0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/a2$b;->H(I)Lcom/google/android/exoplayer2/a2$b;

    .line 49
    move-result-object p0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a2$b;->f0(I)Lcom/google/android/exoplayer2/a2$b;

    .line 53
    move-result-object p0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/a2$b;->M(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/a2$b;

    .line 57
    move-result-object p0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/a2$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 61
    move-result-object p0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method

.method public static d(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x5

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 10
    move-result v0

    .line 11
    .line 12
    and-int/lit16 v0, v0, 0xf8

    .line 13
    const/4 v1, 0x3

    .line 14
    shr-int/2addr v0, v1

    .line 15
    .line 16
    const/16 v2, 0xa

    .line 17
    .line 18
    if-le v0, v2, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 22
    move-result v0

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x4

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 28
    move-result v0

    .line 29
    .line 30
    and-int/lit16 v0, v0, 0xc0

    .line 31
    .line 32
    shr-int/lit8 v0, v0, 0x6

    .line 33
    .line 34
    if-ne v0, v1, :cond_0

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 39
    move-result v0

    .line 40
    .line 41
    add-int/lit8 v0, v0, 0x4

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 45
    move-result p0

    .line 46
    .line 47
    and-int/lit8 p0, p0, 0x30

    .line 48
    .line 49
    shr-int/lit8 v1, p0, 0x4

    .line 50
    .line 51
    :goto_0
    sget-object p0, Lcom/google/android/exoplayer2/audio/b;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    .line 52
    .line 53
    aget p0, p0, v1

    .line 54
    .line 55
    mul-int/lit16 p0, p0, 0x100

    .line 56
    return p0

    .line 57
    .line 58
    :cond_1
    const/16 p0, 0x600

    .line 59
    return p0
.end method

.method public static e(Lcom/google/android/exoplayer2/util/b0;)Lcom/google/android/exoplayer2/audio/b$b;
    .locals 27

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->e()I

    .line 6
    move-result v1

    .line 7
    .line 8
    const/16 v2, 0x28

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 12
    const/4 v2, 0x5

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    .line 16
    move-result v3

    .line 17
    const/4 v5, 0x1

    .line 18
    .line 19
    const/16 v6, 0xa

    .line 20
    .line 21
    if-le v3, v6, :cond_0

    .line 22
    move v3, v5

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v3, 0x0

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/b0;->p(I)V

    .line 28
    const/4 v1, -0x1

    .line 29
    .line 30
    const/16 v7, 0x8

    .line 31
    const/4 v9, 0x3

    .line 32
    const/4 v10, 0x2

    .line 33
    .line 34
    if-eqz v3, :cond_2a

    .line 35
    .line 36
    const/16 v3, 0x10

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    .line 43
    move-result v11

    .line 44
    .line 45
    if-eqz v11, :cond_3

    .line 46
    .line 47
    if-eq v11, v5, :cond_2

    .line 48
    .line 49
    if-eq v11, v10, :cond_1

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move v1, v10

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move v1, v5

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    const/4 v1, 0x0

    .line 56
    .line 57
    .line 58
    :goto_1
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 59
    .line 60
    const/16 v11, 0xb

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    .line 64
    move-result v11

    .line 65
    add-int/2addr v11, v5

    .line 66
    mul-int/2addr v11, v10

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    .line 70
    move-result v12

    .line 71
    .line 72
    if-ne v12, v9, :cond_4

    .line 73
    .line 74
    sget-object v13, Lcom/google/android/exoplayer2/audio/b;->SAMPLE_RATE_BY_FSCOD2:[I

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    .line 78
    move-result v14

    .line 79
    .line 80
    aget v13, v13, v14

    .line 81
    move v15, v13

    .line 82
    const/4 v14, 0x6

    .line 83
    move v13, v9

    .line 84
    goto :goto_2

    .line 85
    .line 86
    .line 87
    :cond_4
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    .line 88
    move-result v13

    .line 89
    .line 90
    sget-object v14, Lcom/google/android/exoplayer2/audio/b;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    .line 91
    .line 92
    aget v14, v14, v13

    .line 93
    .line 94
    sget-object v15, Lcom/google/android/exoplayer2/audio/b;->SAMPLE_RATE_BY_FSCOD:[I

    .line 95
    .line 96
    aget v15, v15, v12

    .line 97
    .line 98
    :goto_2
    mul-int/lit16 v4, v14, 0x100

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    .line 102
    move-result v8

    .line 103
    .line 104
    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 106
    move-result v17

    .line 107
    .line 108
    sget-object v18, Lcom/google/android/exoplayer2/audio/b;->CHANNEL_COUNT_BY_ACMOD:[I

    .line 109
    .line 110
    aget v18, v18, v8

    .line 111
    .line 112
    add-int v18, v18, v17

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 119
    move-result v6

    .line 120
    .line 121
    if-eqz v6, :cond_5

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 125
    .line 126
    :cond_5
    if-nez v8, :cond_6

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 133
    move-result v6

    .line 134
    .line 135
    if-eqz v6, :cond_6

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 139
    .line 140
    :cond_6
    if-ne v1, v5, :cond_7

    .line 141
    .line 142
    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 144
    move-result v6

    .line 145
    .line 146
    if-eqz v6, :cond_7

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 150
    .line 151
    .line 152
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 153
    move-result v3

    .line 154
    const/4 v6, 0x4

    .line 155
    .line 156
    if-eqz v3, :cond_20

    .line 157
    .line 158
    if-le v8, v10, :cond_8

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 162
    .line 163
    :cond_8
    and-int/lit8 v3, v8, 0x1

    .line 164
    .line 165
    if-eqz v3, :cond_9

    .line 166
    .line 167
    if-le v8, v10, :cond_9

    .line 168
    const/4 v3, 0x6

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 172
    goto :goto_3

    .line 173
    :cond_9
    const/4 v3, 0x6

    .line 174
    .line 175
    :goto_3
    and-int/lit8 v16, v8, 0x4

    .line 176
    .line 177
    if-eqz v16, :cond_a

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 181
    .line 182
    :cond_a
    if-eqz v17, :cond_b

    .line 183
    .line 184
    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 186
    move-result v3

    .line 187
    .line 188
    if-eqz v3, :cond_b

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 192
    .line 193
    :cond_b
    if-nez v1, :cond_20

    .line 194
    .line 195
    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 197
    move-result v3

    .line 198
    .line 199
    if-eqz v3, :cond_c

    .line 200
    const/4 v3, 0x6

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 204
    goto :goto_4

    .line 205
    :cond_c
    const/4 v3, 0x6

    .line 206
    .line 207
    :goto_4
    if-nez v8, :cond_d

    .line 208
    .line 209
    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 211
    move-result v16

    .line 212
    .line 213
    if-eqz v16, :cond_d

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 217
    .line 218
    .line 219
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 220
    move-result v16

    .line 221
    .line 222
    if-eqz v16, :cond_e

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 226
    .line 227
    .line 228
    :cond_e
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    .line 229
    move-result v3

    .line 230
    .line 231
    if-ne v3, v5, :cond_f

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 235
    .line 236
    goto/16 :goto_5

    .line 237
    .line 238
    :cond_f
    if-ne v3, v10, :cond_10

    .line 239
    .line 240
    const/16 v3, 0xc

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 244
    .line 245
    goto/16 :goto_5

    .line 246
    .line 247
    :cond_10
    if-ne v3, v9, :cond_1b

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    .line 251
    move-result v3

    .line 252
    .line 253
    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 255
    move-result v17

    .line 256
    .line 257
    if-eqz v17, :cond_19

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 264
    move-result v17

    .line 265
    .line 266
    if-eqz v17, :cond_11

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 270
    .line 271
    .line 272
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 273
    move-result v17

    .line 274
    .line 275
    if-eqz v17, :cond_12

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 279
    .line 280
    .line 281
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 282
    move-result v17

    .line 283
    .line 284
    if-eqz v17, :cond_13

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 288
    .line 289
    .line 290
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 291
    move-result v17

    .line 292
    .line 293
    if-eqz v17, :cond_14

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 297
    .line 298
    .line 299
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 300
    move-result v17

    .line 301
    .line 302
    if-eqz v17, :cond_15

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 306
    .line 307
    .line 308
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 309
    move-result v17

    .line 310
    .line 311
    if-eqz v17, :cond_16

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 315
    .line 316
    .line 317
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 318
    move-result v17

    .line 319
    .line 320
    if-eqz v17, :cond_17

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 324
    .line 325
    .line 326
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 327
    move-result v17

    .line 328
    .line 329
    if-eqz v17, :cond_19

    .line 330
    .line 331
    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 333
    move-result v17

    .line 334
    .line 335
    if-eqz v17, :cond_18

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 339
    .line 340
    .line 341
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 342
    move-result v17

    .line 343
    .line 344
    if-eqz v17, :cond_19

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 348
    .line 349
    .line 350
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 351
    move-result v17

    .line 352
    .line 353
    if-eqz v17, :cond_1a

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 357
    .line 358
    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 360
    move-result v17

    .line 361
    .line 362
    if-eqz v17, :cond_1a

    .line 363
    const/4 v5, 0x7

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 367
    .line 368
    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 370
    move-result v5

    .line 371
    .line 372
    if-eqz v5, :cond_1a

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 376
    :cond_1a
    add-int/2addr v3, v10

    .line 377
    mul-int/2addr v3, v7

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 381
    .line 382
    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->c()V

    .line 384
    .line 385
    :cond_1b
    :goto_5
    if-ge v8, v10, :cond_1d

    .line 386
    .line 387
    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 389
    move-result v3

    .line 390
    .line 391
    const/16 v5, 0xe

    .line 392
    .line 393
    if-eqz v3, :cond_1c

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 397
    .line 398
    :cond_1c
    if-nez v8, :cond_1d

    .line 399
    .line 400
    .line 401
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 402
    move-result v3

    .line 403
    .line 404
    if-eqz v3, :cond_1d

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 408
    .line 409
    .line 410
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 411
    move-result v3

    .line 412
    .line 413
    if-eqz v3, :cond_20

    .line 414
    .line 415
    if-nez v13, :cond_1e

    .line 416
    .line 417
    .line 418
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 419
    goto :goto_7

    .line 420
    :cond_1e
    const/4 v3, 0x0

    .line 421
    .line 422
    :goto_6
    if-ge v3, v14, :cond_20

    .line 423
    .line 424
    .line 425
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 426
    move-result v5

    .line 427
    .line 428
    if-eqz v5, :cond_1f

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 432
    .line 433
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    .line 434
    goto :goto_6

    .line 435
    .line 436
    .line 437
    :cond_20
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 438
    move-result v3

    .line 439
    .line 440
    if-eqz v3, :cond_25

    .line 441
    .line 442
    .line 443
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 444
    .line 445
    if-ne v8, v10, :cond_21

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 449
    :cond_21
    const/4 v2, 0x6

    .line 450
    .line 451
    if-lt v8, v2, :cond_22

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 455
    .line 456
    .line 457
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 458
    move-result v2

    .line 459
    .line 460
    if-eqz v2, :cond_23

    .line 461
    .line 462
    .line 463
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 464
    .line 465
    :cond_23
    if-nez v8, :cond_24

    .line 466
    .line 467
    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 469
    move-result v2

    .line 470
    .line 471
    if-eqz v2, :cond_24

    .line 472
    .line 473
    .line 474
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 475
    .line 476
    :cond_24
    if-ge v12, v9, :cond_25

    .line 477
    .line 478
    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->q()V

    .line 480
    .line 481
    :cond_25
    if-nez v1, :cond_26

    .line 482
    .line 483
    if-eq v13, v9, :cond_26

    .line 484
    .line 485
    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->q()V

    .line 487
    .line 488
    :cond_26
    if-ne v1, v10, :cond_28

    .line 489
    .line 490
    if-eq v13, v9, :cond_27

    .line 491
    .line 492
    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 494
    move-result v2

    .line 495
    .line 496
    if-eqz v2, :cond_28

    .line 497
    :cond_27
    const/4 v2, 0x6

    .line 498
    goto :goto_8

    .line 499
    :cond_28
    const/4 v2, 0x6

    .line 500
    goto :goto_9

    .line 501
    .line 502
    .line 503
    :goto_8
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 504
    .line 505
    .line 506
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 507
    move-result v3

    .line 508
    .line 509
    if-eqz v3, :cond_29

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    .line 513
    move-result v2

    .line 514
    const/4 v3, 0x1

    .line 515
    .line 516
    if-ne v2, v3, :cond_29

    .line 517
    .line 518
    .line 519
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    .line 520
    move-result v0

    .line 521
    .line 522
    if-ne v0, v3, :cond_29

    .line 523
    .line 524
    const-string v0, "audio/eac3-joc"

    .line 525
    goto :goto_a

    .line 526
    .line 527
    :cond_29
    const-string v0, "audio/eac3"

    .line 528
    .line 529
    :goto_a
    move-object/from16 v20, v0

    .line 530
    .line 531
    move/from16 v21, v1

    .line 532
    .line 533
    :goto_b
    move/from16 v25, v4

    .line 534
    .line 535
    move/from16 v24, v11

    .line 536
    .line 537
    move/from16 v23, v15

    .line 538
    .line 539
    move/from16 v22, v18

    .line 540
    goto :goto_f

    .line 541
    .line 542
    :cond_2a
    const/16 v2, 0x20

    .line 543
    .line 544
    .line 545
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    .line 549
    move-result v2

    .line 550
    .line 551
    if-ne v2, v9, :cond_2b

    .line 552
    const/4 v3, 0x0

    .line 553
    :goto_c
    const/4 v4, 0x6

    .line 554
    goto :goto_d

    .line 555
    .line 556
    :cond_2b
    const-string v3, "audio/ac3"

    .line 557
    goto :goto_c

    .line 558
    .line 559
    .line 560
    :goto_d
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    .line 561
    move-result v4

    .line 562
    .line 563
    .line 564
    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/audio/b;->b(II)I

    .line 565
    move-result v11

    .line 566
    .line 567
    .line 568
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    .line 572
    move-result v4

    .line 573
    .line 574
    and-int/lit8 v5, v4, 0x1

    .line 575
    .line 576
    if-eqz v5, :cond_2c

    .line 577
    const/4 v5, 0x1

    .line 578
    .line 579
    if-eq v4, v5, :cond_2c

    .line 580
    .line 581
    .line 582
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 583
    .line 584
    :cond_2c
    and-int/lit8 v5, v4, 0x4

    .line 585
    .line 586
    if-eqz v5, :cond_2d

    .line 587
    .line 588
    .line 589
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 590
    .line 591
    :cond_2d
    if-ne v4, v10, :cond_2e

    .line 592
    .line 593
    .line 594
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 595
    .line 596
    :cond_2e
    sget-object v5, Lcom/google/android/exoplayer2/audio/b;->SAMPLE_RATE_BY_FSCOD:[I

    .line 597
    array-length v6, v5

    .line 598
    .line 599
    if-ge v2, v6, :cond_2f

    .line 600
    .line 601
    aget v2, v5, v2

    .line 602
    move v15, v2

    .line 603
    goto :goto_e

    .line 604
    :cond_2f
    move v15, v1

    .line 605
    .line 606
    .line 607
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 608
    move-result v0

    .line 609
    .line 610
    sget-object v2, Lcom/google/android/exoplayer2/audio/b;->CHANNEL_COUNT_BY_ACMOD:[I

    .line 611
    .line 612
    aget v2, v2, v4

    .line 613
    .line 614
    add-int v18, v2, v0

    .line 615
    .line 616
    const/16 v4, 0x600

    .line 617
    .line 618
    move/from16 v21, v1

    .line 619
    .line 620
    move-object/from16 v20, v3

    .line 621
    goto :goto_b

    .line 622
    .line 623
    :goto_f
    new-instance v0, Lcom/google/android/exoplayer2/audio/b$b;

    .line 624
    .line 625
    const/16 v26, 0x0

    .line 626
    .line 627
    move-object/from16 v19, v0

    .line 628
    .line 629
    .line 630
    invoke-direct/range {v19 .. v26}, Lcom/google/android/exoplayer2/audio/b$b;-><init>(Ljava/lang/String;IIIIILcom/google/android/exoplayer2/audio/b$a;)V

    .line 631
    return-object v0
.end method

.method public static f([B)I
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x6

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    const/4 p0, -0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 v0, 0x5

    .line 8
    .line 9
    aget-byte v0, p0, v0

    .line 10
    .line 11
    and-int/lit16 v0, v0, 0xf8

    .line 12
    const/4 v2, 0x3

    .line 13
    shr-int/2addr v0, v2

    .line 14
    .line 15
    const/16 v3, 0xa

    .line 16
    .line 17
    if-le v0, v3, :cond_1

    .line 18
    const/4 v0, 0x2

    .line 19
    .line 20
    aget-byte v1, p0, v0

    .line 21
    .line 22
    and-int/lit8 v1, v1, 0x7

    .line 23
    .line 24
    shl-int/lit8 v1, v1, 0x8

    .line 25
    .line 26
    aget-byte p0, p0, v2

    .line 27
    .line 28
    and-int/lit16 p0, p0, 0xff

    .line 29
    or-int/2addr p0, v1

    .line 30
    .line 31
    add-int/lit8 p0, p0, 0x1

    .line 32
    mul-int/2addr p0, v0

    .line 33
    return p0

    .line 34
    :cond_1
    const/4 v0, 0x4

    .line 35
    .line 36
    aget-byte p0, p0, v0

    .line 37
    .line 38
    and-int/lit16 v0, p0, 0xc0

    .line 39
    shr-int/2addr v0, v1

    .line 40
    .line 41
    and-int/lit8 p0, p0, 0x3f

    .line 42
    .line 43
    .line 44
    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/audio/b;->b(II)I

    .line 45
    move-result p0

    .line 46
    return p0
.end method

.method public static g(Lcom/google/android/exoplayer2/util/c0;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/a2;
    .locals 5
    .param p3    # Lcom/google/android/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 8
    move-result v1

    .line 9
    .line 10
    and-int/lit16 v1, v1, 0xc0

    .line 11
    .line 12
    shr-int/lit8 v1, v1, 0x6

    .line 13
    .line 14
    sget-object v2, Lcom/google/android/exoplayer2/audio/b;->SAMPLE_RATE_BY_FSCOD:[I

    .line 15
    .line 16
    aget v1, v2, v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 20
    move-result v2

    .line 21
    .line 22
    sget-object v3, Lcom/google/android/exoplayer2/audio/b;->CHANNEL_COUNT_BY_ACMOD:[I

    .line 23
    .line 24
    and-int/lit8 v4, v2, 0xe

    .line 25
    .line 26
    shr-int/lit8 v4, v4, 0x1

    .line 27
    .line 28
    aget v3, v3, v4

    .line 29
    .line 30
    and-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 38
    move-result v2

    .line 39
    .line 40
    and-int/lit8 v2, v2, 0x1e

    .line 41
    .line 42
    shr-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    if-lez v2, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 48
    move-result v2

    .line 49
    and-int/2addr v0, v2

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    add-int/lit8 v3, v3, 0x2

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 57
    move-result v0

    .line 58
    .line 59
    if-lez v0, :cond_2

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 63
    move-result p0

    .line 64
    .line 65
    and-int/lit8 p0, p0, 0x1

    .line 66
    .line 67
    if-eqz p0, :cond_2

    .line 68
    .line 69
    const-string p0, "audio/eac3-joc"

    .line 70
    goto :goto_0

    .line 71
    .line 72
    :cond_2
    const-string p0, "audio/eac3"

    .line 73
    .line 74
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/a2$b;

    .line 75
    .line 76
    .line 77
    invoke-direct {v0}, Lcom/google/android/exoplayer2/a2$b;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/a2$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/a2$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 85
    move-result-object p0

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/a2$b;->H(I)Lcom/google/android/exoplayer2/a2$b;

    .line 89
    move-result-object p0

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/a2$b;->f0(I)Lcom/google/android/exoplayer2/a2$b;

    .line 93
    move-result-object p0

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/a2$b;->M(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/a2$b;

    .line 97
    move-result-object p0

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/a2$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 101
    move-result-object p0

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 105
    move-result-object p0

    .line 106
    return-object p0
.end method

.method public static h(Ljava/nio/ByteBuffer;I)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 4
    move-result v0

    .line 5
    add-int/2addr v0, p1

    .line 6
    .line 7
    add-int/lit8 v0, v0, 0x7

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 11
    move-result v0

    .line 12
    .line 13
    and-int/lit16 v0, v0, 0xff

    .line 14
    .line 15
    const/16 v1, 0xbb

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 24
    move-result v1

    .line 25
    add-int/2addr v1, p1

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const/16 p1, 0x9

    .line 30
    goto :goto_1

    .line 31
    .line 32
    :cond_1
    const/16 p1, 0x8

    .line 33
    :goto_1
    add-int/2addr v1, p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 37
    move-result p0

    .line 38
    .line 39
    shr-int/lit8 p0, p0, 0x4

    .line 40
    .line 41
    and-int/lit8 p0, p0, 0x7

    .line 42
    .line 43
    const/16 p1, 0x28

    .line 44
    .line 45
    shl-int p0, p1, p0

    .line 46
    return p0
.end method

.method public static i([B)I
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    aget-byte v1, p0, v0

    .line 4
    const/4 v2, -0x8

    .line 5
    const/4 v3, 0x0

    .line 6
    .line 7
    if-ne v1, v2, :cond_3

    .line 8
    const/4 v1, 0x5

    .line 9
    .line 10
    aget-byte v1, p0, v1

    .line 11
    .line 12
    const/16 v2, 0x72

    .line 13
    .line 14
    if-ne v1, v2, :cond_3

    .line 15
    const/4 v1, 0x6

    .line 16
    .line 17
    aget-byte v1, p0, v1

    .line 18
    .line 19
    const/16 v2, 0x6f

    .line 20
    .line 21
    if-ne v1, v2, :cond_3

    .line 22
    const/4 v1, 0x7

    .line 23
    .line 24
    aget-byte v2, p0, v1

    .line 25
    .line 26
    and-int/lit16 v4, v2, 0xfe

    .line 27
    .line 28
    const/16 v5, 0xba

    .line 29
    .line 30
    if-eq v4, v5, :cond_0

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_0
    and-int/lit16 v2, v2, 0xff

    .line 34
    .line 35
    const/16 v4, 0xbb

    .line 36
    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    const/4 v3, 0x1

    .line 39
    .line 40
    :cond_1
    if-eqz v3, :cond_2

    .line 41
    .line 42
    const/16 v2, 0x9

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_2
    const/16 v2, 0x8

    .line 46
    .line 47
    :goto_0
    aget-byte p0, p0, v2

    .line 48
    shr-int/2addr p0, v0

    .line 49
    and-int/2addr p0, v1

    .line 50
    .line 51
    const/16 v0, 0x28

    .line 52
    .line 53
    shl-int p0, v0, p0

    .line 54
    return p0

    .line 55
    :cond_3
    :goto_1
    return v3
.end method
