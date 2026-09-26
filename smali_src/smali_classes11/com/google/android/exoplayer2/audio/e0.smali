.class public final Lcom/google/android/exoplayer2/audio/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CHANNELS_BY_AMODE:[I

.field public static final DTS_HD_MAX_RATE_BYTES_PER_SECOND:I = 0x225510

.field public static final DTS_MAX_RATE_BYTES_PER_SECOND:I = 0x2ee00

.field private static final FIRST_BYTE_14B_BE:B = 0x1ft

.field private static final FIRST_BYTE_14B_LE:B = -0x1t

.field private static final FIRST_BYTE_BE:B = 0x7ft

.field private static final FIRST_BYTE_LE:B = -0x2t

.field private static final SAMPLE_RATE_BY_SFREQ:[I

.field private static final SYNC_VALUE_14B_BE:I = 0x1fffe800

.field private static final SYNC_VALUE_14B_LE:I = -0xe0ff18

.field private static final SYNC_VALUE_BE:I = 0x7ffe8001

.field private static final SYNC_VALUE_LE:I = -0x180fe80

.field private static final TWICE_BITRATE_KBPS_BY_RATE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/exoplayer2/audio/e0;->CHANNELS_BY_AMODE:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/audio/e0;->SAMPLE_RATE_BY_SFREQ:[I

    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer2/audio/e0;->TWICE_BITRATE_KBPS_BY_RATE:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x6
        0x6
        0x6
        0x7
        0x8
        0x8
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x1f40
        0x3e80
        0x7d00
        -0x1
        -0x1
        0x2b11
        0x5622
        0xac44
        -0x1
        -0x1
        0x2ee0
        0x5dc0
        0xbb80
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x40
        0x70
        0x80
        0xc0
        0xe0
        0x100
        0x180
        0x1c0
        0x200
        0x280
        0x300
        0x380
        0x400
        0x480
        0x500
        0x600
        0x780
        0x800
        0x900
        0xa00
        0xa80
        0xb00
        0xb07
        0xb80
        0xc00
        0xf00
        0x1000
        0x1800
        0x1e00
    .end array-data
.end method

.method public static a([B)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    aget-byte v1, p0, v0

    .line 4
    const/4 v2, -0x2

    .line 5
    const/4 v3, 0x7

    .line 6
    const/4 v4, 0x6

    .line 7
    const/4 v5, 0x1

    .line 8
    const/4 v6, 0x4

    .line 9
    .line 10
    if-eq v1, v2, :cond_2

    .line 11
    const/4 v2, -0x1

    .line 12
    .line 13
    if-eq v1, v2, :cond_1

    .line 14
    .line 15
    const/16 v2, 0x1f

    .line 16
    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    const/4 v1, 0x5

    .line 19
    .line 20
    aget-byte v1, p0, v1

    .line 21
    .line 22
    and-int/lit8 v1, v1, 0x3

    .line 23
    .line 24
    shl-int/lit8 v1, v1, 0xc

    .line 25
    .line 26
    aget-byte v2, p0, v4

    .line 27
    .line 28
    and-int/lit16 v2, v2, 0xff

    .line 29
    shl-int/2addr v2, v6

    .line 30
    or-int/2addr v1, v2

    .line 31
    .line 32
    aget-byte p0, p0, v3

    .line 33
    .line 34
    :goto_0
    and-int/lit16 p0, p0, 0xf0

    .line 35
    shr-int/2addr p0, v6

    .line 36
    or-int/2addr p0, v1

    .line 37
    add-int/2addr p0, v5

    .line 38
    goto :goto_2

    .line 39
    .line 40
    :cond_0
    aget-byte v0, p0, v4

    .line 41
    .line 42
    and-int/lit8 v0, v0, 0x3

    .line 43
    .line 44
    shl-int/lit8 v0, v0, 0xc

    .line 45
    .line 46
    aget-byte v1, p0, v3

    .line 47
    .line 48
    and-int/lit16 v1, v1, 0xff

    .line 49
    shl-int/2addr v1, v6

    .line 50
    or-int/2addr v0, v1

    .line 51
    .line 52
    const/16 v1, 0x8

    .line 53
    .line 54
    aget-byte p0, p0, v1

    .line 55
    .line 56
    :goto_1
    and-int/lit8 p0, p0, 0x3c

    .line 57
    .line 58
    shr-int/lit8 p0, p0, 0x2

    .line 59
    or-int/2addr p0, v0

    .line 60
    add-int/2addr p0, v5

    .line 61
    move v0, v5

    .line 62
    goto :goto_2

    .line 63
    .line 64
    :cond_1
    aget-byte v0, p0, v3

    .line 65
    .line 66
    and-int/lit8 v0, v0, 0x3

    .line 67
    .line 68
    shl-int/lit8 v0, v0, 0xc

    .line 69
    .line 70
    aget-byte v1, p0, v4

    .line 71
    .line 72
    and-int/lit16 v1, v1, 0xff

    .line 73
    shl-int/2addr v1, v6

    .line 74
    or-int/2addr v0, v1

    .line 75
    .line 76
    const/16 v1, 0x9

    .line 77
    .line 78
    aget-byte p0, p0, v1

    .line 79
    goto :goto_1

    .line 80
    .line 81
    :cond_2
    aget-byte v1, p0, v6

    .line 82
    .line 83
    and-int/lit8 v1, v1, 0x3

    .line 84
    .line 85
    shl-int/lit8 v1, v1, 0xc

    .line 86
    .line 87
    aget-byte v2, p0, v3

    .line 88
    .line 89
    and-int/lit16 v2, v2, 0xff

    .line 90
    shl-int/2addr v2, v6

    .line 91
    or-int/2addr v1, v2

    .line 92
    .line 93
    aget-byte p0, p0, v4

    .line 94
    goto :goto_0

    .line 95
    .line 96
    :goto_2
    if-eqz v0, :cond_3

    .line 97
    .line 98
    mul-int/lit8 p0, p0, 0x10

    .line 99
    .line 100
    div-int/lit8 p0, p0, 0xe

    .line 101
    :cond_3
    return p0
.end method

.method private static b([B)Lcom/google/android/exoplayer2/util/b0;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    aget-byte v1, p0, v0

    .line 4
    .line 5
    const/16 v2, 0x7f

    .line 6
    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/google/android/exoplayer2/util/b0;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/b0;-><init>([B)V

    .line 13
    return-object v0

    .line 14
    :cond_0
    array-length v1, p0

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 18
    move-result-object p0

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/e0;->c([B)Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    move v1, v0

    .line 26
    :goto_0
    array-length v2, p0

    .line 27
    .line 28
    add-int/lit8 v2, v2, -0x1

    .line 29
    .line 30
    if-ge v1, v2, :cond_1

    .line 31
    .line 32
    aget-byte v2, p0, v1

    .line 33
    .line 34
    add-int/lit8 v3, v1, 0x1

    .line 35
    .line 36
    aget-byte v4, p0, v3

    .line 37
    .line 38
    aput-byte v4, p0, v1

    .line 39
    .line 40
    aput-byte v2, p0, v3

    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x2

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_1
    new-instance v1, Lcom/google/android/exoplayer2/util/b0;

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/util/b0;-><init>([B)V

    .line 49
    .line 50
    aget-byte v0, p0, v0

    .line 51
    .line 52
    const/16 v2, 0x1f

    .line 53
    .line 54
    if-ne v0, v2, :cond_2

    .line 55
    .line 56
    new-instance v0, Lcom/google/android/exoplayer2/util/b0;

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/b0;-><init>([B)V

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/b0;->b()I

    .line 63
    move-result v2

    .line 64
    .line 65
    const/16 v3, 0x10

    .line 66
    .line 67
    if-lt v2, v3, :cond_2

    .line 68
    const/4 v2, 0x2

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 72
    .line 73
    const/16 v2, 0xe

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    .line 77
    move-result v3

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/util/b0;->f(II)V

    .line 81
    goto :goto_1

    .line 82
    .line 83
    .line 84
    :cond_2
    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/util/b0;->n([B)V

    .line 85
    return-object v1
.end method

.method private static c([B)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    aget-byte p0, p0, v0

    .line 4
    const/4 v1, -0x2

    .line 5
    .line 6
    if-eq p0, v1, :cond_0

    .line 7
    const/4 v1, -0x1

    .line 8
    .line 9
    if-ne p0, v1, :cond_1

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    :cond_1
    return v0
.end method

.method public static d(I)Z
    .locals 1

    .line 1
    const v0, 0x7ffe8001

    if-eq p0, v0, :cond_1

    const v0, -0x180fe80

    if-eq p0, v0, :cond_1

    const v0, 0x1fffe800

    if-eq p0, v0, :cond_1

    const v0, -0xe0ff18

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static e(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 8
    move-result v1

    .line 9
    const/4 v2, -0x2

    .line 10
    .line 11
    if-eq v1, v2, :cond_2

    .line 12
    const/4 v2, -0x1

    .line 13
    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    .line 16
    const/16 v2, 0x1f

    .line 17
    .line 18
    if-eq v1, v2, :cond_0

    .line 19
    .line 20
    add-int/lit8 v1, v0, 0x4

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 24
    move-result v1

    .line 25
    .line 26
    and-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    shl-int/lit8 v1, v1, 0x6

    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x5

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 34
    move-result p0

    .line 35
    .line 36
    :goto_0
    and-int/lit16 p0, p0, 0xfc

    .line 37
    .line 38
    :goto_1
    shr-int/lit8 p0, p0, 0x2

    .line 39
    or-int/2addr p0, v1

    .line 40
    goto :goto_3

    .line 41
    .line 42
    :cond_0
    add-int/lit8 v1, v0, 0x5

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 46
    move-result v1

    .line 47
    .line 48
    and-int/lit8 v1, v1, 0x7

    .line 49
    .line 50
    shl-int/lit8 v1, v1, 0x4

    .line 51
    .line 52
    add-int/lit8 v0, v0, 0x6

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 56
    move-result p0

    .line 57
    .line 58
    :goto_2
    and-int/lit8 p0, p0, 0x3c

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_1
    add-int/lit8 v1, v0, 0x4

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 65
    move-result v1

    .line 66
    .line 67
    and-int/lit8 v1, v1, 0x7

    .line 68
    .line 69
    shl-int/lit8 v1, v1, 0x4

    .line 70
    .line 71
    add-int/lit8 v0, v0, 0x7

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 75
    move-result p0

    .line 76
    goto :goto_2

    .line 77
    .line 78
    :cond_2
    add-int/lit8 v1, v0, 0x5

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 82
    move-result v1

    .line 83
    .line 84
    and-int/lit8 v1, v1, 0x1

    .line 85
    .line 86
    shl-int/lit8 v1, v1, 0x6

    .line 87
    .line 88
    add-int/lit8 v0, v0, 0x4

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 92
    move-result p0

    .line 93
    goto :goto_0

    .line 94
    .line 95
    :goto_3
    add-int/lit8 p0, p0, 0x1

    .line 96
    .line 97
    mul-int/lit8 p0, p0, 0x20

    .line 98
    return p0
.end method

.method public static f([B)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    aget-byte v0, p0, v0

    .line 4
    const/4 v1, -0x2

    .line 5
    const/4 v2, 0x5

    .line 6
    const/4 v3, 0x6

    .line 7
    const/4 v4, 0x4

    .line 8
    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    const/4 v1, -0x1

    .line 11
    const/4 v5, 0x7

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/16 v1, 0x1f

    .line 16
    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    aget-byte v0, p0, v4

    .line 20
    .line 21
    and-int/lit8 v0, v0, 0x1

    .line 22
    shl-int/2addr v0, v3

    .line 23
    .line 24
    aget-byte p0, p0, v2

    .line 25
    .line 26
    :goto_0
    and-int/lit16 p0, p0, 0xfc

    .line 27
    .line 28
    :goto_1
    shr-int/lit8 p0, p0, 0x2

    .line 29
    or-int/2addr p0, v0

    .line 30
    goto :goto_3

    .line 31
    .line 32
    :cond_0
    aget-byte v0, p0, v2

    .line 33
    and-int/2addr v0, v5

    .line 34
    shl-int/2addr v0, v4

    .line 35
    .line 36
    aget-byte p0, p0, v3

    .line 37
    .line 38
    :goto_2
    and-int/lit8 p0, p0, 0x3c

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_1
    aget-byte v0, p0, v4

    .line 42
    and-int/2addr v0, v5

    .line 43
    shl-int/2addr v0, v4

    .line 44
    .line 45
    aget-byte p0, p0, v5

    .line 46
    goto :goto_2

    .line 47
    .line 48
    :cond_2
    aget-byte v0, p0, v2

    .line 49
    .line 50
    and-int/lit8 v0, v0, 0x1

    .line 51
    shl-int/2addr v0, v3

    .line 52
    .line 53
    aget-byte p0, p0, v4

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :goto_3
    add-int/lit8 p0, p0, 0x1

    .line 57
    .line 58
    mul-int/lit8 p0, p0, 0x20

    .line 59
    return p0
.end method

.method public static g([BLjava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/a2;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/e0;->b([B)Lcom/google/android/exoplayer2/util/b0;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    const/16 v0, 0x3c

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 10
    const/4 v0, 0x6

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    .line 14
    move-result v0

    .line 15
    .line 16
    sget-object v1, Lcom/google/android/exoplayer2/audio/e0;->CHANNELS_BY_AMODE:[I

    .line 17
    .line 18
    aget v0, v1, v0

    .line 19
    const/4 v1, 0x4

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    .line 23
    move-result v1

    .line 24
    .line 25
    sget-object v2, Lcom/google/android/exoplayer2/audio/e0;->SAMPLE_RATE_BY_SFREQ:[I

    .line 26
    .line 27
    aget v1, v2, v1

    .line 28
    const/4 v2, 0x5

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    .line 32
    move-result v2

    .line 33
    .line 34
    sget-object v3, Lcom/google/android/exoplayer2/audio/e0;->TWICE_BITRATE_KBPS_BY_RATE:[I

    .line 35
    array-length v4, v3

    .line 36
    const/4 v5, 0x2

    .line 37
    .line 38
    if-lt v2, v4, :cond_0

    .line 39
    const/4 v2, -0x1

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_0
    aget v2, v3, v2

    .line 43
    .line 44
    mul-int/lit16 v2, v2, 0x3e8

    .line 45
    div-int/2addr v2, v5

    .line 46
    .line 47
    :goto_0
    const/16 v3, 0xa

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    .line 54
    move-result p0

    .line 55
    .line 56
    if-lez p0, :cond_1

    .line 57
    const/4 p0, 0x1

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const/4 p0, 0x0

    .line 60
    :goto_1
    add-int/2addr v0, p0

    .line 61
    .line 62
    new-instance p0, Lcom/google/android/exoplayer2/a2$b;

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a2$b;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a2$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 69
    move-result-object p0

    .line 70
    .line 71
    const-string p1, "audio/vnd.dts"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a2$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 75
    move-result-object p0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/a2$b;->G(I)Lcom/google/android/exoplayer2/a2$b;

    .line 79
    move-result-object p0

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a2$b;->H(I)Lcom/google/android/exoplayer2/a2$b;

    .line 83
    move-result-object p0

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/a2$b;->f0(I)Lcom/google/android/exoplayer2/a2$b;

    .line 87
    move-result-object p0

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/a2$b;->M(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/a2$b;

    .line 91
    move-result-object p0

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/a2$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 95
    move-result-object p0

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 99
    move-result-object p0

    .line 100
    return-object p0
.end method
