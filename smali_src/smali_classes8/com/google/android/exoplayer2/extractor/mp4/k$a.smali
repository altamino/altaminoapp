.class final Lcom/google/android/exoplayer2/extractor/mp4/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public sampleIndex:I

.field public final sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/r;

.field public final track:Lcom/google/android/exoplayer2/extractor/mp4/o;

.field public final trackOutput:Lcom/google/android/exoplayer2/extractor/e0;

.field public final trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/f0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/mp4/o;Lcom/google/android/exoplayer2/extractor/mp4/r;Lcom/google/android/exoplayer2/extractor/e0;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k$a;->track:Lcom/google/android/exoplayer2/extractor/mp4/o;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/k$a;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/r;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/k$a;->trackOutput:Lcom/google/android/exoplayer2/extractor/e0;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/o;->format:Lcom/google/android/exoplayer2/a2;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 14
    .line 15
    const-string p2, "audio/true-hd"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    new-instance p1, Lcom/google/android/exoplayer2/extractor/f0;

    .line 24
    .line 25
    .line 26
    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/f0;-><init>()V

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    .line 30
    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k$a;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/f0;

    .line 31
    return-void
.end method
