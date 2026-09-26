.class Lorg/apache/commons/compress/archivers/cpio/CpioUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method static byteArray2long([BZ)J
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    .line 3
    rem-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-nez v0, :cond_2

    .line 6
    array-length v0, p0

    .line 7
    .line 8
    new-array v1, v0, [B

    .line 9
    array-length v2, p0

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    move p0, v3

    .line 17
    .line 18
    :goto_0
    if-ge p0, v0, :cond_0

    .line 19
    .line 20
    aget-byte p1, v1, p0

    .line 21
    .line 22
    add-int/lit8 v2, p0, 0x1

    .line 23
    .line 24
    aget-byte v4, v1, v2

    .line 25
    .line 26
    aput-byte v4, v1, p0

    .line 27
    .line 28
    aput-byte p1, v1, v2

    .line 29
    .line 30
    add-int/lit8 p0, p0, 0x2

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    aget-byte p0, v1, v3

    .line 34
    .line 35
    and-int/lit16 p0, p0, 0xff

    .line 36
    int-to-long p0, p0

    .line 37
    const/4 v2, 0x1

    .line 38
    .line 39
    :goto_1
    if-ge v2, v0, :cond_1

    .line 40
    .line 41
    const/16 v3, 0x8

    .line 42
    shl-long/2addr p0, v3

    .line 43
    .line 44
    aget-byte v3, v1, v2

    .line 45
    .line 46
    and-int/lit16 v3, v3, 0xff

    .line 47
    int-to-long v3, v3

    .line 48
    or-long/2addr p0, v3

    .line 49
    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    return-wide p0

    .line 53
    .line 54
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 58
    throw p0
.end method

.method static fileType(J)J
    .locals 2

    const-wide/32 v0, 0xf000

    and-long/2addr p0, v0

    return-wide p0
.end method

.method static long2byteArray(JIZ)[B
    .locals 4

    .line 1
    .line 2
    new-array v0, p2, [B

    .line 3
    .line 4
    rem-int/lit8 v1, p2, 0x2

    .line 5
    .line 6
    if-nez v1, :cond_2

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    if-lt p2, v1, :cond_2

    .line 10
    .line 11
    add-int/lit8 v1, p2, -0x1

    .line 12
    .line 13
    :goto_0
    if-ltz v1, :cond_0

    .line 14
    .line 15
    const-wide/16 v2, 0xff

    .line 16
    and-long/2addr v2, p0

    .line 17
    long-to-int v2, v2

    .line 18
    int-to-byte v2, v2

    .line 19
    .line 20
    aput-byte v2, v0, v1

    .line 21
    .line 22
    const/16 v2, 0x8

    .line 23
    shr-long/2addr p0, v2

    .line 24
    .line 25
    add-int/lit8 v1, v1, -0x1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    if-nez p3, :cond_1

    .line 29
    const/4 p0, 0x0

    .line 30
    .line 31
    :goto_1
    if-ge p0, p2, :cond_1

    .line 32
    .line 33
    aget-byte p1, v0, p0

    .line 34
    .line 35
    add-int/lit8 p3, p0, 0x1

    .line 36
    .line 37
    aget-byte v1, v0, p3

    .line 38
    .line 39
    aput-byte v1, v0, p0

    .line 40
    .line 41
    aput-byte p1, v0, p3

    .line 42
    .line 43
    add-int/lit8 p0, p0, 0x2

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    return-object v0

    .line 46
    .line 47
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 51
    throw p0
.end method
