.class Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoundedInputStream"
.end annotation


# instance fields
.field private final in:Ljava/io/InputStream;

.field private final max:J

.field private pos:J

.field final synthetic this$0:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;Ljava/io/InputStream;J)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    .line 10
    .line 11
    iput-wide p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->max:J

    .line 12
    .line 13
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->in:Ljava/io/InputStream;

    .line 14
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->max:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v2, v0, v2

    .line 7
    .line 8
    if-ltz v2, :cond_0

    .line 9
    .line 10
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    .line 11
    .line 12
    cmp-long v0, v2, v0

    .line 13
    .line 14
    if-ltz v0, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->in:Ljava/io/InputStream;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 22
    move-result v0

    .line 23
    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->max:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->in:Ljava/io/InputStream;

    .line 1
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    const/4 v2, 0x1

    .line 2
    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->access$800(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;I)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    .line 3
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->access$900(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$708(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->max:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, -0x1

    if-ltz v4, :cond_0

    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    cmp-long v4, v6, v0

    if-ltz v4, :cond_0

    return v5

    :cond_0
    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    int-to-long v2, p3

    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    sub-long/2addr v0, v6

    .line 5
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    int-to-long v0, p3

    :goto_0
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->in:Ljava/io/InputStream;

    long-to-int v0, v0

    .line 6
    invoke-virtual {p3, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v5, :cond_2

    return v5

    :cond_2
    iget-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    .line 7
    invoke-static {p2, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->access$1000(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;I)V

    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    .line 8
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->access$900(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$700(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {p2, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$702(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;J)J

    return p1
.end method

.method public skip(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->max:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v2, v0, v2

    .line 7
    .line 8
    if-ltz v2, :cond_0

    .line 9
    .line 10
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    .line 11
    sub-long/2addr v0, v2

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 15
    move-result-wide p1

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->in:Ljava/io/InputStream;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 21
    move-result-wide p1

    .line 22
    .line 23
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    .line 24
    add-long/2addr v0, p1

    .line 25
    .line 26
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    .line 27
    return-wide p1
.end method
