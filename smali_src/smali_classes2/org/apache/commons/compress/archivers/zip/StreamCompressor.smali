.class public abstract Lorg/apache/commons/compress/archivers/zip/StreamCompressor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/StreamCompressor$SeekableByteChannelCompressor;,
        Lorg/apache/commons/compress/archivers/zip/StreamCompressor$DataOutputCompressor;,
        Lorg/apache/commons/compress/archivers/zip/StreamCompressor$OutputStreamCompressor;,
        Lorg/apache/commons/compress/archivers/zip/StreamCompressor$ScatterGatherBackingStoreCompressor;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final DEFLATER_BLOCK_SIZE:I = 0x2000


# instance fields
.field private final crc:Ljava/util/zip/CRC32;

.field private final def:Ljava/util/zip/Deflater;

.field private final outputBuffer:[B

.field private final readerBuf:[B

.field private sourcePayloadLength:J

.field private totalWrittenToOutputStream:J

.field private writtenToOutputStreamForLastEntry:J


# direct methods
.method constructor <init>(Ljava/util/zip/Deflater;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/zip/CRC32;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->crc:Ljava/util/zip/CRC32;

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writtenToOutputStreamForLastEntry:J

    .line 15
    .line 16
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->sourcePayloadLength:J

    .line 17
    .line 18
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->totalWrittenToOutputStream:J

    .line 19
    .line 20
    const/16 v0, 0x1000

    .line 21
    .line 22
    new-array v1, v0, [B

    .line 23
    .line 24
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->outputBuffer:[B

    .line 25
    .line 26
    new-array v0, v0, [B

    .line 27
    .line 28
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->readerBuf:[B

    .line 29
    .line 30
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    .line 31
    return-void
.end method

.method public static create(ILorg/apache/commons/compress/parallel/ScatterGatherBackingStore;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;
    .locals 2

    .line 5
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 6
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor$ScatterGatherBackingStoreCompressor;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor$ScatterGatherBackingStoreCompressor;-><init>(Ljava/util/zip/Deflater;Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;)V

    return-object p0
.end method

.method static create(Ljava/io/DataOutput;Ljava/util/zip/Deflater;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor$DataOutputCompressor;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor$DataOutputCompressor;-><init>(Ljava/util/zip/Deflater;Ljava/io/DataOutput;)V

    return-object v0
.end method

.method static create(Ljava/io/OutputStream;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;
    .locals 3

    .line 2
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->create(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    move-result-object p0

    return-object p0
.end method

.method static create(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor$OutputStreamCompressor;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor$OutputStreamCompressor;-><init>(Ljava/util/zip/Deflater;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method static create(Ljava/nio/channels/SeekableByteChannel;Ljava/util/zip/Deflater;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor$SeekableByteChannelCompressor;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor$SeekableByteChannelCompressor;-><init>(Ljava/util/zip/Deflater;Ljava/nio/channels/SeekableByteChannel;)V

    return-object v0
.end method

.method public static create(Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;
    .locals 1

    const/4 v0, -0x1

    .line 7
    invoke-static {v0, p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->create(ILorg/apache/commons/compress/parallel/ScatterGatherBackingStore;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    move-result-object p0

    return-object p0
.end method

.method private deflateUntilInputIsNeeded()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->deflate()V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void
.end method

.method private writeDeflated([BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-lez p3, :cond_2

    .line 3
    .line 4
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    const/16 v0, 0x2000

    .line 13
    .line 14
    if-gt p3, v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->deflateUntilInputIsNeeded()V

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_0
    div-int/lit16 v1, p3, 0x2000

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    :goto_0
    if-ge v2, v1, :cond_1

    .line 29
    .line 30
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    .line 31
    .line 32
    mul-int/lit16 v4, v2, 0x2000

    .line 33
    add-int/2addr v4, p2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, p1, v4, v0}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->deflateUntilInputIsNeeded()V

    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    mul-int/2addr v1, v0

    .line 44
    .line 45
    if-ge v1, p3, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    .line 48
    add-int/2addr p2, v1

    .line 49
    sub-int/2addr p3, v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->deflateUntilInputIsNeeded()V

    .line 56
    :cond_2
    :goto_1
    return-void
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
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 6
    return-void
.end method

.method deflate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->outputBuffer:[B

    .line 5
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->outputBuffer:[B

    .line 6
    invoke-virtual {p0, v1, v3, v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writeCounted([BII)V

    :cond_0
    return-void
.end method

.method public deflate(Ljava/io/InputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->reset()V

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->readerBuf:[B

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->readerBuf:[B

    .line 3
    invoke-virtual {p0, v1, v2, v0, p2}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->write([BIII)J

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    if-ne p2, p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->flushDeflater()V

    :cond_1
    return-void
.end method

.method flushDeflater()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 6
    .line 7
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->deflate()V

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-void
.end method

.method public getBytesRead()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->sourcePayloadLength:J

    return-wide v0
.end method

.method public getBytesWrittenForLastEntry()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writtenToOutputStreamForLastEntry:J

    return-wide v0
.end method

.method public getCrc32()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->crc:Ljava/util/zip/CRC32;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getTotalBytesWritten()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->totalWrittenToOutputStream:J

    return-wide v0
.end method

.method reset()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->crc:Ljava/util/zip/CRC32;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->def:Ljava/util/zip/Deflater;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->sourcePayloadLength:J

    .line 15
    .line 16
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writtenToOutputStreamForLastEntry:J

    .line 17
    return-void
.end method

.method write([BIII)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writtenToOutputStreamForLastEntry:J

    .line 3
    .line 4
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->crc:Ljava/util/zip/CRC32;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v2, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 8
    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    if-ne p4, v2, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writeDeflated([BII)V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writeCounted([BII)V

    .line 19
    .line 20
    :goto_0
    iget-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->sourcePayloadLength:J

    .line 21
    int-to-long p3, p3

    .line 22
    add-long/2addr p1, p3

    .line 23
    .line 24
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->sourcePayloadLength:J

    .line 25
    .line 26
    iget-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writtenToOutputStreamForLastEntry:J

    .line 27
    sub-long/2addr p1, v0

    .line 28
    return-wide p1
.end method

.method public writeCounted([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writeCounted([BII)V

    return-void
.end method

.method public writeCounted([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writeOut([BII)V

    iget-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writtenToOutputStreamForLastEntry:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writtenToOutputStreamForLastEntry:J

    iget-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->totalWrittenToOutputStream:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->totalWrittenToOutputStream:J

    return-void
.end method

.method protected abstract writeOut([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
