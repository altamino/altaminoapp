.class public Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final checksum:Ljava/util/zip/Checksum;

.field private final in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/util/zip/Checksum;Ljava/io/InputStream;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->checksum:Ljava/util/zip/Checksum;

    .line 10
    .line 11
    iput-object p2, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->in:Ljava/io/InputStream;

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 15
    .line 16
    const-string p2, "Parameter in must not be null"

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p1

    .line 21
    .line 22
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 23
    .line 24
    const-string p2, "Parameter checksum must not be null"

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p1
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->checksum:Ljava/util/zip/Checksum;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->in:Ljava/io/InputStream;

    .line 1
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->checksum:Ljava/util/zip/Checksum;

    .line 2
    invoke-interface {v1, v0}, Ljava/util/zip/Checksum;->update(I)V

    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->read([BII)I

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

    iget-object v0, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->in:Ljava/io/InputStream;

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-ltz p3, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->checksum:Ljava/util/zip/Checksum;

    .line 5
    invoke-interface {v0, p1, p2, p3}, Ljava/util/zip/Checksum;->update([BII)V

    :cond_0
    return p3
.end method

.method public skip(J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->read()I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-ltz p1, :cond_0

    .line 7
    .line 8
    const-wide/16 p1, 0x1

    .line 9
    return-wide p1

    .line 10
    .line 11
    :cond_0
    const-wide/16 p1, 0x0

    .line 12
    return-wide p1
.end method
