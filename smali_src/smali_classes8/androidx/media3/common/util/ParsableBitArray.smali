.class public final Landroidx/media3/common/util/ParsableBitArray;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# instance fields
.field private bitOffset:I

.field private byteLimit:I

.field private byteOffset:I

.field public data:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 3
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    iput p2, p0, Landroidx/media3/common/util/ParsableBitArray;->byteLimit:I

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 3
    .line 4
    if-ltz v0, :cond_1

    .line 5
    .line 6
    iget v1, p0, Landroidx/media3/common/util/ParsableBitArray;->byteLimit:I

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 21
    return-void
.end method


# virtual methods
.method public b()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->byteLimit:I

    iget v1, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public c()V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    .line 8
    iput v0, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 9
    .line 10
    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    iput v0, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Landroidx/media3/common/util/ParsableBitArray;->a()V

    .line 18
    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 11
    .line 12
    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 13
    return v0
.end method

.method public e()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public f(II)V
    .locals 8

    .line 1
    .line 2
    const/16 v0, 0x20

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ge p2, v0, :cond_0

    .line 6
    .line 7
    shl-int v0, v1, p2

    .line 8
    sub-int/2addr v0, v1

    .line 9
    and-int/2addr p1, v0

    .line 10
    .line 11
    :cond_0
    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 12
    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    rsub-int/lit8 v0, v0, 0x8

    .line 16
    .line 17
    .line 18
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 19
    move-result v0

    .line 20
    .line 21
    iget v3, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 22
    .line 23
    rsub-int/lit8 v4, v3, 0x8

    .line 24
    sub-int/2addr v4, v0

    .line 25
    .line 26
    .line 27
    const v5, 0xff00

    .line 28
    .line 29
    shr-int v3, v5, v3

    .line 30
    .line 31
    shl-int v5, v1, v4

    .line 32
    sub-int/2addr v5, v1

    .line 33
    or-int/2addr v3, v5

    .line 34
    .line 35
    iget-object v5, p0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    .line 36
    .line 37
    iget v6, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 38
    .line 39
    aget-byte v7, v5, v6

    .line 40
    and-int/2addr v3, v7

    .line 41
    int-to-byte v3, v3

    .line 42
    .line 43
    aput-byte v3, v5, v6

    .line 44
    .line 45
    sub-int v0, p2, v0

    .line 46
    .line 47
    ushr-int v7, p1, v0

    .line 48
    .line 49
    shl-int v4, v7, v4

    .line 50
    or-int/2addr v3, v4

    .line 51
    int-to-byte v3, v3

    .line 52
    .line 53
    aput-byte v3, v5, v6

    .line 54
    add-int/2addr v6, v1

    .line 55
    .line 56
    :goto_0
    if-le v0, v2, :cond_1

    .line 57
    .line 58
    iget-object v3, p0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    .line 59
    .line 60
    add-int/lit8 v4, v6, 0x1

    .line 61
    .line 62
    add-int/lit8 v5, v0, -0x8

    .line 63
    .line 64
    ushr-int v5, p1, v5

    .line 65
    int-to-byte v5, v5

    .line 66
    .line 67
    aput-byte v5, v3, v6

    .line 68
    .line 69
    add-int/lit8 v0, v0, -0x8

    .line 70
    move v6, v4

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_1
    rsub-int/lit8 v2, v0, 0x8

    .line 74
    .line 75
    iget-object v3, p0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    .line 76
    .line 77
    aget-byte v4, v3, v6

    .line 78
    .line 79
    shl-int v5, v1, v2

    .line 80
    sub-int/2addr v5, v1

    .line 81
    and-int/2addr v4, v5

    .line 82
    int-to-byte v4, v4

    .line 83
    .line 84
    aput-byte v4, v3, v6

    .line 85
    .line 86
    shl-int v0, v1, v0

    .line 87
    sub-int/2addr v0, v1

    .line 88
    and-int/2addr p1, v0

    .line 89
    shl-int/2addr p1, v2

    .line 90
    or-int/2addr p1, v4

    .line 91
    int-to-byte p1, p1

    .line 92
    .line 93
    aput-byte p1, v3, v6

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p2}, Landroidx/media3/common/util/ParsableBitArray;->r(I)V

    .line 97
    .line 98
    .line 99
    invoke-direct {p0}, Landroidx/media3/common/util/ParsableBitArray;->a()V

    .line 100
    return-void
.end method

.method public g()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    .line 3
    .line 4
    iget v1, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 5
    .line 6
    aget-byte v0, v0, v1

    .line 7
    .line 8
    const/16 v1, 0x80

    .line 9
    .line 10
    iget v2, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 11
    shr-int/2addr v1, v2

    .line 12
    and-int/2addr v0, v1

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->q()V

    .line 21
    return v0
.end method

.method public h(I)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    iget v1, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 7
    add-int/2addr v1, p1

    .line 8
    .line 9
    iput v1, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 10
    move v1, v0

    .line 11
    .line 12
    :goto_0
    iget v2, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 13
    .line 14
    const/16 v3, 0x8

    .line 15
    .line 16
    if-le v2, v3, :cond_1

    .line 17
    .line 18
    add-int/lit8 v2, v2, -0x8

    .line 19
    .line 20
    iput v2, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 21
    .line 22
    iget-object v3, p0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    .line 23
    .line 24
    iget v4, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 25
    .line 26
    add-int/lit8 v5, v4, 0x1

    .line 27
    .line 28
    iput v5, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 29
    .line 30
    aget-byte v3, v3, v4

    .line 31
    .line 32
    and-int/lit16 v3, v3, 0xff

    .line 33
    .line 34
    shl-int v2, v3, v2

    .line 35
    or-int/2addr v1, v2

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_1
    iget-object v4, p0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    .line 39
    .line 40
    iget v5, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 41
    .line 42
    aget-byte v4, v4, v5

    .line 43
    .line 44
    and-int/lit16 v4, v4, 0xff

    .line 45
    .line 46
    rsub-int/lit8 v6, v2, 0x8

    .line 47
    shr-int/2addr v4, v6

    .line 48
    or-int/2addr v1, v4

    .line 49
    .line 50
    rsub-int/lit8 p1, p1, 0x20

    .line 51
    const/4 v4, -0x1

    .line 52
    .line 53
    ushr-int p1, v4, p1

    .line 54
    and-int/2addr p1, v1

    .line 55
    .line 56
    if-ne v2, v3, :cond_2

    .line 57
    .line 58
    iput v0, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 59
    .line 60
    add-int/lit8 v5, v5, 0x1

    .line 61
    .line 62
    iput v5, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-direct {p0}, Landroidx/media3/common/util/ParsableBitArray;->a()V

    .line 66
    return p1
.end method

.method public i([BII)V
    .locals 7

    .line 1
    .line 2
    shr-int/lit8 v0, p3, 0x3

    .line 3
    add-int/2addr v0, p2

    .line 4
    .line 5
    :goto_0
    const/16 v1, 0xff

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    if-ge p2, v0, :cond_0

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    .line 12
    .line 13
    iget v4, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 14
    .line 15
    add-int/lit8 v5, v4, 0x1

    .line 16
    .line 17
    iput v5, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 18
    .line 19
    aget-byte v4, v3, v4

    .line 20
    .line 21
    iget v6, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 22
    shl-int/2addr v4, v6

    .line 23
    int-to-byte v4, v4

    .line 24
    .line 25
    aput-byte v4, p1, p2

    .line 26
    .line 27
    aget-byte v3, v3, v5

    .line 28
    and-int/2addr v1, v3

    .line 29
    sub-int/2addr v2, v6

    .line 30
    shr-int/2addr v1, v2

    .line 31
    or-int/2addr v1, v4

    .line 32
    int-to-byte v1, v1

    .line 33
    .line 34
    aput-byte v1, p1, p2

    .line 35
    .line 36
    add-int/lit8 p2, p2, 0x1

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    and-int/lit8 p2, p3, 0x7

    .line 40
    .line 41
    if-nez p2, :cond_1

    .line 42
    return-void

    .line 43
    .line 44
    :cond_1
    aget-byte p3, p1, v0

    .line 45
    .line 46
    shr-int v3, v1, p2

    .line 47
    and-int/2addr p3, v3

    .line 48
    int-to-byte p3, p3

    .line 49
    .line 50
    aput-byte p3, p1, v0

    .line 51
    .line 52
    iget v3, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 53
    .line 54
    add-int v4, v3, p2

    .line 55
    .line 56
    if-le v4, v2, :cond_2

    .line 57
    .line 58
    iget-object v4, p0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    .line 59
    .line 60
    iget v5, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 61
    .line 62
    add-int/lit8 v6, v5, 0x1

    .line 63
    .line 64
    iput v6, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 65
    .line 66
    aget-byte v4, v4, v5

    .line 67
    and-int/2addr v4, v1

    .line 68
    shl-int/2addr v4, v3

    .line 69
    or-int/2addr p3, v4

    .line 70
    int-to-byte p3, p3

    .line 71
    .line 72
    aput-byte p3, p1, v0

    .line 73
    sub-int/2addr v3, v2

    .line 74
    .line 75
    iput v3, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 76
    .line 77
    :cond_2
    iget p3, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 78
    add-int/2addr p3, p2

    .line 79
    .line 80
    iput p3, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 81
    .line 82
    iget-object v3, p0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    .line 83
    .line 84
    iget v4, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 85
    .line 86
    aget-byte v3, v3, v4

    .line 87
    and-int/2addr v1, v3

    .line 88
    .line 89
    rsub-int/lit8 v3, p3, 0x8

    .line 90
    shr-int/2addr v1, v3

    .line 91
    .line 92
    aget-byte v3, p1, v0

    .line 93
    .line 94
    rsub-int/lit8 p2, p2, 0x8

    .line 95
    .line 96
    shl-int p2, v1, p2

    .line 97
    int-to-byte p2, p2

    .line 98
    or-int/2addr p2, v3

    .line 99
    int-to-byte p2, p2

    .line 100
    .line 101
    aput-byte p2, p1, v0

    .line 102
    .line 103
    if-ne p3, v2, :cond_3

    .line 104
    const/4 p1, 0x0

    .line 105
    .line 106
    iput p1, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 107
    .line 108
    add-int/lit8 v4, v4, 0x1

    .line 109
    .line 110
    iput v4, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 111
    .line 112
    .line 113
    :cond_3
    invoke-direct {p0}, Landroidx/media3/common/util/ParsableBitArray;->a()V

    .line 114
    return-void
.end method

.method public j(I)J
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x20

    .line 3
    .line 4
    if-gt p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->h(I)I

    .line 8
    move-result p1

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroidx/media3/common/util/Util;->o1(I)J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    :cond_0
    sub-int/2addr p1, v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->h(I)I

    .line 18
    move-result p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->h(I)I

    .line 22
    move-result v0

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v0}, Landroidx/media3/common/util/Util;->n1(II)J

    .line 26
    move-result-wide v0

    .line 27
    return-wide v0
.end method

.method public k([BII)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    .line 13
    .line 14
    iget v1, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    .line 19
    iget p1, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 20
    add-int/2addr p1, p3

    .line 21
    .line 22
    iput p1, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Landroidx/media3/common/util/ParsableBitArray;->a()V

    .line 26
    return-void
.end method

.method public l(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-array v0, p1, [B

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1, p1}, Landroidx/media3/common/util/ParsableBitArray;->k([BII)V

    .line 7
    .line 8
    new-instance p1, Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 12
    return-object p1
.end method

.method public m(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->e()[B

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->g()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->o([BI)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->f()I

    .line 15
    move-result p1

    .line 16
    .line 17
    mul-int/lit8 p1, p1, 0x8

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->p(I)V

    .line 21
    return-void
.end method

.method public n([B)V
    .locals 1

    .line 1
    array-length v0, p1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->o([BI)V

    .line 5
    return-void
.end method

.method public o([BI)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    iput p1, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    iput p2, p0, Landroidx/media3/common/util/ParsableBitArray;->byteLimit:I

    return-void
.end method

.method public p(I)V
    .locals 1

    .line 1
    .line 2
    div-int/lit8 v0, p1, 0x8

    .line 3
    .line 4
    iput v0, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 5
    .line 6
    mul-int/lit8 v0, v0, 0x8

    .line 7
    sub-int/2addr p1, v0

    .line 8
    .line 9
    iput p1, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Landroidx/media3/common/util/ParsableBitArray;->a()V

    .line 13
    return-void
.end method

.method public q()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput v0, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 14
    .line 15
    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    iput v0, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-direct {p0}, Landroidx/media3/common/util/ParsableBitArray;->a()V

    .line 23
    return-void
.end method

.method public r(I)V
    .locals 3

    .line 1
    .line 2
    div-int/lit8 v0, p1, 0x8

    .line 3
    .line 4
    iget v1, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 5
    add-int/2addr v1, v0

    .line 6
    .line 7
    iput v1, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 8
    .line 9
    iget v2, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 10
    .line 11
    mul-int/lit8 v0, v0, 0x8

    .line 12
    sub-int/2addr p1, v0

    .line 13
    add-int/2addr v2, p1

    .line 14
    .line 15
    iput v2, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 16
    const/4 p1, 0x7

    .line 17
    .line 18
    if-le v2, p1, :cond_0

    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    iput v1, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 23
    .line 24
    add-int/lit8 v2, v2, -0x8

    .line 25
    .line 26
    iput v2, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-direct {p0}, Landroidx/media3/common/util/ParsableBitArray;->a()V

    .line 30
    return-void
.end method

.method public s(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->bitOffset:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 11
    .line 12
    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 13
    add-int/2addr v0, p1

    .line 14
    .line 15
    iput v0, p0, Landroidx/media3/common/util/ParsableBitArray;->byteOffset:I

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Landroidx/media3/common/util/ParsableBitArray;->a()V

    .line 19
    return-void
.end method
