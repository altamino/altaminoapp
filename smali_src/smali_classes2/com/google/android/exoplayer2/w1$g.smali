.class final Lcom/google/android/exoplayer2/w1$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/w1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field public final endPlayback:Z

.field public final forceBufferingState:Z

.field public final periodId:Lcom/google/android/exoplayer2/source/b0$b;

.field public final periodPositionUs:J

.field public final requestedContentPositionUs:J

.field public final setTargetLiveOffset:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/b0$b;JJZZZ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/w1$g;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 6
    .line 7
    iput-wide p2, p0, Lcom/google/android/exoplayer2/w1$g;->periodPositionUs:J

    .line 8
    .line 9
    iput-wide p4, p0, Lcom/google/android/exoplayer2/w1$g;->requestedContentPositionUs:J

    .line 10
    .line 11
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/w1$g;->forceBufferingState:Z

    .line 12
    .line 13
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/w1$g;->endPlayback:Z

    .line 14
    .line 15
    iput-boolean p8, p0, Lcom/google/android/exoplayer2/w1$g;->setTargetLiveOffset:Z

    .line 16
    return-void
.end method
