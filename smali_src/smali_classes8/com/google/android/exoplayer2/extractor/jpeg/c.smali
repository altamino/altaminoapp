.class final Lcom/google/android/exoplayer2/extractor/jpeg/c;
.super Lcom/google/android/exoplayer2/extractor/w;
.source "SourceFile"


# instance fields
.field private final startOffset:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/m;J)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/w;-><init>(Lcom/google/android/exoplayer2/extractor/m;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 7
    move-result-wide v0

    .line 8
    .line 9
    cmp-long p1, v0, p2

    .line 10
    .line 11
    if-ltz p1, :cond_0

    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 18
    .line 19
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/jpeg/c;->startOffset:J

    .line 20
    return-void
.end method


# virtual methods
.method public getLength()J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/exoplayer2/extractor/w;->getLength()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/jpeg/c;->startOffset:J

    .line 7
    sub-long/2addr v0, v2

    .line 8
    return-wide v0
.end method

.method public getPeekPosition()J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/exoplayer2/extractor/w;->getPeekPosition()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/jpeg/c;->startOffset:J

    .line 7
    sub-long/2addr v0, v2

    .line 8
    return-wide v0
.end method

.method public getPosition()J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/exoplayer2/extractor/w;->getPosition()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/jpeg/c;->startOffset:J

    .line 7
    sub-long/2addr v0, v2

    .line 8
    return-wide v0
.end method
