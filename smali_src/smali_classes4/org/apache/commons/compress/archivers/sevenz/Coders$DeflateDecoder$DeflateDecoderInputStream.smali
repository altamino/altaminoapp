.class Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeflateDecoderInputStream"
.end annotation


# instance fields
.field inflater:Ljava/util/zip/Inflater;

.field inflaterInputStream:Ljava/util/zip/InflaterInputStream;


# direct methods
.method public constructor <init>(Ljava/util/zip/InflaterInputStream;Ljava/util/zip/Inflater;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderInputStream;->inflaterInputStream:Ljava/util/zip/InflaterInputStream;

    .line 6
    .line 7
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderInputStream;->inflater:Ljava/util/zip/Inflater;

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
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderInputStream;->inflaterInputStream:Ljava/util/zip/InflaterInputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/zip/InflaterInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderInputStream;->inflater:Ljava/util/zip/Inflater;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    .line 14
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderInputStream;->inflater:Ljava/util/zip/Inflater;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->end()V

    .line 18
    throw v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderInputStream;->inflaterInputStream:Ljava/util/zip/InflaterInputStream;

    .line 1
    invoke-virtual {v0}, Ljava/util/zip/InflaterInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderInputStream;->inflaterInputStream:Ljava/util/zip/InflaterInputStream;

    .line 3
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderInputStream;->inflaterInputStream:Ljava/util/zip/InflaterInputStream;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result p1

    return p1
.end method
