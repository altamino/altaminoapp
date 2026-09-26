.class public Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
.source "SourceFile"


# static fields
.field private static final ASCII:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

.field public static final BIGNUMBER_ERROR:I = 0x0

.field public static final BIGNUMBER_POSIX:I = 0x2

.field public static final BIGNUMBER_STAR:I = 0x1

.field private static final BLOCK_SIZE_UNSPECIFIED:I = -0x1ff

.field public static final LONGFILE_ERROR:I = 0x0

.field public static final LONGFILE_GNU:I = 0x2

.field public static final LONGFILE_POSIX:I = 0x3

.field public static final LONGFILE_TRUNCATE:I = 0x1

.field private static final RECORD_SIZE:I = 0x200


# instance fields
.field private addPaxHeadersForNonAsciiNames:Z

.field private bigNumberMode:I

.field private closed:Z

.field private final countingOut:Lorg/apache/commons/compress/utils/CountingOutputStream;

.field private currBytes:J

.field private currName:Ljava/lang/String;

.field private currSize:J

.field final encoding:Ljava/lang/String;

.field private finished:Z

.field private haveUnclosedEntry:Z

.field private longFileMode:I

.field private final out:Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;

.field private final recordBuf:[B

.field private final recordsPerBlock:I

.field private recordsWritten:I

.field private final zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "ASCII"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->ASCII:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/16 v0, -0x1ff

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;-><init>(Ljava/io/OutputStream;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;II)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;-><init>(Ljava/io/OutputStream;IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IILjava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2, p4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;-><init>(Ljava/io/OutputStream;ILjava/lang/String;)V

    const/16 p1, 0x200

    if-ne p3, p1, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Tar record size must always be 512 bytes. Attempt to set size of "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/OutputStream;ILjava/lang/String;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->longFileMode:I

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->bigNumberMode:I

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->closed:Z

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->haveUnclosedEntry:Z

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->finished:Z

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeadersForNonAsciiNames:Z

    const/16 v0, -0x1ff

    const/16 v1, 0x200

    if-ne v0, p2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    if-lez v0, :cond_1

    .line 8
    rem-int/lit16 v2, v0, 0x200

    if-nez v2, :cond_1

    .line 9
    new-instance p2, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;

    new-instance v2, Lorg/apache/commons/compress/utils/CountingOutputStream;

    invoke-direct {v2, p1}, Lorg/apache/commons/compress/utils/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->countingOut:Lorg/apache/commons/compress/utils/CountingOutputStream;

    invoke-direct {p2, v2, v1}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->out:Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;

    iput-object p3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->encoding:Ljava/lang/String;

    .line 10
    invoke-static {p3}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    new-array p1, v1, [B

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordBuf:[B

    .line 11
    div-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordsPerBlock:I

    return-void

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Block size must be a multiple of 512 bytes. Attempt to use set size of "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1

    const/16 v0, -0x1ff

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;-><init>(Ljava/io/OutputStream;ILjava/lang/String;)V

    return-void
.end method

.method private addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JJ)V"
        }
    .end annotation

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v0, p3, v0

    .line 5
    .line 6
    if-ltz v0, :cond_0

    .line 7
    .line 8
    cmp-long p5, p3, p5

    .line 9
    .line 10
    if-lez p5, :cond_1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 14
    move-result-object p3

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_1
    return-void
.end method

.method private addPaxHeadersForBigNumbers(Ljava/util/Map;Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v2, "size"

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    .line 6
    move-result-wide v3

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const-wide v5, 0x1ffffffffL

    .line 12
    move-object v0, p0

    .line 13
    move-object v1, p1

    .line 14
    .line 15
    .line 16
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 17
    .line 18
    const-string v9, "gid"

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getLongGroupId()J

    .line 22
    move-result-wide v10

    .line 23
    .line 24
    .line 25
    const-wide/32 v12, 0x1fffff

    .line 26
    move-object v7, p0

    .line 27
    move-object v8, p1

    .line 28
    .line 29
    .line 30
    invoke-direct/range {v7 .. v13}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 31
    .line 32
    const-string v2, "mtime"

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getModTime()Ljava/util/Date;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 40
    move-result-wide v0

    .line 41
    .line 42
    const-wide/16 v3, 0x3e8

    .line 43
    .line 44
    div-long v3, v0, v3

    .line 45
    move-object v0, p0

    .line 46
    move-object v1, p1

    .line 47
    .line 48
    .line 49
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 50
    .line 51
    const-string v9, "uid"

    .line 52
    .line 53
    .line 54
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getLongUserId()J

    .line 55
    move-result-wide v10

    .line 56
    .line 57
    .line 58
    invoke-direct/range {v7 .. v13}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 59
    .line 60
    const-string v2, "SCHILY.devmajor"

    .line 61
    .line 62
    .line 63
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getDevMajor()I

    .line 64
    move-result v0

    .line 65
    int-to-long v3, v0

    .line 66
    .line 67
    .line 68
    const-wide/32 v5, 0x1fffff

    .line 69
    move-object v0, p0

    .line 70
    .line 71
    .line 72
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 73
    .line 74
    const-string v9, "SCHILY.devminor"

    .line 75
    .line 76
    .line 77
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getDevMinor()I

    .line 78
    move-result v0

    .line 79
    int-to-long v10, v0

    .line 80
    .line 81
    .line 82
    invoke-direct/range {v7 .. v13}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 83
    .line 84
    const-string v1, "mode"

    .line 85
    .line 86
    .line 87
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getMode()I

    .line 88
    move-result v0

    .line 89
    int-to-long v2, v0

    .line 90
    .line 91
    .line 92
    const-wide/32 v4, 0x1fffff

    .line 93
    move-object v0, p0

    .line 94
    .line 95
    .line 96
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    .line 97
    return-void
.end method

.method private encodeExtendedPaxHeadersContents(Ljava/util/Map;)[B
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/io/StringWriter;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    const-string v2, "UTF-8"

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    check-cast v1, Ljava/util/Map$Entry;

    .line 28
    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    check-cast v3, Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    check-cast v1, Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 43
    move-result v4

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 47
    move-result v5

    .line 48
    add-int/2addr v4, v5

    .line 49
    .line 50
    add-int/lit8 v4, v4, 0x5

    .line 51
    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v6, " "

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v7, "="

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v8, "\n"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v5

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 87
    move-result-object v9

    .line 88
    array-length v9, v9

    .line 89
    .line 90
    :goto_1
    if-eq v4, v9, :cond_0

    .line 91
    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v5

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 121
    move-result-object v4

    .line 122
    array-length v4, v4

    .line 123
    move v10, v9

    .line 124
    move v9, v4

    .line 125
    move v4, v10

    .line 126
    goto :goto_1

    .line 127
    .line 128
    .line 129
    :cond_0
    invoke-virtual {v0, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 130
    goto :goto_0

    .line 131
    .line 132
    .line 133
    :cond_1
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 138
    move-result-object p1

    .line 139
    return-object p1
.end method

.method private failForBigNumber(Ljava/lang/String;JJ)V
    .locals 7

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->failForBigNumber(Ljava/lang/String;JJLjava/lang/String;)V

    return-void
.end method

.method private failForBigNumber(Ljava/lang/String;JJLjava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    cmp-long v0, p2, p4

    if-gtz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\' is too big ( > "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " )."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private failForBigNumberWithPosixMessage(Ljava/lang/String;JJ)V
    .locals 7

    .line 1
    .line 2
    const-string v6, " Use STAR or POSIX extensions to overcome this limit"

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-wide v2, p2

    .line 6
    move-wide v4, p4

    .line 7
    .line 8
    .line 9
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->failForBigNumber(Ljava/lang/String;JJLjava/lang/String;)V

    .line 10
    return-void
.end method

.method private failForBigNumbers(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)V
    .locals 12

    .line 1
    .line 2
    const-string v1, "entry size"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    .line 6
    move-result-wide v2

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const-wide v4, 0x1ffffffffL

    .line 12
    move-object v0, p0

    .line 13
    .line 14
    .line 15
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    .line 16
    .line 17
    const-string v7, "group id"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getLongGroupId()J

    .line 21
    move-result-wide v8

    .line 22
    .line 23
    .line 24
    const-wide/32 v10, 0x1fffff

    .line 25
    move-object v6, p0

    .line 26
    .line 27
    .line 28
    invoke-direct/range {v6 .. v11}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->failForBigNumberWithPosixMessage(Ljava/lang/String;JJ)V

    .line 29
    .line 30
    const-string v1, "last modification time"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getModTime()Ljava/util/Date;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 38
    move-result-wide v2

    .line 39
    .line 40
    const-wide/16 v4, 0x3e8

    .line 41
    div-long/2addr v2, v4

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    const-wide v4, 0x1ffffffffL

    .line 47
    move-object v0, p0

    .line 48
    .line 49
    .line 50
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    .line 51
    .line 52
    const-string v7, "user id"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getLongUserId()J

    .line 56
    move-result-wide v8

    .line 57
    .line 58
    .line 59
    invoke-direct/range {v6 .. v11}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    .line 60
    .line 61
    const-string v1, "mode"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getMode()I

    .line 65
    move-result v0

    .line 66
    int-to-long v2, v0

    .line 67
    .line 68
    .line 69
    const-wide/32 v4, 0x1fffff

    .line 70
    move-object v0, p0

    .line 71
    .line 72
    .line 73
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    .line 74
    .line 75
    const-string v7, "major device number"

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getDevMajor()I

    .line 79
    move-result v0

    .line 80
    int-to-long v8, v0

    .line 81
    .line 82
    .line 83
    invoke-direct/range {v6 .. v11}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    .line 84
    .line 85
    const-string v1, "minor device number"

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getDevMinor()I

    .line 89
    move-result p1

    .line 90
    int-to-long v2, p1

    .line 91
    move-object v0, p0

    .line 92
    .line 93
    .line 94
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    .line 95
    return-void
.end method

.method private handleLongName(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;BLjava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "B",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p2}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 14
    move-result v2

    .line 15
    sub-int/2addr v1, v2

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    const/16 v3, 0x64

    .line 19
    .line 20
    if-lt v1, v3, :cond_3

    .line 21
    .line 22
    iget v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->longFileMode:I

    .line 23
    const/4 v5, 0x3

    .line 24
    const/4 v6, 0x1

    .line 25
    .line 26
    if-ne v4, v5, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return v6

    .line 31
    :cond_0
    const/4 p3, 0x2

    .line 32
    .line 33
    if-ne v4, p3, :cond_1

    .line 34
    .line 35
    new-instance p2, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 36
    .line 37
    const-string p3, "././@LongLink"

    .line 38
    .line 39
    .line 40
    invoke-direct {p2, p3, p5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/lang/String;B)V

    .line 41
    int-to-long p3, v1

    .line 42
    .line 43
    const-wide/16 p5, 0x1

    .line 44
    add-long/2addr p3, p5

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p3, p4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setSize(J)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->transferModTime(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 61
    move-result p2

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->write([BII)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->write(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->closeArchiveEntry()V

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_1
    if-ne v4, v6, :cond_2

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 77
    .line 78
    new-instance p3, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string p4, " \'"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string p2, "\' is too long ( > "

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string p2, " bytes)"

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object p2

    .line 110
    .line 111
    .line 112
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 113
    throw p1

    .line 114
    :cond_3
    :goto_0
    return v2
.end method

.method private padAsNeeded()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordsWritten:I

    .line 3
    .line 4
    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordsPerBlock:I

    .line 5
    rem-int/2addr v0, v1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :goto_0
    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordsPerBlock:I

    .line 10
    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->writeEOFRecord()V

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-void
.end method

.method private shouldBeReplaced(C)Z
    .locals 1

    if-eqz p1, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5c

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private stripTo7Bits(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    :goto_0
    if-ge v2, v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 16
    move-result v3

    .line 17
    .line 18
    and-int/lit8 v3, v3, 0x7f

    .line 19
    int-to-char v3, v3

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->shouldBeReplaced(C)Z

    .line 23
    move-result v4

    .line 24
    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    const-string v3, "_"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    goto :goto_1

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method private transferModTime(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getModTime()Ljava/util/Date;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    const-wide/16 v2, 0x3e8

    .line 11
    div-long/2addr v0, v2

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-ltz v4, :cond_0

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    const-wide v4, 0x1ffffffffL

    .line 23
    .line 24
    cmp-long v0, v0, v4

    .line 25
    .line 26
    if-lez v0, :cond_1

    .line 27
    .line 28
    :cond_0
    new-instance p1, Ljava/util/Date;

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p2, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setModTime(Ljava/util/Date;)V

    .line 35
    return-void
.end method

.method private writeEOFRecord()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordBuf:[B

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 7
    .line 8
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordBuf:[B

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->writeRecord([B)V

    .line 12
    return-void
.end method

.method private writeRecord([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    .line 3
    const/16 v1, 0x200

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->out:Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 11
    .line 12
    iget p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordsWritten:I

    .line 13
    .line 14
    add-int/lit8 p1, p1, 0x1

    .line 15
    .line 16
    iput p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordsWritten:I

    .line 17
    return-void

    .line 18
    .line 19
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    const-string v3, "record to write has length \'"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    array-length p1, p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string p1, "\' which is not the record size of \'"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string p1, "\'"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 54
    throw v0
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
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->finished:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->finish()V

    .line 8
    .line 9
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->closed:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->out:Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->close()V

    .line 17
    const/4 v0, 0x1

    .line 18
    .line 19
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->closed:Z

    .line 20
    :cond_1
    return-void
.end method

.method public closeArchiveEntry()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->finished:Z

    .line 3
    .line 4
    if-nez v0, :cond_3

    .line 5
    .line 6
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->haveUnclosedEntry:Z

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->out:Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->flushBlock()V

    .line 14
    .line 15
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currBytes:J

    .line 16
    .line 17
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currSize:J

    .line 18
    .line 19
    cmp-long v0, v0, v2

    .line 20
    .line 21
    if-ltz v0, :cond_1

    .line 22
    .line 23
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordsWritten:I

    .line 24
    int-to-long v0, v0

    .line 25
    .line 26
    const-wide/16 v4, 0x200

    .line 27
    .line 28
    div-long v6, v2, v4

    .line 29
    add-long/2addr v0, v6

    .line 30
    long-to-int v0, v0

    .line 31
    .line 32
    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordsWritten:I

    .line 33
    .line 34
    const-wide/16 v6, 0x0

    .line 35
    rem-long/2addr v2, v4

    .line 36
    .line 37
    cmp-long v1, v6, v2

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordsWritten:I

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 45
    .line 46
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->haveUnclosedEntry:Z

    .line 47
    return-void

    .line 48
    .line 49
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    const-string v2, "entry \'"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currName:Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v2, "\' closed at \'"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currBytes:J

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v2, "\' before the \'"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currSize:J

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v2, "\' bytes specified in the header were written"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    .line 96
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 97
    throw v0

    .line 98
    .line 99
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 100
    .line 101
    const-string v1, "No current entry to close"

    .line 102
    .line 103
    .line 104
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 105
    throw v0

    .line 106
    .line 107
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 108
    .line 109
    const-string v1, "Stream has already been finished"

    .line 110
    .line 111
    .line 112
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 113
    throw v0
.end method

.method public createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->finished:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    return-object v0

    .line 11
    .line 12
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 13
    .line 14
    const-string p2, "Stream has already been finished"

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p1
.end method

.method public finish()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->finished:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->haveUnclosedEntry:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->writeEOFRecord()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->writeEOFRecord()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->padAsNeeded()V

    .line 18
    .line 19
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->out:Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 23
    const/4 v0, 0x1

    .line 24
    .line 25
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->finished:Z

    .line 26
    return-void

    .line 27
    .line 28
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 29
    .line 30
    const-string v1, "This archive contains unclosed entries."

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 34
    throw v0

    .line 35
    .line 36
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 37
    .line 38
    const-string v1, "This archive has already been finished"

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 42
    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->out:Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 6
    return-void
.end method

.method public getBytesWritten()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->countingOut:Lorg/apache/commons/compress/utils/CountingOutputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/CountingOutputStream;->getBytesWritten()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getCount()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->getBytesWritten()J

    .line 4
    move-result-wide v0

    .line 5
    long-to-int v0, v0

    .line 6
    return v0
.end method

.method public getRecordSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x200

    return v0
.end method

.method public putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v7, p0

    .line 3
    .line 4
    iget-boolean v0, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->finished:Z

    .line 5
    .line 6
    if-nez v0, :cond_c

    .line 7
    .line 8
    move-object/from16 v8, p1

    .line 9
    .line 10
    check-cast v8, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isGlobalPaxHeader()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    const-wide/16 v9, 0x0

    .line 17
    const/4 v12, 0x1

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getExtraPaxHeaders()Ljava/util/Map;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-direct {v7, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->encodeExtendedPaxHeadersContents(Ljava/util/Map;)[B

    .line 27
    move-result-object v0

    .line 28
    array-length v1, v0

    .line 29
    int-to-long v1, v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v8, v1, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setSize(J)V

    .line 33
    .line 34
    iget-object v1, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordBuf:[B

    .line 35
    .line 36
    iget-object v2, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 37
    .line 38
    iget v3, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->bigNumberMode:I

    .line 39
    .line 40
    if-ne v3, v12, :cond_0

    .line 41
    move v11, v12

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v11, 0x0

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {v8, v1, v2, v11}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeader([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;Z)V

    .line 47
    .line 48
    iget-object v1, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordBuf:[B

    .line 49
    .line 50
    .line 51
    invoke-direct {v7, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->writeRecord([B)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    .line 55
    move-result-wide v1

    .line 56
    .line 57
    iput-wide v1, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currSize:J

    .line 58
    .line 59
    iput-wide v9, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currBytes:J

    .line 60
    .line 61
    iput-boolean v12, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->haveUnclosedEntry:Z

    .line 62
    .line 63
    .line 64
    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V

    .line 65
    .line 66
    .line 67
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->closeArchiveEntry()V

    .line 68
    .line 69
    goto/16 :goto_5

    .line 70
    .line 71
    :cond_1
    new-instance v13, Ljava/util/HashMap;

    .line 72
    .line 73
    .line 74
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    .line 78
    move-result-object v14

    .line 79
    .line 80
    const-string v4, "path"

    .line 81
    .line 82
    const/16 v5, 0x4c

    .line 83
    .line 84
    const-string v6, "file name"

    .line 85
    .line 86
    move-object/from16 v0, p0

    .line 87
    move-object v1, v8

    .line 88
    move-object v2, v14

    .line 89
    move-object v3, v13

    .line 90
    .line 91
    .line 92
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->handleLongName(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;BLjava/lang/String;)Z

    .line 93
    move-result v15

    .line 94
    .line 95
    .line 96
    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getLinkName()Ljava/lang/String;

    .line 97
    move-result-object v6

    .line 98
    .line 99
    if-eqz v6, :cond_2

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 103
    move-result v0

    .line 104
    .line 105
    if-lez v0, :cond_2

    .line 106
    .line 107
    const-string v4, "linkpath"

    .line 108
    .line 109
    const/16 v5, 0x4b

    .line 110
    .line 111
    const-string v16, "link name"

    .line 112
    .line 113
    move-object/from16 v0, p0

    .line 114
    move-object v1, v8

    .line 115
    move-object v2, v6

    .line 116
    move-object v3, v13

    .line 117
    move-object v11, v6

    .line 118
    .line 119
    move-object/from16 v6, v16

    .line 120
    .line 121
    .line 122
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->handleLongName(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;BLjava/lang/String;)Z

    .line 123
    move-result v0

    .line 124
    .line 125
    if-eqz v0, :cond_3

    .line 126
    move v0, v12

    .line 127
    goto :goto_1

    .line 128
    :cond_2
    move-object v11, v6

    .line 129
    :cond_3
    const/4 v0, 0x0

    .line 130
    .line 131
    :goto_1
    iget v1, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->bigNumberMode:I

    .line 132
    const/4 v2, 0x2

    .line 133
    .line 134
    if-ne v1, v2, :cond_4

    .line 135
    .line 136
    .line 137
    invoke-direct {v7, v13, v8}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeadersForBigNumbers(Ljava/util/Map;Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)V

    .line 138
    goto :goto_2

    .line 139
    .line 140
    :cond_4
    if-eq v1, v12, :cond_5

    .line 141
    .line 142
    .line 143
    invoke-direct {v7, v8}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->failForBigNumbers(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)V

    .line 144
    .line 145
    :cond_5
    :goto_2
    iget-boolean v1, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeadersForNonAsciiNames:Z

    .line 146
    .line 147
    if-eqz v1, :cond_6

    .line 148
    .line 149
    if-nez v15, :cond_6

    .line 150
    .line 151
    sget-object v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->ASCII:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 152
    .line 153
    .line 154
    invoke-interface {v1, v14}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    .line 155
    move-result v1

    .line 156
    .line 157
    if-nez v1, :cond_6

    .line 158
    .line 159
    const-string v1, "path"

    .line 160
    .line 161
    .line 162
    invoke-interface {v13, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    :cond_6
    iget-boolean v1, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeadersForNonAsciiNames:Z

    .line 165
    .line 166
    if-eqz v1, :cond_8

    .line 167
    .line 168
    if-nez v0, :cond_8

    .line 169
    .line 170
    .line 171
    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isLink()Z

    .line 172
    move-result v0

    .line 173
    .line 174
    if-nez v0, :cond_7

    .line 175
    .line 176
    .line 177
    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isSymbolicLink()Z

    .line 178
    move-result v0

    .line 179
    .line 180
    if-eqz v0, :cond_8

    .line 181
    .line 182
    :cond_7
    sget-object v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->ASCII:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 183
    .line 184
    .line 185
    invoke-interface {v0, v11}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    .line 186
    move-result v0

    .line 187
    .line 188
    if-nez v0, :cond_8

    .line 189
    .line 190
    const-string v0, "linkpath"

    .line 191
    .line 192
    .line 193
    invoke-interface {v13, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    :cond_8
    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getExtraPaxHeaders()Ljava/util/Map;

    .line 197
    move-result-object v0

    .line 198
    .line 199
    .line 200
    invoke-interface {v13, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 201
    .line 202
    .line 203
    invoke-interface {v13}, Ljava/util/Map;->size()I

    .line 204
    move-result v0

    .line 205
    .line 206
    if-lez v0, :cond_9

    .line 207
    .line 208
    .line 209
    invoke-virtual {v7, v8, v14, v13}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->writePaxHeaders(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;Ljava/lang/String;Ljava/util/Map;)V

    .line 210
    .line 211
    :cond_9
    iget-object v0, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordBuf:[B

    .line 212
    .line 213
    iget-object v1, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 214
    .line 215
    iget v2, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->bigNumberMode:I

    .line 216
    .line 217
    if-ne v2, v12, :cond_a

    .line 218
    move v11, v12

    .line 219
    goto :goto_3

    .line 220
    :cond_a
    const/4 v11, 0x0

    .line 221
    .line 222
    .line 223
    :goto_3
    invoke-virtual {v8, v0, v1, v11}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeader([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;Z)V

    .line 224
    .line 225
    iget-object v0, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordBuf:[B

    .line 226
    .line 227
    .line 228
    invoke-direct {v7, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->writeRecord([B)V

    .line 229
    .line 230
    iput-wide v9, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currBytes:J

    .line 231
    .line 232
    .line 233
    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isDirectory()Z

    .line 234
    move-result v0

    .line 235
    .line 236
    if-eqz v0, :cond_b

    .line 237
    .line 238
    iput-wide v9, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currSize:J

    .line 239
    goto :goto_4

    .line 240
    .line 241
    .line 242
    :cond_b
    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    .line 243
    move-result-wide v0

    .line 244
    .line 245
    iput-wide v0, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currSize:J

    .line 246
    .line 247
    :goto_4
    iput-object v14, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currName:Ljava/lang/String;

    .line 248
    .line 249
    iput-boolean v12, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->haveUnclosedEntry:Z

    .line 250
    :goto_5
    return-void

    .line 251
    .line 252
    :cond_c
    new-instance v0, Ljava/io/IOException;

    .line 253
    .line 254
    const-string v1, "Stream has already been finished"

    .line 255
    .line 256
    .line 257
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 258
    throw v0
.end method

.method public setAddPaxHeadersForNonAsciiNames(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeadersForNonAsciiNames:Z

    return-void
.end method

.method public setBigNumberMode(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->bigNumberMode:I

    return-void
.end method

.method public setLongFileMode(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->longFileMode:I

    return-void
.end method

.method public write([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->haveUnclosedEntry:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currBytes:J

    .line 7
    int-to-long v2, p3

    .line 8
    add-long/2addr v0, v2

    .line 9
    .line 10
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currSize:J

    .line 11
    .line 12
    cmp-long v0, v0, v4

    .line 13
    .line 14
    if-gtz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->out:Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->write([BII)V

    .line 20
    .line 21
    iget-wide p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currBytes:J

    .line 22
    add-long/2addr p1, v2

    .line 23
    .line 24
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currBytes:J

    .line 25
    return-void

    .line 26
    .line 27
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 28
    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    const-string v0, "request to write \'"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string p3, "\' bytes exceeds size in header of \'"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currSize:J

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string p3, "\' bytes for entry \'"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currName:Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string p3, "\'"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p2

    .line 70
    .line 71
    .line 72
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 73
    throw p1

    .line 74
    .line 75
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    const-string p2, "No current tar entry"

    .line 78
    .line 79
    .line 80
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 81
    throw p1
.end method

.method writePaxHeaders(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "./PaxHeaders.X/"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->stripTo7Bits(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 25
    move-result v0

    .line 26
    .line 27
    const/16 v1, 0x64

    .line 28
    .line 29
    if-lt v0, v1, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 31
    .line 32
    const/16 v1, 0x63

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 39
    .line 40
    const/16 v1, 0x78

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, p2, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/lang/String;B)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->transferModTime(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->encodeExtendedPaxHeadersContents(Ljava/util/Map;)[B

    .line 50
    move-result-object p1

    .line 51
    array-length p2, p1

    .line 52
    int-to-long p2, p2

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p2, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setSize(J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->closeArchiveEntry()V

    .line 65
    return-void
.end method
