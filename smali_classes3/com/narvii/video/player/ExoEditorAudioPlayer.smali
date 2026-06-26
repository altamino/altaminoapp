.class public final Lcom/narvii/video/player/ExoEditorAudioPlayer;
.super Ljava/lang/Object;
.source "ExoEditorAudioPlayer.kt"

# interfaces
.implements Lcom/narvii/video/interfaces/IEditorAudioPlayer;
.implements Lcom/google/android/exoplayer2/Player$EventListener;


# instance fields
.field private final audioClipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
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
.end field

.field private final context:Landroid/content/Context;

.field private final player:Lcom/google/android/exoplayer2/SimpleExoPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->context:Landroid/content/Context;

    .line 21
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->context:Landroid/content/Context;

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>()V

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    const-string v0, "ExoPlayerFactory.newSimp\u2026, DefaultTrackSelector())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioEventListenerList:Ljava/util/ArrayList;

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioClipList:Ljava/util/ArrayList;

    .line 26
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method private final buildMediaSource(Lcom/narvii/video/model/AVClipInfoPack;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 4

    .line 162
    new-instance v0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    iget-object v2, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->context:Landroid/content/Context;

    const-string v3, "ExoPlayer"

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 163
    iget-object p1, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object p1

    const-string v0, "ExtractorMediaSource.Fac\u2026ri.parse(clip.inputPath))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public addAudioEventListener(Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioEventListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioEventListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentPositionInClip()Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Lkotlin/Pair;

    iget-object v1, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCurrentPositionInTimeLine()J
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioClipList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 148
    iget-object v3, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioClipList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    iget v3, v3, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getCurrentWindowIndex()I
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v0

    return v0
.end method

.method public hasPrepared()Z
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

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

    .line 30
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioEventListenerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;

    .line 31
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;->onAudioError()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 3

    const/4 p1, 0x3

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    if-ne p2, p1, :cond_3

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioEventListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;

    if-eq p2, p1, :cond_2

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 40
    :cond_1
    invoke-interface {v2}, Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;->onAudioCompleted()V

    goto :goto_0

    .line 39
    :cond_2
    invoke-interface {v2}, Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;->onAudioPrepared()V

    goto :goto_0

    :cond_3
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

.method public pause()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    .line 130
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 131
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioEventListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removeAudioEventListener(Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioEventListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public seekTo(IJ)V
    .locals 2

    if-ltz p1, :cond_1

    .line 118
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    const-string v1, "player.currentTimeline"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(IJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public seekTo(J)V
    .locals 9

    .line 96
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioClipList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 97
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

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioClipList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 106
    iget-object v6, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioClipList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/video/model/AVClipInfoPack;

    iget v6, v6, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    add-int/2addr v6, v5

    int-to-long v6, v6

    cmp-long v8, v6, p1

    if-ltz v8, :cond_2

    int-to-long v0, v5

    sub-long v3, p1, v0

    move v1, v2

    goto :goto_2

    .line 111
    :cond_2
    iget-object v6, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioClipList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/video/model/AVClipInfoPack;

    iget v6, v6, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 114
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, v1, v3, v4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(IJ)V

    :cond_4
    :goto_3
    return-void
.end method

.method public setConcatenatingDataSource(Ljava/util/List;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "clipInfoList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioClipList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioClipList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 60
    new-instance v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;-><init>([Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 61
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 62
    invoke-direct {p0, v1}, Lcom/narvii/video/player/ExoEditorAudioPlayer;->buildMediaSource(Lcom/narvii/video/model/AVClipInfoPack;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v3

    .line 63
    invoke-virtual {v1}, Lcom/narvii/video/model/AVClipInfoPack;->hasInvisibleFrames()Z

    move-result v2

    const-wide/16 v4, 0x3e8

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    int-to-long v6, v2

    mul-long v6, v6, v4

    goto :goto_1

    :cond_0
    const-wide/16 v6, 0x0

    .line 64
    :goto_1
    invoke-virtual {v1}, Lcom/narvii/video/model/AVClipInfoPack;->hasInvisibleFrames()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, v1, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    goto :goto_2

    :cond_1
    iget v1, v1, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    :goto_2
    int-to-long v1, v1

    mul-long v1, v1, v4

    move-wide v8, v1

    .line 65
    new-instance v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;

    move-object v2, v1

    move-wide v4, v6

    move-wide v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;JJ)V

    .line 66
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    goto :goto_0

    .line 68
    :cond_2
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 69
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public setDataSource(Lcom/narvii/video/model/AVClipInfoPack;Z)V
    .locals 9

    const-string v0, "clipInfoPack"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioClipList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 48
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->audioClipList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-direct {p0, p1}, Lcom/narvii/video/player/ExoEditorAudioPlayer;->buildMediaSource(Lcom/narvii/video/model/AVClipInfoPack;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v2

    .line 50
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->hasInvisibleFrames()Z

    move-result v0

    const-wide/16 v3, 0x3e8

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    int-to-long v0, v0

    mul-long v0, v0, v3

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v5, v0

    .line 51
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->hasInvisibleFrames()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    goto :goto_1

    :cond_1
    iget p1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    :goto_1
    int-to-long v0, p1

    mul-long v0, v0, v3

    move-wide v7, v0

    .line 52
    new-instance p1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;

    move-object v1, p1

    move-wide v3, v5

    move-wide v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;JJ)V

    .line 53
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 54
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorAudioPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop(Z)V

    return-void
.end method
