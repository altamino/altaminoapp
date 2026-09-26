.class public Lorg/apache/commons/compress/archivers/tar/TarUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BYTE_MASK:I = 0xff

.field static final DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

.field static final FALLBACK_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 5
    move-result-object v0

    .line 6
    .line 7
    sput-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 8
    .line 9
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarUtils$1;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils$1;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->FALLBACK_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static computeCheckSum([B)J
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    .line 6
    :goto_0
    if-ge v3, v0, :cond_0

    .line 7
    .line 8
    aget-byte v4, p0, v3

    .line 9
    .line 10
    and-int/lit16 v4, v4, 0xff

    .line 11
    int-to-long v4, v4

    .line 12
    add-long/2addr v1, v4

    .line 13
    .line 14
    add-int/lit8 v3, v3, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-wide v1
.end method

.method private static exceptionMessage([BIIIB)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    .line 6
    .line 7
    const-string p0, "\u0000"

    .line 8
    .line 9
    const-string v1, "{NUL}"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    const-string v1, "Invalid byte "

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string p4, " at offset "

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    sub-int/2addr p3, p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string p1, " in \'"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string p0, "\' len="

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method

.method private static formatBigIntegerBinary(J[BIIZ)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 8
    move-result-object v0

    .line 9
    array-length v1, v0

    .line 10
    .line 11
    add-int/lit8 v2, p4, -0x1

    .line 12
    .line 13
    if-gt v1, v2, :cond_2

    .line 14
    add-int/2addr p4, p3

    .line 15
    sub-int/2addr p4, v1

    .line 16
    const/4 p0, 0x0

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p0, p2, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    .line 21
    if-eqz p5, :cond_0

    .line 22
    .line 23
    const/16 p0, 0xff

    .line 24
    :cond_0
    int-to-byte p0, p0

    .line 25
    .line 26
    :goto_0
    add-int/lit8 p3, p3, 0x1

    .line 27
    .line 28
    if-ge p3, p4, :cond_1

    .line 29
    .line 30
    aput-byte p0, p2, p3

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-void

    .line 33
    .line 34
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    new-instance p3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    const-string p5, "Value "

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string p0, " is too large for "

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string p0, " byte field."

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    .line 66
    .line 67
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    throw p2
.end method

.method public static formatCheckSumOctalBytes(J[BII)I
    .locals 1

    .line 1
    .line 2
    add-int/lit8 v0, p4, -0x2

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatUnsignedOctalString(J[BII)V

    .line 6
    .line 7
    add-int/lit8 p0, p4, -0x1

    .line 8
    add-int/2addr v0, p3

    .line 9
    const/4 p1, 0x0

    .line 10
    .line 11
    aput-byte p1, p2, v0

    .line 12
    add-int/2addr p0, p3

    .line 13
    .line 14
    const/16 p1, 0x20

    .line 15
    .line 16
    aput-byte p1, p2, p0

    .line 17
    add-int/2addr p3, p4

    .line 18
    return p3
.end method

.method private static formatLongBinary(J[BIIZ)V
    .locals 10

    .line 1
    .line 2
    add-int/lit8 v0, p4, -0x1

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    mul-int/2addr v0, v1

    .line 6
    .line 7
    const-wide/16 v2, 0x1

    .line 8
    .line 9
    shl-long v4, v2, v0

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    .line 13
    move-result-wide v6

    .line 14
    .line 15
    const-wide/16 v8, 0x0

    .line 16
    .line 17
    cmp-long v8, v6, v8

    .line 18
    .line 19
    if-ltz v8, :cond_2

    .line 20
    .line 21
    cmp-long v8, v6, v4

    .line 22
    .line 23
    if-gez v8, :cond_2

    .line 24
    .line 25
    if-eqz p5, :cond_0

    .line 26
    sub-long/2addr v4, v2

    .line 27
    .line 28
    xor-long p0, v6, v4

    .line 29
    add-long/2addr p0, v2

    .line 30
    .line 31
    const-wide/16 v2, 0xff

    .line 32
    shl-long/2addr v2, v0

    .line 33
    .line 34
    or-long v6, p0, v2

    .line 35
    :cond_0
    add-int/2addr p4, p3

    .line 36
    .line 37
    add-int/lit8 p4, p4, -0x1

    .line 38
    .line 39
    :goto_0
    if-lt p4, p3, :cond_1

    .line 40
    long-to-int p0, v6

    .line 41
    int-to-byte p0, p0

    .line 42
    .line 43
    aput-byte p0, p2, p4

    .line 44
    shr-long/2addr v6, v1

    .line 45
    .line 46
    add-int/lit8 p4, p4, -0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-void

    .line 49
    .line 50
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    new-instance p3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    const-string p5, "Value "

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string p0, " is too large for "

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string p0, " byte field."

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 81
    .line 82
    .line 83
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    throw p2
.end method

.method public static formatLongOctalBytes(J[BII)I
    .locals 1

    .line 1
    .line 2
    add-int/lit8 v0, p4, -0x1

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatUnsignedOctalString(J[BII)V

    .line 6
    add-int/2addr v0, p3

    .line 7
    .line 8
    const/16 p0, 0x20

    .line 9
    .line 10
    aput-byte p0, p2, v0

    .line 11
    add-int/2addr p3, p4

    .line 12
    return p3
.end method

.method public static formatLongOctalOrBinaryBytes(J[BII)I
    .locals 9

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    .line 4
    if-ne p4, v0, :cond_0

    .line 5
    .line 6
    .line 7
    const-wide/32 v0, 0x1fffff

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    :cond_0
    const-wide v0, 0x1ffffffffL

    .line 14
    .line 15
    :goto_0
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    cmp-long v2, p0, v2

    .line 18
    .line 19
    if-gez v2, :cond_1

    .line 20
    const/4 v2, 0x1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const/4 v2, 0x0

    .line 23
    .line 24
    :goto_1
    if-nez v2, :cond_2

    .line 25
    .line 26
    cmp-long v0, p0, v0

    .line 27
    .line 28
    if-gtz v0, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatLongOctalBytes(J[BII)I

    .line 32
    move-result p0

    .line 33
    return p0

    .line 34
    .line 35
    :cond_2
    const/16 v0, 0x9

    .line 36
    .line 37
    if-ge p4, v0, :cond_3

    .line 38
    move-wide v3, p0

    .line 39
    move-object v5, p2

    .line 40
    move v6, p3

    .line 41
    move v7, p4

    .line 42
    move v8, v2

    .line 43
    .line 44
    .line 45
    invoke-static/range {v3 .. v8}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatLongBinary(J[BIIZ)V

    .line 46
    goto :goto_2

    .line 47
    :cond_3
    move-wide v3, p0

    .line 48
    move-object v5, p2

    .line 49
    move v6, p3

    .line 50
    move v7, p4

    .line 51
    move v8, v2

    .line 52
    .line 53
    .line 54
    invoke-static/range {v3 .. v8}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatBigIntegerBinary(J[BIIZ)V

    .line 55
    .line 56
    :goto_2
    if-eqz v2, :cond_4

    .line 57
    .line 58
    const/16 p0, 0xff

    .line 59
    goto :goto_3

    .line 60
    .line 61
    :cond_4
    const/16 p0, 0x80

    .line 62
    :goto_3
    int-to-byte p0, p0

    .line 63
    .line 64
    aput-byte p0, p2, p3

    .line 65
    add-int/2addr p3, p4

    .line 66
    return p3
.end method

.method public static formatNameBytes(Ljava/lang/String;[BII)I
    .locals 1

    :try_start_0
    sget-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->FALLBACK_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 2
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)I

    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p0

    .line 3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static formatNameBytes(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 5
    invoke-interface {p4, p0}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 6
    :goto_0
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    const/4 v3, 0x0

    if-le v2, p3, :cond_0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 7
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result p0

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result p4

    sub-int/2addr p0, p4

    .line 9
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-static {p4, v0, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    if-ge p0, p3, :cond_1

    add-int p4, p2, p0

    .line 10
    aput-byte v3, p1, p4

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr p2, p3

    return p2
.end method

.method public static formatOctalBytes(J[BII)I
    .locals 1

    .line 1
    .line 2
    add-int/lit8 v0, p4, -0x2

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatUnsignedOctalString(J[BII)V

    .line 6
    .line 7
    add-int/lit8 p0, p4, -0x1

    .line 8
    add-int/2addr v0, p3

    .line 9
    .line 10
    const/16 p1, 0x20

    .line 11
    .line 12
    aput-byte p1, p2, v0

    .line 13
    add-int/2addr p0, p3

    .line 14
    const/4 p1, 0x0

    .line 15
    .line 16
    aput-byte p1, p2, p0

    .line 17
    add-int/2addr p3, p4

    .line 18
    return p3
.end method

.method public static formatUnsignedOctalString(J[BII)V
    .locals 9

    .line 1
    .line 2
    add-int/lit8 v0, p4, -0x1

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    cmp-long v3, p0, v1

    .line 7
    .line 8
    const/16 v4, 0x30

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    add-int/lit8 p4, p4, -0x2

    .line 13
    add-int/2addr v0, p3

    .line 14
    .line 15
    aput-byte v4, p2, v0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    move-wide v5, p0

    .line 18
    .line 19
    :goto_0
    if-ltz v0, :cond_1

    .line 20
    .line 21
    cmp-long v3, v5, v1

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    add-int v3, p3, v0

    .line 26
    .line 27
    const-wide/16 v7, 0x7

    .line 28
    and-long/2addr v7, v5

    .line 29
    long-to-int v7, v7

    .line 30
    int-to-byte v7, v7

    .line 31
    add-int/2addr v7, v4

    .line 32
    int-to-byte v7, v7

    .line 33
    .line 34
    aput-byte v7, p2, v3

    .line 35
    const/4 v3, 0x3

    .line 36
    ushr-long/2addr v5, v3

    .line 37
    .line 38
    add-int/lit8 v0, v0, -0x1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_1
    cmp-long v1, v5, v1

    .line 42
    .line 43
    if-nez v1, :cond_3

    .line 44
    move p4, v0

    .line 45
    .line 46
    :goto_1
    if-ltz p4, :cond_2

    .line 47
    .line 48
    add-int p0, p3, p4

    .line 49
    .line 50
    aput-byte v4, p2, p0

    .line 51
    .line 52
    add-int/lit8 p4, p4, -0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    return-void

    .line 55
    .line 56
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    new-instance p3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v0, "="

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-static {p0, p1}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string p0, " will not fit in octal number buffer of length "

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object p0

    .line 89
    .line 90
    .line 91
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 92
    throw p2
.end method

.method private static parseBinaryBigInteger([BIIZ)J
    .locals 4

    .line 1
    .line 2
    add-int/lit8 v0, p2, -0x1

    .line 3
    .line 4
    new-array v1, v0, [B

    .line 5
    .line 6
    add-int/lit8 v2, p1, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    .line 12
    new-instance p0, Ljava/math/BigInteger;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 16
    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    const-wide/16 v0, -0x1

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    .line 31
    move-result-object p0

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    .line 35
    move-result v0

    .line 36
    .line 37
    const/16 v1, 0x3f

    .line 38
    .line 39
    if-gt v0, v1, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    .line 43
    move-result-wide p0

    .line 44
    .line 45
    if-eqz p3, :cond_1

    .line 46
    neg-long p0, p0

    .line 47
    :cond_1
    return-wide p0

    .line 48
    .line 49
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    new-instance p3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    const-string v0, "At offset "

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string p1, ", "

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string p1, " byte binary number exceeds maximum signed long value"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    throw p0
.end method

.method private static parseBinaryLong([BIIZ)J
    .locals 7

    .line 1
    .line 2
    const/16 v0, 0x9

    .line 3
    .line 4
    if-ge p2, v0, :cond_3

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    const-wide/16 v1, 0x0

    .line 8
    move v3, v0

    .line 9
    .line 10
    :goto_0
    if-ge v3, p2, :cond_0

    .line 11
    .line 12
    const/16 v4, 0x8

    .line 13
    shl-long/2addr v1, v4

    .line 14
    .line 15
    add-int v4, p1, v3

    .line 16
    .line 17
    aget-byte v4, p0, v4

    .line 18
    .line 19
    and-int/lit16 v4, v4, 0xff

    .line 20
    int-to-long v4, v4

    .line 21
    add-long/2addr v1, v4

    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    if-eqz p3, :cond_1

    .line 27
    .line 28
    const-wide/16 p0, 0x1

    .line 29
    sub-long/2addr v1, p0

    .line 30
    sub-int/2addr p2, v0

    .line 31
    int-to-double v3, p2

    .line 32
    .line 33
    const-wide/high16 v5, 0x4020000000000000L    # 8.0

    .line 34
    mul-double/2addr v3, v5

    .line 35
    .line 36
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 37
    .line 38
    .line 39
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 40
    move-result-wide v3

    .line 41
    double-to-long v3, v3

    .line 42
    sub-long/2addr v3, p0

    .line 43
    xor-long/2addr v1, v3

    .line 44
    .line 45
    :cond_1
    if-eqz p3, :cond_2

    .line 46
    neg-long v1, v1

    .line 47
    :cond_2
    return-wide v1

    .line 48
    .line 49
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    new-instance p3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    const-string v0, "At offset "

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string p1, ", "

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string p1, " byte binary number exceeds maximum signed long value"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    throw p0
.end method

.method public static parseBoolean([BI)Z
    .locals 0

    .line 1
    .line 2
    aget-byte p0, p0, p1

    .line 3
    const/4 p1, 0x1

    .line 4
    .line 5
    if-ne p0, p1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    return p1
.end method

.method public static parseName([BII)Ljava/lang/String;
    .locals 1

    :try_start_0
    sget-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 1
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->FALLBACK_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 2
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v2, p1

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 4
    aget-byte v3, p0, v2

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    .line 5
    new-array p2, v1, [B

    .line 6
    invoke-static {p0, p1, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    invoke-interface {p3, p2}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static parseOctal([BII)J
    .locals 7

    .line 1
    .line 2
    add-int v0, p1, p2

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    if-lt p2, v1, :cond_6

    .line 6
    .line 7
    aget-byte v1, p0, p1

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    return-wide v2

    .line 13
    :cond_0
    move v1, p1

    .line 14
    .line 15
    :goto_0
    const/16 v4, 0x20

    .line 16
    .line 17
    if-ge v1, v0, :cond_1

    .line 18
    .line 19
    aget-byte v5, p0, v1

    .line 20
    .line 21
    if-ne v5, v4, :cond_1

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    add-int/lit8 v5, v0, -0x1

    .line 27
    .line 28
    aget-byte v5, p0, v5

    .line 29
    .line 30
    :goto_1
    if-ge v1, v0, :cond_3

    .line 31
    .line 32
    if-eqz v5, :cond_2

    .line 33
    .line 34
    if-ne v5, v4, :cond_3

    .line 35
    .line 36
    :cond_2
    add-int/lit8 v5, v0, -0x1

    .line 37
    .line 38
    add-int/lit8 v0, v0, -0x2

    .line 39
    .line 40
    aget-byte v0, p0, v0

    .line 41
    move v6, v5

    .line 42
    move v5, v0

    .line 43
    move v0, v6

    .line 44
    goto :goto_1

    .line 45
    .line 46
    :cond_3
    :goto_2
    if-ge v1, v0, :cond_5

    .line 47
    .line 48
    aget-byte v4, p0, v1

    .line 49
    .line 50
    const/16 v5, 0x30

    .line 51
    .line 52
    if-lt v4, v5, :cond_4

    .line 53
    .line 54
    const/16 v5, 0x37

    .line 55
    .line 56
    if-gt v4, v5, :cond_4

    .line 57
    const/4 v5, 0x3

    .line 58
    shl-long/2addr v2, v5

    .line 59
    .line 60
    add-int/lit8 v4, v4, -0x30

    .line 61
    int-to-long v4, v4

    .line 62
    add-long/2addr v2, v4

    .line 63
    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 65
    goto :goto_2

    .line 66
    .line 67
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 68
    .line 69
    .line 70
    invoke-static {p0, p1, p2, v1, v4}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->exceptionMessage([BIIIB)Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    throw v0

    .line 76
    :cond_5
    return-wide v2

    .line 77
    .line 78
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 79
    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    const-string v0, "Length "

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string p2, " must be at least 2"

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    throw p0
.end method

.method public static parseOctalOrBinary([BII)J
    .locals 2

    .line 1
    .line 2
    aget-byte v0, p0, p1

    .line 3
    .line 4
    and-int/lit16 v1, v0, 0x80

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctal([BII)J

    .line 10
    move-result-wide p0

    .line 11
    return-wide p0

    .line 12
    :cond_0
    const/4 v1, -0x1

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    .line 19
    :goto_0
    const/16 v1, 0x9

    .line 20
    .line 21
    if-ge p2, v1, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseBinaryLong([BIIZ)J

    .line 25
    move-result-wide p0

    .line 26
    return-wide p0

    .line 27
    .line 28
    .line 29
    :cond_2
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseBinaryBigInteger([BIIZ)J

    .line 30
    move-result-wide p0

    .line 31
    return-wide p0
.end method

.method public static verifyCheckSum([B)Z
    .locals 12

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    .line 4
    const/16 v1, 0x94

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v1, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctal([BII)J

    .line 8
    move-result-wide v2

    .line 9
    .line 10
    const-wide/16 v4, 0x0

    .line 11
    const/4 v0, 0x0

    .line 12
    move v8, v0

    .line 13
    move-wide v6, v4

    .line 14
    :goto_0
    array-length v9, p0

    .line 15
    .line 16
    if-ge v8, v9, :cond_1

    .line 17
    .line 18
    aget-byte v9, p0, v8

    .line 19
    .line 20
    if-gt v1, v8, :cond_0

    .line 21
    .line 22
    const/16 v10, 0x9c

    .line 23
    .line 24
    if-ge v8, v10, :cond_0

    .line 25
    .line 26
    const/16 v9, 0x20

    .line 27
    .line 28
    :cond_0
    and-int/lit16 v10, v9, 0xff

    .line 29
    int-to-long v10, v10

    .line 30
    add-long/2addr v4, v10

    .line 31
    int-to-long v9, v9

    .line 32
    add-long/2addr v6, v9

    .line 33
    .line 34
    add-int/lit8 v8, v8, 0x1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    cmp-long p0, v2, v4

    .line 38
    .line 39
    if-eqz p0, :cond_2

    .line 40
    .line 41
    cmp-long p0, v2, v6

    .line 42
    .line 43
    if-nez p0, :cond_3

    .line 44
    :cond_2
    const/4 v0, 0x1

    .line 45
    :cond_3
    return v0
.end method
