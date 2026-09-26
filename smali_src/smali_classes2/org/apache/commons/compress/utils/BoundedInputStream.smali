.class public Lorg/apache/commons/compress/utils/BoundedInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private bytesRemaining:J

.field private final in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lorg/apache/commons/compress/utils/BoundedInputStream;->in:Ljava/io/InputStream;

    .line 6
    .line 7
    iput-wide p2, p0, Lorg/apache/commons/compress/utils/BoundedInputStream;->bytesRemaining:J

    .line 8
    return-void
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

    iget-wide v0, p0, Lorg/apache/commons/compress/utils/BoundedInputStream;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/utils/BoundedInputStream;->bytesRemaining:J

    iget-object v0, p0, Lorg/apache/commons/compress/utils/BoundedInputStream;->in:Ljava/io/InputStream;

    .line 1
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0

    :cond_0
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

    iget-wide v0, p0, Lorg/apache/commons/compress/utils/BoundedInputStream;->bytesRemaining:J

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
    iget-object v0, p0, Lorg/apache/commons/compress/utils/BoundedInputStream;->in:Ljava/io/InputStream;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_2

    iget-wide p2, p0, Lorg/apache/commons/compress/utils/BoundedInputStream;->bytesRemaining:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lorg/apache/commons/compress/utils/BoundedInputStream;->bytesRemaining:J

    :cond_2
    return p1
.end method
