.class public final Lcom/google/android/exoplayer2/upstream/m;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private closed:Z

.field private final dataSource:Lcom/google/android/exoplayer2/upstream/k;

.field private final dataSpec:Lcom/google/android/exoplayer2/upstream/o;

.field private opened:Z

.field private final singleByteArray:[B

.field private totalBytesRead:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/o;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/m;->opened:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/m;->closed:Z

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/m;->dataSource:Lcom/google/android/exoplayer2/upstream/k;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/m;->dataSpec:Lcom/google/android/exoplayer2/upstream/o;

    .line 13
    const/4 p1, 0x1

    .line 14
    .line 15
    new-array p1, p1, [B

    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/m;->singleByteArray:[B

    .line 18
    return-void
.end method

.method private d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/m;->opened:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->dataSource:Lcom/google/android/exoplayer2/upstream/k;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/m;->dataSpec:Lcom/google/android/exoplayer2/upstream/o;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/k;->c(Lcom/google/android/exoplayer2/upstream/o;)J

    .line 12
    const/4 v0, 0x1

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/m;->opened:Z

    .line 15
    :cond_0
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
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/m;->closed:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->dataSource:Lcom/google/android/exoplayer2/upstream/k;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/k;->close()V

    .line 10
    const/4 v0, 0x1

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/m;->closed:Z

    .line 13
    :cond_0
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->singleByteArray:[B

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/m;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->singleByteArray:[B

    const/4 v1, 0x0

    .line 2
    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    :goto_0
    return v1
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

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/exoplayer2/upstream/m;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/m;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    .line 4
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/m;->d()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/m;->dataSource:Lcom/google/android/exoplayer2/upstream/k;

    .line 6
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/h;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    iget-wide p2, p0, Lcom/google/android/exoplayer2/upstream/m;->totalBytesRead:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/m;->totalBytesRead:J

    return p1
.end method
