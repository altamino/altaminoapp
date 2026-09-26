.class final Lcom/google/android/exoplayer2/extractor/ogg/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ogg/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ogg/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private firstFrameOffset:J

.field private pendingSeekGranule:J

.field private seekTable:Lcom/google/android/exoplayer2/extractor/v$a;

.field private streamMetadata:Lcom/google/android/exoplayer2/extractor/v;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/v;Lcom/google/android/exoplayer2/extractor/v$a;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/b$a;->streamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/b$a;->seekTable:Lcom/google/android/exoplayer2/extractor/v$a;

    .line 8
    .line 9
    const-wide/16 p1, -0x1

    .line 10
    .line 11
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/b$a;->firstFrameOffset:J

    .line 12
    .line 13
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/b$a;->pendingSeekGranule:J

    .line 14
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/extractor/m;)J
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/b$a;->pendingSeekGranule:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const-wide/16 v2, -0x1

    if-ltz p1, :cond_0

    const-wide/16 v4, 0x2

    add-long/2addr v0, v4

    neg-long v0, v0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/b$a;->pendingSeekGranule:J

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public b(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/b$a;->firstFrameOffset:J

    return-void
.end method

.method public createSeekMap()Lcom/google/android/exoplayer2/extractor/b0;
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/b$a;->firstFrameOffset:J

    .line 3
    .line 4
    const-wide/16 v2, -0x1

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 15
    .line 16
    new-instance v0, Lcom/google/android/exoplayer2/extractor/u;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/b$a;->streamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 19
    .line 20
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/b$a;->firstFrameOffset:J

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/u;-><init>(Lcom/google/android/exoplayer2/extractor/v;J)V

    .line 24
    return-object v0
.end method

.method public startSeek(J)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/b$a;->seekTable:Lcom/google/android/exoplayer2/extractor/v$a;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/v$a;->pointSampleNumbers:[J

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/exoplayer2/util/o0;->i([JJZZ)I

    .line 9
    move-result p1

    .line 10
    .line 11
    aget-wide p1, v0, p1

    .line 12
    .line 13
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/b$a;->pendingSeekGranule:J

    .line 14
    return-void
.end method
