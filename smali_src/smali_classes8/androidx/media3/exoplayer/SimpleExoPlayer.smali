.class public Landroidx/media3/exoplayer/SimpleExoPlayer;
.super Landroidx/media3/common/BasePlayer;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/ExoPlayer;
.implements Landroidx/media3/exoplayer/ExoPlayer$AudioComponent;
.implements Landroidx/media3/exoplayer/ExoPlayer$VideoComponent;
.implements Landroidx/media3/exoplayer/ExoPlayer$TextComponent;
.implements Landroidx/media3/exoplayer/ExoPlayer$DeviceComponent;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/SimpleExoPlayer$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final constructorFinished:Landroidx/media3/common/util/ConditionVariable;

.field private final player:Landroidx/media3/exoplayer/ExoPlayerImpl;


# direct methods
.method private a0()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->constructorFinished:Landroidx/media3/common/util/ConditionVariable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/common/util/ConditionVariable;->c()V

    .line 6
    return-void
.end method


# virtual methods
.method public A()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->A()J

    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method

.method public B(II)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->B(II)V

    .line 9
    return-void
.end method

.method public D()Landroidx/media3/exoplayer/DecoderCounters;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->D()Landroidx/media3/exoplayer/DecoderCounters;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public E(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->E(Landroidx/media3/common/TrackSelectionParameters;)V

    .line 9
    return-void
.end method

.method public F()Landroidx/media3/exoplayer/DecoderCounters;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->F()Landroidx/media3/exoplayer/DecoderCounters;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public H(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->H(Z)V

    .line 9
    return-void
.end method

.method public I()Landroidx/media3/common/Format;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->I()Landroidx/media3/common/Format;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public K(Landroidx/media3/common/Player$Listener;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->K(Landroidx/media3/common/Player$Listener;)V

    .line 9
    return-void
.end method

.method public L(Landroidx/media3/common/Player$Listener;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->L(Landroidx/media3/common/Player$Listener;)V

    .line 9
    return-void
.end method

.method public M()Landroidx/media3/common/Format;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->M()Landroidx/media3/common/Format;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public N(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->N(ILjava/util/List;)V

    .line 9
    return-void
.end method

.method public O(Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->O(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 9
    return-void
.end method

.method public U(IJIZ)V
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    move v1, p1

    .line 7
    move-wide v2, p2

    .line 8
    move v4, p4

    .line 9
    move v5, p5

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->U(IJIZ)V

    .line 13
    return-void
.end method

.method public a(Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->a(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 9
    return-void
.end method

.method public b(Landroidx/media3/common/PlaybackParameters;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->b(Landroidx/media3/common/PlaybackParameters;)V

    .line 9
    return-void
.end method

.method public b0()Landroidx/media3/exoplayer/ExoPlaybackException;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s1()Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->c()J

    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method

.method public clearVideoSurface()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->clearVideoSurface()V

    .line 9
    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1
    .param p1    # Landroid/view/SurfaceView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->clearVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 9
    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 1
    .param p1    # Landroid/view/TextureView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->clearVideoTextureView(Landroid/view/TextureView;)V

    .line 9
    return-void
.end method

.method public bridge synthetic d()Landroidx/media3/common/PlaybackException;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->b0()Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public e()Landroidx/media3/common/Tracks;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->e()Landroidx/media3/common/Tracks;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public getContentPosition()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getContentPosition()J

    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentAdGroupIndex()I

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentAdIndexInAdGroup()I

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPeriodIndex()I

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPosition()J

    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method

.method public getCurrentTimeline()Landroidx/media3/common/Timeline;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getDuration()J

    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getRepeatMode()I

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getShuffleModeEnabled()Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getVolume()F
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getVolume()F

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public h()Landroidx/media3/common/TrackSelectionParameters;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->h()Landroidx/media3/common/TrackSelectionParameters;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public i()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->i()J

    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method

.method public isPlayingAd()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public j()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->j()J

    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method

.method public l()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->l()J

    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method

.method public p()Landroidx/media3/common/text/CueGroup;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->p()Landroidx/media3/common/text/CueGroup;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public prepare()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->prepare()V

    .line 9
    return-void
.end method

.method public r()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->r()I

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public release()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->release()V

    .line 9
    return-void
.end method

.method public s()Landroid/os/Looper;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s()Landroid/os/Looper;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public setPlayWhenReady(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setPlayWhenReady(Z)V

    .line 9
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setRepeatMode(I)V

    .line 9
    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setShuffleModeEnabled(Z)V

    .line 9
    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoSurface(Landroid/view/Surface;)V

    .line 9
    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1
    .param p1    # Landroid/view/SurfaceView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 9
    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 1
    .param p1    # Landroid/view/TextureView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoTextureView(Landroid/view/TextureView;)V

    .line 9
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVolume(F)V

    .line 9
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->stop()V

    .line 9
    return-void
.end method

.method public u()Landroidx/media3/common/Player$Commands;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->u()Landroidx/media3/common/Player$Commands;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public v()Landroidx/media3/common/VideoSize;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->v()Landroidx/media3/common/VideoSize;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public x()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->x()I

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public z()Landroidx/media3/common/MediaMetadata;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->a0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->z()Landroidx/media3/common/MediaMetadata;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method
