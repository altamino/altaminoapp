.class public Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;
.super Lorg/apache/commons/compress/compressors/CompressorOutputStream;
.source "SourceFile"


# instance fields
.field private final encOS:Lcom/github/luben/zstd/ZstdOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
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
    new-instance v0, Lcom/github/luben/zstd/ZstdOutputStream;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/github/luben/zstd/ZstdOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 9
    .line 10
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    .line 11
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
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/github/luben/zstd/ZstdOutputStream;->close()V

    .line 6
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/github/luben/zstd/ZstdOutputStream;->flush()V

    .line 6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    .line 1
    invoke-virtual {v0, p1}, Lcom/github/luben/zstd/ZstdOutputStream;->write(I)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/github/luben/zstd/ZstdOutputStream;->write([BII)V

    return-void
.end method
