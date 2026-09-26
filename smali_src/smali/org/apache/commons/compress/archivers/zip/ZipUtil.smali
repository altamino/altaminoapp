.class public abstract Lorg/apache/commons/compress/archivers/zip/ZipUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DOS_TIME_MIN:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const-wide/16 v0, 0x2100

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->DOS_TIME_MIN:[B

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static adjustToLong(I)J
    .locals 4

    if-gez p0, :cond_0

    const-wide v0, 0x100000000L

    int-to-long v2, p0

    add-long/2addr v2, v0

    return-wide v2

    :cond_0
    int-to-long v0, p0

    return-wide v0
.end method

.method static bigToLong(Ljava/math/BigInteger;)J
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0x3f

    .line 7
    .line 8
    if-gt v0, v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    .line 15
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    const-string v2, "The BigInteger cannot fit inside a 64 bit java long: ["

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string p0, "]"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 41
    throw v0
.end method

.method static canHandleEntryData(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->supportsEncryptionOf(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->supportsMethodOf(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    .line 10
    move-result p0

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method static checkRequestedFeatures(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->supportsEncryptionOf(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->supportsMethodOf(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    .line 16
    move-result v0

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getMethodByCode(I)Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;

    .line 25
    .line 26
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;->METHOD:Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1, p0}, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;-><init>(Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 30
    throw v0

    .line 31
    .line 32
    :cond_0
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v0, p0}, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipMethod;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 36
    throw v1

    .line 37
    :cond_1
    return-void

    .line 38
    .line 39
    :cond_2
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;

    .line 40
    .line 41
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;->ENCRYPTION:Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1, p0}, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;-><init>(Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 45
    throw v0
.end method

.method static copy([B[BI)V
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 3
    array-length v1, p0

    invoke-static {p0, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method static copy([B)[B
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    array-length v0, p0

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 2
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static dosToJavaTime(J)J
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const/16 v1, 0x19

    .line 7
    .line 8
    shr-long v1, p0, v1

    .line 9
    .line 10
    const-wide/16 v3, 0x7f

    .line 11
    and-long/2addr v1, v3

    .line 12
    long-to-int v1, v1

    .line 13
    .line 14
    add-int/lit16 v1, v1, 0x7bc

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 19
    .line 20
    const/16 v1, 0x15

    .line 21
    .line 22
    shr-long v3, p0, v1

    .line 23
    .line 24
    const-wide/16 v5, 0xf

    .line 25
    and-long/2addr v3, v5

    .line 26
    long-to-int v1, v3

    .line 27
    sub-int/2addr v1, v2

    .line 28
    const/4 v3, 0x2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 32
    .line 33
    const/16 v1, 0x10

    .line 34
    .line 35
    shr-long v3, p0, v1

    .line 36
    long-to-int v1, v3

    .line 37
    .line 38
    and-int/lit8 v1, v1, 0x1f

    .line 39
    const/4 v3, 0x5

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 43
    .line 44
    const/16 v1, 0xb

    .line 45
    .line 46
    shr-long v4, p0, v1

    .line 47
    long-to-int v4, v4

    .line 48
    .line 49
    and-int/lit8 v4, v4, 0x1f

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 53
    .line 54
    shr-long v3, p0, v3

    .line 55
    long-to-int v1, v3

    .line 56
    .line 57
    and-int/lit8 v1, v1, 0x3f

    .line 58
    .line 59
    const/16 v3, 0xc

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 63
    shl-long/2addr p0, v2

    .line 64
    long-to-int p0, p0

    .line 65
    .line 66
    and-int/lit8 p0, p0, 0x3e

    .line 67
    .line 68
    const/16 p1, 0xd

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    .line 72
    .line 73
    const/16 p0, 0xe

    .line 74
    const/4 p1, 0x0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 81
    move-result-object p0

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 85
    move-result-wide p0

    .line 86
    return-wide p0
.end method

.method public static fromDosTime(Lorg/apache/commons/compress/archivers/zip/ZipLong;)Ljava/util/Date;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    new-instance p0, Ljava/util/Date;

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->dosToJavaTime(J)J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 14
    return-object p0
.end method

.method private static getUnicodeStringIfOriginalMatches(Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;[B)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    new-instance v1, Ljava/util/zip/CRC32;

    .line 6
    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/util/zip/CRC32;->update([B)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    .line 15
    move-result-wide v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->getNameCRC32()J

    .line 19
    move-result-wide v3

    .line 20
    .line 21
    cmp-long p1, v1, v3

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    :try_start_0
    sget-object p1, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->UTF8_ZIP_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->getUnicodeName()[B

    .line 29
    move-result-object p0

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, p0}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    .line 33
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return-object p0

    .line 35
    :catch_0
    :cond_0
    return-object v0
.end method

.method static longToBig(J)Ljava/math/BigInteger;
    .locals 3

    .line 1
    .line 2
    .line 3
    const-wide/32 v0, -0x80000000

    .line 4
    .line 5
    cmp-long v0, p0, v0

    .line 6
    .line 7
    if-ltz v0, :cond_1

    .line 8
    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    cmp-long v1, p0, v1

    .line 12
    .line 13
    if-gez v1, :cond_0

    .line 14
    .line 15
    if-ltz v0, :cond_0

    .line 16
    long-to-int p0, p0

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->adjustToLong(I)J

    .line 20
    move-result-wide p0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    .line 27
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    const-string v2, "Negative longs < -2^31 not permitted: ["

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string p0, "]"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    throw v0
.end method

.method public static reverse([B)[B
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p0

    .line 6
    .line 7
    div-int/lit8 v2, v2, 0x2

    .line 8
    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    aget-byte v2, p0, v1

    .line 12
    .line 13
    sub-int v3, v0, v1

    .line 14
    .line 15
    aget-byte v4, p0, v3

    .line 16
    .line 17
    aput-byte v4, p0, v1

    .line 18
    .line 19
    aput-byte v2, p0, v3

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-object p0
.end method

.method static setNameAndCommentFromExtraFields(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;[B[B)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/UnicodePathExtraField;->UPATH_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lorg/apache/commons/compress/archivers/zip/UnicodePathExtraField;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->getUnicodeStringIfOriginalMatches(Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;[B)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setName(Ljava/lang/String;)V

    .line 18
    .line 19
    sget-object p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;->UNICODE_EXTRA_FIELD:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setNameSource(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;)V

    .line 23
    .line 24
    :cond_0
    if-eqz p2, :cond_1

    .line 25
    array-length p1, p2

    .line 26
    .line 27
    if-lez p1, :cond_1

    .line 28
    .line 29
    sget-object p1, Lorg/apache/commons/compress/archivers/zip/UnicodeCommentExtraField;->UCOM_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/UnicodeCommentExtraField;

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->getUnicodeStringIfOriginalMatches(Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;[B)Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    .line 45
    .line 46
    sget-object p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;->UNICODE_EXTRA_FIELD:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCommentSource(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;)V

    .line 50
    :cond_1
    return-void
.end method

.method public static signedByteToUnsignedInt(B)I
    .locals 0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    add-int/lit16 p0, p0, 0x100

    return p0
.end method

.method private static supportsEncryptionOf(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->usesEncryption()Z

    .line 8
    move-result p0

    .line 9
    .line 10
    xor-int/lit8 p0, p0, 0x1

    .line 11
    return p0
.end method

.method private static supportsMethodOf(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    .line 10
    move-result v0

    .line 11
    .line 12
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->UNSHRINKING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    .line 22
    move-result v0

    .line 23
    .line 24
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->IMPLODING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eq v0, v1, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    .line 34
    move-result v0

    .line 35
    .line 36
    const/16 v1, 0x8

    .line 37
    .line 38
    if-eq v0, v1, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    .line 42
    move-result v0

    .line 43
    .line 44
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->ENHANCED_DEFLATED:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    .line 48
    move-result v1

    .line 49
    .line 50
    if-eq v0, v1, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    .line 54
    move-result p0

    .line 55
    .line 56
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->BZIP2:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    .line 60
    move-result v0

    .line 61
    .line 62
    if-ne p0, v0, :cond_0

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const/4 p0, 0x0

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 67
    :goto_1
    return p0
.end method

.method public static toDosTime(Ljava/util/Date;)Lorg/apache/commons/compress/archivers/zip/ZipLong;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->toDosTime(J)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([B)V

    return-object v0
.end method

.method public static toDosTime(J[BI)V
    .locals 1

    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->toDosTime(Ljava/util/Calendar;J[BI)V

    return-void
.end method

.method static toDosTime(Ljava/util/Calendar;J[BI)V
    .locals 3

    .line 4
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/16 v0, 0x7bc

    if-ge p2, v0, :cond_0

    sget-object p0, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->DOS_TIME_MIN:[B

    const/4 p1, 0x0

    .line 6
    array-length p2, p0

    invoke-static {p0, p1, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 7
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, p1

    sub-int/2addr p2, v0

    shl-int/lit8 p2, p2, 0x19

    shl-int/lit8 v0, v1, 0x15

    or-int/2addr p2, v0

    const/4 v0, 0x5

    .line 8
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr p2, v1

    const/16 v1, 0xb

    .line 9
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    shl-int/lit8 v1, v2, 0xb

    or-int/2addr p2, v1

    const/16 v1, 0xc

    .line 10
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x5

    or-int/2addr p2, v0

    const/16 v0, 0xd

    .line 11
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    shr-int/2addr p0, p1

    or-int/2addr p0, p2

    int-to-long p0, p0

    .line 12
    invoke-static {p0, p1, p3, p4}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong(J[BI)V

    return-void
.end method

.method public static toDosTime(J)[B
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->toDosTime(J[BI)V

    return-object v0
.end method

.method public static unsignedIntToSignedByte(I)B
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0xff

    .line 3
    .line 4
    if-gt p0, v0, :cond_1

    .line 5
    .line 6
    if-ltz p0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x80

    .line 9
    .line 10
    if-ge p0, v0, :cond_0

    .line 11
    int-to-byte p0, p0

    .line 12
    return p0

    .line 13
    .line 14
    :cond_0
    add-int/lit16 p0, p0, -0x100

    .line 15
    int-to-byte p0, p0

    .line 16
    return p0

    .line 17
    .line 18
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    const-string v2, "Can only convert non-negative integers between [0,255] to byte: ["

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string p0, "]"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    throw v0
.end method
