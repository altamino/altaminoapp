.class final Lcom/google/android/exoplayer2/extractor/mp3/a;
.super Lcom/google/android/exoplayer2/extractor/e;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/mp3/g;


# direct methods
.method public constructor <init>(JJLcom/google/android/exoplayer2/audio/h0$a;Z)V
    .locals 8

    .line 1
    .line 2
    iget v5, p5, Lcom/google/android/exoplayer2/audio/h0$a;->bitrate:I

    .line 3
    .line 4
    iget v6, p5, Lcom/google/android/exoplayer2/audio/h0$a;->frameSize:I

    .line 5
    move-object v0, p0

    .line 6
    move-wide v1, p1

    .line 7
    move-wide v3, p3

    .line 8
    move v7, p6

    .line 9
    .line 10
    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/extractor/e;-><init>(JJIIZ)V

    .line 12
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getTimeUs(J)J
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/e;->c(J)J

    .line 4
    move-result-wide p1

    .line 5
    return-wide p1
.end method
