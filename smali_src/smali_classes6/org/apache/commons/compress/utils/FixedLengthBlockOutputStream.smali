.class public Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"

# interfaces
.implements Ljava/nio/channels/WritableByteChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream$BufferAtATimeOutputChannel;
    }
.end annotation


# instance fields
.field private final blockSize:I

.field private final buffer:Ljava/nio/ByteBuffer;

.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final out:Ljava/nio/channels/WritableByteChannel;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    instance-of v0, p1, Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Ljava/io/FileOutputStream;

    .line 5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    .line 6
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream$BufferAtATimeOutputChannel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream$BufferAtATimeOutputChannel;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream$1;)V

    iput-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    .line 8
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    :goto_0
    iput p2, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/WritableByteChannel;I)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    iput p2, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    .line 11
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private maybeFlush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->writeBlock()V

    .line 12
    :cond_0
    return-void
.end method

.method private padBlock()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    const/16 v2, 0x8

    .line 19
    .line 20
    if-le v0, v2, :cond_2

    .line 21
    .line 22
    iget-object v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    .line 26
    move-result v3

    .line 27
    .line 28
    and-int/lit8 v3, v3, 0x7

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    rsub-int/lit8 v3, v3, 0x8

    .line 33
    move v4, v1

    .line 34
    .line 35
    :goto_0
    if-ge v4, v3, :cond_0

    .line 36
    .line 37
    iget-object v5, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    add-int/lit8 v4, v4, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sub-int/2addr v0, v3

    .line 45
    .line 46
    :cond_1
    :goto_1
    if-lt v0, v2, :cond_2

    .line 47
    .line 48
    iget-object v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    const-wide/16 v4, 0x0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    add-int/lit8 v0, v0, -0x8

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 62
    move-result v0

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    return-void
.end method

.method private writeBlock()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    .line 8
    .line 9
    iget-object v1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 13
    move-result v0

    .line 14
    .line 15
    iget-object v1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 19
    move-result v1

    .line 20
    .line 21
    iget v2, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    .line 22
    .line 23
    if-ne v0, v2, :cond_0

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 31
    return-void

    .line 32
    :cond_0
    const/4 v1, 0x2

    .line 33
    .line 34
    new-array v1, v1, [Ljava/lang/Object;

    .line 35
    const/4 v3, 0x0

    .line 36
    .line 37
    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    aput-object v2, v1, v3

    .line 42
    const/4 v2, 0x1

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    aput-object v0, v1, v2

    .line 49
    .line 50
    const-string v0, "Failed to write %,d bytes atomically. Only wrote  %,d"

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    new-instance v1, Ljava/io/IOException;

    .line 57
    .line 58
    .line 59
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 60
    throw v1
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->flushBlock()V

    .line 14
    .line 15
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/nio/channels/Channel;->close()V

    .line 19
    :cond_0
    return-void
.end method

.method public flushBlock()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->padBlock()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->writeBlock()V

    .line 15
    :cond_0
    return-void
.end method

.method public isOpen()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 20
    move-result v0

    .line 21
    xor-int/2addr v0, v1

    .line 22
    return v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 12
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    .line 17
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 18
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 19
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->writeBlock()V

    sub-int v2, v0, v2

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    iget v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    if-lt v2, v3, :cond_2

    .line 20
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v3

    iget v4, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    .line 21
    invoke-interface {v3, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    iget v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 23
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :goto_1
    return v0

    .line 24
    :cond_3
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p1
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    .line 2
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->maybeFlush()V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p1
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    if-lez p3, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 8
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->maybeFlush()V

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    return-void

    .line 9
    :cond_1
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p1
.end method
