.class public Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;
.super Lorg/apache/commons/compress/compressors/CompressorOutputStream;
.source "SourceFile"


# static fields
.field private static final FOUR_BYTE_COPY_TAG:I = 0x3

.field private static final FOUR_SIZE_BYTE_MARKER:I = 0xfc

.field private static final MAX_LITERAL_SIZE_WITHOUT_SIZE_BYTES:I = 0x3c

.field private static final MAX_LITERAL_SIZE_WITH_ONE_SIZE_BYTE:I = 0x100

.field private static final MAX_LITERAL_SIZE_WITH_THREE_SIZE_BYTES:I = 0x1000000

.field private static final MAX_LITERAL_SIZE_WITH_TWO_SIZE_BYTES:I = 0x10000

.field private static final MAX_MATCH_LENGTH:I = 0x40

.field private static final MAX_MATCH_LENGTH_WITH_ONE_OFFSET_BYTE:I = 0xb

.field private static final MAX_OFFSET_WITH_ONE_OFFSET_BYTE:I = 0x400

.field private static final MAX_OFFSET_WITH_TWO_OFFSET_BYTES:I = 0x8000

.field private static final MIN_MATCH_LENGTH:I = 0x4

.field private static final MIN_MATCH_LENGTH_WITH_ONE_OFFSET_BYTE:I = 0x4

.field private static final ONE_BYTE_COPY_TAG:I = 0x1

.field private static final ONE_SIZE_BYTE_MARKER:I = 0xf0

.field private static final THREE_SIZE_BYTE_MARKER:I = 0xf8

.field private static final TWO_BYTE_COPY_TAG:I = 0x2

.field private static final TWO_SIZE_BYTE_MARKER:I = 0xf4


# instance fields
.field private final compressor:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

.field private final consumer:Lorg/apache/commons/compress/utils/ByteUtils$ByteConsumer;

.field private finished:Z

.field private final oneByte:[B

.field private final os:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x8000

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;-><init>(Ljava/io/OutputStream;JI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p4}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->createParameterBuilder(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    move-result-object p4

    invoke-virtual {p4}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->build()Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;-><init>(Ljava/io/OutputStream;JLorg/apache/commons/compress/compressors/lz77support/Parameters;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;JLorg/apache/commons/compress/compressors/lz77support/Parameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->oneByte:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->finished:Z

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->os:Ljava/io/OutputStream;

    .line 4
    new-instance v0, Lorg/apache/commons/compress/utils/ByteUtils$OutputStreamByteConsumer;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/utils/ByteUtils$OutputStreamByteConsumer;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->consumer:Lorg/apache/commons/compress/utils/ByteUtils$ByteConsumer;

    .line 5
    new-instance p1, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

    new-instance v0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream$1;-><init>(Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;)V

    invoke-direct {p1, p4, v0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;-><init>(Lorg/apache/commons/compress/compressors/lz77support/Parameters;Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;)V

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->compressor:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

    .line 6
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeUncompressedSize(J)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlock(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V

    .line 4
    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeBackReference(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;)V

    .line 4
    return-void
.end method

.method public static createParameterBuilder(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->builder(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x4

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->withMinBackReferenceLength(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const/16 v1, 0x40

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->withMaxBackReferenceLength(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->withMaxOffset(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->withMaxLiteralLength(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method private writeBackReference(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;->getLength()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;->getOffset()I

    .line 8
    move-result p1

    .line 9
    const/4 v1, 0x4

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    const/16 v1, 0xb

    .line 14
    .line 15
    if-gt v0, v1, :cond_0

    .line 16
    .line 17
    const/16 v1, 0x400

    .line 18
    .line 19
    if-gt p1, v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeBackReferenceWithOneOffsetByte(II)V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_0
    const v1, 0x8000

    .line 27
    .line 28
    if-ge p1, v1, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeBackReferenceWithTwoOffsetBytes(II)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeBackReferenceWithFourOffsetBytes(II)V

    .line 36
    :goto_0
    return-void
.end method

.method private writeBackReferenceWithFourOffsetBytes(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x4

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeBackReferenceWithLittleEndianOffset(IIII)V

    .line 6
    return-void
.end method

.method private writeBackReferenceWithLittleEndianOffset(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->os:Ljava/io/OutputStream;

    .line 3
    .line 4
    add-int/lit8 p3, p3, -0x1

    .line 5
    .line 6
    shl-int/lit8 p3, p3, 0x2

    .line 7
    or-int/2addr p1, p3

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p2, p4}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLittleEndian(II)V

    .line 14
    return-void
.end method

.method private writeBackReferenceWithOneOffsetByte(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->os:Ljava/io/OutputStream;

    .line 3
    .line 4
    add-int/lit8 p1, p1, -0x4

    .line 5
    .line 6
    shl-int/lit8 p1, p1, 0x2

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    and-int/lit16 v1, p2, 0x700

    .line 11
    .line 12
    shr-int/lit8 v1, v1, 0x3

    .line 13
    or-int/2addr p1, v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 17
    .line 18
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->os:Ljava/io/OutputStream;

    .line 19
    .line 20
    and-int/lit16 p2, p2, 0xff

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 24
    return-void
.end method

.method private writeBackReferenceWithTwoOffsetBytes(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0, v0, p1, p2}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeBackReferenceWithLittleEndianOffset(IIII)V

    .line 5
    return-void
.end method

.method private writeLiteralBlock(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->getLength()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0x3c

    .line 7
    .line 8
    if-gt v0, v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlockNoSizeBytes(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;I)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    const/16 v1, 0x100

    .line 15
    .line 16
    if-gt v0, v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlockOneSizeByte(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;I)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_1
    const/high16 v1, 0x10000

    .line 23
    .line 24
    if-gt v0, v1, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlockTwoSizeBytes(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;I)V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_2
    const/high16 v1, 0x1000000

    .line 31
    .line 32
    if-gt v0, v1, :cond_3

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlockThreeSizeBytes(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;I)V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_3
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlockFourSizeBytes(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;I)V

    .line 40
    :goto_0
    return-void
.end method

.method private writeLiteralBlockFourSizeBytes(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0xfc

    .line 3
    const/4 v1, 0x4

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0, v1, p2, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlockWithSize(IIILorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V

    .line 7
    return-void
.end method

.method private writeLiteralBlockNoSizeBytes(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    add-int/lit8 v0, p2, -0x1

    .line 3
    .line 4
    shl-int/lit8 v0, v0, 0x2

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0, v1, p2, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlockWithSize(IIILorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V

    .line 9
    return-void
.end method

.method private writeLiteralBlockOneSizeByte(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0xf0

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0, v1, p2, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlockWithSize(IIILorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V

    .line 7
    return-void
.end method

.method private writeLiteralBlockThreeSizeBytes(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0xf8

    .line 3
    const/4 v1, 0x3

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0, v1, p2, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlockWithSize(IIILorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V

    .line 7
    return-void
.end method

.method private writeLiteralBlockTwoSizeBytes(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0xf4

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0, v1, p2, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlockWithSize(IIILorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V

    .line 7
    return-void
.end method

.method private writeLiteralBlockWithSize(IIILorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->os:Ljava/io/OutputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 6
    .line 7
    add-int/lit8 p1, p3, -0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLittleEndian(II)V

    .line 11
    .line 12
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->os:Ljava/io/OutputStream;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p4}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->getData()[B

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p4}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->getOffset()I

    .line 20
    move-result p4

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2, p4, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 24
    return-void
.end method

.method private writeLittleEndian(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->consumer:Lorg/apache/commons/compress/utils/ByteUtils$ByteConsumer;

    .line 3
    int-to-long v1, p2

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1, v2, p1}, Lorg/apache/commons/compress/utils/ByteUtils;->toLittleEndian(Lorg/apache/commons/compress/utils/ByteUtils$ByteConsumer;JI)V

    .line 7
    return-void
.end method

.method private writeUncompressedSize(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    :cond_0
    const-wide/16 v0, 0x7f

    .line 3
    and-long/2addr v0, p1

    .line 4
    long-to-int v0, v0

    .line 5
    int-to-long v1, v0

    .line 6
    .line 7
    cmp-long v1, p1, v1

    .line 8
    .line 9
    if-lez v1, :cond_1

    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 v1, 0x0

    .line 13
    .line 14
    :goto_0
    if-eqz v1, :cond_2

    .line 15
    .line 16
    or-int/lit16 v0, v0, 0x80

    .line 17
    .line 18
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->os:Ljava/io/OutputStream;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 22
    const/4 v0, 0x7

    .line 23
    shr-long/2addr p1, v0

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
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
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->finish()V

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->os:Ljava/io/OutputStream;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 9
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
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->finished:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->compressor:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->finish()V

    .line 10
    const/4 v0, 0x1

    .line 11
    .line 12
    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->finished:Z

    .line 13
    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->oneByte:[B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x0

    .line 1
    aput-byte p1, v0, v1

    .line 2
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->compressor:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->compress([BII)V

    return-void
.end method
