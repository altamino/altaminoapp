.class public Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;


# static fields
.field private static final EMPTY:[B

.field static final HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field private static final LFH_MUST_HAVE_BOTH_SIZES_MSG:Ljava/lang/String; = "Zip64 extended information must contain both size values in the local file header."


# instance fields
.field private compressedSize:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

.field private diskStart:Lorg/apache/commons/compress/archivers/zip/ZipLong;

.field private rawCentralDirectoryData:[B

.field private relativeHeaderOffset:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

.field private size:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    .line 7
    .line 8
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    new-array v0, v0, [B

    .line 12
    .line 13
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->EMPTY:[B

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;Lorg/apache/commons/compress/archivers/zip/ZipLong;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;Lorg/apache/commons/compress/archivers/zip/ZipLong;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iput-object p4, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->diskStart:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    return-void
.end method

.method private addSizes([B)I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes()[B

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    .line 19
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes()[B

    .line 25
    move-result-object v3

    .line 26
    .line 27
    .line 28
    invoke-static {v3, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x8

    .line 31
    :cond_1
    return v0
.end method


# virtual methods
.method public getCentralDirectoryData()[B
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue()I

    .line 8
    move-result v0

    .line 9
    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->addSizes([B)I

    .line 14
    move-result v1

    .line 15
    .line 16
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 17
    const/4 v3, 0x0

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes()[B

    .line 23
    move-result-object v2

    .line 24
    .line 25
    const/16 v4, 0x8

    .line 26
    .line 27
    .line 28
    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x8

    .line 31
    .line 32
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->diskStart:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    .line 38
    move-result-object v2

    .line 39
    const/4 v4, 0x4

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    :cond_1
    return-object v0
.end method

.method public getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 5
    .line 6
    const/16 v2, 0x8

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    move v1, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v1, v3

    .line 13
    .line 14
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 15
    .line 16
    if-eqz v4, :cond_1

    .line 17
    move v4, v2

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move v4, v3

    .line 20
    :goto_1
    add-int/2addr v1, v4

    .line 21
    .line 22
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 23
    .line 24
    if-eqz v4, :cond_2

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move v2, v3

    .line 27
    :goto_2
    add-int/2addr v1, v2

    .line 28
    .line 29
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->diskStart:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 30
    .line 31
    if-eqz v2, :cond_3

    .line 32
    const/4 v3, 0x4

    .line 33
    :cond_3
    add-int/2addr v1, v3

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    .line 37
    return-object v0
.end method

.method public getCompressedSize()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-object v0
.end method

.method public getDiskStartNumber()Lorg/apache/commons/compress/archivers/zip/ZipLong;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->diskStart:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    return-object v0
.end method

.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->EMPTY:[B

    .line 12
    return-object v0

    .line 13
    .line 14
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    const/16 v0, 0x10

    .line 21
    .line 22
    new-array v0, v0, [B

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->addSizes([B)I

    .line 26
    return-object v0

    .line 27
    .line 28
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    const-string v1, "Zip64 extended information must contain both size values in the local file header."

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    throw v0
.end method

.method public getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/16 v1, 0x10

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    .line 14
    return-object v0
.end method

.method public getRelativeHeaderOffset()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-object v0
.end method

.method public getSize()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-object v0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 1
    .line 2
    new-array v0, p3, [B

    .line 3
    .line 4
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    .line 10
    const/16 v0, 0x1c

    .line 11
    .line 12
    if-lt p3, v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->parseFromLocalFileData([BII)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    const/16 v0, 0x18

    .line 19
    .line 20
    if-ne p3, v0, :cond_1

    .line 21
    .line 22
    new-instance p3, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 23
    .line 24
    .line 25
    invoke-direct {p3, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    .line 26
    .line 27
    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 28
    .line 29
    add-int/lit8 p3, p2, 0x8

    .line 30
    .line 31
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    .line 35
    .line 36
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 37
    .line 38
    add-int/lit8 p2, p2, 0x10

    .line 39
    .line 40
    new-instance p3, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 41
    .line 42
    .line 43
    invoke-direct {p3, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    .line 44
    .line 45
    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_1
    rem-int/lit8 v0, p3, 0x8

    .line 49
    const/4 v1, 0x4

    .line 50
    .line 51
    if-ne v0, v1, :cond_2

    .line 52
    .line 53
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 54
    add-int/2addr p2, p3

    .line 55
    sub-int/2addr p2, v1

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([BI)V

    .line 59
    .line 60
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->diskStart:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 61
    :cond_2
    :goto_0
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
    if-nez p3, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    const/16 v0, 0x10

    .line 6
    .line 7
    if-lt p3, v0, :cond_3

    .line 8
    .line 9
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    .line 13
    .line 14
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 15
    .line 16
    add-int/lit8 v0, p2, 0x8

    .line 17
    .line 18
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    .line 22
    .line 23
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 24
    .line 25
    add-int/lit8 v0, p2, 0x10

    .line 26
    .line 27
    add-int/lit8 v1, p3, -0x10

    .line 28
    .line 29
    const/16 v2, 0x8

    .line 30
    .line 31
    if-lt v1, v2, :cond_1

    .line 32
    .line 33
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    .line 37
    .line 38
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 39
    .line 40
    add-int/lit8 v0, p2, 0x18

    .line 41
    .line 42
    add-int/lit8 v1, p3, -0x18

    .line 43
    :cond_1
    const/4 p2, 0x4

    .line 44
    .line 45
    if-lt v1, p2, :cond_2

    .line 46
    .line 47
    new-instance p2, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 48
    .line 49
    .line 50
    invoke-direct {p2, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([BI)V

    .line 51
    .line 52
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->diskStart:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 53
    :cond_2
    return-void

    .line 54
    .line 55
    :cond_3
    new-instance p1, Ljava/util/zip/ZipException;

    .line 56
    .line 57
    const-string p2, "Zip64 extended information must contain both size values in the local file header."

    .line 58
    .line 59
    .line 60
    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 61
    throw p1
.end method

.method public reparseCentralDirectoryData(ZZZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    .line 3
    .line 4
    if-eqz v0, :cond_8

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    move v3, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v3, v1

    .line 13
    .line 14
    :goto_0
    if-eqz p2, :cond_1

    .line 15
    move v4, v2

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move v4, v1

    .line 18
    :goto_1
    add-int/2addr v3, v4

    .line 19
    .line 20
    if-eqz p3, :cond_2

    .line 21
    move v4, v2

    .line 22
    goto :goto_2

    .line 23
    :cond_2
    move v4, v1

    .line 24
    :goto_2
    add-int/2addr v3, v4

    .line 25
    .line 26
    if-eqz p4, :cond_3

    .line 27
    const/4 v4, 0x4

    .line 28
    goto :goto_3

    .line 29
    :cond_3
    move v4, v1

    .line 30
    :goto_3
    add-int/2addr v3, v4

    .line 31
    array-length v0, v0

    .line 32
    .line 33
    if-lt v0, v3, :cond_7

    .line 34
    .line 35
    if-eqz p1, :cond_4

    .line 36
    .line 37
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 38
    .line 39
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    .line 43
    .line 44
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 45
    move v1, v2

    .line 46
    .line 47
    :cond_4
    if-eqz p2, :cond_5

    .line 48
    .line 49
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 50
    .line 51
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, p2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    .line 55
    .line 56
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 57
    .line 58
    add-int/lit8 v1, v1, 0x8

    .line 59
    .line 60
    :cond_5
    if-eqz p3, :cond_6

    .line 61
    .line 62
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 63
    .line 64
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    .line 65
    .line 66
    .line 67
    invoke-direct {p1, p2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    .line 68
    .line 69
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 70
    .line 71
    add-int/lit8 v1, v1, 0x8

    .line 72
    .line 73
    :cond_6
    if-eqz p4, :cond_8

    .line 74
    .line 75
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 76
    .line 77
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    .line 78
    .line 79
    .line 80
    invoke-direct {p1, p2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([BI)V

    .line 81
    .line 82
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->diskStart:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 83
    goto :goto_4

    .line 84
    .line 85
    :cond_7
    new-instance p1, Ljava/util/zip/ZipException;

    .line 86
    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    const-string p3, "central directory zip64 extended information extra field\'s length doesn\'t match central directory data.  Expected length "

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string p3, " but is "

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    .line 106
    array-length p3, p3

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p2

    .line 114
    .line 115
    .line 116
    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 117
    throw p1

    .line 118
    :cond_8
    :goto_4
    return-void
.end method

.method public setCompressedSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-void
.end method

.method public setDiskStartNumber(Lorg/apache/commons/compress/archivers/zip/ZipLong;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->diskStart:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    return-void
.end method

.method public setRelativeHeaderOffset(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-void
.end method

.method public setSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-void
.end method
