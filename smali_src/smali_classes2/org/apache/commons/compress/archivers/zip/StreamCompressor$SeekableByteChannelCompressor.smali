.class final Lorg/apache/commons/compress/archivers/zip/StreamCompressor$SeekableByteChannelCompressor;
.super Lorg/apache/commons/compress/archivers/zip/StreamCompressor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/StreamCompressor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SeekableByteChannelCompressor"
.end annotation


# instance fields
.field private final channel:Ljava/nio/channels/SeekableByteChannel;


# direct methods
.method public constructor <init>(Ljava/util/zip/Deflater;Ljava/nio/channels/SeekableByteChannel;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;-><init>(Ljava/util/zip/Deflater;)V

    .line 4
    .line 5
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor$SeekableByteChannelCompressor;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 6
    return-void
.end method


# virtual methods
.method protected final writeOut([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/StreamCompressor$SeekableByteChannelCompressor;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Lorg/apache/commons/compress/archivers/sevenz/g;->a(Ljava/nio/channels/SeekableByteChannel;Ljava/nio/ByteBuffer;)I

    .line 10
    return-void
.end method
