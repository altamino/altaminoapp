.class final Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaPeriod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaPeriodImpl"
.end annotation


# instance fields
.field public callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

.field public final drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field public hasNotifiedDownstreamFormatChange:[Z

.field public isPrepared:Z

.field public lastStartPositionUs:J

.field public final mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field public final mediaSourceEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field public final sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaSourceEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 10
    .line 11
    iput-object p4, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 12
    const/4 p1, 0x0

    .line 13
    .line 14
    new-array p1, p1, [Z

    .line 15
    .line 16
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->hasNotifiedDownstreamFormatChange:[Z

    .line 17
    return-void
.end method


# virtual methods
.method public a(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->l(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;JLandroidx/media3/exoplayer/SeekParameters;)J

    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public b()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->d(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    .line 10
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->isPrepared:Z

    .line 11
    return-void
.end method

.method public c([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->hasNotifiedDownstreamFormatChange:[Z

    .line 3
    array-length v0, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    array-length v0, p3

    .line 7
    .line 8
    new-array v0, v0, [Z

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->hasNotifiedDownstreamFormatChange:[Z

    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 13
    move-object v2, p0

    .line 14
    move-object v3, p1

    .line 15
    move-object v4, p2

    .line 16
    move-object v5, p3

    .line 17
    move-object v6, p4

    .line 18
    move-wide v7, p5

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {v1 .. v8}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->J(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J

    .line 22
    move-result-wide p1

    .line 23
    return-wide p1
.end method

.method public continueLoading(J)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->i(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;J)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public discardBuffer(JZ)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->j(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;JZ)V

    .line 6
    return-void
.end method

.method public e(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p0, p2, p3}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->C(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;J)V

    .line 8
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->m(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;)J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->p(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;)J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->r()Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->s(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public maybeThrowPrepareError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->x()V

    .line 6
    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->E(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;)J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->F(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;J)V

    .line 6
    return-void
.end method

.method public seekToUs(J)J
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->I(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;J)J

    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method
