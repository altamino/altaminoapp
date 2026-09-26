.class public Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.source "SourceFile"


# static fields
.field private static final BSD_LONGNAME_PATTERN:Ljava/lang/String; = "^#1/\\d+"

.field static final BSD_LONGNAME_PREFIX:Ljava/lang/String; = "#1/"

.field private static final BSD_LONGNAME_PREFIX_LEN:I = 0x3

.field private static final GNU_LONGNAME_PATTERN:Ljava/lang/String; = "^/\\d+"

.field private static final GNU_STRING_TABLE_NAME:Ljava/lang/String; = "//"


# instance fields
.field private closed:Z

.field private currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

.field private entryOffset:J

.field private final fileModeBuf:[B

.field private final idBuf:[B

.field private final input:Ljava/io/InputStream;

.field private final lastModifiedBuf:[B

.field private final lengthBuf:[B

.field private final nameBuf:[B

.field private namebuffer:[B

.field private offset:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;-><init>()V

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 11
    .line 12
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    .line 13
    .line 14
    const-wide/16 v0, -0x1

    .line 15
    .line 16
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    .line 17
    .line 18
    const/16 v0, 0x10

    .line 19
    .line 20
    new-array v0, v0, [B

    .line 21
    .line 22
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->nameBuf:[B

    .line 23
    .line 24
    const/16 v0, 0xc

    .line 25
    .line 26
    new-array v0, v0, [B

    .line 27
    .line 28
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->lastModifiedBuf:[B

    .line 29
    const/4 v0, 0x6

    .line 30
    .line 31
    new-array v0, v0, [B

    .line 32
    .line 33
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->idBuf:[B

    .line 34
    .line 35
    const/16 v0, 0x8

    .line 36
    .line 37
    new-array v0, v0, [B

    .line 38
    .line 39
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->fileModeBuf:[B

    .line 40
    .line 41
    const/16 v0, 0xa

    .line 42
    .line 43
    new-array v0, v0, [B

    .line 44
    .line 45
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->lengthBuf:[B

    .line 46
    .line 47
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    .line 48
    const/4 p1, 0x0

    .line 49
    .line 50
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->closed:Z

    .line 51
    return-void
.end method

.method private asInt([B)I
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BIZ)I

    move-result p1

    return p1
.end method

.method private asInt([BI)I
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BIZ)I

    move-result p1

    return p1
.end method

.method private asInt([BIZ)I
    .locals 1

    .line 4
    invoke-static {p1}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private asInt([BZ)I
    .locals 1

    const/16 v0, 0xa

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BIZ)I

    move-result p1

    return p1
.end method

.method private asLong([B)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([B)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method private getBSDLongName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    sget v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->BSD_LONGNAME_PREFIX_LEN:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    move-result p1

    .line 11
    .line 12
    new-array v0, p1, [B

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    .line 16
    move-result v1

    .line 17
    .line 18
    if-ne v1, p1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([B)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    .line 25
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 26
    .line 27
    .line 28
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 29
    throw p1
.end method

.method private getExtendedName(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    move v0, p1

    .line 6
    .line 7
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    .line 8
    array-length v2, v1

    .line 9
    .line 10
    if-ge v0, v2, :cond_3

    .line 11
    .line 12
    aget-byte v2, v1, v0

    .line 13
    .line 14
    const/16 v3, 0xa

    .line 15
    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    goto :goto_1

    .line 20
    .line 21
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    :goto_1
    add-int/lit8 v2, v0, -0x1

    .line 25
    .line 26
    aget-byte v2, v1, v2

    .line 27
    .line 28
    const/16 v3, 0x2f

    .line 29
    .line 30
    if-ne v2, v3, :cond_2

    .line 31
    .line 32
    add-int/lit8 v0, v0, -0x1

    .line 33
    :cond_2
    sub-int/2addr v0, p1

    .line 34
    .line 35
    .line 36
    invoke-static {v1, p1, v0}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([BII)Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    .line 40
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    const-string v2, "Failed to read entry: "

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 61
    throw v0

    .line 62
    .line 63
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 64
    .line 65
    const-string v0, "Cannot process GNU long filename as no // record was found"

    .line 66
    .line 67
    .line 68
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 69
    throw p1
.end method

.method private static isBSDLongName(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    const-string v0, "^#1/\\d+"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 8
    move-result p0

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method private isGNULongName(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const-string v0, "^/\\d+"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method private static isGNUStringTable(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "//"

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static matches([BI)Z
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-lt p1, v0, :cond_0

    .line 6
    .line 7
    aget-byte p1, p0, v1

    .line 8
    .line 9
    const/16 v0, 0x21

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    const/4 p1, 0x1

    .line 13
    .line 14
    aget-byte v0, p0, p1

    .line 15
    .line 16
    const/16 v2, 0x3c

    .line 17
    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    const/4 v0, 0x2

    .line 20
    .line 21
    aget-byte v0, p0, v0

    .line 22
    .line 23
    const/16 v2, 0x61

    .line 24
    .line 25
    if-ne v0, v2, :cond_0

    .line 26
    const/4 v0, 0x3

    .line 27
    .line 28
    aget-byte v0, p0, v0

    .line 29
    .line 30
    const/16 v2, 0x72

    .line 31
    .line 32
    if-ne v0, v2, :cond_0

    .line 33
    const/4 v0, 0x4

    .line 34
    .line 35
    aget-byte v0, p0, v0

    .line 36
    .line 37
    const/16 v2, 0x63

    .line 38
    .line 39
    if-ne v0, v2, :cond_0

    .line 40
    const/4 v0, 0x5

    .line 41
    .line 42
    aget-byte v0, p0, v0

    .line 43
    .line 44
    const/16 v2, 0x68

    .line 45
    .line 46
    if-ne v0, v2, :cond_0

    .line 47
    const/4 v0, 0x6

    .line 48
    .line 49
    aget-byte v0, p0, v0

    .line 50
    .line 51
    const/16 v2, 0x3e

    .line 52
    .line 53
    if-ne v0, v2, :cond_0

    .line 54
    const/4 v0, 0x7

    .line 55
    .line 56
    aget-byte p0, p0, v0

    .line 57
    .line 58
    const/16 v0, 0xa

    .line 59
    .line 60
    if-ne p0, v0, :cond_0

    .line 61
    move v1, p1

    .line 62
    :cond_0
    return v1
.end method

.method private readGNUStringTable([B)Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([B)I

    .line 4
    move-result p1

    .line 5
    .line 6
    new-array v0, p1, [B

    .line 7
    .line 8
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    .line 13
    move-result v0

    .line 14
    .line 15
    if-ne v0, p1, :cond_0

    .line 16
    .line 17
    new-instance v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 18
    .line 19
    const-string v1, "//"

    .line 20
    int-to-long v2, p1

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;-><init>(Ljava/lang/String;J)V

    .line 24
    return-object v0

    .line 25
    .line 26
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    const-string v3, "Failed to read complete // record: expected="

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string p1, " read="

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 55
    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->closed:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->closed:Z

    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    .line 15
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 16
    return-void
.end method

.method public getNextArEntry()Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getLength()J

    .line 11
    move-result-wide v4

    .line 12
    add-long/2addr v2, v4

    .line 13
    .line 14
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    .line 15
    sub-long/2addr v2, v4

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v2, v3}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    .line 19
    .line 20
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 21
    .line 22
    :cond_0
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    .line 23
    .line 24
    const-wide/16 v4, 0x0

    .line 25
    .line 26
    cmp-long v0, v2, v4

    .line 27
    const/4 v2, 0x0

    .line 28
    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    const-string v0, "!<arch>\n"

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiBytes(Ljava/lang/String;)[B

    .line 35
    move-result-object v0

    .line 36
    array-length v3, v0

    .line 37
    .line 38
    new-array v3, v3, [B

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v3}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    .line 42
    move-result v6

    .line 43
    array-length v7, v0

    .line 44
    .line 45
    if-ne v6, v7, :cond_2

    .line 46
    move v6, v2

    .line 47
    :goto_0
    array-length v7, v0

    .line 48
    .line 49
    if-ge v6, v7, :cond_3

    .line 50
    .line 51
    aget-byte v7, v0, v6

    .line 52
    .line 53
    aget-byte v8, v3, v6

    .line 54
    .line 55
    if-ne v7, v8, :cond_1

    .line 56
    .line 57
    add-int/lit8 v6, v6, 0x1

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 61
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    const-string v2, "invalid header "

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-static {v3}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([B)Ljava/lang/String;

    .line 74
    move-result-object v2

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 85
    throw v0

    .line 86
    .line 87
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 88
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    const-string v2, "failed to read header. Occured at byte: "

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getBytesRead()J

    .line 101
    move-result-wide v2

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v1

    .line 109
    .line 110
    .line 111
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 112
    throw v0

    .line 113
    .line 114
    :cond_3
    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    .line 115
    .line 116
    const-wide/16 v8, 0x2

    .line 117
    rem-long/2addr v6, v8

    .line 118
    .line 119
    cmp-long v0, v6, v4

    .line 120
    .line 121
    if-eqz v0, :cond_4

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->read()I

    .line 125
    move-result v0

    .line 126
    .line 127
    if-gez v0, :cond_4

    .line 128
    return-object v1

    .line 129
    .line 130
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 134
    move-result v0

    .line 135
    .line 136
    if-nez v0, :cond_5

    .line 137
    return-object v1

    .line 138
    .line 139
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->nameBuf:[B

    .line 140
    .line 141
    .line 142
    invoke-static {p0, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    .line 143
    .line 144
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->lastModifiedBuf:[B

    .line 145
    .line 146
    .line 147
    invoke-static {p0, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    .line 148
    .line 149
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->idBuf:[B

    .line 150
    .line 151
    .line 152
    invoke-static {p0, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    .line 153
    .line 154
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->idBuf:[B

    .line 155
    const/4 v1, 0x1

    .line 156
    .line 157
    .line 158
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BZ)I

    .line 159
    move-result v7

    .line 160
    .line 161
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->idBuf:[B

    .line 162
    .line 163
    .line 164
    invoke-static {p0, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    .line 165
    .line 166
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->fileModeBuf:[B

    .line 167
    .line 168
    .line 169
    invoke-static {p0, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    .line 170
    .line 171
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->lengthBuf:[B

    .line 172
    .line 173
    .line 174
    invoke-static {p0, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    .line 175
    .line 176
    const-string v0, "`\n"

    .line 177
    .line 178
    .line 179
    invoke-static {v0}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiBytes(Ljava/lang/String;)[B

    .line 180
    move-result-object v0

    .line 181
    array-length v3, v0

    .line 182
    .line 183
    new-array v3, v3, [B

    .line 184
    .line 185
    .line 186
    invoke-static {p0, v3}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    .line 187
    move-result v4

    .line 188
    array-length v5, v0

    .line 189
    .line 190
    if-ne v4, v5, :cond_c

    .line 191
    move v4, v2

    .line 192
    :goto_1
    array-length v5, v0

    .line 193
    .line 194
    if-ge v4, v5, :cond_7

    .line 195
    .line 196
    aget-byte v5, v0, v4

    .line 197
    .line 198
    aget-byte v6, v3, v4

    .line 199
    .line 200
    if-ne v5, v6, :cond_6

    .line 201
    .line 202
    add-int/lit8 v4, v4, 0x1

    .line 203
    goto :goto_1

    .line 204
    .line 205
    :cond_6
    new-instance v0, Ljava/io/IOException;

    .line 206
    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    const-string v2, "invalid entry trailer. not read the content? Occured at byte: "

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getBytesRead()J

    .line 219
    move-result-wide v2

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    move-result-object v1

    .line 227
    .line 228
    .line 229
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 230
    throw v0

    .line 231
    .line 232
    :cond_7
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    .line 233
    .line 234
    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    .line 235
    .line 236
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->nameBuf:[B

    .line 237
    .line 238
    .line 239
    invoke-static {v0}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([B)Ljava/lang/String;

    .line 240
    move-result-object v0

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 244
    move-result-object v0

    .line 245
    .line 246
    .line 247
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->isGNUStringTable(Ljava/lang/String;)Z

    .line 248
    move-result v3

    .line 249
    .line 250
    if-eqz v3, :cond_8

    .line 251
    .line 252
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->lengthBuf:[B

    .line 253
    .line 254
    .line 255
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->readGNUStringTable([B)Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 256
    move-result-object v0

    .line 257
    .line 258
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getNextArEntry()Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 262
    move-result-object v0

    .line 263
    return-object v0

    .line 264
    .line 265
    :cond_8
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->lengthBuf:[B

    .line 266
    .line 267
    .line 268
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asLong([B)J

    .line 269
    move-result-wide v3

    .line 270
    .line 271
    const-string v5, "/"

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 275
    move-result v5

    .line 276
    .line 277
    if-eqz v5, :cond_a

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 281
    move-result v5

    .line 282
    sub-int/2addr v5, v1

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 286
    move-result-object v0

    .line 287
    :cond_9
    :goto_2
    move-wide v5, v3

    .line 288
    move-object v4, v0

    .line 289
    goto :goto_3

    .line 290
    .line 291
    .line 292
    :cond_a
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->isGNULongName(Ljava/lang/String;)Z

    .line 293
    move-result v2

    .line 294
    .line 295
    if-eqz v2, :cond_b

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 299
    move-result-object v0

    .line 300
    .line 301
    .line 302
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 303
    move-result v0

    .line 304
    .line 305
    .line 306
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getExtendedName(I)Ljava/lang/String;

    .line 307
    move-result-object v0

    .line 308
    goto :goto_2

    .line 309
    .line 310
    .line 311
    :cond_b
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->isBSDLongName(Ljava/lang/String;)Z

    .line 312
    move-result v2

    .line 313
    .line 314
    if-eqz v2, :cond_9

    .line 315
    .line 316
    .line 317
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getBSDLongName(Ljava/lang/String;)Ljava/lang/String;

    .line 318
    move-result-object v0

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 322
    move-result v2

    .line 323
    int-to-long v5, v2

    .line 324
    sub-long/2addr v3, v5

    .line 325
    .line 326
    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    .line 327
    add-long/2addr v8, v5

    .line 328
    .line 329
    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    .line 330
    goto :goto_2

    .line 331
    .line 332
    :goto_3
    new-instance v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 333
    .line 334
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->idBuf:[B

    .line 335
    .line 336
    .line 337
    invoke-direct {p0, v2, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BZ)I

    .line 338
    move-result v8

    .line 339
    .line 340
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->fileModeBuf:[B

    .line 341
    .line 342
    const/16 v2, 0x8

    .line 343
    .line 344
    .line 345
    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BI)I

    .line 346
    move-result v9

    .line 347
    .line 348
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->lastModifiedBuf:[B

    .line 349
    .line 350
    .line 351
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asLong([B)J

    .line 352
    move-result-wide v10

    .line 353
    move-object v3, v0

    .line 354
    .line 355
    .line 356
    invoke-direct/range {v3 .. v11}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;-><init>(Ljava/lang/String;JIIIJ)V

    .line 357
    .line 358
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 359
    return-object v0

    .line 360
    .line 361
    :cond_c
    new-instance v0, Ljava/io/IOException;

    .line 362
    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .line 368
    const-string v2, "failed to read entry trailer. Occured at byte: "

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getBytesRead()J

    .line 375
    move-result-wide v2

    .line 376
    .line 377
    .line 378
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    move-result-object v1

    .line 383
    .line 384
    .line 385
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 386
    throw v0
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getNextArEntry()Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getLength()J

    .line 10
    move-result-wide v3

    .line 11
    add-long/2addr v1, v3

    .line 12
    .line 13
    if-lez p3, :cond_0

    .line 14
    .line 15
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    .line 16
    .line 17
    cmp-long v0, v1, v3

    .line 18
    .line 19
    if-lez v0, :cond_0

    .line 20
    int-to-long v5, p3

    .line 21
    sub-long/2addr v1, v3

    .line 22
    .line 23
    .line 24
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 25
    move-result-wide v0

    .line 26
    long-to-int p3, v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, -0x1

    .line 29
    return p1

    .line 30
    .line 31
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 35
    move-result p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(I)V

    .line 39
    .line 40
    iget-wide p2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    .line 41
    .line 42
    if-lez p1, :cond_2

    .line 43
    int-to-long v0, p1

    .line 44
    goto :goto_1

    .line 45
    .line 46
    :cond_2
    const-wide/16 v0, 0x0

    .line 47
    :goto_1
    add-long/2addr p2, v0

    .line 48
    .line 49
    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    .line 50
    return p1
.end method
