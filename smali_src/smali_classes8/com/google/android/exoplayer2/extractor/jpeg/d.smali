.class public final Lcom/google/android/exoplayer2/extractor/jpeg/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/n;


# instance fields
.field private final extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

.field private final startOffset:J


# direct methods
.method public constructor <init>(JLcom/google/android/exoplayer2/extractor/n;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/d;->startOffset:J

    .line 6
    .line 7
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/jpeg/d;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    .line 8
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/extractor/jpeg/d;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/d;->startOffset:J

    .line 3
    return-wide v0
.end method


# virtual methods
.method public endTracks()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/d;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/n;->endTracks()V

    .line 6
    return-void
.end method

.method public h(Lcom/google/android/exoplayer2/extractor/b0;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/d;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    .line 3
    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/extractor/jpeg/d$a;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/d$a;-><init>(Lcom/google/android/exoplayer2/extractor/jpeg/d;Lcom/google/android/exoplayer2/extractor/b0;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/n;->h(Lcom/google/android/exoplayer2/extractor/b0;)V

    .line 11
    return-void
.end method

.method public track(II)Lcom/google/android/exoplayer2/extractor/e0;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/d;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/n;->track(II)Lcom/google/android/exoplayer2/extractor/e0;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
