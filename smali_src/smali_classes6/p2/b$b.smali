.class final Lp2/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;

.field private final frameStartMarker:I

.field private final sampleNumberHolder:Lcom/google/android/exoplayer2/extractor/s$a;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/extractor/v;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp2/b$b;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    iput p2, p0, Lp2/b$b;->frameStartMarker:I

    .line 3
    new-instance p1, Lcom/google/android/exoplayer2/extractor/s$a;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/s$a;-><init>()V

    iput-object p1, p0, Lp2/b$b;->sampleNumberHolder:Lcom/google/android/exoplayer2/extractor/s$a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/extractor/v;ILp2/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lp2/b$b;-><init>(Lcom/google/android/exoplayer2/extractor/v;I)V

    return-void
.end method

.method private c(Lcom/google/android/exoplayer2/extractor/m;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :goto_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPeekPosition()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getLength()J

    .line 8
    move-result-wide v2

    .line 9
    .line 10
    const-wide/16 v4, 0x6

    .line 11
    sub-long/2addr v2, v4

    .line 12
    .line 13
    cmp-long v0, v0, v2

    .line 14
    .line 15
    if-gez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lp2/b$b;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 18
    .line 19
    iget v1, p0, Lp2/b$b;->frameStartMarker:I

    .line 20
    .line 21
    iget-object v2, p0, Lp2/b$b;->sampleNumberHolder:Lcom/google/android/exoplayer2/extractor/s$a;

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/s;->h(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/v;ILcom/google/android/exoplayer2/extractor/s$a;)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    const/4 v0, 0x1

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/m;->advancePeekPosition(I)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPeekPosition()J

    .line 36
    move-result-wide v0

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getLength()J

    .line 40
    move-result-wide v2

    .line 41
    sub-long/2addr v2, v4

    .line 42
    .line 43
    cmp-long v0, v0, v2

    .line 44
    .line 45
    if-ltz v0, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getLength()J

    .line 49
    move-result-wide v0

    .line 50
    .line 51
    .line 52
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPeekPosition()J

    .line 53
    move-result-wide v2

    .line 54
    sub-long/2addr v0, v2

    .line 55
    long-to-int v0, v0

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/m;->advancePeekPosition(I)V

    .line 59
    .line 60
    iget-object p1, p0, Lp2/b$b;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 61
    .line 62
    iget-wide v0, p1, Lcom/google/android/exoplayer2/extractor/v;->totalSamples:J

    .line 63
    return-wide v0

    .line 64
    .line 65
    :cond_1
    iget-object p1, p0, Lp2/b$b;->sampleNumberHolder:Lcom/google/android/exoplayer2/extractor/s$a;

    .line 66
    .line 67
    iget-wide v0, p1, Lcom/google/android/exoplayer2/extractor/s$a;->sampleNumber:J

    .line 68
    return-wide v0
.end method


# virtual methods
.method public synthetic a()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/b;->a(Lcom/google/android/exoplayer2/extractor/a$f;)V

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/extractor/m;J)Lcom/google/android/exoplayer2/extractor/a$e;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lp2/b$b;->c(Lcom/google/android/exoplayer2/extractor/m;)J

    .line 8
    move-result-wide v2

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPeekPosition()J

    .line 12
    move-result-wide v4

    .line 13
    .line 14
    iget-object v6, p0, Lp2/b$b;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 15
    .line 16
    iget v6, v6, Lcom/google/android/exoplayer2/extractor/v;->minFrameSize:I

    .line 17
    const/4 v7, 0x6

    .line 18
    .line 19
    .line 20
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    .line 21
    move-result v6

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v6}, Lcom/google/android/exoplayer2/extractor/m;->advancePeekPosition(I)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1}, Lp2/b$b;->c(Lcom/google/android/exoplayer2/extractor/m;)J

    .line 28
    move-result-wide v6

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPeekPosition()J

    .line 32
    move-result-wide v8

    .line 33
    .line 34
    cmp-long p1, v2, p2

    .line 35
    .line 36
    if-gtz p1, :cond_0

    .line 37
    .line 38
    cmp-long p1, v6, p2

    .line 39
    .line 40
    if-lez p1, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/extractor/a$e;->e(J)Lcom/google/android/exoplayer2/extractor/a$e;

    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    .line 47
    :cond_0
    cmp-long p1, v6, p2

    .line 48
    .line 49
    if-gtz p1, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-static {v6, v7, v8, v9}, Lcom/google/android/exoplayer2/extractor/a$e;->f(JJ)Lcom/google/android/exoplayer2/extractor/a$e;

    .line 53
    move-result-object p1

    .line 54
    return-object p1

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-static {v2, v3, v0, v1}, Lcom/google/android/exoplayer2/extractor/a$e;->d(JJ)Lcom/google/android/exoplayer2/extractor/a$e;

    .line 58
    move-result-object p1

    .line 59
    return-object p1
.end method
