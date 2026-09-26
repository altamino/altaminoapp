.class public Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final SIGNATURE_HEADER_SIZE:I = 0x20

.field static final sevenZSignature:[B


# instance fields
.field private final archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

.field private channel:Ljava/nio/channels/SeekableByteChannel;

.field private currentEntryIndex:I

.field private currentFolderIndex:I

.field private currentFolderInputStream:Ljava/io/InputStream;

.field private final deferredBlockStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final fileName:Ljava/lang/String;

.field private password:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x37t
        0x7at
        -0x44t
        -0x51t
        0x27t
        0x1ct
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/io/File;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/unity3d/services/core/misc/a;->a(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {}, Lorg/apache/commons/compress/archivers/sevenz/d;->a()Ljava/nio/file/StandardOpenOption;

    move-result-object v1

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/e;->a(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, p1, p2, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZ)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "unknown archive"

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZ)V

    return-void
.end method

.method private constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    .line 9
    :try_start_0
    invoke-direct {p0, p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readHeaders([B)Lorg/apache/commons/compress/archivers/sevenz/Archive;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    if-eqz p3, :cond_0

    .line 10
    array-length p1, p3

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    .line 11
    array-length p2, p3

    const/4 v0, 0x0

    invoke-static {p3, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :goto_1
    if-eqz p4, :cond_1

    iget-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 12
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/b;->a(Ljava/nio/channels/SeekableByteChannel;)V

    .line 13
    :cond_1
    throw p1
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "unknown archive"

    .line 5
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[B)V

    return-void
.end method

.method private buildDecoderStack(Lorg/apache/commons/compress/archivers/sevenz/Folder;JILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p2, p3}, Lorg/apache/commons/compress/archivers/sevenz/c;->a(Ljava/nio/channels/SeekableByteChannel;J)Ljava/nio/channels/SeekableByteChannel;

    .line 6
    .line 7
    new-instance p2, Ljava/io/BufferedInputStream;

    .line 8
    .line 9
    new-instance p3, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;

    .line 10
    .line 11
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    .line 14
    .line 15
    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    .line 16
    .line 17
    aget-wide v2, v1, p4

    .line 18
    .line 19
    .line 20
    invoke-direct {p3, v0, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, p3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 24
    .line 25
    new-instance p3, Ljava/util/LinkedList;

    .line 26
    .line 27
    .line 28
    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getOrderedCoders()Ljava/lang/Iterable;

    .line 32
    move-result-object p4

    .line 33
    .line 34
    .line 35
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object p4

    .line 37
    move-object v1, p2

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result p2

    .line 42
    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    check-cast p2, Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 50
    .line 51
    iget-wide v2, p2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    .line 52
    .line 53
    const-wide/16 v4, 0x1

    .line 54
    .line 55
    cmp-long v0, v2, v4

    .line 56
    .line 57
    if-nez v0, :cond_0

    .line 58
    .line 59
    iget-wide v2, p2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    .line 60
    .line 61
    cmp-long v0, v2, v4

    .line 62
    .line 63
    if-nez v0, :cond_0

    .line 64
    .line 65
    iget-object v0, p2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->decompressionMethodId:[B

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->byId([B)Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 69
    move-result-object v6

    .line 70
    .line 71
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSizeForCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;)J

    .line 75
    move-result-wide v2

    .line 76
    .line 77
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    .line 78
    move-object v4, p2

    .line 79
    .line 80
    .line 81
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->addDecoder(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;

    .line 85
    .line 86
    .line 87
    invoke-static {v6}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->findByMethod(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;)Lorg/apache/commons/compress/archivers/sevenz/CoderBase;

    .line 88
    move-result-object v2

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, p2, v1}, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;->getOptionsFromCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;Ljava/io/InputStream;)Ljava/lang/Object;

    .line 92
    move-result-object p2

    .line 93
    .line 94
    .line 95
    invoke-direct {v0, v6, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 99
    goto :goto_0

    .line 100
    .line 101
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 102
    .line 103
    const-string p2, "Multi input/output stream coders are not yet supported"

    .line 104
    .line 105
    .line 106
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 107
    throw p1

    .line 108
    .line 109
    .line 110
    :cond_1
    invoke-virtual {p5, p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    .line 111
    .line 112
    iget-boolean p2, p1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    .line 113
    .line 114
    if-eqz p2, :cond_2

    .line 115
    .line 116
    new-instance p2, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    .line 120
    move-result-wide v2

    .line 121
    .line 122
    iget-wide v4, p1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    .line 123
    move-object v0, p2

    .line 124
    .line 125
    .line 126
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    .line 127
    return-object p2

    .line 128
    :cond_2
    return-object v1
.end method

.method private buildDecodingStream()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    .line 3
    .line 4
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    .line 5
    .line 6
    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    .line 7
    .line 8
    iget v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    .line 9
    .line 10
    aget v1, v1, v2

    .line 11
    .line 12
    if-gez v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18
    return-void

    .line 19
    .line 20
    :cond_0
    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 21
    .line 22
    aget-object v9, v0, v2

    .line 23
    .line 24
    iget v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    .line 25
    .line 26
    if-ne v3, v1, :cond_1

    .line 27
    .line 28
    add-int/lit8 v2, v2, -0x1

    .line 29
    .line 30
    aget-object v0, v0, v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getContentMethods()Ljava/lang/Iterable;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v9, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_1
    iput v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    .line 41
    .line 42
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 46
    .line 47
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 53
    const/4 v0, 0x0

    .line 54
    .line 55
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 56
    .line 57
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    .line 58
    .line 59
    iget-object v2, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 60
    .line 61
    aget-object v4, v2, v1

    .line 62
    .line 63
    iget-object v2, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    .line 64
    .line 65
    iget-object v3, v2, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstPackStreamIndex:[I

    .line 66
    .line 67
    aget v7, v3, v1

    .line 68
    .line 69
    const-wide/16 v5, 0x20

    .line 70
    .line 71
    iget-wide v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    .line 72
    add-long/2addr v0, v5

    .line 73
    .line 74
    iget-object v2, v2, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->packStreamOffsets:[J

    .line 75
    .line 76
    aget-wide v5, v2, v7

    .line 77
    add-long/2addr v5, v0

    .line 78
    move-object v3, p0

    .line 79
    move-object v8, v9

    .line 80
    .line 81
    .line 82
    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->buildDecoderStack(Lorg/apache/commons/compress/archivers/sevenz/Folder;JILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/io/InputStream;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 86
    .line 87
    :goto_0
    new-instance v2, Lorg/apache/commons/compress/utils/BoundedInputStream;

    .line 88
    .line 89
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    .line 93
    move-result-wide v3

    .line 94
    .line 95
    .line 96
    invoke-direct {v2, v0, v3, v4}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCrc()Z

    .line 100
    move-result v0

    .line 101
    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    new-instance v0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    .line 108
    move-result-wide v3

    .line 109
    .line 110
    .line 111
    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getCrcValue()J

    .line 112
    move-result-wide v5

    .line 113
    move-object v1, v0

    .line 114
    .line 115
    .line 116
    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    .line 117
    move-object v2, v0

    .line 118
    .line 119
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method private calculateStreamMap(Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;-><init>()V

    .line 6
    .line 7
    iget-object v1, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    array-length v1, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v1, v2

    .line 14
    .line 15
    :goto_0
    new-array v3, v1, [I

    .line 16
    .line 17
    iput-object v3, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstPackStreamIndex:[I

    .line 18
    move v3, v2

    .line 19
    move v4, v3

    .line 20
    .line 21
    :goto_1
    if-ge v3, v1, :cond_1

    .line 22
    .line 23
    iget-object v5, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstPackStreamIndex:[I

    .line 24
    .line 25
    aput v4, v5, v3

    .line 26
    .line 27
    iget-object v5, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 28
    .line 29
    aget-object v5, v5, v3

    .line 30
    .line 31
    iget-object v5, v5, Lorg/apache/commons/compress/archivers/sevenz/Folder;->packedStreams:[J

    .line 32
    array-length v5, v5

    .line 33
    add-int/2addr v4, v5

    .line 34
    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_1
    iget-object v3, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    .line 39
    .line 40
    if-eqz v3, :cond_2

    .line 41
    array-length v3, v3

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    move v3, v2

    .line 44
    .line 45
    :goto_2
    new-array v4, v3, [J

    .line 46
    .line 47
    iput-object v4, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->packStreamOffsets:[J

    .line 48
    .line 49
    const-wide/16 v4, 0x0

    .line 50
    move v6, v2

    .line 51
    .line 52
    :goto_3
    if-ge v6, v3, :cond_3

    .line 53
    .line 54
    iget-object v7, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->packStreamOffsets:[J

    .line 55
    .line 56
    aput-wide v4, v7, v6

    .line 57
    .line 58
    iget-object v7, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    .line 59
    .line 60
    aget-wide v8, v7, v6

    .line 61
    add-long/2addr v4, v8

    .line 62
    .line 63
    add-int/lit8 v6, v6, 0x1

    .line 64
    goto :goto_3

    .line 65
    .line 66
    :cond_3
    new-array v1, v1, [I

    .line 67
    .line 68
    iput-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstFileIndex:[I

    .line 69
    .line 70
    iget-object v1, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 71
    array-length v1, v1

    .line 72
    .line 73
    new-array v1, v1, [I

    .line 74
    .line 75
    iput-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    .line 76
    move v1, v2

    .line 77
    move v3, v1

    .line 78
    move v4, v3

    .line 79
    .line 80
    :goto_4
    iget-object v5, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 81
    array-length v6, v5

    .line 82
    .line 83
    if-ge v1, v6, :cond_b

    .line 84
    .line 85
    aget-object v5, v5, v1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    .line 89
    move-result v5

    .line 90
    .line 91
    if-nez v5, :cond_4

    .line 92
    .line 93
    if-nez v3, :cond_4

    .line 94
    .line 95
    iget-object v5, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    .line 96
    const/4 v6, -0x1

    .line 97
    .line 98
    aput v6, v5, v1

    .line 99
    goto :goto_8

    .line 100
    .line 101
    :cond_4
    if-nez v3, :cond_8

    .line 102
    .line 103
    :goto_5
    iget-object v5, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 104
    array-length v6, v5

    .line 105
    .line 106
    if-ge v4, v6, :cond_6

    .line 107
    .line 108
    iget-object v6, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstFileIndex:[I

    .line 109
    .line 110
    aput v1, v6, v4

    .line 111
    .line 112
    aget-object v6, v5, v4

    .line 113
    .line 114
    iget v6, v6, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    .line 115
    .line 116
    if-lez v6, :cond_5

    .line 117
    goto :goto_6

    .line 118
    .line 119
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 120
    goto :goto_5

    .line 121
    :cond_6
    :goto_6
    array-length v5, v5

    .line 122
    .line 123
    if-ge v4, v5, :cond_7

    .line 124
    goto :goto_7

    .line 125
    .line 126
    :cond_7
    new-instance p1, Ljava/io/IOException;

    .line 127
    .line 128
    const-string v0, "Too few folders in archive"

    .line 129
    .line 130
    .line 131
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 132
    throw p1

    .line 133
    .line 134
    :cond_8
    :goto_7
    iget-object v5, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    .line 135
    .line 136
    aput v4, v5, v1

    .line 137
    .line 138
    iget-object v5, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 139
    .line 140
    aget-object v5, v5, v1

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    .line 144
    move-result v5

    .line 145
    .line 146
    if-nez v5, :cond_9

    .line 147
    goto :goto_8

    .line 148
    .line 149
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 150
    .line 151
    iget-object v5, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 152
    .line 153
    aget-object v5, v5, v4

    .line 154
    .line 155
    iget v5, v5, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    .line 156
    .line 157
    if-lt v3, v5, :cond_a

    .line 158
    .line 159
    add-int/lit8 v4, v4, 0x1

    .line 160
    move v3, v2

    .line 161
    .line 162
    :cond_a
    :goto_8
    add-int/lit8 v1, v1, 0x1

    .line 163
    goto :goto_4

    .line 164
    .line 165
    :cond_b
    iput-object v0, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    .line 166
    return-void
.end method

.method private getCurrentStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    .line 3
    .line 4
    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 5
    .line 6
    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    .line 7
    .line 8
    aget-object v0, v0, v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v0, v0, v2

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 22
    .line 23
    new-array v1, v1, [B

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 27
    return-object v0

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-nez v0, :cond_4

    .line 36
    .line 37
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 41
    move-result v0

    .line 42
    const/4 v2, 0x1

    .line 43
    .line 44
    if-le v0, v2, :cond_3

    .line 45
    .line 46
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    check-cast v0, Ljava/io/InputStream;

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    const-wide v2, 0x7fffffffffffffffL

    .line 58
    .line 59
    .line 60
    :try_start_0
    invoke-static {v0, v2, v3}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception v1

    .line 68
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    :catchall_1
    move-exception v2

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    .line 74
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 75
    goto :goto_1

    .line 76
    :catchall_2
    move-exception v0

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 80
    :cond_2
    :goto_1
    throw v2

    .line 81
    .line 82
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    check-cast v0, Ljava/io/InputStream;

    .line 89
    return-object v0

    .line 90
    .line 91
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 92
    .line 93
    const-string v1, "No current 7z entry (call getNextEntry() first)."

    .line 94
    .line 95
    .line 96
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 97
    throw v0
.end method

.method private static getUnsignedByte(Ljava/nio/ByteBuffer;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 4
    move-result p0

    .line 5
    .line 6
    and-int/lit16 p0, p0, 0xff

    .line 7
    return p0
.end method

.method public static matches([BI)Z
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    if-ge p1, v0, :cond_0

    .line 7
    return v1

    .line 8
    :cond_0
    move p1, v1

    .line 9
    .line 10
    :goto_0
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    .line 11
    array-length v2, v0

    .line 12
    .line 13
    if-ge p1, v2, :cond_2

    .line 14
    .line 15
    aget-byte v2, p0, p1

    .line 16
    .line 17
    aget-byte v0, v0, p1

    .line 18
    .line 19
    if-eq v2, v0, :cond_1

    .line 20
    return v1

    .line 21
    .line 22
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method private readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance p1, Ljava/util/BitSet;

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, p2}, Ljava/util/BitSet;-><init>(I)V

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    :goto_0
    if-ge v0, p2, :cond_1

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 25
    move-result-object p1

    .line 26
    :cond_1
    return-object p1
.end method

.method private readArchiveProperties(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    :goto_0
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    .line 10
    move-result-wide v0

    .line 11
    long-to-int v0, v0

    .line 12
    .line 13
    new-array v0, v0, [B

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method private readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/BitSet;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p2}, Ljava/util/BitSet;-><init>(I)V

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    move v3, v2

    .line 9
    move v4, v3

    .line 10
    .line 11
    :goto_0
    if-ge v2, p2, :cond_2

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 17
    move-result v4

    .line 18
    .line 19
    const/16 v3, 0x80

    .line 20
    .line 21
    :cond_0
    and-int v5, v4, v3

    .line 22
    .line 23
    if-eqz v5, :cond_1

    .line 24
    const/4 v5, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move v5, v1

    .line 27
    .line 28
    .line 29
    :goto_1
    invoke-virtual {v0, v2, v5}, Ljava/util/BitSet;->set(IZ)V

    .line 30
    .line 31
    ushr-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return-object v0
.end method

.method private readEncodedHeader(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;[B)Ljava/nio/ByteBuffer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 4
    .line 5
    iget-object p1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    aget-object p1, p1, v0

    .line 9
    .line 10
    const-wide/16 v1, 0x20

    .line 11
    .line 12
    iget-wide v3, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    .line 13
    add-long/2addr v3, v1

    .line 14
    .line 15
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/c;->a(Ljava/nio/channels/SeekableByteChannel;J)Ljava/nio/channels/SeekableByteChannel;

    .line 19
    .line 20
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;

    .line 21
    .line 22
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 23
    .line 24
    iget-object p2, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    .line 25
    .line 26
    aget-wide v3, p2, v0

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getOrderedCoders()Ljava/lang/Iterable;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    .line 36
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object p2

    .line 38
    move-object v3, v1

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v0

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 49
    move-object v6, v0

    .line 50
    .line 51
    check-cast v6, Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 52
    .line 53
    iget-wide v0, v6, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    .line 54
    .line 55
    const-wide/16 v4, 0x1

    .line 56
    .line 57
    cmp-long v0, v0, v4

    .line 58
    .line 59
    if-nez v0, :cond_0

    .line 60
    .line 61
    iget-wide v0, v6, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    .line 62
    .line 63
    cmp-long v0, v0, v4

    .line 64
    .line 65
    if-nez v0, :cond_0

    .line 66
    .line 67
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v6}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSizeForCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;)J

    .line 71
    move-result-wide v4

    .line 72
    move-object v7, p3

    .line 73
    .line 74
    .line 75
    invoke-static/range {v2 .. v7}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->addDecoder(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;

    .line 76
    move-result-object v3

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 80
    .line 81
    const-string p2, "Multi input/output stream coders are not yet supported"

    .line 82
    .line 83
    .line 84
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 85
    throw p1

    .line 86
    .line 87
    :cond_1
    iget-boolean p2, p1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    .line 88
    .line 89
    if-eqz p2, :cond_2

    .line 90
    .line 91
    new-instance p2, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    .line 95
    move-result-wide v4

    .line 96
    .line 97
    iget-wide v6, p1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    .line 98
    move-object v2, p2

    .line 99
    .line 100
    .line 101
    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    .line 102
    move-object v3, p2

    .line 103
    .line 104
    .line 105
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    .line 106
    move-result-wide p1

    .line 107
    long-to-int p1, p1

    .line 108
    .line 109
    new-array p1, p1, [B

    .line 110
    .line 111
    new-instance p2, Ljava/io/DataInputStream;

    .line 112
    .line 113
    .line 114
    invoke-direct {p2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 115
    .line 116
    .line 117
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 121
    .line 122
    .line 123
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 124
    move-result-object p1

    .line 125
    .line 126
    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 130
    move-result-object p1

    .line 131
    return-object p1

    .line 132
    :catchall_0
    move-exception p1

    .line 133
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 134
    :catchall_1
    move-exception p3

    .line 135
    .line 136
    .line 137
    :try_start_2
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 138
    goto :goto_1

    .line 139
    :catchall_2
    move-exception p2

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 143
    :goto_1
    throw p3
.end method

.method private readFilesInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    long-to-int v3, v3

    .line 2
    new-array v4, v3, [Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_0

    .line 3
    new-instance v7, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-direct {v7}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;-><init>()V

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    move-object v7, v6

    move-object v8, v7

    .line 4
    :goto_1
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v9

    if-nez v9, :cond_8

    move v1, v5

    move v9, v1

    move v12, v9

    :goto_2
    if-ge v1, v3, :cond_7

    .line 5
    aget-object v13, v4, v1

    const/4 v14, 0x1

    if-eqz v6, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-nez v15, :cond_1

    goto :goto_3

    :cond_1
    move v15, v5

    goto :goto_4

    :cond_2
    :goto_3
    move v15, v14

    :goto_4
    invoke-virtual {v13, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasStream(Z)V

    .line 6
    aget-object v13, v4, v1

    invoke-virtual {v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 7
    aget-object v13, v4, v1

    invoke-virtual {v13, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setDirectory(Z)V

    .line 8
    aget-object v13, v4, v1

    invoke-virtual {v13, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAntiItem(Z)V

    .line 9
    aget-object v13, v4, v1

    iget-object v14, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    iget-object v14, v14, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    invoke-virtual {v14, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    invoke-virtual {v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCrc(Z)V

    .line 10
    aget-object v13, v4, v1

    iget-object v14, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    iget-object v14, v14, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    aget-wide v10, v14, v9

    invoke-virtual {v13, v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setCrcValue(J)V

    .line 11
    aget-object v10, v4, v1

    iget-object v11, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    iget-object v11, v11, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    aget-wide v13, v11, v9

    invoke-virtual {v10, v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setSize(J)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 12
    :cond_3
    aget-object v10, v4, v1

    if-eqz v7, :cond_5

    invoke-virtual {v7, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_5

    :cond_4
    move v11, v5

    goto :goto_6

    :cond_5
    :goto_5
    move v11, v14

    :goto_6
    invoke-virtual {v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setDirectory(Z)V

    .line 13
    aget-object v10, v4, v1

    if-eqz v8, :cond_6

    invoke-virtual {v8, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_7

    :cond_6
    move v14, v5

    :goto_7
    invoke-virtual {v10, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAntiItem(Z)V

    .line 14
    aget-object v10, v4, v1

    invoke-virtual {v10, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCrc(Z)V

    .line 15
    aget-object v10, v4, v1

    const-wide/16 v13, 0x0

    invoke-virtual {v10, v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setSize(J)V

    add-int/lit8 v12, v12, 0x1

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 16
    :cond_7
    iput-object v4, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 17
    invoke-direct {v0, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->calculateStreamMap(Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    return-void

    .line 18
    :cond_8
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v10

    const-string v12, "Unimplemented"

    packed-switch v9, :pswitch_data_0

    .line 19
    :pswitch_0
    invoke-static {v1, v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v12

    cmp-long v10, v12, v10

    if-ltz v10, :cond_9

    goto/16 :goto_e

    .line 20
    :cond_9
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incomplete property of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 21
    :pswitch_1
    invoke-static {v1, v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v12

    cmp-long v9, v12, v10

    if-ltz v9, :cond_a

    goto/16 :goto_e

    .line 22
    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Incomplete kDummy property"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23
    :pswitch_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "kStartPos is unsupported, please report"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24
    :pswitch_3
    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v9

    .line 25
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v10

    if-nez v10, :cond_c

    move v10, v5

    :goto_9
    if-ge v10, v3, :cond_1a

    .line 26
    aget-object v11, v4, v10

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    invoke-virtual {v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasWindowsAttributes(Z)V

    .line 27
    aget-object v11, v4, v10

    invoke-virtual {v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasWindowsAttributes()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 28
    aget-object v11, v4, v10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    invoke-virtual {v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setWindowsAttributes(I)V

    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 29
    :cond_c
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30
    :pswitch_4
    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v9

    .line 31
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v10

    if-nez v10, :cond_e

    move v10, v5

    :goto_a
    if-ge v10, v3, :cond_1a

    .line 32
    aget-object v11, v4, v10

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    invoke-virtual {v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasLastModifiedDate(Z)V

    .line 33
    aget-object v11, v4, v10

    invoke-virtual {v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasLastModifiedDate()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 34
    aget-object v11, v4, v10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setLastModifiedDate(J)V

    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 35
    :cond_e
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    :pswitch_5
    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v9

    .line 37
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v10

    if-nez v10, :cond_10

    move v10, v5

    :goto_b
    if-ge v10, v3, :cond_1a

    .line 38
    aget-object v11, v4, v10

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    invoke-virtual {v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasAccessDate(Z)V

    .line 39
    aget-object v11, v4, v10

    invoke-virtual {v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasAccessDate()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 40
    aget-object v11, v4, v10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAccessDate(J)V

    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 41
    :cond_10
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :pswitch_6
    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v9

    .line 43
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v10

    if-nez v10, :cond_12

    move v10, v5

    :goto_c
    if-ge v10, v3, :cond_1a

    .line 44
    aget-object v11, v4, v10

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    invoke-virtual {v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCreationDate(Z)V

    .line 45
    aget-object v11, v4, v10

    invoke-virtual {v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCreationDate()Z

    move-result v11

    if-eqz v11, :cond_11

    .line 46
    aget-object v11, v4, v10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setCreationDate(J)V

    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 47
    :cond_12
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :pswitch_7
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v9

    if-nez v9, :cond_17

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    and-long/2addr v12, v10

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-nez v9, :cond_16

    long-to-int v9, v10

    .line 49
    new-array v10, v9, [B

    .line 50
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move v11, v5

    move v12, v11

    move v13, v12

    :goto_d
    if-ge v11, v9, :cond_14

    .line 51
    aget-byte v14, v10, v11

    if-nez v14, :cond_13

    add-int/lit8 v14, v11, 0x1

    aget-byte v14, v10, v14

    if-nez v14, :cond_13

    add-int/lit8 v14, v13, 0x1

    .line 52
    aget-object v13, v4, v13

    new-instance v15, Ljava/lang/String;

    sub-int v5, v11, v12

    const-string v2, "UTF-16LE"

    invoke-direct {v15, v10, v12, v5, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v13, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setName(Ljava/lang/String;)V

    add-int/lit8 v12, v11, 0x2

    move v13, v14

    :cond_13
    add-int/lit8 v11, v11, 0x2

    move-object/from16 v2, p2

    const/4 v5, 0x0

    goto :goto_d

    :cond_14
    if-ne v12, v9, :cond_15

    if-ne v13, v3, :cond_15

    goto :goto_e

    .line 53
    :cond_15
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error parsing file names"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_16
    new-instance v1, Ljava/io/IOException;

    const-string v2, "File names length invalid"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_17
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Not implemented"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_8
    if-eqz v6, :cond_18

    .line 56
    invoke-virtual {v6}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    move-object v8, v2

    goto :goto_e

    .line 57
    :cond_18
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Header format error: kEmptyStream must appear before kAnti"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_9
    if-eqz v6, :cond_19

    .line 58
    invoke-virtual {v6}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    move-object v7, v2

    goto :goto_e

    .line 59
    :cond_19
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Header format error: kEmptyStream must appear before kEmptyFile"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :pswitch_a
    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    move-object v6, v2

    :cond_1a
    :goto_e
    move-object/from16 v2, p2

    const/4 v5, 0x0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private readFolder(Ljava/nio/ByteBuffer;)Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    .line 11
    move-result-wide v2

    .line 12
    long-to-int v2, v2

    .line 13
    .line 14
    new-array v3, v2, [Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    move-wide v8, v4

    .line 19
    move-wide v10, v8

    .line 20
    move v7, v6

    .line 21
    .line 22
    :goto_0
    const-wide/16 v12, 0x1

    .line 23
    .line 24
    if-ge v7, v2, :cond_6

    .line 25
    .line 26
    new-instance v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 27
    .line 28
    .line 29
    invoke-direct {v14}, Lorg/apache/commons/compress/archivers/sevenz/Coder;-><init>()V

    .line 30
    .line 31
    aput-object v14, v3, v7

    .line 32
    .line 33
    .line 34
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 35
    move-result v14

    .line 36
    .line 37
    and-int/lit8 v15, v14, 0xf

    .line 38
    .line 39
    and-int/lit8 v16, v14, 0x10

    .line 40
    .line 41
    const/16 v17, 0x1

    .line 42
    .line 43
    if-nez v16, :cond_0

    .line 44
    .line 45
    move/from16 v16, v17

    .line 46
    goto :goto_1

    .line 47
    .line 48
    :cond_0
    move/from16 v16, v6

    .line 49
    .line 50
    :goto_1
    and-int/lit8 v18, v14, 0x20

    .line 51
    .line 52
    if-eqz v18, :cond_1

    .line 53
    .line 54
    move/from16 v18, v17

    .line 55
    goto :goto_2

    .line 56
    .line 57
    :cond_1
    move/from16 v18, v6

    .line 58
    .line 59
    :goto_2
    and-int/lit16 v14, v14, 0x80

    .line 60
    .line 61
    if-eqz v14, :cond_2

    .line 62
    goto :goto_3

    .line 63
    .line 64
    :cond_2
    move/from16 v17, v6

    .line 65
    .line 66
    :goto_3
    aget-object v14, v3, v7

    .line 67
    .line 68
    new-array v15, v15, [B

    .line 69
    .line 70
    iput-object v15, v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;->decompressionMethodId:[B

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v15}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 74
    .line 75
    if-eqz v16, :cond_3

    .line 76
    .line 77
    aget-object v14, v3, v7

    .line 78
    .line 79
    iput-wide v12, v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    .line 80
    .line 81
    iput-wide v12, v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    .line 82
    goto :goto_4

    .line 83
    .line 84
    :cond_3
    aget-object v12, v3, v7

    .line 85
    .line 86
    .line 87
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    .line 88
    move-result-wide v13

    .line 89
    .line 90
    iput-wide v13, v12, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    .line 91
    .line 92
    aget-object v12, v3, v7

    .line 93
    .line 94
    .line 95
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    .line 96
    move-result-wide v13

    .line 97
    .line 98
    iput-wide v13, v12, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    .line 99
    .line 100
    :goto_4
    aget-object v12, v3, v7

    .line 101
    .line 102
    iget-wide v13, v12, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    .line 103
    add-long/2addr v8, v13

    .line 104
    .line 105
    iget-wide v12, v12, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    .line 106
    add-long/2addr v10, v12

    .line 107
    .line 108
    if-eqz v18, :cond_4

    .line 109
    .line 110
    .line 111
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    .line 112
    move-result-wide v12

    .line 113
    .line 114
    aget-object v14, v3, v7

    .line 115
    long-to-int v12, v12

    .line 116
    .line 117
    new-array v12, v12, [B

    .line 118
    .line 119
    iput-object v12, v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 123
    .line 124
    :cond_4
    if-nez v17, :cond_5

    .line 125
    .line 126
    add-int/lit8 v7, v7, 0x1

    .line 127
    goto :goto_0

    .line 128
    .line 129
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .line 130
    .line 131
    const-string v1, "Alternative methods are unsupported, please report. The reference implementation doesn\'t support them either."

    .line 132
    .line 133
    .line 134
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 135
    throw v0

    .line 136
    .line 137
    :cond_6
    iput-object v3, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->coders:[Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 138
    .line 139
    iput-wide v8, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalInputStreams:J

    .line 140
    .line 141
    iput-wide v10, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    .line 142
    .line 143
    cmp-long v2, v10, v4

    .line 144
    .line 145
    if-eqz v2, :cond_e

    .line 146
    sub-long/2addr v10, v12

    .line 147
    long-to-int v2, v10

    .line 148
    .line 149
    new-array v3, v2, [Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    .line 150
    move v4, v6

    .line 151
    .line 152
    :goto_5
    if-ge v4, v2, :cond_7

    .line 153
    .line 154
    new-instance v5, Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    .line 155
    .line 156
    .line 157
    invoke-direct {v5}, Lorg/apache/commons/compress/archivers/sevenz/BindPair;-><init>()V

    .line 158
    .line 159
    aput-object v5, v3, v4

    .line 160
    .line 161
    .line 162
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    .line 163
    move-result-wide v14

    .line 164
    .line 165
    iput-wide v14, v5, Lorg/apache/commons/compress/archivers/sevenz/BindPair;->inIndex:J

    .line 166
    .line 167
    aget-object v5, v3, v4

    .line 168
    .line 169
    .line 170
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    .line 171
    move-result-wide v14

    .line 172
    .line 173
    iput-wide v14, v5, Lorg/apache/commons/compress/archivers/sevenz/BindPair;->outIndex:J

    .line 174
    .line 175
    add-int/lit8 v4, v4, 0x1

    .line 176
    goto :goto_5

    .line 177
    .line 178
    :cond_7
    iput-object v3, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->bindPairs:[Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    .line 179
    .line 180
    cmp-long v2, v8, v10

    .line 181
    .line 182
    if-ltz v2, :cond_d

    .line 183
    .line 184
    sub-long v2, v8, v10

    .line 185
    long-to-int v4, v2

    .line 186
    .line 187
    new-array v5, v4, [J

    .line 188
    .line 189
    cmp-long v2, v2, v12

    .line 190
    .line 191
    if-nez v2, :cond_b

    .line 192
    move v0, v6

    .line 193
    :goto_6
    long-to-int v2, v8

    .line 194
    .line 195
    if-ge v0, v2, :cond_9

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->findBindPairForInStream(I)I

    .line 199
    move-result v3

    .line 200
    .line 201
    if-gez v3, :cond_8

    .line 202
    goto :goto_7

    .line 203
    .line 204
    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 205
    goto :goto_6

    .line 206
    .line 207
    :cond_9
    :goto_7
    if-eq v0, v2, :cond_a

    .line 208
    int-to-long v2, v0

    .line 209
    .line 210
    aput-wide v2, v5, v6

    .line 211
    goto :goto_9

    .line 212
    .line 213
    :cond_a
    new-instance v0, Ljava/io/IOException;

    .line 214
    .line 215
    const-string v1, "Couldn\'t find stream\'s bind pair index"

    .line 216
    .line 217
    .line 218
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 219
    throw v0

    .line 220
    .line 221
    :cond_b
    :goto_8
    if-ge v6, v4, :cond_c

    .line 222
    .line 223
    .line 224
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    .line 225
    move-result-wide v2

    .line 226
    .line 227
    aput-wide v2, v5, v6

    .line 228
    .line 229
    add-int/lit8 v6, v6, 0x1

    .line 230
    goto :goto_8

    .line 231
    .line 232
    :cond_c
    :goto_9
    iput-object v5, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->packedStreams:[J

    .line 233
    return-object v1

    .line 234
    .line 235
    :cond_d
    new-instance v0, Ljava/io/IOException;

    .line 236
    .line 237
    const-string v1, "Total input streams can\'t be less than the number of bind pairs"

    .line 238
    .line 239
    .line 240
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 241
    throw v0

    .line 242
    .line 243
    :cond_e
    new-instance v0, Ljava/io/IOException;

    .line 244
    .line 245
    const-string v1, "Total output streams can\'t be 0"

    .line 246
    .line 247
    .line 248
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 249
    throw v0
.end method

.method private readFully(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 12
    return-void
.end method

.method private readHeader(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readArchiveProperties(Ljava/nio/ByteBuffer;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 14
    move-result v0

    .line 15
    :cond_0
    const/4 v1, 0x3

    .line 16
    .line 17
    if-eq v0, v1, :cond_4

    .line 18
    const/4 v1, 0x4

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 27
    move-result v0

    .line 28
    :cond_1
    const/4 v1, 0x5

    .line 29
    .line 30
    if-ne v0, v1, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFilesInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 37
    move-result v0

    .line 38
    .line 39
    :cond_2
    if-nez v0, :cond_3

    .line 40
    return-void

    .line 41
    .line 42
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 43
    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    const-string v1, "Badly terminated header, found "

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    .line 62
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p1

    .line 64
    .line 65
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 66
    .line 67
    const-string p2, "Additional streams unsupported"

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p1
.end method

.method private readHeaders([B)Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0xc

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFully(Ljava/nio/ByteBuffer;)V

    .line 16
    const/4 v2, 0x6

    .line 17
    .line 18
    new-array v2, v2, [B

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    sget-object v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 27
    move-result v2

    .line 28
    .line 29
    if-eqz v2, :cond_5

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 33
    move-result v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 37
    move-result v3

    .line 38
    const/4 v4, 0x1

    .line 39
    .line 40
    if-nez v2, :cond_4

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 44
    move-result v0

    .line 45
    int-to-long v2, v0

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    const-wide v5, 0xffffffffL

    .line 51
    and-long/2addr v2, v5

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readStartHeader(J)Lorg/apache/commons/compress/archivers/sevenz/StartHeader;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    iget-wide v2, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    .line 58
    long-to-int v5, v2

    .line 59
    int-to-long v6, v5

    .line 60
    .line 61
    cmp-long v2, v6, v2

    .line 62
    .line 63
    if-nez v2, :cond_3

    .line 64
    .line 65
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 66
    .line 67
    const-wide/16 v6, 0x20

    .line 68
    .line 69
    iget-wide v8, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderOffset:J

    .line 70
    add-long/2addr v8, v6

    .line 71
    .line 72
    .line 73
    invoke-static {v2, v8, v9}, Lorg/apache/commons/compress/archivers/sevenz/c;->a(Ljava/nio/channels/SeekableByteChannel;J)Ljava/nio/channels/SeekableByteChannel;

    .line 74
    .line 75
    .line 76
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 77
    move-result-object v2

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    .line 84
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFully(Ljava/nio/ByteBuffer;)V

    .line 85
    .line 86
    new-instance v2, Ljava/util/zip/CRC32;

    .line 87
    .line 88
    .line 89
    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 93
    move-result-object v3

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v3}, Ljava/util/zip/CRC32;->update([B)V

    .line 97
    .line 98
    iget-wide v5, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderCrc:J

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    .line 102
    move-result-wide v2

    .line 103
    .line 104
    cmp-long v0, v5, v2

    .line 105
    .line 106
    if-nez v0, :cond_2

    .line 107
    .line 108
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;

    .line 109
    .line 110
    .line 111
    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/sevenz/Archive;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 115
    move-result v2

    .line 116
    .line 117
    const/16 v3, 0x17

    .line 118
    .line 119
    if-ne v2, v3, :cond_0

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, v1, v0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readEncodedHeader(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;[B)Ljava/nio/ByteBuffer;

    .line 123
    move-result-object v1

    .line 124
    .line 125
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;

    .line 126
    .line 127
    .line 128
    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/sevenz/Archive;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 132
    move-result v2

    .line 133
    .line 134
    :cond_0
    if-ne v2, v4, :cond_1

    .line 135
    .line 136
    .line 137
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readHeader(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 138
    return-object v0

    .line 139
    .line 140
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 141
    .line 142
    const-string v0, "Broken or unsupported archive: no Header"

    .line 143
    .line 144
    .line 145
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 146
    throw p1

    .line 147
    .line 148
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 149
    .line 150
    const-string v0, "NextHeader CRC mismatch"

    .line 151
    .line 152
    .line 153
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 154
    throw p1

    .line 155
    .line 156
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 157
    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    const-string v2, "cannot handle nextHeaderSize "

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    iget-wide v2, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object v0

    .line 176
    .line 177
    .line 178
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 179
    throw p1

    .line 180
    .line 181
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 182
    const/4 v0, 0x2

    .line 183
    .line 184
    new-array v0, v0, [Ljava/lang/Object;

    .line 185
    const/4 v1, 0x0

    .line 186
    .line 187
    .line 188
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 189
    move-result-object v2

    .line 190
    .line 191
    aput-object v2, v0, v1

    .line 192
    .line 193
    .line 194
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 195
    move-result-object v1

    .line 196
    .line 197
    aput-object v1, v0, v4

    .line 198
    .line 199
    const-string v1, "Unsupported 7z version (%d,%d)"

    .line 200
    .line 201
    .line 202
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 203
    move-result-object v0

    .line 204
    .line 205
    .line 206
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 207
    throw p1

    .line 208
    .line 209
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 210
    .line 211
    const-string v0, "Bad 7z signature"

    .line 212
    .line 213
    .line 214
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 215
    throw p1
.end method

.method private readPackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iput-wide v0, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 14
    move-result v2

    .line 15
    .line 16
    const/16 v3, 0x9

    .line 17
    const/4 v4, 0x0

    .line 18
    .line 19
    if-ne v2, v3, :cond_1

    .line 20
    long-to-int v2, v0

    .line 21
    .line 22
    new-array v2, v2, [J

    .line 23
    .line 24
    iput-object v2, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    .line 25
    move v2, v4

    .line 26
    .line 27
    :goto_0
    iget-object v3, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    .line 28
    array-length v5, v3

    .line 29
    .line 30
    if-ge v2, v5, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    .line 34
    move-result-wide v5

    .line 35
    .line 36
    aput-wide v5, v3, v2

    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 43
    move-result v2

    .line 44
    .line 45
    :cond_1
    const/16 v3, 0xa

    .line 46
    .line 47
    if-ne v2, v3, :cond_4

    .line 48
    long-to-int v0, v0

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    iput-object v1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcsDefined:Ljava/util/BitSet;

    .line 55
    .line 56
    new-array v1, v0, [J

    .line 57
    .line 58
    iput-object v1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcs:[J

    .line 59
    .line 60
    :goto_1
    if-ge v4, v0, :cond_3

    .line 61
    .line 62
    iget-object v1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcsDefined:Ljava/util/BitSet;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v4}, Ljava/util/BitSet;->get(I)Z

    .line 66
    move-result v1

    .line 67
    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    iget-object v1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcs:[J

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 74
    move-result v2

    .line 75
    int-to-long v2, v2

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    const-wide v5, 0xffffffffL

    .line 81
    and-long/2addr v2, v5

    .line 82
    .line 83
    aput-wide v2, v1, v4

    .line 84
    .line 85
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 86
    goto :goto_1

    .line 87
    .line 88
    .line 89
    :cond_3
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 90
    move-result v2

    .line 91
    .line 92
    :cond_4
    if-nez v2, :cond_5

    .line 93
    return-void

    .line 94
    .line 95
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 96
    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    const-string v0, "Badly terminated PackInfo ("

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v0, ")"

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p2

    .line 118
    .line 119
    .line 120
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 121
    throw p1
.end method

.method private readStartHeader(J)Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;-><init>()V

    .line 6
    .line 7
    new-instance v1, Ljava/io/DataInputStream;

    .line 8
    .line 9
    new-instance v8, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    .line 10
    .line 11
    new-instance v3, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;

    .line 12
    .line 13
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 14
    .line 15
    const-wide/16 v4, 0x14

    .line 16
    .line 17
    .line 18
    invoke-direct {v3, v2, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    .line 19
    move-object v2, v8

    .line 20
    move-wide v6, p1

    .line 21
    .line 22
    .line 23
    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    .line 30
    move-result-wide p1

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p2}, Ljava/lang/Long;->reverseBytes(J)J

    .line 34
    move-result-wide p1

    .line 35
    .line 36
    iput-wide p1, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderOffset:J

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    .line 40
    move-result-wide p1

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p2}, Ljava/lang/Long;->reverseBytes(J)J

    .line 44
    move-result-wide p1

    .line 45
    .line 46
    iput-wide p1, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    .line 50
    move-result p1

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 54
    move-result p1

    .line 55
    int-to-long p1, p1

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    const-wide v2, 0xffffffffL

    .line 61
    and-long/2addr p1, v2

    .line 62
    .line 63
    iput-wide p1, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderCrc:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 67
    return-object v0

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    :catchall_1
    move-exception p2

    .line 71
    .line 72
    .line 73
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 74
    goto :goto_0

    .line 75
    :catchall_2
    move-exception v0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 79
    :goto_0
    throw p2
.end method

.method private readStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x6

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readPackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 14
    move-result v0

    .line 15
    :cond_0
    const/4 v1, 0x7

    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUnpackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 24
    move-result v0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    .line 28
    new-array v1, v1, [Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 29
    .line 30
    iput-object v1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 31
    .line 32
    :goto_0
    const/16 v1, 0x8

    .line 33
    .line 34
    if-ne v0, v1, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readSubStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 41
    move-result v0

    .line 42
    .line 43
    :cond_2
    if-nez v0, :cond_3

    .line 44
    return-void

    .line 45
    .line 46
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 47
    .line 48
    const-string p2, "Badly terminated StreamsInfo"

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p1
.end method

.method private readSubStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p2

    .line 3
    .line 4
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 5
    array-length v2, v1

    .line 6
    const/4 v3, 0x0

    .line 7
    move v4, v3

    .line 8
    :goto_0
    const/4 v5, 0x1

    .line 9
    .line 10
    if-ge v4, v2, :cond_0

    .line 11
    .line 12
    aget-object v6, v1, v4

    .line 13
    .line 14
    iput v5, v6, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    .line 15
    .line 16
    add-int/lit8 v4, v4, 0x1

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 20
    array-length v1, v1

    .line 21
    .line 22
    .line 23
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 24
    move-result v2

    .line 25
    .line 26
    const/16 v4, 0xd

    .line 27
    .line 28
    if-ne v2, v4, :cond_2

    .line 29
    .line 30
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 31
    array-length v2, v1

    .line 32
    move v4, v3

    .line 33
    move v6, v4

    .line 34
    .line 35
    :goto_1
    if-ge v6, v2, :cond_1

    .line 36
    .line 37
    aget-object v7, v1, v6

    .line 38
    .line 39
    .line 40
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    .line 41
    move-result-wide v8

    .line 42
    long-to-int v10, v8

    .line 43
    .line 44
    iput v10, v7, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    .line 45
    int-to-long v10, v4

    .line 46
    add-long/2addr v10, v8

    .line 47
    long-to-int v4, v10

    .line 48
    .line 49
    add-int/lit8 v6, v6, 0x1

    .line 50
    goto :goto_1

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 54
    move-result v2

    .line 55
    move v1, v4

    .line 56
    .line 57
    :cond_2
    new-instance v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    .line 58
    .line 59
    .line 60
    invoke-direct {v4}, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;-><init>()V

    .line 61
    .line 62
    new-array v6, v1, [J

    .line 63
    .line 64
    iput-object v6, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    .line 65
    .line 66
    new-instance v6, Ljava/util/BitSet;

    .line 67
    .line 68
    .line 69
    invoke-direct {v6, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 70
    .line 71
    iput-object v6, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    .line 72
    .line 73
    new-array v1, v1, [J

    .line 74
    .line 75
    iput-object v1, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    .line 76
    .line 77
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 78
    array-length v6, v1

    .line 79
    move v7, v3

    .line 80
    move v8, v7

    .line 81
    .line 82
    :goto_2
    const/16 v9, 0x9

    .line 83
    .line 84
    if-ge v7, v6, :cond_5

    .line 85
    .line 86
    aget-object v10, v1, v7

    .line 87
    .line 88
    iget v11, v10, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    .line 89
    .line 90
    if-nez v11, :cond_3

    .line 91
    goto :goto_4

    .line 92
    .line 93
    :cond_3
    const-wide/16 v11, 0x0

    .line 94
    .line 95
    if-ne v2, v9, :cond_4

    .line 96
    move v9, v3

    .line 97
    .line 98
    :goto_3
    iget v13, v10, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    .line 99
    sub-int/2addr v13, v5

    .line 100
    .line 101
    if-ge v9, v13, :cond_4

    .line 102
    .line 103
    .line 104
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    .line 105
    move-result-wide v13

    .line 106
    .line 107
    iget-object v15, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    .line 108
    .line 109
    add-int/lit8 v16, v8, 0x1

    .line 110
    .line 111
    aput-wide v13, v15, v8

    .line 112
    add-long/2addr v11, v13

    .line 113
    .line 114
    add-int/lit8 v9, v9, 0x1

    .line 115
    .line 116
    move/from16 v8, v16

    .line 117
    goto :goto_3

    .line 118
    .line 119
    :cond_4
    iget-object v9, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    .line 120
    .line 121
    add-int/lit8 v13, v8, 0x1

    .line 122
    .line 123
    .line 124
    invoke-virtual {v10}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    .line 125
    move-result-wide v14

    .line 126
    sub-long/2addr v14, v11

    .line 127
    .line 128
    aput-wide v14, v9, v8

    .line 129
    move v8, v13

    .line 130
    .line 131
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 132
    goto :goto_2

    .line 133
    .line 134
    :cond_5
    if-ne v2, v9, :cond_6

    .line 135
    .line 136
    .line 137
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 138
    move-result v2

    .line 139
    .line 140
    :cond_6
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 141
    array-length v6, v1

    .line 142
    move v7, v3

    .line 143
    move v8, v7

    .line 144
    .line 145
    :goto_5
    if-ge v7, v6, :cond_9

    .line 146
    .line 147
    aget-object v9, v1, v7

    .line 148
    .line 149
    iget v10, v9, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    .line 150
    .line 151
    if-ne v10, v5, :cond_7

    .line 152
    .line 153
    iget-boolean v9, v9, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    .line 154
    .line 155
    if-nez v9, :cond_8

    .line 156
    :cond_7
    add-int/2addr v8, v10

    .line 157
    .line 158
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 159
    goto :goto_5

    .line 160
    .line 161
    :cond_9
    const/16 v1, 0xa

    .line 162
    .line 163
    if-ne v2, v1, :cond_f

    .line 164
    .line 165
    move-object/from16 v1, p0

    .line 166
    .line 167
    move-object/from16 v6, p1

    .line 168
    .line 169
    .line 170
    invoke-direct {v1, v6, v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 171
    move-result-object v2

    .line 172
    .line 173
    new-array v7, v8, [J

    .line 174
    move v9, v3

    .line 175
    .line 176
    :goto_6
    if-ge v9, v8, :cond_b

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v9}, Ljava/util/BitSet;->get(I)Z

    .line 180
    move-result v10

    .line 181
    .line 182
    if-eqz v10, :cond_a

    .line 183
    .line 184
    .line 185
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 186
    move-result v10

    .line 187
    int-to-long v10, v10

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    const-wide v12, 0xffffffffL

    .line 193
    and-long/2addr v10, v12

    .line 194
    .line 195
    aput-wide v10, v7, v9

    .line 196
    .line 197
    :cond_a
    add-int/lit8 v9, v9, 0x1

    .line 198
    goto :goto_6

    .line 199
    .line 200
    :cond_b
    iget-object v8, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 201
    array-length v9, v8

    .line 202
    move v10, v3

    .line 203
    move v11, v10

    .line 204
    move v12, v11

    .line 205
    .line 206
    :goto_7
    if-ge v10, v9, :cond_e

    .line 207
    .line 208
    aget-object v13, v8, v10

    .line 209
    .line 210
    iget v14, v13, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    .line 211
    .line 212
    if-ne v14, v5, :cond_c

    .line 213
    .line 214
    iget-boolean v14, v13, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    .line 215
    .line 216
    if-eqz v14, :cond_c

    .line 217
    .line 218
    iget-object v14, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v14, v11, v5}, Ljava/util/BitSet;->set(IZ)V

    .line 222
    .line 223
    iget-object v14, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    .line 224
    .line 225
    iget-wide v5, v13, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    .line 226
    .line 227
    aput-wide v5, v14, v11

    .line 228
    .line 229
    add-int/lit8 v11, v11, 0x1

    .line 230
    goto :goto_9

    .line 231
    :cond_c
    move v5, v3

    .line 232
    .line 233
    :goto_8
    iget v6, v13, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    .line 234
    .line 235
    if-ge v5, v6, :cond_d

    .line 236
    .line 237
    iget-object v6, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2, v12}, Ljava/util/BitSet;->get(I)Z

    .line 241
    move-result v14

    .line 242
    .line 243
    .line 244
    invoke-virtual {v6, v11, v14}, Ljava/util/BitSet;->set(IZ)V

    .line 245
    .line 246
    iget-object v6, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    .line 247
    .line 248
    aget-wide v16, v7, v12

    .line 249
    .line 250
    aput-wide v16, v6, v11

    .line 251
    .line 252
    add-int/lit8 v11, v11, 0x1

    .line 253
    .line 254
    add-int/lit8 v12, v12, 0x1

    .line 255
    .line 256
    add-int/lit8 v5, v5, 0x1

    .line 257
    goto :goto_8

    .line 258
    .line 259
    :cond_d
    :goto_9
    add-int/lit8 v10, v10, 0x1

    .line 260
    .line 261
    move-object/from16 v6, p1

    .line 262
    const/4 v5, 0x1

    .line 263
    goto :goto_7

    .line 264
    .line 265
    .line 266
    :cond_e
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 267
    move-result v2

    .line 268
    goto :goto_a

    .line 269
    .line 270
    :cond_f
    move-object/from16 v1, p0

    .line 271
    .line 272
    :goto_a
    if-nez v2, :cond_10

    .line 273
    .line 274
    iput-object v4, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    .line 275
    return-void

    .line 276
    .line 277
    :cond_10
    new-instance v0, Ljava/io/IOException;

    .line 278
    .line 279
    const-string v2, "Badly terminated SubStreamsInfo"

    .line 280
    .line 281
    .line 282
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 283
    throw v0
.end method

.method private static readUint64(Ljava/nio/ByteBuffer;)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    .line 7
    const/16 v2, 0x80

    .line 8
    .line 9
    const-wide/16 v3, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    move-wide v6, v3

    .line 12
    .line 13
    :goto_0
    const/16 v8, 0x8

    .line 14
    .line 15
    if-ge v5, v8, :cond_1

    .line 16
    int-to-long v9, v2

    .line 17
    and-long/2addr v9, v0

    .line 18
    .line 19
    cmp-long v9, v9, v3

    .line 20
    .line 21
    if-nez v9, :cond_0

    .line 22
    .line 23
    add-int/lit8 v2, v2, -0x1

    .line 24
    int-to-long v2, v2

    .line 25
    and-long/2addr v0, v2

    .line 26
    mul-int/2addr v5, v8

    .line 27
    shl-long/2addr v0, v5

    .line 28
    or-long/2addr v0, v6

    .line 29
    return-wide v0

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 33
    move-result v8

    .line 34
    int-to-long v8, v8

    .line 35
    .line 36
    mul-int/lit8 v10, v5, 0x8

    .line 37
    shl-long/2addr v8, v10

    .line 38
    or-long/2addr v6, v8

    .line 39
    .line 40
    ushr-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    add-int/lit8 v5, v5, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-wide v6
.end method

.method private readUnpackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0xb

    .line 7
    .line 8
    if-ne v0, v1, :cond_9

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    .line 12
    move-result-wide v0

    .line 13
    long-to-int v0, v0

    .line 14
    .line 15
    new-array v1, v0, [Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 16
    .line 17
    iput-object v1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 21
    move-result p2

    .line 22
    .line 23
    if-nez p2, :cond_8

    .line 24
    const/4 p2, 0x0

    .line 25
    move v2, p2

    .line 26
    .line 27
    :goto_0
    if-ge v2, v0, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFolder(Ljava/nio/ByteBuffer;)Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    aput-object v3, v1, v2

    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 40
    move-result v2

    .line 41
    .line 42
    const/16 v3, 0xc

    .line 43
    .line 44
    if-ne v2, v3, :cond_7

    .line 45
    move v2, p2

    .line 46
    .line 47
    :goto_1
    if-ge v2, v0, :cond_2

    .line 48
    .line 49
    aget-object v3, v1, v2

    .line 50
    .line 51
    iget-wide v4, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    .line 52
    long-to-int v4, v4

    .line 53
    .line 54
    new-array v4, v4, [J

    .line 55
    .line 56
    iput-object v4, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->unpackSizes:[J

    .line 57
    move v4, p2

    .line 58
    :goto_2
    int-to-long v5, v4

    .line 59
    .line 60
    iget-wide v7, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    .line 61
    .line 62
    cmp-long v5, v5, v7

    .line 63
    .line 64
    if-gez v5, :cond_1

    .line 65
    .line 66
    iget-object v5, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->unpackSizes:[J

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    .line 70
    move-result-wide v6

    .line 71
    .line 72
    aput-wide v6, v5, v4

    .line 73
    .line 74
    add-int/lit8 v4, v4, 0x1

    .line 75
    goto :goto_2

    .line 76
    .line 77
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 78
    goto :goto_1

    .line 79
    .line 80
    .line 81
    :cond_2
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 82
    move-result v2

    .line 83
    .line 84
    const/16 v3, 0xa

    .line 85
    .line 86
    if-ne v2, v3, :cond_5

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 90
    move-result-object v2

    .line 91
    move v3, p2

    .line 92
    .line 93
    :goto_3
    if-ge v3, v0, :cond_4

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    .line 97
    move-result v4

    .line 98
    .line 99
    if-eqz v4, :cond_3

    .line 100
    .line 101
    aget-object v4, v1, v3

    .line 102
    const/4 v5, 0x1

    .line 103
    .line 104
    iput-boolean v5, v4, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 108
    move-result v5

    .line 109
    int-to-long v5, v5

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    const-wide v7, 0xffffffffL

    .line 115
    and-long/2addr v5, v7

    .line 116
    .line 117
    iput-wide v5, v4, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    .line 118
    goto :goto_4

    .line 119
    .line 120
    :cond_3
    aget-object v4, v1, v3

    .line 121
    .line 122
    iput-boolean p2, v4, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    .line 123
    .line 124
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 125
    goto :goto_3

    .line 126
    .line 127
    .line 128
    :cond_4
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 129
    move-result v2

    .line 130
    .line 131
    :cond_5
    if-nez v2, :cond_6

    .line 132
    return-void

    .line 133
    .line 134
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 135
    .line 136
    const-string p2, "Badly terminated UnpackInfo"

    .line 137
    .line 138
    .line 139
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 140
    throw p1

    .line 141
    .line 142
    :cond_7
    new-instance p1, Ljava/io/IOException;

    .line 143
    .line 144
    new-instance p2, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    const-string v0, "Expected kCodersUnpackSize, got "

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    move-result-object p2

    .line 160
    .line 161
    .line 162
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 163
    throw p1

    .line 164
    .line 165
    :cond_8
    new-instance p1, Ljava/io/IOException;

    .line 166
    .line 167
    const-string p2, "External unsupported"

    .line 168
    .line 169
    .line 170
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 171
    throw p1

    .line 172
    .line 173
    :cond_9
    new-instance p1, Ljava/io/IOException;

    .line 174
    .line 175
    new-instance p2, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    const-string v1, "Expected kFolder, got "

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    move-result-object p2

    .line 191
    .line 192
    .line 193
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 194
    throw p1
.end method

.method private static skipBytesFully(Ljava/nio/ByteBuffer;J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const-wide/16 v0, 0x1

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-gez v0, :cond_0

    .line 7
    .line 8
    const-wide/16 p0, 0x0

    .line 9
    return-wide p0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 13
    move-result v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 17
    move-result v1

    .line 18
    int-to-long v1, v1

    .line 19
    .line 20
    cmp-long v3, v1, p1

    .line 21
    .line 22
    if-gez v3, :cond_1

    .line 23
    move-wide p1, v1

    .line 24
    :cond_1
    long-to-int v1, p1

    .line 25
    add-int/2addr v0, v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 29
    return-wide p1
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/b;->a(Ljava/nio/channels/SeekableByteChannel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 12
    .line 13
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 19
    .line 20
    :cond_0
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    .line 24
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 25
    .line 26
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 32
    .line 33
    :cond_1
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    .line 34
    throw v0

    .line 35
    :cond_2
    :goto_0
    return-void
.end method

.method public getEntries()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    .line 3
    .line 4
    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    .line 3
    .line 4
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    .line 5
    .line 6
    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 7
    array-length v2, v1

    .line 8
    .line 9
    add-int/lit8 v2, v2, -0x1

    .line 10
    .line 11
    if-lt v0, v2, :cond_0

    .line 12
    const/4 v0, 0x0

    .line 13
    return-object v0

    .line 14
    .line 15
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    .line 18
    .line 19
    aget-object v0, v1, v0

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->buildDecodingStream()V

    .line 23
    return-object v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getCurrentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getCurrentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/Archive;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
