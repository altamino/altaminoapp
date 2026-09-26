.class public Lorg/apache/commons/compress/compressors/lz4/XXHash32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/zip/Checksum;


# static fields
.field private static final BUF_SIZE:I = 0x10

.field private static final PRIME1:I = -0x61c8864f

.field private static final PRIME2:I = -0x7a143589

.field private static final PRIME3:I = -0x3d4d51c3

.field private static final PRIME4:I = 0x27d4eb2f

.field private static final PRIME5:I = 0x165667b1

.field private static final ROTATE_BITS:I = 0xd


# instance fields
.field private final buffer:[B

.field private final oneByte:[B

.field private pos:I

.field private final seed:I

.field private final state:[I

.field private totalLen:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->oneByte:[B

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->state:[I

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->buffer:[B

    iput p1, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->seed:I

    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->initializeState()V

    return-void
.end method

.method private static getInt([BI)I
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1, v0}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian([BII)J

    .line 5
    move-result-wide p0

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const-wide v0, 0xffffffffL

    .line 11
    and-long/2addr p0, v0

    .line 12
    long-to-int p0, p0

    .line 13
    return p0
.end method

.method private initializeState()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->state:[I

    .line 3
    .line 4
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->seed:I

    .line 5
    .line 6
    .line 7
    const v2, 0x24234428

    .line 8
    add-int/2addr v2, v1

    .line 9
    const/4 v3, 0x0

    .line 10
    .line 11
    aput v2, v0, v3

    .line 12
    .line 13
    .line 14
    const v2, -0x7a143589

    .line 15
    add-int/2addr v2, v1

    .line 16
    const/4 v3, 0x1

    .line 17
    .line 18
    aput v2, v0, v3

    .line 19
    const/4 v2, 0x2

    .line 20
    .line 21
    aput v1, v0, v2

    .line 22
    .line 23
    .line 24
    const v2, -0x61c8864f

    .line 25
    sub-int/2addr v1, v2

    .line 26
    const/4 v2, 0x3

    .line 27
    .line 28
    aput v1, v0, v2

    .line 29
    return-void
.end method

.method private process([BI)V
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->state:[I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    aget v2, v0, v1

    .line 6
    const/4 v3, 0x1

    .line 7
    .line 8
    aget v4, v0, v3

    .line 9
    const/4 v5, 0x2

    .line 10
    .line 11
    aget v6, v0, v5

    .line 12
    const/4 v7, 0x3

    .line 13
    .line 14
    aget v0, v0, v7

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p2}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->getInt([BI)I

    .line 18
    move-result v8

    .line 19
    .line 20
    .line 21
    const v9, -0x7a143589

    .line 22
    mul-int/2addr v8, v9

    .line 23
    add-int/2addr v2, v8

    .line 24
    .line 25
    const/16 v8, 0xd

    .line 26
    .line 27
    .line 28
    invoke-static {v2, v8}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 29
    move-result v2

    .line 30
    .line 31
    .line 32
    const v10, -0x61c8864f

    .line 33
    mul-int/2addr v2, v10

    .line 34
    .line 35
    add-int/lit8 v11, p2, 0x4

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v11}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->getInt([BI)I

    .line 39
    move-result v11

    .line 40
    mul-int/2addr v11, v9

    .line 41
    add-int/2addr v4, v11

    .line 42
    .line 43
    .line 44
    invoke-static {v4, v8}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 45
    move-result v4

    .line 46
    mul-int/2addr v4, v10

    .line 47
    .line 48
    add-int/lit8 v11, p2, 0x8

    .line 49
    .line 50
    .line 51
    invoke-static {p1, v11}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->getInt([BI)I

    .line 52
    move-result v11

    .line 53
    mul-int/2addr v11, v9

    .line 54
    add-int/2addr v6, v11

    .line 55
    .line 56
    .line 57
    invoke-static {v6, v8}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 58
    move-result v6

    .line 59
    mul-int/2addr v6, v10

    .line 60
    .line 61
    add-int/lit8 p2, p2, 0xc

    .line 62
    .line 63
    .line 64
    invoke-static {p1, p2}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->getInt([BI)I

    .line 65
    move-result p1

    .line 66
    mul-int/2addr p1, v9

    .line 67
    add-int/2addr v0, p1

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v8}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 71
    move-result p1

    .line 72
    mul-int/2addr p1, v10

    .line 73
    .line 74
    iget-object p2, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->state:[I

    .line 75
    .line 76
    aput v2, p2, v1

    .line 77
    .line 78
    aput v4, p2, v3

    .line 79
    .line 80
    aput v6, p2, v5

    .line 81
    .line 82
    aput p1, p2, v7

    .line 83
    .line 84
    iput v1, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->pos:I

    .line 85
    return-void
.end method


# virtual methods
.method public getValue()J
    .locals 6

    .line 1
    .line 2
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->totalLen:I

    .line 3
    .line 4
    const/16 v1, 0x10

    .line 5
    .line 6
    .line 7
    const v2, 0x165667b1

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-le v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->state:[I

    .line 14
    .line 15
    aget v0, v0, v4

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 20
    move-result v0

    .line 21
    .line 22
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->state:[I

    .line 23
    .line 24
    aget v1, v5, v1

    .line 25
    const/4 v5, 0x7

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 29
    move-result v1

    .line 30
    add-int/2addr v0, v1

    .line 31
    .line 32
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->state:[I

    .line 33
    .line 34
    aget v1, v1, v3

    .line 35
    .line 36
    const/16 v3, 0xc

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 40
    move-result v1

    .line 41
    add-int/2addr v0, v1

    .line 42
    .line 43
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->state:[I

    .line 44
    const/4 v3, 0x3

    .line 45
    .line 46
    aget v1, v1, v3

    .line 47
    .line 48
    const/16 v3, 0x12

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 52
    move-result v1

    .line 53
    add-int/2addr v0, v1

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->state:[I

    .line 57
    .line 58
    aget v0, v0, v3

    .line 59
    add-int/2addr v0, v2

    .line 60
    .line 61
    :goto_0
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->totalLen:I

    .line 62
    add-int/2addr v0, v1

    .line 63
    .line 64
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->pos:I

    .line 65
    .line 66
    add-int/lit8 v1, v1, -0x4

    .line 67
    .line 68
    .line 69
    :goto_1
    const v3, -0x3d4d51c3

    .line 70
    .line 71
    if-gt v4, v1, :cond_1

    .line 72
    .line 73
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->buffer:[B

    .line 74
    .line 75
    .line 76
    invoke-static {v5, v4}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->getInt([BI)I

    .line 77
    move-result v5

    .line 78
    mul-int/2addr v5, v3

    .line 79
    add-int/2addr v0, v5

    .line 80
    .line 81
    const/16 v3, 0x11

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 85
    move-result v0

    .line 86
    .line 87
    .line 88
    const v3, 0x27d4eb2f

    .line 89
    mul-int/2addr v0, v3

    .line 90
    .line 91
    add-int/lit8 v4, v4, 0x4

    .line 92
    goto :goto_1

    .line 93
    .line 94
    :cond_1
    :goto_2
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->pos:I

    .line 95
    .line 96
    if-ge v4, v1, :cond_2

    .line 97
    .line 98
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->buffer:[B

    .line 99
    .line 100
    add-int/lit8 v5, v4, 0x1

    .line 101
    .line 102
    aget-byte v1, v1, v4

    .line 103
    .line 104
    and-int/lit16 v1, v1, 0xff

    .line 105
    mul-int/2addr v1, v2

    .line 106
    add-int/2addr v0, v1

    .line 107
    .line 108
    const/16 v1, 0xb

    .line 109
    .line 110
    .line 111
    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 112
    move-result v0

    .line 113
    .line 114
    .line 115
    const v1, -0x61c8864f

    .line 116
    mul-int/2addr v0, v1

    .line 117
    move v4, v5

    .line 118
    goto :goto_2

    .line 119
    .line 120
    :cond_2
    ushr-int/lit8 v1, v0, 0xf

    .line 121
    xor-int/2addr v0, v1

    .line 122
    .line 123
    .line 124
    const v1, -0x7a143589

    .line 125
    mul-int/2addr v0, v1

    .line 126
    .line 127
    ushr-int/lit8 v1, v0, 0xd

    .line 128
    xor-int/2addr v0, v1

    .line 129
    mul-int/2addr v0, v3

    .line 130
    .line 131
    ushr-int/lit8 v1, v0, 0x10

    .line 132
    xor-int/2addr v0, v1

    .line 133
    int-to-long v0, v0

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    const-wide v2, 0xffffffffL

    .line 139
    and-long/2addr v0, v2

    .line 140
    return-wide v0
.end method

.method public reset()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->initializeState()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->totalLen:I

    .line 7
    .line 8
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->pos:I

    .line 9
    return-void
.end method

.method public update(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->oneByte:[B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x0

    .line 1
    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->update([BII)V

    return-void
.end method

.method public update([BII)V
    .locals 4

    if-gtz p3, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->totalLen:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->totalLen:I

    add-int v0, p2, p3

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->pos:I

    add-int v2, v1, p3

    const/16 v3, 0x10

    if-ge v2, v3, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->buffer:[B

    .line 3
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->pos:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->pos:I

    return-void

    :cond_1
    const/4 p3, 0x0

    if-lez v1, :cond_2

    rsub-int/lit8 v2, v1, 0x10

    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->buffer:[B

    .line 4
    invoke-static {p1, p2, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->buffer:[B

    .line 5
    invoke-direct {p0, v1, p3}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->process([BI)V

    add-int/2addr p2, v2

    :cond_2
    add-int/lit8 v1, v0, -0x10

    :goto_0
    if-gt p2, v1, :cond_3

    .line 6
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->process([BI)V

    add-int/lit8 p2, p2, 0x10

    goto :goto_0

    :cond_3
    if-ge p2, v0, :cond_4

    sub-int/2addr v0, p2

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->pos:I

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->buffer:[B

    .line 7
    invoke-static {p1, p2, v1, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    return-void
.end method
