.class final Lcom/google/android/exoplayer2/source/q0$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field public final trackEnabledStates:[Z

.field public final trackIsAudioVideoFlags:[Z

.field public final trackNotifiedDownstreamFormats:[Z

.field public final tracks:Lcom/google/android/exoplayer2/source/h1;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/h1;[Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q0$e;->tracks:Lcom/google/android/exoplayer2/source/h1;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/q0$e;->trackIsAudioVideoFlags:[Z

    .line 8
    .line 9
    iget p1, p1, Lcom/google/android/exoplayer2/source/h1;->length:I

    .line 10
    .line 11
    new-array p2, p1, [Z

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/q0$e;->trackEnabledStates:[Z

    .line 14
    .line 15
    new-array p1, p1, [Z

    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q0$e;->trackNotifiedDownstreamFormats:[Z

    .line 18
    return-void
.end method
