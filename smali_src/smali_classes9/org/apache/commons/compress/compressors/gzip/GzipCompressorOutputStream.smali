.class public Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;
.super Lorg/apache/commons/compress/compressors/CompressorOutputStream;
.source "SourceFile"


# static fields
.field private static final FCOMMENT:I = 0x10

.field private static final FNAME:I = 0x8


# instance fields
.field private closed:Z

.field private final crc:Ljava/util/zip/CRC32;

.field private final deflateBuffer:[B

.field private final deflater:Ljava/util/zip/Deflater;

.field private final out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/compressors/gzip/GzipParameters;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/compressors/gzip/GzipParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflateBuffer:[B

    .line 3
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->crc:Ljava/util/zip/CRC32;

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 4
    new-instance p1, Ljava/util/zip/Deflater;

    invoke-virtual {p2}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->getCompressionLevel()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    .line 5
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->writeHeader(Lorg/apache/commons/compress/compressors/gzip/GzipParameters;)V

    return-void
.end method

.method private deflate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflateBuffer:[B

    .line 5
    array-length v2, v1

    .line 6
    const/4 v3, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Deflater;->deflate([BII)I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 15
    .line 16
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflateBuffer:[B

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 20
    :cond_0
    return-void
.end method

.method private writeHeader(Lorg/apache/commons/compress/compressors/gzip/GzipParameters;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->getFilename()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->getComment()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    const/16 v2, 0xa

    .line 11
    .line 12
    .line 13
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    const/16 v3, -0x74e1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    const/16 v3, 0x8

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 30
    const/4 v4, 0x0

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v3, v4

    .line 35
    .line 36
    :goto_0
    if-eqz v1, :cond_1

    .line 37
    .line 38
    const/16 v5, 0x10

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v5, v4

    .line 41
    :goto_1
    or-int/2addr v3, v5

    .line 42
    int-to-byte v3, v3

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->getModificationTime()J

    .line 49
    move-result-wide v5

    .line 50
    .line 51
    const-wide/16 v7, 0x3e8

    .line 52
    div-long/2addr v5, v7

    .line 53
    long-to-int v3, v5

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->getCompressionLevel()I

    .line 60
    move-result v3

    .line 61
    .line 62
    const/16 v5, 0x9

    .line 63
    .line 64
    if-ne v3, v5, :cond_2

    .line 65
    const/4 v3, 0x2

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    const/4 v5, 0x1

    .line 71
    .line 72
    if-ne v3, v5, :cond_3

    .line 73
    const/4 v3, 0x4

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 77
    goto :goto_2

    .line 78
    .line 79
    .line 80
    :cond_3
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 81
    .line 82
    .line 83
    :goto_2
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->getOperatingSystem()I

    .line 84
    move-result p1

    .line 85
    int-to-byte p1, p1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 89
    .line 90
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 94
    move-result-object v2

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 98
    .line 99
    const-string p1, "ISO-8859-1"

    .line 100
    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 107
    move-result-object v0

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 111
    .line 112
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 116
    .line 117
    :cond_4
    if-eqz v1, :cond_5

    .line 118
    .line 119
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 123
    move-result-object p1

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 127
    .line 128
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 132
    :cond_5
    return-void
.end method

.method private writeTrailer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x8

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
    .line 13
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    .line 17
    move-result-wide v1

    .line 18
    long-to-int v1, v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getTotalIn()I

    .line 27
    move-result v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 40
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
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->closed:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->finish()V

    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 13
    .line 14
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 18
    const/4 v0, 0x1

    .line 19
    .line 20
    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->closed:Z

    .line 21
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 14
    .line 15
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflate()V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->writeTrailer()V

    .line 29
    :cond_1
    return-void
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
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 6
    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 1
    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    .line 3
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_2

    if-lez p3, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    .line 5
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflate()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_1
    return-void

    .line 8
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot write more data, the end of the compressed data stream has been reached"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
