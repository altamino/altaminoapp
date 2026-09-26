.class public Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;
.super Lorg/apache/commons/compress/compressors/CompressorOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
    }
.end annotation


# static fields
.field private static final MIN_BACK_REFERENCE_LENGTH:I = 0x4

.field private static final MIN_OFFSET_OF_LAST_BACK_REFERENCE:I = 0xc


# instance fields
.field private final compressor:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

.field private expandedBlocks:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "[B>;"
        }
    .end annotation
.end field

.field private finished:Z

.field private final oneByte:[B

.field private final os:Ljava/io/OutputStream;

.field private pairs:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->createParameterBuilder()Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->build()Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/compressors/lz77support/Parameters;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/compressors/lz77support/Parameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->oneByte:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->finished:Z

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expandedBlocks:Ljava/util/Deque;

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->os:Ljava/io/OutputStream;

    .line 5
    new-instance p1, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

    new-instance v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$1;-><init>(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;)V

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;-><init>(Lorg/apache/commons/compress/compressors/lz77support/Parameters;Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;)V

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->compressor:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->addLiteralBlock(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V

    .line 4
    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->addBackReference(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;)V

    .line 4
    return-void
.end method

.method static synthetic access$200(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->writeFinalLiteralBlock()V

    .line 4
    return-void
.end method

.method private addBackReference(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;)V
    .locals 1
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
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->writeBlocksAndReturnUnfinishedPair(I)Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->setBackReference(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->recordBackReference(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->clearUnusedBlocksAndPairs()V

    .line 18
    return-void
.end method

.method private addLiteralBlock(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V
    .locals 1
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
    .line 7
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->writeBlocksAndReturnUnfinishedPair(I)Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->addLiteral(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)[B

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->recordLiteral([B)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->clearUnusedBlocksAndPairs()V

    .line 19
    return-void
.end method

.method private clearUnusedBlocks()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expandedBlocks:Ljava/util/Deque;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v3

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    check-cast v3, [B

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    array-length v3, v3

    .line 24
    add-int/2addr v2, v3

    .line 25
    .line 26
    const/high16 v3, 0x10000

    .line 27
    .line 28
    if-lt v2, v3, :cond_0

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expandedBlocks:Ljava/util/Deque;

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    .line 34
    move-result v0

    .line 35
    .line 36
    :goto_0
    if-ge v1, v0, :cond_2

    .line 37
    .line 38
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expandedBlocks:Ljava/util/Deque;

    .line 39
    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return-void
.end method

.method private clearUnusedBlocksAndPairs()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->clearUnusedBlocks()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->clearUnusedPairs()V

    .line 7
    return-void
.end method

.method private clearUnusedPairs()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v3

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    check-cast v3, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->length()I

    .line 26
    move-result v3

    .line 27
    add-int/2addr v2, v3

    .line 28
    .line 29
    const/high16 v3, 0x10000

    .line 30
    .line 31
    if-lt v2, v3, :cond_0

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    .line 37
    move-result v0

    .line 38
    .line 39
    :goto_0
    if-ge v1, v0, :cond_2

    .line 40
    .line 41
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    .line 42
    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    check-cast v2, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->access$300(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;)Z

    .line 51
    move-result v2

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    .line 56
    .line 57
    .line 58
    invoke-interface {v2}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 59
    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    return-void
.end method

.method public static createParameterBuilder()Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;
    .locals 2

    .line 1
    .line 2
    const/high16 v0, 0x10000

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->builder(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x4

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->withMinBackReferenceLength(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    const v1, 0xffff

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->withMaxBackReferenceLength(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->withMaxOffset(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->withMaxLiteralLength(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method private expand(II)[B
    .locals 2

    .line 1
    .line 2
    new-array v0, p2, [B

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ne p1, v1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expandedBlocks:Ljava/util/Deque;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, [B

    .line 14
    array-length p2, p1

    .line 15
    sub-int/2addr p2, v1

    .line 16
    .line 17
    aget-byte p1, p1, p2

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([BB)V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expandFromList([BII)V

    .line 27
    :cond_1
    :goto_0
    return-object v0
.end method

.method private expandFromList([BII)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, p2

    .line 3
    move v2, v0

    .line 4
    .line 5
    :goto_0
    if-lez p3, :cond_4

    .line 6
    .line 7
    if-lez v1, :cond_3

    .line 8
    .line 9
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expandedBlocks:Ljava/util/Deque;

    .line 10
    .line 11
    .line 12
    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v3

    .line 14
    move v4, v0

    .line 15
    .line 16
    .line 17
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v5

    .line 19
    .line 20
    if-eqz v5, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v5

    .line 25
    .line 26
    check-cast v5, [B

    .line 27
    array-length v6, v5

    .line 28
    add-int/2addr v6, v4

    .line 29
    .line 30
    if-lt v6, v1, :cond_0

    .line 31
    goto :goto_2

    .line 32
    :cond_0
    array-length v5, v5

    .line 33
    add-int/2addr v4, v5

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v5, 0x0

    .line 36
    .line 37
    :goto_2
    if-eqz v5, :cond_2

    .line 38
    array-length v3, v5

    .line 39
    add-int/2addr v4, v3

    .line 40
    sub-int/2addr v4, v1

    .line 41
    array-length v3, v5

    .line 42
    sub-int/2addr v3, v4

    .line 43
    .line 44
    .line 45
    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    .line 46
    move-result v3

    .line 47
    goto :goto_3

    .line 48
    .line 49
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    new-instance p3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    const-string v0, "failed to find a block containing offset "

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p2

    .line 67
    .line 68
    .line 69
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    throw p1

    .line 71
    :cond_3
    neg-int v4, v1

    .line 72
    .line 73
    add-int v3, v2, v1

    .line 74
    .line 75
    .line 76
    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    .line 77
    move-result v3

    .line 78
    move-object v5, p1

    .line 79
    .line 80
    .line 81
    :goto_3
    invoke-static {v5, v4, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    sub-int/2addr v1, v3

    .line 83
    sub-int/2addr p3, v3

    .line 84
    add-int/2addr v2, v3

    .line 85
    goto :goto_0

    .line 86
    :cond_4
    return-void
.end method

.method private recordBackReference(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expandedBlocks:Ljava/util/Deque;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;->getOffset()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;->getLength()I

    .line 10
    move-result p1

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v1, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expand(II)[B

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method private recordLiteral([B)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expandedBlocks:Ljava/util/Deque;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method private rewriteLastPairs()V
    .locals 8

    .line 1
    .line 2
    new-instance v0, Ljava/util/LinkedList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 6
    .line 7
    new-instance v1, Ljava/util/LinkedList;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 11
    .line 12
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    .line 13
    .line 14
    .line 15
    invoke-interface {v2}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x0

    .line 18
    move v4, v3

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v5

    .line 23
    .line 24
    if-eqz v5, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v5

    .line 29
    .line 30
    check-cast v5, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    .line 31
    .line 32
    .line 33
    invoke-static {v5}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->access$300(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;)Z

    .line 34
    move-result v6

    .line 35
    .line 36
    if-eqz v6, :cond_1

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {v5}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->length()I

    .line 41
    move-result v6

    .line 42
    .line 43
    .line 44
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v7

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 52
    add-int/2addr v4, v6

    .line 53
    .line 54
    const/16 v5, 0xc

    .line 55
    .line 56
    if-lt v4, v5, :cond_0

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    .line 63
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    move-result v4

    .line 65
    .line 66
    if-eqz v4, :cond_3

    .line 67
    .line 68
    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    move-result-object v4

    .line 71
    .line 72
    check-cast v4, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    .line 73
    .line 74
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    .line 75
    .line 76
    .line 77
    invoke-interface {v5, v4}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 78
    goto :goto_1

    .line 79
    .line 80
    .line 81
    :cond_3
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 82
    move-result v2

    .line 83
    const/4 v4, 0x1

    .line 84
    move v5, v3

    .line 85
    .line 86
    :goto_2
    if-ge v4, v2, :cond_4

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 90
    move-result-object v6

    .line 91
    .line 92
    check-cast v6, Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 96
    move-result v6

    .line 97
    add-int/2addr v5, v6

    .line 98
    .line 99
    add-int/lit8 v4, v4, 0x1

    .line 100
    goto :goto_2

    .line 101
    .line 102
    :cond_4
    new-instance v1, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    .line 103
    .line 104
    .line 105
    invoke-direct {v1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;-><init>()V

    .line 106
    .line 107
    if-lez v5, :cond_5

    .line 108
    .line 109
    .line 110
    invoke-direct {p0, v5, v5}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expand(II)[B

    .line 111
    move-result-object v2

    .line 112
    .line 113
    .line 114
    invoke-static {v1, v2}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->access$400(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;[B)V

    .line 115
    .line 116
    .line 117
    :cond_5
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 118
    move-result-object v0

    .line 119
    .line 120
    check-cast v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    .line 121
    .line 122
    rsub-int/lit8 v2, v5, 0xc

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->hasBackReference()Z

    .line 126
    move-result v4

    .line 127
    .line 128
    if-eqz v4, :cond_6

    .line 129
    .line 130
    .line 131
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->access$500(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;)I

    .line 132
    move-result v3

    .line 133
    .line 134
    .line 135
    :cond_6
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->hasBackReference()Z

    .line 136
    move-result v4

    .line 137
    .line 138
    if-eqz v4, :cond_7

    .line 139
    .line 140
    rsub-int/lit8 v4, v5, 0x10

    .line 141
    .line 142
    if-lt v3, v4, :cond_7

    .line 143
    add-int/2addr v5, v2

    .line 144
    .line 145
    .line 146
    invoke-direct {p0, v5, v2}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expand(II)[B

    .line 147
    move-result-object v4

    .line 148
    .line 149
    .line 150
    invoke-static {v1, v4}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->access$400(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;[B)V

    .line 151
    .line 152
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    .line 153
    sub-int/2addr v3, v2

    .line 154
    .line 155
    .line 156
    invoke-static {v0, v3}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->access$600(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;I)Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    .line 157
    move-result-object v0

    .line 158
    .line 159
    .line 160
    invoke-interface {v4, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 161
    goto :goto_3

    .line 162
    .line 163
    .line 164
    :cond_7
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->hasBackReference()Z

    .line 165
    move-result v2

    .line 166
    .line 167
    if-eqz v2, :cond_8

    .line 168
    add-int/2addr v5, v3

    .line 169
    .line 170
    .line 171
    invoke-direct {p0, v5, v3}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expand(II)[B

    .line 172
    move-result-object v2

    .line 173
    .line 174
    .line 175
    invoke-static {v1, v2}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->access$400(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;[B)V

    .line 176
    .line 177
    .line 178
    :cond_8
    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->access$700(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;)V

    .line 179
    .line 180
    :goto_3
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    .line 181
    .line 182
    .line 183
    invoke-interface {v0, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 184
    return-void
.end method

.method private writeBlocksAndReturnUnfinishedPair(I)Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->writeWritablePairs(I)V

    .line 4
    .line 5
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->hasBackReference()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :cond_0
    new-instance p1, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    .line 22
    .line 23
    .line 24
    invoke-direct {p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;-><init>()V

    .line 25
    .line 26
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 30
    :cond_1
    return-object p1
.end method

.method private writeFinalLiteralBlock()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->rewriteLastPairs()V

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->access$300(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;)Z

    .line 25
    move-result v2

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->os:Ljava/io/OutputStream;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->writeTo(Ljava/io/OutputStream;)V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    .line 36
    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 39
    return-void
.end method

.method private writeWritablePairs(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->access$300(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;)Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    goto :goto_1

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->length()I

    .line 29
    move-result v1

    .line 30
    add-int/2addr p1, v1

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v1

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    check-cast v1, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    .line 50
    .line 51
    .line 52
    invoke-static {v1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->access$300(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;)Z

    .line 53
    move-result v2

    .line 54
    .line 55
    if-eqz v2, :cond_2

    .line 56
    goto :goto_2

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->length()I

    .line 60
    move-result v2

    .line 61
    sub-int/2addr p1, v2

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->canBeWritten(I)Z

    .line 65
    move-result v2

    .line 66
    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->os:Ljava/io/OutputStream;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->writeTo(Ljava/io/OutputStream;)V

    .line 73
    goto :goto_2

    .line 74
    :cond_3
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
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->finish()V

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->os:Ljava/io/OutputStream;

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
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->finished:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->compressor:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->finish()V

    .line 10
    const/4 v0, 0x1

    .line 11
    .line 12
    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->finished:Z

    .line 13
    :cond_0
    return-void
.end method

.method public prefill([BII)V
    .locals 0

    .line 1
    .line 2
    if-lez p3, :cond_0

    .line 3
    add-int/2addr p3, p2

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iget-object p2, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->compressor:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->prefill([B)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->recordLiteral([B)V

    .line 16
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

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->oneByte:[B

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

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->compressor:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->compress([BII)V

    return-void
.end method
