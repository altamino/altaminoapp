.class Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeflateDecoderOutputStream"
.end annotation


# instance fields
.field deflater:Ljava/util/zip/Deflater;

.field deflaterOutputStream:Ljava/util/zip/DeflaterOutputStream;


# direct methods
.method public constructor <init>(Ljava/util/zip/DeflaterOutputStream;Ljava/util/zip/Deflater;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderOutputStream;->deflaterOutputStream:Ljava/util/zip/DeflaterOutputStream;

    .line 6
    .line 7
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderOutputStream;->deflater:Ljava/util/zip/Deflater;

    .line 8
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderOutputStream;->deflaterOutputStream:Ljava/util/zip/DeflaterOutputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderOutputStream;->deflater:Ljava/util/zip/Deflater;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    .line 14
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderOutputStream;->deflater:Ljava/util/zip/Deflater;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V

    .line 18
    throw v0
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderOutputStream;->deflaterOutputStream:Ljava/util/zip/DeflaterOutputStream;

    .line 1
    invoke-virtual {v0, p1}, Ljava/util/zip/DeflaterOutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderOutputStream;->deflaterOutputStream:Ljava/util/zip/DeflaterOutputStream;

    .line 2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderOutputStream;->deflaterOutputStream:Ljava/util/zip/DeflaterOutputStream;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    return-void
.end method
