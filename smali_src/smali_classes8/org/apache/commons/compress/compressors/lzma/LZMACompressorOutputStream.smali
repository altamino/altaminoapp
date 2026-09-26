.class public Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream;
.super Lorg/apache/commons/compress/compressors/CompressorOutputStream;
.source "SourceFile"


# instance fields
.field private final out:Lorg/tukaani/xz/LZMAOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lorg/tukaani/xz/LZMAOutputStream;

    .line 6
    .line 7
    new-instance v1, Lorg/tukaani/xz/LZMA2Options;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Lorg/tukaani/xz/LZMA2Options;-><init>()V

    .line 11
    .line 12
    const-wide/16 v2, -0x1

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p1, v1, v2, v3}, Lorg/tukaani/xz/LZMAOutputStream;-><init>(Ljava/io/OutputStream;Lorg/tukaani/xz/LZMA2Options;J)V

    .line 16
    .line 17
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream;->out:Lorg/tukaani/xz/LZMAOutputStream;

    .line 18
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream;->out:Lorg/tukaani/xz/LZMAOutputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/tukaani/xz/LZMAOutputStream;->close()V

    .line 6
    return-void
.end method

.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream;->out:Lorg/tukaani/xz/LZMAOutputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/tukaani/xz/LZMAOutputStream;->finish()V

    .line 6
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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream;->out:Lorg/tukaani/xz/LZMAOutputStream;

    .line 1
    invoke-virtual {v0, p1}, Lorg/tukaani/xz/LZMAOutputStream;->write(I)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream;->out:Lorg/tukaani/xz/LZMAOutputStream;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lorg/tukaani/xz/LZMAOutputStream;->write([BII)V

    return-void
.end method
