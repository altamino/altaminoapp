.class public Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.source "SourceFile"


# static fields
.field private static final ARJ_MAGIC_1:I = 0x60

.field private static final ARJ_MAGIC_2:I = 0xea


# instance fields
.field private final charsetName:Ljava/lang/String;

.field private currentInputStream:Ljava/io/InputStream;

.field private currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

.field private final in:Ljava/io/DataInputStream;

.field private final mainHeader:Lorg/apache/commons/compress/archivers/arj/MainHeader;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    const-string v0, "CP437"

    .line 8
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    .line 2
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->charsetName:Ljava/lang/String;

    .line 3
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readMainHeader()Lorg/apache/commons/compress/archivers/arj/MainHeader;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->mainHeader:Lorg/apache/commons/compress/archivers/arj/MainHeader;

    .line 4
    iget p1, p1, Lorg/apache/commons/compress/archivers/arj/MainHeader;->arjFlags:I

    and-int/lit8 p2, p1, 0x1

    if-nez p2, :cond_1

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p1, Lorg/apache/commons/compress/archivers/ArchiveException;

    const-string p2, "Multi-volume ARJ files are unsupported"

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Lorg/apache/commons/compress/archivers/ArchiveException;

    const-string p2, "Encrypted ARJ files are unsupported"

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :goto_0
    new-instance p2, Lorg/apache/commons/compress/archivers/ArchiveException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public static matches([BI)Z
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    if-lt p1, v0, :cond_0

    .line 5
    .line 6
    aget-byte p1, p0, v1

    .line 7
    .line 8
    and-int/lit16 p1, p1, 0xff

    .line 9
    .line 10
    const/16 v0, 0x60

    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    .line 15
    aget-byte p0, p0, p1

    .line 16
    .line 17
    and-int/lit16 p0, p0, 0xff

    .line 18
    .line 19
    const/16 v0, 0xea

    .line 20
    .line 21
    if-ne p0, v0, :cond_0

    .line 22
    move v1, p1

    .line 23
    :cond_0
    return v1
.end method

.method private read16(Ljava/io/DataInputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x2

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(I)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 12
    move-result p1

    .line 13
    .line 14
    ushr-int/lit8 p1, p1, 0x10

    .line 15
    return p1
.end method

.method private read32(Ljava/io/DataInputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x4

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(I)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method private read8(Ljava/io/DataInputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(I)V

    .line 9
    return p1
.end method

.method private readExtraData(ILjava/io/DataInputStream;Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x21

    .line 3
    .line 4
    if-lt p1, v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    .line 8
    move-result v0

    .line 9
    .line 10
    iput v0, p3, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->extendedFilePosition:I

    .line 11
    .line 12
    const/16 v0, 0x2d

    .line 13
    .line 14
    if-lt p1, v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    .line 18
    move-result p1

    .line 19
    .line 20
    iput p1, p3, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->dateTimeAccessed:I

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    .line 24
    move-result p1

    .line 25
    .line 26
    iput p1, p3, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->dateTimeCreated:I

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    .line 30
    move-result p1

    .line 31
    .line 32
    iput p1, p3, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->originalSizeEvenForVolumes:I

    .line 33
    .line 34
    const-wide/16 p1, 0xc

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->pushedBackBytes(J)V

    .line 38
    .line 39
    :cond_0
    const-wide/16 p1, 0x4

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->pushedBackBytes(J)V

    .line 43
    :cond_1
    return-void
.end method

.method private readFully(Ljava/io/DataInputStream;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 4
    array-length p1, p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(I)V

    .line 8
    return-void
.end method

.method private readHeader()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move-object v2, v1

    .line 4
    .line 5
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read8(Ljava/io/DataInputStream;)I

    .line 9
    move-result v3

    .line 10
    .line 11
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read8(Ljava/io/DataInputStream;)I

    .line 15
    move-result v4

    .line 16
    .line 17
    const/16 v5, 0x60

    .line 18
    .line 19
    if-eq v3, v5, :cond_2

    .line 20
    .line 21
    const/16 v3, 0xea

    .line 22
    .line 23
    if-ne v4, v3, :cond_1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v3, v4

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_2
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    .line 32
    move-result v3

    .line 33
    .line 34
    if-nez v3, :cond_3

    .line 35
    return-object v1

    .line 36
    .line 37
    :cond_3
    const/16 v4, 0xa28

    .line 38
    .line 39
    if-gt v3, v4, :cond_4

    .line 40
    .line 41
    new-array v2, v3, [B

    .line 42
    .line 43
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v3, v2}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readFully(Ljava/io/DataInputStream;[B)V

    .line 47
    .line 48
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    .line 52
    move-result v3

    .line 53
    int-to-long v3, v3

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    const-wide v5, 0xffffffffL

    .line 59
    and-long/2addr v3, v5

    .line 60
    .line 61
    new-instance v5, Ljava/util/zip/CRC32;

    .line 62
    .line 63
    .line 64
    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    .line 71
    move-result-wide v5

    .line 72
    .line 73
    cmp-long v3, v3, v5

    .line 74
    .line 75
    if-nez v3, :cond_4

    .line 76
    const/4 v0, 0x1

    .line 77
    .line 78
    :cond_4
    if-eqz v0, :cond_0

    .line 79
    return-object v2
.end method

.method private readLocalFileHeader()Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readHeader()[B

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    .line 10
    :cond_0
    new-instance v1, Ljava/io/DataInputStream;

    .line 11
    .line 12
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 22
    move-result v0

    .line 23
    .line 24
    add-int/lit8 v2, v0, -0x1

    .line 25
    .line 26
    new-array v2, v2, [B

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 30
    .line 31
    new-instance v3, Ljava/io/DataInputStream;

    .line 32
    .line 33
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 34
    .line 35
    .line 36
    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 37
    .line 38
    .line 39
    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    .line 41
    :try_start_1
    new-instance v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    .line 42
    .line 43
    .line 44
    invoke-direct {v2}, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 48
    move-result v4

    .line 49
    .line 50
    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->archiverVersionNumber:I

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 54
    move-result v4

    .line 55
    .line 56
    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->minVersionToExtract:I

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 60
    move-result v4

    .line 61
    .line 62
    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->hostOS:I

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 66
    move-result v4

    .line 67
    .line 68
    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->arjFlags:I

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 72
    move-result v4

    .line 73
    .line 74
    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->method:I

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 78
    move-result v4

    .line 79
    .line 80
    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->fileType:I

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 84
    move-result v4

    .line 85
    .line 86
    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->reserved:I

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    .line 90
    move-result v4

    .line 91
    .line 92
    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->dateTimeModified:I

    .line 93
    .line 94
    .line 95
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    .line 96
    move-result v4

    .line 97
    int-to-long v4, v4

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    const-wide v6, 0xffffffffL

    .line 103
    and-long/2addr v4, v6

    .line 104
    .line 105
    iput-wide v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->compressedSize:J

    .line 106
    .line 107
    .line 108
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    .line 109
    move-result v4

    .line 110
    int-to-long v4, v4

    .line 111
    and-long/2addr v4, v6

    .line 112
    .line 113
    iput-wide v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->originalSize:J

    .line 114
    .line 115
    .line 116
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    .line 117
    move-result v4

    .line 118
    int-to-long v4, v4

    .line 119
    and-long/2addr v4, v6

    .line 120
    .line 121
    iput-wide v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->originalCrc32:J

    .line 122
    .line 123
    .line 124
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    .line 125
    move-result v4

    .line 126
    .line 127
    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->fileSpecPosition:I

    .line 128
    .line 129
    .line 130
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    .line 131
    move-result v4

    .line 132
    .line 133
    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->fileAccessMode:I

    .line 134
    .line 135
    const-wide/16 v4, 0x14

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->pushedBackBytes(J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 142
    move-result v4

    .line 143
    .line 144
    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->firstChapter:I

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 148
    move-result v4

    .line 149
    .line 150
    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->lastChapter:I

    .line 151
    .line 152
    .line 153
    invoke-direct {p0, v0, v3, v2}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readExtraData(ILjava/io/DataInputStream;Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;)V

    .line 154
    .line 155
    .line 156
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 157
    move-result-object v0

    .line 158
    .line 159
    iput-object v0, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->name:Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 163
    move-result-object v0

    .line 164
    .line 165
    iput-object v0, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->comment:Ljava/lang/String;

    .line 166
    .line 167
    new-instance v0, Ljava/util/ArrayList;

    .line 168
    .line 169
    .line 170
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .line 172
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    .line 173
    .line 174
    .line 175
    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    .line 176
    move-result v4

    .line 177
    .line 178
    if-lez v4, :cond_2

    .line 179
    .line 180
    new-array v4, v4, [B

    .line 181
    .line 182
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    .line 183
    .line 184
    .line 185
    invoke-direct {p0, v5, v4}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readFully(Ljava/io/DataInputStream;[B)V

    .line 186
    .line 187
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    .line 188
    .line 189
    .line 190
    invoke-direct {p0, v5}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    .line 191
    move-result v5

    .line 192
    int-to-long v8, v5

    .line 193
    and-long/2addr v8, v6

    .line 194
    .line 195
    new-instance v5, Ljava/util/zip/CRC32;

    .line 196
    .line 197
    .line 198
    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5, v4}, Ljava/util/zip/CRC32;->update([B)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    .line 205
    move-result-wide v10

    .line 206
    .line 207
    cmp-long v5, v8, v10

    .line 208
    .line 209
    if-nez v5, :cond_1

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    goto :goto_0

    .line 214
    :catchall_0
    move-exception v0

    .line 215
    goto :goto_1

    .line 216
    .line 217
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 218
    .line 219
    const-string v2, "Extended header CRC32 verification failure"

    .line 220
    .line 221
    .line 222
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 223
    throw v0

    .line 224
    .line 225
    .line 226
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 227
    move-result v4

    .line 228
    .line 229
    new-array v4, v4, [[B

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 233
    move-result-object v0

    .line 234
    .line 235
    check-cast v0, [[B

    .line 236
    .line 237
    iput-object v0, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->extendedHeaders:[[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    .line 239
    .line 240
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 244
    return-object v2

    .line 245
    :catchall_1
    move-exception v0

    .line 246
    goto :goto_3

    .line 247
    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 248
    :catchall_2
    move-exception v2

    .line 249
    .line 250
    .line 251
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 252
    goto :goto_2

    .line 253
    :catchall_3
    move-exception v3

    .line 254
    .line 255
    .line 256
    :try_start_5
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 257
    :goto_2
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 258
    :goto_3
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 259
    :catchall_4
    move-exception v2

    .line 260
    .line 261
    .line 262
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 263
    goto :goto_4

    .line 264
    :catchall_5
    move-exception v1

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 268
    :goto_4
    throw v2
.end method

.method private readMainHeader()Lorg/apache/commons/compress/archivers/arj/MainHeader;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readHeader()[B

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    new-instance v1, Ljava/io/DataInputStream;

    .line 9
    .line 10
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 11
    .line 12
    .line 13
    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 20
    move-result v0

    .line 21
    .line 22
    add-int/lit8 v2, v0, -0x1

    .line 23
    .line 24
    new-array v2, v2, [B

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 28
    .line 29
    new-instance v3, Ljava/io/DataInputStream;

    .line 30
    .line 31
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 32
    .line 33
    .line 34
    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    .line 39
    new-instance v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;

    .line 40
    .line 41
    .line 42
    invoke-direct {v2}, Lorg/apache/commons/compress/archivers/arj/MainHeader;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 46
    move-result v4

    .line 47
    .line 48
    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->archiverVersionNumber:I

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 52
    move-result v4

    .line 53
    .line 54
    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->minVersionToExtract:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 58
    move-result v4

    .line 59
    .line 60
    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->hostOS:I

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 64
    move-result v4

    .line 65
    .line 66
    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->arjFlags:I

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 70
    move-result v4

    .line 71
    .line 72
    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->securityVersion:I

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 76
    move-result v4

    .line 77
    .line 78
    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->fileType:I

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 82
    move-result v4

    .line 83
    .line 84
    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->reserved:I

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    .line 88
    move-result v4

    .line 89
    .line 90
    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->dateTimeCreated:I

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    .line 94
    move-result v4

    .line 95
    .line 96
    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->dateTimeModified:I

    .line 97
    .line 98
    .line 99
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    .line 100
    move-result v4

    .line 101
    int-to-long v4, v4

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    const-wide v6, 0xffffffffL

    .line 107
    and-long/2addr v4, v6

    .line 108
    .line 109
    iput-wide v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->archiveSize:J

    .line 110
    .line 111
    .line 112
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    .line 113
    move-result v4

    .line 114
    .line 115
    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->securityEnvelopeFilePosition:I

    .line 116
    .line 117
    .line 118
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    .line 119
    move-result v4

    .line 120
    .line 121
    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->fileSpecPosition:I

    .line 122
    .line 123
    .line 124
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    .line 125
    move-result v4

    .line 126
    .line 127
    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->securityEnvelopeLength:I

    .line 128
    .line 129
    const-wide/16 v4, 0x14

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->pushedBackBytes(J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 136
    move-result v4

    .line 137
    .line 138
    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->encryptionVersion:I

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 142
    move-result v4

    .line 143
    .line 144
    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->lastChapter:I

    .line 145
    .line 146
    const/16 v4, 0x21

    .line 147
    .line 148
    if-lt v0, v4, :cond_0

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 152
    move-result v0

    .line 153
    .line 154
    iput v0, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->arjProtectionFactor:I

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 158
    move-result v0

    .line 159
    .line 160
    iput v0, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->arjFlags2:I

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 167
    .line 168
    .line 169
    :cond_0
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 170
    move-result-object v0

    .line 171
    .line 172
    iput-object v0, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->name:Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 176
    move-result-object v0

    .line 177
    .line 178
    iput-object v0, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->comment:Ljava/lang/String;

    .line 179
    .line 180
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    .line 181
    .line 182
    .line 183
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    .line 184
    move-result v0

    .line 185
    .line 186
    if-lez v0, :cond_2

    .line 187
    .line 188
    new-array v0, v0, [B

    .line 189
    .line 190
    iput-object v0, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->extendedHeaderBytes:[B

    .line 191
    .line 192
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    .line 193
    .line 194
    .line 195
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readFully(Ljava/io/DataInputStream;[B)V

    .line 196
    .line 197
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    .line 198
    .line 199
    .line 200
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    .line 201
    move-result v0

    .line 202
    int-to-long v0, v0

    .line 203
    and-long/2addr v0, v6

    .line 204
    .line 205
    new-instance v3, Ljava/util/zip/CRC32;

    .line 206
    .line 207
    .line 208
    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    .line 209
    .line 210
    iget-object v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->extendedHeaderBytes:[B

    .line 211
    .line 212
    .line 213
    invoke-virtual {v3, v4}, Ljava/util/zip/CRC32;->update([B)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    .line 217
    move-result-wide v3

    .line 218
    .line 219
    cmp-long v0, v0, v3

    .line 220
    .line 221
    if-nez v0, :cond_1

    .line 222
    goto :goto_0

    .line 223
    .line 224
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 225
    .line 226
    const-string v1, "Extended header CRC32 verification failure"

    .line 227
    .line 228
    .line 229
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 230
    throw v0

    .line 231
    :cond_2
    :goto_0
    return-object v2

    .line 232
    .line 233
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 234
    .line 235
    const-string v1, "Archive ends without any headers"

    .line 236
    .line 237
    .line 238
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 239
    throw v0
.end method

.method private readString(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 9
    move-result v1

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->charsetName:Ljava/lang/String;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    new-instance p1, Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->charsetName:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 31
    return-object p1

    .line 32
    .line 33
    :cond_1
    new-instance p1, Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    .line 41
    return-object p1
.end method


# virtual methods
.method public canReadEntryData(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;->getMethod()I

    .line 10
    move-result p1

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 6
    return-void
.end method

.method public getArchiveComment()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->mainHeader:Lorg/apache/commons/compress/archivers/arj/MainHeader;

    .line 3
    .line 4
    iget-object v0, v0, Lorg/apache/commons/compress/archivers/arj/MainHeader;->comment:Ljava/lang/String;

    .line 5
    return-object v0
.end method

.method public getArchiveName()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->mainHeader:Lorg/apache/commons/compress/archivers/arj/MainHeader;

    .line 3
    .line 4
    iget-object v0, v0, Lorg/apache/commons/compress/archivers/arj/MainHeader;->name:Ljava/lang/String;

    .line 5
    return-object v0
.end method

.method public bridge synthetic getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-wide v2, 0x7fffffffffffffffL

    .line 2
    invoke-static {v0, v2, v3}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readLocalFileHeader()Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    if-eqz v0, :cond_2

    .line 5
    new-instance v3, Lorg/apache/commons/compress/utils/BoundedInputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    iget-wide v4, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->compressedSize:J

    invoke-direct {v3, v1, v4, v5}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    .line 6
    iget v1, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->method:I

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    iget-wide v4, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->originalSize:J

    iget-wide v6, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->originalCrc32:J

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    .line 8
    :cond_1
    new-instance v0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;-><init>(Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;)V

    return-object v0

    :cond_2
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    return-object v1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget v0, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->method:I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    .line 17
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 18
    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    const-string p3, "Unsupported compression method "

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    .line 30
    .line 31
    iget p3, p3, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->method:I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p1

    .line 43
    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string p2, "No current arj entry"

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p1
.end method
