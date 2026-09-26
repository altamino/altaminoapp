.class public Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;,
        Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$EOD;,
        Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;,
        Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;,
        Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;
    }
.end annotation


# static fields
.field private static final HASH_MASK:I = 0x7fff

.field private static final HASH_SIZE:I = 0x8000

.field private static final H_SHIFT:I = 0x5

.field private static final NO_MATCH:I = -0x1

.field static final NUMBER_OF_BYTES_IN_HASH:I = 0x3

.field private static final THE_EOD:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;


# instance fields
.field private blockStart:I

.field private final callback:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;

.field private currentPosition:I

.field private final head:[I

.field private initialized:Z

.field private insertHash:I

.field private lookahead:I

.field private matchStart:I

.field private missedInserts:I

.field private final params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

.field private final prev:[I

.field private final wMask:I

.field private final window:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$EOD;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$EOD;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->THE_EOD:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;

    .line 8
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/compressors/lz77support/Parameters;Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->initialized:Z

    .line 7
    .line 8
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    .line 9
    .line 10
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    .line 11
    .line 12
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    .line 13
    const/4 v1, -0x1

    .line 14
    .line 15
    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    .line 16
    .line 17
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->missedInserts:I

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    .line 24
    .line 25
    iput-object p2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->callback:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getWindowSize()I

    .line 29
    move-result p1

    .line 30
    .line 31
    mul-int/lit8 p2, p1, 0x2

    .line 32
    .line 33
    new-array p2, p2, [B

    .line 34
    .line 35
    iput-object p2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    .line 36
    .line 37
    add-int/lit8 p2, p1, -0x1

    .line 38
    .line 39
    iput p2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->wMask:I

    .line 40
    .line 41
    .line 42
    const p2, 0x8000

    .line 43
    .line 44
    new-array p2, p2, [I

    .line 45
    .line 46
    iput-object p2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->head:[I

    .line 47
    .line 48
    .line 49
    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([II)V

    .line 50
    .line 51
    new-array p1, p1, [I

    .line 52
    .line 53
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->prev:[I

    .line 54
    return-void

    .line 55
    .line 56
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 57
    .line 58
    const-string p2, "callback must not be null"

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 62
    throw p1

    .line 63
    .line 64
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 65
    .line 66
    const-string p2, "params must not be null"

    .line 67
    .line 68
    .line 69
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 70
    throw p1
.end method

.method private catchUpMissedInserts()V
    .locals 3

    .line 1
    .line 2
    :goto_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->missedInserts:I

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 7
    .line 8
    add-int/lit8 v2, v0, -0x1

    .line 9
    .line 10
    iput v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->missedInserts:I

    .line 11
    sub-int/2addr v1, v0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertString(I)I

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void
.end method

.method private compress()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMinBackReferenceLength()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    .line 6
    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getLazyMatching()Z

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    .line 7
    invoke-virtual {v2}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getLazyMatchingThreshold()I

    move-result v2

    :cond_0
    :goto_0
    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    if-lt v3, v0, :cond_5

    .line 8
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->catchUpMissedInserts()V

    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 9
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertString(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    sub-int v5, v3, v5

    iget-object v6, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    .line 10
    invoke-virtual {v6}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMaxOffset()I

    move-result v6

    if-gt v5, v6, :cond_1

    .line 11
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->longestMatch(I)I

    move-result v3

    if-eqz v1, :cond_2

    if-gt v3, v2, :cond_2

    iget v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    if-le v5, v0, :cond_2

    .line 12
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->longestMatchForNextPosition(I)I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_1
    if-lt v3, v0, :cond_4

    iget v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    iget v6, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    if-eq v5, v6, :cond_3

    .line 13
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->flushLiteralBlock()V

    iput v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    .line 14
    :cond_3
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->flushBackReference(I)V

    .line 15
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertStringsInMatch(I)V

    iget v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    sub-int/2addr v4, v3

    iput v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    iget v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iput v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    goto :goto_0

    :cond_4
    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iget v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    .line 16
    invoke-virtual {v4}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMaxLiteralLength()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 17
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->flushLiteralBlock()V

    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iput v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    goto :goto_0

    :cond_5
    return-void
.end method

.method private doCompress([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    .line 3
    array-length v0, v0

    .line 4
    .line 5
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 6
    sub-int/2addr v0, v1

    .line 7
    .line 8
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    .line 9
    sub-int/2addr v0, v1

    .line 10
    .line 11
    if-le p3, v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->slide()V

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    .line 17
    .line 18
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 19
    .line 20
    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    .line 21
    add-int/2addr v1, v2

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    .line 26
    iget p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    .line 27
    add-int/2addr p1, p3

    .line 28
    .line 29
    iput p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    .line 30
    .line 31
    iget-boolean p2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->initialized:Z

    .line 32
    .line 33
    if-nez p2, :cond_1

    .line 34
    .line 35
    iget-object p2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMinBackReferenceLength()I

    .line 39
    move-result p2

    .line 40
    .line 41
    if-lt p1, p2, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->initialize()V

    .line 45
    .line 46
    :cond_1
    iget-boolean p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->initialized:Z

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->compress()V

    .line 52
    :cond_2
    return-void
.end method

.method private flushBackReference(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->callback:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;

    .line 3
    .line 4
    new-instance v1, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;

    .line 5
    .line 6
    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 7
    .line 8
    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    .line 9
    sub-int/2addr v2, v3

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2, p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;-><init>(II)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;->accept(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;)V

    .line 16
    return-void
.end method

.method private flushLiteralBlock()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->callback:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;

    .line 3
    .line 4
    new-instance v1, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;

    .line 5
    .line 6
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    .line 7
    .line 8
    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    .line 9
    .line 10
    iget v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 11
    sub-int/2addr v4, v3

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;-><init>([BII)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;->accept(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;)V

    .line 18
    return-void
.end method

.method private initialize()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x2

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    .line 7
    .line 8
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    .line 9
    .line 10
    aget-byte v2, v2, v0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->nextHash(IB)I

    .line 14
    move-result v1

    .line 15
    .line 16
    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x1

    .line 21
    .line 22
    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->initialized:Z

    .line 23
    return-void
.end method

.method private insertString(I)I
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    .line 3
    .line 4
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    .line 5
    .line 6
    add-int/lit8 v2, p1, 0x2

    .line 7
    .line 8
    aget-byte v1, v1, v2

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->nextHash(IB)I

    .line 12
    move-result v0

    .line 13
    .line 14
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    .line 15
    .line 16
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->head:[I

    .line 17
    .line 18
    aget v2, v1, v0

    .line 19
    .line 20
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->prev:[I

    .line 21
    .line 22
    iget v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->wMask:I

    .line 23
    and-int/2addr v4, p1

    .line 24
    .line 25
    aput v2, v3, v4

    .line 26
    .line 27
    aput p1, v1, v0

    .line 28
    return v2
.end method

.method private insertStringsInMatch(I)V
    .locals 4

    .line 1
    .line 2
    add-int/lit8 v0, p1, -0x1

    .line 3
    .line 4
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, -0x3

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    move v2, v1

    .line 13
    .line 14
    :goto_0
    if-gt v2, v0, :cond_0

    .line 15
    .line 16
    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 17
    add-int/2addr v3, v2

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertString(I)I

    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sub-int/2addr p1, v0

    .line 25
    sub-int/2addr p1, v1

    .line 26
    .line 27
    iput p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->missedInserts:I

    .line 28
    return-void
.end method

.method private longestMatch(I)I
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMinBackReferenceLength()I

    .line 6
    move-result v0

    .line 7
    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 9
    .line 10
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMaxBackReferenceLength()I

    .line 14
    move-result v1

    .line 15
    .line 16
    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 20
    move-result v1

    .line 21
    .line 22
    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 23
    .line 24
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMaxOffset()I

    .line 28
    move-result v3

    .line 29
    sub-int/2addr v2, v3

    .line 30
    const/4 v3, 0x0

    .line 31
    .line 32
    .line 33
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 34
    move-result v2

    .line 35
    .line 36
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getNiceBackReferenceLength()I

    .line 40
    move-result v4

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    .line 44
    move-result v4

    .line 45
    .line 46
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMaxCandidates()I

    .line 50
    move-result v5

    .line 51
    move v6, v3

    .line 52
    .line 53
    :goto_0
    if-ge v6, v5, :cond_3

    .line 54
    .line 55
    if-lt p1, v2, :cond_3

    .line 56
    move v7, v3

    .line 57
    move v8, v7

    .line 58
    .line 59
    :goto_1
    if-ge v7, v1, :cond_1

    .line 60
    .line 61
    iget-object v9, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    .line 62
    .line 63
    add-int v10, p1, v7

    .line 64
    .line 65
    aget-byte v10, v9, v10

    .line 66
    .line 67
    iget v11, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 68
    add-int/2addr v11, v7

    .line 69
    .line 70
    aget-byte v9, v9, v11

    .line 71
    .line 72
    if-eq v10, v9, :cond_0

    .line 73
    goto :goto_2

    .line 74
    .line 75
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 76
    .line 77
    add-int/lit8 v7, v7, 0x1

    .line 78
    goto :goto_1

    .line 79
    .line 80
    :cond_1
    :goto_2
    if-le v8, v0, :cond_2

    .line 81
    .line 82
    iput p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    .line 83
    move v0, v8

    .line 84
    .line 85
    if-lt v8, v4, :cond_2

    .line 86
    goto :goto_3

    .line 87
    .line 88
    :cond_2
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->prev:[I

    .line 89
    .line 90
    iget v8, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->wMask:I

    .line 91
    and-int/2addr p1, v8

    .line 92
    .line 93
    aget p1, v7, p1

    .line 94
    .line 95
    add-int/lit8 v6, v6, 0x1

    .line 96
    goto :goto_0

    .line 97
    :cond_3
    :goto_3
    return v0
.end method

.method private longestMatchForNextPosition(I)I
    .locals 6

    .line 1
    .line 2
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    .line 3
    .line 4
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    .line 5
    .line 6
    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    .line 7
    .line 8
    add-int/lit8 v2, v2, -0x1

    .line 9
    .line 10
    iput v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    .line 11
    .line 12
    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 13
    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    iput v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertString(I)I

    .line 20
    move-result v2

    .line 21
    .line 22
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->prev:[I

    .line 23
    .line 24
    iget v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 25
    .line 26
    iget v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->wMask:I

    .line 27
    and-int/2addr v4, v5

    .line 28
    .line 29
    aget v3, v3, v4

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->longestMatch(I)I

    .line 33
    move-result v2

    .line 34
    .line 35
    if-gt v2, p1, :cond_0

    .line 36
    .line 37
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    .line 38
    .line 39
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->head:[I

    .line 40
    .line 41
    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    .line 42
    .line 43
    aput v3, v0, v2

    .line 44
    .line 45
    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    .line 46
    .line 47
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 48
    .line 49
    add-int/lit8 v0, v0, -0x1

    .line 50
    .line 51
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 52
    .line 53
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    .line 54
    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 56
    .line 57
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move p1, v2

    .line 60
    :goto_0
    return p1
.end method

.method private nextHash(IB)I
    .locals 0

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p1, p1, 0x5

    xor-int/2addr p1, p2

    and-int/lit16 p1, p1, 0x7fff

    return p1
.end method

.method private slide()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getWindowSize()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    .line 9
    .line 10
    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 11
    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    if-ge v1, v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->flushLiteralBlock()V

    .line 18
    .line 19
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 20
    .line 21
    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    .line 24
    const/4 v2, 0x0

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v0, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    .line 29
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 30
    sub-int/2addr v1, v0

    .line 31
    .line 32
    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 33
    .line 34
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    .line 35
    sub-int/2addr v1, v0

    .line 36
    .line 37
    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    .line 38
    .line 39
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    .line 40
    sub-int/2addr v1, v0

    .line 41
    .line 42
    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    .line 43
    move v1, v2

    .line 44
    .line 45
    .line 46
    :goto_0
    const v3, 0x8000

    .line 47
    const/4 v4, -0x1

    .line 48
    .line 49
    if-ge v1, v3, :cond_2

    .line 50
    .line 51
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->head:[I

    .line 52
    .line 53
    aget v5, v3, v1

    .line 54
    .line 55
    if-lt v5, v0, :cond_1

    .line 56
    .line 57
    sub-int v4, v5, v0

    .line 58
    .line 59
    :cond_1
    aput v4, v3, v1

    .line 60
    .line 61
    add-int/lit8 v1, v1, 0x1

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_2
    :goto_1
    if-ge v2, v0, :cond_4

    .line 65
    .line 66
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->prev:[I

    .line 67
    .line 68
    aget v3, v1, v2

    .line 69
    .line 70
    if-lt v3, v0, :cond_3

    .line 71
    sub-int/2addr v3, v0

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    move v3, v4

    .line 74
    .line 75
    :goto_2
    aput v3, v1, v2

    .line 76
    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 78
    goto :goto_1

    .line 79
    :cond_4
    return-void
.end method


# virtual methods
.method public compress([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->compress([BII)V

    return-void
.end method

.method public compress([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    .line 2
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getWindowSize()I

    move-result v0

    :goto_0
    if-le p3, v0, :cond_0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->doCompress([BII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_0
    if-lez p3, :cond_1

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->doCompress([BII)V

    :cond_1
    return-void
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
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    .line 3
    .line 4
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    .line 9
    .line 10
    if-lez v0, :cond_1

    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    .line 13
    add-int/2addr v1, v0

    .line 14
    .line 15
    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->flushLiteralBlock()V

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->callback:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;

    .line 21
    .line 22
    sget-object v1, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->THE_EOD:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;->accept(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;)V

    .line 26
    return-void
.end method

.method public prefill([B)V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 3
    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getWindowSize()I

    .line 14
    move-result v0

    .line 15
    array-length v1, p1

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 19
    move-result v0

    .line 20
    array-length v1, p1

    .line 21
    sub-int/2addr v1, v0

    .line 22
    .line 23
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    .line 24
    const/4 v3, 0x0

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    const/4 p1, 0x3

    .line 29
    .line 30
    if-lt v0, p1, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->initialize()V

    .line 34
    .line 35
    add-int/lit8 p1, v0, -0x2

    .line 36
    .line 37
    :goto_0
    if-ge v3, p1, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertString(I)I

    .line 41
    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p1, 0x2

    .line 45
    .line 46
    iput p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->missedInserts:I

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_1
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->missedInserts:I

    .line 50
    .line 51
    :goto_1
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    .line 52
    .line 53
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    .line 54
    return-void

    .line 55
    .line 56
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string v0, "the compressor has already started to accept data, can\'t prefill anymore"

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    throw p1
.end method
