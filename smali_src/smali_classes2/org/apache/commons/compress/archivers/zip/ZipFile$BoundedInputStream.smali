.class Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoundedInputStream"
.end annotation


# instance fields
.field private final end:J

.field private loc:J

.field private singleByteBuffer:Ljava/nio/ByteBuffer;

.field final synthetic this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;JJ)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 6
    .line 7
    add-long v0, p2, p4

    .line 8
    .line 9
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->end:J

    .line 10
    .line 11
    cmp-long p1, v0, p2

    .line 12
    .line 13
    if-ltz p1, :cond_0

    .line 14
    .line 15
    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->loc:J

    .line 16
    return-void

    .line 17
    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    const-string v1, "Invalid length of stream at offset="

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string p2, ", length="

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    throw p1
.end method


# virtual methods
.method public declared-synchronized read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->loc:J

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->end:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->singleByteBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->singleByteBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :goto_0
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->loc:J

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->singleByteBuffer:Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->read(JLjava/nio/ByteBuffer;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez v0, :cond_2

    .line 5
    monitor-exit p0

    return v0

    :cond_2
    :try_start_2
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->loc:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->loc:J

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->singleByteBuffer:Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method protected read(JLjava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    .line 13
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    .line 14
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/c;->a(Ljava/nio/channels/SeekableByteChannel;J)Ljava/nio/channels/SeekableByteChannel;

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    .line 15
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/apache/commons/compress/archivers/sevenz/a;->a(Ljava/nio/channels/SeekableByteChannel;Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return p1

    :catchall_0
    move-exception p1

    .line 18
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-gtz p3, :cond_0

    .line 7
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :cond_0
    int-to-long v0, p3

    :try_start_0
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->end:J

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->loc:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v6, v2, v4

    cmp-long v0, v0, v6

    if-lez v0, :cond_2

    cmp-long p3, v4, v2

    if-ltz p3, :cond_1

    .line 8
    monitor-exit p0

    const/4 p1, -0x1

    return p1

    :cond_1
    sub-long/2addr v2, v4

    long-to-int p3, v2

    .line 9
    :cond_2
    :try_start_1
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->loc:J

    .line 10
    invoke-virtual {p0, p2, p3, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->read(JLjava/nio/ByteBuffer;)I

    move-result p1

    if-lez p1, :cond_3

    iget-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->loc:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->loc:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 12
    :cond_3
    monitor-exit p0

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method
