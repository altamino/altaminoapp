.class public final Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pre_editing/player/PreEditMediaPlayer;-><init>(Landroid/content/Context;Lcom/narvii/nvplayerview/NVVideoView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;


# direct methods
.method constructor <init>(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
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

.method public onPlayWhenReadyChanged(ZI)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/media3/common/c0;->p(Landroidx/media3/common/Player$Listener;ZI)V

    .line 4
    .line 5
    iget-object p2, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getPlayingFlag$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Z

    .line 9
    move-result p2

    .line 10
    .line 11
    if-eq p2, p1, :cond_1

    .line 12
    .line 13
    iget-object p2, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 14
    .line 15
    .line 16
    invoke-static {p2, p1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$setPlayingFlag$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;Z)V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getCallback$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p2, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 27
    .line 28
    .line 29
    invoke-static {p2}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getPlayingFlag$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Z

    .line 30
    move-result p2

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, p2}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;->onPlayPauseStateChanged(Z)V

    .line 34
    .line 35
    :cond_0
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 36
    .line 37
    iget-object p2, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getUpdateTimeRunnable$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getPlayingFlag$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Z

    .line 50
    move-result p1

    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getUpdateTimeRunnable$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 62
    :cond_1
    return-void
.end method

.method public bridge synthetic onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->q(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->r(Landroidx/media3/common/Player$Listener;I)V

    .line 4
    const/4 v0, 0x2

    .line 5
    .line 6
    if-eq p1, v0, :cond_3

    .line 7
    const/4 v0, 0x3

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    const/4 v0, 0x4

    .line 11
    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getCallback$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    if-eqz p1, :cond_4

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;->onComplete()V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$isPrepared$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Z

    .line 31
    move-result p1

    .line 32
    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 36
    const/4 v0, 0x1

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$setPrepared$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;Z)V

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 42
    .line 43
    const-wide/16 v0, 0x0

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v0, v1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$setReplayStartTime$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;J)V

    .line 47
    .line 48
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getPlayer$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Landroidx/media3/exoplayer/ExoPlayer;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-interface {v0}, Landroidx/media3/common/Player;->getDuration()J

    .line 56
    move-result-wide v0

    .line 57
    .line 58
    .line 59
    invoke-static {p1, v0, v1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$setReplayEndTime$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;J)V

    .line 60
    .line 61
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getCallback$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    .line 70
    invoke-interface {p1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;->onPrepared()V

    .line 71
    .line 72
    :cond_2
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$checkSeekRequest(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)V

    .line 76
    .line 77
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getContinuousSeekingFlag$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Z

    .line 81
    move-result p1

    .line 82
    .line 83
    if-nez p1, :cond_4

    .line 84
    .line 85
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 86
    .line 87
    .line 88
    invoke-static {p1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getCallback$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    if-eqz p1, :cond_4

    .line 92
    .line 93
    .line 94
    invoke-interface {p1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;->onBufferingEnd()V

    .line 95
    goto :goto_0

    .line 96
    .line 97
    :cond_3
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 98
    .line 99
    .line 100
    invoke-static {p1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getContinuousSeekingFlag$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Z

    .line 101
    move-result p1

    .line 102
    .line 103
    if-nez p1, :cond_4

    .line 104
    .line 105
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 106
    .line 107
    .line 108
    invoke-static {p1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getCallback$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    if-eqz p1, :cond_4

    .line 112
    .line 113
    .line 114
    invoke-interface {p1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;->onBufferingStart()V

    .line 115
    :cond_4
    :goto_0
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
    iget-object v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getCallback$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    const-string p1, "unknown"

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-interface {v0, p1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;->onError(Ljava/lang/String;)V

    .line 28
    :cond_1
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

.method public onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 2
    .param p1    # Landroidx/media3/common/VideoSize;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "videoSize"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->J(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/VideoSize;)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->getView()Lcom/narvii/nvplayerview/NVVideoView;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget v1, p1, Landroidx/media3/common/VideoSize;->width:I

    .line 17
    .line 18
    iget p1, p1, Landroidx/media3/common/VideoSize;->height:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, p1}, Lcom/narvii/nvplayerview/NVVideoView;->setVideoSize(II)V

    .line 22
    return-void
.end method

.method public bridge synthetic onVolumeChanged(F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->K(Landroidx/media3/common/Player$Listener;F)V

    return-void
.end method
