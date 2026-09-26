.class public final Lcom/google/android/exoplayer2/text/webvtt/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final cue:Lcom/google/android/exoplayer2/text/b;

.field public final endTimeUs:J

.field public final startTimeUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/text/b;JJ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/webvtt/e;->cue:Lcom/google/android/exoplayer2/text/b;

    .line 6
    .line 7
    iput-wide p2, p0, Lcom/google/android/exoplayer2/text/webvtt/e;->startTimeUs:J

    .line 8
    .line 9
    iput-wide p4, p0, Lcom/google/android/exoplayer2/text/webvtt/e;->endTimeUs:J

    .line 10
    return-void
.end method
