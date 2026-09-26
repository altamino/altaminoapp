.class public final Lcom/narvii/video/player/ExoEditorAudioPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/interfaces/IEditorAudioPlayer;
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# instance fields
.field private final audioClipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final audioEventListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final player:Landroidx/media3/exoplayer/ExoPlayer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->context:Landroid/content/Context;

    .line 11
    .line 12
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    new-instance v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->P(Landroidx/media3/exoplayer/trackselection/TrackSelector;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->t()Landroidx/media3/exoplayer/ExoPlayer;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    const-string v0, "build(...)"

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    iput-object p1, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 36
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    iput-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioEventListenerList:Ljava/util/ArrayList;

    .line 43
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    .line 45
    .line 46
    .line 47
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    iput-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioClipList:Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, p0}, Landroidx/media3/common/Player;->L(Landroidx/media3/common/Player$Listener;)V

    .line 53
    return-void
.end method

.method private final buildMediaSource(Lcom/narvii/video/model/AVClipInfoPack;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 4

    .line 1
    .line 2
    iget-object p1, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroidx/media3/common/MediaItem;->d(Landroid/net/Uri;)Landroidx/media3/common/MediaItem;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string v0, "fromUri(...)"

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    new-instance v0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    .line 18
    .line 19
    new-instance v1, Landroidx/media3/datasource/DefaultDataSourceFactory;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->context:Landroid/content/Context;

    .line 22
    .line 23
    const-string v3, "ExoPlayer"

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v2, v3}, Landroidx/media3/datasource/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->f(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    const-string v0, "createMediaSource(...)"

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    return-object p1
.end method


# virtual methods
.method public addAudioEventListener(Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;)V
    .locals 1
    .param p1    # Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "listener"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioEventListenerList:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioEventListenerList:Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_0
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentPositionInClip()Lw7/u;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw7/u<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lw7/u;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentWindowIndex()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 15
    .line 16
    .line 17
    invoke-interface {v2}, Landroidx/media3/common/Player;->getCurrentPosition()J

    .line 18
    move-result-wide v2

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    return-object v0
.end method

.method public getCurrentPositionInTimeLine()J
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioClipList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    return-wide v0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentWindowIndex()I

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    .line 21
    :goto_0
    if-ge v1, v0, :cond_1

    .line 22
    .line 23
    iget-object v3, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioClipList:Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 30
    .line 31
    iget v3, v3, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 32
    add-int/2addr v2, v3

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 38
    .line 39
    .line 40
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    .line 41
    move-result-wide v0

    .line 42
    int-to-long v2, v2

    .line 43
    add-long/2addr v0, v2

    .line 44
    return-wide v0
.end method

.method public getCurrentWindowIndex()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentWindowIndex()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public hasPrepared()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlaybackState()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlaybackState()I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x3

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0
.end method

.method public bridge synthetic onAudioAttributesChanged(Landroidx/media3/common/AudioAttributes;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->a(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/AudioAttributes;)V

    return-void
.end method

.method public bridge synthetic onAudioSessionIdChanged(I)V
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->b(Landroidx/media3/common/Player$Listener;I)V

    return-void
.end method

.method public bridge synthetic onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->c(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method public bridge synthetic onCues(Landroidx/media3/common/text/CueGroup;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->d(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/text/CueGroup;)V

    return-void
.end method

.method public bridge synthetic onCues(Ljava/util/List;)V
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->e(Landroidx/media3/common/Player$Listener;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onDeviceInfoChanged(Landroidx/media3/common/DeviceInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->f(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/DeviceInfo;)V

    return-void
.end method

.method public bridge synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/c0;->g(Landroidx/media3/common/Player$Listener;IZ)V

    return-void
.end method

.method public bridge synthetic onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/c0;->h(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V

    return-void
.end method

.method public bridge synthetic onIsLoadingChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->i(Landroidx/media3/common/Player$Listener;Z)V

    return-void
.end method

.method public bridge synthetic onIsPlayingChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->j(Landroidx/media3/common/Player$Listener;Z)V

    return-void
.end method

.method public bridge synthetic onLoadingChanged(Z)V
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->k(Landroidx/media3/common/Player$Listener;Z)V

    return-void
.end method

.method public bridge synthetic onMaxSeekToPreviousPositionChanged(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/c0;->l(Landroidx/media3/common/Player$Listener;J)V

    return-void
.end method

.method public bridge synthetic onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V
    .locals 0
    .param p1    # Landroidx/media3/common/MediaItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/c0;->m(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/MediaItem;I)V

    return-void
.end method

.method public bridge synthetic onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->n(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method public bridge synthetic onMetadata(Landroidx/media3/common/Metadata;)V
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->o(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Metadata;)V

    return-void
.end method

.method public bridge synthetic onPlayWhenReadyChanged(ZI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/c0;->p(Landroidx/media3/common/Player$Listener;ZI)V

    return-void
.end method

.method public bridge synthetic onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->q(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->r(Landroidx/media3/common/Player$Listener;I)V

    .line 4
    const/4 v0, 0x3

    .line 5
    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    const/4 v0, 0x4

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    goto :goto_2

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioEventListenerList:Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;->onAudioCompleted()V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioEventListenerList:Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v0

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    check-cast v0, Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;

    .line 51
    .line 52
    .line 53
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;->onAudioPrepared()V

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    :goto_2
    return-void
.end method

.method public bridge synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->s(Landroidx/media3/common/Player$Listener;I)V

    return-void
.end method

.method public onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 1
    .param p1    # Landroidx/media3/common/PlaybackException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "error"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->t(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/PlaybackException;)V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioEventListenerList:Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;->onAudioError()V

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public bridge synthetic onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V
    .locals 0
    .param p1    # Landroidx/media3/common/PlaybackException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->u(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method public bridge synthetic onPlayerStateChanged(ZI)V
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/c0;->v(Landroidx/media3/common/Player$Listener;ZI)V

    return-void
.end method

.method public bridge synthetic onPlaylistMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->w(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method public bridge synthetic onPositionDiscontinuity(I)V
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->x(Landroidx/media3/common/Player$Listener;I)V

    return-void
.end method

.method public bridge synthetic onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/common/c0;->y(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V

    return-void
.end method

.method public bridge synthetic onRenderedFirstFrame()V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/common/c0;->z(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public bridge synthetic onRepeatModeChanged(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->A(Landroidx/media3/common/Player$Listener;I)V

    return-void
.end method

.method public bridge synthetic onSeekBackIncrementChanged(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/c0;->B(Landroidx/media3/common/Player$Listener;J)V

    return-void
.end method

.method public bridge synthetic onSeekForwardIncrementChanged(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/c0;->C(Landroidx/media3/common/Player$Listener;J)V

    return-void
.end method

.method public bridge synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->D(Landroidx/media3/common/Player$Listener;Z)V

    return-void
.end method

.method public bridge synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->E(Landroidx/media3/common/Player$Listener;Z)V

    return-void
.end method

.method public bridge synthetic onSurfaceSizeChanged(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/c0;->F(Landroidx/media3/common/Player$Listener;II)V

    return-void
.end method

.method public bridge synthetic onTimelineChanged(Landroidx/media3/common/Timeline;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/c0;->G(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Timeline;I)V

    return-void
.end method

.method public bridge synthetic onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->H(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public bridge synthetic onTracksChanged(Landroidx/media3/common/Tracks;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->I(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Tracks;)V

    return-void
.end method

.method public bridge synthetic onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->J(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/VideoSize;)V

    return-void
.end method

.method public bridge synthetic onVolumeChanged(F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->K(Landroidx/media3/common/Player$Listener;F)V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    .line 7
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/common/Player;->release()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p0}, Landroidx/media3/common/Player;->K(Landroidx/media3/common/Player$Listener;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioEventListenerList:Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 16
    return-void
.end method

.method public removeAudioEventListener(Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;)V
    .locals 1
    .param p1    # Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "listener"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioEventListenerList:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    return-void
.end method

.method public seekTo(IJ)V
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 7
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->u()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->t()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 8
    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/common/Player;->seekTo(IJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public seekTo(J)V
    .locals 8

    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioClipList:Ljava/util/ArrayList;

    .line 1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 2
    iget v3, v3, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-ltz v0, :cond_4

    int-to-long v5, v2

    cmp-long v0, p1, v5

    if-lez v0, :cond_1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioClipList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    move v5, v2

    :goto_1
    if-ge v2, v0, :cond_3

    iget-object v6, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioClipList:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/video/model/AVClipInfoPack;

    iget v6, v6, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    add-int/2addr v6, v5

    int-to-long v6, v6

    cmp-long v6, v6, p1

    if-ltz v6, :cond_2

    int-to-long v0, v5

    sub-long v3, p1, v0

    move v1, v2

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioClipList:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/video/model/AVClipInfoPack;

    iget v6, v6, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 6
    invoke-interface {p1, v1, v3, v4}, Landroidx/media3/common/Player;->seekTo(IJ)V

    :cond_4
    :goto_3
    return-void
.end method

.method public setConcatenatingDataSource(Ljava/util/List;Z)V
    .locals 10
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "clipInfoList"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioClipList:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioClipList:Ljava/util/ArrayList;

    .line 13
    move-object v1, p1

    .line 14
    .line 15
    check-cast v1, Ljava/util/Collection;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 19
    .line 20
    new-instance v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    new-array v1, v1, [Landroidx/media3/exoplayer/source/MediaSource;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;-><init>([Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    check-cast v1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, v1}, Lcom/narvii/video/player/ExoEditorAudioPlayer;->buildMediaSource(Lcom/narvii/video/model/AVClipInfoPack;)Landroidx/media3/exoplayer/source/MediaSource;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/narvii/video/model/AVClipInfoPack;->hasInvisibleFrames()Z

    .line 50
    move-result v2

    .line 51
    .line 52
    const-wide/16 v4, 0x3e8

    .line 53
    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    iget v2, v1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 57
    int-to-long v6, v2

    .line 58
    mul-long/2addr v6, v4

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_0
    const-wide/16 v6, 0x0

    .line 62
    .line 63
    .line 64
    :goto_1
    invoke-virtual {v1}, Lcom/narvii/video/model/AVClipInfoPack;->hasInvisibleFrames()Z

    .line 65
    move-result v2

    .line 66
    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    iget v1, v1, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 70
    :goto_2
    int-to-long v1, v1

    .line 71
    mul-long/2addr v1, v4

    .line 72
    move-wide v8, v1

    .line 73
    goto :goto_3

    .line 74
    .line 75
    :cond_1
    iget v1, v1, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    .line 76
    goto :goto_2

    .line 77
    .line 78
    :goto_3
    new-instance v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;

    .line 79
    move-object v2, v1

    .line 80
    move-wide v4, v6

    .line 81
    move-wide v6, v8

    .line 82
    .line 83
    .line 84
    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/source/ClippingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;JJ)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->y0(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 88
    goto :goto_0

    .line 89
    .line 90
    :cond_2
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 91
    .line 92
    .line 93
    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer;->a(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 94
    .line 95
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 96
    .line 97
    .line 98
    invoke-interface {p1, p2}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    .line 99
    return-void
.end method

.method public setDataSource(Lcom/narvii/video/model/AVClipInfoPack;Z)V
    .locals 9
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "clipInfoPack"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioClipList:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioClipList:Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/narvii/video/player/ExoEditorAudioPlayer;->buildMediaSource(Lcom/narvii/video/model/AVClipInfoPack;)Landroidx/media3/exoplayer/source/MediaSource;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->hasInvisibleFrames()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    const-wide/16 v3, 0x3e8

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 30
    int-to-long v0, v0

    .line 31
    mul-long/2addr v0, v3

    .line 32
    :goto_0
    move-wide v5, v0

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :cond_0
    const-wide/16 v0, 0x0

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :goto_1
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->hasInvisibleFrames()Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget p1, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 45
    :goto_2
    int-to-long v0, p1

    .line 46
    mul-long/2addr v0, v3

    .line 47
    move-wide v7, v0

    .line 48
    goto :goto_3

    .line 49
    .line 50
    :cond_1
    iget p1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    .line 51
    goto :goto_2

    .line 52
    .line 53
    :goto_3
    new-instance p1, Landroidx/media3/exoplayer/source/ClippingMediaSource;

    .line 54
    move-object v1, p1

    .line 55
    move-wide v3, v5

    .line 56
    move-wide v5, v7

    .line 57
    .line 58
    .line 59
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/source/ClippingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;JJ)V

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 62
    .line 63
    .line 64
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer;->a(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 65
    .line 66
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 67
    .line 68
    .line 69
    invoke-interface {p1, p2}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    .line 70
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setVolume(F)V

    .line 6
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    .line 7
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/common/Player;->G()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Landroidx/media3/common/Player;->stop()V

    .line 11
    return-void
.end method
