.class Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

.field private final buffer:Lorg/apache/commons/compress/archivers/zip/CircularBuffer;

.field private final dictionarySize:I

.field private distanceTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

.field private final in:Ljava/io/InputStream;

.field private lengthTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

.field private literalTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

.field private final minimumMatchLength:I

.field private final numberOfTrees:I


# direct methods
.method public constructor <init>(IILjava/io/InputStream;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;

    .line 6
    .line 7
    .line 8
    const v1, 0x8000

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;-><init>(I)V

    .line 12
    .line 13
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->buffer:Lorg/apache/commons/compress/archivers/zip/CircularBuffer;

    .line 14
    .line 15
    const/16 v0, 0x1000

    .line 16
    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    .line 19
    const/16 v0, 0x2000

    .line 20
    .line 21
    if-ne p1, v0, :cond_0

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string p2, "The dictionary size must be 4096 or 8192"

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p1

    .line 31
    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 32
    .line 33
    if-eq p2, v0, :cond_3

    .line 34
    const/4 v0, 0x3

    .line 35
    .line 36
    if-ne p2, v0, :cond_2

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    const-string p2, "The number of trees must be 2 or 3"

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p1

    .line 46
    .line 47
    :cond_3
    :goto_1
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->dictionarySize:I

    .line 48
    .line 49
    iput p2, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->numberOfTrees:I

    .line 50
    .line 51
    iput p2, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->minimumMatchLength:I

    .line 52
    .line 53
    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->in:Ljava/io/InputStream;

    .line 54
    return-void
.end method

.method private fillBuffer()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->init()V

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/BitStream;->nextBit()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    const/4 v2, 0x1

    .line 12
    .line 13
    if-ne v0, v2, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->literalTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->read(Lorg/apache/commons/compress/archivers/zip/BitStream;)I

    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/BitStream;->nextByte()I

    .line 30
    move-result v0

    .line 31
    .line 32
    :goto_0
    if-ne v0, v1, :cond_1

    .line 33
    return-void

    .line 34
    .line 35
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->buffer:Lorg/apache/commons/compress/archivers/zip/CircularBuffer;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->put(I)V

    .line 39
    goto :goto_2

    .line 40
    .line 41
    :cond_2
    if-nez v0, :cond_6

    .line 42
    .line 43
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->dictionarySize:I

    .line 44
    .line 45
    const/16 v3, 0x1000

    .line 46
    .line 47
    if-ne v0, v3, :cond_3

    .line 48
    const/4 v0, 0x6

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    const/4 v0, 0x7

    .line 51
    .line 52
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v0}, Lorg/apache/commons/compress/archivers/zip/BitStream;->nextBits(I)J

    .line 56
    move-result-wide v3

    .line 57
    long-to-int v3, v3

    .line 58
    .line 59
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->distanceTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    .line 60
    .line 61
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v5}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->read(Lorg/apache/commons/compress/archivers/zip/BitStream;)I

    .line 65
    move-result v4

    .line 66
    .line 67
    if-ne v4, v1, :cond_4

    .line 68
    .line 69
    if-gtz v3, :cond_4

    .line 70
    return-void

    .line 71
    .line 72
    :cond_4
    shl-int v0, v4, v0

    .line 73
    or-int/2addr v0, v3

    .line 74
    .line 75
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->lengthTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    .line 76
    .line 77
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v3}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->read(Lorg/apache/commons/compress/archivers/zip/BitStream;)I

    .line 81
    move-result v1

    .line 82
    .line 83
    const/16 v3, 0x3f

    .line 84
    .line 85
    if-ne v1, v3, :cond_5

    .line 86
    int-to-long v3, v1

    .line 87
    .line 88
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    .line 89
    .line 90
    const/16 v5, 0x8

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v5}, Lorg/apache/commons/compress/archivers/zip/BitStream;->nextBits(I)J

    .line 94
    move-result-wide v5

    .line 95
    add-long/2addr v3, v5

    .line 96
    long-to-int v1, v3

    .line 97
    .line 98
    :cond_5
    iget v3, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->minimumMatchLength:I

    .line 99
    add-int/2addr v1, v3

    .line 100
    .line 101
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->buffer:Lorg/apache/commons/compress/archivers/zip/CircularBuffer;

    .line 102
    add-int/2addr v0, v2

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v0, v1}, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->copy(II)V

    .line 106
    :cond_6
    :goto_2
    return-void
.end method

.method private init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->numberOfTrees:I

    .line 7
    const/4 v1, 0x3

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->in:Ljava/io/InputStream;

    .line 12
    .line 13
    const/16 v1, 0x100

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->decode(Ljava/io/InputStream;I)Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->literalTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->in:Ljava/io/InputStream;

    .line 22
    .line 23
    const/16 v1, 0x40

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->decode(Ljava/io/InputStream;I)Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->lengthTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    .line 30
    .line 31
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->in:Ljava/io/InputStream;

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->decode(Ljava/io/InputStream;I)Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->distanceTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    .line 38
    .line 39
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/BitStream;

    .line 40
    .line 41
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->in:Ljava/io/InputStream;

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/BitStream;-><init>(Ljava/io/InputStream;)V

    .line 45
    .line 46
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    .line 47
    :cond_1
    return-void
.end method


# virtual methods
.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->buffer:Lorg/apache/commons/compress/archivers/zip/CircularBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->available()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->fillBuffer()V

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->buffer:Lorg/apache/commons/compress/archivers/zip/CircularBuffer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->get()I

    .line 17
    move-result v0

    .line 18
    return v0
.end method
