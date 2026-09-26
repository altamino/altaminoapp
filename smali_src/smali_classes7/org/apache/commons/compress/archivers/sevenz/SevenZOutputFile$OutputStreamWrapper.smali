.class Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$OutputStreamWrapper;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutputStreamWrapper"
.end annotation


# static fields
.field private static final BUF_SIZE:I = 0x2000


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field final synthetic this$0:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;


# direct methods
.method private constructor <init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$OutputStreamWrapper;->this$0:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/16 p1, 0x2000

    .line 2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$OutputStreamWrapper;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$OutputStreamWrapper;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$OutputStreamWrapper;->buffer:Ljava/nio/ByteBuffer;

    .line 1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$OutputStreamWrapper;->buffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    .line 2
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$OutputStreamWrapper;->this$0:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    .line 3
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->access$200(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$OutputStreamWrapper;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/g;->a(Ljava/nio/channels/SeekableByteChannel;Ljava/nio/ByteBuffer;)I

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$OutputStreamWrapper;->this$0:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    .line 4
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->access$300(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)Ljava/util/zip/CRC32;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update(I)V

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$OutputStreamWrapper;->this$0:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    .line 5
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->access$408(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)J

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$OutputStreamWrapper;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    if-le p3, v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$OutputStreamWrapper;->this$0:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    .line 7
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->access$200(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/g;->a(Ljava/nio/channels/SeekableByteChannel;Ljava/nio/ByteBuffer;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$OutputStreamWrapper;->buffer:Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$OutputStreamWrapper;->buffer:Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$OutputStreamWrapper;->this$0:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    .line 10
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->access$200(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$OutputStreamWrapper;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/g;->a(Ljava/nio/channels/SeekableByteChannel;Ljava/nio/ByteBuffer;)I

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$OutputStreamWrapper;->this$0:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    .line 11
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->access$300(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)Ljava/util/zip/CRC32;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$OutputStreamWrapper;->this$0:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    .line 12
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->access$400(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)J

    move-result-wide v0

    int-to-long p2, p3

    add-long/2addr v0, p2

    invoke-static {p1, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->access$402(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;J)J

    return-void
.end method
