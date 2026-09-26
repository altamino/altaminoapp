.class public abstract Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "SourceFile"


# static fields
.field protected static final DEFAULT_CODE_SIZE:I = 0x9

.field protected static final UNUSED_PREFIX:I = -0x1


# instance fields
.field private characters:[B

.field private clearCode:I

.field private codeSize:I

.field protected final in:Lorg/apache/commons/compress/utils/BitInputStream;

.field private final oneByte:[B

.field private outputStack:[B

.field private outputStackLocation:I

.field private prefixes:[I

.field private previousCode:I

.field private previousCodeFirstChar:B

.field private tableSize:I


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->oneByte:[B

    .line 9
    const/4 v0, -0x1

    .line 10
    .line 11
    iput v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->clearCode:I

    .line 12
    .line 13
    const/16 v1, 0x9

    .line 14
    .line 15
    iput v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->codeSize:I

    .line 16
    .line 17
    iput v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->previousCode:I

    .line 18
    .line 19
    new-instance v0, Lorg/apache/commons/compress/utils/BitInputStream;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/utils/BitInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    .line 23
    .line 24
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 25
    return-void
.end method

.method private readFromStack([BII)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStack:[B

    .line 3
    array-length v0, v0

    .line 4
    .line 5
    iget v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    .line 6
    sub-int/2addr v0, v1

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    .line 12
    move-result p3

    .line 13
    .line 14
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStack:[B

    .line 15
    .line 16
    iget v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    .line 21
    iget p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    .line 22
    add-int/2addr p1, p3

    .line 23
    .line 24
    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    .line 25
    return p3

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    return p1
.end method


# virtual methods
.method protected abstract addEntry(IB)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected addEntry(IBI)I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->tableSize:I

    if-ge v0, p3, :cond_0

    iget-object p3, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->prefixes:[I

    .line 1
    aput p1, p3, v0

    iget-object p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->characters:[B

    .line 2
    aput-byte p2, p1, v0

    add-int/lit8 p1, v0, 0x1

    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->tableSize:I

    return v0

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method protected addRepeatOfPreviousCode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->previousCode:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    iget-byte v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->previousCodeFirstChar:B

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->addEntry(IB)I

    .line 11
    move-result v0

    .line 12
    return v0

    .line 13
    .line 14
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 15
    .line 16
    const-string v1, "The first code can\'t be a reference to its preceding code"

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 20
    throw v0
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
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/BitInputStream;->close()V

    .line 6
    return-void
.end method

.method protected abstract decompressNextSymbol()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected expandCodeToOutputStack(IZ)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move v0, p1

    .line 2
    .line 3
    :goto_0
    if-ltz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStack:[B

    .line 6
    .line 7
    iget v2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    .line 8
    .line 9
    add-int/lit8 v2, v2, -0x1

    .line 10
    .line 11
    iput v2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    .line 12
    .line 13
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->characters:[B

    .line 14
    .line 15
    aget-byte v3, v3, v0

    .line 16
    .line 17
    aput-byte v3, v1, v2

    .line 18
    .line 19
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->prefixes:[I

    .line 20
    .line 21
    aget v0, v1, v0

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->previousCode:I

    .line 25
    const/4 v1, -0x1

    .line 26
    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    .line 29
    if-nez p2, :cond_1

    .line 30
    .line 31
    iget-object p2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStack:[B

    .line 32
    .line 33
    iget v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    .line 34
    .line 35
    aget-byte p2, p2, v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->addEntry(IB)I

    .line 39
    .line 40
    :cond_1
    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->previousCode:I

    .line 41
    .line 42
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStack:[B

    .line 43
    .line 44
    iget p2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    .line 45
    .line 46
    aget-byte p1, p1, p2

    .line 47
    .line 48
    iput-byte p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->previousCodeFirstChar:B

    .line 49
    return p2
.end method

.method protected getClearCode()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->clearCode:I

    return v0
.end method

.method protected getCodeSize()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->codeSize:I

    return v0
.end method

.method protected getPrefix(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->prefixes:[I

    .line 3
    .line 4
    aget p1, v0, p1

    .line 5
    return p1
.end method

.method protected getPrefixesLength()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->prefixes:[I

    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method protected getTableSize()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->tableSize:I

    return v0
.end method

.method protected incrementCodeSize()V
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->codeSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->codeSize:I

    return-void
.end method

.method protected initializeTables(I)V
    .locals 2

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 3
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->prefixes:[I

    .line 4
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->characters:[B

    .line 5
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStack:[B

    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->prefixes:[I

    const/4 v1, -0x1

    .line 6
    aput v1, v0, p1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->characters:[B

    int-to-byte v1, p1

    .line 7
    aput-byte v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected initializeTables(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/MemoryLimitException;
        }
    .end annotation

    const/4 v0, -0x1

    if-le p2, v0, :cond_1

    const/4 v0, 0x1

    shl-int/2addr v0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0x6

    mul-long/2addr v0, v2

    const/16 v2, 0xa

    shr-long/2addr v0, v2

    int-to-long v2, p2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Lorg/apache/commons/compress/MemoryLimitException;

    invoke-direct {p1, v0, v1, p2}, Lorg/apache/commons/compress/MemoryLimitException;-><init>(JI)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->initializeTables(I)V

    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->oneByte:[B

    .line 1
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-gez v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->oneByte:[B

    const/4 v1, 0x0

    .line 2
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->readFromStack([BII)I

    move-result v0

    :goto_0
    sub-int v1, p3, v0

    if-lez v1, :cond_2

    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->decompressNextSymbol()I

    move-result v2

    if-gez v2, :cond_1

    if-lez v0, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    return v0

    :cond_0
    return v2

    :cond_1
    add-int v2, p2, v0

    .line 6
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->readFromStack([BII)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    return v0
.end method

.method protected readNextCode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->codeSize:I

    .line 3
    .line 4
    const/16 v1, 0x1f

    .line 5
    .line 6
    if-gt v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    .line 12
    move-result-wide v0

    .line 13
    long-to-int v0, v0

    .line 14
    return v0

    .line 15
    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v1, "code size must not be bigger than 31"

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    throw v0
.end method

.method protected resetCodeSize()V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x9

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->setCodeSize(I)V

    .line 6
    return-void
.end method

.method protected resetPreviousCode()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->previousCode:I

    return-void
.end method

.method protected setClearCode(I)V
    .locals 1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    shl-int p1, v0, p1

    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->clearCode:I

    return-void
.end method

.method protected setCodeSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->codeSize:I

    return-void
.end method

.method protected setPrefix(II)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->prefixes:[I

    .line 3
    .line 4
    aput p2, v0, p1

    .line 5
    return-void
.end method

.method protected setTableSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->tableSize:I

    return-void
.end method
