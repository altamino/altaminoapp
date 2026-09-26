.class Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedFileChannelInputStream;
.super Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoundedFileChannelInputStream"
.end annotation


# instance fields
.field private final archive:Ljava/nio/channels/FileChannel;

.field final synthetic this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;JJ)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedFileChannelInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    .line 3
    .line 4
    .line 5
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;JJ)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/nio/channels/SeekableByteChannel;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Ljava/nio/channels/FileChannel;

    .line 12
    .line 13
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedFileChannelInputStream;->archive:Ljava/nio/channels/FileChannel;

    .line 14
    return-void
.end method


# virtual methods
.method protected read(JLjava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedFileChannelInputStream;->archive:Ljava/nio/channels/FileChannel;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p3, p1, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 10
    return p1
.end method
