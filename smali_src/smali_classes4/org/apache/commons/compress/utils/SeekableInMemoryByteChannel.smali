.class public Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/nio/channels/SeekableByteChannel;


# static fields
.field private static final NAIVE_RESIZE_LIMIT:I = 0x3fffffff


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private data:[B

.field private position:I

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 4
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;-><init>([B)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 5
    new-array p1, p1, [B

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    .line 3
    array-length p1, p1

    iput p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    return-void
.end method

.method private ensureOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->isOpen()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 13
    throw v0
.end method

.method private repositionIfNecessary()V
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    iget v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    if-le v0, v1, :cond_0

    iput v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    :cond_0
    return-void
.end method

.method private resize(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    .line 3
    array-length v0, v0

    .line 4
    .line 5
    if-gtz v0, :cond_0

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    .line 9
    :cond_0
    const v1, 0x3fffffff    # 1.9999999f

    .line 10
    .line 11
    if-ge p1, v1, :cond_2

    .line 12
    .line 13
    :goto_0
    if-ge v0, p1, :cond_1

    .line 14
    .line 15
    shl-int/lit8 v0, v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move p1, v0

    .line 18
    .line 19
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 23
    move-result-object p1

    .line 24
    .line 25
    iput-object p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    .line 26
    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    return v0
.end method

.method public position()J
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->ensureOpen()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    long-to-int p1, p1

    iput p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Position has to be in range 0.. 2147483647"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->ensureOpen()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->repositionIfNecessary()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 10
    move-result v0

    .line 11
    .line 12
    iget v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    .line 13
    .line 14
    iget v2, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    .line 15
    sub-int/2addr v1, v2

    .line 16
    .line 17
    if-gtz v1, :cond_0

    .line 18
    const/4 p1, -0x1

    .line 19
    return p1

    .line 20
    .line 21
    :cond_0
    if-le v0, v1, :cond_1

    .line 22
    move v0, v1

    .line 23
    .line 24
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    iget p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    .line 30
    add-int/2addr p1, v0

    .line 31
    .line 32
    iput p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    .line 33
    return v0
.end method

.method public size()J
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    .line 3
    int-to-long v0, v0

    .line 4
    .line 5
    cmp-long v0, v0, p1

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    long-to-int p1, p1

    .line 9
    .line 10
    iput p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->repositionIfNecessary()V

    .line 14
    return-object p0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->ensureOpen()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 7
    move-result v0

    .line 8
    .line 9
    iget v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    .line 10
    .line 11
    iget v2, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    .line 12
    sub-int/2addr v1, v2

    .line 13
    .line 14
    if-le v0, v1, :cond_1

    .line 15
    add-int/2addr v2, v0

    .line 16
    .line 17
    if-gez v2, :cond_0

    .line 18
    .line 19
    .line 20
    const v0, 0x7fffffff

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->resize(I)V

    .line 24
    .line 25
    iget v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    .line 26
    sub-int/2addr v0, v1

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->resize(I)V

    .line 31
    .line 32
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    .line 33
    .line 34
    iget v2, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    iget p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    .line 40
    add-int/2addr p1, v0

    .line 41
    .line 42
    iput p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    .line 43
    .line 44
    iget v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    .line 45
    .line 46
    if-ge v1, p1, :cond_2

    .line 47
    .line 48
    iput p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    .line 49
    :cond_2
    return v0
.end method
