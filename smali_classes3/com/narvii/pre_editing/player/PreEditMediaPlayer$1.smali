.class public final Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;
.super Ljava/lang/Object;
.source "PreEditMediaPlayer.kt"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$EventListener;


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlaybackParametersChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-static {v0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getCallback$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "unknown"

    :goto_0
    invoke-interface {v0, p1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;->onError(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object p2, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-static {p2}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getCallback$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-interface {p2}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;->onComplete()V

    goto :goto_0

    .line 63
    :cond_1
    iget-object p2, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-static {p2}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$isPrepared$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 64
    iget-object p2, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$setPrepared$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;Z)V

    .line 65
    iget-object p2, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    const-wide/16 v0, 0x0

    invoke-static {p2, v0, v1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$setReplayStartTime$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;J)V

    .line 66
    iget-object p2, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-static {p2}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getPlayer$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    const-string v1, "player"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$setReplayEndTime$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;J)V

    .line 67
    iget-object p2, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-static {p2}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getCallback$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;->onPrepared()V

    .line 71
    :cond_2
    iget-object p2, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-static {p2}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$checkSeekRequest(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)V

    .line 72
    iget-object p2, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-static {p2}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getContinuousSeekingFlag$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 73
    iget-object p2, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-static {p2}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getCallback$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-interface {p2}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;->onBufferingEnd()V

    goto :goto_0

    .line 58
    :cond_3
    iget-object p2, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-static {p2}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getContinuousSeekingFlag$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 59
    iget-object p2, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-static {p2}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getCallback$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-interface {p2}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;->onBufferingStart()V

    .line 81
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-static {p2}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getPlayingFlag$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Z

    move-result p2

    if-eq p2, p1, :cond_6

    .line 82
    iget-object p2, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-static {p2, p1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$setPlayingFlag$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;Z)V

    .line 83
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-static {p1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getCallback$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-static {p2}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getPlayingFlag$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;->onPlayPauseStateChanged(Z)V

    .line 84
    :cond_5
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-static {p2}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getUpdateTimeRunnable$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-static {p1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getPlayingFlag$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 86
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-static {p1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getUpdateTimeRunnable$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_6
    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public synthetic onSeekProcessed()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onSeekProcessed(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTracksChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    return-void
.end method
