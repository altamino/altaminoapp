.class final Lcom/google/android/exoplayer2/audio/c0$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "k"
.end annotation


# instance fields
.field public final audioTrackPositionUs:J

.field public final mediaTimeUs:J

.field public final playbackParameters:Lcom/google/android/exoplayer2/c3;

.field public final skipSilence:Z


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/c3;ZJJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/c0$k;->playbackParameters:Lcom/google/android/exoplayer2/c3;

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/audio/c0$k;->skipSilence:Z

    iput-wide p3, p0, Lcom/google/android/exoplayer2/audio/c0$k;->mediaTimeUs:J

    iput-wide p5, p0, Lcom/google/android/exoplayer2/audio/c0$k;->audioTrackPositionUs:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/c3;ZJJLcom/google/android/exoplayer2/audio/c0$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/audio/c0$k;-><init>(Lcom/google/android/exoplayer2/c3;ZJJ)V

    return-void
.end method
