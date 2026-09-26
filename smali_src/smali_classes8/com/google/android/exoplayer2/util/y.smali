.class public final Lcom/google/android/exoplayer2/util/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/y$b;,
        Lcom/google/android/exoplayer2/util/y$a;,
        Lcom/google/android/exoplayer2/util/y$c;
    }
.end annotation


# static fields
.field public static final ASPECT_RATIO_IDC_VALUES:[F

.field public static final EXTENDED_SAR:I = 0xff

.field private static final H264_NAL_UNIT_TYPE_SEI:I = 0x6

.field private static final H264_NAL_UNIT_TYPE_SPS:I = 0x7

.field private static final H265_NAL_UNIT_TYPE_PREFIX_SEI:I = 0x27

.field public static final NAL_START_CODE:[B

.field public static final NAL_UNIT_TYPE_AUD:I = 0x9

.field public static final NAL_UNIT_TYPE_IDR:I = 0x5

.field public static final NAL_UNIT_TYPE_NON_IDR:I = 0x1

.field public static final NAL_UNIT_TYPE_PARTITION_A:I = 0x2

.field public static final NAL_UNIT_TYPE_PPS:I = 0x8

.field public static final NAL_UNIT_TYPE_SEI:I = 0x6

.field public static final NAL_UNIT_TYPE_SPS:I = 0x7

.field private static final TAG:Ljava/lang/String; = "NalUnitUtil"

.field private static scratchEscapePositions:[I

.field private static final scratchEscapePositionsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    .line 6
    fill-array-data v0, :array_0

    .line 7
    .line 8
    sput-object v0, Lcom/google/android/exoplayer2/util/y;->NAL_START_CODE:[B

    .line 9
    .line 10
    const/16 v0, 0x11

    .line 11
    .line 12
    new-array v0, v0, [F

    .line 13
    .line 14
    .line 15
    fill-array-data v0, :array_1

    .line 16
    .line 17
    sput-object v0, Lcom/google/android/exoplayer2/util/y;->ASPECT_RATIO_IDC_VALUES:[F

    .line 18
    .line 19
    new-instance v0, Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    sput-object v0, Lcom/google/android/exoplayer2/util/y;->scratchEscapePositionsLock:Ljava/lang/Object;

    .line 25
    .line 26
    const/16 v0, 0xa

    .line 27
    .line 28
    new-array v0, v0, [I

    .line 29
    .line 30
    sput-object v0, Lcom/google/android/exoplayer2/util/y;->scratchEscapePositions:[I

    .line 31
    return-void

    .line 32
    nop

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public static a([Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    aput-boolean v0, p0, v0

    .line 4
    const/4 v1, 0x1

    .line 5
    .line 6
    aput-boolean v0, p0, v1

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    aput-boolean v0, p0, v1

    .line 10
    return-void
.end method

.method public static b(Ljava/nio/ByteBuffer;)V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    move v3, v2

    .line 8
    .line 9
    :goto_0
    add-int/lit8 v4, v2, 0x1

    .line 10
    .line 11
    if-ge v4, v0, :cond_3

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 15
    move-result v5

    .line 16
    .line 17
    and-int/lit16 v5, v5, 0xff

    .line 18
    const/4 v6, 0x3

    .line 19
    .line 20
    if-ne v3, v6, :cond_0

    .line 21
    const/4 v7, 0x1

    .line 22
    .line 23
    if-ne v5, v7, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 27
    move-result v7

    .line 28
    .line 29
    and-int/lit8 v7, v7, 0x1f

    .line 30
    const/4 v8, 0x7

    .line 31
    .line 32
    if-ne v7, v8, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 36
    move-result-object v3

    .line 37
    sub-int/2addr v2, v6

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 50
    return-void

    .line 51
    .line 52
    :cond_0
    if-nez v5, :cond_1

    .line 53
    .line 54
    add-int/lit8 v3, v3, 0x1

    .line 55
    .line 56
    :cond_1
    if-eqz v5, :cond_2

    .line 57
    move v3, v1

    .line 58
    :cond_2
    move v2, v4

    .line 59
    goto :goto_0

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 63
    return-void
.end method

.method public static c([BII[Z)I
    .locals 8

    .line 1
    .line 2
    sub-int v0, p2, p1

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-ltz v0, :cond_0

    .line 7
    move v3, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v3, v1

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    return p2

    .line 16
    .line 17
    :cond_1
    aget-boolean v3, p3, v1

    .line 18
    .line 19
    if-eqz v3, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/y;->a([Z)V

    .line 23
    .line 24
    add-int/lit8 p1, p1, -0x3

    .line 25
    return p1

    .line 26
    :cond_2
    const/4 v3, 0x2

    .line 27
    .line 28
    if-le v0, v2, :cond_3

    .line 29
    .line 30
    aget-boolean v4, p3, v2

    .line 31
    .line 32
    if-eqz v4, :cond_3

    .line 33
    .line 34
    aget-byte v4, p0, p1

    .line 35
    .line 36
    if-ne v4, v2, :cond_3

    .line 37
    .line 38
    .line 39
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/y;->a([Z)V

    .line 40
    sub-int/2addr p1, v3

    .line 41
    return p1

    .line 42
    .line 43
    :cond_3
    if-le v0, v3, :cond_4

    .line 44
    .line 45
    aget-boolean v4, p3, v3

    .line 46
    .line 47
    if-eqz v4, :cond_4

    .line 48
    .line 49
    aget-byte v4, p0, p1

    .line 50
    .line 51
    if-nez v4, :cond_4

    .line 52
    .line 53
    add-int/lit8 v4, p1, 0x1

    .line 54
    .line 55
    aget-byte v4, p0, v4

    .line 56
    .line 57
    if-ne v4, v2, :cond_4

    .line 58
    .line 59
    .line 60
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/y;->a([Z)V

    .line 61
    sub-int/2addr p1, v2

    .line 62
    return p1

    .line 63
    .line 64
    :cond_4
    add-int/lit8 v4, p2, -0x1

    .line 65
    add-int/2addr p1, v3

    .line 66
    .line 67
    :goto_1
    if-ge p1, v4, :cond_7

    .line 68
    .line 69
    aget-byte v5, p0, p1

    .line 70
    .line 71
    and-int/lit16 v6, v5, 0xfe

    .line 72
    .line 73
    if-eqz v6, :cond_5

    .line 74
    goto :goto_2

    .line 75
    .line 76
    :cond_5
    add-int/lit8 v6, p1, -0x2

    .line 77
    .line 78
    aget-byte v7, p0, v6

    .line 79
    .line 80
    if-nez v7, :cond_6

    .line 81
    .line 82
    add-int/lit8 v7, p1, -0x1

    .line 83
    .line 84
    aget-byte v7, p0, v7

    .line 85
    .line 86
    if-nez v7, :cond_6

    .line 87
    .line 88
    if-ne v5, v2, :cond_6

    .line 89
    .line 90
    .line 91
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/y;->a([Z)V

    .line 92
    return v6

    .line 93
    .line 94
    :cond_6
    add-int/lit8 p1, p1, -0x2

    .line 95
    .line 96
    :goto_2
    add-int/lit8 p1, p1, 0x3

    .line 97
    goto :goto_1

    .line 98
    .line 99
    :cond_7
    if-le v0, v3, :cond_9

    .line 100
    .line 101
    add-int/lit8 p1, p2, -0x3

    .line 102
    .line 103
    aget-byte p1, p0, p1

    .line 104
    .line 105
    if-nez p1, :cond_8

    .line 106
    .line 107
    add-int/lit8 p1, p2, -0x2

    .line 108
    .line 109
    aget-byte p1, p0, p1

    .line 110
    .line 111
    if-nez p1, :cond_8

    .line 112
    .line 113
    aget-byte p1, p0, v4

    .line 114
    .line 115
    if-ne p1, v2, :cond_8

    .line 116
    :goto_3
    move p1, v2

    .line 117
    goto :goto_4

    .line 118
    :cond_8
    move p1, v1

    .line 119
    goto :goto_4

    .line 120
    .line 121
    :cond_9
    if-ne v0, v3, :cond_a

    .line 122
    .line 123
    aget-boolean p1, p3, v3

    .line 124
    .line 125
    if-eqz p1, :cond_8

    .line 126
    .line 127
    add-int/lit8 p1, p2, -0x2

    .line 128
    .line 129
    aget-byte p1, p0, p1

    .line 130
    .line 131
    if-nez p1, :cond_8

    .line 132
    .line 133
    aget-byte p1, p0, v4

    .line 134
    .line 135
    if-ne p1, v2, :cond_8

    .line 136
    goto :goto_3

    .line 137
    .line 138
    :cond_a
    aget-boolean p1, p3, v2

    .line 139
    .line 140
    if-eqz p1, :cond_8

    .line 141
    .line 142
    aget-byte p1, p0, v4

    .line 143
    .line 144
    if-ne p1, v2, :cond_8

    .line 145
    goto :goto_3

    .line 146
    .line 147
    :goto_4
    aput-boolean p1, p3, v1

    .line 148
    .line 149
    if-le v0, v2, :cond_c

    .line 150
    .line 151
    add-int/lit8 p1, p2, -0x2

    .line 152
    .line 153
    aget-byte p1, p0, p1

    .line 154
    .line 155
    if-nez p1, :cond_b

    .line 156
    .line 157
    aget-byte p1, p0, v4

    .line 158
    .line 159
    if-nez p1, :cond_b

    .line 160
    :goto_5
    move p1, v2

    .line 161
    goto :goto_6

    .line 162
    :cond_b
    move p1, v1

    .line 163
    goto :goto_6

    .line 164
    .line 165
    :cond_c
    aget-boolean p1, p3, v3

    .line 166
    .line 167
    if-eqz p1, :cond_b

    .line 168
    .line 169
    aget-byte p1, p0, v4

    .line 170
    .line 171
    if-nez p1, :cond_b

    .line 172
    goto :goto_5

    .line 173
    .line 174
    :goto_6
    aput-boolean p1, p3, v2

    .line 175
    .line 176
    aget-byte p0, p0, v4

    .line 177
    .line 178
    if-nez p0, :cond_d

    .line 179
    move v1, v2

    .line 180
    .line 181
    :cond_d
    aput-boolean v1, p3, v3

    .line 182
    return p2
.end method

.method private static d([BII)I
    .locals 2

    .line 1
    .line 2
    :goto_0
    add-int/lit8 v0, p2, -0x2

    .line 3
    .line 4
    if-ge p1, v0, :cond_1

    .line 5
    .line 6
    aget-byte v0, p0, p1

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    add-int/lit8 v0, p1, 0x1

    .line 11
    .line 12
    aget-byte v0, p0, v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    add-int/lit8 v0, p1, 0x2

    .line 17
    .line 18
    aget-byte v0, p0, v0

    .line 19
    const/4 v1, 0x3

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    return p1

    .line 23
    .line 24
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return p2
.end method

.method public static e([BI)I
    .locals 0

    .line 1
    .line 2
    add-int/lit8 p1, p1, 0x3

    .line 3
    .line 4
    aget-byte p0, p0, p1

    .line 5
    .line 6
    and-int/lit8 p0, p0, 0x7e

    .line 7
    .line 8
    shr-int/lit8 p0, p0, 0x1

    .line 9
    return p0
.end method

.method public static f([BI)I
    .locals 0

    .line 1
    .line 2
    add-int/lit8 p1, p1, 0x3

    .line 3
    .line 4
    aget-byte p0, p0, p1

    .line 5
    .line 6
    and-int/lit8 p0, p0, 0x1f

    .line 7
    return p0
.end method

.method public static g(Ljava/lang/String;B)Z
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "video/avc"

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    and-int/lit8 v0, p1, 0x1f

    .line 12
    const/4 v2, 0x6

    .line 13
    .line 14
    if-eq v0, v2, :cond_2

    .line 15
    .line 16
    :cond_0
    const-string v0, "video/hevc"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result p0

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    and-int/lit8 p0, p1, 0x7e

    .line 25
    shr-int/2addr p0, v1

    .line 26
    .line 27
    const/16 p1, 0x27

    .line 28
    .line 29
    if-ne p0, p1, :cond_1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    :cond_2
    :goto_0
    return v1
.end method

.method public static h([BII)Lcom/google/android/exoplayer2/util/y$a;
    .locals 0

    .line 1
    .line 2
    add-int/lit8 p1, p1, 0x2

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/util/y;->i([BII)Lcom/google/android/exoplayer2/util/y$a;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static i([BII)Lcom/google/android/exoplayer2/util/y$a;
    .locals 22

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/d0;

    .line 3
    .line 4
    move-object/from16 v1, p0

    .line 5
    .line 6
    move/from16 v2, p1

    .line 7
    .line 8
    move/from16 v3, p2

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/d0;-><init>([BII)V

    .line 12
    const/4 v1, 0x4

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/d0;->l(I)V

    .line 16
    const/4 v2, 0x3

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/d0;->e(I)I

    .line 20
    move-result v3

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->k()V

    .line 24
    const/4 v4, 0x2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/d0;->e(I)I

    .line 28
    move-result v6

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 32
    move-result v7

    .line 33
    const/4 v5, 0x5

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/d0;->e(I)I

    .line 37
    move-result v8

    .line 38
    const/4 v10, 0x0

    .line 39
    const/4 v11, 0x0

    .line 40
    .line 41
    :goto_0
    const/16 v12, 0x20

    .line 42
    const/4 v13, 0x1

    .line 43
    .line 44
    if-ge v11, v12, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 48
    move-result v12

    .line 49
    .line 50
    if-eqz v12, :cond_0

    .line 51
    .line 52
    shl-int v12, v13, v11

    .line 53
    or-int/2addr v10, v12

    .line 54
    .line 55
    :cond_0
    add-int/lit8 v11, v11, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/4 v11, 0x6

    .line 58
    .line 59
    new-array v12, v11, [I

    .line 60
    const/4 v14, 0x0

    .line 61
    .line 62
    :goto_1
    const/16 v15, 0x8

    .line 63
    .line 64
    if-ge v14, v11, :cond_2

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/d0;->e(I)I

    .line 68
    move-result v15

    .line 69
    .line 70
    aput v15, v12, v14

    .line 71
    .line 72
    add-int/lit8 v14, v14, 0x1

    .line 73
    goto :goto_1

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/d0;->e(I)I

    .line 77
    move-result v11

    .line 78
    const/4 v9, 0x0

    .line 79
    const/4 v14, 0x0

    .line 80
    .line 81
    :goto_2
    if-ge v14, v3, :cond_5

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 85
    move-result v16

    .line 86
    .line 87
    if-eqz v16, :cond_3

    .line 88
    .line 89
    add-int/lit8 v9, v9, 0x59

    .line 90
    .line 91
    .line 92
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 93
    move-result v16

    .line 94
    .line 95
    if-eqz v16, :cond_4

    .line 96
    .line 97
    add-int/lit8 v9, v9, 0x8

    .line 98
    .line 99
    :cond_4
    add-int/lit8 v14, v14, 0x1

    .line 100
    goto :goto_2

    .line 101
    .line 102
    .line 103
    :cond_5
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/d0;->l(I)V

    .line 104
    .line 105
    if-lez v3, :cond_6

    .line 106
    .line 107
    rsub-int/lit8 v9, v3, 0x8

    .line 108
    mul-int/2addr v9, v4

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/d0;->l(I)V

    .line 112
    .line 113
    .line 114
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 115
    move-result v14

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 119
    move-result v9

    .line 120
    .line 121
    if-ne v9, v2, :cond_7

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->k()V

    .line 125
    .line 126
    .line 127
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 128
    move-result v2

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 132
    move-result v16

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 136
    move-result v17

    .line 137
    .line 138
    if-eqz v17, :cond_b

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 142
    move-result v17

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 146
    move-result v18

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 150
    move-result v19

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 154
    move-result v20

    .line 155
    .line 156
    if-eq v9, v13, :cond_9

    .line 157
    .line 158
    if-ne v9, v4, :cond_8

    .line 159
    goto :goto_3

    .line 160
    .line 161
    :cond_8
    move/from16 v21, v13

    .line 162
    goto :goto_4

    .line 163
    .line 164
    :cond_9
    :goto_3
    move/from16 v21, v4

    .line 165
    .line 166
    :goto_4
    if-ne v9, v13, :cond_a

    .line 167
    move v13, v4

    .line 168
    .line 169
    :cond_a
    add-int v17, v17, v18

    .line 170
    .line 171
    mul-int v21, v21, v17

    .line 172
    .line 173
    sub-int v2, v2, v21

    .line 174
    .line 175
    add-int v19, v19, v20

    .line 176
    .line 177
    mul-int v13, v13, v19

    .line 178
    .line 179
    sub-int v16, v16, v13

    .line 180
    :cond_b
    move v13, v2

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 190
    move-result v2

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 194
    move-result v9

    .line 195
    .line 196
    if-eqz v9, :cond_c

    .line 197
    const/4 v9, 0x0

    .line 198
    goto :goto_5

    .line 199
    :cond_c
    move v9, v3

    .line 200
    .line 201
    :goto_5
    if-gt v9, v3, :cond_d

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 211
    .line 212
    add-int/lit8 v9, v9, 0x1

    .line 213
    goto :goto_5

    .line 214
    .line 215
    .line 216
    :cond_d
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 235
    move-result v3

    .line 236
    .line 237
    if-eqz v3, :cond_e

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 241
    move-result v3

    .line 242
    .line 243
    if-eqz v3, :cond_e

    .line 244
    .line 245
    .line 246
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/y;->n(Lcom/google/android/exoplayer2/util/d0;)V

    .line 247
    .line 248
    .line 249
    :cond_e
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/d0;->l(I)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 253
    move-result v3

    .line 254
    .line 255
    if-eqz v3, :cond_f

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/d0;->l(I)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->k()V

    .line 268
    .line 269
    .line 270
    :cond_f
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/y;->p(Lcom/google/android/exoplayer2/util/d0;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 274
    move-result v3

    .line 275
    .line 276
    if-eqz v3, :cond_10

    .line 277
    const/4 v9, 0x0

    .line 278
    .line 279
    .line 280
    :goto_6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 281
    move-result v3

    .line 282
    .line 283
    if-ge v9, v3, :cond_10

    .line 284
    .line 285
    add-int/lit8 v3, v2, 0x5

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/d0;->l(I)V

    .line 289
    .line 290
    add-int/lit8 v9, v9, 0x1

    .line 291
    goto :goto_6

    .line 292
    .line 293
    .line 294
    :cond_10
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/d0;->l(I)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 298
    move-result v2

    .line 299
    .line 300
    const/high16 v3, 0x3f800000    # 1.0f

    .line 301
    .line 302
    if-eqz v2, :cond_17

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 306
    move-result v2

    .line 307
    .line 308
    if-eqz v2, :cond_13

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/d0;->e(I)I

    .line 312
    move-result v2

    .line 313
    .line 314
    const/16 v4, 0xff

    .line 315
    .line 316
    if-ne v2, v4, :cond_11

    .line 317
    .line 318
    const/16 v2, 0x10

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/d0;->e(I)I

    .line 322
    move-result v4

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/d0;->e(I)I

    .line 326
    move-result v2

    .line 327
    .line 328
    if-eqz v4, :cond_13

    .line 329
    .line 330
    if-eqz v2, :cond_13

    .line 331
    int-to-float v3, v4

    .line 332
    int-to-float v2, v2

    .line 333
    div-float/2addr v3, v2

    .line 334
    goto :goto_7

    .line 335
    .line 336
    :cond_11
    sget-object v4, Lcom/google/android/exoplayer2/util/y;->ASPECT_RATIO_IDC_VALUES:[F

    .line 337
    array-length v5, v4

    .line 338
    .line 339
    if-ge v2, v5, :cond_12

    .line 340
    .line 341
    aget v3, v4, v2

    .line 342
    goto :goto_7

    .line 343
    .line 344
    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .line 349
    const-string v5, "Unexpected aspect_ratio_idc value: "

    .line 350
    .line 351
    .line 352
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    move-result-object v2

    .line 360
    .line 361
    const-string v4, "NalUnitUtil"

    .line 362
    .line 363
    .line 364
    invoke-static {v4, v2}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    :cond_13
    :goto_7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 368
    move-result v2

    .line 369
    .line 370
    if-eqz v2, :cond_14

    .line 371
    .line 372
    .line 373
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->k()V

    .line 374
    .line 375
    .line 376
    :cond_14
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 377
    move-result v2

    .line 378
    .line 379
    if-eqz v2, :cond_15

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/d0;->l(I)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 386
    move-result v1

    .line 387
    .line 388
    if-eqz v1, :cond_15

    .line 389
    .line 390
    const/16 v1, 0x18

    .line 391
    .line 392
    .line 393
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/d0;->l(I)V

    .line 394
    .line 395
    .line 396
    :cond_15
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 397
    move-result v1

    .line 398
    .line 399
    if-eqz v1, :cond_16

    .line 400
    .line 401
    .line 402
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 406
    .line 407
    .line 408
    :cond_16
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->k()V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 412
    move-result v0

    .line 413
    .line 414
    if-eqz v0, :cond_17

    .line 415
    .line 416
    mul-int/lit8 v16, v16, 0x2

    .line 417
    :cond_17
    move v15, v3

    .line 418
    .line 419
    new-instance v0, Lcom/google/android/exoplayer2/util/y$a;

    .line 420
    move-object v5, v0

    .line 421
    move v9, v10

    .line 422
    move-object v10, v12

    .line 423
    move v12, v14

    .line 424
    .line 425
    move/from16 v14, v16

    .line 426
    .line 427
    .line 428
    invoke-direct/range {v5 .. v15}, Lcom/google/android/exoplayer2/util/y$a;-><init>(IZII[IIIIIF)V

    .line 429
    return-object v0
.end method

.method public static j([BII)Lcom/google/android/exoplayer2/util/y$b;
    .locals 0

    .line 1
    .line 2
    add-int/lit8 p1, p1, 0x1

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/util/y;->k([BII)Lcom/google/android/exoplayer2/util/y$b;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static k([BII)Lcom/google/android/exoplayer2/util/y$b;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/d0;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/util/d0;-><init>([BII)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 9
    move-result p0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 13
    move-result p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->k()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 20
    move-result p2

    .line 21
    .line 22
    new-instance v0, Lcom/google/android/exoplayer2/util/y$b;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/util/y$b;-><init>(IIZ)V

    .line 26
    return-object v0
.end method

.method public static l([BII)Lcom/google/android/exoplayer2/util/y$c;
    .locals 0

    .line 1
    .line 2
    add-int/lit8 p1, p1, 0x1

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/util/y;->m([BII)Lcom/google/android/exoplayer2/util/y$c;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static m([BII)Lcom/google/android/exoplayer2/util/y$c;
    .locals 22

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/d0;

    .line 3
    .line 4
    move-object/from16 v1, p0

    .line 5
    .line 6
    move/from16 v2, p1

    .line 7
    .line 8
    move/from16 v3, p2

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/d0;-><init>([BII)V

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/d0;->e(I)I

    .line 17
    move-result v3

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/d0;->e(I)I

    .line 21
    move-result v4

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/d0;->e(I)I

    .line 25
    move-result v5

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 29
    move-result v6

    .line 30
    .line 31
    const/16 v2, 0x64

    .line 32
    const/4 v7, 0x3

    .line 33
    .line 34
    const/16 v8, 0x10

    .line 35
    const/4 v9, 0x1

    .line 36
    .line 37
    if-eq v3, v2, :cond_1

    .line 38
    .line 39
    const/16 v2, 0x6e

    .line 40
    .line 41
    if-eq v3, v2, :cond_1

    .line 42
    .line 43
    const/16 v2, 0x7a

    .line 44
    .line 45
    if-eq v3, v2, :cond_1

    .line 46
    .line 47
    const/16 v2, 0xf4

    .line 48
    .line 49
    if-eq v3, v2, :cond_1

    .line 50
    .line 51
    const/16 v2, 0x2c

    .line 52
    .line 53
    if-eq v3, v2, :cond_1

    .line 54
    .line 55
    const/16 v2, 0x53

    .line 56
    .line 57
    if-eq v3, v2, :cond_1

    .line 58
    .line 59
    const/16 v2, 0x56

    .line 60
    .line 61
    if-eq v3, v2, :cond_1

    .line 62
    .line 63
    const/16 v2, 0x76

    .line 64
    .line 65
    if-eq v3, v2, :cond_1

    .line 66
    .line 67
    const/16 v2, 0x80

    .line 68
    .line 69
    if-eq v3, v2, :cond_1

    .line 70
    .line 71
    const/16 v2, 0x8a

    .line 72
    .line 73
    if-ne v3, v2, :cond_0

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    move v2, v9

    .line 76
    const/4 v11, 0x0

    .line 77
    goto :goto_5

    .line 78
    .line 79
    .line 80
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 81
    move-result v2

    .line 82
    .line 83
    if-ne v2, v7, :cond_2

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 87
    move-result v11

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    const/4 v11, 0x0

    .line 90
    .line 91
    .line 92
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->k()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 102
    move-result v12

    .line 103
    .line 104
    if-eqz v12, :cond_6

    .line 105
    .line 106
    if-eq v2, v7, :cond_3

    .line 107
    move v12, v1

    .line 108
    goto :goto_2

    .line 109
    .line 110
    :cond_3
    const/16 v12, 0xc

    .line 111
    :goto_2
    const/4 v13, 0x0

    .line 112
    .line 113
    :goto_3
    if-ge v13, v12, :cond_6

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 117
    move-result v14

    .line 118
    .line 119
    if-eqz v14, :cond_5

    .line 120
    const/4 v14, 0x6

    .line 121
    .line 122
    if-ge v13, v14, :cond_4

    .line 123
    move v14, v8

    .line 124
    goto :goto_4

    .line 125
    .line 126
    :cond_4
    const/16 v14, 0x40

    .line 127
    .line 128
    .line 129
    :goto_4
    invoke-static {v0, v14}, Lcom/google/android/exoplayer2/util/y;->o(Lcom/google/android/exoplayer2/util/d0;I)V

    .line 130
    .line 131
    :cond_5
    add-int/lit8 v13, v13, 0x1

    .line 132
    goto :goto_3

    .line 133
    .line 134
    .line 135
    :cond_6
    :goto_5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 136
    move-result v12

    .line 137
    .line 138
    add-int/lit8 v13, v12, 0x4

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 142
    move-result v14

    .line 143
    .line 144
    if-nez v14, :cond_7

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 148
    move-result v12

    .line 149
    .line 150
    add-int/lit8 v12, v12, 0x4

    .line 151
    .line 152
    move/from16 v16, v2

    .line 153
    .line 154
    move/from16 p1, v11

    .line 155
    move v15, v12

    .line 156
    const/4 v1, 0x0

    .line 157
    goto :goto_8

    .line 158
    .line 159
    :cond_7
    if-ne v14, v9, :cond_9

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 163
    move-result v12

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->g()I

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->g()I

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 173
    move-result v15

    .line 174
    .line 175
    move/from16 p1, v11

    .line 176
    int-to-long v10, v15

    .line 177
    .line 178
    move/from16 v16, v2

    .line 179
    const/4 v15, 0x0

    .line 180
    :goto_6
    int-to-long v1, v15

    .line 181
    .line 182
    cmp-long v1, v1, v10

    .line 183
    .line 184
    if-gez v1, :cond_8

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 188
    .line 189
    add-int/lit8 v15, v15, 0x1

    .line 190
    goto :goto_6

    .line 191
    :cond_8
    move v1, v12

    .line 192
    :goto_7
    const/4 v15, 0x0

    .line 193
    goto :goto_8

    .line 194
    .line 195
    :cond_9
    move/from16 v16, v2

    .line 196
    .line 197
    move/from16 p1, v11

    .line 198
    const/4 v1, 0x0

    .line 199
    goto :goto_7

    .line 200
    .line 201
    .line 202
    :goto_8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 203
    move-result v10

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->k()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 210
    move-result v2

    .line 211
    add-int/2addr v2, v9

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 215
    move-result v11

    .line 216
    add-int/2addr v11, v9

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 220
    move-result v12

    .line 221
    .line 222
    rsub-int/lit8 v17, v12, 0x2

    .line 223
    .line 224
    mul-int v17, v17, v11

    .line 225
    .line 226
    if-nez v12, :cond_a

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->k()V

    .line 230
    .line 231
    .line 232
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->k()V

    .line 233
    mul-int/2addr v2, v8

    .line 234
    .line 235
    mul-int/lit8 v17, v17, 0x10

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 239
    move-result v11

    .line 240
    .line 241
    if-eqz v11, :cond_e

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 245
    move-result v11

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 249
    move-result v18

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 253
    move-result v19

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 257
    move-result v20

    .line 258
    .line 259
    if-nez v16, :cond_b

    .line 260
    .line 261
    rsub-int/lit8 v7, v12, 0x2

    .line 262
    goto :goto_a

    .line 263
    .line 264
    :cond_b
    const/16 v21, 0x2

    .line 265
    .line 266
    move/from16 v8, v16

    .line 267
    .line 268
    if-ne v8, v7, :cond_c

    .line 269
    move v7, v9

    .line 270
    goto :goto_9

    .line 271
    .line 272
    :cond_c
    move/from16 v7, v21

    .line 273
    .line 274
    :goto_9
    if-ne v8, v9, :cond_d

    .line 275
    .line 276
    move/from16 v9, v21

    .line 277
    .line 278
    :cond_d
    rsub-int/lit8 v8, v12, 0x2

    .line 279
    mul-int/2addr v8, v9

    .line 280
    move v9, v7

    .line 281
    move v7, v8

    .line 282
    .line 283
    :goto_a
    add-int v11, v11, v18

    .line 284
    mul-int/2addr v11, v9

    .line 285
    sub-int/2addr v2, v11

    .line 286
    .line 287
    add-int v19, v19, v20

    .line 288
    .line 289
    mul-int v19, v19, v7

    .line 290
    .line 291
    sub-int v17, v17, v19

    .line 292
    :cond_e
    move v8, v2

    .line 293
    .line 294
    move/from16 v9, v17

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 298
    move-result v2

    .line 299
    .line 300
    const/high16 v7, 0x3f800000    # 1.0f

    .line 301
    .line 302
    if-eqz v2, :cond_f

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 306
    move-result v2

    .line 307
    .line 308
    if-eqz v2, :cond_f

    .line 309
    .line 310
    const/16 v2, 0x8

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/d0;->e(I)I

    .line 314
    move-result v2

    .line 315
    .line 316
    const/16 v11, 0xff

    .line 317
    .line 318
    if-ne v2, v11, :cond_10

    .line 319
    .line 320
    const/16 v11, 0x10

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/util/d0;->e(I)I

    .line 324
    move-result v2

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/util/d0;->e(I)I

    .line 328
    move-result v0

    .line 329
    .line 330
    if-eqz v2, :cond_f

    .line 331
    .line 332
    if-eqz v0, :cond_f

    .line 333
    int-to-float v2, v2

    .line 334
    int-to-float v0, v0

    .line 335
    .line 336
    div-float v7, v2, v0

    .line 337
    :cond_f
    :goto_b
    move v0, v7

    .line 338
    goto :goto_c

    .line 339
    .line 340
    :cond_10
    sget-object v0, Lcom/google/android/exoplayer2/util/y;->ASPECT_RATIO_IDC_VALUES:[F

    .line 341
    array-length v11, v0

    .line 342
    .line 343
    if-ge v2, v11, :cond_11

    .line 344
    .line 345
    aget v0, v0, v2

    .line 346
    goto :goto_c

    .line 347
    .line 348
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .line 353
    const-string v11, "Unexpected aspect_ratio_idc value: "

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    move-result-object v0

    .line 364
    .line 365
    const-string v2, "NalUnitUtil"

    .line 366
    .line 367
    .line 368
    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    goto :goto_b

    .line 370
    .line 371
    :goto_c
    new-instance v17, Lcom/google/android/exoplayer2/util/y$c;

    .line 372
    .line 373
    move-object/from16 v2, v17

    .line 374
    move v7, v10

    .line 375
    move v10, v0

    .line 376
    .line 377
    move/from16 v11, p1

    .line 378
    .line 379
    move/from16 v16, v1

    .line 380
    .line 381
    .line 382
    invoke-direct/range {v2 .. v16}, Lcom/google/android/exoplayer2/util/y$c;-><init>(IIIIIIIFZZIIIZ)V

    .line 383
    return-object v17
.end method

.method private static n(Lcom/google/android/exoplayer2/util/d0;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x4

    .line 4
    .line 5
    if-ge v1, v2, :cond_5

    .line 6
    move v3, v0

    .line 7
    :goto_1
    const/4 v4, 0x6

    .line 8
    .line 9
    if-ge v3, v4, :cond_4

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 13
    move-result v4

    .line 14
    const/4 v5, 0x1

    .line 15
    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 20
    goto :goto_3

    .line 21
    .line 22
    :cond_0
    shl-int/lit8 v4, v1, 0x1

    .line 23
    add-int/2addr v4, v2

    .line 24
    .line 25
    shl-int v4, v5, v4

    .line 26
    .line 27
    const/16 v6, 0x40

    .line 28
    .line 29
    .line 30
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    .line 31
    move-result v4

    .line 32
    .line 33
    if-le v1, v5, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->g()I

    .line 37
    :cond_1
    move v6, v0

    .line 38
    .line 39
    :goto_2
    if-ge v6, v4, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->g()I

    .line 43
    .line 44
    add-int/lit8 v6, v6, 0x1

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    :goto_3
    const/4 v4, 0x3

    .line 47
    .line 48
    if-ne v1, v4, :cond_3

    .line 49
    move v5, v4

    .line 50
    :cond_3
    add-int/2addr v3, v5

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_5
    return-void
.end method

.method private static o(Lcom/google/android/exoplayer2/util/d0;I)V
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    move v1, v0

    .line 6
    .line 7
    :goto_0
    if-ge v2, p1, :cond_2

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->g()I

    .line 13
    move-result v0

    .line 14
    add-int/2addr v0, v1

    .line 15
    .line 16
    add-int/lit16 v0, v0, 0x100

    .line 17
    .line 18
    rem-int/lit16 v0, v0, 0x100

    .line 19
    .line 20
    :cond_0
    if-nez v0, :cond_1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v1, v0

    .line 23
    .line 24
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    return-void
.end method

.method private static p(Lcom/google/android/exoplayer2/util/d0;)V
    .locals 19

    .line 1
    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    new-array v2, v1, [I

    .line 8
    .line 9
    new-array v3, v1, [I

    .line 10
    const/4 v4, -0x1

    .line 11
    move v6, v1

    .line 12
    move v5, v4

    .line 13
    .line 14
    :goto_0
    if-ge v6, v0, :cond_f

    .line 15
    const/4 v7, 0x1

    .line 16
    .line 17
    if-eqz v6, :cond_c

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 21
    move-result v8

    .line 22
    .line 23
    if-eqz v8, :cond_c

    .line 24
    .line 25
    add-int v8, v4, v5

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 29
    move-result v9

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 33
    move-result v10

    .line 34
    add-int/2addr v10, v7

    .line 35
    .line 36
    mul-int/lit8 v9, v9, 0x2

    .line 37
    .line 38
    rsub-int/lit8 v9, v9, 0x1

    .line 39
    mul-int/2addr v9, v10

    .line 40
    .line 41
    add-int/lit8 v10, v8, 0x1

    .line 42
    .line 43
    new-array v11, v10, [Z

    .line 44
    move v12, v1

    .line 45
    .line 46
    :goto_1
    if-gt v12, v8, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 50
    move-result v13

    .line 51
    .line 52
    if-nez v13, :cond_0

    .line 53
    .line 54
    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 56
    move-result v13

    .line 57
    .line 58
    aput-boolean v13, v11, v12

    .line 59
    goto :goto_2

    .line 60
    .line 61
    :cond_0
    aput-boolean v7, v11, v12

    .line 62
    .line 63
    :goto_2
    add-int/lit8 v12, v12, 0x1

    .line 64
    goto :goto_1

    .line 65
    .line 66
    :cond_1
    new-array v7, v10, [I

    .line 67
    .line 68
    new-array v10, v10, [I

    .line 69
    .line 70
    add-int/lit8 v12, v5, -0x1

    .line 71
    move v13, v1

    .line 72
    .line 73
    :goto_3
    if-ltz v12, :cond_3

    .line 74
    .line 75
    aget v14, v3, v12

    .line 76
    add-int/2addr v14, v9

    .line 77
    .line 78
    if-gez v14, :cond_2

    .line 79
    .line 80
    add-int v15, v4, v12

    .line 81
    .line 82
    aget-boolean v15, v11, v15

    .line 83
    .line 84
    if-eqz v15, :cond_2

    .line 85
    .line 86
    add-int/lit8 v15, v13, 0x1

    .line 87
    .line 88
    aput v14, v7, v13

    .line 89
    move v13, v15

    .line 90
    .line 91
    :cond_2
    add-int/lit8 v12, v12, -0x1

    .line 92
    goto :goto_3

    .line 93
    .line 94
    :cond_3
    if-gez v9, :cond_4

    .line 95
    .line 96
    aget-boolean v12, v11, v8

    .line 97
    .line 98
    if-eqz v12, :cond_4

    .line 99
    .line 100
    add-int/lit8 v12, v13, 0x1

    .line 101
    .line 102
    aput v9, v7, v13

    .line 103
    move v13, v12

    .line 104
    :cond_4
    move v12, v1

    .line 105
    .line 106
    :goto_4
    if-ge v12, v4, :cond_6

    .line 107
    .line 108
    aget v14, v2, v12

    .line 109
    add-int/2addr v14, v9

    .line 110
    .line 111
    if-gez v14, :cond_5

    .line 112
    .line 113
    aget-boolean v15, v11, v12

    .line 114
    .line 115
    if-eqz v15, :cond_5

    .line 116
    .line 117
    add-int/lit8 v15, v13, 0x1

    .line 118
    .line 119
    aput v14, v7, v13

    .line 120
    move v13, v15

    .line 121
    .line 122
    :cond_5
    add-int/lit8 v12, v12, 0x1

    .line 123
    goto :goto_4

    .line 124
    .line 125
    .line 126
    :cond_6
    invoke-static {v7, v13}, Ljava/util/Arrays;->copyOf([II)[I

    .line 127
    move-result-object v7

    .line 128
    .line 129
    add-int/lit8 v12, v4, -0x1

    .line 130
    move v14, v1

    .line 131
    .line 132
    :goto_5
    if-ltz v12, :cond_8

    .line 133
    .line 134
    aget v15, v2, v12

    .line 135
    add-int/2addr v15, v9

    .line 136
    .line 137
    if-lez v15, :cond_7

    .line 138
    .line 139
    aget-boolean v16, v11, v12

    .line 140
    .line 141
    if-eqz v16, :cond_7

    .line 142
    .line 143
    add-int/lit8 v16, v14, 0x1

    .line 144
    .line 145
    aput v15, v10, v14

    .line 146
    .line 147
    move/from16 v14, v16

    .line 148
    .line 149
    :cond_7
    add-int/lit8 v12, v12, -0x1

    .line 150
    goto :goto_5

    .line 151
    .line 152
    :cond_8
    if-lez v9, :cond_9

    .line 153
    .line 154
    aget-boolean v2, v11, v8

    .line 155
    .line 156
    if-eqz v2, :cond_9

    .line 157
    .line 158
    add-int/lit8 v2, v14, 0x1

    .line 159
    .line 160
    aput v9, v10, v14

    .line 161
    move v14, v2

    .line 162
    :cond_9
    move v2, v1

    .line 163
    .line 164
    :goto_6
    if-ge v2, v5, :cond_b

    .line 165
    .line 166
    aget v8, v3, v2

    .line 167
    add-int/2addr v8, v9

    .line 168
    .line 169
    if-lez v8, :cond_a

    .line 170
    .line 171
    add-int v12, v4, v2

    .line 172
    .line 173
    aget-boolean v12, v11, v12

    .line 174
    .line 175
    if-eqz v12, :cond_a

    .line 176
    .line 177
    add-int/lit8 v12, v14, 0x1

    .line 178
    .line 179
    aput v8, v10, v14

    .line 180
    move v14, v12

    .line 181
    .line 182
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 183
    goto :goto_6

    .line 184
    .line 185
    .line 186
    :cond_b
    invoke-static {v10, v14}, Ljava/util/Arrays;->copyOf([II)[I

    .line 187
    move-result-object v2

    .line 188
    move-object v3, v2

    .line 189
    move-object v2, v7

    .line 190
    move v4, v13

    .line 191
    move v5, v14

    .line 192
    goto :goto_9

    .line 193
    .line 194
    .line 195
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 196
    move-result v2

    .line 197
    .line 198
    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 200
    move-result v3

    .line 201
    .line 202
    new-array v4, v2, [I

    .line 203
    move v5, v1

    .line 204
    .line 205
    :goto_7
    if-ge v5, v2, :cond_d

    .line 206
    .line 207
    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 209
    move-result v8

    .line 210
    add-int/2addr v8, v7

    .line 211
    .line 212
    aput v8, v4, v5

    .line 213
    .line 214
    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->k()V

    .line 216
    .line 217
    add-int/lit8 v5, v5, 0x1

    .line 218
    goto :goto_7

    .line 219
    .line 220
    :cond_d
    new-array v5, v3, [I

    .line 221
    move v8, v1

    .line 222
    .line 223
    :goto_8
    if-ge v8, v3, :cond_e

    .line 224
    .line 225
    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 227
    move-result v9

    .line 228
    add-int/2addr v9, v7

    .line 229
    .line 230
    aput v9, v5, v8

    .line 231
    .line 232
    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->k()V

    .line 234
    .line 235
    add-int/lit8 v8, v8, 0x1

    .line 236
    goto :goto_8

    .line 237
    .line 238
    :cond_e
    move-object/from16 v17, v4

    .line 239
    move v4, v2

    .line 240
    .line 241
    move-object/from16 v2, v17

    .line 242
    .line 243
    move-object/from16 v18, v5

    .line 244
    move v5, v3

    .line 245
    .line 246
    move-object/from16 v3, v18

    .line 247
    .line 248
    :goto_9
    add-int/lit8 v6, v6, 0x1

    .line 249
    .line 250
    goto/16 :goto_0

    .line 251
    :cond_f
    return-void
.end method

.method public static q([BI)I
    .locals 8

    .line 1
    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/util/y;->scratchEscapePositionsLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    move v3, v2

    .line 7
    .line 8
    :cond_0
    :goto_0
    if-ge v2, p1, :cond_2

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-static {p0, v2, p1}, Lcom/google/android/exoplayer2/util/y;->d([BII)I

    .line 12
    move-result v2

    .line 13
    .line 14
    if-ge v2, p1, :cond_0

    .line 15
    .line 16
    sget-object v4, Lcom/google/android/exoplayer2/util/y;->scratchEscapePositions:[I

    .line 17
    array-length v5, v4

    .line 18
    .line 19
    if-gt v5, v3, :cond_1

    .line 20
    array-length v5, v4

    .line 21
    .line 22
    mul-int/lit8 v5, v5, 0x2

    .line 23
    .line 24
    .line 25
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    .line 26
    move-result-object v4

    .line 27
    .line 28
    sput-object v4, Lcom/google/android/exoplayer2/util/y;->scratchEscapePositions:[I

    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_3

    .line 32
    .line 33
    :cond_1
    :goto_1
    sget-object v4, Lcom/google/android/exoplayer2/util/y;->scratchEscapePositions:[I

    .line 34
    .line 35
    add-int/lit8 v5, v3, 0x1

    .line 36
    .line 37
    aput v2, v4, v3

    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x3

    .line 40
    move v3, v5

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    sub-int/2addr p1, v3

    .line 43
    move v2, v1

    .line 44
    move v4, v2

    .line 45
    move v5, v4

    .line 46
    .line 47
    :goto_2
    if-ge v2, v3, :cond_3

    .line 48
    .line 49
    sget-object v6, Lcom/google/android/exoplayer2/util/y;->scratchEscapePositions:[I

    .line 50
    .line 51
    aget v6, v6, v2

    .line 52
    sub-int/2addr v6, v5

    .line 53
    .line 54
    .line 55
    invoke-static {p0, v5, p0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    add-int/2addr v4, v6

    .line 57
    .line 58
    add-int/lit8 v7, v4, 0x1

    .line 59
    .line 60
    aput-byte v1, p0, v4

    .line 61
    .line 62
    add-int/lit8 v4, v4, 0x2

    .line 63
    .line 64
    aput-byte v1, p0, v7

    .line 65
    .line 66
    add-int/lit8 v6, v6, 0x3

    .line 67
    add-int/2addr v5, v6

    .line 68
    .line 69
    add-int/lit8 v2, v2, 0x1

    .line 70
    goto :goto_2

    .line 71
    .line 72
    :cond_3
    sub-int v1, p1, v4

    .line 73
    .line 74
    .line 75
    invoke-static {p0, v5, p0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    monitor-exit v0

    .line 77
    return p1

    .line 78
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    throw p0
.end method
