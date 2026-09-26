.class final Lcom/google/android/exoplayer2/source/j0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/w0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final sampleStream:Lcom/google/android/exoplayer2/source/w0;

.field private final timeOffsetUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/w0;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/j0$c;->sampleStream:Lcom/google/android/exoplayer2/source/w0;

    .line 6
    .line 7
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/j0$c;->timeOffsetUs:J

    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/b2;Lcom/google/android/exoplayer2/decoder/g;I)I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0$c;->sampleStream:Lcom/google/android/exoplayer2/source/w0;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/w0;->a(Lcom/google/android/exoplayer2/b2;Lcom/google/android/exoplayer2/decoder/g;I)I

    .line 6
    move-result p1

    .line 7
    const/4 p3, -0x4

    .line 8
    .line 9
    if-ne p1, p3, :cond_0

    .line 10
    .line 11
    iget-wide v0, p2, Lcom/google/android/exoplayer2/decoder/g;->timeUs:J

    .line 12
    .line 13
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/j0$c;->timeOffsetUs:J

    .line 14
    add-long/2addr v0, v2

    .line 15
    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 20
    move-result-wide v0

    .line 21
    .line 22
    iput-wide v0, p2, Lcom/google/android/exoplayer2/decoder/g;->timeUs:J

    .line 23
    :cond_0
    return p1
.end method

.method public b()Lcom/google/android/exoplayer2/source/w0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0$c;->sampleStream:Lcom/google/android/exoplayer2/source/w0;

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0$c;->sampleStream:Lcom/google/android/exoplayer2/source/w0;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/w0;->isReady()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0$c;->sampleStream:Lcom/google/android/exoplayer2/source/w0;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/w0;->maybeThrowError()V

    .line 6
    return-void
.end method

.method public skipData(J)I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j0$c;->sampleStream:Lcom/google/android/exoplayer2/source/w0;

    .line 3
    .line 4
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/j0$c;->timeOffsetUs:J

    .line 5
    sub-long/2addr p1, v1

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/w0;->skipData(J)I

    .line 9
    move-result p1

    .line 10
    return p1
.end method
