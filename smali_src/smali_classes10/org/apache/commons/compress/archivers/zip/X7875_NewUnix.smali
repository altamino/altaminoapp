.class public Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field private static final ONE_THOUSAND:Ljava/math/BigInteger;

.field private static final ZERO:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private gid:Ljava/math/BigInteger;

.field private uid:Ljava/math/BigInteger;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 3
    .line 4
    const/16 v1, 0x7875

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    .line 8
    .line 9
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 10
    .line 11
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    .line 16
    .line 17
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 18
    .line 19
    const-wide/16 v0, 0x3e8

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->ONE_THOUSAND:Ljava/math/BigInteger;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->version:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->reset()V

    .line 10
    return-void
.end method

.method private reset()V
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->ONE_THOUSAND:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    return-void
.end method

.method static trimLeadingZeroesForceMinLength([B)[B
    .locals 4

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-object p0

    .line 4
    :cond_0
    array-length v0, p0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    aget-byte v3, p0, v1

    .line 11
    .line 12
    if-nez v3, :cond_1

    .line 13
    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    array-length v0, p0

    .line 19
    sub-int/2addr v0, v2

    .line 20
    const/4 v1, 0x1

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 24
    move-result v0

    .line 25
    .line 26
    new-array v1, v0, [B

    .line 27
    array-length v3, p0

    .line 28
    sub-int/2addr v3, v2

    .line 29
    .line 30
    sub-int v3, v0, v3

    .line 31
    sub-int/2addr v0, v3

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    return-object v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;

    .line 8
    .line 9
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->version:I

    .line 10
    .line 11
    iget v2, p1, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->version:I

    .line 12
    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    .line 16
    .line 17
    iget-object v2, p1, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    .line 26
    .line 27
    iget-object p1, p1, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result p1

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    const/4 v1, 0x1

    .line 35
    :cond_0
    return v1
.end method

.method public getCentralDirectoryData()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object v0
.end method

.method public getGID()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->bigToLong(Ljava/math/BigInteger;)J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->trimLeadingZeroesForceMinLength([B)[B

    .line 16
    move-result-object v0

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    array-length v3, v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v3, v2

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->trimLeadingZeroesForceMinLength([B)[B

    .line 26
    move-result-object v1

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    array-length v4, v1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v4, v2

    .line 32
    .line 33
    :goto_1
    add-int/lit8 v5, v3, 0x3

    .line 34
    add-int/2addr v5, v4

    .line 35
    .line 36
    new-array v5, v5, [B

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->reverse([B)[B

    .line 42
    .line 43
    :cond_2
    if-eqz v1, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->reverse([B)[B

    .line 47
    .line 48
    :cond_3
    iget v6, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->version:I

    .line 49
    .line 50
    .line 51
    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->unsignedIntToSignedByte(I)B

    .line 52
    move-result v6

    .line 53
    .line 54
    aput-byte v6, v5, v2

    .line 55
    .line 56
    .line 57
    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->unsignedIntToSignedByte(I)B

    .line 58
    move-result v6

    .line 59
    const/4 v7, 0x1

    .line 60
    .line 61
    aput-byte v6, v5, v7

    .line 62
    const/4 v6, 0x2

    .line 63
    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    :cond_4
    add-int/2addr v6, v3

    .line 69
    .line 70
    add-int/lit8 v3, v3, 0x3

    .line 71
    .line 72
    .line 73
    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->unsignedIntToSignedByte(I)B

    .line 74
    move-result v0

    .line 75
    .line 76
    aput-byte v0, v5, v6

    .line 77
    .line 78
    if-eqz v1, :cond_5

    .line 79
    .line 80
    .line 81
    invoke-static {v1, v2, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    :cond_5
    return-object v5
.end method

.method public getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->trimLeadingZeroesForceMinLength([B)[B

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    move v0, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    array-length v0, v0

    .line 17
    .line 18
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->trimLeadingZeroesForceMinLength([B)[B

    .line 26
    move-result-object v2

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    array-length v1, v2

    .line 31
    .line 32
    :goto_1
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x3

    .line 35
    add-int/2addr v0, v1

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    .line 39
    return-object v2
.end method

.method public getUID()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->bigToLong(Ljava/math/BigInteger;)J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    .line 3
    const v0, -0x12d687

    .line 4
    .line 5
    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->version:I

    .line 6
    mul-int/2addr v1, v0

    .line 7
    .line 8
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    .line 12
    move-result v0

    .line 13
    .line 14
    const/16 v2, 0x10

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 18
    move-result v0

    .line 19
    xor-int/2addr v0, v1

    .line 20
    .line 21
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    .line 25
    move-result v1

    .line 26
    xor-int/2addr v0, v1

    .line 27
    return v0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->reset()V

    .line 4
    .line 5
    add-int/lit8 p3, p2, 0x1

    .line 6
    .line 7
    aget-byte v0, p1, p2

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->signedByteToUnsignedInt(B)I

    .line 11
    move-result v0

    .line 12
    .line 13
    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->version:I

    .line 14
    .line 15
    add-int/lit8 p2, p2, 0x2

    .line 16
    .line 17
    aget-byte p3, p1, p3

    .line 18
    .line 19
    .line 20
    invoke-static {p3}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->signedByteToUnsignedInt(B)I

    .line 21
    move-result p3

    .line 22
    .line 23
    new-array v0, p3, [B

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    add-int/2addr p2, p3

    .line 29
    .line 30
    new-instance p3, Ljava/math/BigInteger;

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->reverse([B)[B

    .line 34
    move-result-object v0

    .line 35
    const/4 v2, 0x1

    .line 36
    .line 37
    .line 38
    invoke-direct {p3, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 39
    .line 40
    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    .line 41
    .line 42
    add-int/lit8 p3, p2, 0x1

    .line 43
    .line 44
    aget-byte p2, p1, p2

    .line 45
    .line 46
    .line 47
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->signedByteToUnsignedInt(B)I

    .line 48
    move-result p2

    .line 49
    .line 50
    new-array v0, p2, [B

    .line 51
    .line 52
    .line 53
    invoke-static {p1, p3, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    .line 55
    new-instance p1, Ljava/math/BigInteger;

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->reverse([B)[B

    .line 59
    move-result-object p2

    .line 60
    .line 61
    .line 62
    invoke-direct {p1, v2, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 63
    .line 64
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    .line 65
    return-void
.end method

.method public setGID(J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->longToBig(J)Ljava/math/BigInteger;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    .line 7
    return-void
.end method

.method public setUID(J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->longToBig(J)Ljava/math/BigInteger;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    .line 7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "0x7875 Zip Extra Field: UID="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, " GID="

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method
