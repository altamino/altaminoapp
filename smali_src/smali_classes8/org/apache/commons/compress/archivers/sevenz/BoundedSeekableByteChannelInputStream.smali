.class Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field private static final MAX_BUF_LEN:I = 0x2000


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private bytesRemaining:J

.field private final channel:Ljava/nio/channels/SeekableByteChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;J)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 6
    .line 7
    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->bytesRemaining:J

    .line 8
    .line 9
    const-wide/16 v0, 0x2000

    .line 10
    .line 11
    cmp-long p1, p2, v0

    .line 12
    .line 13
    if-gez p1, :cond_0

    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    cmp-long p1, p2, v0

    .line 18
    .line 19
    if-lez p1, :cond_0

    .line 20
    long-to-int p1, p2

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    const/16 p1, 0x2000

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 36
    :goto_0
    return-void
.end method

.method private read(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 10
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/a;->a(Ljava/nio/channels/SeekableByteChannel;Ljava/nio/ByteBuffer;)I

    move-result p1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return p1
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->bytesRemaining:J

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->read(I)I

    move-result v0

    if-gez v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    int-to-long v2, p3

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    long-to-int p3, v0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    if-gt p3, v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 4
    invoke-direct {p0, p3}, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->read(I)I

    move-result p3

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object p3, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 6
    invoke-static {p3, v0}, Lorg/apache/commons/compress/archivers/sevenz/a;->a(Ljava/nio/channels/SeekableByteChannel;Ljava/nio/ByteBuffer;)I

    move-result p3

    .line 7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :goto_0
    if-ltz p3, :cond_3

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->bytesRemaining:J

    int-to-long v0, p3

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->bytesRemaining:J

    :cond_3
    return p3
.end method
